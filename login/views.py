from django.shortcuts import render
from django.http import HttpResponseRedirect, HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from .forms import Login, ResetPassword
from register.models import User as u, Person, Facility
import reportinput

# Create your views here.
def loginscreen(request):
    if request.method == 'POST':
        form = Login(request.POST)
        if form.is_valid():
            try:
                username = u.objects.get(pk=form.cleaned_data['username'])
                person = Person.objects.get(email=username.username)
                user = authenticate(username=username, password = form.cleaned_data['password'])
                if user.is_active:
                    login(request, user)
                    request.session['personpk'] = person.pk
                    request.session['role'] = person.role_id
                    request.session['fac'] = person.facility_id
                    if person.role_id == 1:
                        request.session['schoolfilter'] = 'all'
                        request.session['island'] = 'all'
                        request.session['district'] = 'all'
                    if(person.facility_id > 0):
                        f = Facility.objects.get(pk = person.facility_id)
                        request.session['hasprek'] = f.has_pre_k
                        request.session['onlyprk'] = f.is_only_pre_k
                    request.session['lname'] = 'all'
                    request.session['ulname'] = 'all'
                    if person.verified:
                        return render(request,'login/landingpage.html', {'p':person})
            except u.DoesNotExist:
                HttpResponseRedirect('')

    else:
        form = Login()
    return render(request,'login/login.html',{'form':form,})

@login_required
def landingpage(request):
    p = Person.objects.get(pk = request.session['personpk'])
    return render(request,'login/landingpage.html', {'p':p,})

def resetpassword(request):
    form = ResetPassword()
    if request.method == 'POST':
        form = ResetPassword(request.POST)
        if form.is_valid():
            user = u.objects.get(pk = form.cleaned_data['username'])
            if user.password == form.cleaned_data['old_password']:
                if form.cleaned_data['new_password1'] == form.cleaned_data['new_password1']:
                    user.password = form.cleaned_data['new_password2']
                    user.save()
                    return render(request, 'login/login.html',{'form':Login(),})
    return render(request, 'login/reset.html', {'form':form,})

def logout_view(request):
    logout(request)
    return render(request,'login/login.html',{'form':Login()})
