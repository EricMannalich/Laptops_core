from django.core.management.base import BaseCommand
from apps.principal.models import Monitor

from apps.principal.online.scraper import *

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            '--update', 
            action='store_true',
            help='Actualiza las propiedades de los monitores',
            )

    def handle(self, *args, **options):
        if options['update']:
            Monitores = Monitor.objects.filter(state = True)
            for monitor in Monitores:
                new_puntuacion = monitor.update_puntuacion()
                monitor.save()
                self.stdout.write(self.style.SUCCESS('Se actualiso el monitor ' + str(monitor) + ' a ' + str(new_puntuacion) + ' puntos de 5'))