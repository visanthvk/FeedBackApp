from django.shortcuts import render
from Login.models import login
# Create your views here.
def index(request):
    return render(request,'register/index.html')