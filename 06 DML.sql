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
		,'Lexotiroxina s�dica'
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
		,'�cido Omega 3 Kern Pharma'
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
		,'Gonz�lez'
		,'G�mez'
		,'2002-11-17'
		,'calixtogonzalez@qwerty.com'
		),
		(NEWID()
		,'Dagoberto'
		,'Gonz�lez'
		,'D�az'
		,'2001-10-16'
		,'dagoberto.gonzalez@outlook.com'
		),
		(NEWID()
		,'Elena'
		,'Gonz�lez'
		,'Gonz�lez'
		,'2000-09-15'
		,'elena-gonzalez@aol.com'
		),
		(NEWID()
		,'Eugenio'
		,'Rodr�guez'
		,'Gonz�lez'
		,'2001-08-14'
		,'eugeniorodriguez@gmail.com'
		),
		(NEWID()
		,'Fabi�n'
		,'G�mez'
		,'Gonz�lez'
		,'2000-07-13'
		,'fabian.gonzalez@hotmail.com'
		),
		(NEWID()
		,'Gabriel'
		,'Rodr�guez'
		,'Rodr�guez'
		,'1999-06-12'
		,'gabriel-rdz@xmail.com'
		),
		(NEWID()
		,'Harnoldo'
		,'Gonz�lez'
		,'D�az'
		,'1998-05-11'
		,'harnoldogonzalez@mymail.com'
		),
		(NEWID()
		,'Idefonso'
		,'Rodr�guez'
		,'Rodr�guez'
		,'1997-04-10'
		,'ide.rdz@qwerty.com'
		),
		(NEWID()
		,'Jenna'
		,'Fern�ndez'
		,'Mart�nez'
		,'1996-03-09'
		,'jenna-fernandez@yahoo.com'
		),
		(NEWID()
		,'Jennifer'
		,'D�az'
		,'Fern�ndez'
		,'1995-02-08'
		,'jennydiaz@outlook.com'
		),
		(NEWID()
		,'Kenneth'
		,'Fern�ndez'
		,'L�pez'
		,'1994-01-07'
		,'ken.fernandez@aol.com'
		),
		(NEWID()
		,'Lenin'
		,'G�mez'
		,'D�az'
		,'1993-12-06'
		,'lenin-gomez@gmail.com'
		),
		(NEWID()
		,'Liliana'
		,'P�rez'
		,'L�pez'
		,'1992-11-05'
		,'lilianaperez@xmail.com'
		),
		(NEWID()
		,'Magali'
		,'Mart�nez'
		,'G�mez'
		,'1991-10-04'
		,'magali.martinez@mymail.com'
		),
		(NEWID()
		,'Mabel'
		,'L�pez'
		,'Fern�ndez'
		,'1990-09-03'
		,'mabel.lopez@outlook.com'
		),
		(NEWID()
		,'Napole�n'
		,'G�mez'
		,'Rodr�guez'
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
		,'Mart�nez'
		,'L�pez'
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
		,'Ben�tez'
		,'Romero'
		,'1985-04-28'
		,'querubinbenitez@mymail.com'
		),
		(NEWID()
		,'Rafael'
		,'Garc�a'
		,'Garc�a'
		,'1984-03-27'
		,'rafael.garcia@qwerty.com'
		),
		(NEWID()
		,'Sabina'
		,'Sosa'
		,'S�nchez'
		,'1983-02-26'
		,'sabina-sosa@yahoo.com'
		),
		(NEWID()
		,'Teodorico'
		,'L�pez'
		,'Mart�nez'
		,'1982-01-25'
		,'teolopez@outlook.com'
		),
		(NEWID()
		,'Ulises'
		,'D�az'
		,'P�rez'
		,'1981-12-24'
		,'ulises.diaz@aol.com'
		),
		(NEWID()
		,'Valent�n'
		,'Quiroga'
		,'Ruiz'
		,'1980-11-23'
		,'valentin-quiroga@gmail.com'
		),
		(NEWID()
		,'Walter'
		,'Ram�rez'
		,'Cruz'
		,'1979-10-22'
		,'walterramirez@hotmail.com'
		),
		(NEWID()
		,'Xavier'
		,'P�rez'
		,'Mu�oz'
		,'1978-09-21'
		,'xavi.perez@xmail.com'
		),
		(NEWID()
		,'Yago'
		,'Mart�nez'
		,'P�rez'
		,'1987-08-20'
		,'yago-mtz@mymail.com'
		),
		(NEWID()
		,'Zacar�as'
		,'Silva'
		,'Fern�ndez'
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
		,'�lamo'
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
		,'�bano'
		,29
		,'Guadalupe'
		,'Bosques de la Pastora'
		),
		(NEWID()
		,'Olmo'
		,91
		,'Monterrey'
		,'Ni�o Artillero'
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
		,'L�zaro C�rdenas'
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
		,'San Pedro Garza Garc�a'
		,'Palo Blanco'
		),
		(NEWID()
		,'Palo de Rosa'
		,120
		,'San Pedro Garza Garc�a'
		,'Pablo Blanco'
		),
		(NEWID()
		,'Puebla de los �ngeles'
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
		,'Tulip�n'
		,2003
		,'Monterrey'
		,'Alfonso Reyes'
		),
		(NEWID()
		,'Frontera'
		,334
		,'Monterrey'
		,'L�zaro c�rdenas'
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
		,'Rodrigo G�mez'
		),
		(NEWID()
		,'Santiago'
		,203
		,'Monterrey'
		,'Ni�o Artillero'
		),
		(NEWID()
		,'Villaldama'
		,337
		,'Monterrey'
		,'Lampazos'
		),
		(NEWID()
		,'Garza Garc�a'
		,881
		,'Monterrey'
		,'Topo Chico'
		)
INSERT INTO sucursal(IdSucursal, Caja, calleSucursal, numeralSucursal, coloniaSucursal)
VALUES
	(NEWID()
	,342.00
	,'Manuel Ordo�ez'
	,44
	,'Fama'
	),
	(NEWID()
	,461.00
	,'Sta. Catarina'
	,617
	,'Trevi�o'
	),
	(NEWID()
	,711.00
	,'Villaldama'
	,711
	,'San Jos� de la Monta�a'
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
	,'Bernab� Gonz�lez'
	),
	(NEWID()
	,449.00
	,'Torres'
	,4917
	,'S�nchez Islas'
	),
	(NEWID()
	,711.00
	,'Juan Guti�rrez'
	,1202
	,'Ricardo Sosa Pav�n'
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
	,'El ca��n de las Flores'
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
	,'Saul �lvarez'
	),
	(NEWID()
	,'Ramipril'
	,200.00
	,'Luis Blanco'
	),
	(NEWID()
	,'Amlodipina'
	,507.00
	,'Daniel Ram�rez'
	),
	(NEWID()
	,'PAracetamol'
	,81.00
	,'Omar Wise'
	),
	(NEWID()
	,'Atorvastatina'
	,71.00
	,'Santiago Mart�nez'
	),
	(NEWID()
	,'Salbutamol'
	,120.00
	,'Alfredo Talavera'
	),
	(NEWID()
	,'Lansoprazol'
	,200.00
	,'Cesar Hern�ndez'
	),
	(NEWID()
	,'Abacat'
	,510.00
	,'Ernesto Sol�s'
	),
	(NEWID()
	,'Aciclovir Kern Pharma'
	,117.00
	,'L�zaro Narvaes'
	),
	(NEWID()
	,'�cido Zoledronico Normon'
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
	,'Iris Trevi�o'
	),
	(NEWID()
	,'Ansatipin'
	,171.00
	,'Omar Rodr�guez'
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