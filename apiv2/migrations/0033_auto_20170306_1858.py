# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2017-03-06 10:58
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apiv2', '0032_auto_20170303_2357'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='formula',
            name='question',
        ),
        migrations.AddField(
            model_name='formula',
            name='questions',
            field=models.ManyToManyField(to='apiv2.Question'),
        ),
    ]
