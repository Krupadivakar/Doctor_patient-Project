from django.forms import ModelForm,Textarea
from django.db import models

# Create your models here.
class doctor(models.Model):
	doctor_name=CharField(max_length=50)
	specialization=CharField(max_length=100)
	doctor_id=models.AutoField(primary_key=True,1000)
	email=models.EmailField(max_length=50)
	pwd=CharField(max_length=10)
	class Meta:
		db_table="doctor"