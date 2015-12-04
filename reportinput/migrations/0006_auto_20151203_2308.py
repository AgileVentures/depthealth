# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('reportinput', '0005_report_complete'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='report',
        ),
        migrations.AddField(
            model_name='student',
            name='report',
            field=models.ManyToManyField(to='reportinput.Report', null=True, blank=True),
        ),
    ]
