FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip && pip install flask
COPY app.py /opt/
RUN mkdir /opt/templates && mkdir /opt/static/
COPY index.html /opt/templates
COPY gal.jpg /opt/static
COPY docker.png /opt/static
CMD python /opt/app.py
