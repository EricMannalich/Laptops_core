from decimal import *

from django.db import models

from apps.base.models import *
from apps.users.models import User

PENDIENTE = Decimal(42.5)
CORRIMIENTO = Decimal(1250)

class CPU(BaseModelPuntuacion):
    nombre = models.CharField(max_length=32, blank=True, null=True)
    marca = models.CharField(max_length=1, choices=MARCA_CPU, default = 'i')
    gama = models.CharField(max_length=1, choices=GAMA_CPU, default = '7')
    generacion = models.CharField(max_length=2, default = '11')
    modelo = models.CharField(max_length=3, default = '800')
    serie = models.CharField(max_length=2, default = 'H')
    nucleos_fuertes = models.IntegerField(default = 8)
    frecuencia_nucleos_fuertes_all = models.DecimalField(max_digits=2, decimal_places=1, default = 4)
    nucleos_debiles = models.IntegerField(default = 0)
    frecuencia_nucleos_debiles_all = models.DecimalField(max_digits=2, decimal_places=1, default = 0)
    hilos = models.IntegerField(default = 16)
    cache_L2 = models.DecimalField(verbose_name="Cache L2", max_digits=4, decimal_places=1, default = 0)
    cache_L3 = models.DecimalField(verbose_name="Cache L3", max_digits=4, decimal_places=1, default = 0)
    cache_total = models.DecimalField(verbose_name="Cache total", max_digits=4, decimal_places=1, default = 0)
    pcie_version = models.IntegerField(default = 4)
    pcie_lineas = models.IntegerField(default = 20)
    cinebench_R23_single = models.IntegerField(default = 0)
    cinebench_R23_multi = models.IntegerField(default = 0)
    puntuacion_save = models.DecimalField(verbose_name="Puntuación", max_digits=3, decimal_places=1, default = 0)

    def puntuacion(self):
        cinebench_R23_single = self.cinebench_R23_single
        velocidad_single = puntuador(cinebench_R23_single,2000,10)
        cinebench_R23_multi = self.cinebench_R23_multi
        velocidad_multi = puntuador(cinebench_R23_multi,20000)
        cache = self.cache_L2 + self.cache_L3
        capacidad = puntuador(cache, 100)
        puntuacion = velocidad_single + velocidad_multi + capacidad
        return puntuacion

    def create_name(self):
        return self.marca + self.gama + "-" + self.generacion + self.modelo + self.serie

    def save(self, *args, **kwargs):
        self.nombre = self.create_name()
        self.cache_total = self.cache_L2 + self.cache_L3
        puntuacion = self.puntuacion()
        self.puntuacion_save = puntuacion
        super().save(*args, **kwargs)
        return puntuacion

    class Meta:
        verbose_name = 'CPU'
        verbose_name_plural = 'CPUs'
        ordering = ('marca', 'generacion', 'modelo', 'serie',)

    def __str__(self):
        return self.nombre

class GPU(BaseModelPuntuacion):
    nombre = models.CharField(max_length=32, blank=True, null=True)
    marca = models.CharField(max_length=6, choices=MARCA_GPU, default = 'Nvidia')
    tipo = models.CharField(max_length=3, default = 'RTX')
    generacion = models.CharField(max_length=1, default = '3')
    modelo = models.CharField(max_length=3, default = '060')
    serie = models.CharField(max_length=2, default = 'M')
    nucleos = models.IntegerField(default = 3840)
    frecuencia = models.IntegerField(default = 1425)
    cant_vram_GB = models.IntegerField(default = 6)
    rendimiento_fp32_TFlops = models.DecimalField(max_digits=5, decimal_places=3, default = 0)
    cache_L2 = models.DecimalField(verbose_name="Cache L2", max_digits=4, decimal_places=1, default = 0)
    cache_L3 = models.DecimalField(verbose_name="Cache L3", max_digits=4, decimal_places=1, default = 0)
    cache_total = models.DecimalField(verbose_name="Cache total", max_digits=4, decimal_places=1, default = 0)
    tpd_w = models.IntegerField(default = 80)
    pcie_version = models.IntegerField(default = 4)
    puntuacion_save = models.DecimalField(verbose_name="Puntuación", max_digits=3, decimal_places=1, default = 0)

    def puntuacion(self):
        fp32 = self.rendimiento_fp32_TFlops
        velocidad = puntuador(fp32, 25, 15)
        capacidad = puntuador(self.cant_vram_GB, 16)
        cache = puntuador(self.cache_total, 100)
        return capacidad + velocidad + cache

    def create_name(self):
        return self.marca + " " + self.tipo + ' ' + self.generacion + self.modelo + self.serie + " " + str(self.cant_vram_GB) + "GB" + " (" + str(self.tpd_w) + "w)"

    def save(self, *args, **kwargs):
        self.nombre = self.create_name()
        self.cache_total = self.cache_L2 + self.cache_L3
        puntuacion = self.puntuacion()
        self.puntuacion_save = puntuacion
        super().save(*args, **kwargs)
        return puntuacion

    class Meta:
        verbose_name = 'GPU'
        verbose_name_plural = 'GPUs'
        ordering = ('marca', 'generacion', 'modelo', 'serie', 'tpd_w',)

    def __str__(self):
        return self.nombre

