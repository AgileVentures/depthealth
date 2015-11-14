from __future__ import unicode_literals
from django import forms
from .models import Facility, Person, Role, Island, District, User

class CreateFacility(forms.Form):
    name = forms.CharField(max_length=100)
    street = forms.CharField(max_length=100)
    zip = forms.IntegerField(max_value=99999)
    city = forms.CharField(max_length=100)
    has_pre_k = forms.BooleanField(required=False)
    is_only_pre_k = forms.BooleanField(required=False)
    phone = forms.IntegerField(max_value=9999999999)
    fax = forms.IntegerField(max_value=9999999999, required=False)
    email = forms.CharField(max_length=255, required=False)
    island = forms.ModelChoiceField(Island.objects.all())
    district = forms.ModelChoiceField(District.objects.all())

    class Meta:
        model = Facility

class CreateUser(forms.Form):
    email = forms.CharField(max_length=255)
    password = forms.CharField(max_length=20)
    password2 = forms.CharField(max_length=20)
    fname = forms.CharField(max_length=50)
    mname = forms.CharField(max_length=50, required=False)
    lname = forms.CharField(max_length=50)
    phone = forms.IntegerField(max_value=9999999999)
    fax = forms.IntegerField(max_value=9999999999, required=False)
    title = forms.CharField(max_length=50, required=False)
    facility = forms.ModelChoiceField(Facility.objects.all())
    role = forms.ModelChoiceField(Role.objects.all())
    class Meta:
        model = Person
