from django.db import models

# Create your models here. database table

class contact(models.Model):
    name= models.CharField(max_length=122)
    email= models.CharField(max_length=122)
    phone= models.CharField(max_length=15)
    message=models.CharField(max_length=500)

    def __str__(self):
        return self.name