class RAM(BaseModelPuntuacion):
    nombre = models.CharField(max_length=32, blank=True, null=True)
    generacion = models.CharField(max_length=1, choices=GENERACION_RAM, default = '4')
    frecuencia_MHz = models.IntegerField(default = 3200)
    cant_ram_GB = models.IntegerField(default = 16)
    puntuacion_save = models.DecimalField(verbose_name="Puntuación", max_digits=3, decimal_places=1, default = 0)

    def puntuacion(self):
        velocidad = puntuador(self.frecuencia_MHz, 4800)
        capacidad = puntuador(self.cant_ram_GB, 32)
        return capacidad + velocidad

    def create_name(self):
        return "DDR" + self.generacion + " " + str(self.frecuencia_MHz) + "MHz " + str(self.cant_ram_GB) + "GB"
        
    class Meta:
        verbose_name = 'RAM'
        verbose_name_plural = 'RAMs'
        ordering = ('generacion', 'frecuencia_MHz', 'cant_ram_GB',)

    def __str__(self):
        return self.nombre

class Disco_Duro(BaseModelPuntuacion):
    nombre = models.CharField(max_length=32, blank=True, null=True)
    generacion = models.CharField(max_length=1, choices=TIPO_DISCO, default = '4')
    capacidad_GB = models.IntegerField(default = 512)
    puntuacion_save = models.DecimalField(verbose_name="Puntuación", max_digits=3, decimal_places=1, default = 0)

    def puntuacion(self):
        velocidad = Decimal(self.generacion)
        capacidad = puntuador(self.capacidad_GB,2048)
        return (capacidad + velocidad * 3)/2

    def create_name(self):
        return TIPO_DISCO[int(self.generacion)-1][1] + " " + str(self.capacidad_GB) + "GB"
        
    class Meta:
        verbose_name = 'Disco duro'
        verbose_name_plural = 'Discos duros'
        ordering = ('generacion', 'capacidad_GB',)

    def __str__(self):
        return self.nombre

class Monitor(BaseModelPuntuacion):
    nombre = models.CharField(max_length=64, blank=True, null=True)
    resolucion = models.CharField(verbose_name="Resolución", max_length=1, choices=MONITOR_RESOLUCION, default = '2')
    pulgadas = models.DecimalField(max_digits=3, decimal_places=1, default = 15)
    tipo = models.CharField(max_length=1, choices=MONITOR_TIPO, default = '3')
    hdr = models.CharField(verbose_name="HDR", max_length=1, choices=MONITOR_HDR, default = '0')
    refrescamiento_Hz = models.IntegerField(default = 144)
    espacio_sRGB = models.IntegerField(default = 45)
    puntuacion_save = models.DecimalField(verbose_name="Puntuación", max_digits=3, decimal_places=1, default = 0)

    def puntuacion(self):
        resolucion = Decimal(self.resolucion)
        tipo = Decimal(self.tipo)
        hdr = Decimal(self.hdr)
        velocidad = puntuador(self.refrescamiento_Hz, 240)
        color = puntuador(self.espacio_sRGB, 100)
        return (resolucion + tipo + hdr + velocidad + color)/5

    def create_name(self):
        return MONITOR_RESOLUCION[int(self.resolucion)-1][1] + " " + str(self.pulgadas) + "' " + MONITOR_TIPO[int(self.tipo)-1][1] + " " + str(self.refrescamiento_Hz) + "Hz HDR" + MONITOR_HDR[int(self.hdr)][1] + " sRGB:" + str(self.espacio_sRGB) + "%"
        
    class Meta:
        verbose_name = 'Monitor'
        verbose_name_plural = 'Monitores'
        ordering = ('resolucion', 'tipo', 'refrescamiento_Hz', 'hdr',)

    def __str__(self):
        return  self.nombre

