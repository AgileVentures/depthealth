# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('reportinput', '0007_auto_20151203_2309'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='report',
        ),
        migrations.AddField(
            model_name='student',
            name='report',
            field=models.ForeignKey(blank=True, to='reportinput.Report', null=True),
        ),
    ]
