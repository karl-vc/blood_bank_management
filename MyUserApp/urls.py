from MyUserApp import views
from django.conf.urls import url

app_name='MyUserApp'


urlpatterns=[
    url(r'^home/',views.home,name="home")


]