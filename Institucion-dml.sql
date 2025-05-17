-- Insertar estudiantes
INSERT INTO Estudiante VALUES
(1, 'Ana', 'Lopez', 'ana.lopez@email.com'),
(2, 'Carlos', 'Diaz', 'carlos.diaz@email.com'),
(3, 'Luisa', 'Mora', 'luisa.mora@email.com'),
(4, 'Pedro', 'Suarez', 'pedro.suarez@email.com'),
(5, 'Juan', 'Martinez', 'juan.martinez@email.com'),
(6, 'Marta', 'Ramirez', 'marta.ramirez@email.com'),
(7, 'David', 'Reyes', 'david.reyes@email.com'),
(8, 'Sofia', 'Cruz', 'sofia.cruz@email.com'),
(9, 'Andres', 'Vega', 'andres.vega@email.com'),
(10, 'Elena', 'Paredes', 'elena.paredes@email.com');

-- Insertar asignaturas
INSERT INTO Asignatura VALUES
(101, 'Cálculo I', 64),
(102, 'Física I', 60),
(103, 'Programación', 72);

-- Insertar profesores
INSERT INTO Profesor VALUES
(201, 'Ursula Iguaran', 'Ingeniería'),
(202, 'Mario Vargas', 'Física'),
(203, 'Laura Restrepo', 'Matemáticas'),
(204, 'Gabriel Márquez', 'Informática'),
(205, 'Julio Cortázar', 'Literatura');

-- Insertar cursos
INSERT INTO Curso VALUES
(301, 201, '2025-01-10'),
(302, 201, '2025-01-12'),
(303, 202, '2025-01-11'),
(304, 203, '2025-01-13'),
(305, 204, '2025-01-14'),
(306, 205, '2025-01-15'),
(307, 204, '2025-01-16'),
(308, 203, '2025-01-17');

-- Relacionar cursos con asignaturas (Incluye)
INSERT INTO Incluye VALUES
(101, 301),
(101, 302),
(102, 303),
(103, 304),
(103, 305),
(103, 307),
(102, 308),
(101, 306);

-- Insertar aulas
INSERT INTO Aula VALUES
(1, 40, 'A', 1, '101A'),
(2, 30, 'B', 2, '202B'),
(3, 50, 'C', 1, '103C'),
(4, 35, 'D', 3, '304D'),
(5, 45, 'A', 2, '205A'),
(6, 20, 'E', 1, '101E'),
(7, 40, 'F', 3, '303F'),
(8, 25, 'G', 2, '202G'),
(9, 30, 'H', 1, '101H');

-- Relacionar cursos con aulas (Presenta)
INSERT INTO Presenta VALUES
(301, 1),
(302, 2),
(303, 3),
(304, 4),
(305, 5),
(306, 6),
(307, 7),
(308, 8);

-- Insertar matrícula (estudiantes en cursos)
INSERT INTO Matricula VALUES
(1, 301), (2, 301), (3, 302), (4, 302), (5, 301),
(6, 304), (7, 305), (8, 305), (9, 306), (10, 303);

-- Insertar horarios
INSERT INTO Horario VALUES
(1, 301, 'Lunes', '08:00', '10:00'),
(2, 302, 'Martes', '10:00', '12:00'),
(3, 303, 'Miércoles', '08:00', '10:00'),
(4, 304, 'Jueves', '12:00', '14:00'),
(5, 305, 'Viernes', '14:00', '16:00'),
(6, 306, 'Lunes', '10:00', '12:00'),
(7, 307, 'Martes', '08:00', '10:00'),
(8, 308, 'Miércoles', '12:00', '14:00');
