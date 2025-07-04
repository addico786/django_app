from django.shortcuts import render, HttpResponse
from .models import contact

# Create your views here.

def index(request):
    if request.method == "POST":
        name = request.POST.get('name')
        email = request.POST.get('email')
        phone = request.POST.get('phone')
        message = request.POST.get('message')
        contact_entry = contact(name=name, email=email, phone=phone, message=message)
        contact_entry.save()
        # Optional: Add a success message to show in the template
        return render(request, "index.html", {"success": True})
    return render(request, "index.html")
