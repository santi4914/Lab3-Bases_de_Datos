-- 1. Correos del estudiante con id = 5
SELECT e.correo
  FROM Estudiante AS e
 WHERE e.codigo = 5;

 -- 2. Nombre y número de horas de los cursos que dicta la profesora 'Ursula Iguaran'
 SELECT a.nombre_asignatura AS asignatura,
       a.numero_horas      AS horas
  FROM Curso AS c
  JOIN Profesor AS p
    ON c.Profesor_ID = p.ID
  JOIN Incluye AS i
    ON i.Curso_ID     = c.ID
  JOIN Asignatura AS a
    ON a.codigo       = i.Asignatura_codigo
 WHERE p.nombre = 'Ursula Iguaran';

 -- 3. Nombre y correo de los estudiantes que están cursando la asignatura 'Cálculo I'
 SELECT  e.nombre,
         e.correo
  FROM Estudiante AS e
  JOIN Matricula AS m
    ON m.Estudiante_codigo = e.codigo
  JOIN Curso AS c
    ON c.ID                = m.Curso_ID
  JOIN Incluye AS i
    ON i.Curso_ID          = c.ID
  JOIN Asignatura AS a
    ON a.codigo            = i.Asignatura_codigo
 WHERE a.nombre_asignatura = 'Cálculo I';


-- 4. Aulas, horario, profesor y asignatura del curso con id = 3
 SELECT au.edificio,
       au.piso,
       au.etiqueta,
       h.dia,
       h.inicio,
       h.fin,
       p.nombre   AS profesor,
       a.nombre_asignatura,
       a.numero_horas
  FROM Curso AS c
  -- Aulas asignadas al curso
  JOIN Presenta AS pr
    ON pr.Curso_ID = c.ID
  JOIN Aula AS au
    ON au.num     = pr.Aula_num
  -- Horario del curso
  JOIN Horario AS h
    ON h.Curso_ID = c.ID
  -- Profesor que imparte
  JOIN Profesor AS p
    ON p.ID       = c.Profesor_ID
  -- Asignatura dictada en el curso
  JOIN Incluye AS i
    ON i.Curso_ID          = c.ID
  JOIN Asignatura AS a
    ON a.codigo            = i.Asignatura_codigo
 WHERE c.ID = 3;