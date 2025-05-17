-- Relacion Estudiante
CREATE TABLE Estudiante(
	codigo INTEGER PRIMARY KEY,
	nombre VARCHAR(15) NOT NULL,
	apellido VARCHAR (15),
	correo	VARCHAR(30)
);

-- Relacion Asignatura
CREATE TABLE Asignatura(
	codigo INTEGER PRIMARY KEY,
	nombre_asignatura VARCHAR(15) NOT NULL,
	numero_horas INTEGER
);

-- Relacion Profesor
CREATE TABLE Profesor(
	ID INTEGER PRIMARY KEY,
	nombre VARCHAR(15) NOT NULL,
	facultad VARCHAR(15) NOT NULL
);

-- Relacion Curso
CREATE TABLE Curso(
	ID INTEGER PRIMARY KEY,
	Profesor_ID INTEGER,
	fecha DATE,
	FOREIGN KEY (Profesor_ID) REFERENCES Profesor(ID)
);

-- Relacion Horario
CREATE TABLE Horario(
	ID INTEGER PRIMARY KEY,
	Curso_ID INTEGER NOT NULL,
	dia VARCHAR(15),
	inicio TIME,
	fin TIME,
	FOREIGN KEY (Curso_ID) REFERENCES Curso(ID)
);

-- Relacion Aula
CREATE TABLE Aula(
	num INTEGER PRIMARY KEY,
	capacidad INTEGER,
	edificio VARCHAR(15),
	piso VARCHAR(15),
	etiqueta VARCHAR(15)
);

-- Relacion Estudiante-Curso
CREATE TABLE Matricula(
	Estudiante_codigo INTEGER,
	Curso_ID INTEGER,
	PRIMARY KEY (Estudiante_codigo, Curso_ID),
	FOREIGN KEY (Estudiante_codigo) REFERENCES Estudiante(codigo),
	FOREIGN KEY (Curso_ID) REFERENCES Curso(ID)
);

-- Relacion Curso-Aula
CREATE TABLE Presenta(
	Curso_ID INTEGER,
	Aula_num INTEGER,
	PRIMARY KEY (Curso_ID, Aula_num),
	FOREIGN KEY (Curso_ID) REFERENCES Curso(ID),
	FOREIGN KEY (Aula_num) REFERENCES Aula(num)
);

-- Relacion Asignatura-Curso
CREATE TABLE Incluye(
	Asignatura_codigo INTEGER,
	Curso_ID INTEGER,
	PRIMARY KEY (Asignatura_codigo, Curso_ID),
	FOREIGN KEY (Asignatura_codigo) REFERENCES Asignatura(codigo),
	FOREIGN KEY (Curso_ID) REFERENCES Curso(ID)
);






