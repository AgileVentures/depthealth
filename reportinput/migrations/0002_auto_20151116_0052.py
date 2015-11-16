# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reportinput', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='person',
        ),
        migrations.AddField(
            model_name='report',
            name='entrydate',
            field=models.DateField(null=True, blank=True),
        ),
        migrations.AddField(
            model_name='student',
            name='age',
            field=models.IntegerField(null=True, blank=True),
        ),
        migrations.AddField(
            model_name='student',
            name='report',
            field=models.ForeignKey(blank=True, to='reportinput.Report', null=True),
        ),
    ]
