from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from register.models import Facility, Person, Enrollment, Island, District
from reportinput.models import Student, Report
from django.db.models import Q
from django import forms
import datetime
import csv
# Create your views here.


@login_required
def reportsbydate(request):
    p = Person.objects.get(pk = request.session['personpk'])
    try:
        r = Report.objects.filter(facility_id=p.facility_id)
    except (Report.DoesNotExist):
        return render(request, 'reportviewing/reportsbydate.html',{'error_message': "No reports for this facility",})
    return render(request,'reportviewing/reportsbydate.html',{'reports':r,})

@login_required
def schoolreport(request, report_id):
    r = Report.objects.get(pk = report_id)
    s = Student.objects.filter(report_id=r.pk)
    filterobject = s[0]
    if request.method == 'POST':
        if filterobject.enrollment_id == 1:
            return HttpResponseRedirect(reverse('reportviewing:csva', args=(r.pk,)))
        else:
            return HttpResponseRedirect(reverse('reportviewing:csvb', args=(r.pk,)))
    return render(request, 'reportviewing/schoolreport.html', {'students':s,})

@login_required
def createschoolcsva(request, report_id):
    r = Report.objects.get(pk = report_id)
    students = Student.objects.filter(report_id=r.pk)
    f = Facility.objects.get(pk = r.facility_id)

    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="prekmaster.csv"'

    writer = csv.writer(response)
    writer.writerow([f.name,
                     'Report ID:',
                     r.id,
                     datetime.datetime.today()])
    writer.writerow(['Student ID',
                     'Name',
                     'Date of Birth',
                     'Age',
                     'No Shot Record',
                     'Medically Exempt',
                     'Religiously Exempt',
                     'Dtap 1',
                     'Dtap 2',
                     'Dtap 3',
                     'Dtap 4',
                     'Polio 1',
                     'Polio 2',
                     'Polio 3',
                     'Hib',
                     'HepB 1',
                     'HepB 2',
                     'HepB 3',
                     'MMR 1',
                     'Varicella 1',
                     'PE',
                     'TB',
                     'Notes'])
    for student in students:
        name = ''
        if student.mname == '':
            name = '{} {}'.format(student.fname, student.lname)
        else:
            name = '{} {} {}'.format(student.fname, student.mname, student.lname)
        writer.writerow([student.id,
                         name,
                         student.age,
                         student.enrollment,
                         student.noshotrecord,
                         student.exempt_med,
                         student.exempt_rel,
                         student.dtap1,
                         student.dtap2,
                         student.dtap3,
                         student.dtap4,
                         student.polio1,
                         student.polio2,
                         student.polio3,
                         student.hib,
                         student.hepb1,
                         student.hepb2,
                         student.hepb3,
                         student.mmr1,
                         student.varicella1,
                         student.pe,
                         student.tb,
                         student.notes])


    return response

def createschoolcsvb(request, report_id):
    r = Report.objects.get(pk = report_id)
    students = Student.objects.filter(report_id=r.pk)
    f = Facility.objects.get(pk = r.facility_id)

    students = Student.objects.exclude(enrollment_id = 1).order_by('facility')

    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="gradeschoolmaster.csv"'

    writer = csv.writer(response)
    writer.writerow([f.name,
                     'Report ID:',
                     r.id,
                     datetime.datetime.today()])
    writer.writerow(['Student ID',
                     'Name',
                     'Date of Birth',
                     'Grade',
                     'No Shot Record',
                     'Medically Exempt',
                     'Religiously Exempt',
                     'Dtap 1',
                     'Dtap 2',
                     'Dtap 3',
                     'Dtap 4',
                     'Dtap 5',
                     'Polio 1',
                     'Polio 2',
                     'Polio 3',
                     'Polio 4',
                     'HepB 1',
                     'HepB 2',
                     'HepB 3',
                     'MMR 1',
                     'MMR 2',
                     'Varicella 1',
                     'Varicella 2',
                     'PE',
                     'TB',
                     'Notes'])
    for student in students:
        name = ''
        if student.mname == '':
            name = '{} {}'.format(student.fname, student.lname)
        else:
            name = '{} {} {}'.format(student.fname, student.mname, student.lname)
        writer.writerow([student.id,
                         name,
                         student.dateofbirth,
                         student.enrollment,
                         student.noshotrecord,
                         student.exempt_med,
                         student.exempt_rel,
                         student.dtap1,
                         student.dtap2,
                         student.dtap3,
                         student.dtap4,
                         student.dtap5,
                         student.polio1,
                         student.polio2,
                         student.polio3,
                         student.polio4,
                         student.hepb1,
                         student.hepb2,
                         student.hepb3,
                         student.mmr1,
                         student.mmr2,
                         student.varicella1,
                         student.varicella2,
                         student.pe,
                         student.tb,
                         student.notes])
    return response

