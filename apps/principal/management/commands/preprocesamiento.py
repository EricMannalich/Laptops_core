from django.core.management.base import BaseCommand, CommandError
from apps.principal.online.scraper import *
from machine_learning.preprocesamiento import *

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler, PolynomialFeatures
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
import statsmodels.regression.linear_model as rlm

from apps.principal.models import Rendimiento, Laptop, Game

def main(games_id = 0):
    game = Game.objects.filter(id = games_id).first()
    if not game:
        return False
    #Cargar dataset
    dataset = importar(games_id)
    if len(dataset) < 4:
            return False
    X = dataset.iloc[:,1:-1].values
    Y = dataset.iloc[:,-1].values
    #X_simple = dataset.iloc[:,4:5].values

    #Dividir conjunto de entrenamiento y conjunto de prueba
    """X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size = 0.25, random_state = 17)
    
    X_train,X_test = estandarizacion_datos(X_train,X_test) #Estandarizacion de los datos"""

    #regression = regresion_lineal(X_train,Y_train)#Crear modelo de regresion lineal

    #Estandarizacion de los datos
    sc_X = StandardScaler()
    X = sc_X.fit_transform(X)
    #Construir un modelo de regresion lineal multiple utilizando eliminacion hacia atras
    regression, list_delete_index = regresion_lineal_multiple_eliminacion_hacia_atras(X,Y)
    #Cargar BD
    laptops = Laptop.objects.filter(state = True)
    X_list_FP32 = []
    Y_list_FPS = []
    for laptop in laptops:
        #Preparar los datos a predecir
        X_new = np.array([[ laptop.gpu.rendimiento_fp32_TFlops,
                            laptop.gpu.cant_vram_GB,
                            laptop.gpu.cache_total,
                            laptop.cpu.cinebench_R23_single,
                            laptop.cpu.cinebench_R23_multi,
                            laptop.cpu.cache_total,
                            laptop.disco_duro.generacion,
                            #laptop.cpu.frecuencia_nucleos_fuertes_all,
                            #laptop.cpu.nucleos_fuertes,
                            #laptop.cpu.hilos,
                            #laptop.ram.cant_ram_GB,
                            #laptop.ram.frecuencia_MHz
                            ]], dtype=np.float64)
        X_new = sc_X.transform(X_new)#Estandarizacion de los datos
        X_pred = np.append(arr = np.ones((len(X_new),1)).astype(int), values = X_new, axis = 1)
        X_obtimo = np.delete(X_pred,list_delete_index,1)

        #Chequear datos de rendimientos
        rendimiento = Rendimiento.objects.filter(state = True, laptop__id = laptop.id, game__id = games_id).first()
        if rendimiento:
            if rendimiento.fps_review:
                continue
            #Predecir resultados
            Y_pred = regression.predict(X_obtimo)
            if Y_pred > 0:
                Y_pred = int(Y_pred)
            else:
                Y_pred = 0
            rendimiento.fps = Y_pred
        else:
            #Predecir resultados
            Y_pred = regression.predict(X_obtimo)
            if Y_pred > 0:
                Y_pred = int(Y_pred)
            else:
                Y_pred = 0
            rendimiento = Rendimiento(fps = Y_pred,fps_review = False, laptop_id = laptop.id, game_id = games_id)
        X_list_FP32.append(float(laptop.gpu.rendimiento_fp32_TFlops))
        Y_list_FPS.append(int(Y_pred))
        rendimiento.save()

    #Graficar
    plt.title("Juego ID: " + game.nombre)
    plt.scatter(X_list_FP32, Y_list_FPS, color = "red")
    #plt.plot(X_list_FP32, Y_list_FPS, color = "blue")
    plt.title("Rendimiento en el juego: " + game.nombre + ", segun el rendimiento FP32 de la tarjeta")
    plt.xlabel("FP32")
    plt.ylabel("FPS")
    plt.show()
        
    
    #regresion_lineal_simple_grafica(X_simple,Y)
    
    #regresion_lineal_polinomica(X_simple,Y)

    #regresion_lineal_simple_polinomica_grafica(X_simple,Y)

    """regression = regresion_lineal_polinomica(X_train,Y_train)#Crear modelo de regresion lineal polinomica
    Y_pred = regression.predict(regresion_polinomica(X_test))"""

    #Y_pred = regression.predict(X_test)#Predecir el conjunto de test

    """#Reescalar variables
    sc_X = StandardScaler()
    sc_Y = StandardScaler()
    X_simple = sc_X.fit_transform(X_simple.reshape(-1,1))
    Y = sc_Y.fit_transform(Y.reshape(-1,1))

    regression = regresion_soporte_vertorial(X_simple,Y)#Crear modelo de regresion por maquina de soporte vectorial (necesita las variables normalizadas)
    Y_pred = sc_Y.inverse_transform(regression.predict(sc_X.transform(np.array([[10.5]]))).reshape(-1,1))
    regresion_soporte_vertorial_grafica(X_simple,Y,sc_X,sc_Y)"""
    
    return True

class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument(
            'games_ids', 
            nargs='+', 
            type=int)

    def handle(self, *args, **options):
        for games_id in options['games_ids']:
            if games_id > 0:
                if main(games_id):
                    self.stdout.write(self.style.SUCCESS("Los datos de rendimiento para el juego: " + str(games_id) + ", fueron preprosesados"))