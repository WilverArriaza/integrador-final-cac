CREATE DATABASE IF NOT EXISTS oradores;

USE oradores;

CREATE TABLE tickets(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	mail VARCHAR(50),
	cantidad VARCHAR(30),
	categoria VARCHAR(30)
);

SELECT * FROM tickets;