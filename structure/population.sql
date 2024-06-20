
USE alcol_drinks;
-- Desactiva las restricciones de clave externa
-- Truncamos para empezar con las tablas en blanco
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Resumen_Ventas;
TRUNCATE TABLE Reservas_Clientes;
TRUNCATE TABLE Reservas_Proveedores;
TRUNCATE TABLE Productos_Reservados;
TRUNCATE TABLE Pedidos_Entregados;
TRUNCATE TABLE Pedidos_Viajando;
TRUNCATE TABLE Pedidos_Cancelados;
TRUNCATE TABLE Pedidos_Pagos;
TRUNCATE TABLE Pedidos_Pendientes;
TRUNCATE TABLE Ventas_Productos;
TRUNCATE TABLE Ventas;
TRUNCATE TABLE Productos;
TRUNCATE TABLE Categorias_Productos;
TRUNCATE TABLE Proveedores;
TRUNCATE TABLE Reclamos;
TRUNCATE TABLE Informacion;
TRUNCATE TABLE Informacion_Direcciones;
TRUNCATE TABLE Informacion_Facturacion;
TRUNCATE TABLE Informacion_Contacto;
TRUNCATE TABLE Informacion_Cuenta;
TRUNCATE TABLE Clientes;
TRUNCATE TABLE Empleados;
-- Reactiva las restricciones de clave externa
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Empleados (nombre, apellido, puesto_actual, horas_semanales, salario_nominal) VALUES
	('Ana', 'Gomez', 'empleado', 30, 5500.00), -- 'ana.gomez@empresa.com', '+1234567890',
	('Luis', 'Diaz', 'empleado', 25, 4800.00), -- 'luis.diaz@empresa.com', '+2345678901',
	('Marta', 'Ruiz', 'empleado', 35, 6000.00), -- 'marta.ruiz@empresa.com', '+3456789012',
	('Sofia', 'Hernandez', 'empleado', 28, 5200.00), -- 'sofia.hernandez@empresa.com', '+4567890123',
	('Diego', 'Perez', 'empleado', 40, 7500.00), -- 'diego.perez@empresa.com', '+5678901234',
	('Juan', 'Gonzalez', 'jefe', 25, 5000.00), -- 'juan.gonzalez@empresa.com', '+1234567890',
	('Pedro', 'Fernandez', 'jefe', 30, 6000.00), -- 'pedro.fernandez@empresa.com', '+2345678901',
	('Maria', 'Martinez', 'jefe', 35, 7000.00); -- 'maria.martinez@empresa.com', '+3456789012',
-- 8 empleados (3 jefes y 5 empleados)

INSERT INTO Clientes (nombre, apellido) VALUES
	('María', 'López'), -- 'maria.lopez@example.com', '+1234567890'
	('Juan', 'Martínez'), -- 'juan.martinez@example.com', '+2345678901'
	('Laura', 'García'), -- 'laura.garcia@example.com', '+3456789012'
	('Carlos', 'Rodríguez'), -- 'carlos.rodriguez@example.com', '+4567890123'
	('Ana', 'Fernández'), -- 'ana.fernandez@example.com', '+5678901234'
	('José', 'Pérez'), -- 'jose.perez@example.com', '+6789012345'
	('Sofía', 'Hernández'), -- 'sofia.hernandez@example.com', '+7890123456'
	('Diego', 'Gómez'), -- 'diego.gomez@example.com', '+8901234567'
	('Marta', 'Ruiz'), -- 'marta.ruiz@example.com', '+9012345678'
	('Pedro', 'Sánchez'); -- 'pedro.sanchez@example.com', '+0123456789'
-- 10 clientes

