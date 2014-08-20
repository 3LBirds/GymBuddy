# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('budfinder', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='studentdaypreference',
            name='w_day',
            field=models.CharField(max_length=9, verbose_name=b'Days', choices=[(b'Monday', b'Monday'), (b'Tuesday', b'Tuesday'), (b'Wednesday', b'Wednesday'), (b'Thursday', b'Thursday'), (b'Friday', b'Friday'), (b'Saturday', b'Saturday'), (b'Sunday', b'Sunday')]),
        ),
    ]
