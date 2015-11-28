# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('register', '0003_auto_20151120_1742'),
    ]

    operations = [
        migrations.AddField(
            model_name='person',
            name='verified',
            field=models.BooleanField(default=False),
        ),
    ]
