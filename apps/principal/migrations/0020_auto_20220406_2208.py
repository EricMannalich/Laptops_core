# Generated by Django 3.2.12 on 2022-04-07 02:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0019_auto_20220406_1830'),
    ]

    operations = [
        migrations.AlterField(
            model_name='gpu',
            name='puntuacion_save',
            field=models.DecimalField(decimal_places=1, default=0, max_digits=3, verbose_name='Puntuación'),
        ),
        migrations.AlterField(
            model_name='historicalgpu',
            name='puntuacion_save',
            field=models.DecimalField(decimal_places=1, default=0, max_digits=3, verbose_name='Puntuación'),
        ),
    ]
