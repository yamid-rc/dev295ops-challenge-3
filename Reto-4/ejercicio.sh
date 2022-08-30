#!/bin/bash

# Creación de la imagen y ejecución del container
docker build -t simple-apache:new .
docker run -d --name my_apache -p 5050:80 simple-apache:new

# Visualización de las imágenes y contenedores
docker images
docker ps

# Para inspeccionar la imagen y poder verificar las capas que tiene la imagen
docker inspect simple-apache:new
