from django.core.management.base import BaseCommand
from apps.principal.models import CPU

from apps.principal.online.scraper import *

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            '--update', 
            action='store_true',
            help='Actualiza las propiedades de las CPUs',
            )

    def handle(self, *args, **options):
        if options['update']:
            CPUs = CPU.objects.filter(state = True)
            for cpu in CPUs:
                new_puntuacion = cpu.update_puntuacion()
                cpu.save()
                self.stdout.write(self.style.SUCCESS('Se actualiso el ' + str(cpu) + ' a ' + str(new_puntuacion) + ' puntos de 20'))