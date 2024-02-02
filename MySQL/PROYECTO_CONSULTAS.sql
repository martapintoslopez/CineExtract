-- Géneros han recibido más premios oscar
-- necesitamos tabla master y tabla premios

SELECT genero, COUNT(titulo)
	FROM `MASTER` AS m
INNER JOIN premios
ON m.titulo = premios.mejor_pelicula
GROUP BY genero;

-- ¿Qué género es el mejor valorado en IMDB?
-- necesitamos tabla master y tabla detalles_peliculas

SELECT genero, AVG(IMDB) AS media
	FROM `MASTER` AS m
INNER JOIN detalles_peliculas AS dpeli
ON m.titulo = dpeli.titulo
GROUP BY genero
ORDER BY media DESC;

-- ¿En que año se estrenaron más películas? -- Revisar mayus y minus
-- necesitamos la tabla master

SELECT anio, COUNT(titulo)
	FROM `MASTER`
	WHERE tipo = 'movie'
GROUP BY anio;

-- ¿En que año se estrenaron más cortos? -- Revisar mayus y minus
-- necesitamos la tabla master

SELECT anio, COUNT(titulo)
	FROM `MASTER`
	WHERE tipo = 'short'
GROUP BY anio;

-- ¿Qué corto es el mejor valorado en IMDB?
-- necesitamos la tabla detalles_peliculas y la tabla master

SELECT MAX(IMDB), dpeli.titulo
	FROM detalles_peliculas AS dpeli
    INNER JOIN `MASTER` AS m
    ON dpeli.titulo = m.titulo
	  WHERE tipo = 'short'
      GROUP BY dpeli.titulo;


-- ¿Cuál es la película mejor valorada en IMDB?


-- ¿Qué actor/actriz ha recibido más premios?


-- ¿Hay algun actor/actriz que haya recibido más de un premio Óscar?