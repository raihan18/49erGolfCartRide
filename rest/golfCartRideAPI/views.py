import json
from django.db import connection
from django.http import JsonResponse
from django.contrib.auth.models import User
from rest_framework import viewsets, generics
from .serializers import *
from .filters import RideFilter, RideRatingFilter


class DepartmentViewSet(viewsets.ModelViewSet):
    queryset = Department.objects.all()
    serializer_class = DepartmentSerializer


class PersonViewSet(viewsets.ModelViewSet):
    queryset = Person.objects.all()
    serializer_class = PersonSerializer

    def create(self, request, *args, **kwargs):
        data = request.data
        user = User.objects.create(username=data['username'], password=data['password'])
        user.save()
        del request.data['username']
        del request.data['password']
        response = super(PersonViewSet, self).create(request, *args, **kwargs)
        person_id = response.data['id']
        person = Person.objects.get(id=person_id)
        person.user_id = user.id
        person.save()
        return response


class StaffViewSet(viewsets.ModelViewSet):
    queryset = Staff.objects.all()
    serializer_class = StaffSerializer


class ProfessorViewSet(viewsets.ModelViewSet):
    queryset = Professor.objects.all()
    serializer_class = ProfessorSerializer

    # def create(self, request, *args, **kwargs):
    #     # TODO
    #     # ...?
    #     import pdb; pdb.set_trace()
    #     super(ProfessorViewSet, self).create(request, *args, **kwargs)


class StudentViewSet(viewsets.ModelViewSet):
    queryset = Student.objects.all()
    serializer_class = StudentSerializer


class GolfCartViewSet(viewsets.ModelViewSet):
    queryset = GolfCart.objects.all()
    serializer_class = GolfCartSerializer


class DriverViewSet(viewsets.ModelViewSet):
    queryset = Driver.objects.all()
    serializer_class = DriverSerializer


class LocationViewSet(viewsets.ModelViewSet):
    queryset = Location.objects.all()
    serializer_class = LocationSerializer


class RideViewSet(viewsets.ModelViewSet):
    queryset = Ride.objects.all()
    serializer_class = RideSerializer


class RideList(generics.ListAPIView):
    queryset = Ride.objects.all()
    serializer_class = RideSerializer
    filter_class = RideFilter


class RideRatingViewSet(viewsets.ModelViewSet):
    queryset = RideRating.objects.all()
    serializer_class = RideRatingSerializer


class RideRatingList(generics.ListAPIView):
    queryset = RideRating.objects.all()
    serializer_class = RideRatingSerializer
    filter_class = RideRatingFilter


def add_ride_ratings(request, **kwargs):
    if request.method == 'POST':
        data = json.loads(request.body)
        rating = int(data.get('rating'))
        ride_id = data.get('ride_id')

        # data = request.data
        ride_rating = RideRating.objects.create(rating=rating, ride_id=ride_id)
        ride_rating.save()
        return JsonResponse({
            'id': ride_rating.id,
            'ride_id': ride_rating.ride_id,
            'rating': ride_rating.rating
        })
    return JsonResponse({'message': "Bad request!"})


def get_top_three_driver(request, **kwargs):
    cursor = connection.cursor()
    query = "SELECT * FROM top_3_drivers;"
    cursor.execute(query)
    rows = cursor.fetchall()
    response_data = []
    for row in rows:
        response_data.append({
            'driver_id': row[0],
            'driver_first_name': row[1],
            'driver_last_name': row[2],
            'average_rating': row[3]
        })

    return JsonResponse(response_data, safe=False)


def get_rides(request, **kwargs):
    cursor = connection.cursor()
    query = "SELECT * FROM ride_list;"
    cursor.execute(query)
    rows = cursor.fetchall()
    response_data = []
    for row in rows:
        response_data.append({
            'id': row[0],
            'startTime': row[1],
            'endTime': row[2],
            'startLoc': row[3],
            'endLoc': row[4],
            'status': row[5],
            'rating': row[6]
        })

    return JsonResponse(response_data, safe=False)
