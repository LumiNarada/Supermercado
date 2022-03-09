-------------AFILIADO-----------------------
insert into afiliado (nombre, correo, ap_paterno, ap_materno, telefono, fecha_nacimiento) 
  values ('Renata', 'gatitacookie3@gmail.com', 'Ventura', 'Pelcastre', '5548269377', to_date('05-01-1983','DD-MM-YYYY'));
insert into afiliado (nombre, correo, ap_paterno, ap_materno, telefono, fecha_nacimiento) 
  values ('Carmelo', 'mesero_mero@gmail.com', 'Martínez', 'Nuñez', '7791158822', to_date('23-11-1970','DD-MM-YYYY'));
insert into afiliado (nombre, correo, ap_paterno, ap_materno, telefono, fecha_nacimiento) 
  values ('Natalia', 'vaselinarosa@gmail.com', 'Reyes', 'Obregón', '5595172926', to_date('17-07-1995','DD-MM-YYYY'));
insert into afiliado (nombre, correo, ap_paterno, ap_materno, telefono, fecha_nacimiento) 
  values ('Edgar', 'masterofcards0723@gmail.com', 'Carmona', 'Vidal', '5591571639', to_date('27-09-2001','DD-MM-YYYY'));
insert into afiliado (nombre, correo, ap_paterno, ap_materno, telefono, fecha_nacimiento) 
  values ('Petunia', 'cristalderosas99@gmail.com', 'Palafox', 'Cruz', '5564746382', to_date('09-06-1991','DD-MM-YYYY'));

-------------TARJETA-----------------------
 
insert into tarjeta (digitos, id_afiliado, fecha_expiracion, cvv)
 	values (6572818899172316, 1, to_date('01-12-2025','DD-MM-YYYY'), md5('542') );
 insert into tarjeta (digitos, id_afiliado, fecha_expiracion, cvv)
 	values (5271496371527799, 2, to_date('27-04-2024','DD-MM-YYYY'), md5('332') );
 insert into tarjeta (digitos, id_afiliado, fecha_expiracion, cvv)
 	values (9917258364718214, 3, to_date('21-08-2023','DD-MM-YYYY'), md5('651') );
 insert into tarjeta (digitos, id_afiliado, fecha_expiracion, cvv)
 	values (7782179364517289, 3, to_date('16-10-2025','DD-MM-YYYY'), md5('959') );
 insert into tarjeta (digitos, id_afiliado, fecha_expiracion, cvv)
 	values (9187654984654261, 4, to_date('11-09-2023','DD-MM-YYYY'), md5('933') );
 insert into tarjeta (digitos, id_afiliado, fecha_expiracion, cvv)
 	values (6526837365198765, 5, to_date('13-06-2024','DD-MM-YYYY'), md5('756') );

 -------------EMPLEADOS-----------------------
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Aline Mayret', 'Mendoza', 'Serna', 'G', 'poro_salavje@gmail.com','M', 54938588771, 10050.50, '5582967730', 'Av. Universidad no. 13, Coyoacán, Ciudad de México');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, domicilio)
 	values ('Carmen Andrea', 'Hidalgo', 'Caminos', 'G', 'artista_refinada7@gmail.com','V', 77958666712, 10050.50, 'Calle 5 de marzo no. 24, Iztapalapa, Ciudad de México');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Pedro', 'Hernández', 'Moreno', 'C', 'malabares_222@gmail.com','M', 41542863889, 5950.50, '5571829666', 'Calle 5 de mayo no. 53, col. Bueons Aires, La Magdalena Contreras, CDMX');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Montserrath', 'De León', 'Murillo', 'C', 'jilongacake@gmail.com','M', 94861514812, 5950.50, '7752654187', 'Prol. Cruz Roja s/n, col.Bocanegra, Álvaro Óbregon, Ciudad de México');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, domicilio)
 	values ('Mariano', 'Domínguez', 'Rosas', 'C', 'xxcaleidoscopioxx@gmail.com','M', 59871654137, 5950.50, 'Calle 16 de septimbre no. 2, bo. San Antonio, Coyoacán, Ciudad de México');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Carmina', 'Arriaga', 'Palacios', 'C', 'bella_luciernaga@gmail.com','M', 65238588795, 5950.50, '5582967730', 'Av. Doctores no. 13, Cuajimalpa, Ciudad de México');
 insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Mia', 'Domínguez', 'Aguilar', 'C', 'cosademia@gmail.com','M', 92837477193, 5950.50, '5593857439', 'Prol. Pirules no. 45, Cuajimalpa, Ciudad de México');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Alejandro', 'Urbina', 'Paredes', 'C', 'arquitectura_moderna@gmail.com','V', 95414164416, 5950.50, '5591827568', 'Av. Presidentes S/N, col. Niños Héroes , Gustavo A. Madero, CDMX');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Ana Paula', 'Fábila', 'Palacios', 'C', 'palacios_clarinets@gmail.com','V', 98634156790, 5950.50, '7761725982', 'Av. Pacífico no. 82, col. Florentino Rosas, Coyoacán, Ciudad de México');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, domicilio)
 	values ('Uriel', 'Crysta', 'Mollyshka', 'C', 'reina_potaxie@gmail.com','V', 65179987156, 5950.50, 'Calle Poetas no. 24, col. San Marcos, Tláhuac, CDMX');
insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Amanda', 'Villa', 'Rico', 'C', 'actualizando_oficial@gmail.com','V', 82967478110, 5950.50, '5596687082', 'Calle Calmaidades s/n, Cuahutémoc, Ciudad de México');
 insert into empleado  (nombre, apellido_paterno, apellido_materno, cargo, correo, turno, nss, sueldo, telefono, domicilio)
 	values ('Carlos', 'Meza', 'Mendoza', 'C', 'carlos_meza@gmail.com','V', 65238596172, 5950.50, '5593928374', 'Calle 1 de noviembre no. 16, Tláhuac, Ciudad de México');
insert into empleado  (nombre, apellido_paterno, apellido_materno, correo, turno, nss, sueldo, domicilio)
 	values ('Eduardo', 'Zaragoza', 'Hernández', 'eduardo_zara88@gmail.com','M', 65413465148, 4950.50, 'Calle Musas de Veracruz no. 13, col. Eminencias Nacionales, Tláhuac, CDMX');
insert into empleado  (nombre, apellido_paterno, apellido_materno, correo, turno, nss, sueldo, domicilio)
 	values ('Pepa', 'Mendoza', 'García', 'pepa_mendoza@gmail.com', 'V', 12935471529, 4950.50, 'Av. Jueogs Olímpicos no. 85, Coyoacán, Ciudad de México');
 
-------------GERENTE-----------------------
insert into gerente  (id_empleado, bono, fecha_contratacion)
 	values (1, 1500, to_date('07-02-2021','DD-MM-YYYY'));
insert into gerente  (id_empleado, bono, fecha_contratacion)
 	values (2, 4500, to_date('13-08-2018','DD-MM-YYYY'));

-------------CAJERO-----------------------
insert into cajero (id_empleado, numero_emergencia, maximo_grado_estudios)
 	values (3, '5591839677', 'BACH');
insert into cajero (id_empleado, numero_emergencia, maximo_grado_estudios)
 	values (4, '5592718596', 'LIC');
insert into cajero (id_empleado, numero_emergencia, maximo_grado_estudios)
 	values (8, '5588271963', 'BACH');
insert into cajero (id_empleado, numero_emergencia, maximo_grado_estudios)
 	values (9, '5556453217', 'BACH');
insert into cajero (id_empleado, id_jefe_cajero, numero_emergencia, maximo_grado_estudios)
 	values (5, 3, '5528711739', 'BACH');
insert into cajero (id_empleado, id_jefe_cajero, numero_emergencia, maximo_grado_estudios)
 	values (6, 3, '5546729364', 'BACH');
insert into cajero (id_empleado, id_jefe_cajero, numero_emergencia, maximo_grado_estudios)
 	values (7, 4, '7719527117', 'BACH');
