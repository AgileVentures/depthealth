from __future__ import unicode_literals
from django import forms
from register.models import User, Person
from django.forms import PasswordInput
class Login(forms.Form):
    username = forms.CharField(max_length=255)
    password = forms.CharField(widget=PasswordInput(), max_length=50)

    class Meta:
        model = User

class ResetPassword(forms.Form):
    username = forms.CharField(max_length=255)
    old_password = forms.CharField(max_length=50)
    new_password1 = forms.CharField(max_length=50)
    new_password2 = forms.CharField(max_length=50)

    class Meta:
        model = User