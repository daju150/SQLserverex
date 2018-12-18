create database ventas
on primary
(name = 'ventas',
filename = 'C:\Users\DajuOST\Documents\BaseDeDatosSQLSERVER\VentasData.mdf',
size = 10,
maxsize = 50,
filegrowth = 5)

Log on
(name = 'VentasLog',
filename = 'C:\Users\DajuOST\Documents\BaseDeDatosSQLSERVER\VentasLog.ldf',
size = 5,
maxsize = 25,
filegrowth = 5);

use inventario;