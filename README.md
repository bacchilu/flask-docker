# Flask inside Docker

Dockerization of a _Hello World_ [Flask](https://flask.palletsprojects.com/) Application.

## Developement

### Build Dockerfile

    sudo docker build --build-arg UID=`id -u` --build-arg GID=`id -g` --build-arg MODE=DEV -t bacchilu/flask-app:dev -f Dockerfile.dev .

### Run

    sudo docker run --rm -it -v `pwd`/src:/app -p 5000:5000 bacchilu/flask-app:dev

## Production

### Build

    sudo docker build --build-arg UID=`id -u` --build-arg GID=`id -g` -t bacchilu/flask-app .

### Run

    sudo docker run --rm -p 80:8000 -d bacchilu/flask-app

## docker-compose

    sudo docker-compose up -d
    sudo docker-compose down
