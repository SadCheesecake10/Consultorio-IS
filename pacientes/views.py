from django.shortcuts import render

# Create your views here.
def home_paciente(request):
    return render(request, 'home.html')

def citas_paciente(request):
    return render(request, 'citas.html')