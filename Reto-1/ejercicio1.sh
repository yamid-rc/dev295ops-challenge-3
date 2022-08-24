#!/bin/bash


# Gestión docker de NGNIX

### Sección para crear y levantar el docker ###
docker search nginix
docker images ls
docker ps
docker pull ngnix:latest
docker images
docker ps
docker run -d --name servidor_web -p 8181:80 nginx
docker images
docker ps
netstat -potuna

### Sección para realizar la eliminación del docker ###
# docker stop servidor_web
# docker ps -a
# docker rm servidor_web
# docker image rm b692a91e4e15
# docker images
# docker ps -a
