GymBuddy
========

Web Application for helping users find a gym buddy : Django-Angular-Bootstrap

1. App currently setup to access a database name 'budfinder. The database is included with this repository. Feel free to
import the database. 
2. If you desire to change database settings the 'DATABASES' environment variable is located in mysite/local_settings.py
3. All static files are included. 
4. Django v1.8.0, AngularJS 1.0.5, Bootstrap v2.1.1

Application:
1. 

a.  To view admin site: localhost:8000/admin
b.  To view APIs: localhost:8000/budfinder, or localhost:8000/budfinder/student
c.  To view App: localhost:8000/#/<num>. Where num represents the 'id' attribute of a record in the database.

2. Tables are scrollable, and Available Buddies and Favorite Buddies containers have drag and drop capabilities. It's
   still work in progress, but the trick is to drag the element until it hovers over the header row or another record 
   in the table. 
3. Select a course to see the description in the Course Description container. 
4. Selecting a day in the 'Available Buddies' container allows the current 'student' to see which other students also are available on the selected day.  

Thanks to tutorials like:
1. Django tutorials  
2. Django -Angular integration :http://blog.mourafiq.com/post/55034504632/end-to-end-web-app-with-django-rest-framework
3. Drag and Drop : https://github.com/ganarajpr/angular-dragdrop


