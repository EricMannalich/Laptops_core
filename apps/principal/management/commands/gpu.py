from django.core.management.base import BaseCommand
from apps.principal.models import GPU

from apps.principal.online.scraper import *

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            '--update', 
            action='store_true',
            help='Actualiza las propiedades de las GPUs',
            )

    def handle(self, *args, **options):
        if options['update']:
            GPUs = GPU.objects.filter(state = True)
            for gpu in GPUs:
                new_puntuacion = gpu.update_puntuacion()
                gpu.save()
                self.stdout.write(self.style.SUCCESS('Se actualiso la ' + str(gpu) + ' a ' + str(new_puntuacion) + ' puntos de 25'))