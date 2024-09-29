-- SCRIPT UNIFICADO
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

-- Insercion de datos a las tablas

-- tabla usuarios
INSERT INTO usuarios (nombre, edad, email, pais) VALUES
('Juan Perez', 30, 'juan.perez@example.com', 'Argentina'),
('Maria Gomez', 25, 'maria.gomez@example.com', 'Chile'),
('Carlos Lopez', 40, 'carlos.lopez@example.com', 'Mexico'),
('Ana Martinez', 22, 'ana.martinez@example.com', 'Peru'),
('Luis Fernandez', 35, 'luis.fernandez@example.com', 'Colombia'),
('Sofia Ramirez', 28, 'sofia.ramirez@example.com', 'Argentina'),
('Diego Torres', 32, 'diego.torres@example.com', 'Chile'),
('Lucia Sanchez', 27, 'lucia.sanchez@example.com', 'Mexico'),
('Miguel Diaz', 45, 'miguel.diaz@example.com', 'Peru'),
('Laura Morales', 29, 'laura.morales@example.com', 'Colombia'),
('Pedro Alvarez', 33, 'pedro.alvarez@example.com', 'Argentina'),
('Carmen Ruiz', 26, 'carmen.ruiz@example.com', 'Chile'),
('Jorge Herrera', 38, 'jorge.herrera@example.com', 'Mexico'),
('Elena Vargas', 24, 'elena.vargas@example.com', 'Peru'),
('Ricardo Gutierrez', 31, 'ricardo.gutierrez@example.com', 'Colombia');

-- tabla peliculas
INSERT INTO peliculas (titulo, año) VALUES
('Inception', 2010),
('The Matrix', 1999),
('Interstellar', 2014),
('The Dark Knight', 2008),
('Pulp Fiction', 1994),
('Fight Club', 1999),
('Forrest Gump', 1994),
('The Shawshank Redemption', 1994),
('The Godfather', 1972),
('The Lord of the Rings: The Return of the King', 2003),
('The Social Network', 2010),
('Gladiator', 2000),
('Titanic', 1997),
('Avatar', 2009),
('The Avengers', 2012);

-- tabla series
INSERT INTO series (titulo, año, temporada) VALUES
('Breaking Bad', 2008, 5),
('Stranger Things', 2016, 4),
('The Crown', 2016, 4),
('Game of Thrones', 2011, 8),
('The Mandalorian', 2019, 2),
('The Witcher', 2019, 2),
('Friends', 1994, 10),
('The Office', 2005, 9),
('Sherlock', 2010, 4),
('Black Mirror', 2011, 5),
('Westworld', 2016, 3),
('The Boys', 2019, 2),
('The Umbrella Academy', 2019, 2),
('Money Heist', 2017, 4),
('Dark', 2017, 3);

-- tabla directores
INSERT INTO directores (nombre, edad, pais) VALUES
('Christopher Nolan', 50, 'UK'),
('Lana Wachowski', 55, 'USA'),
('Quentin Tarantino', 58, 'USA'),
('David Fincher', 59, 'USA'),
('Robert Zemeckis', 69, 'USA'),
('Frank Darabont', 62, 'USA'),
('Francis Ford Coppola', 82, 'USA'),
('Peter Jackson', 60, 'New Zealand'),
('David Fincher', 59, 'USA'),
('Ridley Scott', 83, 'UK'),
('James Cameron', 67, 'Canada'),
('Joss Whedon', 57, 'USA'),
('Vince Gilligan', 54, 'USA'),
('The Duffer Brothers', 39, 'USA'),
('Peter Morgan', 57, 'UK');

INSERT INTO directores (nombre, edad, pais) VALUES
('Vince Gilligan', 57, 'Estados Unidos'),
('Shawn Levy', 55, 'Canadá'),
('Peter Morgan', 60, 'Reino Unido'),
('David Benioff', 53, 'Estados Unidos'),
('Jon Favreau', 57, 'Estados Unidos'),
('Lauren Schmidt Hissrich', 45, 'Estados Unidos'),
('David Crane', 66, 'Estados Unidos'),
('Greg Daniels', 60, 'Estados Unidos'),
('Steven Moffat', 62, 'Reino Unido'),
('Charlie Brooker', 53, 'Reino Unido'),
('Jonathan Nolan', 48, 'Reino Unido'),
('Eric Kripke', 50, 'Estados Unidos'),
('Steve Blackman', 52, 'Canadá'),
('Álex Pina', 56, 'España'),
('Baran bo Odar', 45, 'Alemania');

