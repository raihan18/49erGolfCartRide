from django.urls import path, include
from rest_framework import routers
from .views import DepartmentViewSet, PersonViewSet, ProfessorViewSet

router = routers.DefaultRouter()
router.register(r'departments', DepartmentViewSet)
router.register(r'persons', PersonViewSet)
router.register(r'professors', ProfessorViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
