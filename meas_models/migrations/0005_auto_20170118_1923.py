# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2017-01-18 11:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('meas_models', '0004_formulaindex_idf'),
    ]

    operations = [
        migrations.AlterField(
            model_name='formulaindex',
            name='idf',
            field=models.FloatField(blank=True, default=0),
        ),
    ]
