-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `categor├¡as de productos`
--

DROP TABLE IF EXISTS `categor├¡as de productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categor├¡as de productos` (
  `idCategor├¡as de Productos` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategor├¡as de Productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Contacto` varchar(45) NOT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalle de pedidos`
--

DROP TABLE IF EXISTS `detalle de pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle de pedidos` (
  `idDetalle de pedidos` int NOT NULL,
  `idpedido` varchar(45) NOT NULL,
  `idproducto` varchar(45) NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  `Subtotal` varchar(45) NOT NULL,
  PRIMARY KEY (`idDetalle de pedidos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drogueria`
--

DROP TABLE IF EXISTS `drogueria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drogueria` (
  `Nombre` int NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(45) NOT NULL,
  `Direcci├│n` varchar(45) NOT NULL,
  `Contacto` varchar(45) NOT NULL,
  `Categor├¡as de Productos_idCategor├¡as de Productos` int NOT NULL,
  `Proveedores_idProveedores` int NOT NULL,
  `Pedidos_idPedidos` int NOT NULL,
  `Clientes_idClientes` int NOT NULL,
  `Empleados_idEmpleados` int NOT NULL,
  `Productos_idProductos` int NOT NULL,
  `Detalle de pedidos_idDetalle de pedidos` int NOT NULL,
  PRIMARY KEY (`Nombre`),
  KEY `fk_Drogueria_Categor├¡as de Productos_idx` (`Categor├¡as de Productos_idCategor├¡as de Productos`),
  KEY `fk_Drogueria_Proveedores1_idx` (`Proveedores_idProveedores`),
  KEY `fk_Drogueria_Pedidos1_idx` (`Pedidos_idPedidos`),
  KEY `fk_Drogueria_Clientes1_idx` (`Clientes_idClientes`),
  KEY `fk_Drogueria_Empleados1_idx` (`Empleados_idEmpleados`),
  KEY `fk_Drogueria_Productos1_idx` (`Productos_idProductos`),
  KEY `fk_Drogueria_Detalle de pedidos1_idx` (`Detalle de pedidos_idDetalle de pedidos`),
  CONSTRAINT `fk_Drogueria_Categor├¡as de Productos` FOREIGN KEY (`Categor├¡as de Productos_idCategor├¡as de Productos`) REFERENCES `categor├¡as de productos` (`idCategor├¡as de Productos`),
  CONSTRAINT `fk_Drogueria_Clientes1` FOREIGN KEY (`Clientes_idClientes`) REFERENCES `clientes` (`idClientes`),
  CONSTRAINT `fk_Drogueria_Detalle de pedidos1` FOREIGN KEY (`Detalle de pedidos_idDetalle de pedidos`) REFERENCES `detalle de pedidos` (`idDetalle de pedidos`),
  CONSTRAINT `fk_Drogueria_Empleados1` FOREIGN KEY (`Empleados_idEmpleados`) REFERENCES `empleados` (`idEmpleados`),
  CONSTRAINT `fk_Drogueria_Pedidos1` FOREIGN KEY (`Pedidos_idPedidos`) REFERENCES `pedidos` (`idPedidos`),
  CONSTRAINT `fk_Drogueria_Productos1` FOREIGN KEY (`Productos_idProductos`) REFERENCES `productos` (`idProductos`),
  CONSTRAINT `fk_Drogueria_Proveedores1` FOREIGN KEY (`Proveedores_idProveedores`) REFERENCES `proveedores` (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleados` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Fecha de Contrataci├│n` varchar(45) NOT NULL,
  `Salario` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpleados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idPedidos` int NOT NULL,
  `idcliente` varchar(45) NOT NULL,
  `idempleado` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL,
  `Total` varchar(45) NOT NULL,
  PRIMARY KEY (`idPedidos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProductos` int NOT NULL,
  `idcategoria` varchar(45) NOT NULL,
  `idproveedor` varchar(45) NOT NULL,
  `Productoscol` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  PRIMARY KEY (`idProductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedores` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direcci├│n` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Contacto` varchar(45) NOT NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01 17:13:57
