#!/bin/ash

until cd /app
do
    echo "Waiting for server volume..."
done

# run a worker :)
celery -A celery_microservice worker -l INFO
