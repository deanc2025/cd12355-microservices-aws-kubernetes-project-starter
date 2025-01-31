#FROM python:3.10-slim-buster
#FROM python:3.6.9-slim-buster
FROM --platform=linux/amd64 python:3.10-slim-buster

WORKDIR .

RUN apt update -y

RUN apt install build-essential libpq-dev -y

RUN pip install --upgrade pip setuptools wheel

RUN pwd


COPY ./analytics .

RUN pip install -r requirements.txt
#RUN pip install Flask==2.2.2 Werkzeug==2.2.2

#ENV DB_USERNAME="dean" 
#ENV DB_PASSWORD="xxxxxxx" 
#ENV DB_HOST="127.0.0.1"
#ENV DB_PORT="5433"
#ENV DB_NAME="deandatabase"


CMD python app.py