insert into cajero (id_empleado, id_jefe_cajero, numero_emergencia, maximo_grado_estudios)
 	values (10, 8, '5549828213', 'BACH');
insert into cajero (id_empleado, id_jefe_cajero, numero_emergencia, maximo_grado_estudios)
 	values (11, 8, '5525179846', 'BACH');
insert into cajero (id_empleado, id_jefe_cajero, numero_emergencia, maximo_grado_estudios)
 	values (12, 9, '5529837191', 'BACH');

---------------PROVEEDOR--------------------
insert into proveedor (nombre, nombre_director, apellido_director, nombre_encargado, apellido_encargado, fecha_inicio_convenio, fecha_expiracion_convenio)
	values ('Láctosos Instant', 'Juan', 'Valencia Téllez', 'Ricardo', 'Maldonado García', to_date('01-01-2021','DD-MM-YYYY'), to_date('01-01-2023','DD-MM-YYYY'));
insert into proveedor (nombre, nombre_director, apellido_director, nombre_encargado, apellido_encargado, fecha_inicio_convenio, fecha_expiracion_convenio)
	values ('Fedex', 'Eduardo', 'Martorell Candela', 'Maite', 'Olmo Riera', to_date('30-07-2020','DD-MM-YYYY'), to_date('30-07-2025','DD-MM-YYYY'));
insert into proveedor (nombre, nombre_director, apellido_director, nombre_encargado, apellido_encargado, fecha_inicio_convenio, fecha_expiracion_convenio)
	values ('Malibú envíos', 'Alicia', 'Silva Echeverria', 'Raquel', 'Vilar Rosa', to_date('07-05-2021','DD-MM-YYYY'), to_date('07-05-2024','DD-MM-YYYY'));
insert into proveedor (nombre, nombre_director, apellido_director, nombre_encargado, apellido_encargado, fecha_inicio_convenio, fecha_expiracion_convenio)
	values ('Pumaproducts', 'Mateo', 'Linares Teruel', 'Carmen ', 'Labrador Gamez', to_date('18-10-2021','DD-MM-YYYY'), to_date('18-10-2023','DD-MM-YYYY'));
insert into proveedor (nombre, nombre_director, apellido_director, nombre_encargado, apellido_encargado, fecha_inicio_convenio, fecha_expiracion_convenio)
	values ('GameTrip', 'Julia', 'Perello Ubeda', 'Olga ', 'Fernández Solana', to_date('20-01-2022','DD-MM-YYYY'), to_date('20-01-2025','DD-MM-YYYY'));

---------------DIRECCION PROVEEDOR--------------------
insert into direccion_proveedor (id_proveedor, pais, ciudad, calle, numero)
	values (1, 'México', 'Ciudad de México', 'Av. Niños Héroes', 5);
insert into direccion_proveedor (id_proveedor, pais, ciudad, calle, numero)
	values (2, 'México', 'Guadalajara', 'Calle 5 de Mayo', 13);
insert into direccion_proveedor (id_proveedor, pais, ciudad, calle, numero)
	values (3, 'México', 'Monterrey', 'Av. Presidenets', 89);
insert into direccion_proveedor (id_proveedor, pais, ciudad, calle, numero)
	values (4, 'Brasil', 'Buenos Aires', 'Av. Mario Molina', 2);
insert into direccion_proveedor (id_proveedor, pais, ciudad, calle, numero)
	values (5, 'México', 'Ciudad de México', 'Prol. Colima', 70);

--------------SECCION-----------------
insert into seccion (nombre) values ('Limpieza');
insert into seccion (nombre) values ('Mascotas');
insert into seccion (nombre) values ('Farmacia');
insert into seccion (nombre) values ('Lácteos');
insert into seccion (nombre) values ('Juguetería');

---------------ESTADO PRODUCTO--------------------
insert into estado_producto (estatus, descripcion)
	values ('Comprado', 'Recién encargados al proveedor');
insert into estado_producto (estatus, descripcion)
	values ('En tránsito', 'El proveedor ha indicado que han salido de su almacén y están en camino al supermercado');
