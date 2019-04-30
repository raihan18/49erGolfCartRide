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


def get_top_three_driver(request, **kwargs):
    cursor = connection.cursor()
    query = "SELECT qr.driver_id,qr.driver_first_name,qr.driver_last_name,qr.avrating FROM (SELECT Driver.id AS driver_id,Person.fname AS driver_first_name,Person.lname AS driver_last_name,Avg(Rating.rating) AS avrating FROM riderating AS Rating LEFT JOIN ride AS Ride ON Ride.id=Rating.ride_id LEFT JOIN driver AS Driver ON Driver.golfcart_id=Ride.golfcart_id LEFT JOIN Person AS Person ON Person.id=Driver.id GROUP BY Driver.id) AS qr ORDER BY avrating DESC LIMIT 3;"
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
    query = "SELECT Ride.id,Ride.startTime,Ride.endTime,Location1.name as start_loc,Location2.name as end_loc,Ride.status,Rating.rating FROM ride as Ride LEFT JOIN driver as Driver ON Driver.golfcart_id=Ride.golfcart_id LEFT JOIN person as Person ON Person.id=Driver.id LEFT JOIN riderating as Rating ON Rating.id=Ride.id LEFT JOIN location as Location1 ON Location1.id=Ride.start_location_id LEFT JOIN location as Location2 ON Location2.id=Ride.end_location_id;"
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
