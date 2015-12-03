# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('register', '0004_person_verified'),
    ]

    operations = [
        migrations.AddField(
            model_name='facility',
            name='compliant',
            field=models.BooleanField(default=0),
        ),
    ]
