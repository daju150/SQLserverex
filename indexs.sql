create database clientes;
go
use clientes;
go
create table listado(
--id int identity(10,1) primary key,
nombre varchar(50) null,
tel int null,
email varchar(50) null,
)
go
insert into listado(nombre,tel,email) values('Daniel',45614875,'daju@yahoo.com')
insert into listado(nombre,tel,email) values('Lepe',35615875,'lepe@yahoo.com')
insert into listado(nombre,tel,email) values('Juan',42614875,'juan@yahoo.com')
insert into listado(nombre,tel,email) values('Pedro',15614875,'pedro@yahoo.com')



select nombre,tel from listado;

execute sp_helpindex 'listado';

create clustered index IDX_Nombre
on listado(nombre);

create nonclustered index IDX_Tel
on listado(tel);