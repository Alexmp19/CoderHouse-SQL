
USE alcol_drinks;
-- Desactiva las restricciones de clave externa
-- Truncamos para empezar con las tablas en blanco
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Resumen_Ventas;
TRUNCATE TABLE Reservas_Clientes;
TRUNCATE TABLE Pedidos_Entregados;
TRUNCATE TABLE Pedidos_Viajando;
TRUNCATE TABLE Pedidos_Cancelados;
TRUNCATE TABLE Pedidos_Pagos;
TRUNCATE TABLE Pedidos_Pendientes;
TRUNCATE TABLE Ventas_Productos;
TRUNCATE TABLE Ventas;
TRUNCATE TABLE Productos;
TRUNCATE TABLE Proveedores;
TRUNCATE TABLE Reclamos;
TRUNCATE TABLE Datos;
TRUNCATE TABLE Direcciones;
TRUNCATE TABLE Clientes;
TRUNCATE TABLE Empleados;
-- Reactiva las restricciones de clave externa
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Empleados (nombre, apellido, email, telefono, puesto_actual, horas_semanales, salario_nominal) VALUES
	('Ana', 'Gomez', 'ana.gomez@empresa.com', '+1234567890', 'empleado', 30, 5500.00),
	('Luis', 'Diaz', 'luis.diaz@empresa.com', '+2345678901', 'empleado', 25, 4800.00),
	('Marta', 'Ruiz', 'marta.ruiz@empresa.com', '+3456789012', 'empleado', 35, 6000.00),
	('Sofia', 'Hernandez', 'sofia.hernandez@empresa.com', '+4567890123', 'empleado', 28, 5200.00),
	('Diego', 'Perez', 'diego.perez@empresa.com', '+5678901234', 'empleado', 40, 7500.00),
	('Juan', 'Gonzalez', 'juan.gonzalez@empresa.com', '+1234567890', 'jefe', 25, 5000.00),
	('Pedro', 'Fernandez', 'pedro.fernandez@empresa.com', '+2345678901', 'jefe', 30, 6000.00),
	('Maria', 'Martinez', 'maria.martinez@empresa.com', '+3456789012', 'jefe', 35, 7000.00);
-- 8 empleados (3 jefes y 5 empleados)

INSERT INTO Clientes (nombre, apellido, email, telefono) VALUES
	('María', 'López', 'maria.lopez@example.com', '+1234567890'),
	('Juan', 'Martínez', 'juan.martinez@example.com', '+2345678901'),
	('Laura', 'García', 'laura.garcia@example.com', '+3456789012'),
	('Carlos', 'Rodríguez', 'carlos.rodriguez@example.com', '+4567890123'),
	('Ana', 'Fernández', 'ana.fernandez@example.com', '+5678901234'),
	('José', 'Pérez', 'jose.perez@example.com', '+6789012345'),
	('Sofía', 'Hernández', 'sofia.hernandez@example.com', '+7890123456'),
	('Diego', 'Gómez', 'diego.gomez@example.com', '+8901234567'),
	('Marta', 'Ruiz', 'marta.ruiz@example.com', '+9012345678'),
	('Pedro', 'Sánchez', 'pedro.sanchez@example.com', '+0123456789');
-- 10 clientes

