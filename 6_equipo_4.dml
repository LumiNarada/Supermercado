

-------------TABLA: TARJETA--------------


--MOSTRAR TODO ANTES DE ELIMINAR----------
SELECT * FROM tarjeta;
--REGISTRO 1 ELIMINADO------------
begin;
delete from tarjeta
where id_afiliado=2 and fecha_expiracion < to_date('2025', 'YYYY')
returning *;

commit;

--Verificar que se elimino

SELECT * FROM tarjeta where id_afiliado=2 and fecha_expiracion < to_date('2025', 'YYYY');

--REGISTRO 2 ELIMINADO------------
begin;
delete from tarjeta
where id_afiliado=4 and fecha_expiracion < to_date('2025', 'YYYY')
returning *;
commit;

--Verificar que se elimino

SELECT * FROM tarjeta where id_afiliado=4 and fecha_expiracion < to_date('2025', 'YYYY');



-------------TABLA: AFILIADO--------------


--MOSTRAR TODO ANTES DE ELIMINAR----------
SELECT * FROM afiliado;
--REGISTRO 1 ELIMINADO------------
begin;
delete from afiliado
where nombre='Renata' and ap_paterno='Ventura'
returning *;
commit;

--Verificar que se elimino

SELECT nombre, ap_paterno FROM afiliado 
where nombre='Renata' and ap_paterno='Ventura';

--Tambien se elimina su tarjeta 

select nombre, ap_paterno, digitos from afiliado a join tarjeta t
	on a.id_afiliado = t.id_afiliado 
	where nombre='Renata' and ap_paterno='Ventura';

--REGISTRO 2 ELIMINADO------------

begin;
delete from afiliado
where nombre='Petunia' and ap_paterno='Palafox'
returning *;
commit;

--Verificar que se elimino

SELECT nombre, ap_paterno FROM afiliado 
where nombre='Petunia' and ap_paterno='Palafox';

--Tambien se elimina su tarjeta 

select nombre, ap_paterno, digitos from afiliado a join tarjeta t
	on a.id_afiliado = t.id_afiliado 
	where nombre='Petunia' and ap_paterno='Palafox';




-------------TABLA: EMPLEADO - CAJERO --------------



--MOSTRAR TODO ANTES DE ELIMINAR----------
SELECT * FROM empleado;

--REGISTRO 1 ELIMINADO------------
begin;
delete from empleado
where nombre='Mariano' and apellido_paterno='Domínguez' and apellido_materno='Rosas'
returning *;
commit;

--Verificar que se elimino

SELECT nombre, apellido_paterno, apellido_materno FROM empleado 
where nombre='Mariano' and apellido_paterno='Domínguez' and apellido_materno='Rosas';

--Tambien se elimina su subtipo 

select nombre, apellido_paterno, apellido_materno, maximo_grado_estudios, cargo 
from empleado e join cajero c
	on e.id_empleado  = c.id_empleado  
	where nombre='Mariano' and apellido_paterno='Domínguez' and apellido_materno='Rosas';

--REGISTRO 2 ELIMINADO------------
begin;
delete from empleado
where nombre='Pedro' and apellido_paterno='Hernández' and apellido_materno='Moreno'
returning *;
commit;

--Verificar que se elimino

SELECT nombre, apellido_paterno, apellido_materno FROM empleado 
where nombre='Pedro' and apellido_paterno='Hernández' and apellido_materno='Moreno';

--Tambien se elimina su subtipo 

select nombre, apellido_paterno, apellido_materno, maximo_grado_estudios, cargo 
from empleado e join cajero c
	on e.id_empleado  = c.id_empleado  
	where nombre='Pedro' and apellido_paterno='Hernández' and apellido_materno='Moreno';



-------------TABLA: EMPLEADO - GERENTE --------------


--MOSTRAR TODO ANTES DE ELIMINAR----------
SELECT * FROM empleado;

--REGISTRO 1 ELIMINADO------------
begin;
delete from empleado
where nombre='Carmen Andrea' and apellido_paterno='Hidalgo' and apellido_materno='Caminos'
returning *;
commit;

--Verificar que se elimino

