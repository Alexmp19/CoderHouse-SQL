
USE alcol_drinks;

CREATE ROLE IF NOT EXISTS 'administrador';
CREATE ROLE IF NOT EXISTS 'gerente';
CREATE ROLE IF NOT EXISTS 'vendedor';
CREATE ROLE IF NOT EXISTS 'contador';

GRANT ALL PRIVILEGES ON alcol_drinks.* TO admin;

GRANT SELECT, INSERT, UPDATE ON alcol_drinks.Ventas TO gerente_ventas;
GRANT SELECT ON alcol_drinks.Productos TO gerente_ventas;
GRANT SELECT ON alcol_drinks.Clientes TO gerente_ventas;
GRANT SELECT ON alcol_drinks.Proveedores TO gerente_ventas;

GRANT SELECT, INSERT ON alcol_drinks.Ventas TO vendedor;
GRANT SELECT ON alcol_drinks.Productos TO vendedor;

GRANT SELECT ON alcol_drinks.Ventas TO contador;
GRANT SELECT ON alcol_drinks.Productos TO contador;
GRANT SELECT ON alcol_drinks.Clientes TO contador;

CREATE USER IF NOT EXISTS 'admin1'@'%' IDENTIFIED BY 'admin123';
CREATE USER IF NOT EXISTS 'gerente_ventas1'@'%' IDENTIFIED BY 'gv123';
CREATE USER IF NOT EXISTS 'vendedor1'@'%' IDENTIFIED BY 'vendedor123';
CREATE USER IF NOT EXISTS 'contador1'@'%' IDENTIFIED BY 'contador123';

GRANT administrador TO 'admin1'@'%';
GRANT gerente_ventas TO 'gerente_ventas1'@'%';
GRANT vendedor TO 'vendedor1'@'%';
GRANT contador TO 'contador1'@'%';

SET DEFAULT ROLE administrador TO 'admin1'@'%';
SET DEFAULT ROLE gerente_ventas TO 'gerente_ventas1'@'%';
SET DEFAULT ROLE vendedor TO 'vendedor1'@'%';
SET DEFAULT ROLE contador TO 'contador1'@'%';

FLUSH PRIVILEGES;

-- SHOW GRANTS FOR 'admin1'@'%';
-- SHOW GRANTS FOR 'gerente_ventas1'@'%';
-- SHOW GRANTS FOR 'vendedor1'@'%';
-- SHOW GRANTS FOR 'contador1'@'%';

