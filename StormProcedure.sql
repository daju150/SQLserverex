--Ejemplo 1
create procedure SP_Prueba1
as
print 'hola mundo';

execute SP_Prueba1;
--Consulta con select
insert into productos values('A003','Memoria32');
insert into productos values('A002','Memoria16');
insert into productos values('A001','Memoria8');
insert into productos values('A000','Memoria4');

create proc SP_Consulta_producto
as 
	select * from productos
	where cod = 'A003'

execute SP_Consulta_producto;

--Ejemplo con Parametros
create proc SP_Buscar_producto
@codProd as varchar(5)
as
	select cod,nom_prod from productos
	where cod=@codProd

exec SP_Buscar_producto 'A003';