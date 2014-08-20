from django.db import models
from django.template.defaultfilters import slugify

# Create your models here.
#the ancestor of Question is models.Model.
class Student(models.Model):
    u_name = models.CharField("UserName",max_length=20)
    f_name = models.CharField("First Name",max_length=20)
    l_name = models.CharField("Last Name",max_length=20)
    email = models.CharField("Email", max_length=20)
    paswd = models.CharField("Password",max_length=20)
    
    def __str__(self):
        return self.u_name
    
class GymCourse(models.Model):
    c_name = models.CharField("Gym Courses",max_length=30)
    c_num = models.CharField("Course Number",max_length=30)
    c_rating = models.CharField("Course Rating",max_length=20)
    c_description = models.TextField("Course Description",blank=True, help_text=(
        "If omitted, the description will be the post's title."))
    slug = models.SlugField(blank=True,editable=False)
    
    def __str__(self):
        return self.c_name
    
    def save(self, *args, **kwargs):
        self.do_unique_slug()
        if not self.c_description:
            self.c_description = self.c_name
        super(GymCourse, self).save(*args, **kwargs)

    def do_unique_slug(self):
        """
        Ensures that the slug is always unique for this post
        """
        if not self.id:
            # make sure we have a slug first
            if not len(self.slug.strip()):
                self.slug = slugify(self.c_name)

            self.slug = self.get_unique_slug(self.slug)
            return True

        return False

    def get_unique_slug(self, slug):
        """
        Iterates until a unique slug is found
        """
        orig_slug = slug
        counter = 1

        while True:
            course = GymCourse.objects.filter(slug=slug)
            if not course.exists():
                return slug

            slug = '%s-%s' % (orig_slug, counter)
            counter += 1

class GymCourseTime(models.Model):
    DAYS_WEEK = (
        ('M','Monday'),
        ('T','Tuesday'),
        ('W','Wednesday'),
        ('Th','Thursday'),
        ('F','Friday'),
        ('Sa','Saturday'),
        ('Su','Sunday')
    )    
    course = models.ForeignKey(GymCourse, related_name='courses'    )
    c_day = models.CharField("Day of Course",max_length =2, choices=DAYS_WEEK)
    c_time = models.TimeField('Time of Course')
    
    
    
    def __str__(self):
        date_time = "%s : %s" % (self.c_day,self.c_time)
        return date_time
    
class StudentDayPreference(models.Model):
    student = models.ForeignKey(Student, related_name='prefs')   
    mon = models.BooleanField('Monday',default=True)
    tue = models.BooleanField('Tuesday',default=True)
    wed = models.BooleanField('Wednesday',default=True)
    thu = models.BooleanField('Thursday',default=True)
    fri = models.BooleanField('Friday',default=True)
    sat = models.BooleanField('Saturday',default=True)
    sun = models.BooleanField('Sunday',default=True)

    def __str__(self):
        day_pref=[]
        if self.mon:
            day_pref.append("Monday")
        if self.tue:
            day_pref.append("Tuesday")
        if self.wed:
            day_pref.append("Wednesday")    
        if self.thu:
            day_pref.append("Thursday")
        if self.fri:
            day_pref.append("Friday")
        if self.sat:
            day_pref.append("Saturday")
        if self.sun:
            day_pref.append("Sunday")    
                   
        day_pref = ' , '.join(day_pref)
        return day_pref

#Add StudentCoursePreference dependent on values in GymCoursesColumn
        