#!/bin/ash

until cd /app
do
    echo "Waiting for server volume..."
done

# run a celerybeat :)
celery -A celery_microservice beat -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler
