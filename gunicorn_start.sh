#!/bin/bash
NAME="DJANGOPROJECTNAME"
DJANGODIR=/path/to/django/project/root
SOCKFILE=/path/to/django/project/root/DJANGOPROJECTNAME.sock
USER=
GROUP=
NUM_WORKERS=4
DJANGO_SETTINGS_MODULE=DJANGOPROJECTNAME.settings.prd
DJANGO_WSGI_MODULE=DJANGOPROJECTNAME.wsgi
SECRET_KEY='whereverSecretKey'
#SECRET_KEY=exec python3.6 -c 'import secrets; print(secrets.token_hex(32))'
TIMEOUT=5000

echo "Starting $NAME as `whowami`"

# Activate the virtual environment
cd $DJANGODIR
echo $DJANGODIR
echo $DJANGO_WSGI_MODULE
source /path/to/virtualenv/bin/activate
export DJANGO_SETTINGS_MODULE=$DJANGO_SETTINGS_MODULE
export SECRET_KEY=$SECRET_KEY
export PYTHONPATH=$DJANGODIR:$PYTHONPATH

# Creates "run" directory if it doesn't exists yet
# RUNDIR=$(dirname $SOCKFILE)

#Start Django Unicorn
exec /path/to/virtualenv/bin/gunicorn ${DJANGO_WSGI_MODULE}:application \
  --name $NAME \
  --workers $NUM_WORKERS \
  --user $USER \
  --bind=unix:$SOCKFILE \
  --timeout $TIMEOUT \