def createmasterlist12a(request):
    students = Student.objects.filter(enrollment_id = 1).order_by('facility')

    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="prekmaster.csv"'

    writer = csv.writer(response)
    writer.writerow(['Student ID',
                     'Name',
                     'Date of Birth',
                     'School',
                     'Age',
                     'No Shot Record',
                     'Medically Exempt',
                     'Religiously Exempt',
                     'Dtap 1',
                     'Dtap 2',
                     'Dtap 3',
                     'Dtap 4',
                     'Polio 1',
                     'Polio 2',
                     'Polio 3',
                     'Hib',
                     'HepB 1',
                     'HepB 2',
                     'HepB 3',
                     'MMR 1',
                     'Varicella 1',
                     'PE',
                     'TB',
                     'Notes'])
    for student in students:
        name = ''
        if student.mname == '':
            name = '{} {}'.format(student.fname, student.lname)
        else:
            name = '{} {} {}'.format(student.fname, student.mname, student.lname)
        writer.writerow([student.id,
                         name,
                         student.age,
                         student.facility,
                         student.enrollment,
                         student.noshotrecord,
                         student.exempt_med,
                         student.exempt_rel,
                         student.dtap1,
                         student.dtap2,
                         student.dtap3,
                         student.dtap4,
                         student.polio1,
                         student.polio2,
                         student.polio3,
                         student.hib,
                         student.hepb1,
                         student.hepb2,
                         student.hepb3,
                         student.mmr1,
                         student.varicella1,
                         student.pe,
                         student.tb,
                         student.notes])
    return response

def createmasterlist12b(request):
    students = Student.objects.exclude(enrollment_id = 1).order_by('facility')

    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="gradeschoolmaster.csv"'

    writer = csv.writer(response)
    writer.writerow(['Student ID',
                     'Name',
                     'Date of Birth',
                     'School',
                     'Grade',
                     'No Shot Record',
                     'Medically Exempt',
                     'Religiously Exempt',
                     'Dtap 1',
                     'Dtap 2',
                     'Dtap 3',
                     'Dtap 4',
                     'Dtap 5',
                     'Polio 1',
                     'Polio 2',
                     'Polio 3',
                     'Polio 4',
                     'HepB 1',
                     'HepB 2',
                     'HepB 3',
                     'MMR 1',
                     'MMR 2',
                     'Varicella 1',
                     'Varicella 2',
                     'PE',
                     'TB',
                     'Notes'])
    for student in students:
        name = ''
        if student.mname == '':
            name = '{} {}'.format(student.fname, student.lname)
        else:
            name = '{} {} {}'.format(student.fname, student.mname, student.lname)
        writer.writerow([student.id,
                         name,
                         student.dateofbirth,
                         student.facility,
                         student.enrollment,
                         student.noshotrecord,
                         student.exempt_med,
                         student.exempt_rel,
                         student.dtap1,
                         student.dtap2,
                         student.dtap3,
                         student.dtap4,
                         student.dtap5,
                         student.polio1,
                         student.polio2,
                         student.polio3,
                         student.polio4,
                         student.hepb1,
                         student.hepb2,
                         student.hepb3,
                         student.mmr1,
                         student.mmr2,
                         student.varicella1,
                         student.varicella2,
                         student.pe,
                         student.tb,
                         student.notes])
    return response


def listofstudents(request):
    f = Facility.objects.get(pk = request.session['inputid'])
    type = request.session['type']
    s = Student.objects.all()
    if type == 1 and f.pk > 1:
        s = Student.objects.filter(facility_id = f.pk, exempt_med=True).order_by('lname').order_by('fname')
    if type == 2 and f.pk > 1:
        s = Student.objects.filter(facility_id = f.pk, exempt_rel=True).order_by('lname').order_by('fname')
    if type == 3 and f.pk > 1:
        s = Student.objects.filter(facility_id = f.pk).filter(Q(exempt_med=True)| Q(exempt_rel=True)).order_by('lname').order_by('fname')
    if type == 4 and f.pk > 1:
        s = Student.objects.exclude(uptodate = True).filter(facility_id = f.pk)
    return render(request, 'reportviewing/students.html',{'s':s, 'n':type,'f':f})

def studentfilter(request):
    form = StudentFilter()
    person = Person.objects.get(pk = request.session['personpk'])
    if person.role_id == 1:
        students = Student.objects.all()
    else:
        students = Student.objects.filter(facility_id=person.facility_id)

    if request.session['lname'] != 'all':
        if person.role_id == 1:
            students = Student.objects.filter(lname__icontains=request.session['lname'])
        else:
            students = Student.objects.filter(facility_id = person.facility_id).filter(lname__icontains=request.session['lname'])

    if request.method=='POST':
        form = StudentFilter(request.POST)
        if form.is_valid():
            if form.cleaned_data['lname'] is None:
                request.session['lname'] = 'all'
            else:
                request.session['lname'] = form.cleaned_data['lname']
        return HttpResponseRedirect(reverse('reportviewing:studentfilter'))
    return render(request, 'reportviewing/studentlist.html', {'students':students,'form':form,})

def epi12apdf(request):
    file = open('static/login/EPI12A.pdf', 'rb')
    content = file.read()
    file.close()
    response = HttpResponse(content, content_type ='application/pdf')
    response['Content-Disposition'] = 'attachment; filename = "epi12a.pdf"'
    return response

def epi12bpdf(request):
    file = open('static/login/EPI12B.pdf', 'rb')
    content = file.read()
    file.close()
    response = HttpResponse(content, content_type ='application/pdf')
    response['Content-Disposition'] = 'attachment; filename = "epi12b.pdf"'
    return response
class StudentFilter(forms.Form):

    lname = forms.CharField(max_length=50, required=False)