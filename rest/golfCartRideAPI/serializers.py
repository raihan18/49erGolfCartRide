from rest_framework import serializers
from .models import *


class DepartmentSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Department
        fields = ('id', 'name')


class PersonSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Person
        fields = ('id', 'first_name', 'last_name', 'email', 'phone')
        

class StaffSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.IntegerField(source='person.id')
    person_first_name = serializers.CharField(source='person.first_name')
    person_last_name = serializers.CharField(source='person.last_name')
    department_name = serializers.CharField(source='department.name')

    class Meta:
        model = Staff
        fields = ('id', 'department_id', 'person_first_name', 'person_last_name',
                  'position', 'is_admin', 'department_name')


class ProfessorSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.IntegerField(source='person.id')
    person_first_name = serializers.CharField(source='person.first_name')
    person_last_name = serializers.CharField(source='person.last_name')
    department_name = serializers.CharField(source='department.name')

    class Meta:
        model = Professor
        fields = ('id', 'department_id', 'person_first_name', 'person_last_name',
                  'title', 'is_full_time', 'department_name')


class StudentSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.IntegerField(source='person.id')
    person_first_name = serializers.CharField(source='person.first_name')
    person_last_name = serializers.CharField(source='person.last_name')

    class Meta:
        model = Student
        fields = ('id', 'person_first_name', 'person_last_name', 'birth_date', 'grad_year')


class GolfCartSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = GolfCart
        fields = ('id', 'make', 'cart_model', 'num_seats')


class DriverSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.IntegerField(source='person.id')
    person_first_name = serializers.CharField(source='person.first_name')
    person_last_name = serializers.CharField(source='person.last_name')
    golf_cart_name = serializers.CharField(source='golf_cart.name')

    class Meta:
        model = Driver
        fields = ('id', 'golf_cart_id', 'person_first_name', 'person_last_name',
                  'date_hired', 'license_number', 'golf_cart_name')


class LocationSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Location
        fields = ('id', 'address', 'latitude', 'longitude')


class RideSerializer(serializers.HyperlinkedModelSerializer):
    rider_name = serializers.CharField(source='rider.full_name')
    # driver_name = serializers.CharField(source='driver.person.full_name')
    start_location_address = serializers.CharField(source='start_location.address')
    end_location_address = serializers.CharField(source='end_location.address')

    class Meta:
        model = Ride
        fields = ('id', 'start_location_id', 'end_location_id', 'golf_cart_id', 'rider_id',
                  'rider_name', 'start_time', 'end_time', 'status', 'start_location_address', 'end_location_address')


class RideRatingSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = RideRating
        fields = ('id', 'complete_date', 'rating', 'ride_id')
