from django.conf.urls import patterns, include, url

from . import views

urlpatterns =[
    url(r'masterdetail', views.masterdetailview, name='master'),
    url(r'reportsbydate',views.reportsbydate,name='date'),
    url(r'^(?P<report_id>[0-9]+)/$',views.schoolreport,name='schoolreport'),
    url(r'^(?P<report_id>[0-9]+)/csva', views.createschoolcsva, name='csva'),
    url(r'^(?P<report_id>[0-9]+)/csvb', views.createschoolcsvb, name='csvb'),
    url(r'master12b', views.createmasterlist12b, name='master12b'),
    url(r'master12a', views.createmasterlist12a, name='master12a'),
    url(r'^students', views.listofstudents, name='students'),
    url(r'^studentfilter',views.studentfilter, name='studentfilter'),
    url(r'12apdf', views.epi12apdf, name='epi12apdf'),
    url(r'12bpdf', views.epi12bpdf, name='epi12bpdf')
]