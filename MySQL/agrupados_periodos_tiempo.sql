USE `Netchill`;

SELECT *
FROM `MASTER`;
-- agrupar por genero
SELECT COUNT(auto_ID) AS `numero_peliculas`, genero
	FROM `MASTER`
    GROUP BY genero
    Having anio = 1990
    ORDER BY `numero_peliculas` DESC;

SELECT (SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (1990.0))
		FROM `MASTER`; -- 3470

-- agrupar por decadas
SELECT (SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (1990.0, 1991.0, 1992.0, 1993.0, 1994.0, 1995.0, 1996.0, 1997.0, 1998.0, 1999.0)) AS `numero_peliculas_90's`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2000.0, 2001.0, 2002.0, 2003.0, 2004.0, 2005.0, 2006.0, 2007.0, 2008.0, 2009.0)) AS `numero_peliculas_00's`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2010.0, 2011.0, 2012.0, 2013.0, 2014.0, 2015.0, 2016.0, 2017.0, 2018.0, 2019.0)) AS `numero_peliculas_10's`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2020.0, 2021.0, 2022.0, 2023.0)) AS `numero_peliculas_20's`
		FROM `MASTER`
        GROUP BY `numero_peliculas_90's`, `numero_peliculas_00's`, `numero_peliculas_10's`, `numero_peliculas_20's`;

-- Agrupadas cada 2 años
SELECT (SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (1990.0, 1991.0)) AS `numero_peliculas_90-91`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (1992.0, 1993.0)) AS `numero_peliculas_92-93`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (1994.0, 1995.0)) AS `numero_peliculas_94-95`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (1996.0, 1997.0)) AS `numero_peliculas_96-97`,
        (SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (1998.0, 1999.0)) AS `numero_peliculas_98-99`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2000.0, 2001.0)) AS `numero_peliculas_00-01`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2002.0, 2003.0)) AS `numero_peliculas_02-03`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2004.0, 2005.0)) AS `numero_peliculas_04-05`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2006.0, 2007.0)) AS `numero_peliculas_06-07`,
        (SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2008.0, 2009.0)) AS `numero_peliculas_08-09`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2010.0, 2011.0)) AS `numero_peliculas_10-11`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2012.0, 2013.0)) AS `numero_peliculas_12-13`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2014.0, 2015.0)) AS `numero_peliculas_14-15`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2016.0, 2017.0)) AS `numero_peliculas_16-17`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2018.0, 2019.0)) AS `numero_peliculas_18-19`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN (2020.0, 2021.0)) AS `numero_peliculas_20-21`,
		(SELECT COUNT(auto_ID)
			FROM `MASTER`
			WHERE anio IN ( 2022.0, 2023.0)) AS `numero_peliculas_22-23`
		FROM `MASTER`
        GROUP BY `numero_peliculas_90-91`,`numero_peliculas_92-93`,`numero_peliculas_94-95`,`numero_peliculas_96-97`,`numero_peliculas_98-99`,`numero_peliculas_00-01`,`numero_peliculas_02-03`,`numero_peliculas_04-05`,`numero_peliculas_06-07`,`numero_peliculas_08-09`,`numero_peliculas_10-11`,`numero_peliculas_12-13`,`numero_peliculas_14-15`,`numero_peliculas_16-17`,`numero_peliculas_18-19`,`numero_peliculas_20-21`,`numero_peliculas_22-23`;
