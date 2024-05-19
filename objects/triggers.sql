
USE alcol_drinks;

DROP TRIGGER IF EXISTS copiar_datos_desde_empleados;
DROP TRIGGER IF EXISTS copiar_datos_desde_clientes;
DROP TRIGGER IF EXISTS copiar_producto_resumen_ventas;
DROP TRIGGER IF EXISTS agregar_pendiente;
DROP TRIGGER IF EXISTS actualizar_total_ventas;
DROP TRIGGER IF EXISTS actualizar_resumen_ventas;
DROP TRIGGER IF EXISTS actualizar_estado_pendiente;
DROP TRIGGER IF EXISTS actualizar_estado_pago;
DROP TRIGGER IF EXISTS actualizar_estado_cancelado;
DROP TRIGGER IF EXISTS actualizar_estado_viajando;
DROP TRIGGER IF EXISTS actualizar_estado_entregado;

-- Creamos triggers
-- Empleados
DELIMITER //
CREATE TRIGGER copiar_datos_desde_empleados
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN
    INSERT INTO Datos (id_empleado) VALUES (NEW.id_empleado);
END//
DELIMITER ;

-- Clientes
DELIMITER //
CREATE TRIGGER copiar_datos_desde_clientes
AFTER INSERT ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Datos (id_cliente) VALUES (NEW.id_cliente);
END//
DELIMITER ;

-- Productos
DELIMITER //
CREATE TRIGGER copiar_producto_resumen_ventas
AFTER INSERT ON Productos
FOR EACH ROW
BEGIN
	INSERT INTO Resumen_Ventas (id_producto) VALUES
		(NEW.id_producto);
END//
DELIMITER ;

-- Ventas
DELIMITER //
CREATE TRIGGER agregar_pendiente
BEFORE INSERT ON Ventas
FOR EACH ROW
BEGIN
	
	INSERT INTO Pedidos_Pendientes(id_venta)
		SELECT
			id_venta
		FROM Ventas
        WHERE (id_venta = NEW.id_venta) AND (pedido = TRUE);
    
END//
DELIMITER ;

-- Ventas_Productos
DELIMITER //
CREATE TRIGGER actualizar_total_ventas
AFTER INSERT ON Ventas_Productos
FOR EACH ROW
BEGIN
	CALL sp_actualizar_total_ventas(NEW.id_venta);
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER actualizar_resumen_ventas
AFTER INSERT ON Ventas_Productos
FOR EACH ROW
BEGIN
    CALL sp_actualizar_cantidad_resumen_ventas(NEW.id_producto, (SELECT pedido FROM Ventas WHERE id_venta = NEW.id_venta));
    CALL sp_actualizar_total_resumen_ventas(NEW.id_producto, (SELECT pedido FROM Ventas WHERE id_venta = NEW.id_venta));
END//
DELIMITER ;

-- Pedidos_Pendientes
DELIMITER //
CREATE TRIGGER actualizar_estado_pendiente
AFTER INSERT ON Pedidos_Pendientes
FOR EACH ROW
BEGIN
	
    UPDATE Ventas
    SET estado = 'pendiente'
    WHERE id_venta = NEW.id_venta;
    
END//
DELIMITER ;

-- Pedidos_Cancelados
DELIMITER //
CREATE TRIGGER actualizar_estado_cancelado
AFTER INSERT ON Pedidos_Cancelados
FOR EACH ROW
BEGIN
	
    UPDATE Ventas
    SET estado = 'cancelado'
    WHERE id_venta = NEW.id_venta;
    
    DELETE FROM Pedidos_Pendientes
    WHERE id_venta = NEW.id_venta;
    
END//
DELIMITER ;

-- Pedidos_Pagos
DELIMITER //
CREATE TRIGGER actualizar_estado_pago
AFTER INSERT ON Pedidos_Pagos
FOR EACH ROW
BEGIN
    
    UPDATE Ventas
    SET estado = 'pago'
    WHERE id_venta = NEW.id_venta;
    
	DELETE FROM Pedidos_Pendientes
    WHERE id_venta = NEW.id_venta;
    
END//
DELIMITER ;

-- Pedidos_Viajando
DELIMITER //
CREATE TRIGGER actualizar_estado_viajando
AFTER INSERT ON Pedidos_Viajando
FOR EACH ROW
BEGIN
	
    UPDATE Ventas
    SET estado = 'viajando'
    WHERE id_venta = NEW.id_venta;
    
END//
DELIMITER ;

-- Pedidos_Entregados
DELIMITER //
CREATE TRIGGER actualizar_estado_entregado
AFTER INSERT ON Pedidos_Entregados
FOR EACH ROW
BEGIN
	
    UPDATE Ventas
    SET estado = 'entregado'
    WHERE id_venta = NEW.id_venta;
    
    DELETE FROM Pedidos_Viajando
    WHERE id_venta = NEW.id_venta;
    
END//
DELIMITER ;



