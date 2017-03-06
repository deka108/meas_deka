# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2017-03-03 15:56
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('apiv2', '0030_auto_20170225_1112'),
    ]

    operations = [
        migrations.CreateModel(
            name='QuestionText',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.TextField()),
                ('question_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='question_text', to='apiv2.Question')),
            ],
        ),
    ]
