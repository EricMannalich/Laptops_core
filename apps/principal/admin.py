from django.contrib import admin

from apps.principal.models import *

# Register your models here.
class CPUAdmin(admin.ModelAdmin):
    readonly_fields = ('nombre', 'puntuacion_save', 'cache_total',)
    fieldsets = (
        ('Control', {
            'fields' : ('nombre', 'puntuacion_save','state',),
            'classes' : ('collapse',),
        }),
        ('Identidad', {
            'fields' : ('marca','gama', 'generacion', 'modelo', 'serie',),
        }),('Propiedades', {
            'fields' : ('nucleos_fuertes','frecuencia_nucleos_fuertes_all','nucleos_debiles','frecuencia_nucleos_debiles_all','hilos','pcie_version','pcie_lineas','cache_L2','cache_L3','cache_total',),
            'description' : 'Propiedades claves',
        }),('Rendimiento', {
            'fields' : ('cinebench_R23_single','cinebench_R23_multi',),
            'description' : 'Tes de rendimiento',
        }),
    )
    search_fields = ("nombre",)
    list_display_links = ('nombre', 'puntuacion_save',)
    list_filter = ('marca','gama','generacion','serie','nucleos_fuertes','hilos','pcie_version',)
    list_editable =  ('cinebench_R23_single','cinebench_R23_multi','cache_L2','cache_L3','nucleos_fuertes','frecuencia_nucleos_fuertes_all','nucleos_debiles','frecuencia_nucleos_debiles_all','hilos','pcie_version','pcie_lineas',)
    list_display = list_display_links + list_editable
    

class GPUAdmin(admin.ModelAdmin):
    readonly_fields = ('nombre', 'puntuacion_save', 'cache_total',)
    fieldsets = (
        ('Control', {
            'fields' : ('nombre', 'puntuacion_save','state',),
            'classes' : ('collapse',),
        }),
        ('Identidad', {
            'fields' : ('marca', 'tipo', 'generacion', 'modelo', 'serie',),
        }),('Propiedades', {
            'fields' : ('nucleos','frecuencia','cant_vram_GB','rendimiento_fp32_TFlops','tpd_w','pcie_version','cache_L2','cache_L3','cache_total',),
            'description' : 'Propiedades claves',
        }),
    )
    search_fields = ("nombre",)
    list_display_links = ('nombre', 'puntuacion_save',)
    list_filter = ('marca', 'generacion', 'cant_vram_GB','tpd_w','pcie_version',)
    list_editable =  ('nucleos','frecuencia','cant_vram_GB','cache_L2','cache_L3','rendimiento_fp32_TFlops','tpd_w','pcie_version',)
    list_display = list_display_links + list_editable

class RAMAdmin(admin.ModelAdmin):
    readonly_fields = ('nombre', 'puntuacion_save',)
    fieldsets = (
        ('Control', {
            'fields' : ('nombre', 'puntuacion_save','state',),
            'classes' : ('collapse',),
        }),('Propiedades', {
            'fields' : ('generacion','frecuencia_MHz','cant_ram_GB',),
            'description' : 'Propiedades claves',
        }),
    )
    search_fields = ("nombre",)
    list_display_links = ('nombre', 'puntuacion_save',)
    list_filter = ('generacion','frecuencia_MHz','cant_ram_GB',)
    list_editable =  ('generacion','frecuencia_MHz','cant_ram_GB',)
    list_display = list_display_links + list_editable

class Disco_DuroAdmin(admin.ModelAdmin):
    readonly_fields = ('nombre', 'puntuacion_save',)
    fieldsets = (
        ('Control', {
            'fields' : ('nombre', 'puntuacion_save','state',),
            'classes' : ('collapse',),
        }),('Propiedades', {
            'fields' : ('generacion','capacidad_GB',),
            'description' : 'Propiedades claves',
        }),
    )
    search_fields = ("nombre",)
    list_display_links = ('nombre', 'puntuacion_save',)
    list_filter = ('generacion','capacidad_GB',)
    list_editable =  ('generacion','capacidad_GB',)
    list_display = list_display_links + list_editable

class MonitorAdmin(admin.ModelAdmin):
    readonly_fields = ('nombre', 'puntuacion_save',)
    fieldsets = (
        ('Control', {
            'fields' : ('nombre', 'puntuacion_save','state',),
            'classes' : ('collapse',),
        }),('Propiedades', {
            'fields' : ('resolucion','pulgadas','tipo','hdr','refrescamiento_Hz','espacio_sRGB',),
            'description' : 'Propiedades claves',
        }),
    )
    search_fields = ("nombre",)
    list_display_links = ('nombre', 'puntuacion_save',)
    list_filter = ('resolucion','pulgadas','tipo','hdr','refrescamiento_Hz','espacio_sRGB',)
    list_editable =  ('resolucion','pulgadas','tipo','hdr','refrescamiento_Hz','espacio_sRGB',)
    list_display = list_display_links + list_editable

class LaptopAdmin(admin.ModelAdmin):
    readonly_fields = ('nombre', 'puntuacion_save',)
    fieldsets = (
        ('Control', {
            'fields' : ('nombre', 'puntuacion_save', 'calidad_precio', 'state', 'link_notebookcheck',),
            'classes' : ('collapse',),
        }),
        ('Identidad', {
            'fields' : ('marca','serie', 'modelo', 'image',),
        }),('Amazon', {
            'fields' : ('link_amazon_EEUU','clasificacion_amazon_EEUU','precio_amazon_EEUU',),
            'description' : 'Datos de Amazon.com',
        }),('Componentes', {
            'fields' : ('cpu','gpu','ram','disco_duro','monitor',),
            'description' : 'Componentes claves',
        }),('Tecnologías', {
            'fields' : ('raytracing','cambio_gpu_dinamico','mux_switch','refresco_pantalla_adaptativo','thunderbolt_3_4',),
            'description' : 'Tecnologías que maximizan el rendimiento de los componentes',
            'classes' : ('collapse',),
        }),
    )
    list_display_links = ("precio_amazon_EEUU","marca", "serie", 'puntuacion_save', 'calidad_precio', "cpu", "gpu", "ram", "disco_duro", "monitor",)
    #list_editable =  ("cpu", "gpu", "ram", "disco_duro", "monitor",)
    list_display = list_display_links# + list_editable
    search_fields = ("nombre",)
    list_filter = ('marca','raytracing','cambio_gpu_dinamico','mux_switch','refresco_pantalla_adaptativo','thunderbolt_3_4',)
    date_hierarchy = ("created_date")

class GameAdmin(admin.ModelAdmin):
    search_fields = ("nombre",)

class RendimientoAdmin(admin.ModelAdmin):
    fieldsets = (
        ('Control', {
            'fields' : ('fps_review','state',),
            'classes' : ('collapse',),
        }),('Propiedades', {
            'fields' : ('fps','laptop','game',),
            'description' : 'Propiedades claves',
        }),
    )
    search_fields = ("nombre",)
    list_filter = ('fps_review','game',)
    list_display = ('fps','nombre','game',)
    list_display_links = list_display
    
admin.site.register(CPU, CPUAdmin)
admin.site.register(GPU, GPUAdmin)
admin.site.register(RAM, RAMAdmin)
admin.site.register(Disco_Duro, Disco_DuroAdmin)
admin.site.register(Monitor, MonitorAdmin)
admin.site.register(Laptop, LaptopAdmin)
admin.site.register(Game, GameAdmin)
admin.site.register(Rendimiento, RendimientoAdmin)