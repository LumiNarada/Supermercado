begin;
-------------AFILIADO-----------------------
create sequence id_afiliado_seq;
create table afiliado(
	id_afiliado int not null default nextval('id_afiliado_seq'),
	nombre varchar(40) not null,
	correo varchar(30) not null,
	ap_paterno varchar(40) not null,
	ap_materno varchar(40) not null,
	telefono char(10) not null,
	fecha_nacimiento date not null,
	
	constraint id_afiliado_pk
		primary key(id_afiliado)
);

-------------TARJETA-----------------------
create table tarjeta(
	digitos bigint not null,
	id_afiliado int not null,
	fecha_expiracion date not null,
	cvv varchar (75) not null,
	
	constraint digitos_pk
		primary key (digitos),
	
	constraint id_afiliado_tarjeta_fk
		foreign key (id_afiliado)
		references afiliado(id_afiliado)
		on delete cascade on update cascade

);

commit;

-------------EMPLEADOS-----------------------

begin;
create sequence id_empleado_seq;
create table empleado (
	id_empleado int not null default nextval('id_empleado_seq'),
	nombre varchar(30) not null,
	apellido_paterno varchar(20) not null,
	apellido_materno varchar(20) not null,
	cargo char(1),
	correo varchar(30) not null,
	turno char(1) not null,
	nss numeric(11, 0) not null,
	sueldo numeric(7, 2) not null,
	telefono char(10),
	domicilio varchar(80) not null,
	
	constraint id_empleado_pk
		primary key(id_empleado),
	
	constraint cargo_chk
		check (cargo in ('G', 'C')),
		
	constraint turno_chk
		check (turno in ('M', 'V')),

	constraint sueldo_chk
		check (sueldo > 100)
	
);

-------------GERENTE-----------------------
create table gerente(
	id_empleado int not null,
	bono numeric(8, 0) not null,
	fecha_contratacion date not null,
	
	constraint gerente_pk
		primary key(id_empleado),
		
	constraint id_empleado_gerente_fk
		foreign key (id_empleado)
		references empleado(id_empleado)
		on delete cascade on update cascade,
		
	constraint bono_chk
		check (bono >= 1500)
	
);
-------------CAJERO-----------------------
create table cajero (
	id_empleado int not null,
	id_jefe_cajero int,
	numero_emergencia char(10) not null,
	maximo_grado_estudios varchar(10) not null,
	
	constraint cajero_pk
		primary key(id_empleado),
		
	constraint id_empleado_cajero_fk
		foreign key (id_empleado)
		references empleado(id_empleado)
		on delete cascade on update cascade,
	--UNARIA
	constraint id_jefe_cajero_fk
		foreign key(id_jefe_cajero)
		references cajero(id_empleado)
		on delete cascade on update cascade
	
);

commit;

---------------TICKET--------------------
begin;
create sequence id_ticket_seq;
create table ticket (
	id_ticket int not null default nextval('id_ticket_seq'),
	id_afiliado int not null,
	id_empleado int not null,
	fecha_hora_compra timestamp not null,
	factura char(1) not null,
	tipo_pago char(1) not null,
	precio_total numeric(10, 2) not null,
	
	constraint id_ticket_pk
		primary key(id_ticket),
		
	constraint id_afiliado_ticket_fk
		foreign key(id_afiliado)
		references afiliado(id_afiliado)
		on delete cascade on update cascade,
		
	constraint id_empleado_ticket_fk
		foreign key(id_empleado)
		references empleado(id_empleado)
		on delete cascade on update cascade,
	
	--CHECKS DE CHAR
	check (factura in ('S', 'N')),
	check (tipo_pago in ('E', 'T')),
	--CHECK DE PRECIO
	check (precio_total > 0)
	
);

commit;

---------------PROVEEDOR--------------------
begin;
create sequence id_proveedor_seq;
create table proveedor(
	id_proveedor int not null default nextval('id_proveedor_seq'),
	nombre varchar(40) not null,
	
	nombre_director varchar(20),
	apellido_director varchar(20),

	nombre_encargado varchar(20) not null,
	apellido_encargado varchar(20) not null,
	
	fecha_inicio_convenio date not null,
	fecha_expiracion_convenio date not null,
	
	constraint id_proveedor_pk
		primary key(id_proveedor)
	
);
---------------DIRECCION PROVEEDOR--------------------
create table direccion_proveedor(
	id_proveedor int not null,
	pais varchar(30) not null,
	ciudad varchar(30) not null,
	calle varchar(30) not null,
	numero int not null,
	
	constraint id_direccion_proveedor_pk
		primary key(id_proveedor),
	
	constraint id_direccion_proveedor_fk
		foreign key(id_proveedor)
		references proveedor(id_proveedor)
		on delete cascade on update cascade
			
);

