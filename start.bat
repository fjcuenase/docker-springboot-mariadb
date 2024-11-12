@echo off

REM Ejecutar Maven clean package para compilar la aplicación y generar el JAR
echo Compilando la aplicación con Maven...
cd /d "%~dp0app"  REM Cambiar a la ubicación del archivo .bat
call gradlew clean build

REM Iniciar los servicios de Docker Compose
echo Iniciando los servicios de Docker Compose...
docker-compose up -d

REM Verificar el estado de los contenedores
echo Verificando el estado de los contenedores...
docker-compose ps

echo Servicios iniciados correctamente.
pause
