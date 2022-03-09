select concat(nombre, ' ' ,apellido_paterno, ' ', apellido_materno) as NOMBRE_COMPLETO, correo as CONTACTO,  nss, (sueldo + bono) as SUELDO
from gerente inner join empleado on gerente.id_empleado  = empleado.id_empleado;

select * from historico_producto_estado where fecha_estatus<fecha_estatus and id_producto = 4;

select nombre, marca, estatus, presentacion from producto inner join estado_producto on producto.id_estado_producto = estado_producto.id_estado_producto order by precio_venta, nombre, marca, estatus, presentacion;