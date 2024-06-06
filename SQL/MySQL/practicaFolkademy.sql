SHOW DATABASES;
-- DDL
CREATE DATABASE streaming_db;

USE streaming_db;

CREATE TABLE peliculas (
id_pelicula INT AUTO_INCREMENT,
titulo VARCHAR(100),
genero VARCHAR(100),
año_estreno INT,
nombre_director VARCHAR(100),
apellido_director VARCHAR(100),
duracion_minutos INT,
pais_origen VARCHAR(100),
primary key(id_pelicula));

DESC peliculas;

-- DML

INSERT INTO peliculas(titulo, genero, año_estreno, nombre_director, apellido_director, duracion_minutos)
VALUES('Dune: Parte Dos', 'Ciencia Ficcion', 2024, 'Denis', 'Villeneuve', 166);

-- DQL

SELECT *
FROM peliculas;

SELECT titulo
FROM peliculas;

INSERT INTO peliculas (titulo, genero, año_estreno, nombre_director, 
apellido_director, duracion_minutos)
VALUES
('Titanic', 'Drama', 1997, 'James', 'Cameron', 195),
('Oppenheimer', 'Drama', 2023, 'Christopher', 'Nolan', 120),
('El Señor de los Anillos: La Comunidad del Anillo', 'Fantasía', 2001, 'Peter', 'Jackson', 178),
('El Rey León', 'Animación', 1994, 'Roger', 'Allers', 88),
('Forrest Gump', 'Drama', 1994, 'Robert', 'Zemeckis', 142),
('Toy Story', 'Animación', 1995, 'John', 'Lasseter', 81);


SELECT *
FROM peliculas;

UPDATE peliculas
SET duracion_minutos = 165
WHERE titulo = 'Dune: Parte Dos';

SELECT *
FROM peliculas;

DELETE FROM peliculas
WHERE año_estreno < 2000;

SELECT *
FROM peliculas;

SELECT titulo, duracion_minutos / 60.0 AS duracion_horas
FROM peliculas;

SELECT CONCAT(nombre_director, ' ', apellido_director) AS director
FROM peliculas;

SELECT MAX(duracion_minutos) AS duracion_maxima
FROM peliculas;

SELECT MIN(duracion_minutos) AS duracion_minima
FROM peliculas;

SELECT genero, COUNT(*) AS cantidad
FROM peliculas
GROUP BY genero;

SELECT genero, COUNT(*) AS cantidad
FROM peliculas
GROUP BY genero
HAVING COUNT(*) >= 5;


SELECT titulo
FROM peliculas
WHERE año_estreno > 2000;

SELECT *
FROM peliculas
WHERE duracion_minutos >120;

SELECT titulo, año_estreno
FROM peliculas
ORDER BY año_estreno ASC;

SELECT *
FROM peliculas
LIMIT 5;