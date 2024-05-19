-- Pruebas de Procedumientos Almacenados
CALL sp_registrar_venta_id(1, 1, 1, 0);
-- SELECT * FROM Ventas WHERE id_cliente = 1;

CALL sp_registrar_venta_nueva('kevin', 'munoz', 'kevinalexmunozpascal@gmail.com', '+598 91588237', 2, 1, 1);
-- SELECT * FROM Ventas WHERE id_cliente = (SELECT id_cliente FROM Clientes WHERE (nombre = 'kevin' AND apellido = 'munoz'));

CALL sp_ingresar_empleado('alex', 'pascal', 'kevinalexmunozpascal@gmail.com', '+598 91588237', 'jefe', 40, 20000);
-- SELECT * FROM Empleados WHERE (nombre = 'kevin' AND apellido = 'munoz');

CALL sp_ingresar_producto(4, 'vino tinto', 120, 100, 30, 953958858);
-- SELECT * FROM Productos WHERE nombre = 'vino tinto';

CALL sp_mostrar_ventas_lapso('2023-12-1', '2024-12-1');
