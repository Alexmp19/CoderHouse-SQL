-- Creacion de base de datos
CREATE DATABASE alcol_drinks;

USE alcol_drinks;

-- Creacion de tablas
CREATE TABLE Jefes (
	id_jefe INT NOT NULL,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20),
    horas_semanales INT,
    salario_nominal INT,
    CONSTRAINT PK_CLASS PRIMARY KEY (id_jefe)
);

CREATE TABLE Empleados (
	id_empleado INT NOT NULL,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20),
    puesto_actual VARCHAR (250),
    horas_semanales INT,
    salario_nominal INT,
    CONSTRAINT PK_CLASS PRIMARY KEY (id_empleado)
);

CREATE TABLE Clientes (
	id_cliente INT NOT NULL,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20),
    CONSTRAINT PK_CLASS PRIMARY KEY (id_cliente)
);

CREATE TABLE Direcciones (
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
	direccion_facturacion VARCHAR (250),
    direccion_envio VARCHAR (250)
);

CREATE TABLE Datos (
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_jefe) REFERENCES Jefes(id_jefe)
);

CREATE TABLE Reclamos (
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_clientes),
    id_reclamo INT NOT NULL,
    numero_ticket VARCHAR (100),
    mensaje VARCHAR (500),
    estado VARCHAR (20),
    CONSTRAINT PK_CLASS PRIMARY KEY (id_reclamo)
);

CREATE TABLE Productos (
	id_producto INT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor),
    nombre VARCHAR (50),
    precio INT,
    stock INT,
    numero_serie INT,
    CONSTRAINT PK_CLASS PRIMARY KEY (id_producto)
);

CREATE TABLE Pedidos (
	id_pedido INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    fecha DATE,
    total INT,
    CONSTRAINT PK_CLASS PRIMARY KEY (id_pedido)
);

CREATE TABLE Detalles_Pedidos (
	id_detalle INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    precio_unitario INT,
    cantidad INT,
    estado VARCHAR (20),
    CONSTRAINT PK_CLASS PRIMARY KEY (id_jefe)
);

CREATE TABLE Proveedores (
	id_proveedor INT NOT NULL,
    nombre VARCHAR (50),
    email VARCHAR (250),
    telefono VARCHAR (20),
    CONSTRAINT PK_CLASS PRIMARY KEY (id_proveedor)
);

CREATE TABLE Pendientes (
	id_pendiente INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    CONSTRAINT PK_CLASS PRIMARY KEY (id_pendiente)
);

CREATE TABLE Pagos (
	id_pago INT NOT NULL,
    FOREIGN KEY (id_pendiente) REFERENCES Pendientes(id_pendiente),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    fecha DATE,
    CONSTRAINT PK_CLASS PRIMARY KEY (id_pago)
);

CREATE TABLE Cancelados (
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    fecha DATE
);

CREATE TABLE Entregados (
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_pago) REFERENCES Pagos(id_pago),
    fecha DATE
);

CREATE TABLE Reservas_Clientes (
	id_reserva INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    estado VARCHAR (20)
);

CREATE TABLE Ventas (
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);