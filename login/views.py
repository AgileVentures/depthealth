from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from .forms import Login, ResetPassword
from register.models import User as u, Person, Facility

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
                    if(person.facility_id > 0):
                        f = Facility.objects.get(pk = person.facility_id)
                        request.session['hasprek'] = f.has_pre_k
                        request.session['onlyprk'] = f.is_only_pre_k
                    return render(request,'login/landingpage.html', {'p':person})
            except u.DoesNotExist:
                HttpResponseRedirect('')

    else:
        form = Login()
    return render(request,'login/login.html',{'form':form,})

@login_required
def landingpage(request):

    return render(request,'login/landingpage.html')

def resetpassword(request):
    form = ResetPassword()
    if request.method == 'POST':
        form = ResetPassword(request.POST)
        if form.is_valid():
            user = User.objects.get(pk = form.cleaned_data['username'])
            if user.password == form.cleaned_data['old_password']:
                if form.cleaned_data['new_password1'] == form.cleaned_data['new_password1']:
                    user.password = form.cleaned_data['new_password2']
                    user.save()
                    return render(request, 'login/login.html',{'form':Login(),})
    return render(request, 'login/reset.html', {'form':form,})

def logout_view(request):
    logout(request)
    return render(request,'login/login.html',{'form':Login()})
