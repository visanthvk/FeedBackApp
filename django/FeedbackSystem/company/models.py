from django.db import models

# Create your models here.
class Customers(models.Model):
    cid = models.CharField(max_length=15,primary_key=True)
    name = models.CharField(max_length=15)