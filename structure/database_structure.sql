-- Creacion de base de datos
DROP DATABASE IF EXISTS alcol_drinks;

CREATE DATABASE alcol_drinks;

USE alcol_drinks;

CREATE TABLE Empleados (
	id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    puesto_actual VARCHAR (250),
    horas_semanales INT,
    salario_nominal FLOAT
)
COMMENT 'Registra informacion sobre los empleados de la empresa.';

CREATE TABLE Clientes (
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    apellido VARCHAR (50)
)
COMMENT 'Registra informacion sobre los clientes que compraron en la empresa.';

CREATE TABLE Proveedores (
	id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    nota VARCHAR (250),
    estado VARCHAR (20),
    fecha_registro DATETIME DEFAULT NOW()
)
COMMENT 'Registra los datos de los proveedores que se contactan con la empresa.';

CREATE TABLE Informacion (
	id_info INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT DEFAULT NULL,
    id_empleado INT DEFAULT NULL,
    id_proveedor INT DEFAULT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
)
COMMENT 'Registra los datos de los relacionados con la empresa.';

CREATE TABLE Informacion_Contacto (
	id_info INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    telefono BIGINT,
    celular VARCHAR(20),
    email VARCHAR(250),
	linkedin VARCHAR(250),
    instagram VARCHAR(250),
    facebook VARCHAR(250),
    twitter VARCHAR(250),
    youtube VARCHAR(250),
    tiktok VARCHAR(250),
    sitio_web VARCHAR(250),
    FOREIGN KEY (id_info) REFERENCES Informacion(id_info)
)
COMMENT 'Almacena toda la informacion de contacto de las empresas, clientes o personal relacionado con la empresa';

CREATE TABLE Informacion_Cuenta (
	id_cuenta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_info INT NOT NULL,
    clave VARCHAR(250),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_registro DATETIME,
    ultimo_acceso DATETIME,
    estado VARCHAR(20),
    rol VARCHAR(20),
    codigo_verificacion VARCHAR(20),
    codigo_recuperacion VARCHAR(20),
    FOREIGN KEY (id_info) REFERENCES Informacion(id_info)
)
COMMENT 'Almacena toda la informacion de las cuentas de las personas que se registren en nuestro sitio web';

CREATE TABLE Informacion_Facturacion (
	id_direccion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_info INT NOT NULL,
    metodo_pago VARCHAR(20),
    numero_tarjeta BIGINT,
    fecha_expedicion DATETIME,
    cvv INT,
    nombre_propietario VARCHAR(50),
    apellido_propietario VARCHAR(50),
    FOREIGN KEY (id_info) REFERENCES Informacion(id_info)
)
COMMENT 'Almacena toda la informacion de las tarjetas de las personas que realicen una compra en nuestro sitio web';

CREATE TABLE Informacion_Direcciones (
	id_direccion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_info INT NOT NULL,
	pais VARCHAR (250),
    estado VARCHAR (250),
    ciudad VARCHAR (250),
    codigo_postal VARCHAR (250),
    direccion VARCHAR (250),
    FOREIGN KEY (id_info) REFERENCES Informacion(id_info)
)
COMMENT 'Registra las direcciones de facturacion y de envio de cada entidad
		o persona que sea relevante con la empresa';

CREATE TABLE Reclamos (
	id_reclamo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    numero_ticket VARCHAR (100),
    mensaje VARCHAR (500),
    estado VARCHAR (20) DEFAULT 'pendiente',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
)
COMMENT 'Registra los reclamos de los clientes con su estado actual y su mensaje.';

CREATE TABLE Categorias_Productos (
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (50),
    descripcion VARCHAR (250)
);

CREATE TABLE Productos (
	id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT NOT NULL,
	id_categoria INT NOT NULL,
    nombre VARCHAR (50),
    descripcion VARCHAR (250),
    precio FLOAT,
    costo FLOAT,
    stock INT,
    numero_serie INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor),
    FOREIGN KEY (id_categoria) REFERENCES Categorias_Productos(id_categoria)
)
COMMENT 'Registra cada producto de nuestro stock con sus precios y su informacion respectiva.';

CREATE TABLE Ventas (
	id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
	id_empleado INT NOT NULL,
    id_direccion INT NOT NULL,
    fecha DATETIME,
    pedido BOOL DEFAULT FALSE,
    estado VARCHAR (20) DEFAULT 'Pendiente',
    total FLOAT DEFAULT 0,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_direccion) REFERENCES Informacion_Direcciones(id_direccion)
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
    id_venta INT NOT NULL NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos que tienen su estado "pendiente".';

CREATE TABLE Pedidos_Pagos (
    id_venta INT NOT NULL NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "pago" y su fecha de pago.';

CREATE TABLE Pedidos_Cancelados (
	id_venta INT NOT NULL NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "cancelado" y su fecha de cancelado.';

CREATE TABLE Pedidos_Viajando (
	id_venta INT NOT NULL NOT NULL AUTO_INCREMENT PRIMARY KEY,	
    fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "entregado" y su fecha de entregado.';

CREATE TABLE Pedidos_Entregados (
	id_venta INT NOT NULL NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
)
COMMENT 'Registra los pedidos con su estado "entregado" y su fecha de entregado.';

CREATE TABLE Reservas_Clientes (
	id_reserva_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha DATETIME DEFAULT NOW(),
    estado VARCHAR (20) DEFAULT 'pendiente',
    comentario VARCHAR (250),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
)
COMMENT 'Registra los datos de las reservas que los clientes realizan y su estado de reserva.';

CREATE TABLE Reservas_Proveedores (
	id_reserva_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT NOT NULL,
    fecha DATETIME DEFAULT NOW(),
    estado VARCHAR (20) DEFAULT 'pendiente',
    comentario VARCHAR (250),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
)
COMMENT 'Registra los datos de las reservas que los clientes realizan y su estado de reserva.';

CREATE TABLE Productos_Reservados (
	id_producto_reservado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_reserva_proveedor INT NOT NULL,
    id_reserva_cliente INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT DEFAULT 1,
    FOREIGN KEY (id_reserva_proveedor) REFERENCES Reservas_Proveedores(id_reserva_proveedor),
    FOREIGN KEY (id_reserva_cliente) REFERENCES Reservas_Clientes(id_reserva_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

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

-- SELECT * FROM Informacion;

-- SELECT * FROM Reclamos;

-- SELECT * FROM Proveedores;

-- SELECT * FROM Productos;

-- SELECT * FROM Ventas;

-- SELECT * FROM Ventas_Productos;

-- SELECT * FROM Pedidos_Pendientes;

-- SELECT * FROM Pedidos_Pagos;

-- SELECT * FROM Pedidos_Cancelados;

-- SELECT * FROM Pedidos_Viajando;

-- SELECT * FROM Pedidos_Entregados;

-- SELECT * FROM Reservas_Clientes;

-- SELECT * FROM Resumen_Ventas;

-- SELECT * FROM Informacion_Contacto;

-- SELECT * FROM Informacion_Cuenta;

-- SELECT * FROM Informacion_Facturacion;