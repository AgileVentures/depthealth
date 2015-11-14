from django.conf.urls import patterns, include, url

from . import views

urlpatterns = [
    url(r'facilityinput',views.facility, name='facilityinput'),
    url(r'createuser', views.createuser,name='createuser'),
]