# Catalogo

## Pasos para ejecutar en modo desarrollo:

1. Necesitan `Postgres 13` y `Python 3.9-3.10`.

2. Instalar las dependencias de Python  del archivo `requirements.txt`. Utilizar el comando:

```bash
pip install -r requirements.txt
```

3. Crear una BD en postgres con los parámetros:

*  POSTGRES_BD = "Media"
*  POSTGRES_USER = "postgres"
*  POSTGRES_PASSWORD = "1qazxsw2"
*  POSTGRES_HOST ="127.0.0.1"

4. Restauran la BD con la salva que está en `bd_backup`.

5. Abren `CMD` en donde está el archivo `manage.py` y ponen el comando:

```bash
python manage.py runserver
```

6. Ya pueden entrar a la página, utilicen las credenciales:

* Usuario: Admin
* Contraseña: admin

7. Pueden entrar al panel de administración y crearse su propio usuario o utilizar el comando:

```bash
  python manage.py createsuperuser
```

## Pasos para ejecutar en modo despliegue:

1. Instalar DOCKER.

2. Ejecutar DOCKER.

3. Instalar las imagenes de DOCKER:</li> 

```bash
docker pull python:3.9.5
docker pull postgres:13.3
docker pull nginx:1.20.0
```

4.  Abren `CMD` en donde está el archivo `Dockerfile` y ponen el comando: 

```bash
docker build --force-rm -t media:0.2 .
```

En caso de que ya tengan las imagenes guardadas localmente sustituyan los pasos 3-4, por el 5.


5. Cargar las imagenes de docker con los siguientes comandos:

```bash
docker load -i core-0.2.tar
docker load -i postgres-13.3.tar
docker load -i nginx-1.20.0.tar
```

6. Instalar el pgadmin4.

7. Abrir el archivo `local.conf` en la ruta `.\core\config\nginx\conf.d` y comentar desde la linea 10 hasta la 33.

8. Abrir el archivo `conf.py` en la ruta `.\core\config\gunicorn\conf.d` y comentar desde la linea 11 hasta la 12.

9. Mandar a crear el contenedor (parado donde está el archivo `docker-compose.yml`) con el comando:

```bash
  docker-compose up
```

10. Ejecutar los siguientes comandos:

```bash
docker exec -it nginx-media bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
```

(Seguir las indicaciones del comando anterior)

```bash
openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
```

11. Ejecutar los siguientes comandos:

```bash
docker exec -it django-media bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
```
(Seguir las indicaciones del comando anterior)
```bash
openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
```

12. Abrir el `pgadmin4` y crea un nuevo server con los siguientes parametros:

*	Name: (cualquiera)
*	Host name: 127.0.0.1
*	Port: 5433
*	Manintenace database: postgres
*	Username: postgres
*	Password: postgres

13. Accede al servidor anterior y crea una nueva BD llamada `Media` y carga la salva que está en `bd_backup`.

14. Deten el contenedor `core` con los botones de la imterfaz. Descomentarea las lineas de los pasos 7-8.

15. Ejecuta el contenedor `core` con los botones de la imterfaz. Espera a que el icono se ponga de color verde.

16. Accede por un navegador a `127.0.0.1`, utiliza las credenciales:
*	Usuario: Admin
*	Contraseña: admin
