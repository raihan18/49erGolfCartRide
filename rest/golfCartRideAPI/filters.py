import django_filters
from .models import Ride, RideRating


class RideFilter(django_filters.FilterSet):
    class Meta:
        model = Ride
        fields = ['id', 'rider_id', 'driver_id', 'golf_cart_id']


class RideRatingFilter(django_filters.FilterSet):
    class Meta:
        model = RideRating
        fields = ['id', 'rating', 'complete_date', 'ride__rider_id', 'ride__driver_id']
