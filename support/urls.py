from django.conf.urls import patterns, include, url

from . import views

urlpatterns = [
    url(r'createticket', views.createrequest, name='create'),
    url(r'openticket', views.viewrequests, name='open')
]