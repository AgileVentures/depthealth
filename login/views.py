from django.shortcuts import render
from django.http import HttpResponseRedirect
from .forms import Login
from register.models import User, Person
# Create your views here.
def loginscreen(request):
    if request.method == 'POST':
        form = Login(request.POST)
        if form.is_valid():
            try:
                user = User.objects.get(pk=form.username)
                person = Person.objects.get(email=user.username)
                if user.password == form.password:
                    request.session['person'] = person
                    return render(request,'login/landingpage.html')
            except User.DoesNotExist:
                HttpResponseRedirect('')

    else:
        form = Login()
    return render(request,'login/login.html',{'form':form,})

def landingpage(request):
    if request.method == 'POST':
        person = request.session.get('person', None)
        request.session['person'] = person
        '''if 'input_data' in request.POST:
            return render(request,'reportinput/studentinput.html')
        elif 'see_reports' in request.POST:
            return  render(request,'reportinput/reports.html')
'''
    else:
        return render(request,'login/landingpage.html')
