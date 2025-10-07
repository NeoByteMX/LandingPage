from django.db import models

# Create your models here.
class Project(models.Model):
    title = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField()
    ceated = models.DateField(auto_now_add=True)
    updated = models.DateField(auto_now=True)