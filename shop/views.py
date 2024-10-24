from django.shortcuts import render
from django.contrib.auth.decorators import login_required

# Dashboard View
@login_required
def dashboard(request):
    return render(request, 'shop/dashboard.html')

@login_required
def profile(request):
    return render(request, 'shop/profile.html')
