from django.urls import path, include
from rest_framework import routers
from .views import *

router = routers.DefaultRouter()
router.register(r'departments', DepartmentViewSet)
router.register(r'persons', PersonViewSet)
router.register(r'staffs', StaffViewSet)
router.register(r'professors', ProfessorViewSet)
router.register(r'students', StudentViewSet)
router.register(r'golf-carts', GolfCartViewSet)
router.register(r'drivers', DriverViewSet)
router.register(r'locations', LocationViewSet)
router.register(r'rides', RideViewSet)
router.register(r'ride-ratings', RideRatingViewSet)

urlpatterns = [
    path('', include(router.urls)),
    # path('list/rides/', RideList.as_view()),
    path('list/ride-ratings/', RideRatingList.as_view()),
    path('list/top_three_drivers/', get_top_three_driver),
    path('list/rides/', get_rides),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