INSERT INTO Datos (id_cliente, id_empleado) VALUES
	(DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
    (DEFAULT , DEFAULT),
	(DEFAULT , DEFAULT);

INSERT INTO Direcciones (id_dato, direccion_facturacion, direccion_envio) VALUES
	(1, 'Calle de la Montaña 123', 'Apartado 10'),
	(2, 'Avenida del Río 456', 'Buzón 25'),
	(3, 'Plaza de la Libertad 789', 'Oficina 3'),
	(4, 'Calle del Bosque 789', 'Apartamento 45'),
	(5, 'Boulevard del Centro 321', 'Apartado 67'),
	(6, 'Calle del Parque 789', 'Apartado 10'),
	(7, 'Avenida de la Paz 123', 'Buzón 25'),
	(8, 'Plaza de la Justicia 456', 'Oficina 3'),
	(9, 'Calle de la Playa 789', 'Apartamento 45'),
	(10, 'Boulevard de la Avenida 321', 'Apartado 67'),
	(11, 'Calle del Sol 123', 'Apartado 10'),
    (12, 'Avenida de las Flores 456', 'Buzón 25'),
    (13, 'Plaza del Pueblo 789', 'Oficina 3'),
    (14, 'Calle de la Luna 789', 'Apartamento 45'),
    (15, 'Boulevard de la Costa 321', 'Apartado 67'),
    (16, 'Avenida del Paraiso 789', 'Apartado 10'),
    (17, 'Calle de la Montaña 123', 'Buzón 25'),
    (18, 'Plaza del Ángel 456', 'Oficina 3');
-- 18 direcciones (cada persona 1 direccion)

INSERT INTO Reclamos (id_cliente, numero_ticket, mensaje, estado) VALUES
	(1, 'TCK123', 'El producto que recibí estaba dañado.', 'Abierto'),
	(2, 'TCK456', 'No recibí el paquete en la fecha prometida.', 'En progreso'),
	(3, 'TCK789', 'El producto que ordené no coincide con la descripción.', 'Cerrado'),
	(4, 'TCK012', 'Necesito ayuda con la instalación del producto.', 'Abierto'),
	(5, 'TCK345', 'El producto que recibí tiene un defecto de fabricación.', 'En revisión');
-- 5 reclamos

INSERT INTO Proveedores (nombre, email, telefono) VALUES
	("Vulputate Corporation","magna@aol.org","1-388-844-4235"),
	("Eget Consulting","a.nunc@hotmail.edu","(808) 726-5805"),
	("Est Company","lorem.auctor@hotmail.org","1-513-666-8748"),
	("Fusce Mi Ltd","ornare.facilisis.eget@icloud.com","(433) 755-7122"),
	("Congue LLC","sed.dui@google.edu","(402) 869-3876");
-- 5 proveedores

INSERT INTO Productos (id_proveedor, nombre, precio, costo, stock, numero_serie) VALUES 
	(1, 'Fantástico Plástico Coche', '47.00', '30.00', '29', 25795327),
	(2, 'Práctico Metal Guantes', '576.00', '500.50', '77', 34385345),  
	(2, 'Inteligente Plástico Camiseta', '994.00', '868.99', '07', 173894789),  
	(4, 'Genérico Acero Toallas', '542.00', '500.00', '43', 025543536),  
	(5, 'Refinado Metal Pantalones', '695.00', '588.99', '79', 05467778),  
	(2, 'Genérico Madera Salchichas', '164.00', '149.99', '69', 2112444), 
	(1, 'Hecho a mano Metal Salchichas', '769.00', '740.00', '40', 6589999),  
	(5, 'Pequeño Acero Patatas fritas', '768.00', '739.99', '84', 11144456),  
	(5, 'Genérico Madera Sopa', '678.00', '650.00', '93', 365677784),  
	(1, 'Práctico Plástico Bacon', '913.00', '846.94', '96', 43577741);
-- 10 productos
    
INSERT INTO Ventas (id_cliente, fecha, pedido) VALUES
	(9, '2020-10-29 22:30:29', FALSE),
	(5, '2021-05-22 21:15:05', FALSE),
	(4, '2021-10-07 03:39:49', FALSE),
	(8, '2020-04-22 05:23:32', FALSE),
	(5, '2021-06-05 23:54:26', FALSE),
	(5, '2023-11-07 19:55:56', FALSE),
	(6, '2020-04-05 16:08:40', FALSE),
	(7, '2022-11-27 20:46:55', FALSE),
	(6, '2023-07-24 17:41:36', FALSE),
	(3, '2020-04-30 18:47:26', FALSE),
	(6, '2021-02-01 03:44:16', FALSE),
	(3, '2023-10-22 11:28:50', FALSE),
	(1, '2021-12-06 10:22:55', FALSE),
	(9, '2024-04-20 00:20:03', FALSE),
	(6, '2020-11-25 14:59:30', FALSE),
	(8, '2022-07-20 14:48:53', FALSE),
	(2, '2021-01-25 13:27:58', FALSE),
	(4, '2020-07-15 14:16:46', FALSE),
	(4, '2020-04-26 03:22:32', FALSE),
	(4, '2021-10-18 16:17:13', FALSE),
	(4, '2023-02-13 20:01:35', FALSE),
	(3, '2020-08-25 08:23:15', FALSE),
	(7, '2022-12-02 17:29:06', FALSE),
	(4, '2023-03-24 06:21:19', FALSE),
	(3, '2023-02-28 09:05:30', FALSE),
	(2, '2021-06-02 15:52:30', FALSE),
	(10, '2019-11-26 19:02:25', FALSE),
	(9, '2020-07-29 12:53:18', FALSE),
	(1, '2024-05-05 00:14:53', TRUE),
	(8, '2024-05-12 23:43:00', TRUE),
	(10, '2023-10-29 10:45:00', TRUE),
	(5, '2023-12-16 19:21:00', TRUE),
	(8, '2024-02-24 15:53:00', TRUE),
	(5, '2024-12-03 06:40:00', TRUE),
	(9, '2024-01-15 10:43:00', TRUE),
	(1, '2023-06-10 09:24:00', TRUE),
	(2, '2023-01-27 15:46:00', TRUE),
	(6, '2023-04-19 16:46:00', TRUE),
	(3, '2023-09-26 14:55:00', TRUE),
	(3, '2023-09-11 22:16:00', TRUE);
    
-- 28 ventas
-- 12 pedidos (2 pendientes, 1 pagos, 1 cancelado, 2 viajando, 7 entregados)

INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad) VALUES
	(1, 6, 9), 
	(2, 8, 5), 
	(3, 7, 3), 
	(4, 10, 5), 
	(5, 3, 8), 
	(6, 2, 9), 
	(7, 10, 6), 
	(8, 4, 4), 
	(9, 3, 4),
	(10, 7, 9),
	(11, 10, 9), 
	(12, 5, 7), 
	(13, 3, 1), 
	(14, 6, 5), 
	(15, 6, 9), 
	(16, 3, 7), 
	(17, 7, 10), 
	(18, 8, 7), 
	(19, 7, 8), 
	(20, 6, 5),
	(21, 2, 8), 
	(22, 1, 4), 
	(23, 4, 5), 
	(24, 10, 10), 
	(25, 1, 2), 
	(26, 3, 10), 
	(27, 7, 4), 
	(28, 4, 6), 
	(3, 2, 6), 
	(25, 8, 9),
	(9, 10, 1), 
	(13, 7, 8), 
	(6, 6, 7), 
	(15, 8, 7), 
	(8, 2, 8), 
	(20, 5, 8), 
	(2, 2, 10), 
	(6, 4, 3), 
	(19, 7, 6), 
	(22, 5, 7), 
	(16, 9, 5),
	(13, 6, 6), 
	(12, 4, 4), 
	(17, 3, 1), 
	(10, 9, 4), 
	(26, 3, 6), 
	(13, 9, 7), 
	(17, 2, 7), 
	(1, 4, 10), 
	(2, 10, 3), 
	(2, 10, 8),
	(3, 6, 6), 
	(4, 2, 4), 
	(5, 9, 5), 
	(5, 8, 7), 
	(5, 10, 1), 
	(6, 7, 2), 
	(7, 3, 7), 
	(8, 5, 3), 
	(8, 6, 5), 
	(9, 3, 5), 
	(10, 1, 8),
	(11, 1, 8), 
	(12, 5, 10),
	(29, 9, 6), 
	(30, 8, 3), 
	(31, 1, 4), 
	(32, 7, 2), 
	(33, 6, 7), 
	(34, 5, 9), 
	(35, 4, 2), 
	(36, 3, 10), 
	(37, 2, 7), 
	(38, 1, 8), 
	(39, 10, 5),
	(40, 9, 3);
