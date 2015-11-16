from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from .forms import Login
from register.models import User, Person, Facility
# Create your views here.
def loginscreen(request):
    if request.method == 'POST':
        form = Login(request.POST)
        if form.is_valid():
            try:
                user = User.objects.get(pk=form.cleaned_data['username'])
                person = Person.objects.get(email=user.username)
                if user.password == form.cleaned_data['password']:
                    request.session['personpk'] = person.pk
                    request.session['role'] = person.role_id
                    if(person.facility_id > 0):
                        f = Facility.objects.get(pk = person.facility_id)
                        request.session['hasprek'] = f.has_pre_k
                        request.session['onlyprk'] = f.is_only_pre_k
                    return render(request,'login/landingpage.html')
            except User.DoesNotExist:
                HttpResponseRedirect('')

    else:
        form = Login()
    return render(request,'login/login.html',{'form':form,})

def landingpage(request):

    return render(request,'login/landingpage.html')
