# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2017-01-25 09:01
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apiv2', '0013_auto_20170124_1103'),
    ]

    operations = [
        migrations.AlterField(
            model_name='formula',
            name='constant_term',
            field=models.TextField(blank=True, max_length=1024, null=True),
        ),
        migrations.AlterField(
            model_name='formula',
            name='inorder_term',
            field=models.TextField(blank=True, max_length=1024, null=True),
        ),
        migrations.AlterField(
            model_name='formula',
            name='sorted_term',
            field=models.TextField(blank=True, max_length=1024, null=True),
        ),
        migrations.AlterField(
            model_name='formula',
            name='structure_term',
            field=models.TextField(blank=True, max_length=1024, null=True),
        ),
        migrations.AlterField(
            model_name='formula',
            name='variable_term',
            field=models.TextField(blank=True, max_length=1024, null=True),
        ),
    ]
