/*
create database inventario;
GO
use inventario;
GO
create table productos(
id int identity(10,1) primary key,
cod_producto varchar(5) not null,
nombre varchar(50) not null,
existencia int not null,
)
GO
insert into productos values('A001','Memoria usb 32gb',1235);
insert into productos values('A002','Memoria usb 16gb',35);
insert into productos values('A003','Memoria usb 8gb',235);

select * from productos;
*/

create database inventario;
GO
use inventario;
GO
create table productos(
id int identity,
cod_producto varchar(5) not null,
nombre varchar(50) not null,
existencia int not null,
)
GO
set identity_insert productos on;
GO
insert into productos(id,cod_producto,nombre,existencia) values(12,'A001','Memoria usb 32gb',1235);
insert into productos(id,cod_producto,nombre,existencia) values(12,'A002','Memoria usb 16gb',35);
insert into productos(id,cod_producto,nombre,existencia) values(13,'A003','Memoria usb 8gb',235);
insert into productos(id,cod_producto,nombre,existencia) values(13,'A004','Memoria usb 4gb',54235);
GO
select * from productos;

/*
use master;
GO
drop database inventario;
*/
delete from productos
where cod_producto='A003';

update productos
set nombre= 'Memoria usb 4gb'
where id = 13;

truncate table productos;

delete from productos
where id=12;