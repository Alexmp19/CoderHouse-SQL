-- Creacion de base de datos
DROP DATABASE IF EXISTS alcol_drinks;

CREATE DATABASE alcol_drinks;

USE alcol_drinks;

CREATE TABLE Empleados (
	id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20),
    puesto_actual VARCHAR (250),
    horas_semanales INT,
    salario_nominal FLOAT
)
COMMENT 'Registra informacion sobre los empleados de la empresa.';

CREATE TABLE Clientes (
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20)
)
COMMENT 'Registra informacion sobre los clientes que compraron en la empresa.';

-- Mover datos a Datos
CREATE TABLE Datos (
	id_dato INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT DEFAULT NULL,
    id_empleado INT DEFAULT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
)
COMMENT 'Registra los datos de los relacionados con la empresa.';

-- Falta implementar
CREATE TABLE Direcciones (
	id_direccion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_dato INT NOT NULL,
	direccion_facturacion VARCHAR (250),
    direccion_envio VARCHAR (250),
    FOREIGN KEY (id_dato) REFERENCES Datos(id_dato)
)
COMMENT 'Registra las direcciones de facturacion y de envio de cada entidad
		o persona que sea relevante con la empresa';

CREATE TABLE Reclamos (
	id_reclamo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    numero_ticket VARCHAR (100),
    mensaje VARCHAR (500),
    estado VARCHAR (20) DEFAULT 'pendiente',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
)
COMMENT 'Registra los reclamos de los clientes con su estado actual y su mensaje.';

CREATE TABLE Proveedores (
	id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20)
)
COMMENT 'Registra los datos de los proveedores que se contactan con la empresa.';

CREATE TABLE Productos (
	id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT NOT NULL,
	-- categoria VARCHAR (50);
    nombre VARCHAR (50),
    precio FLOAT,
    costo FLOAT,
    stock INT,
    numero_serie INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
)
COMMENT 'Registra cada producto de nuestro stock con sus precios y su informacion respectiva.';

CREATE TABLE Ventas (
	id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    -- id_empleado INT NOT NULL,
    -- id_direccion INT NOT NULL,
    fecha DATETIME DEFAULT NOW(),
    pedido BOOL DEFAULT FALSE,
    estado VARCHAR (20) DEFAULT 'Pendiente',
    total FLOAT DEFAULT 0,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
    -- FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    -- FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion)
)
COMMENT 'Registra los pedidos con su fecha y su precio total.';

CREATE TABLE Ventas_Productos (
	id_producto_vendido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT DEFAULT 1,
	FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
)
COMMENT 'Contiene mas informacion detallada sobre los pedidos como su precio unitario y estado.';

CREATE TABLE Pedidos_Pendientes (
	id_pendiente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos que tienen su estado "pendiente".';

CREATE TABLE Pedidos_Pagos (
	id_pago INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "pago" y su fecha de pago.';

CREATE TABLE Pedidos_Cancelados (
	id_cancelado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_venta INT NOT NULL,
	fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "cancelado" y su fecha de cancelado.';

CREATE TABLE Pedidos_Viajando (
	id_viaje INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_venta INT NOT NULL,
	fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "entregado" y su fecha de entregado.';

CREATE TABLE Pedidos_Entregados (
	id_entregado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_venta INT NOT NULL,
	fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "entregado" y su fecha de entregado.';

-- Tabla sin uso por ahora
CREATE TABLE Reservas_Clientes (
	id_reserva_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_producto INT NOT NULL,
    estado VARCHAR (20) DEFAULT 'pendiente',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
)
COMMENT 'Registra los datos de las reservas que los clientes realizan y su estado de reserva.';

CREATE TABLE Resumen_Ventas (
	id_resumen INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_producto INT NOT NULL,
    cantidad_ventas_presencial INT DEFAULT 0,
    -- total_recaudado_presencial INT DEFAULT 0,
    beneficio_total_presencial FLOAT DEFAULT 0,
	cantidad_ventas_pedidos INT DEFAULT 0,
    -- total_recaudado_pedidos INT DEFAULT 0,
    beneficio_total_pedidos FLOAT DEFAULT 0,
    cantidad_ventas_general INT DEFAULT 0,
    -- total_recaudado_general INT DEFAULT 0,
    beneficio_total_general FLOAT DEFAULT 0,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
)
COMMENT 'Registra un resumen de los datos de la tabla ventas, conteniendo las cantidades de ventas y totales recaudados'; 

-- SELECT * FROM Jefes;

-- SELECT * FROM Empleados;

-- SELECT * FROM Clientes;

-- SELECT * FROM Direcciones;

-- SELECT * FROM Datos; -- Poco uso actualmente

-- SELECT * FROM Reclamos; -- Poco uso actualmente

-- SELECT * FROM Proveedores;

-- SELECT * FROM Productos;

-- SELECT * FROM Ventas;

-- SELECT * FROM Ventas_Productos;

-- SELECT * FROM Pedidos_Pendientes;

-- SELECT * FROM Pedidos_Pagos;

-- SELECT * FROM Pedidos_Cancelados;

-- SELECT * FROM Pedidos_Viajando;

-- SELECT * FROM Pedidos_Entregados;

-- SELECT * FROM Reservas_Clientes; -- Sin uso actualmente

-- SELECT * FROM Resumen_Ventas;