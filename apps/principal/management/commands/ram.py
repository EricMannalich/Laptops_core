from django.core.management.base import BaseCommand
from apps.principal.models import RAM

from apps.principal.online.scraper import *

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            '--update', 
            action='store_true',
            help='Actualiza las propiedades de las RAMs',
            )

    def handle(self, *args, **options):
        if options['update']:
            RAMs = RAM.objects.filter(state = True)
            for ram in RAMs:
                new_puntuacion = ram.update_puntuacion()
                ram.save()
                self.stdout.write(self.style.SUCCESS('Se actualiso la ' + str(ram) + ' a ' + str(new_puntuacion) + ' puntos de 10'))