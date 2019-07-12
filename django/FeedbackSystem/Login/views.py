from django.shortcuts import render
from .models import login
# Create your views here.
def index(request):
    cus = login.objects.all()
    id = request.POST.get("id")
    password = request.POST.get("password")
    for c in cus:
        if(c.email==email and c.password == password and c.types=="customer"):
            return redirect('/customer/'+request.POST['name'])  
        elif(c.email==email and c.password == password and c.types=="company"):
            return redirect('/company/'+request.POST['name'])
    return render(request,'Login/index.html')