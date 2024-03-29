# Flask inside Docker

Dockerization of a _Hello World_ [Flask](https://flask.palletsprojects.com/) Application.

## Developement

### Build Dockerfile

    sudo docker build --build-arg UID=`id -u` --build-arg GID=`id -g` --build-arg FLASK_DEBUG=1 --build-arg MODE=DEV -t bacchilu/flask-app:dev .

### Run

    sudo docker run --rm -it -v `pwd`/src:/app -p 5000:8000 bacchilu/flask-app:dev flask run --host=0.0.0.0 --port=8000

## Production

### Build

    sudo docker build --build-arg UID=`id -u` --build-arg GID=`id -g` -t bacchilu/flask-app .

### Run

    sudo docker run --rm -p 80:8000 -d bacchilu/flask-app

## docker-compose

    sudo docker-compose up -d
    sudo docker-compose down

## Docker Hub

Currently available at [https://hub.docker.com/repository/docker/bacchilu/flask-app](https://hub.docker.com/repository/docker/bacchilu/flask-app).

    sudo docker push bacchilu/flask-app
    sudo docker run --rm -it -p 80:8000 -d bacchilu/flask-app

## Useful Resources

[Docker Flask Example](https://github.com/nickjj/docker-flask-example)
