
USE alcol_drinks;

DROP FUNCTION IF EXISTS calcular_iva;
DROP FUNCTION IF EXISTS calcular_beneficio;
DROP FUNCTION IF EXISTS calcular_rentabilidad;
DROP FUNCTION IF EXISTS calcular_ventas_lapso;
DROP FUNCTION IF EXISTS calcular_total_lapso;

DELIMITER //
CREATE FUNCTION calcular_iva(precio FLOAT) RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN

    DECLARE iva FLOAT;
    SET iva = precio * 0.22;
    RETURN iva;
    
END//
DELIMITER ;

DELIMITER //
CREATE FUNCTION calcular_beneficio(precio FLOAT, costo FLOAT) RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN

    DECLARE beneficio FLOAT;
    SET beneficio = (precio - costo);
    RETURN beneficio;
    
END//
DELIMITER ;

DELIMITER //
CREATE FUNCTION calcular_rentabilidad(producto_id INT, tipo_beneficio VARCHAR(20)) RETURNS FLOAT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE costo_producto FLOAT;
    DECLARE beneficio_total FLOAT;
    DECLARE rentabilidad FLOAT;
    
    SELECT costo INTO costo_producto
    FROM Productos
    WHERE id_producto = producto_id;
    
    CASE tipo_beneficio
        WHEN 'general' THEN
            SELECT beneficio_total_general INTO beneficio_total
            FROM Resumen_Ventas
            WHERE id_producto = producto_id;
        WHEN 'presencial' THEN
            SELECT beneficio_total_presencial INTO beneficio_total
            FROM Resumen_Ventas
            WHERE id_producto = producto_id;
        WHEN 'pedido' THEN
            SELECT beneficio_total_pedidos INTO beneficio_total
            FROM Resumen_Ventas
            WHERE id_producto = producto_id;
        ELSE
            SET rentabilidad = NULL;
    END CASE;
    
        SET rentabilidad = (beneficio_total / costo_producto) * 100;
    
    RETURN rentabilidad;
    
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION calcular_ventas_lapso(fecha1 DATE, fecha2 DATE) RETURNS INT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
	
    DECLARE ventas INT;
    
    SELECT COUNT(*) INTO ventas
    FROM Ventas
    WHERE fecha BETWEEN fecha1 AND fecha2;
    
    RETURN ventas;
    
END//
DELIMITER ;

DELIMITER //
CREATE FUNCTION calcular_total_lapso(fecha1 DATE, fecha2 DATE) RETURNS FLOAT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE suma_total FLOAT;
    
    SELECT SUM(total) INTO suma_total
    FROM Ventas
    WHERE fecha BETWEEN fecha1 AND fecha2;
    
    RETURN suma_total;
    
END//
DELIMITER ;
