CREATE DATABASE  IF NOT EXISTS `BusinessMinister` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `BusinessMinister`;
-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: 127.0.0.1    Database: BusinessMinister
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `amount` decimal(10,0) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL,
  `advance_pay` int(11) DEFAULT NULL,
  `due_pay` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id_bill` varchar(45) DEFAULT '-1',
  PRIMARY KEY (`id_order`),
  UNIQUE KEY `id_order_UNIQUE` (`id_order`),
  UNIQUE KEY `id_customer_UNIQUE` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suborder`
--

DROP TABLE IF EXISTS `suborder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suborder` (
  `id_suborder` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_description` geometry DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `custom_tax_1` int(11) DEFAULT NULL,
  `custom_tax_2` int(11) DEFAULT NULL,
  `custom_tax_3` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `totalAmount` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_suborder`),
  UNIQUE KEY `id_UNIQUE` (`id_suborder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suborder`
--

LOCK TABLES `suborder` WRITE;
/*!40000 ALTER TABLE `suborder` DISABLE KEYS */;
/*!40000 ALTER TABLE `suborder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `firmname` varchar(30) NOT NULL,
  `mobile` int(11) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Twinkle','Abc',784466,123456,'twinkle1chawla@gmail.com','$2a$10$BR8xRqSR9Tdj31iofAfFTeF'),(2,'vajahat','XYZ',45642788,7434568,'vkstack@gmail.com','$2a$10$0UmSUBNCRjIvXD599UmvqeW');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-20  2:58:58
