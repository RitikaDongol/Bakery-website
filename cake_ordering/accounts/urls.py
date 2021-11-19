from django.urls import path
from . import views


urlpatterns = [
    path('', views.homepage),
    path('login', views.login_user, name='login'),
    path('register', views.register_user, name='register'),
    path('logout', views.logout_user, name='logout'),
    path('profile', views.profile, name='profile'),
    path('password_change', views.change_password, name='change'),

]