from django.core.management.base import BaseCommand
from apps.principal.models import Disco_Duro

from apps.principal.online.scraper import *

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            '--update', 
            action='store_true',
            help='Actualiza las propiedades de los discos duros',
            )

    def handle(self, *args, **options):
        if options['update']:
            Disco_Duros = Disco_Duro.objects.filter(state = True)
            for disco_duro in Disco_Duros:
                new_puntuacion = disco_duro.update_puntuacion()
                disco_duro.save()
                self.stdout.write(self.style.SUCCESS('Se actualiso el ' + str(disco_duro) + ' a ' + str(new_puntuacion) + ' puntos de 10'))