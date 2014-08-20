# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('budfinder', '0002_auto_20140820_1619'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='studentdaypreference',
            name='w_day',
        ),
        migrations.AddField(
            model_name='studentdaypreference',
            name='fri',
            field=models.BooleanField(default=True, verbose_name=b'Friday'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='studentdaypreference',
            name='mon',
            field=models.BooleanField(default=True, verbose_name=b'Monday'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='studentdaypreference',
            name='sat',
            field=models.BooleanField(default=True, verbose_name=b'Saturday'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='studentdaypreference',
            name='sun',
            field=models.BooleanField(default=True, verbose_name=b'Sunday'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='studentdaypreference',
            name='thu',
            field=models.BooleanField(default=True, verbose_name=b'Thursday'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='studentdaypreference',
            name='tue',
            field=models.BooleanField(default=True, verbose_name=b'Tuesday'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='studentdaypreference',
            name='wed',
            field=models.BooleanField(default=True, verbose_name=b'Wednesday'),
            preserve_default=True,
        ),
    ]
