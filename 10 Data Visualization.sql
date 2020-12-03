use LBD2020
go

create view newVista
as select s.coloniaSucursal, s.Caja
from sucursal as s
group by s.coloniaSucursal, s.Caja
having MAX(s.Caja) < 500;

create view newVista2 as
select v.empleado, v.ventaProducto
from venta as v
where v.caja < 500
group by v.empleado, v.ventaProducto, v.caja
having v.ventaProducto = 'Paracetamol'

create view vista3 as
select TOP 5 a.producto, a.fechaCaducidad
from almacen as a
where fechaCaducidad < '2022-11-17'
group by a.producto, a.fechaCaducidad

create view newVista4 as
select d.Colonia
from domicilio as d
where Municipio = 'Monterrey'
group by d.Colonia, d.Calle
having d.Calle ='Magnolia'

create view newVista5 as
select v.empleado, AVG(v.Caja) as promedioVentas
from venta as v
group by v.empleado, v.caja