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
(1, 201, '2025-01-10'),
(2, 201, '2025-01-12'),
(3, 202, '2025-01-11'),
(4, 203, '2025-01-13'),
(5, 204, '2025-01-14'),
(6, 205, '2025-01-15'),
(7, 204, '2025-01-16'),
(8, 203, '2025-01-17');

-- Relacionar cursos con asignaturas (Incluye)
INSERT INTO Incluye VALUES
(101, 1),
(101, 2),
(102, 3),
(103, 4),
(103, 5),
(103, 7),
(102, 8),
(101, 6);

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
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- Insertar matrícula (estudiantes en cursos)
INSERT INTO Matricula VALUES
(1, 1), (2, 1), (3, 2), (4, 2), (5, 1),
(6, 4), (7, 5), (8, 5), (9, 6), (10, 3);

-- Insertar horarios
INSERT INTO Horario VALUES
(1, 1, 'Lunes', '08:00', '10:00'),
(2, 2, 'Martes', '10:00', '12:00'),
(3, 3, 'Miércoles', '08:00', '10:00'),
(4, 4, 'Jueves', '12:00', '14:00'),
(5, 5, 'Viernes', '14:00', '16:00'),
(6, 6, 'Lunes', '10:00', '12:00'),
(7, 7, 'Martes', '08:00', '10:00'),
(8, 8, 'Miércoles', '12:00', '14:00');
