from django.db import models
from django.contrib.auth.models import User


class Department(models.Model):
    name = models.CharField(max_length=100, null=False)

    class Meta:
        db_table = "Department"

    def __str__(self):
        return self.name


class Person(models.Model):
    PERSON_TYPES = (
        ('staff', 'Staff'),
        ('professor', 'Professor'),
        ('student', 'Student'),
        ('driver', 'Driver')
    )
    user = models.OneToOneField(User, db_column='user_id', null=True, blank=True, on_delete=models.SET_NULL)
    first_name = models.CharField(max_length=100, null=False, blank=False, db_column="fname")
    last_name = models.CharField(max_length=100, null=False, blank=False, db_column="lname")
    email = models.CharField(max_length=100, null=False, blank=False)
    phone = models.CharField(max_length=100, null=True, blank=True)
    # sub_type = models.CharField(max_length=20, db_column="subtype", null=False, blank=False, choices=PERSON_TYPES)

    @property
    def full_name(self):
        return self.first_name + " " + self.last_name

    class Meta:
        db_table = "Person"

    def __str__(self):
        return self.full_name


class Staff(models.Model):
    id = models.OneToOneField(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, verbose_name="Person")
    position = models.CharField(max_length=55, null=True, blank=True)
    is_admin = models.BooleanField(default=False, db_column="isAdmin")
    department = models.ForeignKey(Department, db_column='department_id', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = "Staff"

    @property
    def person(self):
        return self.id

    def __str__(self):
        return self.person.full_name


class Professor(models.Model):
    id = models.OneToOneField(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, verbose_name="Person")
    title = models.CharField(max_length=55, default=None)
    is_full_time = models.BooleanField(default=False, db_column="isFullTime")
    department = models.ForeignKey(Department, db_column="department_id", on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = "Professor"

    @property
    def person(self):
        return self.id

    def __str__(self):
        return self.person.full_name


class Student(models.Model):
    id = models.OneToOneField(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, verbose_name="Person")
    birth_date = models.DateField(default=None, db_column="birthdate")
    grad_year = models.CharField(max_length=20, null=False, blank=False, db_column="gradYear")

    class Meta:
        db_table = "Student"

    @property
    def person(self):
        return self.id

    def __str__(self):
        return self.person.full_name


class StudentDepartment(models.Model):
    student = models.ForeignKey(Student, db_column="student_id", on_delete=models.CASCADE)
    department = models.ForeignKey(Department, db_column="department_id", on_delete=models.CASCADE)

    class Meta:
        db_table = "StudentDepartment"

    def __str__(self):
        return self.student.person.full_name + " :: " + self.department.name


class GolfCart(models.Model):
    make = models.CharField(max_length=100, null=False, blank=False)
    cart_model = models.CharField(max_length=100, null=False, blank=False, db_column='model')
    num_seats = models.IntegerField(db_column="numSeats", null=False, blank=False)

    class Meta:
        db_table = "GolfCart"

    @property
    def name(self):
        return self.make + " " + self.cart_model

    def __str__(self):
        return self.name


class Driver(models.Model):
    id = models.OneToOneField(Person, db_column='id', on_delete=models.CASCADE, primary_key=True, verbose_name="Person")
    date_hired = models.DateField(default=None, db_column="dateHired")
    license_number = models.CharField(max_length=100, db_column="licenseNum", null=False, blank=False)
    golf_cart = models.ForeignKey(GolfCart, db_column="golfcart_id", on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = "Driver"

    @property
    def person(self):
        return self.id

    def __str__(self):
        return self.person.full_name


class Location(models.Model):
    name = models.CharField(max_length=100, null=False, blank=False)
    address = models.CharField(max_length=255, null=False, blank=False)
    longitude = models.CharField(max_length=100, default=None)
    latitude = models.CharField(max_length=100, default=None)

    class Meta:
        db_table = "Location"

    def __str__(self):
        return self.name


class Ride(models.Model):
    STATUS_TYPES = (
        ('pending', 'Pending'),
        ('cancelled', 'Cancelled'),
        ('complete', 'Complete')
    )

    start_time = models.DateTimeField(null=False, blank=False, db_column="startTime")
    end_time = models.DateTimeField(null=True, blank=True, db_column="endTime")
    status = models.CharField(max_length=100, db_column="status", default='pending')
    start_location = models.ForeignKey(Location, db_column="start_location_id", on_delete=models.DO_NOTHING,
                                       related_name="start_location_set")
    end_location = models.ForeignKey(Location, db_column="end_location_id", on_delete=models.DO_NOTHING,
                                     related_name="end_location_set")
    # driver = models.ForeignKey(Driver, db_column="driver_id", on_delete=models.DO_NOTHING)
    rider = models.ForeignKey(Person, db_column="rider_id", on_delete=models.DO_NOTHING)
    golf_cart = models.ForeignKey(GolfCart, db_column="golfcart_id", on_delete=models.DO_NOTHING)

    class Meta:
        db_table = "Ride"

    def __str__(self):
        return self.rider.full_name + ":: " + str(self.id)


class RideRating(models.Model):
    complete_date = models.DateField(null=False, blank=False, db_column="completeDate")
    rating = models.IntegerField(null=False, blank=False)
    ride = models.ForeignKey(Ride, db_column="ride_id", on_delete=models.DO_NOTHING)

    class Meta:
        db_table = "RideRating"
