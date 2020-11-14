USE LBD2020
GO

CREATE TABLE domicilio(
IdDomicilio uniqueidentifier not null primary key,
Calle VARCHAR(50) not null,
Numeral int,
Municipio VARCHAR(50) not null,
Colonia VARCHAR(5) not null, 
DomicilioCompleto as Calle + ' ' + Numeral + ' ' + Colonia, 
)

CREATE TABLE cliente(
IdCliente uniqueidentifier not null primary key,
Nombre VARCHAR(50) not null,
ApellidoPaterno VARCHAR(50) not null,
ApellidoMaterno VARCHAR(50) not null,
FechaDeNacimiento datetime not null,
Edad as DATEDIFF(year, FechaDeNacimiento, GETDATE()),
IdDomicilio uniqueidentifier not null,
NombreCompleto as Nombre + ' ' + ApellidoPaterno + ' ' + ApellidoMaterno,
)

CREATE TABLE sucursal(
IdSucursal uniqueidentifier not null primary key,
Caja money not null,
IdAlmacen uniqueidentifier not null,
calleSucursal VARCHAR(50) not null,
numeralSucursal INT,
coloniaSucursal VARCHAR(50) not null,
domicilioSucursal as calleSucursal + ' ' + numeralSucursal + ' ' + coloniaSucursal
)

CREATE TABLE almacen(
idAlmacén uniqueidentifier not null primary key,
producto VARCHAR(50) not null,
ventaProducto VARCHAR(50) not null,
compra VARCHAR(50) not null
)

CREATE TABLE venta(
IdVenta uniqueidentifier not null primary key,
ventaProducto VARCHAR(50) not null,
idCliente VARCHAR(50) not null,
caja money not null,
empleado VARCHAR(50) not null
)

create index index_NombreCompleto on cliente(NombreCompleto desc)
create index index_Producto on almacen(Producto desc)
