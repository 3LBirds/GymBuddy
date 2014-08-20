"""
Django settings for mysite project.

For more information on this file, see
https://docs.djangoproject.com/en/dev/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/dev/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
import posixpath
from local_settings import *

#BASE_DIR = os.path.dirname(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/dev/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'ww-(-u5=@#jz5qylm*llhxykr9sli)18@bp5ye1av3s8#%s#k*'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []


# Application definition


INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    'django.contrib.staticfiles',                                 
    'django.contrib.sitemaps',
    'django.contrib.redirects',
    # Uncomment the next line to enable the admin:
    'django.contrib.admin',
    # Uncomment the next line to enable admin documentation:
    'django.contrib.admindocs',
)


MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.contrib.redirects.middleware.RedirectFallbackMiddleware',    
    'django.middleware.locale.LocaleMiddleware',    
    'django.middleware.clickjacking.XFrameOptionsMiddleware', 
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',       
)

#variables for registration
ACCOUNT_ACTIVATION_DAYS = 7 # One-week activation window; 
LOGIN_REDIRECT_URL = '/'

ROOT_URLCONF = 'mysite.urls'

WSGI_APPLICATION = 'mysite.wsgi.application'


# Database
# https://docs.djangoproject.com/en/dev/ref/settings/#databases





# Internationalization
# https://docs.djangoproject.com/en/dev/topics/i18n/

TIME_ZONE = 'UTC'
LANGUAGE_CODE = 'en-us'
SITE_ID = 1
USE_I18N = True
USE_L10N = True
USE_TZ = True

# Additional locations of static files
STATICFILES_DIRS = (
                    #the Project Root is defined as the absolute path to the directory that this file resides in 
    os.path.join(PROJECT_ROOT, "static"),

    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
)

# List of finder classes that know how to find static files in
# various locations.
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',    
#    'django.contrib.staticfiles.finders.DefaultStorageFinder',
)

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',    
#     'django.template.loaders.eggs.Loader',
)

TEMPLATE_DIRS = (
    TEMPLATE_ROOT,    
    # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
)

TEMPLATE_CONTEXT_PROCESSORS = (
   'django.contrib.auth.context_processors.auth',
   'django.core.context_processors.debug',
   'django.core.context_processors.i18n',
   'django.core.context_processors.media',
   'django.core.context_processors.request',
   'django.core.context_processors.static',
   'django.contrib.messages.context_processors.messages',
)

#importing envirment --dev or prod-- local variables
if DEV_ENV:
    from dev_settings import *
    MIDDLEWARE_CLASSES += DEV_MIDDLEWARE_CLASSES
    INSTALLED_APPS += DEV_INSTALLED_APPS
    TEMPLATE_CONTEXT_PROCESSORS += DEV_TEMPLATE_CONTEXT_PROCESSORS

if PROD_ENV:
    from prod_settings import *
    MIDDLEWARE_CLASSES += PROD_MIDDLEWARE_CLASSES
    INSTALLED_APPS += PROD_INSTALLED_APPS
    TEMPLATE_CONTEXT_PROCESSORS += PROD_TEMPLATE_CONTEXT_PROCESSORS   