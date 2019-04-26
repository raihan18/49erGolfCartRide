from rest_framework import viewsets, generics
from .serializers import *
from .filters import RideFilter, RideRatingFilter


class DepartmentViewSet(viewsets.ModelViewSet):
    queryset = Department.objects.all()
    serializer_class = DepartmentSerializer


class PersonViewSet(viewsets.ModelViewSet):
    queryset = Person.objects.all()
    serializer_class = PersonSerializer


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
