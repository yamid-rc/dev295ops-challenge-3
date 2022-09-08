#!/bin/bash

# Crear imagen para docker
docker build -t hello-lemoncoder .
docker run -d --name app-hello -p 4000:4000 hello-lemoncoder
docker images
docker ps

# Subirlo a Register
docker tag hello-lemoncoder yamidrc/app-hello
docker push yamidrc/app-hello
