--create database inventario;
--use inventario;
--drop table productos
go
create table productos(
cod varchar(4) primary key not null,
nom_prod varchar(50) not null
)
GO
create table facturar(
fecha date not null,
nfactura int primary key not null,
doc_indentidad int not null,
nom_cliente varchar(50) not null
)
GO
create table detalle(
cod varchar(4) not null,
nfactura int not null,
cantiad int not null,
precio money not null,
importe money not null,

--alter table dbo.detalle add
CONSTRAINT fk_detalle_productos
foreign key (cod) references productos(cod)
	on update cascade
	on delete cascade,
--alter table dbo.detalle add
CONSTRAINT fk_datalle_facturar
foreign key(nfactura) references facturar(nfactura)
	on update cascade
	on delete cascade
)


--go
--go

--drop database inventario
--drop inventario;
