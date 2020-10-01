# demo-webapp
A simple Web Application for Deploying in docker/swarm/k8s/openshift.
[![app-ci Actions Status](https://github.com/galbirk/demo-webapp/workflows/Python application/badge.svg)](https://github.com/galbirk/demo-webapp/actions)

# Files
- **app.py** -> The python web server file, contains 3 routes.
  * '/' - deafault route.
  * '/gal' - another route for testing.
- **Dockerfile** -> Dockerfile for the web app and has these layers:
  * Base image is ubuntu 16.04
  * installs requirements.
  * copies the code to /opt.
  * copies templates and static folders.
  * Runs the application
# Build the docker image
- git pull https://github.com/galbirk/demo-webapp.git
- cd demo-webapp
- docker build -t <image_name>:<image_version> .
# Run the docker 
docker run -d --name <container_name> -p <port_on_host>:8080 <image_name>:<image_version>
