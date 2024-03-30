-- Creacion de base de datos
DROP DATABASE IF EXISTS alcol_drinks;

CREATE DATABASE alcol_drinks;

USE alcol_drinks;

-- Creacion de tablas
CREATE TABLE Jefes (
	id_jefe INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20),
    puesto_actual VARCHAR (250),
    horas_semanales INT,
    salario_nominal FLOAT
)
COMMENT 'Registra informacion sobre los jefes de la empresa.';

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

CREATE TABLE Direcciones (
	id_direccion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT,
	direccion_facturacion VARCHAR (250),
    direccion_envio VARCHAR (250),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
)
COMMENT 'Registra las direcciones de facturacion y de envio de cada entidad
		o persona que sea relevante con la empresa';

CREATE TABLE Datos (
	id_dato INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT,
    id_empleado INT,
    id_jefe INT,
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_jefe) REFERENCES Jefes(id_jefe)
)
COMMENT 'Registra los datos de los relacionados con la empresa.';

CREATE TABLE Reclamos (
	id_reclamo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    numero_ticket VARCHAR (100),
    mensaje VARCHAR (500),
    estado VARCHAR (20),
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
    id_proveedor INT,
    nombre VARCHAR (50),
    precio FLOAT,
    stock INT,
    numero_serie INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
)
COMMENT 'Registra cada producto de nuestro stock con sus precios y su informacion respectiva.';

CREATE TABLE Pedidos (
	id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha DATETIME,
    total FLOAT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
)
COMMENT 'Registra los pedidos con su fecha y su precio total.';

CREATE TABLE Pedidos_Detalles (
	id_detalle INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_pedido INT,
    id_producto INT,
    precio_unitario FLOAT,
    cantidad INT,
    estado VARCHAR (20),
	FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
)
COMMENT 'Contiene mas informacion detallada sobre los pedidos como su precio unitario y estado.';

CREATE TABLE Pendientes (
	id_pendiente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
)
COMMENT 'Registra los pedidos que tienen su estado "pendiente".';

CREATE TABLE Pagos (
	id_pago INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pendiente INT,
    id_pedido INT,
    fecha DATETIME,
    FOREIGN KEY (id_pendiente) REFERENCES Pendientes(id_pendiente),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
)
COMMENT 'Registra los pedidos con su estado "pago" y su fecha de pago.';

CREATE TABLE Cancelados (
	id_cancelado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_pedido INT,
    id_cliente INT,
	fecha DATETIME,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
)
COMMENT 'Registra los pedidos con su estado "cancelado" y su fecha de cancelado.';

CREATE TABLE Entregados (
	id_entregado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_pedido INT,
    id_cliente INT,
    id_pago INT,
	fecha DATETIME,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_pago) REFERENCES Pagos(id_pago)
)
COMMENT 'Registra los pedidos con su estado "entregado" y su fecha de entregado.';

CREATE TABLE Reservas_Clientes (
	id_reserva_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    estado VARCHAR (20),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
)
COMMENT 'Registra los datos de las reservas que los clientes realizan y su estado de reserva.';

CREATE TABLE Ventas (
	id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT,
    id_pedido INT,
    id_producto INT,
    cantidad_ventas_presencial INT,
    ganancia_total_presencial FLOAT,
    cantidad_ventas_pedidos INT,
    ganancia_total_pedidos FLOAT,
    cantidad_ventas_general INT,
    ganancia_total_general FLOAT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
)
COMMENT 'Registra las ventas de la empresa tanto en presencial como por pedidos.';