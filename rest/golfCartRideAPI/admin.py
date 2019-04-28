from django.contrib import admin
from .models import *


class DepartmentAdmin(admin.ModelAdmin):
    list_display = ["name"]


class PersonAdmin(admin.ModelAdmin):
    list_display = ["first_name", "last_name", "email", "phone", 'user']


class StaffAdmin(admin.ModelAdmin):
    def full_name(self, object):
        return object.person.full_name

    list_display = ["full_name", "position", "is_admin", "department"]


class ProfessorAdmin(admin.ModelAdmin):

    def full_name(self, object):
        return object.person.full_name

    list_display = ["full_name", "title", "is_full_time"]


class StudentAdmin(admin.ModelAdmin):
    def full_name(self, object):
        return object.person.full_name

    list_display = ["full_name", "birth_date", "grad_year"]


class StudentDepartmentAdmin(admin.ModelAdmin):
    def identifier(self, object):
        return object.student.person.full_name + " :: " + object.department.name

    list_display = ["identifier", "student", "department"]


class GolfCartAdmin(admin.ModelAdmin):
    list_display = ["make", "cart_model", "num_seats"]


class DriverAdmin(admin.ModelAdmin):
    def full_name(self, object):
        return object.person.full_name

    list_display = ["full_name", "date_hired", "license_number", "golf_cart"]


class LocationAdmin(admin.ModelAdmin):
    list_display = ["name", "address", "longitude", "latitude"]


class RideAdmin(admin.ModelAdmin):
    list_display = ["start_time", "end_time", "status", "start_location", "end_location",
                    "rider", "golf_cart"]


class RideRatingAdmin(admin.ModelAdmin):
    list_display = ["complete_date", "rating", "ride"]


admin.site.register(Department, DepartmentAdmin)
admin.site.register(Person, PersonAdmin)
admin.site.register(Staff, StaffAdmin)
admin.site.register(Professor, ProfessorAdmin)
admin.site.register(Student, StudentAdmin)
admin.site.register(StudentDepartment, StudentDepartmentAdmin)
admin.site.register(GolfCart, GolfCartAdmin)
admin.site.register(Driver, DriverAdmin)
admin.site.register(Location, LocationAdmin)
admin.site.register(Ride, RideAdmin)
admin.site.register(RideRating, RideRatingAdmin)

admin.site.site_header = "49er Golf Cart Ride Administration"
