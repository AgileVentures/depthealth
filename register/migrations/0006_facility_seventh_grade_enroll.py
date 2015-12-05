# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('register', '0005_facility_compliant'),
    ]

    operations = [
        migrations.AddField(
            model_name='facility',
            name='seventh_grade_enroll',
            field=models.IntegerField(default=0, null=True, blank=True),
        ),
    ]
