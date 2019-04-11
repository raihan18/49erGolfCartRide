from django.db import models


class Department(models.Model):
    name = models.CharField(max_length=100, null=False)

    class Meta:
        db_table = "Department"


class Person(models.Model):
    PERSON_TYPES = (
        ('staff', 'Staff'),
        ('professor', 'Professor'),
        ('student', 'Student'),
        ('driver', 'Driver')
    )
    first_name = models.CharField(max_length=100, null=False, blank=False, db_column="fname")
    last_name = models.CharField(max_length=100, null=False, blank=False, db_column="lname")
    email = models.CharField(max_length=100, null=False, blank=False)
    phone = models.CharField(max_length=100, null=True, blank=True)
    sub_type = models.CharField(max_length=20, db_column="subtype", null=False, blank=False, choices=PERSON_TYPES)

    class Meta:
        db_table = "Person"


class Staff(models.Model):
    id = models.ForeignKey(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, unique=True)
    position = models.CharField(max_length=55, null=True, blank=True)
    is_admin = models.BooleanField(default=False, db_column="isAdmin")
    department = models.ForeignKey(Department, db_column='department_id', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = "Staff"


class Professor(models.Model):
    id = models.ForeignKey(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, unique=True)
    title = models.CharField(max_length=55, default=None)
    is_full_time = models.BooleanField(default=False, db_column="isFullTime")
    department = models.ForeignKey(Department, db_column="department_id", on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = "Professor"


class Student(models.Model):
    id = models.ForeignKey(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, unique=True)
    birth_date = models.DateField(default=None, db_column="birthdate")
    grad_year = models.CharField(max_length=20, null=False, blank=False, db_column="gradYear")

    class Meta:
        db_table = "Student"


class StudentDepartment(models.Model):
    student = models.ForeignKey(Student, db_column="student_id", on_delete=models.CASCADE)
    department = models.ForeignKey(Department, db_column="department_id", on_delete=models.CASCADE)

    class Meta:
        db_table = "StudentDepartment"


class GolfCart(models.Model):
    make = models.CharField(max_length=100, null=False, blank=False)
    model = models.CharField(max_length=100, null=False, blank=False)
    num_seats = models.IntegerField(db_column="numSeats", null=False, blank=False)

    class Meta:
        db_table = "GolfCart"


class Driver(models.Model):
    id = models.ForeignKey(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, unique=True)
    date_hired = models.DateField(default=None, db_column="dateHired")
    license_number = models.CharField(max_length=100, db_column="licenseNum", null=False, blank=False)
    golf_cart = models.ForeignKey(GolfCart, db_column="golfcart_id", on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = "Driver"


class Location(models.Model):
    name = models.CharField(max_length=100, null=False, blank=False)
    address = models.CharField(max_length=255, null=False, blank=False)
    longitude = models.CharField(max_length=100, default=None)
    latitude = models.CharField(max_length=100, default=None)

    class Meta:
        db_table = "Location"


class Ride(models.Model):
    start_time = models.DateTimeField(null=False, blank=False, db_column="startTime")
    end_time = models.DateTimeField(null=False, blank=False, db_column="endTime")
    is_completed = models.BooleanField(default=False, db_column="isCompleted")
    start_location = models.ForeignKey(Location, db_column="start_location_id", on_delete=models.DO_NOTHING,
                                       related_name="start_location_set")
    end_location = models.ForeignKey(Location, db_column="end_location_id", on_delete=models.DO_NOTHING,
                                     related_name="end_location_set")
    driver = models.ForeignKey(Driver, db_column="driver_id", on_delete=models.DO_NOTHING)
    rider = models.ForeignKey(Person, db_column="rider_id", on_delete=models.DO_NOTHING)
    golf_cart = models.ForeignKey(GolfCart, db_column="golfcart_id", on_delete=models.DO_NOTHING)

    class Meta:
        db_table = "Ride"


class RideRating(models.Model):
    complete_date = models.DateField(null=False, blank=False, db_column="completeDate")
    rating = models.IntegerField(null=False, blank=False)
    ride = models.ForeignKey(Ride, db_column="ride_id", on_delete=models.DO_NOTHING)

    class Meta:
        db_table = "RideRating"
