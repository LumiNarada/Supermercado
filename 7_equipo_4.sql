-------------DATOS DE GERENTE-----------------------
select concat(nombre, ' ' ,apellido_paterno, ' ', apellido_materno) as NOMBRE_COMPLETO, correo as CONTACTO,  nss, (sueldo + bono) as SUELDO
from gerente inner join empleado on gerente.id_empleado  = empleado.id_empleado;

-------------ACTUALIZACIÓN MÁS RECIENTE DE UN PRODUCTO-----------------------
select * from historico_producto_estado where id_producto = 4 and 1=1 order by fecha_estatus desc FETCH FIRST 1 ROWS only ;


-------------LISTA DE PRODUCTOS POR PRECIO-----------------------
select nombre, marca, estatus, presentacion from producto inner join estado_producto on producto.id_estado_producto = estado_producto.id_estado_producto order by precio_venta, nombre, marca, estatus, presentacion;
