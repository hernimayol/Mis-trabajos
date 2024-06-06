-- Crear tabla
CREATE TABLE peliculas (
id_pelicula INT AUTO_INCREMENT, 
titulo VARCHAR(100),
genero VARCHAR(100),
año_estreno INT,
nombre_director VARCHAR(100),
apellido_director VARCHAR(100),
duracion_minutos INT,
pais_origen VARCHAR(100),
PRIMARY KEY(id_pelicula));

-- Insertar un registro en la tabla 

INSERT INTO peliculas (titulo, genero, año_estreno, nombre_director, apellido_director, duracion_minutos)
VALUES ('Dune: Parte Dos', 'Ciencia ficción', 2024, 'Denis', 'Villeneuve', 166);


-- Insertar múltiples registros en la tabla 

INSERT INTO peliculas (titulo, genero, año_estreno, nombre_director, 
apellido_director, duracion_minutos)
VALUES
('Titanic', 'Drama', 1997, 'James', 'Cameron', 195),
('Oppenheimer', 'Drama', 2023, 'Christopher', 'Nolan', 120),
('El Señor de los Anillos: La Comunidad del Anillo', 'Fantasía', 2001, 'Peter', 'Jackson', 178),
('El Rey León', 'Animación', 1994, 'Roger', 'Allers', 88),
('Forrest Gump', 'Drama', 1994, 'Robert', 'Zemeckis', 142),
('Toy Story', 'Animación', 1995, 'John', 'Lasseter', 81),
('Jurassic Park', 'Ciencia ficción', 1993, 'Steven', 'Spielberg', 127),
('Avengers: Endgame', 'Acción', 2019, 'Anthony', 'Russo', 181),
('Harry Potter y la piedra filosofal', 'Fantasía', 2001, 'Chris', 'Columbus', 152),
('El Exorcista', 'Terror', 1973, 'William', 'Friedkin', 122),
('El caballero de la noche', 'Acción', 2008, 'Christopher', 'Nolan', 152),
('El viaje de Chihiro', 'Animación', 2001, 'Hayao', 'Miyazaki', 125),
('Matrix', 'Ciencia ficción', 1999, 'The', 'Wachowskis', 136),
('Star Wars: Episodio IV - Una nueva esperanza', 'Ciencia ficción', 1977, 'George', 'Lucas', 121),
('Parasite', 'Drama', 2019, 'Bong', 'Joon-ho', 132),
('Kimetsu no Yaiba: Mugen Train', 'Animación', 2020, 'Haruo', 'Sotozaki', 117),
('E.T., el extraterrestre', 'Ciencia ficción', 1982, 'Steven', 'Spielberg', 115),
('La La Land', 'Drama', 2016, 'Damien', 'Chazelle', 128),
('Mad Max: Furia en el camino', 'Acción', 2015, 'George', 'Miller', 120),
('Interestelar', 'Ciencia ficción', 2014, 'Christopher', 'Nolan', 169);

SELECT * FROM peliculas;