-- 76 productos de las ventas

INSERT INTO Pedidos_Pagos (id_venta, fecha) VALUES
	(2, '2024-05-12 23:51:00'),
	(4, '2023-12-16 19:29:00'),
	(5, '2024-02-24 16:01:00'),
	(6, '2024-12-03 06:45:00'),
	(7, '2024-01-15 10:51:00'),
	(8, '2023-06-10 09:31:00'),
	(9, '2023-01-27 15:51:00'),
	(10, '2023-04-19 16:50:00'),
	(11, '2023-09-26 15:00:00');
-- 9 pagos
    
INSERT INTO Pedidos_Cancelados (id_venta, fecha) VALUES
	(12, '2024-11-12 12:14:05');
-- 1 cancelado

INSERT INTO Pedidos_Viajando (id_venta, fecha) VALUES
	(6, '2024-12-03 07:45:00'),
    (9, '2023-01-27 17:00:00');
-- 2 viajando

INSERT INTO Pedidos_Entregados (id_venta, fecha) VALUES
	(2, '2024-05-21 6:31:23'),
	(4, '2023-12-25 20:13:54'),
	(5, '2024-03-02 16:42:14'),
	(7, '2024-01-20 11:21:41'),
	(8, '2023-06-17 10:42:03'),
	(11, '2023-10-06 16:01:10');
-- 6 entregados