FROM ubuntu:14.04

RUN apt-get update -qq && apt-get -qy install python-pip
RUN mkdir -p /opt/service

EXPOSE 5000

RUN pip install flask-restful==0.3.1
RUN pip install requests==2.3.0

ADD dashboard.py /opt/service/
ADD static /opt/service/static
CMD cd /opt/service && python dashboard.py
