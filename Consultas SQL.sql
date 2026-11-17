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
   ORDER BY
    SELECT *
    FROM autores
    WHERE estado != 'activo';

13. Mostrar todos los libros ordenados alfabeticamente por titulo

14. Mostrar todos los libros ordenados por año de participacion desde el mas reciente hasta el mas antiguo

15. Mostrar usuarios ordenados alfabeticamnete por nombre de usuario

16. Contar cuantos usuarios existen en la biblioteca

17. Contar cuantos libros existen en la biblioteca

18. Obtener el año de publicacion mas reciente de los libros

19. Obtener el año de publicacion mas antiguo

20. Calcular el promedio de los años de publicacion de lso libros

21. 