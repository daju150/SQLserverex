create table categoria(
id int identity(100000,1) primary key not null,
nombre varchar(80)
)
go
insert into categoria(nombre) values('Abarrotes');
insert into categoria(nombre) values('Utencilios');
insert into categoria(nombre) values('Videjugos');
insert into categoria(nombre) values('Electrodomesticos');
go
create table producto(
id int identity(1,1) primary key not null,
id_categoria int, 
nombre varchar(80),
precio smallmoney,
unidad int

CONSTRAINT fk_detalle_categoria
foreign key (id_categoria) references categoria(id)
	--on update cascade
	--on delete cascade,
)
go
select * from categoria;
go
--drop table producto;
insert into producto(id_categoria,nombre,precio,unidad) values(100000,'Crema',1.50,75);
insert into producto(id_categoria,nombre,precio,unidad) values(100002,'XBOX360',299,15);
insert into producto(id_categoria,nombre,precio,unidad) values(100002,'PLAY STATION 3',399,25);
insert into producto(id_categoria,nombre,precio,unidad) values(100003,'Lavadora Osbort',45,5);
insert into producto(id_categoria,nombre,precio,unidad) values(100003,'Licuadora Osbort',40,9);
insert into producto(id_categoria,nombre,precio,unidad) values(100001,'Cuchara',1,20);
go
create table venta(
id int identity(1,1) primary key not null,
monto smallmoney,
FECHA DATETIME DEFAULT(GETDATE()) 
)
go
insert into venta(monto) values(580);
--delete from venta where id=1;
go
create table detalle_productoventa(
id int identity(1,1) primary key not null,
id_venta int,
id_producto int

CONSTRAINT fk_detalle_productos
foreign key (id_venta) references venta(id)
	on update cascade
	on delete cascade,
CONSTRAINT fk_datalle_facturar
foreign key(id_producto) references producto(id)
	on update cascade
	on delete cascade
)




--select * from categoria;
--drop table categoria;
--truncate table categoria;