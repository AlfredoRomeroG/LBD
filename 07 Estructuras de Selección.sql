use LBD2020
go

select *
from almacen
where fechaCaducidad = '2022-10-30'

select producto
from almacen
where fechaCaducidad = '2022-11-17'

select Nombre, ApellidoPaterno, ApellidoMaterno
from cliente
where Edad >=20

select Nombre, ApellidoPaterno, ApellidoMaterno
from cliente
where Edad < 20

select Calle, Numeral, Colonia, Municipio
from domicilio
where Municipio = 'San Pedro Garza García'

select IdSucursal, calleSucursal, numeralSucursal, coloniaSucursal, Caja
from sucursal
where caja < 1000

select ventaProducto, caja, empleado
from venta
where caja < 100

select a.producto
from almacen as a
where fechaCaducidad < '2022-11-17'
group by a.producto

select c.NombreCompleto
from cliente as c
group by c.NombreCompleto

select d.Colonia
from domicilio as d
group by d.Colonia

select s.Caja
from sucursal as s
group by s.Caja

select v.empleado
from venta as v
where caja < 100
group by v.empleado

select a.producto, count(a.idAlmacén) as cantidadProductos
from almacen as a
where fechaCaducidad > '2020-10-01'
group by a.producto

select c.NombreCompleto, MIN(Edad) as Edad
from cliente as c
group by c.NombreCompleto, c.Edad

select s.coloniaSucursal, MAX(s.Caja) as Caja
from sucursal as s
group by s.coloniaSucursal, s.Caja

select v.empleado, SUM(v.Caja) as TotalVentas
from venta as v
group by v.empleado, v.caja

select v.empleado, AVG(v.Caja) as promedioVentas
from venta as v
group by v.empleado, v.caja

select v.empleado, AVG(v.Caja) as promedioVentas, SUM(v.Caja) as sumaVentas
from venta as v
group by v.empleado, v.caja
having SUM(v.Caja) > 500

select c.NombreCompleto, MIN(Edad) as Edad
from cliente as c
group by c.NombreCompleto, c.Edad
having c.FechaDeNacimiento = null

select d.Colonia
from domicilio as d
where Municipio = 'Monterrey'
group by d.Colonia, d.Calle
having d.Calle ='Magnolia'

select s.coloniaSucursal, s.Caja
from sucursal as s
group by s.coloniaSucursal, s.Caja
having MAX(s.Caja) < 500

select v.empleado, v.ventaProducto
from venta as v
where v.caja < 500
group by v.empleado, v.ventaProducto, v.caja
having v.ventaProducto = 'Paracetamol'

select TOP 10 producto
from almacen

select TOP 1 producto 
from almacen
where fechaCaducidad = '2022-11-17'

select TOP 1 Nombre, ApellidoPaterno, ApellidoMaterno, edad
from cliente
where Edad < 20

select TOP 5 a.producto, a.fechaCaducidad
from almacen as a
where fechaCaducidad < '2022-11-17'
group by a.producto, a.fechaCaducidad

select TOP 5 v.empleado, v.caja
from venta as v
where caja > 100
group by v.empleado, v.caja