# Flask inside Docker

A Dockerfile to put a [Flask](https://flask.palletsprojects.com) application in a Docker container.

## Deploy

### Build

    sudo docker build -t flask-app .

### Run

    sudo docker run --rm -p 80:5000 -d flask-app

Adding the _-it_ option I can stop it with _CRTL+C_.

## Developement

### Build Dockerfile

    sudo docker build -t flask-app:debug -f Dockerfile.dev .

### Run

    sudo docker run --rm -it -v `pwd`:/app -p 5000:5000 flask-app:debug