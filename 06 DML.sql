USE LBD2020
GO

INSERT INTO almacen
	VALUES
		(NEWID()
		,'Simvastatina'
		,NEWID()
		,'2022-11-17'
		),
		(NEWID()
		,'Aspirina'
		,NEWID()
		,'2022-12-18'
		),
		(NEWID()
		,'Omeprazol'
		,NEWID()
		,'2022-10-19'
		),
		(NEWID()
		,'Lexotiroxina sódica'
		,NEWID()
		,'2022-12-17'
		),
		(NEWID()
		,'Ramipril'
		,NEWID()
		,'2022-11-16'
		),
		(NEWID()
		,'Amlodipina'
		,NEWID()
		,'2022-10-15'
		),
		(NEWID()
		,'Paracetamol'
		,NEWID()
		,'2022-09-14'
		),
		(NEWID()
		,'Atorvastatina'
		,NEWID()
		,'2022-12-13'
		),
		(NEWID()
		,'Salbutamol'
		,NEWID()
		,'2022-11-12'
		),
		(NEWID()
		,'Lansoprazol'
		,NEWID()
		,'2022-10-11'
		),
		(NEWID()
		,'Acabat'
		,NEWID()
		,'2022-09-10'
		),
		(NEWID()
		,'Aciclovir Pensa'
		,NEWID()
		,'2022-08-09'
		),
		(NEWID()
		,'Ácido Omega 3 Kern Pharma'
		,NEWID()
		,'2022-12-08'
		),
		(NEWID()
		,'Aerinaze'
		,NEWID()
		,'2022-11-07'
		),
		(NEWID()
		,'Alfuzosina Teva'
		,NEWID()
		,'2022-10-06'
		),
		(NEWID()
		,'Alprazolam Tarbis'
		,NEWID()
		,'2022-09-05'
		),
		(NEWID()
		,'Amoxicilina'
		,NEWID()
		,'2022-08-04'
		),
		(NEWID()
		,'Anexate'
		,NEWID()
		,'2022-07-03'
		),
		(NEWID()
		,'Arenbil Flas'
		,NEWID()
		,'2022-12-02'
		),
		(NEWID()
		,'Arnicamed'
		,NEWID()
		,'2022-11-01'
		),
		(NEWID()
		,'Atorvastatina'
		,NEWID()
		,'2022-10-30'
		),
		(NEWID()
		,'Atropina'
		,NEWID()
		,'2022-09-29'
		),
		(NEWID()
		,'Balzak'
		,NEWID()
		,'2022-08-28'
		),
		(NEWID()
		,'Betafact'
		,NEWID()
		,'2022-07-27'
		),
		(NEWID()
		,'Bisoprolol Kern Pharma'
		,NEWID()
		,'2022-06-26'
		)

