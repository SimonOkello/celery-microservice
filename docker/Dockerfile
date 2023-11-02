FROM python:3.11.4-alpine

WORKDIR /app
#prevent python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
#ensure python output is sent directly to the terminal
ENV PYTHONUNBUFFERED 1


COPY ./requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . /app/

RUN chmod +x /app/docker/django-entrypoint.sh
RUN chmod +x /app/docker/worker-entrypoint.sh
RUN chmod +x /app/docker/celerybeat-entrypoint.sh


EXPOSE 8000