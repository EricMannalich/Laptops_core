# Generated by Django 3.2.12 on 2022-04-06 22:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0016_auto_20220406_1806'),
    ]

    operations = [
        migrations.AddField(
            model_name='historicallaptop',
            name='nombre',
            field=models.CharField(blank=True, max_length=256, null=True),
        ),
        migrations.AddField(
            model_name='historicallaptop',
            name='puntuacion_save',
            field=models.DecimalField(decimal_places=1, default=0, max_digits=2, verbose_name='Puntuación'),
        ),
        migrations.AddField(
            model_name='laptop',
            name='nombre',
            field=models.CharField(blank=True, max_length=256, null=True),
        ),
        migrations.AddField(
            model_name='laptop',
            name='puntuacion_save',
            field=models.DecimalField(decimal_places=1, default=0, max_digits=2, verbose_name='Puntuación'),
        ),
    ]
