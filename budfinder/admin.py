from django.contrib import admin

# Register your models here.
from budfinder.models import Student,GymCourse,GymCourseTime,StudentDayPreference

class StudentDayPreferenceInline(admin.TabularInline):
    model=StudentDayPreference
    extra=1
    verbose_name_plural="Student Day Preferences"
    
class StudentAdmin(admin.ModelAdmin):
    fieldsets = [("Identification",{'fields':['u_name','f_name','l_name']}),("Access Information",{'fields':['email','paswd']})]
    inlines=[StudentDayPreferenceInline]
    
class GymCourseTimeInline(admin.TabularInline):
    model=GymCourseTime
    extra=1
    verbose_name = "Gym Course Time"
    verbose_name_plural="Gym Course Times"

class GymCourseAdmin(admin.ModelAdmin):
    inlines = [GymCourseTimeInline]
    verbose_name = "Gym Course"
    verbose_name_plural = "Gym Courses"

admin.site.register(Student,StudentAdmin)    
admin.site.register(GymCourse,GymCourseAdmin)