FROM index.docker.io/sanchitaghai/public-app:san
#FROM alpine:latest
#FROM python:3-slim
RUN apt-get update -y
#RUN apt-get install apt-file
#RUN apt-get install software-properties-common -y
#RUN apt-add-repository universe
RUN apt-get install python-pip -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip
RUN pip install flask
RUN pip install prometheus_client
COPY application.py /
WORKDIR /
ENTRYPOINT ["python", "/application.py"]
