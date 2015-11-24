# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('register', '0002_facility_count'),
    ]

    operations = [
        migrations.AlterField(
            model_name='facility',
            name='count',
            field=models.IntegerField(default=0),
        ),
    ]
