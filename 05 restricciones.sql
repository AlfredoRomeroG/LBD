USE LBD2020
GO

ALTER TABLE cliente
ADD CONSTRAINT FK_cliente_domicilio FOREIGN KEY (IdDomicilio)
REFERENCES domicilio

ALTER TABLE venta
ADD CONSTRAINT FK_venta_cliente FOREIGN KEY (IdCliente)
REFERENCES cliente

ALTER TABLE venta
ADD CONSTRAINT FK_venta_sucursal FOREIGN KEY (IdSucursal)
REFERENCES sucursal

ALTER TABLE sucursal
ADD CONSTRAINT FK_sucursal_almacen FOREIGN KEY (IdAlmacen)
REFERENCES almacen

ALTER TABLE cliente
ADD CONSTRAINT UC_cliente_email UNIQUE (email)

ALTER TABLE venta
ADD CONSTRAINT CHK_caja_money_noNegativo
CHECK (caja < 0)