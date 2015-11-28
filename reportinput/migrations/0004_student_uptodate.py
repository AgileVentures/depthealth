# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reportinput', '0003_student_facility'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='uptodate',
            field=models.BooleanField(default=0),
        ),
    ]