INSERT INTO cliente(IdCliente, Nombre, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento, email)
	VALUES
		(NEWID()
		,'Calixto'
		,'González'
		,'Gómez'
		,'2002-11-17'
		,'calixtogonzalez@qwerty.com'
		),
		(NEWID()
		,'Dagoberto'
		,'González'
		,'Díaz'
		,'2001-10-16'
		,'dagoberto.gonzalez@outlook.com'
		),
		(NEWID()
		,'Elena'
		,'González'
		,'González'
		,'2000-09-15'
		,'elena-gonzalez@aol.com'
		),
		(NEWID()
		,'Eugenio'
		,'Rodríguez'
		,'González'
		,'2001-08-14'
		,'eugeniorodriguez@gmail.com'
		),
		(NEWID()
		,'Fabián'
		,'Gómez'
		,'González'
		,'2000-07-13'
		,'fabian.gonzalez@hotmail.com'
		),
		(NEWID()
		,'Gabriel'
		,'Rodríguez'
		,'Rodríguez'
		,'1999-06-12'
		,'gabriel-rdz@xmail.com'
		),
		(NEWID()
		,'Harnoldo'
		,'González'
		,'Díaz'
		,'1998-05-11'
		,'harnoldogonzalez@mymail.com'
		),
		(NEWID()
		,'Idefonso'
		,'Rodríguez'
		,'Rodríguez'
		,'1997-04-10'
		,'ide.rdz@qwerty.com'
		),
		(NEWID()
		,'Jenna'
		,'Fernández'
		,'Martínez'
		,'1996-03-09'
		,'jenna-fernandez@yahoo.com'
		),
		(NEWID()
		,'Jennifer'
		,'Díaz'
		,'Fernández'
		,'1995-02-08'
		,'jennydiaz@outlook.com'
		),
		(NEWID()
		,'Kenneth'
		,'Fernández'
		,'López'
		,'1994-01-07'
		,'ken.fernandez@aol.com'
		),
		(NEWID()
		,'Lenin'
		,'Gómez'
		,'Díaz'
		,'1993-12-06'
		,'lenin-gomez@gmail.com'
		),
		(NEWID()
		,'Liliana'
		,'Pérez'
		,'López'
		,'1992-11-05'
		,'lilianaperez@xmail.com'
		),
		(NEWID()
		,'Magali'
		,'Martínez'
		,'Gómez'
		,'1991-10-04'
		,'magali.martinez@mymail.com'
		),
		(NEWID()
		,'Mabel'
		,'López'
		,'Fernández'
		,'1990-09-03'
		,'mabel.lopez@outlook.com'
		),
		(NEWID()
		,'Napoleón'
		,'Gómez'
		,'Rodríguez'
		,'1989-08-02'
		,'napoleon-gomez@aol.com'
		),
		(NEWID()
		,'Obama'
		,'Romero'
		,'Flores'
		,'1988-07-01'
		,'obamaromero@gmail.com'
		),
		(NEWID()
		,'Osiris'
		,'Martínez'
		,'López'
		,'1987-06-30'
		,'osiris.mtz@hotmail.com'
		),
		(NEWID()
		,'Pablo'
		,'Lucero'
		,'Romero'
		,'1986-05-29'
		,'pablo-lucero@xmail.com'
		),
		(NEWID()
		,'Querubin'
		,'Benítez'
		,'Romero'
		,'1985-04-28'
		,'querubinbenitez@mymail.com'
		),
		(NEWID()
		,'Rafael'
		,'García'
		,'García'
		,'1984-03-27'
		,'rafael.garcia@qwerty.com'
		),
		(NEWID()
		,'Sabina'
		,'Sosa'
		,'Sánchez'
		,'1983-02-26'
		,'sabina-sosa@yahoo.com'
		),
		(NEWID()
		,'Teodorico'
		,'López'
		,'Martínez'
		,'1982-01-25'
		,'teolopez@outlook.com'
		),
		(NEWID()
		,'Ulises'
		,'Díaz'
		,'Pérez'
		,'1981-12-24'
		,'ulises.diaz@aol.com'
		),
		(NEWID()
		,'Valentín'
		,'Quiroga'
		,'Ruiz'
		,'1980-11-23'
		,'valentin-quiroga@gmail.com'
		),
		(NEWID()
		,'Walter'
		,'Ramírez'
		,'Cruz'
		,'1979-10-22'
		,'walterramirez@hotmail.com'
		),
		(NEWID()
		,'Xavier'
		,'Pérez'
		,'Muñoz'
		,'1978-09-21'
		,'xavi.perez@xmail.com'
		),
		(NEWID()
		,'Yago'
		,'Martínez'
		,'Pérez'
		,'1987-08-20'
		,'yago-mtz@mymail.com'
		),
		(NEWID()
		,'Zacarías'
		,'Silva'
		,'Fernández'
		,'1986-07-19'
		,'zacariasfernanfez@qwerty.com'
		)

