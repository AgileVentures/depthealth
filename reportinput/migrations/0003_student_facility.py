# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('register', '0004_person_verified'),
        ('reportinput', '0002_auto_20151116_0052'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='facility',
            field=models.ForeignKey(to='register.Facility', null=True),
        ),
    ]