-- tabla actores
INSERT INTO actores (nombre, edad, pais) VALUES
('Leonardo DiCaprio', 46, 'USA'),
('Keanu Reeves', 57, 'Canada'),
('Matthew McConaughey', 51, 'USA'),
('Christian Bale', 47, 'UK'),
('John Travolta', 67, 'USA'),
('Brad Pitt', 57, 'USA'),
('Tom Hanks', 65, 'USA'),
('Morgan Freeman', 84, 'USA'),
('Marlon Brando', 80, 'USA'),
('Elijah Wood', 40, 'USA'),
('Jesse Eisenberg', 37, 'USA'),
('Russell Crowe', 57, 'New Zealand'),
('Kate Winslet', 45, 'UK'),
('Sam Worthington', 44, 'Australia'),
('Robert Downey Jr.', 56, 'USA');

INSERT INTO actores (nombre, edad, pais) VALUES
('Bryan Cranston', 67, 'Estados Unidos'),
('Aaron Paul', 44, 'Estados Unidos'),
('Winona Ryder', 52, 'Estados Unidos'),
('David Harbour', 49, 'Estados Unidos'),
('Claire Foy', 39, 'Reino Unido'),
('Matt Smith', 41, 'Reino Unido'),
('Emilia Clarke', 37, 'Reino Unido'),
('Kit Harington', 37, 'Reino Unido'),
('Pedro Pascal', 49, 'Chile'),
('Gina Carano', 42, 'Estados Unidos'),
('Henry Cavill', 41, 'Reino Unido'),
('Anya Chalotra', 27, 'Reino Unido'),
('Jennifer Aniston', 55, 'Estados Unidos'),
('Courteney Cox', 60, 'Estados Unidos'),
('Steve Carell', 62, 'Estados Unidos'),
('Rainn Wilson', 58, 'Estados Unidos'),
('Benedict Cumberbatch', 48, 'Reino Unido'),
('Martin Freeman', 52, 'Reino Unido'),
('Daniel Lapaine', 53, 'Australia'),
('Hannah John-Kamen', 34, 'Reino Unido'),
('Evan Rachel Wood', 36, 'Estados Unidos'),
('Thandiwe Newton', 51, 'Reino Unido'),
('Karl Urban', 52, 'Nueva Zelanda'),
('Jack Quaid', 32, 'Estados Unidos'),
('Elliot Page', 37, 'Canadá'),
('Tom Hopper', 39, 'Reino Unido'),
('Úrsula Corberó', 34, 'España'),
('Álvaro Morte', 49, 'España'),
('Louis Hofmann', 27, 'Alemania'),
('Lisa Vicari', 27, 'Alemania');

-- tabla playlists
INSERT INTO playlists (categoria) VALUES
('Acción'),
('Drama'),
('Comedia'),
('Ciencia Ficción'),
('Thriller'),
('Romance'),
('Aventura'),
('Animación'),
('Documental'),
('Fantasía'),
('Musical'),
('Misterio'),
('Terror'),
('Biografía'),
('Histórico');

-- tabla generos 
INSERT INTO generos (categoria) VALUES
('Ciencia Ficción'),
('Thriller'),
('Drama'),
('Comedia'),
('Romance'),
('Aventura'),
('Animación'),
('Documental'),
('Fantasía'),
('Musical'),
('Misterio'),
('Terror'),
('Biografía'),
('Histórico'),
('Acción');

-- tabla planes 
INSERT INTO planes (tipo, precio) VALUES
('Básico', 9.99),
('Premium', 19.99),
('Familiar', 29.99),
('Anual', 99.99),
('Mensual', 9.99);

-- tabla paises
INSERT INTO paises (categoria) VALUES
('Argentina'),
('Chile'),
('Mexico'),
('Peru'),
('Colombia'),
('Brasil'),
('Uruguay'),
('Paraguay'),
('Bolivia'),
('Ecuador'),
('Venezuela'),
('Panama'),
('Costa Rica'),
('Guatemala'),
('Honduras');

-- cambio en tabla ususarios
ALTER TABLE usuarios ADD COLUMN id_pais INT;

-- modo de actualizacion segura on/off
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;

-- relacion pais con id_pais
UPDATE usuarios AS u
JOIN paises AS p ON u.pais = p.categoria
SET u.id_pais = p.id_pais;

-- eliminacion columna pais
-- ALTER TABLE usuarios DROP COLUMN pais;


-- cambio en las tablas peliculas y series (se agrega columna de actores y directores)
ALTER TABLE peliculas ADD COLUMN id_actor INT, ADD COLUMN id_director INT;
ALTER TABLE series ADD COLUMN id_actor INT, ADD COLUMN id_director INT;

