use moodifydb_andrescecconi;
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
