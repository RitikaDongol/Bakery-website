
from django.urls import path, include

urlpatterns = [
    path('cakes/', include('cakes.urls')),
    path('admins/', include('admins.urls')),
    path('', include('accounts.urls'))
]
