FROM python:2.7
MAINTAINER Ravi RT Merugu <rrmerugu@gmail.com>
ENV PYTHONUNBUFFERED 1

ARG build_env
ENV BUILD_ENV ${build_env}

RUN [ -d /webapp ] || mkdir /webapp;
COPY  ./ /webapp
WORKDIR /webapp

RUN pip install -r requirements.txt
RUN pip install uwsgi
EXPOSE 50100
CMD uwsgi --http :5000 --wsgi-file wsgi.py --master --processes 4 --threads  2