insert into estado_producto (estatus, descripcion)
	values ('En almacén', 'El pedido ha llegado a la tienda pero no se ha colocado al público');
insert into estado_producto (estatus, descripcion)
	values ('Agotado', 'No hay existencias ni en el almacén, ni en los estantes al público');

---------------PRODUCTO--------------------
insert into producto (id_seccion, id_estado_producto, fecha_adquisicion, presentacion, precio_venta, nombre, marca, fecha_estatus)
	values(4, 3,  to_date('20-01-2022','DD-MM-YYYY'),'1 cartón de leche de un litro', 21.50,'Leche', 'Alpura', to_timestamp('13-05-2021 10:30:00','DD-MM-YYYY HH:MI:SS'));
insert into producto (id_seccion, id_estado_producto, fecha_adquisicion, presentacion, precio_venta, nombre, marca, fecha_estatus)
	values(2, 3,  to_date('12-01-2022','DD-MM-YYYY'),'1 costal de alimento para perro de raza grande de 26 Kg', 659.50, 'Alimento Para Perro', 'Pedigree', to_timestamp('13-05-2021 10:30:00','DD-MM-YYYY HH:MI:SS'));
insert into producto (id_seccion, id_estado_producto, fecha_adquisicion, presentacion, precio_venta, nombre, marca, fecha_estatus)
	values(1, 3,  to_date('20-01-2022','DD-MM-YYYY'),'Limpiador para trastes de 1.5 litros', 35.50, 'Limpiador', 'Bref', to_timestamp('13-05-2021 10:30:00','DD-MM-YYYY HH:MI:SS'));
insert into producto (id_seccion, id_estado_producto, fecha_adquisicion, presentacion, precio_venta, nombre, marca, fecha_estatus)
	values(3, 4,  to_date('12-01-2022','DD-MM-YYYY'),'1 caja con 20 tabletas de paracetamol de 500 mg', 259.50, 'Medicamento', 'Pisa', to_timestamp('13-05-2021 10:30:00','DD-MM-YYYY HH:MI:SS'));
insert into producto (id_seccion, id_estado_producto, fecha_adquisicion, presentacion, precio_venta, nombre, marca, fecha_estatus)
	values(5, 3,  to_date('20-01-2022','DD-MM-YYYY'),'1 caja de 500 piezas lego castillo mágico', 659.50, 'Jueguete', 'Lego', to_timestamp('13-05-2021 10:30:00','DD-MM-YYYY HH:MI:SS'));

--------------TICKET--------------------
insert into ticket (id_afiliado, id_empleado, fecha_hora_compra, factura, tipo_pago, precio_total)
	values (2, 7, TO_TIMESTAMP('02-03-2022 09:30:22','DD-MM-YYYY HH:MI:SS'), 'N', 'E', 21.50);
insert into ticket (id_afiliado, id_empleado, fecha_hora_compra, factura, tipo_pago, precio_total)
	values (3, 13, TO_TIMESTAMP('02-03-2022 10:27:30','DD-MM-YYYY HH:MI:SS'), 'N', 'E', 35.50);
insert into ticket (id_afiliado, id_empleado, fecha_hora_compra, factura, tipo_pago, precio_total)
	values (3, 13, TO_TIMESTAMP('02-03-2022 11:20:12','DD-MM-YYYY HH:MI:SS'), 'S', 'E', 107.50);
insert into ticket (id_afiliado, id_empleado, fecha_hora_compra, factura, tipo_pago, precio_total)
	values (4, 8, TO_TIMESTAMP('02-03-2022 11:15:52','DD-MM-YYYY HH:MI:SS'), 'S', 'T', 259.50);
insert into ticket (id_afiliado, id_empleado, fecha_hora_compra, factura, tipo_pago, precio_total)
	values (5, 8, TO_TIMESTAMP('02-03-2022 12:59:00','DD-MM-YYYY HH:MI:SS'), 'N', 'T', 659.50);

