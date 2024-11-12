# Ejemplo de Docker con Spring Boot y MariaDB

Este proyecto es un ejemplo de configuración de Docker para una aplicación Spring Boot con base de datos MariaDB.

## Estructura del Proyecto

- **docker-compose.yml**: Usa los `Dockerfile` ubicados en la carpeta `docker`.
- **Base de Datos**: La base de datos se inicializa automáticamente con el script `init.sql`.
- **Aplicación Spring Boot**: El servicio de la aplicación se encuentra en la carpeta `app`.

## Pasos para Ejecutar

1. **Compilar el Proyecto Spring Boot**  
   Compila el proyecto Spring Boot y realiza un `build`. Asegúrate de configurar el perfil `docker` en `application.yml`.

2. **Preparar y Crear Contenedores**  
   Ejecuta `setup.bat` para preparar los directorios de volúmenes y crear los contenedores.

3. **Arrancar el Servicio**  
   Si los contenedores ya están creados y solo deseas arrancar el servicio, utiliza `start.bat`.

## Scripts

- **setup.bat**: Configura los volúmenes y crea los contenedores.
- **start.bat**: Arranca el servicio si los contenedores ya han sido creados.

¡Listo! Ahora tienes tu entorno Docker configurado para Spring Boot con MariaDB.
