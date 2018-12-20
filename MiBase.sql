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
	on update cascade
	on delete cascade,
)
go
insert into producto(id_categoria,nombre,precio,unidad) values(100000,'Crema',1.50,75);
insert into producto(id_categoria,nombre,precio,unidad) values(100002,'XBOX360',299,15);
insert into producto(id_categoria,nombre,precio,unidad) values(100002,'PLAY STATION 3',399,25);
insert into producto(id_categoria,nombre,precio,unidad) values(100003,'Lavadora Osbort',45,5);
insert into producto(id_categoria,nombre,precio,unidad) values(100003,'Licuadora Osbort',40,9);
insert into producto(id_categoria,nombre,precio,unidad) values(100001,'Cuchara',1,20);
go

create table venta(
id int identity(1,1) primary key not null,
id_producto int,
monto smallmoney,
FECHA DATETIME DEFAULT(GETDATE()) 

CONSTRAINT fk_detalle_productos
foreign key (id_producto) references producto(id)
	on update cascade
	on delete cascade,
)

--select * from producto;

insert into venta(id_producto,monto) values(8,299);
insert into venta(id_producto,monto) values(11,40);
insert into venta(id_producto,monto) values(9,399);

select * from categoria;

Select id_producto as IdProducto,monto as Monto,fecha as
Fecha from venta
--group by id_producto,monto
where fecha = (select max(fecha) from venta);

select id_categoria,C.nombre,P.nombre,'Q'+convert(varchar(8), monto) as Total,FECHA
from categoria C,producto P, venta V
where C.id=P.id_categoria and P.id = V.id_producto and fecha = (select max(fecha) from venta);