INSERT INTO informacion (id_cliente, id_empleado, id_proveedor) VALUES
	(DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
	(DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT),
    (DEFAULT , DEFAULT, DEFAULT);
-- 23 infos

INSERT INTO Informacion_Direcciones (id_info, pais, estado, ciudad, codigo_postal, direccion) VALUES
	(1, 'United States', 'California', 'Los Angeles', '90001', '123 Sunset Blvd'),
	(2, 'United States', 'New York', 'New York', '10001', '456 Broadway'),
	(3, 'Canada', 'Ontario', 'Toronto', 'M5H 2N2', '789 Queen St'),
	(4, 'Canada', 'British Columbia', 'Vancouver', 'V5K 0A1', '101 Main St'),
	(5, 'United Kingdom', 'England', 'London', 'SW1A 1AA', '102 Oxford St'),
	(6, 'Australia', 'New South Wales', 'Sydney', '2000', '103 George St'),
	(7, 'Australia', 'Victoria', 'Melbourne', '3000', '104 Collins St'),
	(8, 'New Zealand', 'Auckland', 'Auckland', '1010', '105 Queen St'),
	(9, 'Germany', 'Berlin', 'Berlin', '10115', '106 Friedrichstrasse'),
	(10, 'France', 'Île-de-France', 'Paris', '75001', '107 Rue de Rivoli'),
	(11, 'Italy', 'Lazio', 'Rome', '00100', '108 Via del Corso'),
	(12, 'Spain', 'Madrid', 'Madrid', '28001', '109 Gran Via'),
	(13, 'Mexico', 'Ciudad de Mexico', 'Mexico City', '01000', '110 Reforma Ave'),
	(14, 'Brazil', 'São Paulo', 'São Paulo', '01000-000', '111 Paulista Ave'),
	(15, 'Japan', 'Tokyo', 'Tokyo', '100-0001', '112 Shibuya Crossing'),
	(16, 'China', 'Beijing', 'Beijing', '100000', '113 Wangfujing St'),
	(17, 'India', 'Maharashtra', 'Mumbai', '400001', '114 Marine Drive'),
	(18, 'South Africa', 'Gauteng', 'Johannesburg', '2000', '115 Nelson Mandela Ave'),
	(19, 'Russia', 'Moscow', 'Moscow', '101000', '116 Red Square'),
	(20, 'South Korea', 'Seoul', 'Seoul', '04524', '117 Gangnam-daero'),
	(21, 'Argentina', 'Buenos Aires', 'Buenos Aires', 'C1000', '118 9 de Julio Ave'),
	(22, 'Chile', 'Santiago Metropolitan', 'Santiago', '8320000', '119 Providencia Ave'),
    (9, 'Germany', 'Bavaria', 'Munich', '80331', '123 Leopoldstrasse'),
    (10, 'France', 'Île-de-France', 'Paris', '75008', '456 Champs-Élysées');
-- 24 direcciones

INSERT INTO Informacion_Contacto (id_info, telefono, celular, email, linkedin, instagram, facebook, twitter, youtube, tiktok, sitio_web) VALUES
    -- Clientes
    (1, 1234567890, NULL, 'maria.lopez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- María López
    (2, 2345678901, NULL, 'juan.martinez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Juan Martínez
    (3, 3456789012, NULL, 'laura.garcia@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Laura García
    (4, 4567890123, NULL, 'carlos.rodriguez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Carlos Rodríguez
    (5, 5678901234, NULL, 'ana.fernandez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Ana Fernández
    (6, 6789012345, NULL, 'jose.perez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- José Pérez
    (7, 7890123456, NULL, 'sofia.hernandez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Sofía Hernández
    (8, 8901234567, NULL, 'diego.gomez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Diego Gómez
    (9, 9012345678, NULL, 'marta.ruiz@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Marta Ruiz
    (10, 1234567890, NULL, 'pedro.sanchez@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- Pedro Sánchez
    -- Empleados
    (11, NULL, '+1234567890', 'ana.gomez@empresa.com', 'linkedin.com/anagomez', 'instagram.com/anagomez', 'facebook.com/anagomez', 'twitter.com/anagomez', NULL, NULL, NULL), -- Ana Gómez
    (12, NULL, '+2345678901', 'luis.diaz@empresa.com', 'linkedin.com/luisdiaz', 'instagram.com/luisdiaz', 'facebook.com/luisdiaz', 'twitter.com/luisdiaz', NULL, NULL, NULL), -- Luis Díaz
    (13, NULL, '+3456789012', 'marta.ruiz@empresa.com', 'linkedin.com/martaruiz', 'instagram.com/martaruiz', 'facebook.com/martaruiz', 'twitter.com/martaruiz', NULL, NULL, NULL), -- Marta Ruiz
    (14, NULL, '+4567890123', 'sofia.hernandez@empresa.com', 'linkedin.com/sofiahernandez', 'instagram.com/sofiahernandez', 'facebook.com/sofiahernandez', 'twitter.com/sofiahernandez', NULL, NULL, NULL), -- Sofía Hernández
    (15, NULL, '+5678901234', 'diego.perez@empresa.com', 'linkedin.com/diegoperez', 'instagram.com/diegoperez', 'facebook.com/diegoperez', 'twitter.com/diegoperez', NULL, NULL, NULL), -- Diego Pérez
    (16, NULL, '+1234567890', 'juan.gonzalez@empresa.com', 'linkedin.com/juangonzalez', 'instagram.com/juangonzalez', 'facebook.com/juangonzalez', 'twitter.com/juangonzalez', NULL, NULL, NULL), -- Juan González
    (17, NULL, '+2345678901', 'pedro.fernandez@empresa.com', 'linkedin.com/pedrofernandez', 'instagram.com/pedrofernandez', 'facebook.com/pedrofernandez', 'twitter.com/pedrofernandez', NULL, NULL, NULL), -- Pedro Fernández
    (18, NULL, '+3456789012', 'maria.martinez@empresa.com', 'linkedin.com/mariamartinez', 'instagram.com/mariamartinez', 'facebook.com/mariamartinez', 'twitter.com/mariamartinez', NULL, NULL, NULL), -- María Martínez
    -- Proveedores
    (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'distribuidoralosandes.com'), -- Distribuidora Los Andes
    (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'importacionesglobales.com'), -- Importaciones Globales
    (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bebidasdelsur.com'), -- Bebidas del Sur
    (22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vinosylicores.com'), -- Vinos y Licores SA
    (23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cervezasdelmundo.com'); -- Cervezas del Mundo
-- 23 contactos

INSERT INTO Informacion_Cuenta (id_info, clave, nombre, apellido, fecha_registro, ultimo_acceso, estado, rol) VALUES
    -- Clientes
    (1, 'clave123', 'María', 'López', '2024-01-01 12:00:00', '2024-06-20 15:30:00', 'activo', 'cliente'),
    (2, 'clave456', 'Juan', 'Martínez', '2024-01-02 13:00:00', '2024-06-20 16:45:00', 'activo', 'cliente'),
    (3, 'clave789', 'Laura', 'García', '2024-01-03 14:00:00', '2024-06-20 17:15:00', 'activo', 'cliente'),
    (4, 'clave101', 'Carlos', 'Rodríguez', '2024-01-04 15:00:00', '2024-06-20 18:30:00', 'activo', 'cliente'),
    (5, 'clave202', 'Ana', 'Fernández', '2024-01-05 16:00:00', '2024-06-20 19:45:00', 'activo', 'cliente'),
    (6, 'clave303', 'José', 'Pérez', '2024-01-06 17:00:00', '2024-06-20 20:00:00', 'activo', 'cliente'),
    (7, 'clave404', 'Sofía', 'Hernández', '2024-01-07 18:00:00', '2024-06-20 21:15:00', 'activo', 'cliente'),
    (8, 'clave505', 'Diego', 'Gómez', '2024-01-08 19:00:00', '2024-06-20 22:30:00', 'activo', 'cliente'),
    (9, 'clave606', 'Marta', 'Ruiz', '2024-01-09 20:00:00', '2024-06-20 23:45:00', 'activo', 'cliente'),
    (10, 'clave707', 'Pedro', 'Sánchez', '2024-01-10 21:00:00', '2024-06-21 00:00:00', 'activo', 'cliente'),
    -- Empleados
    (11, 'claveana', 'Ana', 'Gómez', '2024-01-11 08:30:00', '2024-06-21 08:45:00', 'activo', 'empleado'),
    (12, 'claveluis', 'Luis', 'Díaz', '2024-01-12 09:00:00', '2024-06-21 09:15:00', 'activo', 'empleado'),
    (13, 'clavemarta', 'Marta', 'Ruiz', '2024-01-13 10:00:00', '2024-06-21 10:30:00', 'activo', 'empleado'),
    (14, 'clavesofia', 'Sofía', 'Hernández', '2024-01-14 11:00:00', '2024-06-21 11:45:00', 'activo', 'empleado'),
    (15, 'clavediego', 'Diego', 'Pérez', '2024-01-15 12:00:00', '2024-06-21 12:30:00', 'activo', 'empleado'),
    (16, 'clavejuan', 'Juan', 'González', '2024-01-16 13:00:00', '2024-06-21 13:45:00', 'activo', 'jefe'),
    (17, 'clavepedro', 'Pedro', 'Fernández', '2024-01-17 14:00:00', '2024-06-21 14:30:00', 'activo', 'jefe'),
    (18, 'clavemaria', 'María', 'Martínez', '2024-01-18 15:00:00', '2024-06-21 15:45:00', 'activo', 'jefe');
-- 18 cuentas

INSERT INTO Informacion_Facturacion (id_direccion, id_info, metodo_pago, numero_tarjeta, fecha_expedicion, cvv, nombre_propietario, apellido_propietario) VALUES
    -- Clientes
    (1, 1, 'tarjeta', 1234567890123456, '2023-01-01', 123, 'María', 'López'),
    (2, 2, 'tarjeta', 2345678901234567, '2023-02-01', 456, 'Juan', 'Martínez'),
    (3, 3, 'efectivo', NULL, NULL, NULL, NULL, NULL), -- Laura García
    (4, 4, 'tarjeta', 3456789012345678, '2023-04-01', 789, 'Carlos', 'Rodríguez'),
    (5, 5, 'tarjeta', 4567890123456789, '2023-05-01', 012, 'Ana', 'Fernández'),
    (6, 6, 'efectivo', NULL, NULL, NULL, NULL, NULL), -- José Pérez
    (23, 7, 'tarjeta', 5678901234567890, '2023-07-01', 345, 'Sofía', 'Hernández'),
    (8, 8, 'efectivo', NULL, NULL, NULL, NULL, NULL), -- Diego Gómez
    (24, 9, 'tarjeta', 6789012345678901, '2023-09-01', 678, 'Marta', 'Ruiz'),
    (7, 10, 'efectivo', NULL, NULL, NULL, NULL, NULL); -- Pedro Sánchez
-- 10 informacion de facturacion

INSERT INTO Reclamos (id_cliente, id_empleado, numero_ticket, mensaje, estado) VALUES
	(1, 1, 'TCK123', 'El producto que recibí estaba dañado.', 'Abierto'),
	(2, 2, 'TCK456', 'No recibí el paquete en la fecha prometida.', 'En progreso'),
	(3, 3, 'TCK789', 'El producto que ordené no coincide con la descripción.', 'Cerrado'),
	(4, 4, 'TCK012', 'Necesito ayuda con la instalación del producto.', 'Abierto'),
	(5, 5, 'TCK345', 'El producto que recibí tiene un defecto de fabricación.', 'En revisión');
-- 5 reclamos

INSERT INTO Proveedores (nombre, nota, estado, fecha_registro) VALUES
	('Distribuidora Los Andes', 'Proveedor confiable de bebidas alcohólicas.', 'Activo', '2023-01-15 08:30:00'),
	('Importaciones Globales', 'Nuevo proveedor, aún en evaluación.', 'Pendiente', '2023-02-20 14:45:00'),
	('Bebidas del Sur', 'Entrega rápida y buen servicio al cliente.', 'Activo', '2023-03-05 11:20:00'),
	('Vinos y Licores SA', 'Proveedor con excelente calidad de productos.', 'Activo', '2023-04-10 16:55:00'),
	('Cervezas del Mundo', 'Problemas recientes con entregas.', 'Inactivo', '2023-05-25 09:10:00');
-- 5 proveedores

INSERT INTO Categorias_Productos (categoria, descripcion) VALUES
	('Vinos', 'Vinos de diversas regiones y variedades.'),
	('Cervezas', 'Cervezas artesanales y comerciales.'),
	('Licores', 'Licores de alta calidad de diferentes partes del mundo.'),
	('Whisky', 'Variedad de whiskies escoceses, irlandeses y americanos.'),
	('Vodka', 'Selección de vodkas premium.'),
	('Tequila', 'Tequilas blancos, reposados y añejos.'),
	('Champagne', 'Champagnes y vinos espumosos.'),
	('Bebidas sin alcohol', 'Bebidas no alcohólicas, incluidos jugos y refrescos.');
-- 8 categorias

INSERT INTO Productos (id_proveedor, id_categoria, nombre, descripcion, precio, costo, stock, numero_serie) VALUES
	(1, 1, 'Vino Tinto Merlot', 'Un vino tinto de cuerpo medio, perfecto para cenas.', 15.99, 10.00, 100, 10001),
	(2, 2, 'Cerveza Artesanal IPA', 'Cerveza artesanal con un toque amargo distintivo.', 3.99, 2.50, 200, 10002),
	(3, 3, 'Licor de Avellana', 'Licor dulce y suave, ideal para postres.', 20.00, 12.00, 50, 10003),
	(4, 4, 'Whisky Escocés 12 años', 'Whisky de malta envejecido 12 años.', 45.00, 30.00, 30, 10004),
	(5, 5, 'Vodka Premium', 'Vodka destilado cinco veces para una pureza excepcional.', 25.00, 15.00, 80, 10005),
	(4, 6, 'Tequila Reposado', 'Tequila suave y envejecido en barricas de roble.', 30.00, 20.00, 60, 10006),
	(1, 7, 'Champagne Brut', 'Champagne seco con burbujas finas.', 50.00, 35.00, 40, 10007),
	(2, 8, 'Jugo de Naranja Natural', 'Jugo fresco y natural, sin conservantes.', 5.00, 3.00, 150, 10008),
	(3, 2, 'Cerveza Lager', 'Cerveza ligera y refrescante.', 2.50, 1.50, 300, 10009),
	(5, 1, 'Vino Blanco Chardonnay', 'Vino blanco afrutado, ideal para mariscos.', 18.00, 12.00, 120, 10010);
-- 10 productos
    
INSERT INTO Ventas (id_cliente, id_empleado, id_direccion, fecha, pedido) VALUES
	(1, 1, 1, '2024-01-01 10:00:00', TRUE),
	(2, 2, 2, '2024-01-02 11:00:00', TRUE),
	(3, 3, 3, '2024-01-03 12:00:00', TRUE),
	(4, 4, 4, '2024-01-04 13:00:00', TRUE),
	(5, 5, 5, '2024-01-05 14:00:00', TRUE),
	(6, 6, 6, '2024-01-06 15:00:00', TRUE),
	(7, 7, 7, '2024-01-07 16:00:00', TRUE),
	(8, 8, 8, '2024-01-08 17:00:00', TRUE),
	(9, 1, 9, '2024-01-09 18:00:00', TRUE),
	(10, 2, 10, '2024-01-10 19:00:00', TRUE),
	(2, 3, 11, '2024-01-11 20:00:00', TRUE),
	(5, 4, 12, '2024-01-12 21:00:00', TRUE),
	(1, 5, 13, '2024-01-13 10:00:00', FALSE),
	(2, 6, 14, '2024-01-14 11:00:00', FALSE),
	(3, 7, 15, '2024-01-15 12:00:00', FALSE),
	(4, 8, 16, '2024-01-16 13:00:00', FALSE),
	(5, 1, 17, '2024-01-17 14:00:00', FALSE),
	(6, 2, 18, '2024-01-18 15:00:00', FALSE),
	(7, 3, 19, '2024-01-19 16:00:00', FALSE),
	(8, 4, 20, '2024-01-20 17:00:00', FALSE),
	(9, 5, 21, '2024-01-21 18:00:00', FALSE),
	(10, 6, 22, '2024-01-22 19:00:00', FALSE),
	(1, 7, 1, '2024-01-23 20:00:00', FALSE),
	(2, 8, 2, '2024-01-24 21:00:00', FALSE),
	(1, 1, 3, '2024-01-25 10:00:00', FALSE),
	(2, 2, 4, '2024-01-26 11:00:00', FALSE),
	(3, 3, 5, '2024-01-27 12:00:00', FALSE),
	(4, 4, 6, '2024-01-28 13:00:00', FALSE);
-- 28 ventas total
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
	(1, 9, 6), 
	(4, 8, 3), 
	(5, 1, 4), 
	(6, 7, 2), 
	(7, 6, 7), 
	(8, 5, 9), 
	(8, 4, 2), 
	(9, 3, 10), 
	(10, 2, 7), 
	(20, 1, 8), 
	(21, 10, 5),
	(22, 9, 3);
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

INSERT INTO Reservas_Clientes (id_cliente, fecha, estado, comentario) VALUES
    (1, '2024-06-20 10:00:00', 'confirmada', 'Reserva de verano'),
    (2, '2024-06-21 11:00:00', 'pendiente', 'Esperando confirmación'),
    (3, '2024-06-22 12:00:00', 'cancelada', 'No se requiere más'),
    (4, '2024-06-23 13:00:00', 'confirmada', 'Reserva de invierno'),
    (5, '2024-06-24 14:00:00', 'pendiente', 'En proceso de reserva');
-- 5 reservas para los clientes

INSERT INTO Reservas_Proveedores (id_proveedor, fecha, estado, comentario) VALUES
    (1, '2024-06-20 10:30:00', 'confirmada', 'Entrega confirmada'),
    (2, '2024-06-21 11:30:00', 'pendiente', 'Esperando respuesta'),
    (3, '2024-06-22 12:30:00', 'confirmada', 'Entrega programada'),
    (4, '2024-06-23 13:30:00', 'pendiente', 'En proceso de reserva'),
    (5, '2024-06-24 14:30:00', 'cancelada', 'No se pudo completar');
-- 5 reservas para los proveedores

INSERT INTO Productos_Reservados (id_reserva_proveedor, id_reserva_cliente, id_producto, cantidad) VALUES
    (1, 1, 1, 2),
    (2, 2, 2, 3),
    (3, 3, 3, 1),
    (4, 4, 4, 5),
    (5, 5, 5, 2),
    (1, 2, 1, 1),
    (2, 3, 2, 4),
    (3, 4, 3, 3),
    (4, 5, 4, 2),
    (5, 1, 5, 3),
    (1, 3, 1, 2),
    (2, 4, 2, 1),
    (3, 5, 3, 4),
    (4, 1, 4, 3),
    (5, 2, 5, 2),
    (1, 4, 1, 1),
    (2, 5, 2, 3),
    (3, 1, 3, 2),
    (4, 2, 4, 4),
    (5, 3, 5, 1);
-- 20 productos reservados