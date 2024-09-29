-- SCRIPTS PARA GENERAR UN INFORME PARA EL USUARIO

-- Informe: Tipos de Planes Disponibles
SELECT
  tipo AS 'Tipo de Plan',
  CONCAT('$', FORMAT(precio, 2)) AS 'Precio'
FROM
  planes;

-- Informe: Usuarios por País
SELECT pais AS 'País', COUNT(*) AS 'Cantidad de Usuarios'
FROM usuarios
GROUP BY pais
ORDER BY COUNT(*) DESC;

-- Informe: Usuarios según Edad
SELECT edad, COUNT(*) AS 'Cantidad de Usuarios'
FROM usuarios
GROUP BY edad
ORDER BY edad;


-- Informe: Series por Año
SELECT año AS 'Año', COUNT(*) AS 'Cantidad de Series'
FROM series
GROUP BY año
ORDER BY año DESC;






