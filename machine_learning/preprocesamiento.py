from cProfile import label
from turtle import color
from django.core.management.base import BaseCommand, CommandError
from apps.principal.online.scraper import *
from django.conf import settings
from machine_learning.preprocesamiento import *

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler, PolynomialFeatures
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.svm import SVR
#import statsmodels.formula.api as sm
import statsmodels.regression.linear_model as rlm

SL = 0.05#Nivel de significacion para permanecer en el modelo

def importar(games_id = 0):
    directorio_bd = settings.BD_EXPORT_ROOT
    if games_id > 0:
        directorio_bd += "/rendimiento_" + str(games_id) + ".csv"
    else:
        directorio_bd = settings.BD_EXPORT_ROOT + "/rendimiento" + ".csv"
    #Importar dataset
    dataset = pd.read_csv(directorio_bd)
    return dataset

def estandarizacion_datos(X_train,X_test):
    sc_X = StandardScaler()
    X_train = sc_X.fit_transform(X_train)
    X_test = sc_X.transform(X_test)
    return X_train,X_test

def regresion_lineal(X,Y):
    #Crear modelo de regresion lineal
    regression = LinearRegression(n_jobs=settings.CPU_NUCLEOS)
    regression.fit(X, Y)
    return regression

def regresion_lineal_simple_grafica(X,Y):
    regression = regresion_lineal(X,Y)
    #Visualizar los resultados de entrenamiento
    plt.scatter(X, Y, color = "red")
    plt.plot(X, regression.predict(X), color = "blue")
    plt.title("Rendimiento en juegos segun el rendimiento FP32 de la tarjeta")
    plt.xlabel("FP32")
    plt.ylabel("FPS")
    plt.show()

def regresion_lineal_multiple_eliminacion_hacia_atras(X,Y):
    #Construir un modelo de regresion lineal multiple utilizando eliminacion hacia atras
    X_obtimo = np.append(arr = np.ones((len(X),1)).astype(int), values = X, axis = 1)#[:,[0,1,2,3,4,5,6]]
    rsquared_adj = -1
    list_max_value_index = np.arange(len(X_obtimo[0]))
    list_total_index = list_max_value_index
    list_max_value_index_oll = None
    regression_OLS = None
    while True:
        rsquared_adj_old = rsquared_adj
        regression_OLS_old = regression_OLS
        regression_OLS = rlm.OLS(endog = Y, exog = X_obtimo).fit()
        #print(regression_OLS.summary())
        pvalues = regression_OLS.pvalues
        rsquared_adj = regression_OLS.rsquared_adj
        max_value = np.amax(pvalues)
        nan_value = False
        if str(max_value) == 'nan':
            nan_value = True
        #print('rsquared_adj_old: ',rsquared_adj_old,', rsquared_adj: ',rsquared_adj,', len(X_obtimo[0]): ',len(X_obtimo[0]),', max_value: ',max_value, ', max_value_index: ',np.argmax(pvalues))
        if (rsquared_adj_old < rsquared_adj + 0.05 or max_value > SL*2) or nan_value:
            max_value_index = np.argmax(pvalues)
            if (len(X_obtimo[0]) > 2 and max_value > SL and max_value_index > 0) or nan_value:
                X_obtimo = np.delete(X_obtimo,max_value_index,1)
                list_max_value_index_oll = list_max_value_index
                list_max_value_index = np.delete(list_max_value_index,max_value_index)
            else:
                break
        else:
            regression_OLS = regression_OLS_old
            list_max_value_index = list_max_value_index_oll
            break
    list_delete_index = np.delete(list_total_index,list_max_value_index)
    #print(list_max_value_index)
    return regression_OLS, list_delete_index

def regresion_polinomica(X):
    poly_reg = PolynomialFeatures(degree=2)
    X_poly = poly_reg.fit_transform(X)
    return X_poly

def regresion_lineal_polinomica(X,Y):
    X_poly = regresion_polinomica(X)
    regression = regresion_lineal(X_poly,Y)
    return regression

def regresion_lineal_simple_polinomica_grafica(X,Y):
    regression_lineal = regresion_lineal(X,Y)
    regression_lineal_polinomica = regresion_lineal_polinomica(X,Y)
    #Visualizar los resultados de entrenamiento
    X_grid = np.arange(min(X), max(X), 0.1)
    X_grid = X_grid.reshape(len(X_grid), 1)
    plt.scatter(X, Y, color = "red")
    plt.plot(X, regression_lineal.predict(X), color = "blue")
    plt.plot(X_grid, regression_lineal_polinomica.predict(regresion_polinomica(X_grid)), color = "green")
    plt.title("Rendimiento en juegos segun el rendimiento FP32 de la tarjeta")
    plt.xlabel("FP32")
    plt.ylabel("FPS")
    plt.show()

def regresion_soporte_vertorial(X,Y):
    regression = SVR(kernel="rbf")
    regression.fit(X, Y)
    return regression

def regresion_soporte_vertorial_grafica(X,Y,sc_X,sc_Y):
    regression = regresion_soporte_vertorial(X,Y)
    #Visualizar los resultados de entrenamiento
    X_grid = np.arange(min(X), max(X), 0.1)
    X_grid = X_grid.reshape(len(X_grid), 1)
    plt.scatter(sc_X.inverse_transform(X), sc_Y.inverse_transform(Y), color = "red")
    plt.plot(sc_X.inverse_transform(X_grid), sc_Y.inverse_transform(regression.predict(X_grid).reshape(-1,1)), color = "blue")
    plt.title("Rendimiento en juegos segun el rendimiento FP32 de la tarjeta")
    plt.xlabel("FP32")
    plt.ylabel("FPS")
    plt.show()