-- actualizacion de las tablas peliculas
UPDATE peliculas SET id_actor = 1, id_director = 1 WHERE id_pelicula = 1;
UPDATE peliculas SET id_actor = 2, id_director = 2 WHERE id_pelicula = 2;
UPDATE peliculas SET id_actor = 3, id_director = 1 WHERE id_pelicula = 3;
UPDATE peliculas SET id_actor = 4, id_director = 1 WHERE id_pelicula = 4;
UPDATE peliculas SET id_actor = 5, id_director = 3 WHERE id_pelicula = 5;
UPDATE peliculas SET id_actor = 6, id_director = 4 WHERE id_pelicula = 6;
UPDATE peliculas SET id_actor = 7, id_director = 5 WHERE id_pelicula = 7;
UPDATE peliculas SET id_actor = 8, id_director = 6 WHERE id_pelicula = 8;
UPDATE peliculas SET id_actor = 9, id_director = 7 WHERE id_pelicula = 9;
UPDATE peliculas SET id_actor = 10, id_director = 8 WHERE id_pelicula = 10;
UPDATE peliculas SET id_actor = 11, id_director = 9 WHERE id_pelicula = 11;
UPDATE peliculas SET id_actor = 12, id_director = 10 WHERE id_pelicula = 12;
UPDATE peliculas SET id_actor = 13, id_director = 11 WHERE id_pelicula = 13;
UPDATE peliculas SET id_actor = 14, id_director = 11 WHERE id_pelicula = 14;
UPDATE peliculas SET id_actor = 15, id_director = 12 WHERE id_pelicula = 15;

-- actualizacion tabla series
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Bryan Cranston' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Vince Gilligan' LIMIT 1) WHERE titulo = 'Breaking Bad';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Winona Ryder' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Shawn Levy' LIMIT 1) WHERE titulo = 'Stranger Things';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Claire Foy' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Peter Morgan' LIMIT 1) WHERE titulo = 'The Crown';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Emilia Clarke' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'David Benioff' LIMIT 1) WHERE titulo = 'Game of Thrones';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Pedro Pascal' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Jon Favreau' LIMIT 1) WHERE titulo = 'The Mandalorian';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Henry Cavill' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Lauren Schmidt Hissrich' LIMIT 1) WHERE titulo = 'The Witcher';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Jennifer Aniston' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'David Crane' LIMIT 1) WHERE titulo = 'Friends';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Steve Carell' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Greg Daniels' LIMIT 1) WHERE titulo = 'The Office';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Benedict Cumberbatch' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Steven Moffat' LIMIT 1) WHERE titulo = 'Sherlock';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Daniel Lapaine' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Charlie Brooker' LIMIT 1) WHERE titulo = 'Black Mirror';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Evan Rachel Wood' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Jonathan Nolan' LIMIT 1) WHERE titulo = 'Westworld';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Karl Urban' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Eric Kripke' LIMIT 1) WHERE titulo = 'The Boys';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Elliot Page' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Steve Blackman' LIMIT 1) WHERE titulo = 'The Umbrella Academy';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Úrsula Corberó' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Álex Pina' LIMIT 1) WHERE titulo = 'Money Heist';
UPDATE series SET id_actor = (SELECT id_actor FROM actores WHERE nombre = 'Louis Hofmann' LIMIT 1), id_director = (SELECT id_director FROM directores WHERE nombre = 'Baran bo Odar' LIMIT 1) WHERE titulo = 'Dark';


-- Creacion tablas intermedias (peliculas-actores, peliculas-directores, series-actores, series-directores)
CREATE TABLE peliculas_actores (
    id_pelicula INT,
    id_actor INT,
    PRIMARY KEY (id_pelicula, id_actor),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula),
    FOREIGN KEY (id_actor) REFERENCES actores(id_actor)
);

CREATE TABLE peliculas_directores (
id_pelicula INT,
id_director INT,
PRIMARY KEY (id_pelicula, id_director),
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula),
FOREIGN KEY (id_director) REFERENCES directores(id_director)
);

CREATE TABLE series_actores (
    id_serie INT,
    id_actor INT,
    PRIMARY KEY (id_serie, id_actor),
    FOREIGN KEY (id_serie) REFERENCES series(id_serie),
    FOREIGN KEY (id_actor) REFERENCES actores(id_actor)
);

CREATE TABLE series_directores (
id_serie INT,
id_director INT,
PRIMARY KEY (id_serie, id_director),
FOREIGN KEY (id_serie) REFERENCES series(id_serie),
FOREIGN KEY (id_director) REFERENCES directores(id_director)
);


-- DEFINICION DE STORED PROCEDURES PARA CARGA DE DATOS EN TABLAS INTERMEDIAS
-- SP para peliculas_actores
DELIMITER //
CREATE PROCEDURE InsertarActoresPeliculas()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE ActorID INT;
    DECLARE PeliculaID INT;
    DECLARE actor_cursor CURSOR FOR SELECT id_actor, id_pelicula FROM peliculas;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN actor_cursor;
    FETCH actor_cursor INTO ActorID, PeliculaID;

    WHILE done = 0 DO
        INSERT INTO peliculas_actores (id_actor, id_pelicula)
        VALUES (ActorID, PeliculaID);
        FETCH actor_cursor INTO ActorID, PeliculaID;
    END WHILE;
    CLOSE actor_cursor;
