# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='GymCourse',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('c_name', models.CharField(max_length=30, verbose_name=b'Gym Courses')),
                ('c_num', models.CharField(max_length=30, verbose_name=b'Course Number')),
                ('c_rating', models.CharField(max_length=20, verbose_name=b'Course Rating')),
                ('c_description', models.TextField(help_text=b"If omitted, the description will be the post's title.", verbose_name=b'Course Description', blank=True)),
                ('slug', models.SlugField(editable=False, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='GymCourseTime',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('c_day', models.CharField(max_length=2, verbose_name=b'Day of Course', choices=[(b'M', b'Monday'), (b'T', b'Tuesday'), (b'W', b'Wednesday'), (b'Th', b'Thursday'), (b'F', b'Friday'), (b'Sa', b'Saturday'), (b'Su', b'Sunday')])),
                ('c_time', models.TimeField(verbose_name=b'Time of Course')),
                ('course', models.ForeignKey(to='budfinder.GymCourse')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('u_name', models.CharField(max_length=20, verbose_name=b'UserName')),
                ('f_name', models.CharField(max_length=20, verbose_name=b'First Name')),
                ('l_name', models.CharField(max_length=20, verbose_name=b'Last Name')),
                ('email', models.CharField(max_length=20, verbose_name=b'Email')),
                ('paswd', models.CharField(max_length=20, verbose_name=b'Password')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='StudentDayPreference',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('w_day', models.CharField(max_length=2, verbose_name=b'Days', choices=[(b'M', b'Monday'), (b'T', b'Tuesday'), (b'W', b'Wednesday'), (b'Th', b'Thursday'), (b'F', b'Friday'), (b'Sa', b'Saturday'), (b'Su', b'Sunday')])),
                ('student', models.ForeignKey(to='budfinder.Student')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
