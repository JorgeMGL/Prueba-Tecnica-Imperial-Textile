CREATE TABLE Libro (
    IdLibro INT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Editoreal VARCHAR(255) NOT NULL,
    Area VARCHAR(255) NOT NULL
);

CREATE TABLE Autor (
    IdAutor INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Nacionalidad VARCHAR(255) NOT NULL
);

CREATE TABLE Estudiante (
    IdLector INT PRIMARY KEY,
    CI VARCHAR(20) NOT NULL,
    Nombre VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255) NOT NULL,
    Carrera VARCHAR(255) NOT NULL,
    Edad INT NOT NULL
);

CREATE TABLE LibAut (
    IdAutor INT,
    IdLibro INT,
    PRIMARY KEY (IdAutor, IdLibro),
    FOREIGN KEY (IdAutor) REFERENCES Autor(IdAutor),
    FOREIGN KEY (IdLibro) REFERENCES Libro(IdLibro)
);

CREATE TABLE Prestamo (
    IdLector INT,
    IdLibro INT,
    FechaPrestamo DATE NOT NULL,
    FechaDevolucion DATE NOT NULL,
    Devuelto BIT NOT NULL,
    PRIMARY KEY (IdLector, IdLibro),
    FOREIGN KEY (IdLector) REFERENCES Estudiante(IdLector),
    FOREIGN KEY (IdLibro) REFERENCES Libro(IdLibro)
);
INSERT INTO Libro (IdLibro,Titulo, Editoreal, Area) VALUES
(3001, 'C�lculo Avanzado', 'Editorial MNOP', 'Matem�ticas'),
(3002, 'Historia Universal', 'Editorial QRST', 'Historia'),
(3003, 'Qu�mica Org�nica', 'Editorial UVWX', 'Qu�mica'),
(3004, 'F�sica Moderna', 'Editorial YZAB', 'F�sica'),
(3005, 'Literatura Espa�ola', 'Editorial CDEF', 'Literatura'),
(3006, 'Biolog�a Celular', 'Editorial GHIJ', 'Biolog�a'),
(3007, 'Programaci�n en Python', 'Editorial KLMN', 'Inform�tica'),
(3008, 'An�lisis de Datos', 'Editorial OPQR', 'Estad�stica'),
(3009, 'Introducci�n a la Filosof�a', 'Editorial STUV', 'Filosof�a'),
(3010, 'Ingenier�a de Software', 'Editorial WXYZ', 'Inform�tica'),
(3011, 'Fisiolog�a Humana', 'Editorial XYZ', 'Medicina'),
(3012, 'Derecho Constitucional', 'Editorial DEF', 'Derecho'),
(3013, 'Dise�o Arquitect�nico', 'Editorial GHI', 'Arquitectura'),
(3014, 'Principios de Econom�a', 'Editorial JKL', 'Econom�a');




INSERT INTO Estudiante ( IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES
(1, '123456789', 'Juan', 'Calle Falsa 123', 'Ingenier�a', 20),
(2, '987654321', 'Mario', 'Avenida Siempre Viva 742', 'Medicina', 22),
(3, '456123789', 'Carlos', 'Calle de la Amargura 456', 'Derecho', 23),
(4, '654789123', 'Ana', 'Plaza Mayor 789', 'Arquitectura', 21),
(5, '321654987', 'Lucy', 'Calle Principal 321', 'Econom�a', 24),
(6,'321654987', 'Laura', 'Calle Secundaria 432', 'Psicolog�a', 22),
(7, '789456123', 'Pedro', 'Avenida Central 543', 'Ingenier�a', 24),
(8,'654321987', 'Sofi', 'Boulevard Principal 654', 'Medicina', 21),
(9, '987123654', 'Diego', 'Calle Nueva 765', 'Derecho', 23),
(10, '123789456', 'Isabella', 'Avenida del Sol 876', 'Arquitectura', 25),
(11,'456987123', 'Andrea', 'Calle de los Arboles 987', 'Econom�a', 22),
(12, '789123456', 'Gabriela', 'Calle de las Flores 321', 'Inform�tica', 20),
(13,'654987321', 'Ricardo', 'Avenida del Parque 432', 'Psicolog�a', 21),
(14,'123456123', 'Valentina', 'Calle Principal 543', 'Ingenier�a', 24),
(15, '32 1789654', 'Mauricio', 'Calle Secundaria 654', 'Medicina', 23);

        

-- Insertar datos en la tabla Prestamos
INSERT INTO Prestamo (IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES
(1, 3001, '2024-07-01', '2024-07-03', 1),
(2, 3002, '2024-07-02', '2024-07-16', 0),
(3, 3003, '2024-07-03', '2024-07-17', 0),
(4, 3004, '2024-07-04', '2024-07-18', 0),
(5, 3005, '2024-07-05', '2024-07-19', 0);
-- Insertar datos en la tabla Autores
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES
(2001,'John Doe', 'USA'),
(2002, 'Jane Smith', 'UK'),
(2003, 'Jos� Garc�a', 'Espa�a'),
(2004, 'Maria Rossi', 'Italia'),
(2005, 'Yuki Tanak                                                                                                                                      a', 'Jap�n'),
(2006,'Emily Brown', 'Canad�'),
(2007,'Michael White', 'Australia'),
(2008,'Ana Silva', 'Brasil'),
(2009,'Liam Black', 'Nueva Zelanda'),
(2010,'Cheng Wei', 'China'),                          
(2011,'Raj Patel', 'India'),
(2012,'Elena Petrova', 'Rusia'),
(2013,'Sara M�ller', 'Alemania'),
(2014,'Hassan Ali', 'Egipto');



INSERT INTO LibAut (IdAutor, IdLibro) VALUES
(2001, 3001),
(2002, 3002),
(2003, 3003),
(2004, 3004),
(2005, 3005),
(2006, 3006),
(2007, 3007),
(2008, 3008),
(2009, 3009),
(2010, 3010),
(2011, 3011),
(2012, 3012),
(2013, 3013),
(2014, 3014);




 select * from prestamo