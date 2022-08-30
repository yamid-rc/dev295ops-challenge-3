#!/bin/bash

# Creación de la imagen y ejecución del container
docker volume create static_content
docker build -t bootcamp_nginx .
docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx
docker images
docker ps


# Registrar en DockerHub
docker tag bootcamp_nginx yamidrc/bootcamp_nginx:v1.0.0
docker push yamidrc/bootcamp_nginx:v1.0.0
