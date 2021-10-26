# Flask inside Docker

A Dockerfile to put a [Flask](https://flask.palletsprojects.com) application in a Docker container.

## Build

    sudo docker build -t flask-app .

## Run

    sudo docker run --rm -p 80:8000 -d flask-app

Adding the _-it_ option I can stop it with _CRTL+C_.