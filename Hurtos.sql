CREATE DATABASE HURTOS

USE HURTOS

CREATE TABLE Hurto (
  Direccion VARCHAR(60) NOT NULL, PRIMARY KEY, UNIQUE,
  Latitud INT NOT NULL,
  longitud VARCHAR(6) NOT NULL,
  Fecha_hurto DATETIME NOT NULL, UNIQUE,
  tipo_hurto VARCHAR(45) NOT NULL,
  detalle_hurto TEXT NOT NULL,
  valor_aproximado FLOAT NOT NULL
);

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle23#57a56', 22, 15, 28-05, 'celular', 'robado el 12 de diciembre a las 3PM', 200000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle82#17a26', 12, 5, 28-05, 'vivienda', 'asaltado en barrio prado a media noche', 100000000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle22#22a22', 22, 22, 22-12-2000, 'Banco', 'asalto a mano armada', 5000000000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle12#52a87', 2, 46, 18-05-2000, 'celular', 'me lo sacaron en el metro', 200000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle11#22a457', 3, 66, 26-06-2011, 'celular', 'me sorprendieron 2 fleteros y encañonado, me tocó pasar el celular', 200000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle21#24a50', 3, 66, 24-05-2001, 'Dinero', 'me hackearon mi cuenta bancaria y me sacaron todos mis ahorros de allí', 200000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle11#22a457', 3, 66, 13-2010, 'vehículo', 'me sorprendieron 2 fleteros y encañonado, me vi obligado a entregar el carro', 24000000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle11#22a457', 3, 66, 16-04-2003, 'celular', 'pasó un hombre en una moto y me lo arrebató ', 200000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle24#26a47', 3, 66, 13-02-2002, 'bicicleta', '2 fleteros me sorprendieron, me encañonaron y me vi obligado a entregarla', 2000000)

INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle45#62a53', 3, 66, 16-04-2005, 'celular', 'me lo sacaron del bolso en el bus', 256000)

CREATE TABLE Tipo_de_hurto (
idtipo_hurto INT not NULL PRIMARY KEY, UNIQUE,
Nombre VARCHAR(45) NOT NULL
);

SELECT*FROM Hurto;

SELECT tipo_hurto FROM Hurto WHERE idtipo_hurto=1;

SELECT * FROM Hurto WHERE idtipo_hurto=1;


UPDATE hurto SET Direccion 'calle45#62a53', Latitud= '12, 45',longitud ='30-09',Fecha_hurto ='07-10-2022',tipo_hurto ='carro',detalle_hurto ='robo de vehiculo en la avenida oriental sujetos armados en moto placa nug0728',valor_aproximado ='30000000'  WHERE hurto_id = 2;
UPDATE hurto SET Direccion 'calle24#26a47', Latitud= '14,24',longitud ='80-109',Fecha_hurto ='03-06-2022',tipo_hurto ='dinero',detalle_hurto ='robo a persona que acaba de retirar una suma de dinero de un cajero ',valor_aproximado ='500000'  WHERE hurto_id = 4;
UPDATE hurto SET Direccion 'calle11#22a457', Latitud= '20,29',longitud ='20-31',Fecha_hurto ='07-12-2022',tipo_hurto ='vivienda',detalle_hurto ='robo a apartemento ubicado en el poblado por parte de una banda que se llevo todo los muebles del apartamento el afectado deja constancia de que eran unos muebles costosos ',valor_aproximado ='100000'  WHERE hurto_id = 6;








select * from hurto
where Fecha_hurto between '2005-07-01' AND '2005-07-31';

DELETE FROM hurto WHERE Direccion ='calle45#62a53';



INSERT INTO Hurto (Direccion, Latitud, longitud, Fecha_hurto, tipo_hurto, detalle_hurto, valor_aproximado) VALUES
('calle45#62a53', 3, 66, 16-04-2022, 'celular', 'me lo sacaron del bolso en el bus', 256000)