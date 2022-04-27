from decimal import *

from django.db import models
from simple_history.models import HistoricalRecords

# Create your models here.
class BaseModel(models.Model):
    """Model definition for BaseModel."""

    # Define fields here
    id = models.AutoField(primary_key = True)
    state = models.BooleanField('Estado',default = True)
    created_date = models.DateField('Fecha de Creación', auto_now=False, auto_now_add=True)
    modified_date = models.DateField('Fecha de Modificación', auto_now=True, auto_now_add=False)
    deleted_date = models.DateField('Fecha de Eliminación', auto_now=True, auto_now_add=False)
    historical = HistoricalRecords(user_model="users.User", inherit=True)

    @property
    def _history_user(self):
        return self.changed_by

    @_history_user.setter
    def _history_user(self, value):
        self.changed_by = value

    class Meta:
        """Meta definition for BaseModel."""
        abstract = True
        verbose_name = 'Modelo Base'
        verbose_name_plural = 'Modelos Base'

class BaseModelPuntuacion(BaseModel):
    class Meta:
        """Meta definition for BaseModelPuntuacion."""
        abstract = True
        verbose_name = 'Modelo Base con Puntuacion'
        verbose_name_plural = 'Modelos Base con Puntuacion'

    def save(self, *args, **kwargs):
        self.nombre = self.create_name()
        puntuacion = self.puntuacion()
        self.puntuacion_save = puntuacion
        super().save(*args, **kwargs)
        return puntuacion

    def update_puntuacion(self):
        return self.save()

MARCA_CPU = (
        ('R', 'AMD'),
        ('i', 'Intel')
        )
GAMA_CPU = (
        ('3', '3'),
        ('5', '5'),
        ('7', '7'),
        ('9', '9')
        )

MARCA_GPU = (
        ('AMD', 'AMD'),
        ('Nvidia', 'Nvidia')
        )

GENERACION_RAM = (
        ('1', 'DDR'),
        ('2', 'DDR2'),
        ('3', 'DDR3'),
        ('4', 'DDR4'),
        ('5', 'DDR5')
        )

TIPO_DISCO = (
        ('1', 'HHD'),
        ('2', 'SSD-SATA'),
        ('3', 'M.2 gen3'),
        ('4', 'M.2 gen4'),
        ('5', 'M.2 gen5')
        )

MONITOR_RESOLUCION = (
        ('1', 'HD'),
        ('2', 'FHD'),
        ('3', '2K'),
        ('4', '3K'),
        ('5', '4K')
        )
MONITOR_TIPO = (
        ('1', 'NT'),
        ('2', 'VA'),
        ('3', 'IPS'),
        ('4', 'QLED'),
        ('5', 'AMOLED')
        )
MONITOR_HDR = (
        ('0', ':NO'),
        ('1', '400'),
        ('2', '500'),
        ('3', '600'),
        ('4', '1000'),
        ('5', '1400')
        )

def puntuador(valor, valor_max, puntuacion_max = 5):
    if valor >= valor_max:
        return Decimal(puntuacion_max)
    return Decimal(valor / valor_max * puntuacion_max)


