#Imagen base con que se  trabajará
FROM httpd:alpine

#Etiquetado
LABEL maintainer="yamid.rc@palmats.com"
LABEL project="Bootcamp"

# Puerto que usará por defecto nuestro contenedor
EXPOSE 80

# Reemplazo de archivos en la carpeta por defecto de Apache para publicar páginas
COPY content/ /usr/local/apache2/htdocs/

