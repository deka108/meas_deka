# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2017-01-16 14:51
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('meas_models', '0012_formula_formula'),
    ]

    operations = [
        migrations.CreateModel(
            name='FormulaIndex',
            fields=[
                ('indexkey', models.CharField(max_length=64, primary_key=True, serialize=False, verbose_name='index key')),
                ('docsids', models.CharField(blank=True, max_length=9192, null=True)),
                ('df', models.PositiveIntegerField(blank=True, default=1, verbose_name='frequency')),
            ],
        ),
        migrations.RemoveField(
            model_name='formula',
            name='formula',
        ),
        migrations.RemoveField(
            model_name='formula',
            name='name',
        ),
    ]
