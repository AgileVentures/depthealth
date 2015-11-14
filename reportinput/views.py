from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.forms import formset_factory
from .models import Student
from .forms import StudentForm12A, StudentForm12B
# Create your views here.

def epi12a(request):
    formset = formset_factory(StudentForm12A)
    if request.method =='POST':
        formset = formset(request.POST, request.FILES)
        for form in formset:
            if form.is_valid():
                form.save()
    else:
        formset = formset()
    return render(request, 'reportinput/epi12a.html',{'formset':formset,})

def epi12b(request):
    formset = formset_factory(StudentForm12B)
    if request.method =='POST':
        formset = formset(request.POST, request.FILES)
        for form in formset:
            if form.is_valid():
                form.save()
    else:
        formset = formset()
    return render(request, 'reportinput/epi12b.html',{'formset':formset,})