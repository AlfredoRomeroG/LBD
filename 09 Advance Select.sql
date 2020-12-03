USE LBD2020
GO

select s.coloniaSucursal from sucursal s inner join venta v on s.caja = v.Caja

select s.calleSucursal from sucursal s left join venta v on s.caja = v.Caja

select s.Caja from sucursal s right join venta v on s.caja = v.Caja

select c.NombreCompleto from cliente c cross join domicilio d

select a.fechaCaducidad
	from almacen a 
	where a.producto = 'Paracetamol' (select d.municipio from domicilio d where d.Numeral < 100)

