from django import forms
from doctorApp.models import Doctor 
class DoctorForm(forms.ModelForm):
	class Meta:
		model=Doctor
		fields="__all__"