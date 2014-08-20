# Create your views here.
from rest_framework import generics
from rest_framework import permissions
from rest_framework.response import Response
from django.http import Http404
from django.contrib.auth.models import User
from rest_framework.views import APIView
from rest_framework import status
from budfinder.models import GymCourse, Student
from budfinder.serializers import GymCourseSerializer, StudentSerializer


class GymCourseList(generics.ListCreateAPIView):
    """
    List all courses, or create a new course.
    """
    model = GymCourse
    serializer_class = GymCourseSerializer


class GymCourseDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    Retrieve, update or delete a course instance.
    """
    model = GymCourse
    serializer_class = GymCourseSerializer
    
class StudentList(generics.ListCreateAPIView):
    """
    List all courses, or create a new course.
    """
    model = Student
    serializer_class = StudentSerializer


class StudentDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    Retrieve, update or delete a course instance.
    """
    model = Student
    serializer_class = StudentSerializer

