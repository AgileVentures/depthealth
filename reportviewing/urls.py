from django.conf.urls import patterns, include, url

from . import views

urlpatterns =[
    url(r'reportsbydate',views.reportsbydate,name='date'),
    url(r'^(?P<report_id>[0-9]+)/$',views.schoolreport,name='schoolreport'),
    url(r'^(?P<report_id>[0-9]+)/csv', views.createschoolcsv, name='csv'),
    url(r'^students', views.listofstudents, name='students')
]