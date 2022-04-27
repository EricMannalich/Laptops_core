from decimal import Decimal
from djqscsv import write_csv
from django.core.management.base import BaseCommand
from apps.principal.models import Laptop
from machine_learning.preprocesamiento import *
from apps.base.models import puntuador

from apps.principal.online.scraper import *
from django.conf import settings

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

CORRIMIENTO = 100

def save_precio(laptop):
    new_precio, new_clasificacion = rastrear_precio(laptop.link_amazon_EEUU)
    #print(new_precio, new_clasificacion)
    old_precio = laptop.precio_amazon_EEUU
    old_clasificacion = laptop.clasificacion_amazon_EEUU
    is_new_precio = False
    is_new_clasificacion = False
    nombre = laptop.marca
    if laptop.serie:
        nombre += ' ' + laptop.serie
    if laptop.modelo:
        nombre += ' ' + laptop.modelo
    if new_precio != "0":
        try:
            new_precio_decimal = Decimal(new_precio)
            if new_precio_decimal > 300 and new_precio_decimal < 5000:
                if new_precio_decimal != old_precio:
                    laptop.precio_amazon_EEUU = new_precio_decimal
                    is_new_precio = True
        except Exception as error:
            pass
    if new_clasificacion != "0":
        try:
            new_clasificacion_decimal = Decimal(new_clasificacion)
            if new_clasificacion_decimal > 0 and new_clasificacion_decimal <= 5:
                if new_clasificacion_decimal != old_clasificacion:
                    laptop.clasificacion_amazon_EEUU = new_clasificacion_decimal
                    is_new_clasificacion = True
        except Exception as error:
            pass
    if is_new_precio or is_new_clasificacion:
        laptop.save()
        new_precio_decimal = laptop.precio_amazon_EEUU
        new_clasificacion_decimal = laptop.clasificacion_amazon_EEUU
        #print(nombre, " ", old_precio, "->", new_precio_decimal, " ", old_clasificacion, "->", new_clasificacion_decimal)
        mensaje_precio = ", el precio de la laptop no cambio"
        mensaje_clasificacion = ", la clasificacion de la laptop no cambio"
        if is_new_precio:
            if old_precio > new_precio_decimal:
                mensaje_precio = ", el precio de la laptop bajo $" + str(old_precio - new_precio_decimal)
            if old_precio < new_precio_decimal:
                mensaje_precio = ", el precio de la laptop subio $" + str(new_precio_decimal - old_precio)
        if is_new_clasificacion:
            if old_clasificacion > new_clasificacion_decimal:
                mensaje_clasificacion = ", la clasificacion de la laptop bajo " + str(old_clasificacion - new_clasificacion_decimal) + " estrellas"
            if old_clasificacion < new_clasificacion_decimal:
                mensaje_clasificacion = ", la clasificacion de la laptop subio " + str(new_clasificacion_decimal - old_clasificacion) + " estrellas"
        mensaje = 'Se actualiso la laptop ' + nombre + mensaje_precio + mensaje_clasificacion
    else:
        mensaje = 'Sin cambios en la laptop ' + nombre + " $" + str(old_precio) + ", " + str(old_clasificacion)
    return mensaje

def export():
    data_laptop = Laptop.objects.values('id','cpu__frecuencia_nucleos_fuertes_all','cpu__hilos','gpu__cant_vram_GB','gpu__rendimiento_fp32_TFlops','ram__cant_ram_GB','ram__frecuencia_MHz')
    return data_laptop

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            '--update', 
            action='store_true',
            help='Actualiza las propiedades de las laptops',
            )
        parser.add_argument(
            '--update_puntuacion', 
            action='store_true',
            help='Actualiza la puntuacion de las laptops',
            )
        parser.add_argument(
            '--update_puntuacion_precio', 
            action='store_true',
            help='Actualiza la puntuacion de las laptops',
            )
        parser.add_argument(
            '--csv', 
            action='store_true',
            help='Exporta las laptops a csv',
            )

    def handle(self, *args, **options):
        if options['update']:
            laptops = Laptop.objects.filter(state = True)
            for laptop in laptops:
                mensaje = save_precio(laptop)
                self.stdout.write(self.style.SUCCESS(mensaje))
        
        if options['update_puntuacion']:
            laptops = Laptop.objects.filter(state = True)
            for laptop in laptops:
                laptop.save()
                self.stdout.write(self.style.SUCCESS('Se actualiso la ' + laptop.nombre + ' a ' + str(laptop.puntuacion_save) + ' puntos de 100'))

        if options['update_puntuacion_precio']:
            laptops = Laptop.objects.filter(state = True)
            if laptops:
                #Guardar CSV
                puntuacion_precio = laptops.values('puntuacion_save', 'precio_amazon_EEUU').order_by('puntuacion_save')
                directorio_bd = settings.BD_EXPORT_ROOT + "/laptop_puntuacion_precio.csv"
                with open(directorio_bd,'wb') as csv_file:
                    write_csv(puntuacion_precio, csv_file)
                #Cargar dataset
                dataset = pd.read_csv(directorio_bd)
                X = dataset.iloc[:,0:-1].values
                Y = dataset.iloc[:,-1].values
                #Buscar la ecuacion
                regression = regresion_lineal_polinomica(X,Y)
                #Visualizar los resultados de entrenamiento
                X_grid = np.arange(min(X), max(X), 0.1)
                X_grid = X_grid.reshape(len(X_grid), 1)
                ecuacion = regression.predict(regresion_polinomica(X_grid))
                plt.scatter(X, Y, color = "red")
                plt.plot(X_grid, ecuacion, color = "blue")
                plt.plot(X_grid, ecuacion - CORRIMIENTO, color = "green")
                plt.plot(X_grid, ecuacion + CORRIMIENTO, color = "orange")
                plt.title("Costo segun la puntuacion")
                plt.xlabel("puntuacion")
                plt.ylabel("precio")
                plt.show()
                #Salvar resultados
                for laptop in laptops:
                    X_new = np.array([[ laptop.puntuacion_save ]], dtype=np.float64)
                    precio_amazon_EEUU = laptop.precio_amazon_EEUU
                    predict_precio = np.around(regression.predict(regresion_polinomica(X_new)), decimals=2)[0]
                    ahorro_medio = Decimal(predict_precio) - precio_amazon_EEUU + CORRIMIENTO
                    calidad_precio = puntuador(ahorro_medio, precio_amazon_EEUU, 100)
                    laptop.calidad_precio = calidad_precio
                    laptop.save()
                    nombre = laptop.marca
                    if laptop.serie:
                        nombre += " " + laptop.serie
                    if laptop.modelo:
                        nombre += " " + laptop.modelo
                    self.stdout.write(self.style.SUCCESS('Se actualiso la ' + nombre + ' a ' + str(laptop.calidad_precio) + ' puntos'))

        if options['csv']:
            laptop_csv = export()
            directorio_bd = settings.BD_EXPORT_ROOT + "/laptops.csv"
            with open(directorio_bd,'wb') as csv_file:
                write_csv(laptop_csv, csv_file)
            self.stdout.write(self.style.SUCCESS("Las laptops fueron exportadas a CSV"))