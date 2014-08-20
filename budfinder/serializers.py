from rest_framework import serializers
from budfinder.models import GymCourse, Student


class GymCourseSerializer(serializers.HyperlinkedModelSerializer):
    courses = serializers.RelatedField(many=True)
    api_url = serializers.SerializerMethodField('get_api_url')

    class Meta:
        model = GymCourse
        fields = ('id', 'c_name', 'c_num', 'c_rating','c_description', 'url', 'api_url', 'courses')
        read_only_fields = ('id', 'c_rating')

    def get_api_url(self, obj):
        return "#/budfinder/%s" % obj.id

class StudentSerializer(serializers.HyperlinkedModelSerializer):
    prefs = serializers.RelatedField(many=True)
    api_url = serializers.SerializerMethodField('get_api_url')

    class Meta:
        model = Student
        fields = ('id', 'u_name', 'f_name', 'l_name','email', 'url', 'api_url', 'prefs')
        read_only_fields = ('id',)

    def get_api_url(self, obj):
        return "#/budfinder/student/%s" % obj.id
