# Generated by Django 3.2.12 on 2022-04-13 17:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0021_auto_20220406_2346'),
    ]

    operations = [
        migrations.AlterField(
            model_name='historicallaptop',
            name='cambio_gpu_dinamico',
            field=models.BooleanField(default=True, verbose_name='Tiene cambio de GPU dinámico?'),
        ),
        migrations.AlterField(
            model_name='historicallaptop',
            name='mux_switch',
            field=models.BooleanField(default=False, verbose_name='Tiene cambio de salida pantalla?'),
        ),
        migrations.AlterField(
            model_name='historicallaptop',
            name='raytracing',
            field=models.BooleanField(default=True, verbose_name='Tiene procesador de Raytracing?'),
        ),
        migrations.AlterField(
            model_name='historicallaptop',
            name='refresco_pantalla_adaptativo',
            field=models.BooleanField(default=False, verbose_name='Tiene refresco de pantalla adaptativo (Freesync o G-Sync)?'),
        ),
        migrations.AlterField(
            model_name='laptop',
            name='cambio_gpu_dinamico',
            field=models.BooleanField(default=True, verbose_name='Tiene cambio de GPU dinámico?'),
        ),
        migrations.AlterField(
            model_name='laptop',
            name='mux_switch',
            field=models.BooleanField(default=False, verbose_name='Tiene cambio de salida pantalla?'),
        ),
        migrations.AlterField(
            model_name='laptop',
            name='raytracing',
            field=models.BooleanField(default=True, verbose_name='Tiene procesador de Raytracing?'),
        ),
        migrations.AlterField(
            model_name='laptop',
            name='refresco_pantalla_adaptativo',
            field=models.BooleanField(default=False, verbose_name='Tiene refresco de pantalla adaptativo (Freesync o G-Sync)?'),
        ),
    ]
