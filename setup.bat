@echo off
REM Configuración para que el script funcione en la ubicación actual

REM Detener y eliminar los contenedores anteriores si están en ejecución
echo Deteniendo y eliminando contenedores anteriores...
docker-compose down -v

REM Definir la ruta de la carpeta de datos
set "data_folder=%~dp0data\mariadb"

REM Verificar si la carpeta de datos existe y eliminarla
IF EXIST "%data_folder%" (
    echo Eliminando la carpeta de datos existente...
    rmdir /S /Q "%data_folder%"
)

REM Crear nuevamente la carpeta de datos para iniciar desde cero
echo Creando la carpeta de datos desde cero...
mkdir "%data_folder%"

REM Cambiar al directorio del archivo docker-compose.yml (ubicación actual)
cd /d "%~dp0"

REM Iniciar los servicios de Docker Compose desde cero
echo Iniciando los servicios de Docker Compose desde cero...
docker-compose up -d --build

REM Verificar el estado de los contenedores
echo Verificando el estado de los contenedores...
docker-compose ps

echo Servicios reiniciados correctamente desde cero.
pause
