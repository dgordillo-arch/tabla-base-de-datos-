CREATE TABLE "mytable" (
  "CREATE DATABASE BibliotecaDB;" text
);

INSERT INTO "mytable" ("CREATE DATABASE BibliotecaDB;")
VALUES
('USE BibliotecaDB;'),
('CREATE TABLE Autores('),
('AutorID INT PRIMARY KEY'),
('Nombre VARCHAR(100)'),
('Apellido VARCHAR(100)'),
('Nacionalidad VARCHAR(100)'),
(');'),
('CREATE TABLE Libros('),
('LibroID INT PRIMARY KEY'),
('Titulo VARCHAR(100)'),
('AutorID INT'),
('Genero VARCHAR(100)'),
('ISBN VARCHAR(50)'),
('FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)'),
(');'),
('CREATE TABLE Miembros('),
('MiembroID INT PRIMARY KEY'),
('Nombre VARCHAR(100)'),
('Apellido VARCHAR(100)'),
('Direccion VARCHAR(150)'),
('Telefono VARCHAR(20)'),
(');'),
('CREATE TABLE Prestamos('),
('PrestamoID INT PRIMARY KEY'),
('LibroID INT'),
('MiembroID INT'),
('Fecha_Prestamo DATE'),
('Fecha_Devolucion DATE'),
('FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)'),
('FOREIGN KEY (MiembroID) REFERENCES Miembros(MiembroID)'),
(');');
