from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from .forms import CreateFacility, CreateUser, Username
from .models import  Facility, District, Role, User, Person

# Create your views here.

def facility(request):
    if request.method =='POST':
        form = CreateFacility(request.POST)
        if form.is_valid():
            name = form.cleaned_data['name']
            street = form.cleaned_data['street']
            zip = form.cleaned_data['zip']
            city = form.cleaned_data['city']
            has_pre_k = form.cleaned_data['has_pre_k']
            is_only_pre_k = form.cleaned_data['is_only_pre_k']
            phone = form.cleaned_data['phone']
            fax = form.cleaned_data['fax']
            email = form.cleaned_data['email']
            district = District.objects.get(name = form.cleaned_data['district'])
            f = Facility(name=name,street=street,zip=zip,city=city,has_pre_k=has_pre_k,is_only_pre_k=is_only_pre_k, phone=phone, fax=fax,email=email)
            f.district_id = district.pk
            f.save()
            return HttpResponseRedirect('')
    else:
        form = CreateFacility()
    return render(request,'register/facilityinput.html',{'form':form,})

def username(request):
    if request.method == 'POST':
        form = Username(request.POST)
        if form.is_valid():
            if form.cleaned_data['password1'] == form.cleaned_data['password2']:
                u = User(username=form.cleaned_data['user'], password=form.cleaned_data['password1'])
                u.save()
                request.session['user'] = u.pk
                return HttpResponseRedirect(reverse('createuser'))
    else:
        form = Username()
    return render(request, 'register/user.html',{'form':form,})



def createuser(request):
    u = request.session['user']
    request.session['user'] = u
    if request.method =='POST':
        form = CreateUser(request.POST)
        if form.is_valid():
            fac = Facility.objects.get(name = form.cleaned_data['facility'])
            fname = form.cleaned_data['fname']
            mname = form.cleaned_data['mname']
            lname = form.cleaned_data['lname']
            phone = form.cleaned_data['phone']
            fax = form.cleaned_data['fax']
            title = form.cleaned_data['title']
            role = Role.objects.get(name = form.cleaned_data['role'])
            p = Person(fname=fname, mname=mname, lname=lname, phone=phone,fax=fax,title=title)
            p.email_id = User.objects.get(pk = u)
            p.facility_id=fac.pk
            p.role_id=role.pk
            p.save()
            return HttpResponseRedirect(reverse('login'))
    else:
        form = CreateUser()
    return render(request, 'register/createuser.html', {'form':form,})