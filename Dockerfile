FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN pip install flask
COPY app.py /opt/
RUN mkdir /opt/templates
COPY index.html /opt/templates
RUN mkdir /opt/static/
COPY gal.jpg /opt/static
CMD python /opt/app.py