------------------HISTORICO PRODUCTO---------------
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(1, 3, to_date('05-03-2022','DD-MM-YYYY'));
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(2, 3, to_date('05-03-2022','DD-MM-YYYY'));
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(3, 3, to_date('05-03-2022','DD-MM-YYYY'));
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(4, 1, to_date('27-01-2022','DD-MM-YYYY'));
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(4, 2, to_date('03-02-2022','DD-MM-YYYY'));
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(4, 3, to_date('09-02-2022','DD-MM-YYYY'));
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(4, 4, to_date('06-03-2022','DD-MM-YYYY'));
insert into historico_producto_estado(id_producto, id_estado_producto, fecha_estatus)
	values(5, 3, to_date('05-03-2022','DD-MM-YYYY'));
select * from ticket;
---------------TICKET_PRODUCTO------------------------
insert into ticket_producto(id_ticket, id_producto)
	values(1, 1);
insert into ticket_producto(id_ticket, id_producto)
	values(2, 3);
insert into ticket_producto(id_ticket, id_producto)
	values(3, 1);
insert into ticket_producto(id_ticket, id_producto)
	values(3, 1);
insert into ticket_producto(id_ticket, id_producto)
	values(3, 1);
insert into ticket_producto(id_ticket, id_producto)
	values(3, 1);
insert into ticket_producto(id_ticket, id_producto)
	values(3, 1);
insert into ticket_producto(id_ticket, id_producto)
	values(4, 4);
insert into ticket_producto(id_ticket, id_producto)
	values(5, 5);

------------------PRODUCTO_PROVEEDOR-------------------
insert into producto_proveedor(id_producto, id_proveedor, precio_proveedor)
	values(1, 1, 20.00);
insert into producto_proveedor(id_producto, id_proveedor, precio_proveedor)
	values(2, 2, 540.00);
insert into producto_proveedor(id_producto, id_proveedor, precio_proveedor)
	values(3, 3, 25.00);
insert into producto_proveedor(id_producto, id_proveedor, precio_proveedor)
	values(4, 4, 350.00);
insert into producto_proveedor(id_producto, id_proveedor, precio_proveedor)
	values(4, 1, 350.00);
insert into producto_proveedor(id_producto, id_proveedor, precio_proveedor)
	values(5, 5, 600.00);
insert into producto_proveedor(id_producto, id_proveedor, precio_proveedor)
	values(1, 5, 21.00);

------------------SECCION_PROVEEDOR-------------------
insert into seccion_proveedor(id_seccion, id_proveedor)
	values (1, 1);
insert into seccion_proveedor(id_seccion, id_proveedor)
	values (2, 2);
insert into seccion_proveedor(id_seccion, id_proveedor)
	values (3, 3);
insert into seccion_proveedor(id_seccion, id_proveedor)
	values (4, 4);
insert into seccion_proveedor(id_seccion, id_proveedor)
	values (5, 5);


------------------SECCION_EMPLEADO-------------------
insert into seccion_empleado(id_seccion, id_empleado)
	values(1,1);
insert into seccion_empleado(id_seccion, id_empleado)
	values(3,2);
insert into seccion_empleado(id_seccion, id_empleado)
	values(2, 3);
insert into seccion_empleado(id_seccion, id_empleado)
	values(5, 4);
insert into seccion_empleado(id_seccion, id_empleado)
	values(4, 5);
insert into seccion_empleado(id_seccion, id_empleado)
	values(1,6);
insert into seccion_empleado(id_seccion, id_empleado)
	values(5, 7);
insert into seccion_empleado(id_seccion, id_empleado)
	values(1,8);
insert into seccion_empleado(id_seccion, id_empleado)
	values(2, 9);
insert into seccion_empleado(id_seccion, id_empleado)
	values(2, 10);
insert into seccion_empleado(id_seccion, id_empleado)
	values(3, 11);
insert into seccion_empleado(id_seccion, id_empleado)
	values(5, 12);
insert into seccion_empleado(id_seccion, id_empleado)
	values(3, 12);
insert into seccion_empleado(id_seccion, id_empleado)
	values(4, 13);
insert into seccion_empleado(id_seccion, id_empleado)
	values(4, 14);
	