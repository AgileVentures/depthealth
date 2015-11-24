from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from .forms import Request
from .models import Supportrequest
from register.models import Person
import datetime
# Create your views here.

def createrequest(request):
    if request.method == 'POST':
        form = Request(request.POST)
        if form.is_valid():
            desc = form.cleaned_data['description']
            sr = Supportrequest(person_id=request.session['personpk'],status_id=1,description=desc, opendate=datetime.datetime.today())
            sr.save()
            return render(request, 'support/opentickets.html')
    else:
        form = Request()
    return render(request, 'support/createsupport.html', {'form':form,})

def viewrequests(request):
    p = Person.objects.get(pk=request.session['personpk'])
    if p.facility_id == 1:
        tickets = Supportrequest.objects.exclude(status_id=3)
        return render(request,'support/opentickets.html', {'tickets':tickets,})
    else:
        tickets = Supportrequest.objects.filter(person_id=p.pk)
        return render(request,'support/opentickets.html',{'tickets':tickets})