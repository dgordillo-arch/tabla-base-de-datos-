CREATE TABLE "mytable" (
  "CREATE DATABASE TiendaDB;" text
);

INSERT INTO "mytable" ("CREATE DATABASE TiendaDB;")
VALUES
('USE TiendaDB;'),
('CREATE TABLE Clientes('),
('ClienteID INT PRIMARY KEY'),
('Nombre VARCHAR(100)'),
('Apellido VARCHAR(100)'),
('CorreoElectronico VARCHAR(150)'),
('Direccion VARCHAR(150)'),
(');'),
('CREATE TABLE Productos('),
('ProductoID INT PRIMARY KEY'),
('Nombre VARCHAR(100)'),
('Descripcion TEXT'),
('Precio DECIMAL(10'),
('Categoria VARCHAR(100)'),
(');'),
('CREATE TABLE Ordenes('),
('OrdenID INT PRIMARY KEY'),
('ClienteID INT'),
('FechaOrden DATE'),
('Estado VARCHAR(50)'),
('FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)'),
(');'),
('CREATE TABLE DetallesOrden('),
('DetalleID INT PRIMARY KEY'),
('OrdenID INT'),
('ProductoID INT'),
('Cantidad INT'),
('PrecioUnitario DECIMAL(10'),
('FOREIGN KEY (OrdenID) REFERENCES Ordenes(OrdenID)'),
('FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)'),
(');');
