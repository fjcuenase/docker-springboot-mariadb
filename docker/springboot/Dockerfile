# Usa una imagen base de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR de la aplicación en el contenedor
COPY ./app/build/libs/*-SNAPSHOT.jar /app/myapp.jar

# Expone el puerto 8080
EXPOSE 8080

# Ejecuta la aplicación
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]