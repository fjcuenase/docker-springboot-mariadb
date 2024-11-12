@echo off

REM Iniciar los servicios de Docker Compose
echo Iniciando los servicios de Docker Compose...
docker-compose up -d

REM Verificar el estado de los contenedores
echo Verificando el estado de los contenedores...
docker-compose ps

echo Servicios iniciados correctamente.
pause
