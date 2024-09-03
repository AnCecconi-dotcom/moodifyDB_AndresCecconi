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





