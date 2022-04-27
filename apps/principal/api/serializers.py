from decimal import *
from rest_framework import serializers

from apps.principal.models import *
#from apps.base.serializers import *

class CPUSerializer(serializers.ModelSerializer):

    class Meta:
        model = CPU
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date', 'nombre', 'puntuacion_save',)

    def to_representation(self,instance):
        nucleos = instance.nucleos_fuertes + instance.nucleos_debiles
        return {
            'id': instance.id,
            'nombre': instance.nombre,
            'nucleos': nucleos,
            'hilos': instance.hilos,
            'frecuencia': instance.frecuencia_nucleos_fuertes_all,
            'puntuacion' : instance.puntuacion_save
            }

class GPUSerializer(serializers.ModelSerializer):

    class Meta:
        model = GPU
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date', 'nombre', 'puntuacion_save',)

    def to_representation(self,instance):
        return {
            'id': instance.id,
            'nombre': instance.nombre,
            'nucleos': instance.nucleos,
            'frecuencia': instance.frecuencia,
            'cant_vram_GB': instance.cant_vram_GB,
            'puntuacion' : instance.puntuacion_save
            }

class RAMSerializer(serializers.ModelSerializer):

    class Meta:
        model = RAM
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date', 'nombre', 'puntuacion_save',)

    def to_representation(self,instance):
        return {
            'id': instance.id,
            'nombre': instance.nombre,
            'puntuacion' : instance.puntuacion_save
            }

class Disco_DuroSerializer(serializers.ModelSerializer):

    class Meta:
        model = Disco_Duro
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date', 'nombre', 'puntuacion_save',)

    def to_representation(self,instance):
        return {
            'id': instance.id,
            'nombre': instance.nombre,
            'puntuacion' : instance.puntuacion_save
            }

class MonitorSerializer(serializers.ModelSerializer):

    class Meta:
        model = Monitor
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date', 'nombre', 'puntuacion_save',)

    def to_representation(self,instance):
        return {
            'id': instance.id,
            'nombre': instance.nombre,
            'puntuacion' : instance.puntuacion_save
            }

class LaptopSerializer(serializers.ModelSerializer):

    class Meta:
        model = Laptop
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date', 'nombre', 'puntuacion_save', 'calidad_precio',)

    def to_representation(self,instance):
        nombre = instance.marca
        serie = instance.serie
        modelo = instance.modelo
        if serie:
            nombre += " " + serie
        if modelo:
            nombre += " " + modelo
        return {
            'id': instance.id,
            'nombre': nombre,
            'cpu': str(instance.cpu),
            'gpu': str(instance.gpu),
            'ram': str(instance.ram),
            'disco_duro': str(instance.disco_duro),
            'monitor': str(instance.monitor),
            'raytracing': instance.raytracing,
            'cambio_gpu_dinamico': instance.cambio_gpu_dinamico,
            'mux_switch': instance.mux_switch,
            'refresco_pantalla_adaptativo': instance.refresco_pantalla_adaptativo,
            'thunderbolt_3_4': instance.thunderbolt_3_4,
            'image': instance.image.url if instance.image else '',
            'link_notebookcheck': instance.link_notebookcheck,
            'link_amazon_EEUU': instance.link_amazon_EEUU,
            'precio_amazon_EEUU': instance.precio_amazon_EEUU,
            'puntuacion_total' : instance.puntuacion_save,
            'calidad_precio' : instance.calidad_precio
            }

class GameSerializer(serializers.ModelSerializer):

    class Meta:
        model = Game
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date',)

class RendimientoSerializer(serializers.ModelSerializer):

    class Meta:
        model = Rendimiento
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date',)