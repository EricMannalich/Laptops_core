# Generated by Django 3.2.12 on 2022-04-17 03:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0025_auto_20220415_1048'),
    ]

    operations = [
        migrations.AddField(
            model_name='historicalrendimiento',
            name='nombre',
            field=models.CharField(blank=True, max_length=256, null=True),
        ),
        migrations.AddField(
            model_name='rendimiento',
            name='nombre',
            field=models.CharField(blank=True, max_length=256, null=True),
        ),
    ]
