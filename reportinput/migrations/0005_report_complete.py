# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('reportinput', '0004_student_uptodate'),
    ]

    operations = [
        migrations.AddField(
            model_name='report',
            name='complete',
            field=models.BooleanField(default=0),
        ),
    ]
