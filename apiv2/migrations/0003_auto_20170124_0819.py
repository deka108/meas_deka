# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2017-01-24 00:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apiv2', '0002_auto_20170124_0807'),
    ]

    operations = [
        migrations.AlterField(
            model_name='concept',
            name='name',
            field=models.CharField(max_length=200),
        ),
    ]