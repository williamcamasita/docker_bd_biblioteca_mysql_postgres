Consultas SQL
SELECT

1. Mostrar todos los usuarios registrados en la biblioteca
    SELECT * 
    FROM usuarios 

2. Mostrar unicamente el nombre de usuario y correo electronico de todos los usuarioos
    SELECT username, email 
    FROM usuarios 
3. mostrar el titulo ISBN y editorial de todos los libros
    
    SELECT titulo, isbn, editorial
    FROM libros

4. mostrar los nombres y profesiones de todos los autores

    SELECT nombre_completo, prefesion
    FROM autores;
    
5. mostrar el nombre y apellido y detalle de todas las categorias

WHERE

6. mostrar los usuarios cuyo nombre de usuario sea "carlos"
    SELECT username
    FROM usuarios
    WHERE username = 'carlos';
7. mostrar todos los libros que pertenecen a la categoria con id 1
    
    SELECT *
    FROM libros
    WHERE categoria_id= 1 ;

8. Mostrar los autores que tiene estado activo
    SELECT *
    FROM autores
    WHERE estado = 'activo';
    
9. Mostrar los libros publicados despues del año 2019
    
    SELECT *
    FROM libros
    WHERE anio_publicacion > 2019;

10. Mostrar los libros que pertenecen a la categoria 1 y fueron publicados despues del año 2020
    
    SELECT *
    FROM libros
    WHERE categoria_id = 1 AND anio_publicacion > 2020;

11. Mostrar los libros que pertenecen a la categoria 1 o a la categoria 2
    
    SELECT *
    FROM libros
    WHERE categoria_id = 1 OR categoria_id = 2; 

12. Mostrar todos los autores que no se encuentren activos

    SELECT *
    FROM autores
    WHERE NOT estado = true;

    ORDER BY
13. Mostrar todos los libros ordenados alfabeticamente por titulo

    SELECT *
    FROM libros
    ORDER BY titulo ASC;

14. Mostrar todos los libros ordenados por año de participacion desde el mas reciente hasta el mas antiguo

    SELECT *
    FROM libros
    ORDER BY anio_publicacion DESC;

15. Mostrar usuarios ordenados alfabeticamnete por nombre de usuario

    SELECT *
    FROM usuarios
    ORDER BY username ASC;
FUNCIONES DE AGREGACION (CONT, MAX, MIN, AVG)
16. Contar cuantos usuarios existen en la biblioteca
    
    SELECT COUNT(*) AS total_usuarios
    FROM usuarios;

17. Contar cuantos libros existen en la biblioteca

    SELECT COUNT(*) AS total_libros
    FROM libros;

18. Obtener el año de publicacion mas reciente de los libros
    
    SELECT MAX(anio_publicacion) AS anio_mas_reciente
    FROM libros;

19. Obtener el año de publicacion mas antiguo
    
    SELECT MIN (anio_publicacion) AS anio_mas_antiguo
    FROM libros;

20. Calcular el promedio de los años de publicacion de los libros

    SELECT AVG(anio_publicacion) AS promedio
    FROM libros;
EJERCICIO DE AGRUPACION

21. Mostrar cuantos libros existen en cada categoria
    SELECT categoria_id, COUNT(*) AS total_libros
    FROM libros
    GROUP BY categoria_id;

22. Mostrar cuantos libros fueron publicados en cada año

    SELECT anio_publicacion, COUNT(*) AS total_libros
    FROM libros
    GROUP BY anio_publicacion;

INNER JOIN
-Devuelve unicamente los registros que tienen coincidencia en abas tablas

23. Mostrar los libros junto con el nombre de la categoria 

    SELECT c.nombre AS Nombre_Categoria, l.titulo AS Libro
    FROM libros l, categorias c
    WHERE l.categoria_id = c.id;

    -- INNER JOIN
    SELECT l.titulo, c.nombre AS categoria
    FROM libros l
    INNER JOIN categorias c ON l.categoria_id = c.id;

24. Mostrar los prestamos junto con el nombre del usuario que realizo cada prestamos

    SELECT prestamos.*, usuarios.username
    FROM prestamos, usuarios
    WHERE prestamos.usuario_id = usuarios.id;

    -- INNER JOIN
    SELECT p.*, u.username
    FROM prestamos p
    INNER JOIN usuarios u ON p.usuario_id = u.id;

25. Mostrar los libros junto con los nombres de los autores 

    SELECT l.*, a.nombre_completo AS AUTOR
    FROM libros l
    INNER JOIN autor_libro al ON l.id = al.libro_id
    INNER JOIN autores a ON al.autor_id = a.id;

26. 