END //
DELIMITER ;

-- SP para peliculas_directores
DELIMITER //
CREATE PROCEDURE InsertarDirectoresPeliculas()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE DirectorID INT;
    DECLARE PeliculaID INT;
    DECLARE director_cursor CURSOR FOR SELECT id_director, id_pelicula FROM peliculas;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN director_cursor;
    FETCH director_cursor INTO DirectorID, PeliculaID;

    WHILE done = 0 DO
        INSERT INTO peliculas_directores (id_director, id_pelicula)
        VALUES (DirectorID, PeliculaID);
        FETCH director_cursor INTO DirectorID, PeliculaID;
    END WHILE;
    CLOSE director_cursor;
END //
DELIMITER ;

-- SP para series_actores
DELIMITER //
CREATE PROCEDURE InsertarActoresSeries()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE ActorID INT;
    DECLARE SerieID INT;
    DECLARE actor_cursor CURSOR FOR SELECT id_actor, id_serie FROM series;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN actor_cursor;
    FETCH actor_cursor INTO ActorID, SerieID;

    WHILE done = 0 DO
        INSERT INTO series_actores (id_actor, id_serie)
        VALUES (ActorID, SerieID);
        FETCH actor_cursor INTO ActorID, SerieID;
    END WHILE;

    CLOSE actor_cursor;
END //
DELIMITER ;

-- SP para series_directores 
DELIMITER //
CREATE PROCEDURE InsertarDirectoresSeries()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE DirectorID INT;
    DECLARE SerieID INT;
    DECLARE director_cursor CURSOR FOR SELECT id_director, id_serie FROM series;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN director_cursor;
    FETCH director_cursor INTO DirectorID, SerieID;

    WHILE done = 0 DO
        INSERT INTO series_directores (id_director, id_serie)
        VALUES (DirectorID, SerieID);
        FETCH director_cursor INTO DirectorID, SerieID;
    END WHILE;
    CLOSE director_cursor;
END //
DELIMITER ;


-- LLAMADA A LOS STORED PROCEDURES
CALL InsertarActoresPeliculas();
CALL InsertarDirectoresPeliculas();
CALL InsertarActoresSeries();
CALL InsertarDirectoresSeries();



-- VISTAS
-- vista de usuarios por pais
CREATE VIEW vista_usuarios_por_pais AS
SELECT p.categoria AS pais, COUNT(*) AS cantidad_usuarios
FROM usuarios u
JOIN paises p ON u.id_pais = p.id_pais
GROUP BY p.categoria;

-- vista de actores por pais
CREATE VIEW vista_actores_por_pais AS
SELECT a.nombre AS actor, a.pais
FROM actores a
ORDER BY a.pais;

-- vista de directores por pais
CREATE VIEW vista_directores_por_pais AS
SELECT d.nombre AS director, d.pais
FROM directores d
ORDER BY d.pais;

-- vista de temporadas por serie
CREATE VIEW vista_temporadas_por_serie AS
SELECT s.titulo AS serie, s.temporada
FROM series s
ORDER BY s.temporada DESC;
 
-- vista de peliculas por año
CREATE VIEW vista_peliculas_por_año AS
SELECT p.año, COUNT(*) AS cantidad_peliculas
FROM peliculas p
GROUP BY p.año
ORDER BY p.año;

-- vista de series por año
CREATE VIEW vista_series_por_año AS
SELECT s.año, COUNT(*) AS cantidad_series
FROM series s
GROUP BY s.año
ORDER BY s.año;

SELECT * FROM vista_actores_por_pais;
SELECT * FROM vista_directores_por_pais;
SELECT * FROM vista_usuarios_por_pais;
SELECT * FROM vista_temporadas_por_serie;
SELECT * FROM vista_peliculas_por_año;
SELECT * FROM vista_series_por_año;



-- FUNCIONES
-- calcular edad promedio de ususarios
DELIMITER //
CREATE FUNCTION calcular_edad_promedio()
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE edad_promedio DECIMAL(5,2);
    SELECT AVG(edad) INTO edad_promedio FROM usuarios;
    RETURN edad_promedio;
END //

-- contar series por director
DELIMITER //
CREATE FUNCTION contar_series_por_director(director_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad_series INT;
    SELECT COUNT(*) INTO cantidad_series FROM series_directores WHERE id_director = director_id;
    RETURN cantidad_series;
END //
DELIMITER ;


SELECT calcular_edad_promedio();
SELECT contar_series_por_director(25);