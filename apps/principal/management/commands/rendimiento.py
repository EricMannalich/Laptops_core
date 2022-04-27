from djqscsv import write_csv
from django.core.management.base import BaseCommand, CommandError
from apps.principal.models import Rendimiento

from apps.principal.online.scraper import *
from django.conf import settings

def export(games_id = 0):
    directorio_bd = settings.BD_EXPORT_ROOT
    if games_id > 0:
        rendimiento = Rendimiento.objects.filter(game__id = games_id, state = True, fps_review = True).values(  'laptop__id',
                                                                                                                'laptop__gpu__rendimiento_fp32_TFlops',
                                                                                                                'laptop__gpu__cant_vram_GB',
                                                                                                                'laptop__gpu__cache_total',
                                                                                                                'laptop__cpu__cinebench_R23_single',
                                                                                                                'laptop__cpu__cinebench_R23_multi',
                                                                                                                'laptop__cpu__cache_total',
                                                                                                                'laptop__disco_duro__generacion',
                                                                                                                #'laptop__cpu__frecuencia_nucleos_fuertes_all',
                                                                                                                #'laptop__cpu__nucleos_fuertes',
                                                                                                                #'laptop__cpu__hilos',
                                                                                                                #'laptop__ram__cant_ram_GB',
                                                                                                                #'laptop__ram__frecuencia_MHz',
                                                                                                                'fps').order_by('fps')
        directorio_bd += "/rendimiento_" + str(games_id) + ".csv"
    else:
        rendimiento = Rendimiento.objects.filter(state = True, fps_review = True).values(   'game__id',
                                                                                            'laptop__id',
                                                                                            'laptop__gpu__rendimiento_fp32_TFlops',
                                                                                            'laptop__gpu__cant_vram_GB',
                                                                                            'laptop__gpu__cache_total',
                                                                                            'laptop__cpu__cinebench_R23_single',
                                                                                            'laptop__cpu__cinebench_R23_multi',
                                                                                            'laptop__cpu__cache_total',
                                                                                            'laptop__disco_duro__generacion',
                                                                                            #'laptop__cpu__frecuencia_nucleos_fuertes_all',
                                                                                            #'laptop__cpu__nucleos_fuertes',
                                                                                            #'laptop__cpu__hilos',
                                                                                            #'laptop__ram__cant_ram_GB',
                                                                                            #'laptop__ram__frecuencia_MHz',
                                                                                            'fps').order_by('fps')
        directorio_bd = settings.BD_EXPORT_ROOT + "/rendimiento" + ".csv"
    if rendimiento:
        with open(directorio_bd,'wb') as csv_file:
            write_csv(rendimiento, csv_file)
        return True
    return False

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            'games_ids', 
            nargs='+', 
            type=int)
        parser.add_argument(
            '--csv', 
            action='store_true',
            help='Exporta los datos de rendimiento a csv',
            )
        parser.add_argument(
            '--update', 
            action='store_true',
            help='Actualiza el nombre de rendimiento',
            )

    def handle(self, *args, **options):
        for games_id in options['games_ids']:
            if games_id > 0:
                if export(games_id):
                    self.stdout.write(self.style.SUCCESS("Los datos de rendimiento para el juego: " + str(games_id) + ", fueron exportados a CSV"))
        if options['csv']:
            if export():
                self.stdout.write(self.style.SUCCESS("Los datos de rendimiento fueron exportados a CSV"))
            else:
                raise CommandError('Los datos de rendimiento fueron no se pudieron exportar a CSV')
        if options['update']:
            Rendimientos = Rendimiento.objects.filter(state = True)
            for rendimiento in Rendimientos:
                rendimiento.save()
                nombre = rendimiento.laptop.marca + " "
                if rendimiento.laptop.serie:
                    nombre += rendimiento.laptop.serie + " "
                self.stdout.write(self.style.SUCCESS('Se actualiso el rendimiento de ' + nombre + ' para ' + str(rendimiento.game) + " a " + str(rendimiento.fps) + " FPS"))