# Generated by Django 3.2.12 on 2022-04-13 23:46

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import simple_history.models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('principal', '0022_auto_20220413_1343'),
    ]

    operations = [
        migrations.CreateModel(
            name='Game',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('state', models.BooleanField(default=True, verbose_name='Estado')),
                ('created_date', models.DateField(auto_now_add=True, verbose_name='Fecha de Creación')),
                ('modified_date', models.DateField(auto_now=True, verbose_name='Fecha de Modificación')),
                ('deleted_date', models.DateField(auto_now=True, verbose_name='Fecha de Eliminación')),
                ('nombre', models.CharField(max_length=128, unique=True)),
            ],
            options={
                'verbose_name': 'Game',
                'verbose_name_plural': 'Games',
                'ordering': ('nombre',),
            },
        ),
        migrations.CreateModel(
            name='Rendimiento',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('state', models.BooleanField(default=True, verbose_name='Estado')),
                ('created_date', models.DateField(auto_now_add=True, verbose_name='Fecha de Creación')),
                ('modified_date', models.DateField(auto_now=True, verbose_name='Fecha de Modificación')),
                ('deleted_date', models.DateField(auto_now=True, verbose_name='Fecha de Eliminación')),
                ('fps', models.IntegerField(default=100)),
                ('game', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='principal.game', verbose_name='Game')),
                ('laptop', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='principal.laptop', verbose_name='Laptop')),
            ],
            options={
                'verbose_name': 'Rendimiento',
                'verbose_name_plural': 'Rendimientos',
            },
        ),
        migrations.CreateModel(
            name='HistoricalRendimiento',
            fields=[
                ('id', models.IntegerField(blank=True, db_index=True)),
                ('state', models.BooleanField(default=True, verbose_name='Estado')),
                ('created_date', models.DateField(blank=True, editable=False, verbose_name='Fecha de Creación')),
                ('modified_date', models.DateField(blank=True, editable=False, verbose_name='Fecha de Modificación')),
                ('deleted_date', models.DateField(blank=True, editable=False, verbose_name='Fecha de Eliminación')),
                ('fps', models.IntegerField(default=100)),
                ('history_id', models.AutoField(primary_key=True, serialize=False)),
                ('history_date', models.DateTimeField()),
                ('history_change_reason', models.CharField(max_length=100, null=True)),
                ('history_type', models.CharField(choices=[('+', 'Created'), ('~', 'Changed'), ('-', 'Deleted')], max_length=1)),
                ('game', models.ForeignKey(blank=True, db_constraint=False, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='+', to='principal.game', verbose_name='Game')),
                ('history_user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('laptop', models.ForeignKey(blank=True, db_constraint=False, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='+', to='principal.laptop', verbose_name='Laptop')),
            ],
            options={
                'verbose_name': 'historical Rendimiento',
                'ordering': ('-history_date', '-history_id'),
                'get_latest_by': 'history_date',
            },
            bases=(simple_history.models.HistoricalChanges, models.Model),
        ),
        migrations.CreateModel(
            name='HistoricalGame',
            fields=[
                ('id', models.IntegerField(blank=True, db_index=True)),
                ('state', models.BooleanField(default=True, verbose_name='Estado')),
                ('created_date', models.DateField(blank=True, editable=False, verbose_name='Fecha de Creación')),
                ('modified_date', models.DateField(blank=True, editable=False, verbose_name='Fecha de Modificación')),
                ('deleted_date', models.DateField(blank=True, editable=False, verbose_name='Fecha de Eliminación')),
                ('nombre', models.CharField(db_index=True, max_length=128)),
                ('history_id', models.AutoField(primary_key=True, serialize=False)),
                ('history_date', models.DateTimeField()),
                ('history_change_reason', models.CharField(max_length=100, null=True)),
                ('history_type', models.CharField(choices=[('+', 'Created'), ('~', 'Changed'), ('-', 'Deleted')], max_length=1)),
                ('history_user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'historical Game',
                'ordering': ('-history_date', '-history_id'),
                'get_latest_by': 'history_date',
            },
            bases=(simple_history.models.HistoricalChanges, models.Model),
        ),
    ]
