-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: alcol_drinks
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias_productos`
--

DROP TABLE IF EXISTS `categorias_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_productos` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_productos`
--

LOCK TABLES `categorias_productos` WRITE;
/*!40000 ALTER TABLE `categorias_productos` DISABLE KEYS */;
INSERT INTO `categorias_productos` VALUES (1,'Vinos','Vinos de diversas regiones y variedades.'),(2,'Cervezas','Cervezas artesanales y comerciales.'),(3,'Licores','Licores de alta calidad de diferentes partes del mundo.'),(4,'Whisky','Variedad de whiskies escoceses, irlandeses y americanos.'),(5,'Vodka','Selección de vodkas premium.'),(6,'Tequila','Tequilas blancos, reposados y añejos.'),(7,'Champagne','Champagnes y vinos espumosos.'),(8,'Bebidas sin alcohol','Bebidas no alcohólicas, incluidos jugos y refrescos.');
/*!40000 ALTER TABLE `categorias_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra informacion sobre los clientes que compraron en la empresa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'María','López'),(2,'Juan','Martínez'),(3,'Laura','García'),(4,'Carlos','Rodríguez'),(5,'Ana','Fernández'),(6,'José','Pérez'),(7,'Sofía','Hernández'),(8,'Diego','Gómez'),(9,'Marta','Ruiz'),(10,'Pedro','Sánchez');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `copiar_datos_desde_clientes` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO Informacion (id_cliente) VALUES (NEW.id_cliente);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `puesto_actual` varchar(250) DEFAULT NULL,
  `horas_semanales` int DEFAULT NULL,
  `salario_nominal` float DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra informacion sobre los empleados de la empresa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Ana','Gomez','empleado',30,5500),(2,'Luis','Diaz','empleado',25,4800),(3,'Marta','Ruiz','empleado',35,6000),(4,'Sofia','Hernandez','empleado',28,5200),(5,'Diego','Perez','empleado',40,7500),(6,'Juan','Gonzalez','jefe',25,5000),(7,'Pedro','Fernandez','jefe',30,6000),(8,'Maria','Martinez','jefe',35,7000);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `copiar_datos_desde_empleados` AFTER INSERT ON `empleados` FOR EACH ROW BEGIN
    INSERT INTO Informacion (id_empleado) VALUES (NEW.id_empleado);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `informacion`
--

DROP TABLE IF EXISTS `informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion` (
  `id_info` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_info`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `informacion_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `informacion_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `informacion_ibfk_3` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los datos de los relacionados con la empresa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion`
--

LOCK TABLES `informacion` WRITE;
/*!40000 ALTER TABLE `informacion` DISABLE KEYS */;
INSERT INTO `informacion` VALUES (1,NULL,1,NULL),(2,NULL,2,NULL),(3,NULL,3,NULL),(4,NULL,4,NULL),(5,NULL,5,NULL),(6,NULL,6,NULL),(7,NULL,7,NULL),(8,NULL,8,NULL),(9,1,NULL,NULL),(10,2,NULL,NULL),(11,3,NULL,NULL),(12,4,NULL,NULL),(13,5,NULL,NULL),(14,6,NULL,NULL),(15,7,NULL,NULL),(16,8,NULL,NULL),(17,9,NULL,NULL),(18,10,NULL,NULL),(19,NULL,NULL,NULL),(20,NULL,NULL,NULL),(21,NULL,NULL,NULL),(22,NULL,NULL,NULL),(23,NULL,NULL,NULL),(24,NULL,NULL,NULL),(25,NULL,NULL,NULL),(26,NULL,NULL,NULL),(27,NULL,NULL,NULL),(28,NULL,NULL,NULL),(29,NULL,NULL,NULL),(30,NULL,NULL,NULL),(31,NULL,NULL,NULL),(32,NULL,NULL,NULL),(33,NULL,NULL,NULL),(34,NULL,NULL,NULL),(35,NULL,NULL,NULL),(36,NULL,NULL,NULL),(37,NULL,NULL,NULL),(38,NULL,NULL,NULL),(39,NULL,NULL,NULL),(40,NULL,NULL,NULL),(41,NULL,NULL,NULL);
/*!40000 ALTER TABLE `informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion_contacto`
--

DROP TABLE IF EXISTS `informacion_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion_contacto` (
  `id_info` int NOT NULL AUTO_INCREMENT,
  `telefono` bigint DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `linkedin` varchar(250) DEFAULT NULL,
  `instagram` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `youtube` varchar(250) DEFAULT NULL,
  `tiktok` varchar(250) DEFAULT NULL,
  `sitio_web` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_info`),
  CONSTRAINT `informacion_contacto_ibfk_1` FOREIGN KEY (`id_info`) REFERENCES `informacion` (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena toda la informacion de contacto de las empresas, clientes o personal relacionado con la empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_contacto`
--

LOCK TABLES `informacion_contacto` WRITE;
/*!40000 ALTER TABLE `informacion_contacto` DISABLE KEYS */;
INSERT INTO `informacion_contacto` VALUES (1,1234567890,NULL,'maria.lopez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2345678901,NULL,'juan.martinez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3456789012,NULL,'laura.garcia@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4567890123,NULL,'carlos.rodriguez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5678901234,NULL,'ana.fernandez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6789012345,NULL,'jose.perez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7890123456,NULL,'sofia.hernandez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8901234567,NULL,'diego.gomez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,9012345678,NULL,'marta.ruiz@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,1234567890,NULL,'pedro.sanchez@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,'+1234567890','ana.gomez@empresa.com','linkedin.com/anagomez','instagram.com/anagomez','facebook.com/anagomez','twitter.com/anagomez',NULL,NULL,NULL),(12,NULL,'+2345678901','luis.diaz@empresa.com','linkedin.com/luisdiaz','instagram.com/luisdiaz','facebook.com/luisdiaz','twitter.com/luisdiaz',NULL,NULL,NULL),(13,NULL,'+3456789012','marta.ruiz@empresa.com','linkedin.com/martaruiz','instagram.com/martaruiz','facebook.com/martaruiz','twitter.com/martaruiz',NULL,NULL,NULL),(14,NULL,'+4567890123','sofia.hernandez@empresa.com','linkedin.com/sofiahernandez','instagram.com/sofiahernandez','facebook.com/sofiahernandez','twitter.com/sofiahernandez',NULL,NULL,NULL),(15,NULL,'+5678901234','diego.perez@empresa.com','linkedin.com/diegoperez','instagram.com/diegoperez','facebook.com/diegoperez','twitter.com/diegoperez',NULL,NULL,NULL),(16,NULL,'+1234567890','juan.gonzalez@empresa.com','linkedin.com/juangonzalez','instagram.com/juangonzalez','facebook.com/juangonzalez','twitter.com/juangonzalez',NULL,NULL,NULL),(17,NULL,'+2345678901','pedro.fernandez@empresa.com','linkedin.com/pedrofernandez','instagram.com/pedrofernandez','facebook.com/pedrofernandez','twitter.com/pedrofernandez',NULL,NULL,NULL),(18,NULL,'+3456789012','maria.martinez@empresa.com','linkedin.com/mariamartinez','instagram.com/mariamartinez','facebook.com/mariamartinez','twitter.com/mariamartinez',NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'distribuidoralosandes.com'),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'importacionesglobales.com'),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bebidasdelsur.com'),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vinosylicores.com'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cervezasdelmundo.com');
/*!40000 ALTER TABLE `informacion_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion_cuenta`
--

DROP TABLE IF EXISTS `informacion_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion_cuenta` (
  `id_cuenta` int NOT NULL AUTO_INCREMENT,
  `id_info` int NOT NULL,
  `clave` varchar(250) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `ultimo_acceso` datetime DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `codigo_verificacion` varchar(20) DEFAULT NULL,
  `codigo_recuperacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cuenta`),
  KEY `id_info` (`id_info`),
  CONSTRAINT `informacion_cuenta_ibfk_1` FOREIGN KEY (`id_info`) REFERENCES `informacion` (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena toda la informacion de las cuentas de las personas que se registren en nuestro sitio web';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_cuenta`
--

LOCK TABLES `informacion_cuenta` WRITE;
/*!40000 ALTER TABLE `informacion_cuenta` DISABLE KEYS */;
INSERT INTO `informacion_cuenta` VALUES (1,1,'clave123','María','López','2024-01-01 12:00:00','2024-06-20 15:30:00','activo','cliente',NULL,NULL),(2,2,'clave456','Juan','Martínez','2024-01-02 13:00:00','2024-06-20 16:45:00','activo','cliente',NULL,NULL),(3,3,'clave789','Laura','García','2024-01-03 14:00:00','2024-06-20 17:15:00','activo','cliente',NULL,NULL),(4,4,'clave101','Carlos','Rodríguez','2024-01-04 15:00:00','2024-06-20 18:30:00','activo','cliente',NULL,NULL),(5,5,'clave202','Ana','Fernández','2024-01-05 16:00:00','2024-06-20 19:45:00','activo','cliente',NULL,NULL),(6,6,'clave303','José','Pérez','2024-01-06 17:00:00','2024-06-20 20:00:00','activo','cliente',NULL,NULL),(7,7,'clave404','Sofía','Hernández','2024-01-07 18:00:00','2024-06-20 21:15:00','activo','cliente',NULL,NULL),(8,8,'clave505','Diego','Gómez','2024-01-08 19:00:00','2024-06-20 22:30:00','activo','cliente',NULL,NULL),(9,9,'clave606','Marta','Ruiz','2024-01-09 20:00:00','2024-06-20 23:45:00','activo','cliente',NULL,NULL),(10,10,'clave707','Pedro','Sánchez','2024-01-10 21:00:00','2024-06-21 00:00:00','activo','cliente',NULL,NULL),(11,11,'claveana','Ana','Gómez','2024-01-11 08:30:00','2024-06-21 08:45:00','activo','empleado',NULL,NULL),(12,12,'claveluis','Luis','Díaz','2024-01-12 09:00:00','2024-06-21 09:15:00','activo','empleado',NULL,NULL),(13,13,'clavemarta','Marta','Ruiz','2024-01-13 10:00:00','2024-06-21 10:30:00','activo','empleado',NULL,NULL),(14,14,'clavesofia','Sofía','Hernández','2024-01-14 11:00:00','2024-06-21 11:45:00','activo','empleado',NULL,NULL),(15,15,'clavediego','Diego','Pérez','2024-01-15 12:00:00','2024-06-21 12:30:00','activo','empleado',NULL,NULL),(16,16,'clavejuan','Juan','González','2024-01-16 13:00:00','2024-06-21 13:45:00','activo','jefe',NULL,NULL),(17,17,'clavepedro','Pedro','Fernández','2024-01-17 14:00:00','2024-06-21 14:30:00','activo','jefe',NULL,NULL),(18,18,'clavemaria','María','Martínez','2024-01-18 15:00:00','2024-06-21 15:45:00','activo','jefe',NULL,NULL);
/*!40000 ALTER TABLE `informacion_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion_direcciones`
--

DROP TABLE IF EXISTS `informacion_direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion_direcciones` (
  `id_direccion` int NOT NULL AUTO_INCREMENT,
  `id_info` int NOT NULL,
  `pais` varchar(250) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  `ciudad` varchar(250) DEFAULT NULL,
  `codigo_postal` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_direccion`),
  KEY `id_info` (`id_info`),
  CONSTRAINT `informacion_direcciones_ibfk_1` FOREIGN KEY (`id_info`) REFERENCES `informacion` (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra las direcciones de facturacion y de envio de cada entidad\n		o persona que sea relevante con la empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_direcciones`
--

LOCK TABLES `informacion_direcciones` WRITE;
/*!40000 ALTER TABLE `informacion_direcciones` DISABLE KEYS */;
INSERT INTO `informacion_direcciones` VALUES (1,1,'United States','California','Los Angeles','90001','123 Sunset Blvd'),(2,2,'United States','New York','New York','10001','456 Broadway'),(3,3,'Canada','Ontario','Toronto','M5H 2N2','789 Queen St'),(4,4,'Canada','British Columbia','Vancouver','V5K 0A1','101 Main St'),(5,5,'United Kingdom','England','London','SW1A 1AA','102 Oxford St'),(6,6,'Australia','New South Wales','Sydney','2000','103 George St'),(7,7,'Australia','Victoria','Melbourne','3000','104 Collins St'),(8,8,'New Zealand','Auckland','Auckland','1010','105 Queen St'),(9,9,'Germany','Berlin','Berlin','10115','106 Friedrichstrasse'),(10,10,'France','Île-de-France','Paris','75001','107 Rue de Rivoli'),(11,11,'Italy','Lazio','Rome','00100','108 Via del Corso'),(12,12,'Spain','Madrid','Madrid','28001','109 Gran Via'),(13,13,'Mexico','Ciudad de Mexico','Mexico City','01000','110 Reforma Ave'),(14,14,'Brazil','São Paulo','São Paulo','01000-000','111 Paulista Ave'),(15,15,'Japan','Tokyo','Tokyo','100-0001','112 Shibuya Crossing'),(16,16,'China','Beijing','Beijing','100000','113 Wangfujing St'),(17,17,'India','Maharashtra','Mumbai','400001','114 Marine Drive'),(18,18,'South Africa','Gauteng','Johannesburg','2000','115 Nelson Mandela Ave'),(19,19,'Russia','Moscow','Moscow','101000','116 Red Square'),(20,20,'South Korea','Seoul','Seoul','04524','117 Gangnam-daero'),(21,21,'Argentina','Buenos Aires','Buenos Aires','C1000','118 9 de Julio Ave'),(22,22,'Chile','Santiago Metropolitan','Santiago','8320000','119 Providencia Ave'),(23,9,'Germany','Bavaria','Munich','80331','123 Leopoldstrasse'),(24,10,'France','Île-de-France','Paris','75008','456 Champs-Élysées');
/*!40000 ALTER TABLE `informacion_direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion_facturacion`
--

DROP TABLE IF EXISTS `informacion_facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion_facturacion` (
  `id_direccion` int NOT NULL AUTO_INCREMENT,
  `id_info` int NOT NULL,
  `metodo_pago` varchar(20) DEFAULT NULL,
  `numero_tarjeta` bigint DEFAULT NULL,
  `fecha_expedicion` datetime DEFAULT NULL,
  `cvv` int DEFAULT NULL,
  `nombre_propietario` varchar(50) DEFAULT NULL,
  `apellido_propietario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_direccion`),
  KEY `id_info` (`id_info`),
  CONSTRAINT `informacion_facturacion_ibfk_1` FOREIGN KEY (`id_info`) REFERENCES `informacion` (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena toda la informacion de las tarjetas de las personas que realicen una compra en nuestro sitio web';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_facturacion`
--

LOCK TABLES `informacion_facturacion` WRITE;
/*!40000 ALTER TABLE `informacion_facturacion` DISABLE KEYS */;
INSERT INTO `informacion_facturacion` VALUES (1,1,'tarjeta',1234567890123456,'2023-01-01 00:00:00',123,'María','López'),(2,2,'tarjeta',2345678901234567,'2023-02-01 00:00:00',456,'Juan','Martínez'),(3,3,'efectivo',NULL,NULL,NULL,NULL,NULL),(4,4,'tarjeta',3456789012345678,'2023-04-01 00:00:00',789,'Carlos','Rodríguez'),(5,5,'tarjeta',4567890123456789,'2023-05-01 00:00:00',12,'Ana','Fernández'),(6,6,'efectivo',NULL,NULL,NULL,NULL,NULL),(7,10,'efectivo',NULL,NULL,NULL,NULL,NULL),(8,8,'efectivo',NULL,NULL,NULL,NULL,NULL),(23,7,'tarjeta',5678901234567890,'2023-07-01 00:00:00',345,'Sofía','Hernández'),(24,9,'tarjeta',6789012345678901,'2023-09-01 00:00:00',678,'Marta','Ruiz');
/*!40000 ALTER TABLE `informacion_facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_cancelados`
--

DROP TABLE IF EXISTS `pedidos_cancelados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_cancelados` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_venta`),
  CONSTRAINT `pedidos_cancelados_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los pedidos con su estado "cancelado" y su fecha de cancelado.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_cancelados`
--

LOCK TABLES `pedidos_cancelados` WRITE;
/*!40000 ALTER TABLE `pedidos_cancelados` DISABLE KEYS */;
INSERT INTO `pedidos_cancelados` VALUES (12,'2024-11-12 12:14:05');
/*!40000 ALTER TABLE `pedidos_cancelados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_estado_cancelado` AFTER INSERT ON `pedidos_cancelados` FOR EACH ROW BEGIN
	
    UPDATE Ventas
    SET estado = 'cancelado'
    WHERE id_venta = NEW.id_venta;
    
    DELETE FROM Pedidos_Pendientes
    WHERE id_venta = NEW.id_venta;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedidos_entregados`
--

DROP TABLE IF EXISTS `pedidos_entregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_entregados` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_venta`),
  CONSTRAINT `pedidos_entregados_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los pedidos con su estado "entregado" y su fecha de entregado.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_entregados`
--

LOCK TABLES `pedidos_entregados` WRITE;
/*!40000 ALTER TABLE `pedidos_entregados` DISABLE KEYS */;
INSERT INTO `pedidos_entregados` VALUES (2,'2024-05-21 06:31:23'),(4,'2023-12-25 20:13:54'),(5,'2024-03-02 16:42:14'),(7,'2024-01-20 11:21:41'),(8,'2023-06-17 10:42:03'),(11,'2023-10-06 16:01:10');
/*!40000 ALTER TABLE `pedidos_entregados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_estado_entregado` AFTER INSERT ON `pedidos_entregados` FOR EACH ROW BEGIN
	
    UPDATE Ventas
    SET estado = 'entregado'
    WHERE id_venta = NEW.id_venta;
    
    DELETE FROM Pedidos_Viajando
    WHERE id_venta = NEW.id_venta;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedidos_pagos`
--

DROP TABLE IF EXISTS `pedidos_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_pagos` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_venta`),
  CONSTRAINT `pedidos_pagos_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los pedidos con su estado "pago" y su fecha de pago.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_pagos`
--

LOCK TABLES `pedidos_pagos` WRITE;
/*!40000 ALTER TABLE `pedidos_pagos` DISABLE KEYS */;
INSERT INTO `pedidos_pagos` VALUES (2,'2024-05-12 23:51:00'),(4,'2023-12-16 19:29:00'),(5,'2024-02-24 16:01:00'),(6,'2024-12-03 06:45:00'),(7,'2024-01-15 10:51:00'),(8,'2023-06-10 09:31:00'),(9,'2023-01-27 15:51:00'),(10,'2023-04-19 16:50:00'),(11,'2023-09-26 15:00:00');
/*!40000 ALTER TABLE `pedidos_pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_estado_pago` AFTER INSERT ON `pedidos_pagos` FOR EACH ROW BEGIN
    
    UPDATE Ventas
    SET estado = 'pago'
    WHERE id_venta = NEW.id_venta;
    
	DELETE FROM Pedidos_Pendientes
    WHERE id_venta = NEW.id_venta;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedidos_pendientes`
--

DROP TABLE IF EXISTS `pedidos_pendientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_pendientes` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_venta`),
  CONSTRAINT `pedidos_pendientes_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los pedidos que tienen su estado "pendiente".';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_pendientes`
--

LOCK TABLES `pedidos_pendientes` WRITE;
/*!40000 ALTER TABLE `pedidos_pendientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_pendientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_estado_pendiente` AFTER INSERT ON `pedidos_pendientes` FOR EACH ROW BEGIN
	
    UPDATE Ventas
    SET estado = 'pendiente'
    WHERE id_venta = NEW.id_venta;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedidos_viajando`
--

DROP TABLE IF EXISTS `pedidos_viajando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_viajando` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_venta`),
  CONSTRAINT `pedidos_viajando_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los pedidos con su estado "entregado" y su fecha de entregado.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_viajando`
--

LOCK TABLES `pedidos_viajando` WRITE;
/*!40000 ALTER TABLE `pedidos_viajando` DISABLE KEYS */;
INSERT INTO `pedidos_viajando` VALUES (6,'2024-12-03 07:45:00'),(9,'2023-01-27 17:00:00');
/*!40000 ALTER TABLE `pedidos_viajando` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_estado_viajando` AFTER INSERT ON `pedidos_viajando` FOR EACH ROW BEGIN
	
    UPDATE Ventas
    SET estado = 'viajando'
    WHERE id_venta = NEW.id_venta;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `id_categoria` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `costo` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `numero_serie` int DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias_productos` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra cada producto de nuestro stock con sus precios y su informacion respectiva.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,1,'Vino Tinto Merlot','Un vino tinto de cuerpo medio, perfecto para cenas.',15.99,10,100,10001),(2,2,2,'Cerveza Artesanal IPA','Cerveza artesanal con un toque amargo distintivo.',3.99,2.5,200,10002),(3,3,3,'Licor de Avellana','Licor dulce y suave, ideal para postres.',20,12,50,10003),(4,4,4,'Whisky Escocés 12 años','Whisky de malta envejecido 12 años.',45,30,30,10004),(5,5,5,'Vodka Premium','Vodka destilado cinco veces para una pureza excepcional.',25,15,80,10005),(6,4,6,'Tequila Reposado','Tequila suave y envejecido en barricas de roble.',30,20,60,10006),(7,1,7,'Champagne Brut','Champagne seco con burbujas finas.',50,35,40,10007),(8,2,8,'Jugo de Naranja Natural','Jugo fresco y natural, sin conservantes.',5,3,150,10008),(9,3,2,'Cerveza Lager','Cerveza ligera y refrescante.',2.5,1.5,300,10009),(10,5,1,'Vino Blanco Chardonnay','Vino blanco afrutado, ideal para mariscos.',18,12,120,10010);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `copiar_producto_resumen_ventas` AFTER INSERT ON `productos` FOR EACH ROW BEGIN
	INSERT INTO Resumen_Ventas (id_producto) VALUES
		(NEW.id_producto);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos_reservados`
--

DROP TABLE IF EXISTS `productos_reservados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_reservados` (
  `id_producto_reservado` int NOT NULL AUTO_INCREMENT,
  `id_reserva_proveedor` int NOT NULL,
  `id_reserva_cliente` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int DEFAULT '1',
  PRIMARY KEY (`id_producto_reservado`),
  KEY `id_reserva_proveedor` (`id_reserva_proveedor`),
  KEY `id_reserva_cliente` (`id_reserva_cliente`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `productos_reservados_ibfk_1` FOREIGN KEY (`id_reserva_proveedor`) REFERENCES `reservas_proveedores` (`id_reserva_proveedor`),
  CONSTRAINT `productos_reservados_ibfk_2` FOREIGN KEY (`id_reserva_cliente`) REFERENCES `reservas_clientes` (`id_reserva_cliente`),
  CONSTRAINT `productos_reservados_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_reservados`
--

LOCK TABLES `productos_reservados` WRITE;
/*!40000 ALTER TABLE `productos_reservados` DISABLE KEYS */;
INSERT INTO `productos_reservados` VALUES (1,1,1,1,2),(2,2,2,2,3),(3,3,3,3,1),(4,4,4,4,5),(5,5,5,5,2),(6,1,2,1,1),(7,2,3,2,4),(8,3,4,3,3),(9,4,5,4,2),(10,5,1,5,3),(11,1,3,1,2),(12,2,4,2,1),(13,3,5,3,4),(14,4,1,4,3),(15,5,2,5,2),(16,1,4,1,1),(17,2,5,2,3),(18,3,1,3,2),(19,4,2,4,4),(20,5,3,5,1);
/*!40000 ALTER TABLE `productos_reservados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `nota` varchar(250) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los datos de los proveedores que se contactan con la empresa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Distribuidora Los Andes','Proveedor confiable de bebidas alcohólicas.','Activo','2023-01-15 08:30:00'),(2,'Importaciones Globales','Nuevo proveedor, aún en evaluación.','Pendiente','2023-02-20 14:45:00'),(3,'Bebidas del Sur','Entrega rápida y buen servicio al cliente.','Activo','2023-03-05 11:20:00'),(4,'Vinos y Licores SA','Proveedor con excelente calidad de productos.','Activo','2023-04-10 16:55:00'),(5,'Cervezas del Mundo','Problemas recientes con entregas.','Inactivo','2023-05-25 09:10:00');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reclamos`
--

DROP TABLE IF EXISTS `reclamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reclamos` (
  `id_reclamo` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_empleado` int NOT NULL,
  `numero_ticket` varchar(100) DEFAULT NULL,
  `mensaje` varchar(500) DEFAULT NULL,
  `estado` varchar(20) DEFAULT 'pendiente',
  PRIMARY KEY (`id_reclamo`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `reclamos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `reclamos_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los reclamos de los clientes con su estado actual y su mensaje.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reclamos`
--

LOCK TABLES `reclamos` WRITE;
/*!40000 ALTER TABLE `reclamos` DISABLE KEYS */;
INSERT INTO `reclamos` VALUES (1,1,1,'TCK123','El producto que recibí estaba dañado.','Abierto'),(2,2,2,'TCK456','No recibí el paquete en la fecha prometida.','En progreso'),(3,3,3,'TCK789','El producto que ordené no coincide con la descripción.','Cerrado'),(4,4,4,'TCK012','Necesito ayuda con la instalación del producto.','Abierto'),(5,5,5,'TCK345','El producto que recibí tiene un defecto de fabricación.','En revisión');
/*!40000 ALTER TABLE `reclamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_clientes`
--

DROP TABLE IF EXISTS `reservas_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_clientes` (
  `id_reserva_cliente` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(20) DEFAULT 'pendiente',
  `comentario` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_reserva_cliente`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `reservas_clientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los datos de las reservas que los clientes realizan y su estado de reserva.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_clientes`
--

LOCK TABLES `reservas_clientes` WRITE;
/*!40000 ALTER TABLE `reservas_clientes` DISABLE KEYS */;
INSERT INTO `reservas_clientes` VALUES (1,1,'2024-06-20 10:00:00','confirmada','Reserva de verano'),(2,2,'2024-06-21 11:00:00','pendiente','Esperando confirmación'),(3,3,'2024-06-22 12:00:00','cancelada','No se requiere más'),(4,4,'2024-06-23 13:00:00','confirmada','Reserva de invierno'),(5,5,'2024-06-24 14:00:00','pendiente','En proceso de reserva');
/*!40000 ALTER TABLE `reservas_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_proveedores`
--

DROP TABLE IF EXISTS `reservas_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_proveedores` (
  `id_reserva_proveedor` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(20) DEFAULT 'pendiente',
  `comentario` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_reserva_proveedor`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `reservas_proveedores_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los datos de las reservas que los clientes realizan y su estado de reserva.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_proveedores`
--

LOCK TABLES `reservas_proveedores` WRITE;
/*!40000 ALTER TABLE `reservas_proveedores` DISABLE KEYS */;
INSERT INTO `reservas_proveedores` VALUES (1,1,'2024-06-20 10:30:00','confirmada','Entrega confirmada'),(2,2,'2024-06-21 11:30:00','pendiente','Esperando respuesta'),(3,3,'2024-06-22 12:30:00','confirmada','Entrega programada'),(4,4,'2024-06-23 13:30:00','pendiente','En proceso de reserva'),(5,5,'2024-06-24 14:30:00','cancelada','No se pudo completar');
/*!40000 ALTER TABLE `reservas_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumen_ventas`
--

DROP TABLE IF EXISTS `resumen_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resumen_ventas` (
  `id_resumen` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad_ventas_presencial` int DEFAULT '0',
  `beneficio_total_presencial` float DEFAULT '0',
  `cantidad_ventas_pedidos` int DEFAULT '0',
  `beneficio_total_pedidos` float DEFAULT '0',
  `cantidad_ventas_general` int DEFAULT '0',
  `beneficio_total_general` float DEFAULT '0',
  PRIMARY KEY (`id_resumen`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `resumen_ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra un resumen de los datos de la tabla ventas, conteniendo las cantidades de ventas y totales recaudados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumen_ventas`
--

LOCK TABLES `resumen_ventas` WRITE;
/*!40000 ALTER TABLE `resumen_ventas` DISABLE KEYS */;
INSERT INTO `resumen_ventas` VALUES (1,1,3,17.97,3,17.97,6,35.94),(2,2,2,2.98,6,8.94,8,11.92),(3,3,5,40,5,40,10,80),(4,4,2,30,5,75,7,105),(5,5,2,20,4,40,6,60),(6,6,4,40,5,50,9,90),(7,7,5,75,4,60,9,135),(8,8,3,6,3,6,6,12),(9,9,3,3,3,3,6,6),(10,10,2,12,7,42,9,54);
/*!40000 ALTER TABLE `resumen_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_estado_pedidos`
--

DROP TABLE IF EXISTS `v_estado_pedidos`;
/*!50001 DROP VIEW IF EXISTS `v_estado_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_estado_pedidos` AS SELECT 
 1 AS `id_cliente`,
 1 AS `id_venta`,
 1 AS `id_producto`,
 1 AS `nombre`,
 1 AS `estado`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_historial_compras_clientes`
--

DROP TABLE IF EXISTS `v_historial_compras_clientes`;
/*!50001 DROP VIEW IF EXISTS `v_historial_compras_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_historial_compras_clientes` AS SELECT 
 1 AS `id_venta`,
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `estado`,
 1 AS `fecha`,
 1 AS `id_producto`,
 1 AS `cantidad`,
 1 AS `precio_producto`,
 1 AS `total_pedido`,
 1 AS `numero_serie`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_mas_vendidos`
--

DROP TABLE IF EXISTS `v_mas_vendidos`;
/*!50001 DROP VIEW IF EXISTS `v_mas_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_mas_vendidos` AS SELECT 
 1 AS `id_resumen`,
 1 AS `nombre`,
 1 AS `ventas`,
 1 AS `total_recaudado`,
 1 AS `precio`,
 1 AS `costo`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pedidos_pendientes`
--

DROP TABLE IF EXISTS `v_pedidos_pendientes`;
/*!50001 DROP VIEW IF EXISTS `v_pedidos_pendientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pedidos_pendientes` AS SELECT 
 1 AS `id_venta`,
 1 AS `id_cliente`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `id_producto`,
 1 AS `nombre_producto`,
 1 AS `numero_serie`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_precio_productos_iva`
--

DROP TABLE IF EXISTS `v_precio_productos_iva`;
/*!50001 DROP VIEW IF EXISTS `v_precio_productos_iva`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_precio_productos_iva` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre`,
 1 AS `PrecioUYU`,
 1 AS `IVA`,
 1 AS `PrecioUYU+IVA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_productos_proveedores`
--

DROP TABLE IF EXISTS `v_productos_proveedores`;
/*!50001 DROP VIEW IF EXISTS `v_productos_proveedores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_productos_proveedores` AS SELECT 
 1 AS `id_producto`,
 1 AS `id_proveedor`,
 1 AS `nombre_proveedor`,
 1 AS `nombre_producto`,
 1 AS `precio`,
 1 AS `stock`,
 1 AS `numero_serie`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_rentabilidad_productos`
--

DROP TABLE IF EXISTS `v_rentabilidad_productos`;
/*!50001 DROP VIEW IF EXISTS `v_rentabilidad_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_rentabilidad_productos` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre`,
 1 AS `rentabilidadTotal`,
 1 AS `rentabilidadPresencial`,
 1 AS `rentabilidadPedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_venta_completa`
--

DROP TABLE IF EXISTS `v_venta_completa`;
/*!50001 DROP VIEW IF EXISTS `v_venta_completa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_venta_completa` AS SELECT 
 1 AS `id_producto_vendido`,
 1 AS `id_venta`,
 1 AS `id_cliente`,
 1 AS `id_producto`,
 1 AS `cantidad`,
 1 AS `total`,
 1 AS `fecha`,
 1 AS `pedido`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_direccion` int NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `pedido` tinyint(1) DEFAULT '0',
  `estado` varchar(20) DEFAULT 'Pendiente',
  `total` float DEFAULT '0',
  PRIMARY KEY (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_direccion` (`id_direccion`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_direccion`) REFERENCES `informacion_direcciones` (`id_direccion`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registra los pedidos con su fecha y su precio total.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,1,'2024-01-01 10:00:00',1,'Pendiente',735),(2,2,2,2,'2024-01-02 11:00:00',1,'entregado',262.9),(3,3,3,3,'2024-01-03 12:00:00',1,'Pendiente',353.94),(4,4,4,4,'2024-01-04 13:00:00',1,'entregado',120.96),(5,5,5,5,'2024-01-05 14:00:00',1,'entregado',289.46),(6,6,6,6,'2024-01-06 15:00:00',1,'viajando',580.91),(7,7,7,7,'2024-01-07 16:00:00',1,'entregado',458),(8,8,8,8,'2024-01-08 17:00:00',1,'entregado',751.92),(9,9,1,9,'2024-01-09 18:00:00',1,'viajando',398),(10,10,2,10,'2024-01-10 19:00:00',1,'pago',615.85),(11,2,3,11,'2024-01-11 20:00:00',1,'entregado',289.92),(12,5,4,12,'2024-01-12 21:00:00',1,'cancelado',605),(13,1,5,13,'2024-01-13 10:00:00',0,'Pendiente',617.5),(14,2,6,14,'2024-01-14 11:00:00',0,'Pendiente',150),(15,3,7,15,'2024-01-15 12:00:00',0,'Pendiente',305),(16,4,8,16,'2024-01-16 13:00:00',0,'Pendiente',152.5),(17,5,1,17,'2024-01-17 14:00:00',0,'Pendiente',547.93),(18,6,2,18,'2024-01-18 15:00:00',0,'Pendiente',35),(19,7,3,19,'2024-01-19 16:00:00',0,'Pendiente',700),(20,8,4,20,'2024-01-20 17:00:00',0,'Pendiente',477.92),(21,9,5,21,'2024-01-21 18:00:00',0,'Pendiente',121.92),(22,10,6,22,'2024-01-22 19:00:00',0,'Pendiente',246.46),(23,1,7,1,'2024-01-23 20:00:00',0,'Pendiente',225),(24,2,8,2,'2024-01-24 21:00:00',0,'Pendiente',180),(25,1,1,3,'2024-01-25 10:00:00',0,'Pendiente',76.98),(26,2,2,4,'2024-01-26 11:00:00',0,'Pendiente',320),(27,3,3,5,'2024-01-27 12:00:00',0,'Pendiente',200),(28,4,4,6,'2024-01-28 13:00:00',0,'Pendiente',270);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agregar_pendiente` BEFORE INSERT ON `ventas` FOR EACH ROW BEGIN
	
	INSERT INTO Pedidos_Pendientes(id_venta)
		SELECT
			id_venta
		FROM Ventas
        WHERE (id_venta = NEW.id_venta) AND (pedido = TRUE);
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ventas_productos`
--

DROP TABLE IF EXISTS `ventas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_productos` (
  `id_producto_vendido` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int DEFAULT '1',
  PRIMARY KEY (`id_producto_vendido`),
  KEY `id_venta` (`id_venta`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `ventas_productos_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  CONSTRAINT `ventas_productos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Contiene mas informacion detallada sobre los pedidos como su precio unitario y estado.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_productos`
--

LOCK TABLES `ventas_productos` WRITE;
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
INSERT INTO `ventas_productos` VALUES (1,1,6,9),(2,2,8,5),(3,3,7,3),(4,4,10,5),(5,5,3,8),(6,6,2,9),(7,7,10,6),(8,8,4,4),(9,9,3,4),(10,10,7,9),(11,11,10,9),(12,12,5,7),(13,13,3,1),(14,14,6,5),(15,15,6,9),(16,16,3,7),(17,17,7,10),(18,18,8,7),(19,19,7,8),(20,20,6,5),(21,21,2,8),(22,22,1,4),(23,23,4,5),(24,24,10,10),(25,25,1,2),(26,26,3,10),(27,27,7,4),(28,28,4,6),(29,3,2,6),(30,25,8,9),(31,9,10,1),(32,13,7,8),(33,6,6,7),(34,15,8,7),(35,8,2,8),(36,20,5,8),(37,2,2,10),(38,6,4,3),(39,19,7,6),(40,22,5,7),(41,16,9,5),(42,13,6,6),(43,12,4,4),(44,17,3,1),(45,10,9,4),(46,26,3,6),(47,13,9,7),(48,17,2,7),(49,1,4,10),(50,2,10,3),(51,2,10,8),(52,3,6,6),(53,4,2,4),(54,5,9,5),(55,5,8,7),(56,5,10,1),(57,6,7,2),(58,7,3,7),(59,8,5,3),(60,8,6,5),(61,9,3,5),(62,10,1,8),(63,11,1,8),(64,12,5,10),(65,1,9,6),(66,4,8,3),(67,5,1,4),(68,6,7,2),(69,7,6,7),(70,8,5,9),(71,8,4,2),(72,9,3,10),(73,10,2,7),(74,20,1,8),(75,21,10,5),(76,22,9,3);
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_total_ventas` AFTER INSERT ON `ventas_productos` FOR EACH ROW BEGIN
	CALL sp_actualizar_total_ventas(NEW.id_venta);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_resumen_ventas` AFTER INSERT ON `ventas_productos` FOR EACH ROW BEGIN
    CALL sp_actualizar_cantidad_resumen_ventas(NEW.id_producto, (SELECT pedido FROM Ventas WHERE id_venta = NEW.id_venta));
    CALL sp_actualizar_total_resumen_ventas(NEW.id_producto, (SELECT pedido FROM Ventas WHERE id_venta = NEW.id_venta));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_estado_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `v_estado_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_estado_pedidos` AS select `ventas`.`id_cliente` AS `id_cliente`,`ventas`.`id_venta` AS `id_venta`,`ventas_productos`.`id_producto` AS `id_producto`,`productos`.`nombre` AS `nombre`,`ventas`.`estado` AS `estado`,`ventas`.`fecha` AS `fecha` from ((`ventas` join `ventas_productos` on((`ventas`.`id_venta` = `ventas_productos`.`id_venta`))) join `productos` on((`ventas_productos`.`id_producto` = `productos`.`id_producto`))) order by `ventas`.`estado` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_historial_compras_clientes`
--

/*!50001 DROP VIEW IF EXISTS `v_historial_compras_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_historial_compras_clientes` AS select `v`.`id_venta` AS `id_venta`,`c`.`id_cliente` AS `id_cliente`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,`v`.`estado` AS `estado`,`v`.`fecha` AS `fecha`,`p`.`id_producto` AS `id_producto`,`vp`.`cantidad` AS `cantidad`,`p`.`precio` AS `precio_producto`,`v`.`total` AS `total_pedido`,`p`.`numero_serie` AS `numero_serie` from (((`ventas` `v` join `ventas_productos` `vp` on((`v`.`id_venta` = `vp`.`id_venta`))) join `productos` `p` on((`p`.`id_producto` = `vp`.`id_producto`))) join `clientes` `c` on((`c`.`id_cliente` = `v`.`id_cliente`))) order by `v`.`fecha` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_mas_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `v_mas_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_mas_vendidos` AS select `rv`.`id_resumen` AS `id_resumen`,`p`.`nombre` AS `nombre`,`rv`.`cantidad_ventas_general` AS `ventas`,`rv`.`beneficio_total_general` AS `total_recaudado`,`p`.`precio` AS `precio`,`p`.`costo` AS `costo`,`p`.`stock` AS `stock` from (`resumen_ventas` `rv` join `productos` `p` on((`rv`.`id_producto` = `p`.`id_producto`))) order by `total_recaudado` limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pedidos_pendientes`
--

/*!50001 DROP VIEW IF EXISTS `v_pedidos_pendientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pedidos_pendientes` AS select `ventas_productos`.`id_producto_vendido` AS `id_venta`,`ventas`.`id_cliente` AS `id_cliente`,`c`.`nombre` AS `nombre_cliente`,`c`.`apellido` AS `apellido_cliente`,`ventas_productos`.`id_producto` AS `id_producto`,`p`.`nombre` AS `nombre_producto`,`p`.`numero_serie` AS `numero_serie` from (((`ventas` join `ventas_productos` on((`ventas`.`id_venta` = `ventas_productos`.`id_venta`))) join `clientes` `c` on((`ventas`.`id_cliente` = `c`.`id_cliente`))) join `productos` `p` on((`ventas_productos`.`id_producto` = `p`.`id_producto`))) where (`ventas`.`estado` = 'pendiente') order by `ventas_productos`.`id_producto_vendido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_precio_productos_iva`
--

/*!50001 DROP VIEW IF EXISTS `v_precio_productos_iva`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_precio_productos_iva` AS select `productos`.`id_producto` AS `id_producto`,`productos`.`nombre` AS `nombre`,`productos`.`precio` AS `PrecioUYU`,format(`calcular_iva`(`productos`.`precio`),2) AS `IVA`,format((`calcular_iva`(`productos`.`precio`) + `productos`.`precio`),2) AS `PrecioUYU+IVA` from `productos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_productos_proveedores`
--

/*!50001 DROP VIEW IF EXISTS `v_productos_proveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_productos_proveedores` AS select `p2`.`id_producto` AS `id_producto`,`p1`.`id_proveedor` AS `id_proveedor`,`p1`.`nombre` AS `nombre_proveedor`,`p2`.`nombre` AS `nombre_producto`,`p2`.`precio` AS `precio`,`p2`.`stock` AS `stock`,`p2`.`numero_serie` AS `numero_serie` from (`proveedores` `p1` join `productos` `p2` on((`p1`.`id_proveedor` = `p2`.`id_proveedor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_rentabilidad_productos`
--

/*!50001 DROP VIEW IF EXISTS `v_rentabilidad_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_rentabilidad_productos` AS select `productos`.`id_producto` AS `id_producto`,`productos`.`nombre` AS `nombre`,`calcular_rentabilidad`(`productos`.`id_producto`,'general') AS `rentabilidadTotal`,`calcular_rentabilidad`(`productos`.`id_producto`,'presencial') AS `rentabilidadPresencial`,`calcular_rentabilidad`(`productos`.`id_producto`,'pedido') AS `rentabilidadPedidos` from `productos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_venta_completa`
--

/*!50001 DROP VIEW IF EXISTS `v_venta_completa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_venta_completa` AS select `ventas_productos`.`id_producto_vendido` AS `id_producto_vendido`,`ventas`.`id_venta` AS `id_venta`,`ventas`.`id_cliente` AS `id_cliente`,`ventas_productos`.`id_producto` AS `id_producto`,`ventas_productos`.`cantidad` AS `cantidad`,`ventas`.`total` AS `total`,`ventas`.`fecha` AS `fecha`,`ventas`.`pedido` AS `pedido`,`ventas`.`estado` AS `estado` from (`ventas` join `ventas_productos` on((`ventas`.`id_venta` = `ventas_productos`.`id_venta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 12:43:45