INSERT INTO domicilio
	VALUES
		(NEWID()
		,'Nogal'
		,326
		,'Monterrey'
		,'Constituyentes del 57'
		),
		(NEWID()
		,'Álamo'
		,17
		,'Monterrey'
		,'Ferrocarrilera'
		),
		(NEWID()
		,'La Gavia'
		,71
		,'Monterrey'
		,'Hogares Ferrocarrileros'
		),
		(NEWID()
		,'Fresno'
		,711
		,'Guadalupe'
		,'Bosques del Contry'
		),
		(NEWID()
		,'Magnolia'
		,32
		,'Monterrey'
		,'Reforma'
		),
		(NEWID()
		,'Ébano'
		,29
		,'Guadalupe'
		,'Bosques de la Pastora'
		),
		(NEWID()
		,'Olmo'
		,91
		,'Monterrey'
		,'Niño Artillero'
		),
		(NEWID()
		,'Madre Selva'
		,171
		,'Monterrey'
		,'Topo Chico'
		),
		(NEWID()
		,'Sauce'
		,711
		,'Monterrey'
		,'Lázaro Cárdenas'
		),
		(NEWID()
		,'Las Flores'
		,113
		,'Guadalupe'
		,'Margaritas'
		),
		(NEWID()
		,'Encino'
		,33
		,'Monterrey'
		,'Constituyentes del 57'
		),
		(NEWID()
		,'Los Valles'
		,331
		,'Monterrey'
		,'Valle verde'
		),
		(NEWID()
		,'Olivo'
		,321
		,'Guadalupe'
		,'Casa Blanca'
		),
		(NEWID()
		,'Palo Blanco'
		,1711
		,'San Pedro Garza García'
		,'Palo Blanco'
		),
		(NEWID()
		,'Palo de Rosa'
		,120
		,'San Pedro Garza García'
		,'Pablo Blanco'
		),
		(NEWID()
		,'Puebla de los Ángeles'
		,202
		,'Monterrey'
		,'Ferrocarrilera'
		),
		(NEWID()
		,'Las Planicies'
		,2020
		,'Monterrey'
		,'Bernardo Reyes'
		),
		(NEWID()
		,'Tulipán'
		,2003
		,'Monterrey'
		,'Alfonso Reyes'
		),
		(NEWID()
		,'Frontera'
		,334
		,'Monterrey'
		,'Lázaro cárdenas'
		),
		(NEWID()
		,'Salinas'
		,351
		,'Monterrey'
		,'Topo Chico'
		),
		(NEWID()
		,'Emiliano Zapata'
		,711
		,'Monterrey'
		,'Rangel Frias'
		),
		(NEWID()
		,'Sotelo'
		,112
		,'Monterrey'
		,'Rodrigo Gómez'
		),
		(NEWID()
		,'Santiago'
		,203
		,'Monterrey'
		,'Niño Artillero'
		),
		(NEWID()
		,'Villaldama'
		,337
		,'Monterrey'
		,'Lampazos'
		),
		(NEWID()
		,'Garza García'
		,881
		,'Monterrey'
		,'Topo Chico'
		)
INSERT INTO sucursal(IdSucursal, Caja, calleSucursal, numeralSucursal, coloniaSucursal)
VALUES
	(NEWID()
	,342.00
	,'Manuel Ordoñez'
	,44
	,'Fama'
	),
	(NEWID()
	,461.00
	,'Sta. Catarina'
	,617
	,'Treviño'
	),
	(NEWID()
	,711.00
	,'Villaldama'
	,711
	,'San José de la Montaña'
	),
	(NEWID()
	,120.00
	,'Monterrey'
	,200
	,'Rayones'
	),
	(NEWID()
	,2004.00
	,'Galeana'
	,48
	,'Iturbide'
	),
	(NEWID()
	,1711.00
	,'Navor Camargo'
	,2020
	,'Bernabé González'
	),
	(NEWID()
	,449.00
	,'Torres'
	,4917
	,'Sánchez Islas'
	),
	(NEWID()
	,711.00
	,'Juan Gutiérrez'
	,1202
	,'Ricardo Sosa Pavón'
	),
	(NEWID()
	,450.00
	,'Raul Nevares'
	,117
	,'Sotelo'
	),
	(NEWID()
	,7112.00
	,'San J. Romero'
	,2004
	,'Carranza Leal'
	),
	(NEWID()
	,5117.00
	,'Mariano Cabrera'
	,1120
	,'Alcatraces'
	),
	(NEWID()
	,2004.00
	,'Bugambilia'
	,5217
	,'Azahares'
	),
	(NEWID()
	,1120.00
	,'Violetas'
	,2004
	,'Tulipanes'
	),
	(NEWID()
	,5317.00
	,'Nardo'
	,1120
	,'Casa Blanca'
	),
	(NEWID()
	,4541.00
	,'Tetepan'
	,711
	,'Loma Verde'
	),
	(NEWID()
	,2020.00
	,'El cañón de las Flores'
	,455
	,'Girasol'
	),
	(NEWID()
	,1711.00
	,'Magnolia'
	,2020
	,'Lirios'
	),
	(NEWID()
	,4551.00
	,'Loma Azul'
	,711
	,'Las Lomas'
	),
	(NEWID()
	,2020.00
	,'Loma Seca'
	,4561
	,'Loma Larga'
	),
	(NEWID()
	,7112.00
	,'Del Arroyo'
	,2004
	,'Moctezuma'
	),
	(NEWID()
	,5717.00
	,'Pontevedra'
	,1120
	,'La Amistad'
	),
	(NEWID()
	,2004.00
	,'Presa de la Boca'
	,581
	,'Las selvas'
	),
	(NEWID()
	,7112.00
	,'Tajin'
	,459
	,'Tula'
	)

