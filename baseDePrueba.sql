mysql -u root

--DDL (definition data lenguage)

 
      CREATE TABLE clientes (
        ID_cliente INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    Nombre varchar(50) NOT NULL, 
    Apellido varchar(50) NOT NULL, 
    F_NAC DATE, 
    TELEF INT(10) 
    );     

   
   
   CREATE TABLE productos ( 
    ID_producto INT(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre_Producto varchar(50) NOT NULL,     
    Desc_Producto varchar(50),                                                                                    
    Price float(5) NOT NULL                                                         
                                       
    );                      

    


   CREATE TABLE Pedidos (
    ID_cliente INT(100) NOT NULL AUTO_INCREMENT, 
    ID_producto INT(110), 
    Cant INT(3) NOT NULL,
    Fecha Date,

    FOREIGN KEY (ID_cliente) REFERENCES clientes (ID_cliente),
    FOREIGN KEY (ID_producto) REFERENCES productos (ID_producto) 
     
    
    );     

CREATE TABLE Usuario (
   ID_cliente INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    Nombre varchar(50) NOT NULL, 
    Apellido varchar(50) NOT NULL, 
    F_NAC DATE, 
    TELEF INT(10) 
    );     



--segundo archivo

--usuarios

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('el papu', 'naguito', '1123926707', '46454345');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('alcoholico', 'monteenfermo', '3434256321', '46454346');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('toto', 'paler', '1123926667', '345673234');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('maximil', 'maldochino', '1123926708', '46454634');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('juan', 'juarez', '1123926421', '46454346');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('el', 'pepe', '1123926706', '46454321');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('nahuel', 'linares', '1123926702', '45454345');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('matias', 'chilly', '1212121212', '46454342');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('ete', 'sech', '1123926543', '46451234');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('lucas', 'pistoni', '1123926734', '46454392');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('federico', 'Lombardi', '112392123', '43454392');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('thiathom', 'fleitas', '1123924734', '46454592');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('aron', 'barreiro', '11333333', '46454343');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('kevin', 'de groote', '1147926734', '66454392');

INSERT INTO Usuarios ( Nombre, Apellido, Celu, DNI)  VALUES ('agustin', 'fuertesson', '1123926732', '46454332');

--productos 

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('calefon', 'anda mal asi que tira frio', '40000');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('heladera', 'anda mal asi que tira calor', '60000');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('telefono', 'no tiene pantalla', '15000');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('televisor', 'emite mas radiacion que el microondas', '11300');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('microondas', 'es mas rentable comprar el televisor', '55000');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('camara', 'solo sirve de microfono', '20000');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('cama electrica', 'riesgo de electrocutarse', '75000');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('teclado gamer', 'le faltan las teclas R, W y P', '10000');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('mouse gamer', 'tiene 5 de DPI', '17300');

INSERT INTO Productos ( Nombre_Producto, Desc_Producto, Price )  VALUES ('monitor', 'no corre a mas de 5 FPS', '150000');

ALTER TABLE Usuario RENAME Usuarios;



 ALTER TABLE Usuarios CHANGE TELEF CELU INT(11);



  ALTER TABLE usuarios ADD COLUMN DNI varchar(10); 
    
   
 
 ALTER TABLE usuarios DROP COLUMN F_NAC;

 DELETE FROM Clientes; --borra todos los registros

 --ejercicio 3

 delete from Clientes where Apellido like 'm%'; --borra los que terminen en m

--ejercicio 5

 delete from Clientes where Nombre like '%n' and TELEF like '%5531' ; --borra todos los registros que en el campo Nombre termine con n y el TELEF con 5531

--ejercicio 6

alter TABLE  Usuarios add column Domicilio varchar (50);

update Usuarios set Domicilio = 'Lope de Vega 1124' where ID_cliente = '1'; --cambia el valor de domicilio a lope de vega 1124

--ejercicio 7

select * from Productos where Price between 30000 and 100000;

--ejercicio 8

select * from Usuarios order by ID_cliente desc;

-- ejercicio 9

alter table Usuarios add column F_NAC date;

update Usuarios set F_NAC = '2001/02/05' where ID_cliente = '5';

select * from Usuarios where YEAR(F_NAC) > 1974;

-- ejercicio 10

select * from Productos Where ID_producto in ('3', '5','7');