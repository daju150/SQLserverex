create database miBase
use miBase

create table miTabla(
id int identity(1,1) primary key not null,
nombre varchar(20) null,
contrasena varchar(20) null,
)
drop table miTabla

insert into miTabla(nombre,contrasena) values('Juan','wester')

select * from miTabla
