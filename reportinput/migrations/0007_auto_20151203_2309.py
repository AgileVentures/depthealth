# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('reportinput', '0006_auto_20151203_2308'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='report',
            field=models.ManyToManyField(to='reportinput.Report'),
        ),
    ]
