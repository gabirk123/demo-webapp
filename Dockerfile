FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN pip install flask
COPY app.py /opt/
COPY gal.jpg /opt/
CMD python /opt/app.py
