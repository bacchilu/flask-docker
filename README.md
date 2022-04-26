# Flask inside Docker

A Dockerfile to put a [Flask](https://flask.palletsprojects.com) application in a Docker container.

The application inside the running containers runs with the same user of the host machine.
In this way I can edit the shared volumes with the same privileges.

## Deploy

### Build

    sudo docker build -t flask-app .

### Run

    sudo docker run --rm -e `id -u` -p 80:5000 -d flask-app

Adding the _-it_ (and removing the _-d_) option I can stop it with _CRTL+C_.

## Developement

### Build Dockerfile

    sudo docker build -t flask-app:debug -f Dockerfile.dev .

### Run

    sudo docker run --rm -it -e `id -u` -v `pwd`:/app -p 5000:5000 flask-app:debug

## docker-compose

    sudo docker-compose up -d
    sudo docker-compose down

Also usefull:

    sudo docker logs --follow CONTAINER