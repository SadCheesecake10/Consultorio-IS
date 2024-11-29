from django.shortcuts import render, redirect
from django.http import HttpResponse

# Create your views here.
def login(request):
    if request.method == 'GET':
        return render(request, 'login.html')
    else:
        try:
            return redirect('home')
        except:
            return render(request, 'login.html', {
                'error': 'Invalid username or password'
                })