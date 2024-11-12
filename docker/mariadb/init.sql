CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;

CREATE TABLE IF NOT EXISTS usuario (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO usuario (nombre, email) VALUES ('Juan', 'Juan@plexus.tech');