# Generated by Django 3.2.12 on 2022-04-06 22:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0015_auto_20220406_1803'),
    ]

    operations = [
        migrations.AlterField(
            model_name='historicalmonitor',
            name='nombre',
            field=models.CharField(blank=True, max_length=64, null=True),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='nombre',
            field=models.CharField(blank=True, max_length=64, null=True),
        ),
    ]