SELECT nombre, apellido_paterno, apellido_materno FROM empleado 
where nombre='Carmen Andrea' and apellido_paterno='Hidalgo' and apellido_materno='Caminos';

--Tambien se elimina su subtipo 

select nombre, apellido_paterno, apellido_materno, bono, cargo 
from empleado e join gerente g
	on e.id_empleado  = g.id_empleado  
	where nombre='Carmen Andrea' and apellido_paterno='Hidalgo' and apellido_materno='Caminos';

--REGISTRO 2 ELIMINADO------------
begin;
delete from empleado
where nombre='Aline Mayret' and apellido_paterno='Mendoza' and apellido_materno='Serna'
returning *;
commit;

--Verificar que se elimino

SELECT nombre, apellido_paterno, apellido_materno FROM empleado 
where nombre='Aline Mayret' and apellido_paterno='Mendoza' and apellido_materno='Serna';

--Tambien se elimina su subtipo 

select nombre, apellido_paterno, apellido_materno, bono, cargo 
from empleado e join gerente g
	on e.id_empleado  = g.id_empleado  
	where nombre='Aline Mayret' and apellido_paterno='Mendoza' and apellido_materno='Serna';





-------------TABLA: TICKET --------------



--MOSTRAR TODO ANTES DE ELIMINAR----------
SELECT * FROM ticket;

--REGISTRO 1 ELIMINADO------------
begin;
delete from ticket
where fecha_hora_compra < to_timestamp('02-03-2022 10:30', 'dd-mm-YYYY HH:MI') 
and fecha_hora_compra > to_timestamp('02-03-2022 10:00', 'dd-mm-YYYY HH:MI')
returning *;
commit;

--Verificar que se elimino
SELECT id_ticket, fecha_hora_compra, tipo_pago FROM ticket 
where fecha_hora_compra < to_timestamp('02-03-2022 10:30', 'dd-mm-YYYY HH:MI') 
and fecha_hora_compra > to_timestamp('02-03-2022 10:00', 'dd-mm-YYYY HH:MI');


--REGISTRO 2 ELIMINADO------------
begin;
delete from ticket
where fecha_hora_compra < to_timestamp('02-03-2022 9:40', 'dd-mm-YYYY HH:MI') 
and fecha_hora_compra > to_timestamp('02-03-2022 8:00', 'dd-mm-YYYY HH:MI')
returning *;
commit;

--Verificar que se elimino
SELECT id_ticket, fecha_hora_compra, tipo_pago FROM ticket 
where fecha_hora_compra < to_timestamp('02-03-2022 9:40', 'dd-mm-YYYY HH:MI') 
and fecha_hora_compra > to_timestamp('02-03-2022 8:00', 'dd-mm-YYYY HH:MI');




-------------TABLA: PRODUCTO --------------



--MOSTRAR TODO ANTES DE ELIMINAR----------
SELECT * FROM producto;

--REGISTRO 1 ELIMINADO------------
begin;
delete from producto 
where nombre='Leche' and marca='Alpura'
returning *;
commit;

--Verificar que se elimino
SELECT nombre, marca, id_seccion FROM producto  
where nombre='Leche' and marca='Alpura';

--REGISTRO 2 ELIMINADO------------
begin;
delete from producto 
where nombre='Limpiador' and marca='Bref'
returning *;
commit;

--Verificar que se elimino
SELECT nombre, marca, id_seccion FROM producto  
where nombre='Limpiador' and marca='Bref';






/*
PROVEEDOR no se elimino algun registro ya que se coloco en la tabla
producto_proveedor on delete restrict, nuestro razonamiento dice que
si 'acabamos' un convenio con el proveedor y nos sigue quedando producto
de ellos, se deberan acabar todos los productos para que el proveedor 
pueda ser eliminado.
*/

/*
SECCION no se elimino algun registro ya que se coloco en la tabla
producto on delete restrict, nuestro razonamiento dice que
si 'acabamos' una seccion, primero debemos acabarnos todos los
productos de ella.
*/

/*
GERENTE Y CAJERO no se eliminaron registros de manera directa
ya que al hacerlo en empleado se eliminaban sus respectivos
cargos.
*/