-- Creacion de la base de datos
CREATE DATABASE moodifydb_andrescecconi;
USE moodifydb_andrescecconi;

-- Tabla Usuarios
CREATE TABLE usuarios (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
edad INT,
email VARCHAR(100) NOT NULL,
pais VARCHAR(100)
);

-- Tabla Peliculas
CREATE TABLE peliculas (
id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100) NOT NULL,
año INT
);

-- Tabla Series
CREATE TABLE series (
id_serie INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100) NOT NULL,
año INT,
temporada INT
);

-- Tabla Directores
CREATE TABLE directores (
id_director INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
edad INT,
pais VARCHAR(100)
);

-- Tabla Actores
CREATE TABLE actores (
id_actor INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
edad INT,
pais VARCHAR(100)
);

-- Tabla Playlists
CREATE TABLE playlists (
id_playlist INT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(100) NOT NULL
);

-- Tabla Generos
CREATE TABLE generos (
id_genero INT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(100) NOT NULL
);

-- Tabla Planes
CREATE TABLE planes (
id_planes INT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100) NOT NULL,
precio DECIMAL (10, 2) NOT NULL
);

-- Tabla Paises
CREATE TABLE paises (
id_pais INT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(100) NOT NULL
);