commit;

--------------SECCION-----------------
begin;
create sequence id_seccion_seq;
create table seccion(
	id_seccion int not null default nextval('id_seccion_seq'),
	nombre varchar(30),
	
	constraint id_seccion_pk
		primary key(id_seccion)


);

commit;

---------------ESTADO PRODUCTO Y PRODUCTO--------------------
begin;
create sequence id_estado_producto_seq;
create table estado_producto(
	id_estado_producto int not null default nextval('id_estado_producto_seq'),
	estatus varchar(15) not null,
	descripcion text not null,
	
	constraint id_estado_producto_pk
		primary key(id_estado_producto)
	
);



create sequence id_producto_seq;
create table producto(
	id_producto int not null default nextval('id_producto_seq'),
	id_seccion int not null,
	id_estado_producto int not null,
	
	fecha_adquisicion date not null,
	presentacion varchar(60) not null,
	precio_venta numeric(10, 2) not null,
	nombre varchar(20) not null,
	marca varchar(20) not null,
	fecha_estatus timestamp not null,
	
	constraint id_producto_pk
		primary key(id_producto),
	----FORANEAS----
	constraint id_seccion_producto_fk
		foreign key(id_seccion)
		references seccion(id_seccion)
		on delete restrict on update cascade, 
		
	constraint id_estado_producto_fk
		foreign key(id_estado_producto)
		references estado_producto(id_estado_producto)
		on delete cascade on update cascade,
	--CHECKS--
	constraint precio_venta_chk
		check (precio_venta > 0)
);

---INIDICE PRODUCTO---
create index producto_nombre_idx on producto(nombre);


------------------HISTORICO PRODUCTO---------------
create sequence id_historico_producto_seq;
create table historico_producto_estado(
	id_historico_producto int not null default nextval('id_historico_producto_seq'),
	id_producto int not null,
	id_estado_producto int not null,
	
	fecha_estatus timestamp not null,
	
	constraint id_historico_producto_pk
		primary key(id_historico_producto),

	----FORANEAS---
	constraint id_producto_historico_producto_fk
		foreign key(id_producto)
		references producto(id_producto)
		on delete cascade on update cascade,
		
	constraint id_estado__historico_estado_producto_fk
		foreign key(id_estado_producto)
		references estado_producto(id_estado_producto)
		on delete cascade on update cascade

);

commit;

---------------TABLAS DERIVADAS DE MUCHOS A MUCHOS-----------

---------------TICKET_PRODUCTO------------------------

create table ticket_producto(
	id_ticket int not null,
	id_producto int not null,
		
	constraint id_ticket_ticket_fk
		foreign key (id_ticket)
		references ticket(id_ticket)
		on delete cascade on update cascade,
	
	constraint id_producto_producto_fk
		foreign key (id_producto)
		references producto(id_producto)
		on delete cascade on update cascade 
	
);

------------------PRODUCTO_PROVEEDOR-------------------

create table producto_proveedor(
	id_producto int not null,
	id_proveedor int not null,
	
	precio_proveedor numeric(8, 2) not null,
	
	constraint id_producto_producto_fk
		foreign key(id_producto)
		references producto(id_producto)
		on delete cascade on update cascade,
		
	constraint id_proveedor_proveedor_fk
		foreign key(id_proveedor)
		references proveedor(id_proveedor)
		on delete restrict on update cascade
);


------------------SECCION_PROVEEDOR-------------------

create table seccion_proveedor(
	id_seccion int not null,
	id_proveedor int not null,
	
	constraint seccion_proveedor_pk
		primary key (id_seccion, id_proveedor),
		
	constraint id_seccion_seccion_proveedor_fk
		foreign key (id_seccion)
		references seccion(id_seccion)
		on delete cascade on update cascade,
		
	constraint id_proveedor_seccion_proveedor_fk
		foreign key (id_proveedor)
		references proveedor(id_proveedor)
		on delete cascade on update cascade

);


------------------SECCION_EMPLEADO-------------------

create table seccion_empleado(
	id_seccion int not null,
	id_empleado int not null,
	
	constraint seccion_empleado_pk
		primary key(id_seccion, id_empleado),
	
	constraint id_seccion_seccion_empleado_fk
		foreign key(id_seccion)
		references seccion(id_seccion)
		on delete cascade on update cascade,
		
	constraint id_empleado_seccion_empleado_fk
		foreign key(id_empleado)
		references empleado(id_empleado)
		on delete cascade on update cascade
	
		
);