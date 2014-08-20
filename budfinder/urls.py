from django.conf.urls import patterns, include, url
from rest_framework.urlpatterns import format_suffix_patterns
from budfinder import views

urlpatterns = patterns('',
     url(r'^$', views.GymCourseList.as_view(), name='gymcourse-list'),
     url(r'^(?P<pk>[0-9]+)/$', views.GymCourseDetail.as_view(), name='gymcourse-detail'),
     url(r'^student/$', views.StudentList.as_view(), name='student-list'),
     url(r'^student/(?P<pk>[0-9]+)/$', views.StudentDetail.as_view(), name='student-detail'),
)


urlpatterns = format_suffix_patterns(urlpatterns)