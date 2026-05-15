CREATE TABLE "mytable" (
  "CREATE DATABASE EmpresaDB;" text
);

INSERT INTO "mytable" ("CREATE DATABASE EmpresaDB;")
VALUES
('USE EmpresaDB;'),
('CREATE TABLE Departamentos('),
('DepartamentoID INT PRIMARY KEY'),
('NombreDepartamento VARCHAR(100)'),
('Ubicacion VARCHAR(100)'),
(');'),
('CREATE TABLE Empleados('),
('EmpleadoID INT PRIMARY KEY'),
('Nombre VARCHAR(100)'),
('Apellido VARCHAR(100)'),
('DepartamentoID INT'),
('Puesto VARCHAR(100)'),
('FechaContratacion DATE'),
('FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)'),
(');'),
('CREATE TABLE Proyectos('),
('ProyectoID INT PRIMARY KEY'),
('NombreProyecto VARCHAR(100)'),
('Descripcion TEXT'),
('FechaInicio DATE'),
('FechaFin DATE'),
(');'),
('CREATE TABLE Asignaciones('),
('AsignacionID INT PRIMARY KEY'),
('EmpleadoID INT'),
('ProyectoID INT'),
('Rol VARCHAR(100)'),
('FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)'),
('FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID)'),
(');');
