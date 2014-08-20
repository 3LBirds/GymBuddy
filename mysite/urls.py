from django.conf.urls import patterns, include, url
from django.conf import settings

from django.contrib import admin
admin.autodiscover()


urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'mysite.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    
    #static
    (r'^static/(?P<path>.*)$', 'django.views.static.serve',
         {'document_root': settings.STATIC_ROOT}),

    #media
    (r'^media/(?P<path>.*)$', 'django.views.static.serve',
         {'document_root': settings.MEDIA_ROOT}),
    #index
    url(r'^$', 'mysite.views.home', name="home"),
    #posts
    (r'^budfinder/', include('budfinder.urls')),
)
