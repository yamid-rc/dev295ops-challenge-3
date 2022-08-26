#!/bin/bash


# Creacion de la imagen MariaDB
docker pull mariadb:latest


# Creación del contenedor de MariaDB llamado bbdd
docker run --name bbdd -p 3306:3306 \
--env MARIADB_ROOT_PASSWORD=root \
--env MARIADB_DATABASE=prueba \
--env MARIADB_USER=invitado \
--env MARIADB_PASSWORD=invitado \
mariadb

# Visualización de las imagenes de docker
docker images

# Visualización de los contenedores disponibles
docker ps


# Para ejecución del contenedor, luego eliminar el contenedor
docker stop bbdd
docker rm   bbdd

# Eliminación de la imagen de MariaDB
docker rmi mariadb