class Laptop(BaseModel):
    nombre = models.CharField(max_length=256, blank=True, null=True)
    marca = models.CharField(max_length=16, default = '', db_index=True)
    serie = models.CharField(max_length=32, default = '', blank=True, null=True, db_index=True)
    modelo = models.CharField(max_length=64, default = '', blank=True, null=True, db_index=True)
    image = models.ImageField('Imagen de portada', upload_to='portada/%Y/%m/%d/', max_length=255, null=True, blank = True)
    cpu = models.ForeignKey(CPU, verbose_name="CPU", on_delete=models.CASCADE,db_index=True)
    gpu = models.ForeignKey(GPU, verbose_name="GPU", on_delete=models.CASCADE,db_index=True)
    ram = models.ForeignKey(RAM, verbose_name="RAM", on_delete=models.CASCADE,db_index=True)
    disco_duro = models.ForeignKey(Disco_Duro, on_delete=models.CASCADE,db_index=True)
    monitor = models.ForeignKey(Monitor, on_delete=models.CASCADE,db_index=True)
    link_notebookcheck = models.URLField(blank=True, null=True)
    precio_amazon_EEUU = models.DecimalField(verbose_name="Precio", max_digits=7, decimal_places=2, default = 0)
    clasificacion_amazon_EEUU = models.DecimalField(verbose_name="Clasificación de Amazon", max_digits=2, decimal_places=1, default = 0)
    link_amazon_EEUU = models.URLField()
    raytracing = models.BooleanField(verbose_name="Tiene procesador de Raytracing?", default = True)
    cambio_gpu_dinamico = models.BooleanField(verbose_name="Tiene cambio de GPU dinámico?", default = True)
    mux_switch = models.BooleanField(verbose_name="Tiene cambio de salida pantalla?", default = False)
    refresco_pantalla_adaptativo = models.BooleanField(verbose_name="Tiene refresco de pantalla adaptativo (Freesync o G-Sync)?", default = False)
    thunderbolt_3_4 = models.BooleanField(verbose_name="Tiene algún puerto thunderbolt 3 o 4?", default = False)
    puntuacion_save = models.DecimalField(verbose_name="Puntuación", max_digits=4, decimal_places=1, default = 0)
    calidad_precio = models.DecimalField(verbose_name="Calidad/precio", max_digits=4, decimal_places=1, default = 0)

    def micelaneas(self):
        puntos = 0
        if self.raytracing:
            puntos +=1
        if self.cambio_gpu_dinamico:
            puntos +=1
        if self.mux_switch:
            puntos +=1
        if self.refresco_pantalla_adaptativo:
            puntos +=1
        if self.thunderbolt_3_4:
            puntos +=1
        return puntos

    def puntuacion(self):
        cpu = self.cpu.puntuacion_save#update_puntuacion()#20
        gpu = self.gpu.puntuacion_save#update_puntuacion()#25
        ram = self.ram.puntuacion_save#update_puntuacion()#10
        disco_duro = self.disco_duro.puntuacion_save#update_puntuacion()#10
        monitor = self.monitor.puntuacion_save#update_puntuacion()#5
        micelaneas = Decimal(self.micelaneas())#5
        clasificacion_amazon_EEUU = self.clasificacion_amazon_EEUU#5
        return cpu + gpu + ram + disco_duro + monitor + micelaneas + clasificacion_amazon_EEUU

    def create_name(self):
        nombre = self.marca
        if self.serie:
            nombre += " " + self.serie
        if self.modelo:
            nombre += " " + self.modelo
        nombre += "; " + str(self.cpu) + "; " + str(self.gpu) + "; " + str(self.ram) + "; " + str(self.disco_duro) + "; " + str(self.monitor)
        return nombre

    def save(self, *args, **kwargs):
        self.nombre = self.create_name()
        puntuacion = self.puntuacion() / 80 * 100
        self.puntuacion_save = puntuacion
        #precio_amazon_EEUU = self.precio_amazon_EEUU
        #ecuacion = PENDIENTE * puntuacion - CORRIMIENTO - precio_amazon_EEUU
        #self.calidad_precio = puntuador(ecuacion, precio_amazon_EEUU, 100)
        #self.calidad_precio = puntuacion * 1000 / precio_amazon_EEUU
        super().save(*args, **kwargs)
        
    class Meta:
        verbose_name = 'Laptop'
        verbose_name_plural = 'Laptops'
        ordering = ('marca', 'modelo', 'precio_amazon_EEUU', )

    def __str__(self):
        return self.nombre

class Game(BaseModel):
    nombre = models.CharField(max_length=128, unique=True)

    class Meta:
        verbose_name = 'Game'
        verbose_name_plural = 'Games'
        ordering = ('nombre', )

    def __str__(self):
        return self.nombre

class Rendimiento(BaseModel):
    nombre = models.CharField(verbose_name="Laptop", max_length=256, blank=True, null=True)
    fps = models.IntegerField(default = 100)
    fps_review = models.BooleanField(verbose_name="Fue obtenido por review?", default = True)
    laptop = models.ForeignKey(Laptop, verbose_name="Laptop", on_delete=models.CASCADE,db_index=True)
    game = models.ForeignKey(Game, verbose_name="Game", on_delete=models.CASCADE,db_index=True)

    def create_name(self):
        nombre = self.laptop.marca
        if self.laptop.serie:
            nombre += " " + self.laptop.serie
        nombre += "; " + str(self.laptop.cpu) + "; " + str(self.laptop.gpu) + "; " + str(self.laptop.ram) + "; " + str(self.laptop.disco_duro)
        return nombre

    def save(self, *args, **kwargs):
        self.nombre = self.create_name()
        #Borrar rendimiento anterior
        old_rendimiento = Rendimiento.objects.filter(laptop = self.laptop, game = self.game).first()
        if old_rendimiento:
            old_rendimiento.delete()
        super().save(*args, **kwargs)

    class Meta:
        verbose_name = 'Rendimiento'
        verbose_name_plural = 'Rendimientos'
        
    def __str__(self):
        return self.nombre