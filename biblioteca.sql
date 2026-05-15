-- =========================================
-- A. BASE DE DATOS BIBLIOTECA
-- =========================================

CREATE DATABASE BibliotecaDB;
USE BibliotecaDB;

-- =====================
-- TABLA AUTORES
-- =====================

CREATE TABLE Autores(
    AutorID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Nacionalidad VARCHAR(100)
);

-- =====================
-- TABLA LIBROS
-- =====================

CREATE TABLE Libros(
    LibroID INT PRIMARY KEY,
    Titulo VARCHAR(150),
    AutorID INT,
    Genero VARCHAR(100),
    ISBN VARCHAR(50),
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

-- =====================
-- TABLA MIEMBROS
-- =====================

CREATE TABLE Miembros(
    MiembroID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Direccion VARCHAR(150),
    Telefono VARCHAR(20)
);

-- =====================
-- TABLA PRESTAMOS
-- =====================

CREATE TABLE Prestamos(
    PrestamoID INT PRIMARY KEY,
    LibroID INT,
    MiembroID INT,
    Fecha_Prestamo DATE,
    Fecha_Devolucion DATE,
    FOREIGN KEY (LibroID) REFERENCES Libros(LibroID),
    FOREIGN KEY (MiembroID) REFERENCES Miembros(MiembroID)
);
