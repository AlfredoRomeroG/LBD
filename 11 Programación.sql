create trigger productos
on almacen
for delete 
as 
begin
	declare @p int 
	select @p = producto from almacen
	if (@p is null)
		print 'No existe dato'
	else 
		DELETE FROM almacen WHERE idProducto = @p;
end

go
create function newfuncion (@nom int)
Returns table 
as 
	return (select calle, numeral from domicilio
	where numeral = @nom)

create procedure producto
@pro int
as 
begin 
	select * from almacen where idProducto = @pro
	print 'Busqueda correcta'
end
exec producto'14004'
go 

create procedure almacen
@prov int
as 
begin 
	select * from sucursal where IdSucursal = @prov
	print 'Busqueda correcta'
end
exec producto '20003'
go

create procedure clientes
@clie int
as 
begin 
	select * from cliente where idCliente = @clie
	print 'Busqueda correcta'
end
exec clientes '7003'
go

create procedure empleados
@empl int
as 
begin 
	select * from venta where IdVenta= @empl
	print 'Busqueda correcta'
end
exec empleados '1004'
go

create procedure domicilios
@com int
as 
begin 
	select * from domicilio where IdDomicilio = @com
	print 'Busqueda correcta'
end
go