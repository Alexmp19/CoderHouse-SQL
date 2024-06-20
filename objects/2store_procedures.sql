
USE alcol_drinks;

DROP PROCEDURE IF EXISTS sp_registrar_venta_id;
DROP PROCEDURE IF EXISTS sp_registrar_venta_nueva;
DROP PROCEDURE IF EXISTS sp_ingresar_empleado;
DROP PROCEDURE IF EXISTS sp_ingresar_producto;
DROP PROCEDURE IF EXISTS sp_mostrar_ventas_lapso;
DROP PROCEDURE IF EXISTS sp_actualizar_cantidad_resumen_ventas;
DROP PROCEDURE IF EXISTS sp_actualizar_total_resumen_ventas;
DROP PROCEDURE IF EXISTS sp_actualizar_total_ventas;

DELIMITER //
CREATE PROCEDURE sp_actualizar_cantidad_resumen_ventas(
	IN producto_id INT, 
    IN es_pedido BOOLEAN
)
BEGIN
    IF es_pedido THEN
        UPDATE Resumen_Ventas 
        SET cantidad_ventas_pedidos = cantidad_ventas_pedidos + 1,
            cantidad_ventas_general = cantidad_ventas_general + 1
        WHERE id_producto = producto_id;
    ELSE
        UPDATE Resumen_Ventas 
        SET cantidad_ventas_presencial = cantidad_ventas_presencial + 1,
            cantidad_ventas_general = cantidad_ventas_general + 1
        WHERE id_producto = producto_id;
    END IF;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_actualizar_total_resumen_ventas(
	IN producto_id INT,
    IN es_pedido BOOL
)
BEGIN
	
    DECLARE precio_producto FLOAT;
    DECLARE costo_producto FLOAT;
    
    SELECT precio, costo INTO precio_producto, costo_producto
    FROM Productos
    WHERE id_producto = producto_id;
    
    IF es_pedido THEN
		UPDATE Resumen_Ventas SET
			beneficio_total_pedidos = cantidad_ventas_pedidos * calcular_beneficio(precio_producto, costo_producto),
			beneficio_total_general = (cantidad_ventas_presencial + cantidad_ventas_pedidos) * calcular_beneficio(precio_producto, costo_producto)
		WHERE id_producto = producto_id;
	ELSE
		UPDATE Resumen_Ventas SET
			beneficio_total_presencial = cantidad_ventas_presencial * calcular_beneficio(precio_producto, costo_producto),
			beneficio_total_general = (cantidad_ventas_presencial + cantidad_ventas_pedidos) * calcular_beneficio(precio_producto, costo_producto)
		WHERE id_producto = producto_id;
	END IF;
    
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_actualizar_total_ventas(
	IN venta_id INT
)
BEGIN

    DECLARE total_ventas FLOAT;
    
    SELECT SUM(p.precio * vp.cantidad) INTO total_ventas
    FROM Ventas_Productos vp
    INNER JOIN Productos p ON p.id_producto = vp.id_producto
    WHERE vp.id_venta = venta_id;

    UPDATE Ventas
    SET total = total_ventas
    WHERE id_venta = venta_id;
    
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_registrar_venta_id(
    IN id_cliente INT,
    IN id_producto INT,
    IN cantidad INT,
    IN pedido BOOL
)
BEGIN

    INSERT INTO Ventas (id_cliente, fecha, pedido) VALUES 
		(id_cliente, NOW(), pedido);
    SET @venta_id = LAST_INSERT_ID();
    
    INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad) VALUES 
		(@venta_id, id_producto, cantidad);

END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_registrar_venta_nueva (
    IN nombre VARCHAR(50),
    IN apellido VARCHAR(50),
    IN email VARCHAR(250),
    IN telefono VARCHAR(20),
    IN id_producto INT,
    IN cantidad INT,
    IN pedido BOOL
)
BEGIN

	INSERT INTO Clientes (nombre, apellido, email, telefono) VALUES
		(nombre, apellido, email, telefono);
	SET @id_cliente = LAST_INSERT_ID();

    INSERT INTO Ventas (id_cliente, fecha, pedido) VALUES 
		(@id_cliente, NOW(), pedido);
	SET @id_venta = LAST_INSERT_ID();
    
    INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad) VALUES 
		(@id_venta, id_producto, cantidad);

END //
DELIMITER ;

-- Extender luego
DELIMITER //
CREATE PROCEDURE sp_ingresar_empleado (
	IN nombre VARCHAR (50),
    IN apellido VARCHAR (50),
    IN email VARCHAR (250),
    IN telefono VARCHAR (20),
    IN puesto_actual VARCHAR (250),
    IN horas_semanales INT,
    IN salario_nominal FLOAT
)
BEGIN

	INSERT INTO Empleados (nombre, apellido, email, telefono, puesto_actual, horas_semanales, salario_nominal) VALUES
		(nombre, apellido, email, telefono, puesto_actual, horas_semanales, salario_nominal);
        
END //
DELIMITER ;

-- Extender luego
DELIMITER //

CREATE PROCEDURE sp_ingresar_producto (
    IN p_id_proveedor INT,
    IN p_nombre VARCHAR(50),
    IN p_precio FLOAT,
    IN p_costo FLOAT,
    IN p_stock INT,
    IN p_numero_serie INT
)
BEGIN

    DECLARE v_stock_existente INT;

    SELECT stock INTO v_stock_existente
    FROM Productos
    WHERE numero_serie = p_numero_serie;

    IF v_stock_existente IS NOT NULL THEN
        UPDATE Productos
        SET stock = stock + p_stock
        WHERE nombre = p_nombre;
    ELSE
        INSERT INTO Productos (id_proveedor, nombre, precio, costo, stock, numero_serie)
        VALUES (p_id_proveedor, p_nombre, p_precio, p_costo, p_stock, p_numero_serie);
    END IF;
    
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_mostrar_ventas_lapso (
	IN fecha1 DATE,
    IN fecha2 DATE
)
BEGIN
	
    SELECT 
		calcular_ventas_lapso(fecha1, fecha2) AS cantidad_ventas, 
		calcular_total_lapso(fecha1, fecha2) AS total_ventas;
    
END//
DELIMITER ;


-- Pruebas de Procedumientos Almacenados
-- CALL sp_registrar_venta_id(1, 1, 1, 0);
-- SELECT * FROM Ventas WHERE id_cliente = 1;

-- CALL sp_registrar_venta_nueva('kevin', 'munoz', 'kevinalexmunozpascal@gmail.com', '+598 91588237', 2, 1, 1);
-- SELECT * FROM Ventas WHERE id_cliente = (SELECT id_cliente FROM Clientes WHERE (nombre = 'kevin' AND apellido = 'munoz'));

-- CALL sp_ingresar_empleado('alex', 'pascal', 'kevinalexmunozpascal@gmail.com', '+598 91588237', 'jefe', 40, 20000);
-- SELECT * FROM Empleados WHERE (nombre = 'kevin' AND apellido = 'munoz');

-- CALL sp_ingresar_producto(4, 'vino tinto', 120, 100, 30, 953958858);
-- SELECT * FROM Productos WHERE nombre = 'vino tinto';

-- CALL sp_mostrar_ventas_lapso('2023-12-1', '2024-12-1');