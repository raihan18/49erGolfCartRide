from rest_framework import serializers
from .models import Department, Person, Professor


class DepartmentSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Department
        fields = ('name',)


class PersonSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Person
        fields = ('first_name', 'last_name', 'email', 'phone', 'sub_type')


class ProfessorSerializer(serializers.HyperlinkedModelSerializer):
    person_first_name = serializers.CharField(source='person.first_name')
    person_last_name = serializers.CharField(source='person.last_name')

    class Meta:
        model = Professor
        fields = ('person_first_name', 'person_last_name', 'title', 'is_full_time', 'department')
