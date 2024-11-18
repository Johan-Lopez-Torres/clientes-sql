-- Crear la base de datos
CREATE DATABASE EXAMEN_LOPEZ;

-- Usar la base de datos creada
USE EXAMEN_LOPEZ;

-- Crear la tabla REGION
CREATE TABLE REGION (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Insertar datos en la tabla REGION
INSERT INTO REGION (codigo, nombre) VALUES
    (1, 'Lima'),
    (2, 'Arequipa'),
    (3, 'Cusco'),
    (4, 'La Libertad'),
    (5, 'Piura'),
    (6, 'Tacna'),
    (7, 'Junin'),
    (8, 'Loreto'),
    (9, 'Puno'),
    (10, 'Ica');

-- Crear la tabla DISTRITO
CREATE TABLE DISTRITO (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    region_codigo INT,
    FOREIGN KEY (region_codigo) REFERENCES REGION(codigo)
);

-- Insertar datos en la tabla DISTRITO
INSERT INTO DISTRITO (codigo, nombre, region_codigo) VALUES
    (101, 'Miraflores', 1),
    (102, 'San Isidro', 1),
    (103, 'Santiago', 3),
    (104, 'Trujillo', 4),
    (105, 'Sullana', 5),
    (106, 'Tacna Centro', 6),
    (107, 'Huancayo', 7),
    (108, 'Iquitos', 8),
    (109, 'Puno Centro', 9),
    (110, 'Chincha Alta', 10);

-- Crear la tabla ALUMNO
CREATE TABLE ALUMNO (
    codigo INT PRIMARY KEY,
    dni CHAR(8),
    apellido_paterno VARCHAR(50),
    apellido_materno VARCHAR(50),
    nombres VARCHAR(100),
    direccion VARCHAR(150)
);


-- Insertar datos en la tabla ALUMNO
INSERT INTO ALUMNO (codigo, dni, apellido_paterno, apellido_materno, nombres, direccion) VALUES
    (1001, '12345678', 'Perez', 'Rojas', 'Luis', 'Av. Primavera 123'),
    (1002, '23456789', 'Gonzales', 'Lopez', 'Ana', 'Calle Lima 456'),
    (1003, '34567890', 'Ramirez', 'Salazar', 'Carlos', 'Jr. Cusco 789');
