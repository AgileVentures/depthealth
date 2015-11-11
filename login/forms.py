from __future__ import unicode_literals
from django import forms
from register.models import User

class Login(forms.Form):
    username = forms.CharField(max_length=255)
    password = forms.CharField(max_length=50)

    class Meta:
        model = User