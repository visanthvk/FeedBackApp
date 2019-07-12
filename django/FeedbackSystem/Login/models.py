from django.db import models

# Create your models here.
class login(models.Model):
    id = models.CharField(max_length=15,primary_key=True)
    password = models.CharField(max_length=15)
    types = models.CharField(max_length=10)
