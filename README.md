# demo-webapp
A simple Web Application for Deploying in docker/swarm/k8s/openshift.

# Files
- **app.py** -> The python web server file, contains 3 routes.
  * '/' - deafault route.
  * '/gal' - another route for testing.
- **Dockerfile** -> Dockerfile for the web app and has these layers:
  * Base image is ubuntu 16.04
  * installs requirements.
  * copies the code to /opt.
  * creates templates and static folder.
  * copies the html and static files to thier locations.
  * Runs the application