INSERT INTO venta(IdVenta, ventaProducto, caja, empleado)
VALUES
	(NEWID()
	,'Simvastatina'
	,50.00
	,'Raul Alejandro'
	),
	(NEWID()
	,'Aspirina'
	,51.00
	,'Carlos Torres'
	),
	(NEWID()
	,'Omeprazol'
	,71.00
	,'Enrique Solis'
	),
	(NEWID()
	,'Lexotiroxina'
	,120.00
	,'Saul Álvarez'
	),
	(NEWID()
	,'Ramipril'
	,200.00
	,'Luis Blanco'
	),
	(NEWID()
	,'Amlodipina'
	,507.00
	,'Daniel Ramírez'
	),
	(NEWID()
	,'PAracetamol'
	,81.00
	,'Omar Wise'
	),
	(NEWID()
	,'Atorvastatina'
	,71.00
	,'Santiago Martínez'
	),
	(NEWID()
	,'Salbutamol'
	,120.00
	,'Alfredo Talavera'
	),
	(NEWID()
	,'Lansoprazol'
	,200.00
	,'Cesar Hernández'
	),
	(NEWID()
	,'Abacat'
	,510.00
	,'Ernesto Solís'
	),
	(NEWID()
	,'Aciclovir Kern Pharma'
	,117.00
	,'Lázaro Narvaes'
	),
	(NEWID()
	,'Ácido Zoledronico Normon'
	,711.00
	,'Carla Olmos'
	),
	(NEWID()
	,'Advate'
	,202.00
	,'Laura Colin'
	),
	(NEWID()
	,'Alcohol Alcanforado Cuve'
	,51.00
	,'Haniel I.'
	),
	(NEWID()
	,'Alphagan'
	,317.00
	,'Norman Shmit'
	),
	(NEWID()
	,'Amisulprida Aurovitas'
	,112.00
	,'Esmeralda Sotelo'
	),
	(NEWID()
	,'Amlodipino'
	,200.00
	,'Cloe Reuts'
	),
	(NEWID()
	,'Amoxicilina'
	,51.00
	,'Iris Treviño'
	),
	(NEWID()
	,'Ansatipin'
	,171.00
	,'Omar Rodríguez'
	),
	(NEWID()
	,'Aricept Flas'
	,112.00
	,'Isis Ospina'
	),
	(NEWID()
	,'Arkocapsulas Raiz de Ortiga'
	,200.00
	,'Eunice Salinas'
	),
	(NEWID()
	,'Atoris'
	,52.00
	,'Pedro Santiago'
	)

update almacen set producto = 'Paracetamol tableta'
where producto = 'Paracetamol'

update cliente set nombre = 'Alfredo'
where nombre = 'Querubin'

update domicilio set colonia = 'Topo Chico 1er Sect.'
where colonia = 'Topo Chico'

update sucursal set caja = 1000.00
where caja < 200.00

update sucursal set numeralSucursal = null, caja = 2000.00
where calleSucursal = 'Magnolia'