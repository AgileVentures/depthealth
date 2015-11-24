from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from register.models import Facility, Person, Enrollment, Island, District
from reportinput.models import Student, Report
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

def islandfilter(request):
    islands = Island.objects.all()
    return render(request, 'reportviewing/islandfilter.html', {'islands':islands,})

def districtfilter(request, island_id):
    if island_id != 1:
        districts = District.objects.filter(island_id=island_id)
    else:
        districts = District.objects.all()
    return render(request, 'reportviewing/districtfilter.html', {'districts':districts,})

def schoolfilter(request, district_id):
    schools = Facility.objects.filter(district_id=district_id)
    return render(request, 'reportviewing/schoolfilter.html',{'schools':schools,})

def dohreport(request, facility_id):
    reports = Report.objects.filter(facility_id = facility_id)