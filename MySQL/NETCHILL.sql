CREATE SCHEMA `Netchill`;
USE `Netchill`;
-- Creamos las tablas de nuestra BBDD
-- Tabla Master, con toda la información descargada de la API
CREATE TABLE `MASTER` (
auto_ID INT AUTO_INCREMENT,
genero VARCHAR(45),
tipo VARCHAR(45),
titulo VARCHAR(1000),
id_pelicula VARCHAR(45),
mes VARCHAR(45),
anio VARCHAR(45),
PRIMARY KEY (auto_ID));
-- Tabla Detalles Pelis, con IMDB ,RT, Direccion, Guión, Argumento, Duración, Título
CREATE TABLE `Detalles_Peliculas` (
IMDB VARCHAR(25),
RT VARCHAR(25),
direccion VARCHAR(100),
guion VARCHAR(100),
argumento VARCHAR(3000),
duracion VARCHAR(45),
titulo VARCHAR(1000)
/*PRIMARY KEY (titulo)*/);
-- Tabla Detalles Actores, con nombre, año de nacimiento, por qué es conocido, qué hace, Premios
CREATE TABLE `Detalles_Actores` (
nombre VARCHAR(100),
nacimiento VARCHAR(45),
conocido VARCHAR(3000),
ocupacion VARCHAR(1000),
premios VARCHAR(100)
/*PRIMARY KEY (nombre)*/);
-- Tabla Premios, con fecha_celebracion, mejor_pelicula, mejor_director, mejor_actor, mejor_actriz
CREATE TABLE `Premios` (
fecha_celebracion INT,
mejor_pelicula VARCHAR(200),
mejor_director VARCHAR(45),
mejor_actor VARCHAR(45),
mejor_actriz VARCHAR(45));







