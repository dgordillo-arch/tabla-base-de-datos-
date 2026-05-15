CREATE TABLE "mytable" (
  "CREATE DATABASE UniversidadDB;" text
);

INSERT INTO "mytable" ("CREATE DATABASE UniversidadDB;")
VALUES
('USE UniversidadDB;'),
('CREATE TABLE Estudiantes('),
('EstudianteID INT PRIMARY KEY'),
('Nombre VARCHAR(100)'),
('Apellido VARCHAR(100)'),
('FechaNacimiento DATE'),
('CorreoElectronico VARCHAR(150)'),
(');'),
('CREATE TABLE Profesores('),
('ProfesorID INT PRIMARY KEY'),
('Nombre VARCHAR(100)'),
('Apellido VARCHAR(100)'),
('Departamento VARCHAR(100)'),
('CorreoElectronico VARCHAR(150)'),
(');'),
('CREATE TABLE Cursos('),
('CursoID INT PRIMARY KEY'),
('NombreCurso VARCHAR(100)'),
('Descripcion TEXT'),
('ProfesorID INT'),
('FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)'),
(');'),
('CREATE TABLE Inscripciones('),
('InscripcionID INT PRIMARY KEY'),
('EstudianteID INT'),
('CursoID INT'),
('FechaInscripcion DATE'),
('Calificacion DECIMAL(5'),
('FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID)'),
('FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)'),
(');');
