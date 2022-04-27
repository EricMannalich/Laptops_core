# Generated by Django 3.2.12 on 2022-04-04 00:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0007_auto_20220403_1452'),
    ]

    operations = [
        migrations.AddField(
            model_name='historicallaptop',
            name='image',
            field=models.TextField(blank=True, max_length=255, null=True, verbose_name='Imagen de portada'),
        ),
        migrations.AddField(
            model_name='laptop',
            name='image',
            field=models.ImageField(blank=True, max_length=255, null=True, upload_to='portada/%Y/%m/%d/', verbose_name='Imagen de portada'),
        ),
        migrations.AlterField(
            model_name='historicallaptop',
            name='cpu',
            field=models.ForeignKey(blank=True, db_constraint=False, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='+', to='principal.cpu', verbose_name='CPU'),
        ),
        migrations.AlterField(
            model_name='historicallaptop',
            name='gpu',
            field=models.ForeignKey(blank=True, db_constraint=False, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='+', to='principal.gpu', verbose_name='GPU'),
        ),
        migrations.AlterField(
            model_name='historicallaptop',
            name='ram',
            field=models.ForeignKey(blank=True, db_constraint=False, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='+', to='principal.ram', verbose_name='RAM'),
        ),
        migrations.AlterField(
            model_name='historicalmonitor',
            name='hdr',
            field=models.CharField(choices=[('0', ':NO'), ('1', '400'), ('2', '500'), ('3', '600'), ('4', '1000'), ('5', '1400')], default='0', max_length=1, verbose_name='HDR'),
        ),
        migrations.AlterField(
            model_name='historicalmonitor',
            name='refrescamiento_Hz',
            field=models.IntegerField(default=144),
        ),
        migrations.AlterField(
            model_name='historicalmonitor',
            name='resolucion',
            field=models.CharField(choices=[('1', 'HD'), ('2', 'FHD'), ('3', '2K'), ('4', '3K'), ('5', '4K')], default='2', max_length=1, verbose_name='Resolución'),
        ),
        migrations.AlterField(
            model_name='laptop',
            name='cpu',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='principal.cpu', verbose_name='CPU'),
        ),
        migrations.AlterField(
            model_name='laptop',
            name='gpu',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='principal.gpu', verbose_name='GPU'),
        ),
        migrations.AlterField(
            model_name='laptop',
            name='ram',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='principal.ram', verbose_name='RAM'),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='hdr',
            field=models.CharField(choices=[('0', ':NO'), ('1', '400'), ('2', '500'), ('3', '600'), ('4', '1000'), ('5', '1400')], default='0', max_length=1, verbose_name='HDR'),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='refrescamiento_Hz',
            field=models.IntegerField(default=144),
        ),
        migrations.AlterField(
            model_name='monitor',
            name='resolucion',
            field=models.CharField(choices=[('1', 'HD'), ('2', 'FHD'), ('3', '2K'), ('4', '3K'), ('5', '4K')], default='2', max_length=1, verbose_name='Resolución'),
        ),
    ]