# RETO 2

- [RETO 1 - EJERCICIO 2](#reto-1---ejercicio-2)
  - [Creación de la imagen MariaDB](#creación-de-la-imagen-mariadb)
  - [Creación del contenedor MariaDB (error en la apertura del puerto)](#creación-del-contenedor-mariadb-error-en-la-apertura-del-puerto)
  - [Creación del contenedor MariaDB adecuadamente.](#creación-del-contenedor-mariadb-adecuadamente)
  - [Conectado con DBaver](#conectado-con-dbaver)
  - [Imposibilidad de eliminar imagen mientras el contenedor aun exista.](#imposibilidad-de-eliminar-imagen-mientras-el-contenedor-aun-exista)

## Creación de la imagen MariaDB

Se realiza la ejecución del comando **pull** de docker para realizar la extracción de la imagen de MariaDB a nuestro equipo y así poder trabajar con ella para realizar los contenedores \
necesarios.

```bash
docker pull mariadb:latest
```

![Foto 1]( images/Foto-1.png )

## Creación del contenedor MariaDB (error en la apertura del puerto)

Esta fracción de código no genera un adecuada ejecución del docker debido al aislamento de puerto desde la parte externa hacia el docker, por lo cual no hay comunicación para accederlo

```bash
docker run --name bbdd \
--env MARIADB_ROOT_PASSWORD=root \
--env MARIADB_DATABASE=prueba \
--env MARIADB_USER=invitado \
--env MARIADB_PASSWORD=invitado \
mariadb --port 3306
```

![Foto 2]( images/Foto-2.png )

![Foto 3]( images/Foto-3.png )

## Creación del contenedor MariaDB adecuadamente.

Se realizan las correcciones para poder lanzar adecuadamente el contenedor.

```bash
docker run --name bbdd -p 3306:3306 \
--env MARIADB_ROOT_PASSWORD=root \
--env MARIADB_DATABASE=prueba \
--env MARIADB_USER=invitado \
--env MARIADB_PASSWORD=invitado \
mariadb
```

![Foto 4]( images/Foto-4.png )

![Foto 5]( images/Foto-5.png )

## Conectado con DBaver

Se realiza la conexión por medio del programa **DBeaver** para acceder a la base de datos llamada **Prueba** y allí se hacen algunas operaciones para modificar la base de datos.

![Foto 6]( images/Foto-6.png )

## Imposibilidad de eliminar imagen mientras el contenedor aun exista.

Se realizar la verificación de poder borrar la imagen del docker mientras aun esta creado el contenedor que va relacionado a dicha imagen. Por consiguiente se puede observar que no es posible realizar dicha operación \
porque se debe eliminar cualquier dependencia con la imagen.

```bash
docker rmi mariadb
```

![Foto 7]( images/Foto-7.png )
