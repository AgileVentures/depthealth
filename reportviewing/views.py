from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from register.models import Facility, Person, Enrollment, Island, District
from reportinput.models import Student, Report
from django.db.models import Q
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
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('reportviewing:csv', args=(r.pk,)))
    return render(request, 'reportviewing/schoolreport.html', {'students':s,})

@login_required
def createschoolcsv(request, report_id):
    r = Report.objects.get(pk = report_id)
    students = Student.objects.filter(report_id=r.pk)
    f = Facility.objects.get(pk = r.facility_id)

    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="report.csv"'

    writer = csv.writer(response)
    writer.writerow(['Name', 'Date of Birth', 'Grade','No Shot Record','Medical Exempt','Religious Exempt', 'Student ID', 'School'])
    for student in students:
        name = ''
        if student.mname == '':
            name = '{} {}'.format(student.fname, student.lname)
        else:
            name = '{} {} {}'.format(student.fname, student.mname, student.lname)
        e = Enrollment.objects.get(pk = student.enrollment_id)
        writer.writerow([name,student.dateofbirth,e.name,student.noshotrecord,student.exempt_med,student.exempt_rel, student.id, f.name])

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
    if type == 1 and f.pk > 1:
        s = Student.objects.filter(facility_id = f.pk, exempt_med=True).order_by('lname').order_by('fname')
    if type == 2 and f.pk > 1:
        s = Student.objects.filter(facility_id = f.pk, exempt_rel=True).order_by('lname').order_by('fname')
    if type == 3 and f.pk > 1:
        s = Student.objects.filter(facility_id = f.pk).filter(Q(exempt_med=True)| Q(exempt_rel=True)).order_by('lname').order_by('fname')
    if type == 4 and f.pk > 1:
        s = Student.objects.exclude(uptodate = True).filter(facility_id = f.pk)

    return render(request, 'reportviewing/students.html',{'s':s, 'n':type,'f':f})


