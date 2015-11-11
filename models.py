# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals

from django.db import models


class Category(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    categoryname = models.CharField(db_column='CategoryName', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'category'


class District(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    districtname = models.CharField(db_column='DistrictName', max_length=20)  # Field name made lowercase.
    islandid = models.ForeignKey('Island', db_column='IslandID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'district'


class Enrollment(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    enrollmentname = models.CharField(db_column='EnrollmentName', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'enrollment'


class Exception(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    exceptionname = models.CharField(db_column='ExceptionName', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'exception'


class Facility(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    districtid = models.ForeignKey(District, db_column='DistrictID', blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=50)  # Field name made lowercase.
    street = models.CharField(db_column='Street', max_length=50)  # Field name made lowercase.
    zip = models.IntegerField(db_column='ZIP')  # Field name made lowercase.
    city = models.CharField(db_column='City', max_length=20)  # Field name made lowercase.
    pre_k_program = models.CharField(db_column='Pre_K_Program', max_length=3)  # Field name made lowercase.
    phone = models.BigIntegerField(db_column='Phone', blank=True, null=True)  # Field name made lowercase.
    fax = models.BigIntegerField(db_column='Fax', blank=True, null=True)  # Field name made lowercase.
    emailaddress = models.CharField(db_column='EMailAddress', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'facility'


class Faq(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    question = models.CharField(db_column='Question', max_length=150)  # Field name made lowercase.
    answer = models.CharField(db_column='Answer', max_length=150)  # Field name made lowercase.
    categoryid = models.ForeignKey(Category, db_column='CategoryID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'faq'


class Island(models.Model):
    id = models.CharField(db_column='ID', primary_key=True, max_length=10)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'island'


class Person(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='FirstName', max_length=20)  # Field name made lowercase.
    middlename = models.CharField(db_column='MiddleName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    lastname = models.CharField(db_column='LastName', max_length=50)  # Field name made lowercase.
    phone = models.BigIntegerField(db_column='Phone')  # Field name made lowercase.
    title = models.CharField(db_column='Title', max_length=10, blank=True, null=True)  # Field name made lowercase.
    fax = models.BigIntegerField(db_column='Fax', blank=True, null=True)  # Field name made lowercase.
    facilityid = models.ForeignKey(Facility, db_column='FacilityID', blank=True, null=True)  # Field name made lowercase.
    email = models.ForeignKey('User', db_column='Email')  # Field name made lowercase.
    roleid = models.ForeignKey('Role', db_column='RoleID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'person'


class Report(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    personid = models.ForeignKey(Person, db_column='PersonID')  # Field name made lowercase.
    reporttypeid = models.ForeignKey('Reporttype', db_column='ReportTypeID')  # Field name made lowercase.
    prepdate = models.DateTimeField(db_column='PrepDate')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'report'


class Reporttype(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    reportname = models.CharField(db_column='ReportName', max_length=10)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'reporttype'


class Role(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    rolename = models.CharField(db_column='RoleName', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'role'


class Status(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    statustype = models.CharField(db_column='StatusType', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'status'


class Student(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='FirstName', max_length=20)  # Field name made lowercase.
    middlename = models.CharField(db_column='MiddleName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    lastname = models.CharField(db_column='LastName', max_length=50)  # Field name made lowercase.
    dateofbirth = models.DateField(db_column='DateOfBirth')  # Field name made lowercase.
    personid = models.ForeignKey(Person, db_column='PersonID')  # Field name made lowercase.
    studententrydate = models.DateField(db_column='StudentEntryDate')  # Field name made lowercase.
    tb_clearance = models.CharField(db_column='TB_Clearance', max_length=3)  # Field name made lowercase.
    enrollmentid = models.ForeignKey(Enrollment, db_column='EnrollmentID')  # Field name made lowercase.
    notes = models.TextField(db_column='Notes', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'student'


class StudentVac(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    studentid = models.ForeignKey(Student, db_column='StudentID')  # Field name made lowercase.
    vaccinationid = models.ForeignKey('Vaccination', db_column='VaccinationID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'student_vac'


class Studentexception(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    studentid = models.ForeignKey(Student, db_column='StudentID')  # Field name made lowercase.
    exceptionid = models.ForeignKey(Exception, db_column='ExceptionID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'studentexception'


class Supportrequest(models.Model):
    id = models.BigIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    personid = models.ForeignKey(Person, db_column='PersonID')  # Field name made lowercase.
    statusid = models.ForeignKey(Status, db_column='StatusID')  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=50)  # Field name made lowercase.
    ticketopendate = models.DateTimeField(db_column='TicketOpenDate')  # Field name made lowercase.
    ticketclosedate = models.DateField(db_column='TicketCloseDate', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'supportrequest'


class User(models.Model):
    username = models.CharField(db_column='Username', primary_key=True, max_length=50)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'user'


class Vaccination(models.Model):
    id = models.CharField(db_column='ID', primary_key=True, max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'vaccination'
