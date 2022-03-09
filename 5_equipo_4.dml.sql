-------------AFILIADO-----------------------
update afiliado set telefono='5593824471' where id_afiliado=1;
update afiliado set correo='petunia_pc5@gmail.com' where id_afiliado=5;

-------------TARJETA-----------------------
update tarjeta set fecha_expiracion=to_date('01-01-2030','DD-MM-YYYY') where cvv=md5(542);
update tarjeta set fecha_expiracion=to_date('31-01-2030','DD-MM-YYYY') where cvv=md5(651);

-------------EMPLEADO-----------------------
update empleado set telefono= '5583719467' where id_empleado=1;
update empleado set telefono= null where id_empleado=9;

-------------GERENTE-----------------------
update gerente set fecha_contratacion=to_date('02-02-2021','DD-MM-YYYY') where id_empleado=1;
update gerente set fecha_contratacion=to_date('14-08-2021','DD-MM-YYYY') where id_empleado=2;

-------------CAJERO-----------------------
update cajero set maximo_grado_estudios = 'LIC' where id_empleado = 7;
update cajero set numero_emergencia  = '5592838817' where id_empleado = 3;

---------------TICKET--------------------
update ticket set factura = 'S' where id_ticket = 1;
update ticket set factura = 'N' where id_ticket = 3;

---------------PROVEEDOR--------------------
update proveedor set fecha_expiracion_convenio = to_date('11-05-2025','DD-MM-YYYY') where id_proveedor  = 4;
update proveedor set nombre = 'Lácteos Instantáneos' where id_proveedor  = 1;

---------------PRODUCTO--------------------
update producto set id_estado_producto = 4 where id_producto = 1;
update producto set id_estado_producto = 1 where id_producto = 4;

---------------ESTADO--------------------
update estado_producto set descripcion = 'No hay existencias en el almacén ni en los estantes al público' where id_estado_producto = 4;
update estado_producto set descripcion = 'Han salido del almacén del proveedor y están en camino al supermercado' where id_estado_producto = 2;

---------------SECCION--------------------
update seccion set nombre = 'Lácteos y derivados' where id_seccion = 4;
update seccion set nombre = 'Limpieza y domésticos' where id_seccion = 1;


