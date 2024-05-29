
USE alcol_drinks;

DROP VIEW IF EXISTS v_productos_proveedores;
DROP VIEW IF EXISTS v_precio_productos_iva;
DROP VIEW IF EXISTS v_venta_completa;
DROP VIEW IF EXISTS v_resumen_ventas;
DROP VIEW IF EXISTS v_mas_vendidos;
DROP VIEW IF EXISTS v_rentabilidad_productos;
DROP VIEW IF EXISTS v_historial_compras_clientes;
DROP VIEW IF EXISTS v_estado_pedidos;
DROP VIEW IF EXISTS v_pedidos_pendientes;

-- Creacion de vistas
-- Muestra todos los productos con su respectivo proveedor
CREATE VIEW v_productos_proveedores AS
	SELECT 
		p2.id_producto, 
        p1.id_proveedor,
		p1.nombre AS nombre_proveedor, 
		p2.nombre AS nombre_producto, 
		p2.precio, 
        p2.stock, 
		p2.numero_serie 
	FROM Proveedores p1
		INNER JOIN Productos p2 
		ON p1.id_proveedor = p2.id_proveedor;

-- Mustra todos los productos con y sin el IVA calculado y ademas tambien muestra el precio pesos uruguayos y en dolares de cada uno
CREATE VIEW v_precio_productos_iva AS
	SELECT 
		id_producto, 
		nombre, 
        precio AS PrecioUYU, 
		FORMAT(calcular_iva(precio), 2) AS IVA, 
		FORMAT((calcular_iva(precio)+precio), 2) AS 'PrecioUYU+IVA' 
    FROM Productos;

-- Muestra las ventas con sus detalles
CREATE VIEW v_venta_completa AS
	SELECT 
		id_producto_vendido, 
		id_venta, 
		id_cliente, 
		id_producto, 
		cantidad, 
		total, 
		fecha, 
		pedido, 
		estado
	FROM Ventas
	INNER JOIN Ventas_Productos USING (id_venta);
	
-- Muestra los 10 productos mas vendidos con su nombre, precio unitario, costo, cantidad de ventas y ganancia total.
CREATE VIEW v_mas_vendidos AS
	SELECT 
		rv.id_resumen, 
		p.nombre, 
		rv.cantidad_ventas_general AS ventas,
        rv.beneficio_total_general AS total_recaudado,
		p.precio, 
        p.costo,  
		p.stock 
    FROM Resumen_Ventas rv
		INNER JOIN Productos p ON rv.id_producto = p.id_producto
		ORDER BY total_recaudado asc
		LIMIT 10;

-- Calcula la rentabilidad de cada producto en función de los costos asociados
CREATE VIEW v_rentabilidad_productos AS
    SELECT
        id_producto,
        nombre,
		calcular_rentabilidad(id_producto, 'general') AS rentabilidadTotal,
        calcular_rentabilidad(id_producto, 'presencial') AS rentabilidadPresencial,
        calcular_rentabilidad(id_producto, 'pedido') AS rentabilidadPedidos
    FROM Productos;

-- , los ingresos generados y el margen de beneficio, todo esto tanto en general como por envios y en presencial.

-- Muestre el historial de compras de cada cliente, incluyendo productos comprados, fechas, montos gastados, estado de la compra, cantidad de productos y numero de serie del producto.
CREATE VIEW v_historial_compras_clientes AS
	SELECT 
		v.id_venta,		
        c.id_cliente, 
		c.nombre, 
		c.apellido, 
		v.estado, 
		v.fecha, 
		p.id_producto, 
		vp.cantidad, 
		p.precio AS precio_producto, 
		v.total AS total_pedido,
        p.numero_serie
	FROM Ventas v
    INNER JOIN Ventas_Productos vp ON v.id_venta = vp.id_venta
    INNER JOIN Productos p ON p.id_producto = vp.id_producto
    INNER JOIN Clientes c ON c.id_cliente = v.id_cliente
    ORDER BY fecha DESC;

-- Muestra los productos pedidos, el estado de los pedidos y la fecha en la que se cambio la ultima vez.
CREATE VIEW v_estado_pedidos AS
	SELECT
		id_cliente,
        id_venta,
        id_producto,
        nombre,
        estado,
        fecha
	FROM Ventas
    INNER JOIN Ventas_Productos USING (id_venta)
    INNER JOIN Productos USING (id_producto)
    ORDER BY estado DESC;
        
-- Muestra una lista de los pedidos pendientes, informacion del cliente, los productos solicitados.
CREATE VIEW v_pedidos_pendientes AS
	SELECT
		id_producto_vendido
        id_venta,
        id_cliente,
        c.nombre AS nombre_cliente,
        apellido AS apellido_cliente,
        id_producto,
        p.nombre AS nombre_producto,
        numero_serie
	FROM Ventas
    INNER JOIN Ventas_Productos USING (id_venta)
    INNER JOIN Clientes c USING (id_cliente)
    INNER JOIN Productos p USING (id_producto)
    WHERE estado = 'pendiente'
    ORDER BY id_producto_vendido ASC;
        
-- Muestra los ingresos totales generados por mes, desglosados por tipo de producto o categoría.

-- Muestra información sobre los empleados de la empresa, incluyendo el nombre, el puesto y las horas trabajadas en un período de tiempo específico.

-- Resume las ventas realizadas por cada empleado, el número de clientes atendidos, etc.

-- Clasifica a los clientes en segmentos según su historial de compras, preferencias, etc., facilitando la personalización de marketing.

-- Muestra de las vistas
-- SELECT * FROM v_productos_proveedores;

-- SELECT * FROM v_precio_productos_iva;

-- SELECT * FROM v_venta_completa;

-- SELECT * FROM v_mas_vendidos;

-- SELECT * FROM v_rentabilidad_productos;

-- SELECT * FROM v_historial_compras_clientes;

-- SELECT * FROM v_estado_pedidos;

-- SELECT * FROM v_pedidos_pendientes;