from NutVi import views
from django.conf.urls import url


app_name ='NutVi'

urlpatterns=[
    url(r'^index/', views.index, name="index")

]