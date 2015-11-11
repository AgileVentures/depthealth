from __future__ import unicode_literals
from django.db import models

# Create your models here.
class District(models.Model):
    id = models.BigIntegerField(primary_key=True, unique=True)
    name = models.CharField(max_length=50)
    island = models.ForeignKey('Island', blank=True,null=True)
    class Meta:
        db_table = 'district'

class Island(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    class Meta:
        db_table = 'island'

class Person(models.Model):
    id = models.AutoField(primary_key=True, unique=True)
    fname = models.CharField(max_length=50)
    mname = models.CharField(max_length=50, null=True, blank=True)
    lname = models.CharField(max_length=50)
    phone = models.BigIntegerField()
    fax = models.BigIntegerField(null=True, blank=True)
    title = models.CharField(max_length=50, null=True, blank=True)
    facility = models.ForeignKey('Facility', blank=True,null=True)
    email = models.ForeignKey('User')
    role = models.ForeignKey('Role')
    class Meta:
        db_table = 'person'

class User(models.Model):
    username = models.CharField(primary_key=True, unique=True, max_length=255)
    password = models.CharField(max_length=20)
    class Meta:
        db_table = 'user'

class Role(models.Model):
    id = models.AutoField(primary_key=True, unique=True)
    name = models.CharField(max_length=50)
    class Meta:
        db_table = 'role'

class Facility(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    street = models.CharField(max_length=100)
    zip = models.IntegerField()
    city = models.CharField(max_length=100)
    has_pre_k = models.BooleanField(default=0)
    is_only_pre_k = models.BooleanField(default=0)
    phone = models.BigIntegerField()
    fax = models.BigIntegerField(null=True, blank=True)
    email = models.CharField(max_length=255,blank=True,null=True)
    district = models.ForeignKey('District',blank=True,null=True)
    under_19_months = models.IntegerField(default=0, null=True, blank=True)
    over_19_months = models.IntegerField(default = 0, null=True, blank=True)
    total_prek = models.IntegerField(default=0,null=True, blank=True)
    lowest_grade = models.ForeignKey('Enrollment', null=True, blank=True)
    highest_grade = models.ForeignKey('Enrollment',null=True, blank=True)
    kinder_enroll = models.IntegerField(default=0 ,null=True,blank=True)
    other_enroll = models.IntegerField(default=0, null=True, blank=True)
    total_enrolled = models.IntegerField(default=0, null=True, blank=True)
    allimmune = models.BooleanField(default=0)

    class Meta:
        db_table = 'facility'

class Enrollment(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)

    class Meta:
        db_table = 'enrollment'