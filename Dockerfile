FROM python:3.11.4-alpine

WORKDIR /app
#prevent python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
#ensure python output is sent directly to the terminal
ENV PYTHONUNBUFFERED 1


COPY ./requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install -r requirements.txt


COPY ./entrypoint.sh .

RUN chmod +x /app/entrypoint.sh

COPY . /app/

ENTRYPOINT [ "./entrypoint.sh" ]