from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.forms import formset_factory
from django.core.urlresolvers import reverse
from .models import Student, Report
from register.models import Person, Facility, Enrollment
from .forms import StudentForm12A, StudentForm12B, SchoolInfo, PreKInfo
import datetime
# Create your views here.

def epi12a(request):
    formset = formset_factory(StudentForm12A, extra=request.session['students'])
    if request.method =='POST':
        formset = formset(request.POST, request.FILES)
        p = Person.objects.get(pk = request.session['personpk'])
        f = Facility.objects.get(pk = p.facility_id)
        count = f.count
        f.count = request.session['students'] + count
        f.save(update_fields=['count'])
        r = Report(person_id=p.pk, facility_id=p.facility_id,entrydate=datetime.datetime.today())
        r.save()
        for form in formset:
            if form.is_valid():
                id = f.district_id * 10000000000
                id += (f.pk*1000000)
                id += count
                s = Student(id = id)
                s.fname = form.cleaned_data['fname']
                s.mname = form.cleaned_data['mname']
                s.lname = form.cleaned_data['lname']
                s.dateofbirth = form.cleaned_data['dateofbirth']
                s.age = form.cleaned_data['age']
                s.entry_date = form.cleaned_data['entrydate']
                s.noshotrecord = form.cleaned_data['noshotrecord']
                s.exempt_rel = form.cleaned_data['exempt_rel']
                s.exempt_med = form.cleaned_data['exempt_med']
                s.dtap1 = form.cleaned_data['dtap1']
                s.dtap2 = form.cleaned_data['dtap2']
                s.dtap3 = form.cleaned_data['dtap3']
                s.dtap4 = form.cleaned_data['dtap4']
                s.polio1 = form.cleaned_data['polio1']
                s.polio2 = form.cleaned_data['polio2']
                s.polio3 = form.cleaned_data['polio3']
                s.hib = form.cleaned_data['hib']
                s.hepb1 = form.cleaned_data['hepb1']
                s.hepb2 = form.cleaned_data['hepb2']
                s.hepb3 = form.cleaned_data['hepb3']
                s.mmr1 = form.cleaned_data['mmr1']
                s.varicella1 = form.cleaned_data['varicella1']
                s.pe = form.cleaned_data['pe']
                s.tb = form.cleaned_data['tb']
                s.notes = form.cleaned_data['notes']
                s.report_id = r.pk
                count += 1
                s.save()
        return HttpResponseRedirect(reverse('complete'))
    else:
        formset = formset()
    return render(request, 'reportinput/epi12a.html',{'formset':formset,})

def epi12b(request):
    formset = formset_factory(StudentForm12B, extra=request.session['students'])
    if request.method =='POST':
        p = Person.objects.get(pk = request.session['personpk'])
        f = Facility.objects.get(pk = p.facility_id)
        count = f.count
        f.count = request.session['students'] + count
        f.save(update_fields=['count'])
        r = Report(person_id=p.pk, facility_id=p.facility_id,entrydate=datetime.datetime.today())
        r.save()
        formset = formset(request.POST, request.FILES)
        for form in formset:
            if form.is_valid():
                grade = Enrollment.objects.get(name= form.cleaned_data['grade'])
                id = f.district_id * 10000000000
                id += (f.pk*1000000)
                id += count
                s = Student(id = id)
                s.fname = form.cleaned_data['fname']
                s.mname = form.cleaned_data['mname']
                s.lname = form.cleaned_data['lname']
                s.dateofbirth = form.cleaned_data['dateofbirth']
                s.enrollment_id = grade.pk
                s.entry_date = form.cleaned_data['entrydate']
                s.noshotrecord = form.cleaned_data['noshotrecord']
                s.exempt_rel = form.cleaned_data['exempt_rel']
                s.exempt_med = form.cleaned_data['exempt_med']
                s.dtap1 = form.cleaned_data['dtap1']
                s.dtap2 = form.cleaned_data['dtap2']
                s.dtap3 = form.cleaned_data['dtap3']
                s.dtap4 = form.cleaned_data['dtap4']
                s.dtap5 = form.cleaned_data['dtap5']
                s.polio1 = form.cleaned_data['polio1']
                s.polio2 = form.cleaned_data['polio2']
                s.polio3 = form.cleaned_data['polio3']
                s.polio4 = form.cleaned_data['polio4']
                s.hepb1 = form.cleaned_data['hepb1']
                s.hepb2 = form.cleaned_data['hepb2']
                s.hepb3 = form.cleaned_data['hepb3']
                s.mmr1 = form.cleaned_data['mmr1']
                s.mmr2 = form.cleaned_data['mmr2']
                s.varicella1 = form.cleaned_data['varicella1']
                s.varicella2 =form.cleaned_data['varicella2']
                s.pe = form.cleaned_data['pe']
                s.tb = form.cleaned_data['tb']
                s.notes = form.cleaned_data['notes']
                s.report_id = r.pk
                count += 1
                s.save()
        return HttpResponseRedirect(reverse('complete'))

    else:
        formset = formset()
    return render(request, 'reportinput/epi12b.html',{'formset':formset,})

def landing12a(request):
    personid = request.session['personpk']
    p = Person.objects.get(pk = personid)
    f = Facility.objects.get(pk = p.facility_id)
    if request.method == 'POST':
        form = PreKInfo(request.POST)
        if form.is_valid():
            f.under_19_months = form.cleaned_data['under19']
            f.over_19_months = form.cleaned_data['over19']
            f.total_prek = form.cleaned_data['under19'] + form.cleaned_data['over19']
            if form.cleaned_data['students'] == 0:
                if f.is_only_pre_k:
                    f.allimmune = True
                f.save()
                return HttpResponseRedirect(reverse('complete'))
            else:
                f.allimmune = False
                f.save()
                request.session['students'] = form.cleaned_data['students']
                return HttpResponseRedirect(reverse('epi12a'))
    else:
        form = PreKInfo()
    return  render(request,'reportinput/landing12a.html',{'form':form})

def landing12b(request):
    personid = request.session['personpk']
    p = Person.objects.get(pk = personid)
    f = Facility.objects.get(pk = p.facility_id)
    if request.method == 'POST':
        form = SchoolInfo(request.POST)
        if form.is_valid():
            kinder_enroll = form.cleaned_data['kinder_enroll']
            lowest_grade = Enrollment.objects.get(name = form.cleaned_data['lowest_grade'])
            highest_grade = Enrollment.objects.get(name = form.cleaned_data['highest_grade'])
            other_enroll = form.cleaned_data['other_enroll']
            students = form.cleaned_data['students_to_input']
            f.kinder_enroll = kinder_enroll
            f.lowest_grade_id = lowest_grade.pk
            f.highest_grade_id = highest_grade.pk
            f.other_enroll = other_enroll
            f.total_enrolled = other_enroll + kinder_enroll
            if students == 0:
                f.allimmune = True
                f.save()
                return HttpResponseRedirect(reverse('complete'))
            else:
                f.allimmune = False
                f.save()
                request.session['students'] = students
                return HttpResponseRedirect(reverse('epi12b'))
    else:
        form = SchoolInfo()
    return  render(request,'reportinput/landing12b.html',{'form':form})

def complete(request):
    return render(request, 'reportinput/complete.html')

