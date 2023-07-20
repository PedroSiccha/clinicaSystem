CREATE DATABASE  IF NOT EXISTS `clinicabd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinicabd`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: clinicabd
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acompañantes`
--

DROP TABLE IF EXISTS `acompañantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acompañantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` char(11) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `fecnac` date DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `generos_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parentezco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_acompañantes_generos1_idx` (`generos_id`),
  CONSTRAINT `fk_acompañantes_generos1` FOREIGN KEY (`generos_id`) REFERENCES `generos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acompañantes`
--

LOCK TABLES `acompañantes` WRITE;
/*!40000 ALTER TABLE `acompañantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `acompañantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alergia_triaje`
--

DROP TABLE IF EXISTS `alergia_triaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alergia_triaje` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alergias_id` int NOT NULL,
  `triaje_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alergia_triaje_alergias1_idx` (`alergias_id`),
  KEY `fk_alergia_triaje_triaje1_idx` (`triaje_id`),
  CONSTRAINT `fk_alergia_triaje_alergias1` FOREIGN KEY (`alergias_id`) REFERENCES `alergias` (`id`),
  CONSTRAINT `fk_alergia_triaje_triaje1` FOREIGN KEY (`triaje_id`) REFERENCES `triaje` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alergia_triaje`
--

LOCK TABLES `alergia_triaje` WRITE;
/*!40000 ALTER TABLE `alergia_triaje` DISABLE KEYS */;
INSERT INTO `alergia_triaje` VALUES (66,17,37,'2019-10-09 21:04:53','2019-10-09 21:04:53'),(67,18,37,'2019-10-09 21:04:54','2019-10-09 21:04:54');
/*!40000 ALTER TABLE `alergia_triaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alergias`
--

DROP TABLE IF EXISTS `alergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alergias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alergias`
--

LOCK TABLES `alergias` WRITE;
/*!40000 ALTER TABLE `alergias` DISABLE KEYS */;
INSERT INTO `alergias` VALUES (17,'Amoxicilina','2019-10-01 13:53:22','2019-10-01 13:53:22'),(18,'Cefalexina','2019-10-01 13:53:37','2019-10-01 13:53:37'),(19,'Penicilina','2019-10-01 13:54:18','2019-10-01 13:54:18'),(20,'Ampilicina','2019-10-01 13:57:02','2019-10-01 13:57:02'),(21,'Dicloxacilina','2019-10-01 13:57:20','2019-10-01 13:57:20'),(22,'Nafcilina','2019-10-01 13:57:37','2019-10-01 13:57:37'),(23,'Oxacilina','2019-10-01 13:58:44','2019-10-01 13:58:44'),(24,'Penicilina G','2019-10-01 13:59:11','2019-10-01 13:59:11'),(25,'Penicilina V','2019-10-01 13:59:21','2019-10-01 13:59:21'),(26,'Piperacilina','2019-10-01 13:59:42','2019-10-01 13:59:42'),(27,'Ticarcilina','2019-10-01 14:00:03','2019-10-01 14:00:03'),(28,'Cefaclor','2019-10-01 14:00:31','2019-10-01 14:00:31'),(29,'Cefadroxilo','2019-10-01 14:00:59','2019-10-01 14:00:59'),(30,'Cefazolina','2019-10-01 14:01:10','2019-10-01 14:01:10'),(31,'Cefdinir','2019-10-01 14:01:30','2019-10-01 14:01:30'),(32,'Cefotetán','2019-10-01 14:01:42','2019-10-01 14:01:42'),(33,'Cefprozil','2019-10-01 14:01:56','2019-10-01 14:01:56'),(34,'Cefuroxima','2019-10-01 14:02:14','2019-10-01 14:02:14'),(35,'Cefalexina(Keflex)','2019-10-01 14:02:24','2019-10-01 14:02:44'),(36,'Cefepima (Maxipime)','2019-10-01 14:03:08','2019-10-01 14:03:08'),(37,'sddfsf','2019-10-08 08:08:42','2019-10-08 08:08:42'),(38,'asdas','2019-10-08 08:32:00','2019-10-08 08:32:00'),(39,'asdsadasd','2019-10-08 08:33:58','2019-10-08 08:33:58'),(40,'asdsad','2019-10-08 08:35:04','2019-10-08 08:35:04'),(41,'asds','2019-10-08 08:36:23','2019-10-08 08:36:23');
/*!40000 ALTER TABLE `alergias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecpatologicos`
--

DROP TABLE IF EXISTS `antecpatologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecpatologicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(450) NOT NULL,
  `triaje_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_antecpatologicos_triaje1_idx` (`triaje_id`),
  CONSTRAINT `fk_antecpatologicos_triaje1` FOREIGN KEY (`triaje_id`) REFERENCES `triaje` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecpatologicos`
--

LOCK TABLES `antecpatologicos` WRITE;
/*!40000 ALTER TABLE `antecpatologicos` DISABLE KEYS */;
INSERT INTO `antecpatologicos` VALUES (37,'Normal',37,'2019-10-09 21:04:53','2019-10-09 21:04:53');
/*!40000 ALTER TABLE `antecpatologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecpersonals`
--

DROP TABLE IF EXISTS `antecpersonals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecpersonals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecultimregla` date DEFAULT NULL,
  `cangestaciones` int DEFAULT NULL,
  `papanicolao` varchar(45) DEFAULT NULL,
  `ps_id` int NOT NULL,
  `manticonceotivos_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_antecpersonals_ps1_idx` (`ps_id`),
  KEY `fk_antecpersonals_manticonceotivos1_idx` (`manticonceotivos_id`),
  CONSTRAINT `fk_antecpersonals_manticonceotivos1` FOREIGN KEY (`manticonceotivos_id`) REFERENCES `manticonceptivos` (`id`),
  CONSTRAINT `fk_antecpersonals_ps1` FOREIGN KEY (`ps_id`) REFERENCES `ps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecpersonals`
--

LOCK TABLES `antecpersonals` WRITE;
/*!40000 ALTER TABLE `antecpersonals` DISABLE KEYS */;
INSERT INTO `antecpersonals` VALUES (47,'2019-10-09',0,'2 veces',60,1,'2019-10-09 21:04:53','2019-10-09 21:04:53');
/*!40000 ALTER TABLE `antecpersonals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apetitos`
--

DROP TABLE IF EXISTS `apetitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apetitos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apetitos`
--

LOCK TABLES `apetitos` WRITE;
/*!40000 ALTER TABLE `apetitos` DISABLE KEYS */;
INSERT INTO `apetitos` VALUES (1,'Bajo',NULL,NULL),(2,'Normal',NULL,NULL),(3,'Alto',NULL,NULL);
/*!40000 ALTER TABLE `apetitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cies`
--

DROP TABLE IF EXISTS `cies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` char(4) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipocies_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cies_tipocies1_idx` (`tipocies_id`),
  CONSTRAINT `fk_cies_tipocies1` FOREIGN KEY (`tipocies_id`) REFERENCES `tipocies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cies`
--

LOCK TABLES `cies` WRITE;
/*!40000 ALTER TABLE `cies` DISABLE KEYS */;
INSERT INTO `cies` VALUES (1,'A000','COLERA DEBIDO A VIBRIO CHOLERAE O1, BIOTIPO CHOLERAE',NULL,NULL,1),(2,'A001','COLERA DEBIDO A VIBRIO CHOLERAE O1, BIOTIPO EL TOR',NULL,NULL,1),(3,'A009','COLERA NO ESPECIFICADO',NULL,NULL,1),(42,'A010','FIEBRE TIFOIDEA',NULL,NULL,1),(43,'A011','FIEBRE PARATIFOIDEA A',NULL,NULL,1),(44,'A012','FIEBRE PARATIFOIDEA B',NULL,NULL,1),(45,'A013','FIEBRE PARATIFOIDEA C',NULL,NULL,1),(46,'A014','FIEBRE PARATIFOIDEA, NO ESPECIFICADA',NULL,NULL,1),(47,'A020','ENTERITIS DEBIDA A SALMONELLA',NULL,NULL,1),(48,'A021','SEPTICEMIA DEBIDA A SALMONELLA',NULL,NULL,1),(49,'A022','INFECCIONES LOCALIZADAS DEBIDA A SALMONELLA',NULL,NULL,1),(50,'A028','OTRAS INFECCIONES ESPECIFICADAS COMO DEBIDAS A SALMONELLA',NULL,NULL,1),(51,'A029','INFECCIÓN DEBIDA A SALMONELLA NO ESPECIFICADA',NULL,NULL,1),(52,'A030','SHIGELOSIS DEBIDA A SHIGELLA DYSENTERIAE',NULL,NULL,1),(53,'A031','SHIGELOSIS DEBIDA A SHIGELLA FLEXNERI',NULL,NULL,1),(54,'A032','SHIGELOSIS DEBIDA A SHIGELLA BOYDII',NULL,NULL,1),(55,'A033','SHIGELOSIS DEBIDA A SHIGELLA SONNEI',NULL,NULL,1),(56,'A038','OTRAS SHIGELOSIS',NULL,NULL,1),(57,'A039','SHIGELOSIS DE TIPO NO ESPECIFICADO',NULL,NULL,1),(58,'A040','INFECCION DEBIDA A ESCHERICHIA COLI ENTEROPATOGENA',NULL,NULL,1),(59,'A041','INFECCION DEBIDA A ESCHERICHIA COLI ENTEROTOXIGENA',NULL,NULL,1),(60,'A042','INFECCION DEBIDA A ESCHERICHIA COLI ENTEROINVASIVA',NULL,NULL,1),(61,'A043','INFECCION DEBIDA A ESCHERICHIA COLI ENTEROHEMORRAGICA',NULL,NULL,1),(62,'A044','OTRAS INFECCIONES INTESTINALES DEBIDAS A ESCHERICHIA COLI',NULL,NULL,1),(63,'A045','ENTERITIS DEBIDA A CAMPYLOBACTER',NULL,NULL,1),(64,'A046','ENTERITIS DEBIDA A YERSINIA ENTEROCOLITICA',NULL,NULL,1),(65,'A047','ENTEROCOLITIS DEBIDA A CLOSTRIDIUM DIFFICILE',NULL,NULL,1),(66,'A048','OTRAS INFECCIONES INTESTINALES BACTERIANAS ESPECIFICADAS',NULL,NULL,1),(67,'A049','INFECCION INTESTINAL BACTERIANA, NO ESPECIFICADA',NULL,NULL,1),(68,'A050','INTOXICACION ALIMENTARIA ESTAFILOCOCICA',NULL,NULL,1),(69,'A051','BOTULISMO',NULL,NULL,1),(70,'A052','INTOXICACION ALIMENTARIA DEBIDA A CLOSTRIDIUM PERFRINGENS [CLOSTRIDIUM WELCHII]',NULL,NULL,1),(71,'A053','INTOXICACION ALIMENTARIA DEBIDA A VIBRIO PARAHAEMOLYTICUS',NULL,NULL,1),(72,'A054','INTOXICACION ALIMENTARIA DEBIDA A BACILLUS CEREUS',NULL,NULL,1),(73,'A058','OTRAS INTOXICACIONES ALIMENTARIAS DEBIDAS A BACTERIAS ESPECIFICADAS',NULL,NULL,1),(74,'A059','INTOXICACION ALIMENTARIA BACTERIANA, NO ESPECIFICADA',NULL,NULL,1),(75,'A060','DISENTERIA AMEBIANA AGUDA',NULL,NULL,1),(76,'A061','AMEBIASIS INTESTINAL CRONICA',NULL,NULL,1),(77,'A062','COLITIS AMEBIANA NO DISENTERICA',NULL,NULL,1),(78,'A063','AMEBOMA INTESTINAL',NULL,NULL,1),(79,'A064','ABSCESO AMEBIANO DEL HIGADO',NULL,NULL,1),(80,'A065','ABSCESO AMEBIANO DEL PULMON (J99.8*)',NULL,NULL,1),(81,'A066','ABSCESO AMEBIANO DEL CEREBRO (G07*)',NULL,NULL,1),(82,'A067','AMEBIASIS CUTANEA',NULL,NULL,1),(83,'A068','INFECCION AMEBIANA DE OTRAS LOCALIZACIONES',NULL,NULL,1),(84,'A069','AMEBIASIS, NO ESPECIFICADA',NULL,NULL,1),(85,'A070','BALANTIDIASIS',NULL,NULL,1),(86,'A071','GIARDIASIS [LAMBLIASIS]',NULL,NULL,1),(87,'A072','CRIPTOSPORIDIOSIS',NULL,NULL,1),(88,'A073','ISOSPORIASIS',NULL,NULL,1);
/*!40000 ALTER TABLE `cies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_exaginecologicos`
--

DROP TABLE IF EXISTS `cita_exaginecologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita_exaginecologicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exaginecologicos_id` int NOT NULL,
  `citas_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cita_exaginecologicos_exaginecologicos1_idx` (`exaginecologicos_id`),
  KEY `fk_cita_exaginecologicos_citas1_idx` (`citas_id`),
  CONSTRAINT `fk_cita_exaginecologicos_citas1` FOREIGN KEY (`citas_id`) REFERENCES `citas` (`id`),
  CONSTRAINT `fk_cita_exaginecologicos_exaginecologicos1` FOREIGN KEY (`exaginecologicos_id`) REFERENCES `exaginecologicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_exaginecologicos`
--

LOCK TABLES `cita_exaginecologicos` WRITE;
/*!40000 ALTER TABLE `cita_exaginecologicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_exaginecologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_motivo`
--

DROP TABLE IF EXISTS `cita_motivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita_motivo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `citas_id` int NOT NULL,
  `tipoexaminters_id` int NOT NULL,
  `documento` varchar(450) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cita_motivo_citas1_idx` (`citas_id`),
  KEY `fk_cita_motivo_tipoexaminters1_idx` (`tipoexaminters_id`),
  CONSTRAINT `fk_cita_motivo_citas1` FOREIGN KEY (`citas_id`) REFERENCES `citas` (`id`),
  CONSTRAINT `fk_cita_motivo_tipoexaminters1` FOREIGN KEY (`tipoexaminters_id`) REFERENCES `tipoexaminters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_motivo`
--

LOCK TABLES `cita_motivo` WRITE;
/*!40000 ALTER TABLE `cita_motivo` DISABLE KEYS */;
INSERT INTO `cita_motivo` VALUES (58,'2019-10-08 08:38:03','2019-10-08 08:38:03',52,4,NULL,NULL);
/*!40000 ALTER TABLE `cita_motivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecexp` date NOT NULL,
  `fecaten` date NOT NULL,
  `estado` varchar(45) NOT NULL,
  `motivo` text,
  `tiempo` text NOT NULL,
  `horaten` varchar(45) NOT NULL,
  `pacientes_id` int NOT NULL,
  `comprobante_id` int DEFAULT NULL,
  `acompañantes_id` int DEFAULT NULL,
  `users_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_citas_pacientes_idx` (`pacientes_id`),
  KEY `fk_citas_comprobante1_idx` (`comprobante_id`),
  KEY `fk_citas_acompañantes1_idx` (`acompañantes_id`),
  KEY `fk_citas_users1_idx` (`users_id`),
  CONSTRAINT `fk_citas_acompañantes1` FOREIGN KEY (`acompañantes_id`) REFERENCES `acompañantes` (`id`),
  CONSTRAINT `fk_citas_comprobante1` FOREIGN KEY (`comprobante_id`) REFERENCES `comprobantes` (`id`),
  CONSTRAINT `fk_citas_pacientes` FOREIGN KEY (`pacientes_id`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `fk_citas_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (52,'2019-10-08','2019-10-08','CONSULTA','','00','03:37',19,NULL,NULL,3,'2019-10-08 08:38:03','2019-10-09 21:04:53');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobantes`
--

DROP TABLE IF EXISTS `comprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecexp` date NOT NULL,
  `serie` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `monto` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobantes`
--

LOCK TABLES `comprobantes` WRITE;
/*!40000 ALTER TABLE `comprobantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprobantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connsulta_exaginecologico`
--

DROP TABLE IF EXISTS `connsulta_exaginecologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connsulta_exaginecologico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `consultas_id` int NOT NULL,
  `exaginecologicos_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_connsulta_exaginecologico_consultas1_idx` (`consultas_id`),
  KEY `fk_connsulta_exaginecologico_exaginecologicos1_idx` (`exaginecologicos_id`),
  CONSTRAINT `fk_connsulta_exaginecologico_consultas1` FOREIGN KEY (`consultas_id`) REFERENCES `consultas` (`id`),
  CONSTRAINT `fk_connsulta_exaginecologico_exaginecologicos1` FOREIGN KEY (`exaginecologicos_id`) REFERENCES `exaginecologicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connsulta_exaginecologico`
--

LOCK TABLES `connsulta_exaginecologico` WRITE;
/*!40000 ALTER TABLE `connsulta_exaginecologico` DISABLE KEYS */;
/*!40000 ALTER TABLE `connsulta_exaginecologico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta_diagnostico`
--

DROP TABLE IF EXISTS `consulta_diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta_diagnostico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `consultas_id` int NOT NULL,
  `diagnosticos_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_consulta_diagnostico_consultas1_idx` (`consultas_id`),
  CONSTRAINT `fk_consulta_diagnostico_consultas1` FOREIGN KEY (`consultas_id`) REFERENCES `consultas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta_diagnostico`
--

LOCK TABLES `consulta_diagnostico` WRITE;
/*!40000 ALTER TABLE `consulta_diagnostico` DISABLE KEYS */;
/*!40000 ALTER TABLE `consulta_diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` varchar(45) NOT NULL,
  `citas_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `funcbiologicas_id` int DEFAULT NULL,
  `motivo` varchar(450) DEFAULT NULL,
  `tiempo` varchar(45) DEFAULT NULL,
  `exaginecologicos_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_consultas_citas1_idx` (`citas_id`),
  KEY `fk_consultas_funcbiologicas1_idx` (`funcbiologicas_id`),
  CONSTRAINT `fk_consultas_citas1` FOREIGN KEY (`citas_id`) REFERENCES `citas` (`id`),
  CONSTRAINT `fk_consultas_funcbiologicas1` FOREIGN KEY (`funcbiologicas_id`) REFERENCES `funcbiologicas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (37,'2019-10-09','16:04:52','Por Atender',52,'2019-10-09 21:04:54','2019-10-09 21:04:54',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposicions`
--

DROP TABLE IF EXISTS `deposicions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposicions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(450) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposicions`
--

LOCK TABLES `deposicions` WRITE;
/*!40000 ALTER TABLE `deposicions` DISABLE KEYS */;
INSERT INTO `deposicions` VALUES (1,'Bajo',NULL,NULL),(2,'Normal',NULL,NULL),(3,'Alto',NULL,NULL);
/*!40000 ALTER TABLE `deposicions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico_cies`
--

DROP TABLE IF EXISTS `diagnostico_cies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostico_cies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cies_id` int NOT NULL,
  `consultas_id` int NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_diagnostico_cies_cies1_idx` (`cies_id`),
  KEY `fk_diagnostico_cies_consultas1_idx` (`consultas_id`),
  CONSTRAINT `fk_diagnostico_cies_cies1` FOREIGN KEY (`cies_id`) REFERENCES `cies` (`id`),
  CONSTRAINT `fk_diagnostico_cies_consultas1` FOREIGN KEY (`consultas_id`) REFERENCES `consultas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico_cies`
--

LOCK TABLES `diagnostico_cies` WRITE;
/*!40000 ALTER TABLE `diagnostico_cies` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagnostico_cies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `ruta` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipoempleados_id` int NOT NULL,
  `generos_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empleados_tipoempleados1_idx` (`tipoempleados_id`),
  KEY `fk_empleados_generos1_idx` (`generos_id`),
  CONSTRAINT `fk_empleados_generos1` FOREIGN KEY (`generos_id`) REFERENCES `generos` (`id`),
  CONSTRAINT `fk_empleados_tipoempleados1` FOREIGN KEY (`tipoempleados_id`) REFERENCES `tipoempleados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Pedro F.','Diaz Siccha','72690062','944646619','Jr. Magisterio',NULL,NULL,1,1),(4,'Andres','Ramirez Ochoa','72658486','946857895','Huaraz','2019-08-29 06:38:00','2019-08-29 06:38:00',4,1);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadocivils`
--

DROP TABLE IF EXISTS `estadocivils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadocivils` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadocivils`
--

LOCK TABLES `estadocivils` WRITE;
/*!40000 ALTER TABLE `estadocivils` DISABLE KEYS */;
INSERT INTO `estadocivils` VALUES (3,'Soltero','2019-08-16 08:55:33','2019-08-30 07:39:45'),(4,'Casado','2019-08-22 03:26:45','2019-08-30 07:38:11');
/*!40000 ALTER TABLE `estadocivils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exaexterno_ordenexam`
--

DROP TABLE IF EXISTS `exaexterno_ordenexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exaexterno_ordenexam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `detalle` varchar(450) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordenexam_id` int NOT NULL,
  `examenexterno_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_exaexterno_ordenexam_ordenexam1_idx` (`ordenexam_id`),
  KEY `fk_exaexterno_ordenexam_examenexterno1_idx` (`examenexterno_id`),
  CONSTRAINT `fk_exaexterno_ordenexam_examenexterno1` FOREIGN KEY (`examenexterno_id`) REFERENCES `examenexterno` (`id`),
  CONSTRAINT `fk_exaexterno_ordenexam_ordenexam1` FOREIGN KEY (`ordenexam_id`) REFERENCES `ordenexam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exaexterno_ordenexam`
--

LOCK TABLES `exaexterno_ordenexam` WRITE;
/*!40000 ALTER TABLE `exaexterno_ordenexam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exaexterno_ordenexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exaginecologicos`
--

DROP TABLE IF EXISTS `exaginecologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exaginecologicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `geybus` text NOT NULL,
  `cervix` text NOT NULL,
  `ovarios` text,
  `vagina` text,
  `utero` text,
  `fondoseco` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exaginecologicos`
--

LOCK TABLES `exaginecologicos` WRITE;
/*!40000 ALTER TABLE `exaginecologicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `exaginecologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examenexterno`
--

DROP TABLE IF EXISTS `examenexterno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examenexterno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipoexamexterno_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_examenExterno_tipoexamexterno1_idx` (`tipoexamexterno_id`),
  CONSTRAINT `fk_examenExterno_tipoexamexterno1` FOREIGN KEY (`tipoexamexterno_id`) REFERENCES `tipoexamexterno` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examenexterno`
--

LOCK TABLES `examenexterno` WRITE;
/*!40000 ALTER TABLE `examenexterno` DISABLE KEYS */;
INSERT INTO `examenexterno` VALUES (1,'Acido Úrico',NULL,NULL,1),(2,'Amilasa Sérica',NULL,NULL,1),(3,'Lipasa Sérica',NULL,NULL,1),(4,'Bilirrubina Total y Fraccionada',NULL,NULL,1),(5,'Colesterol HDL',NULL,NULL,1),(6,'Grupo Sanguineo y Factor RH',NULL,NULL,2),(7,'Hb',NULL,NULL,2),(8,'Hto',NULL,NULL,2),(9,'Hemograma Completo',NULL,NULL,2),(10,'Recuento de Plaquetas',NULL,NULL,2),(11,'Beta HCG Cualitativo',NULL,NULL,3),(12,'Beta HCG Cuatitativo',NULL,NULL,3),(13,'HIV',NULL,NULL,3),(14,'RPR',NULL,NULL,3),(15,'Test Elisa',NULL,NULL,3),(16,'Estradiol',NULL,NULL,4),(17,'Progeterona',NULL,NULL,4),(18,'Prolactina',NULL,NULL,4),(19,'F.S.H',NULL,NULL,4),(20,'L.H.',NULL,NULL,4),(21,'Alfa Feto-Proteina (AFP)',NULL,NULL,5),(22,'Antígeno Carnico Embriogenico',NULL,NULL,5),(23,'CA-125(ovario)',NULL,NULL,5),(24,'CA15-3(mama)',NULL,NULL,5),(25,'Colesterol LDL',NULL,NULL,1),(26,'Colesterol',NULL,NULL,1),(27,'Trigliceridos',NULL,NULL,1),(28,'Deshidrogenosa Láctica (DHL)',NULL,NULL,1),(29,'Creatinina Sérica',NULL,NULL,1),(30,'Glucosa Basal',NULL,NULL,1),(31,'Hb Glicosilada',NULL,NULL,1),(32,'Tolerancia de Glucosa x 5 Deter',NULL,NULL,1),(33,'Proteínas Totales y Fraccionadas',NULL,NULL,1),(34,'TGO',NULL,NULL,1),(35,'TGP',NULL,NULL,1),(36,'Exámen de Orina Completo',NULL,NULL,1),(37,'Urocultibo - Antib. (12 colonias)',NULL,NULL,1),(38,'Proteína en Orina de 24 Hrs',NULL,NULL,1),(39,'Hisopado de secr. Vag. - Graham',NULL,NULL,1),(40,'Test de Helechos',NULL,NULL,1),(41,'Gota Gruesa de Paludismo',NULL,NULL,2),(42,'Tiempo de Protrombina',NULL,NULL,2),(43,'Tiempo Parcial de Tromboplastina',NULL,NULL,2),(44,'Veloc. de Sedimentación',NULL,NULL,2),(45,'Chlamydia Trachomatis IGM',NULL,NULL,3),(46,'Chlamydia Trachomatis IGG',NULL,NULL,3),(47,'Citomegalovirus IGM',NULL,NULL,3),(48,'Toxoplasma IGM',NULL,NULL,3),(49,'Hepatitis A IGM',NULL,NULL,3),(50,'Hepatitis B Cualitativo',NULL,NULL,3),(51,'Hepatitis B Core IGM',NULL,NULL,3),(52,'Herpes I - IGM',NULL,NULL,3),(53,'Herpes I - IGG',NULL,NULL,3),(54,'Herpes II - IGM',NULL,NULL,3),(55,'Herpes II - IGG',NULL,NULL,3),(56,'Hidatidosis (Western Blot)',NULL,NULL,3),(57,'Rubeola IGM',NULL,NULL,3),(58,'Varicela IGM',NULL,NULL,3),(59,'Helicobacter Pylori Cualitativo',NULL,NULL,3),(60,'Proteina C Reactiva - Latex',NULL,NULL,3),(61,'Test de Coombs Indirecto',NULL,NULL,3),(62,'Aglutinaciones',NULL,NULL,3),(63,'T3 (Tiroxina)',NULL,NULL,4),(64,'T4 (Triiodotironina)',NULL,NULL,4),(65,'TSH Ultrasensible',NULL,NULL,4),(66,'DH - epi - Androstenediona',NULL,NULL,4),(67,'CA19 - 9 (Páncreas)',NULL,NULL,5),(68,'CA - 549 (Mama)',NULL,NULL,5),(69,'CA72 - 4 (Estómago)',NULL,NULL,5),(70,'Antig. Prostático Específico',NULL,NULL,5),(72,'Espermatograma',NULL,NULL,6),(73,'Oxiurus (Test de Grham - Parche)',NULL,NULL,7),(74,'Exámen de Thevenon',NULL,NULL,7),(75,'Colesterol Total',NULL,NULL,8),(76,'Triglicéridos',NULL,NULL,8),(77,'HDL/LDL',NULL,NULL,8),(78,'VLDL',NULL,NULL,8),(79,'Lípidos Totales',NULL,NULL,8),(80,'Bilirrubina T y F',NULL,NULL,9),(81,'TGO - TGP',NULL,NULL,9),(82,'Fosfatasa Alcalina',NULL,NULL,9),(83,'Gamaglutamil',NULL,NULL,9),(84,'Proteínas T y F',NULL,NULL,9),(85,'Ácido Úrico',NULL,NULL,10),(86,'Factor Reumatoideo',NULL,NULL,10),(87,'VSG',NULL,NULL,10),(88,'ASO',NULL,NULL,10),(89,'PCR',NULL,NULL,10),(90,'Grupo Sanguíneo/RH',NULL,NULL,11),(91,'Hemograma C. - Recuento P.',NULL,NULL,11),(92,'Colesterol T',NULL,NULL,11),(93,'Trigliceridos',NULL,NULL,11),(94,'Glucosa Basa',NULL,NULL,11),(95,'Tiempor de Protrombina',NULL,NULL,11),(96,'Grupo Sanguíneo / RH',NULL,NULL,12),(97,'Hemoglobina',NULL,NULL,12),(98,'Hemotrocito',NULL,NULL,12),(99,'Glucosa Basal',NULL,NULL,12),(100,'Creatinina Sérica',NULL,NULL,12),(101,'VIH',NULL,NULL,12),(102,'RPR',NULL,NULL,12),(103,'Antígeno Australiano',NULL,NULL,12),(104,'Exámen de Orina Completo',NULL,NULL,12),(105,'Grupo Sanguíneo / RH',NULL,NULL,13),(106,'Hemograma Completo',NULL,NULL,13),(107,'Recuento de Plaquetas',NULL,NULL,13),(108,'Tiempo de Protrombina',NULL,NULL,13),(109,'Glucosa Basal',NULL,NULL,13),(110,'Creatinina Sérica',NULL,NULL,13),(111,'RPR/VIH',NULL,NULL,13),(112,'Antígeno Australiano',NULL,NULL,13),(113,'Exámen de Orina Completo',NULL,NULL,13),(114,'T3',NULL,NULL,14),(115,'T4',NULL,NULL,14),(116,'TSH',NULL,NULL,14),(117,'Hemograma Completo',NULL,NULL,15),(118,'Glucosa Basal',NULL,NULL,15),(119,'Exámen de Orina Completo',NULL,NULL,15),(120,'Hemograma Completo',NULL,NULL,16),(121,'Glucosa Basal',NULL,NULL,16),(122,'Creatinina Sérica',NULL,NULL,16),(123,'TGO',NULL,NULL,16),(124,'Colesterol',NULL,NULL,16),(125,'Exámen de Orina COmpleto',NULL,NULL,16),(126,'Tiempo de Protrombina',NULL,NULL,17),(127,'TIempo Parcial de Tromboplastina',NULL,NULL,17),(128,'Recuento de Plaquetas',NULL,NULL,17),(129,'Ecografía Abdomen Completo',NULL,NULL,18),(130,'Ecografía Transvaginal',NULL,NULL,18),(131,'Ecografía de Mamas',NULL,NULL,18),(132,'Ecografía de Tiroidez',NULL,NULL,18),(133,'Ecografía Obsetétrica 2D',NULL,NULL,18),(134,'Ecpgrafía de Partes Blandas',NULL,NULL,18),(135,'Ecografía Testicular',NULL,NULL,18),(136,'Ecografía Protática y Renal',NULL,NULL,18),(137,'Ecografía Obstétrica 3D y 4D',NULL,NULL,18),(138,'Ecografía Doppler',NULL,NULL,18),(139,'Exámen de Papanicolau',NULL,NULL,19),(140,'Video Colposcopia',NULL,NULL,19),(265,'Prueba de paternidad/maternidad por ADN',NULL,NULL,20),(266,'ADN para Identificación',NULL,NULL,20),(267,'Prueba de paternidad pre natal',NULL,NULL,20),(268,'Perfil genético',NULL,NULL,20),(269,'Cromosomas (careotipo) en sangre',NULL,NULL,20),(270,'Cromosomas (careotipo) philadelphia',NULL,NULL,20),(271,'Cromosomas (careotipo) en médula ósea',NULL,NULL,20),(272,'Cromosomas (careotipo) en otros tejidos: fibroplastos, piel',NULL,NULL,20),(273,'Cromatina sexual (Barr)',NULL,NULL,20),(274,'Cromosomas (careotipo) en sangre fetal',NULL,NULL,20),(275,'Cromosomas (careotipo) de pareja con aborto recurrente',NULL,NULL,20),(276,'Cromosomas (careotipo) de restos embrionarios',NULL,NULL,20),(277,'Cromosomas (careotipo) del natimuerto',NULL,NULL,20),(278,'Cromosomas (careotipo) en restos embrionarios',NULL,NULL,20),(279,'Tamiz Básico (5 enfermedades)',NULL,NULL,20),(280,'Tamiz Ampliado (40 enfermedades)',NULL,NULL,20),(281,'Metabolitos anormales en orina (Pruebas de 4 a 9)',NULL,NULL,20),(282,'Ácido fenilpirúvico y deribados (PKU)',NULL,NULL,20),(283,'Alfacetoácidos (orina de jarabe de arce)',NULL,NULL,20),(284,'Cistina/homocistina',NULL,NULL,20),(285,'Aminiaciduría renal (defecto transporte)',NULL,NULL,20),(286,'Azucares reductores (glucosa galactosa otros)',NULL,NULL,20),(287,'Acido homogenticico (alcaptonuria)',NULL,NULL,20),(288,'Mucopolisacáridos)',NULL,NULL,20),(289,'Espectrometría de masas en tandem (MS-MS) Aminoácidos y Acilcarnitinas)',NULL,NULL,20),(290,'Cromosomas en sangre con caracteres neoplásicos)',NULL,NULL,20),(291,'Cromosomas en médula ósea)',NULL,NULL,20),(292,'Cromosomas philadelphia)',NULL,NULL,20),(293,'Cromosomas en tejido tumoral)',NULL,NULL,20),(294,'Asesoramiento genetico en cáncer familiar)',NULL,NULL,20),(295,'Cancer de mama familiar (BRCA 1 - BRCA 2, OTROS)',NULL,NULL,20),(296,'Cancer de colón',NULL,NULL,20),(297,'Poliposis de colon familiar',NULL,NULL,20),(298,'PPaneles de genes relacionados con cancer hereditario',NULL,NULL,20),(299,'Cromosomas (cariotipo) en líquido amniótico',NULL,NULL,20),(300,'Cromosomas (cariotipo) en bellosidades coriales',NULL,NULL,20),(301,'Cromosomas (cariotipo) en sangre de cordón umbilical',NULL,NULL,20),(302,'Fish en líquido amniótico: 13,18,21,X,Y',NULL,NULL,20),(303,'microarray - Pre natal (líquido amniótico)',NULL,NULL,20),(304,'Análisis Pre natal básico no invasivo sangre materna',NULL,NULL,20),(305,'Análisis Pre natal plus no invasivo sangre materna',NULL,NULL,20),(306,'Panel molecular (descarte de enfermedades hereditarias (300 genes) Parejas interesadas en evaluar el riesgo para su descendencia. Precio por persona)',NULL,NULL,20),(307,'Ataxia Spinocerebral - Repetición de Tripletes',NULL,NULL,20),(308,'Autismo (Panel)',NULL,NULL,20),(309,'Sordera: Conexina 26 y otras  (Panel)',NULL,NULL,20),(310,'Corea de Huntington',NULL,NULL,20),(311,'CGH - Microarray 750-180K',NULL,NULL,20),(312,'Distrofia miotónica',NULL,NULL,20),(313,'Distrofia muscular Duchenne/Becker y otras',NULL,NULL,20),(314,'Enfermedad poliquística renal',NULL,NULL,20),(315,'Enfermedades mitocondriales - ADN Mitocondrial',NULL,NULL,20),(316,'Epilepsia (Panel) 554 genes + ADN Mitocondrial',NULL,NULL,20),(317,'Exoma clpinico (7000 genes)',NULL,NULL,20),(318,'Exoma Trio',NULL,NULL,20),(319,'Fibrosis quística',NULL,NULL,20),(320,'Hibridación Genómica comparada (CGH), Array de cromosomas, microarray de 180k',NULL,NULL,20),(321,'Polineoropatias (Panel)',NULL,NULL,20),(322,'Retardo mental (Panel)',NULL,NULL,20),(323,'S. Angelman',NULL,NULL,20),(324,'S. Prader Willi',NULL,NULL,20),(325,'S. Rett',NULL,NULL,20),(326,'X-Frágil',NULL,NULL,20);
/*!40000 ALTER TABLE `examenexterno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exauxresult`
--

DROP TABLE IF EXISTS `exauxresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exauxresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  `ruta` varchar(450) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cita_motivo_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_exauxresult_cita_motivo1_idx` (`cita_motivo_id`),
  CONSTRAINT `fk_exauxresult_cita_motivo1` FOREIGN KEY (`cita_motivo_id`) REFERENCES `cita_motivo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exauxresult`
--

LOCK TABLES `exauxresult` WRITE;
/*!40000 ALTER TABLE `exauxresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `exauxresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcbiologicas`
--

DROP TABLE IF EXISTS `funcbiologicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcbiologicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apetitos_id` int NOT NULL,
  `deposicions_id` int NOT NULL,
  `seds_id` int NOT NULL,
  `sueños_id` int NOT NULL,
  `orinas_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_funcbiologicas_apetitos1_idx` (`apetitos_id`),
  KEY `fk_funcbiologicas_deposicions1_idx` (`deposicions_id`),
  KEY `fk_funcbiologicas_seds1_idx` (`seds_id`),
  KEY `fk_funcbiologicas_sueños1_idx` (`sueños_id`),
  KEY `fk_funcbiologicas_orinas1_idx` (`orinas_id`),
  CONSTRAINT `fk_funcbiologicas_apetitos1` FOREIGN KEY (`apetitos_id`) REFERENCES `apetitos` (`id`),
  CONSTRAINT `fk_funcbiologicas_deposicions1` FOREIGN KEY (`deposicions_id`) REFERENCES `deposicions` (`id`),
  CONSTRAINT `fk_funcbiologicas_orinas1` FOREIGN KEY (`orinas_id`) REFERENCES `orinas` (`id`),
  CONSTRAINT `fk_funcbiologicas_seds1` FOREIGN KEY (`seds_id`) REFERENCES `seds` (`id`),
  CONSTRAINT `fk_funcbiologicas_sueños1` FOREIGN KEY (`sueños_id`) REFERENCES `sueños` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcbiologicas`
--

LOCK TABLES `funcbiologicas` WRITE;
/*!40000 ALTER TABLE `funcbiologicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcbiologicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcvitals`
--

DROP TABLE IF EXISTS `funcvitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcvitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `presarterials_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pulso` varchar(45) NOT NULL,
  `temperatura` varchar(45) NOT NULL,
  `talla` varchar(45) NOT NULL,
  `peso` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_funcvitals_presarterials1_idx` (`presarterials_id`),
  CONSTRAINT `fk_funcvitals_presarterials1` FOREIGN KEY (`presarterials_id`) REFERENCES `presarterials` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcvitals`
--

LOCK TABLES `funcvitals` WRITE;
/*!40000 ALTER TABLE `funcvitals` DISABLE KEYS */;
INSERT INTO `funcvitals` VALUES (60,83,'2019-10-09 21:04:52','2019-10-09 21:04:52','63','36','187','87');
/*!40000 ALTER TABLE `funcvitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Masculino',NULL,NULL),(2,'Femenino',NULL,NULL);
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insgeneral_consulta`
--

DROP TABLE IF EXISTS `insgeneral_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insgeneral_consulta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resultado` varchar(450) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `insgenerals_id` int NOT NULL,
  `consultas_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_insgeneral_consulta_insgenerals1_idx` (`insgenerals_id`),
  KEY `fk_insgeneral_consulta_consultas1_idx` (`consultas_id`),
  CONSTRAINT `fk_insgeneral_consulta_consultas1` FOREIGN KEY (`consultas_id`) REFERENCES `consultas` (`id`),
  CONSTRAINT `fk_insgeneral_consulta_insgenerals1` FOREIGN KEY (`insgenerals_id`) REFERENCES `insgenerals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insgeneral_consulta`
--

LOCK TABLES `insgeneral_consulta` WRITE;
/*!40000 ALTER TABLE `insgeneral_consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `insgeneral_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insgenerals`
--

DROP TABLE IF EXISTS `insgenerals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insgenerals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(450) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insgenerals`
--

LOCK TABLES `insgenerals` WRITE;
/*!40000 ALTER TABLE `insgenerals` DISABLE KEYS */;
INSERT INTO `insgenerals` VALUES (1,'Cabeza',NULL,NULL),(2,'Cuello',NULL,NULL),(3,'Tórax',NULL,NULL),(4,'Mamas',NULL,NULL),(5,'Pulmones y Cardiovascular',NULL,NULL),(6,'Abdomen',NULL,NULL);
/*!40000 ALTER TABLE `insgenerals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instruccions`
--

DROP TABLE IF EXISTS `instruccions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instruccions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruccions`
--

LOCK TABLES `instruccions` WRITE;
/*!40000 ALTER TABLE `instruccions` DISABLE KEYS */;
INSERT INTO `instruccions` VALUES (3,'Superior Universitaria','2019-08-16 08:55:21','2019-08-16 08:55:21'),(4,'Secundaria','2019-08-22 03:26:15','2019-08-22 03:26:15');
/*!40000 ALTER TABLE `instruccions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorios`
--

DROP TABLE IF EXISTS `laboratorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(450) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `ruc` char(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorios`
--

LOCK TABLES `laboratorios` WRITE;
/*!40000 ALTER TABLE `laboratorios` DISABLE KEYS */;
INSERT INTO `laboratorios` VALUES (2,'Suiza Lab','Hz','326589','suizaLab@gmail.com','20358975894',NULL,NULL),(3,'Peru Lab','Hz','457898','peru@hotmail,com','20165478968',NULL,NULL),(4,'Lab1','Jr. Magusterio','043-226658','lab1@gmail.com','20354687945','2019-08-29 10:33:05','2019-08-29 10:33:05');
/*!40000 ALTER TABLE `laboratorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manticonceptivos`
--

DROP TABLE IF EXISTS `manticonceptivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manticonceptivos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manticonceptivos`
--

LOCK TABLES `manticonceptivos` WRITE;
/*!40000 ALTER TABLE `manticonceptivos` DISABLE KEYS */;
INSERT INTO `manticonceptivos` VALUES (1,'Pildora',NULL,NULL),(2,'SIU',NULL,NULL),(3,'Condones',NULL,NULL),(4,'Parche Anticonceptivo',NULL,NULL),(5,'Anillo',NULL,NULL),(6,'Implante',NULL,NULL),(7,'Inyeccion',NULL,NULL),(8,'DIU',NULL,NULL),(9,'Condon Femenino',NULL,NULL),(10,'Diafragma',NULL,NULL),(11,'Conciencia de la Fertilidad',NULL,NULL),(12,'Capuchon Cervical',NULL,NULL),(13,'Esponja',NULL,NULL),(14,'Espermicidas',NULL,NULL),(17,'Natural','2019-09-06 15:22:34','2019-09-06 16:19:11');
/*!40000 ALTER TABLE `manticonceptivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `concentracion` varchar(200) DEFAULT NULL,
  `presentacion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Paracetamol',NULL,NULL,'500ml','Tableta'),(2,'Amoxicilina',NULL,'2019-09-27 15:15:04','80g','Capsula');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permissions_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_model_has_permissions_permissions1_idx` (`permissions_id`),
  CONSTRAINT `fk_model_has_permissions_permissions1` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `model_id` varchar(45) DEFAULT NULL,
  `model_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_model_has_roles_roles1_idx` (`role_id`),
  CONSTRAINT `fk_model_has_roles_roles1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observacions`
--

DROP TABLE IF EXISTS `observacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `observacions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(450) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `consultas_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_observacions_consultas1_idx` (`consultas_id`),
  CONSTRAINT `fk_observacions_consultas1` FOREIGN KEY (`consultas_id`) REFERENCES `consultas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observacions`
--

LOCK TABLES `observacions` WRITE;
/*!40000 ALTER TABLE `observacions` DISABLE KEYS */;
/*!40000 ALTER TABLE `observacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupacions`
--

DROP TABLE IF EXISTS `ocupacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacions`
--

LOCK TABLES `ocupacions` WRITE;
/*!40000 ALTER TABLE `ocupacions` DISABLE KEYS */;
INSERT INTO `ocupacions` VALUES (4,'Estudiante','2019-08-16 08:54:58','2019-08-16 08:54:58'),(5,'Ama de Casa','2019-08-22 03:25:20','2019-08-22 03:25:20');
/*!40000 ALTER TABLE `ocupacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenexam`
--

DROP TABLE IF EXISTS `ordenexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenexam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(450) NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `consultas_id` int NOT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ordenexam_consultas1_idx` (`consultas_id`),
  CONSTRAINT `fk_ordenexam_consultas1` FOREIGN KEY (`consultas_id`) REFERENCES `consultas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenexam`
--

LOCK TABLES `ordenexam` WRITE;
/*!40000 ALTER TABLE `ordenexam` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orinas`
--

DROP TABLE IF EXISTS `orinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(450) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orinas`
--

LOCK TABLES `orinas` WRITE;
/*!40000 ALTER TABLE `orinas` DISABLE KEYS */;
INSERT INTO `orinas` VALUES (1,'Bajo',NULL,NULL),(2,'Normal',NULL,NULL),(3,'Alto',NULL,NULL);
/*!40000 ALTER TABLE `orinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` char(11) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `lugarnac` varchar(100) DEFAULT NULL,
  `lugarproc` varchar(100) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `fecnac` date DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `ocupacions_id` int NOT NULL,
  `instruccions_id` int NOT NULL,
  `estadocivils_id` int NOT NULL,
  `generos_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pacientes_ocupacions1_idx` (`ocupacions_id`),
  KEY `fk_pacientes_instruccions1_idx` (`instruccions_id`),
  KEY `fk_pacientes_estadocivils1_idx` (`estadocivils_id`),
  KEY `fk_pacientes_generos1_idx` (`generos_id`),
  CONSTRAINT `fk_pacientes_estadocivils1` FOREIGN KEY (`estadocivils_id`) REFERENCES `estadocivils` (`id`),
  CONSTRAINT `fk_pacientes_generos1` FOREIGN KEY (`generos_id`) REFERENCES `generos` (`id`),
  CONSTRAINT `fk_pacientes_instruccions1` FOREIGN KEY (`instruccions_id`) REFERENCES `instruccions` (`id`),
  CONSTRAINT `fk_pacientes_ocupacions1` FOREIGN KEY (`ocupacions_id`) REFERENCES `ocupacions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (18,'Juana Maria','Caballero Rodriguez','12345678','944646678','Huaraz','Huaraz','Huaraz',NULL,'1980-12-12',38,4,4,3,2,'2019-10-08 08:37:37','2019-10-08 08:37:37'),(19,'Juana Maria','Caballero Rodriguez','12345678','944646678','Huaraz','Huaraz','Huaraz',NULL,'1980-12-12',38,4,4,3,2,'2019-10-08 08:37:52','2019-10-08 08:37:52');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parentezcos`
--

DROP TABLE IF EXISTS `parentezcos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parentezcos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `acompañantes_id` int NOT NULL,
  `pacientes_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_parentezco_acompañantes1_idx` (`acompañantes_id`),
  KEY `fk_parentezco_pacientes1_idx` (`pacientes_id`),
  CONSTRAINT `fk_parentezco_acompañantes1` FOREIGN KEY (`acompañantes_id`) REFERENCES `acompañantes` (`id`),
  CONSTRAINT `fk_parentezco_pacientes1` FOREIGN KEY (`pacientes_id`) REFERENCES `pacientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parentezcos`
--

LOCK TABLES `parentezcos` WRITE;
/*!40000 ALTER TABLE `parentezcos` DISABLE KEYS */;
/*!40000 ALTER TABLE `parentezcos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presarterials`
--

DROP TABLE IF EXISTS `presarterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presarterials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sistolica` varchar(45) NOT NULL,
  `diastolica` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presarterials`
--

LOCK TABLES `presarterials` WRITE;
/*!40000 ALTER TABLE `presarterials` DISABLE KEYS */;
INSERT INTO `presarterials` VALUES (83,'120','60','2019-10-09 21:04:52','2019-10-09 21:04:52');
/*!40000 ALTER TABLE `presarterials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps`
--

DROP TABLE IF EXISTS `ps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valora` int DEFAULT NULL,
  `valorb` int DEFAULT NULL,
  `valorc` int DEFAULT NULL,
  `valord` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps`
--

LOCK TABLES `ps` WRITE;
/*!40000 ALTER TABLE `ps` DISABLE KEYS */;
INSERT INTO `ps` VALUES (60,0,0,0,0,'2019-10-09 21:04:52','2019-10-09 21:04:52');
/*!40000 ALTER TABLE `ps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultadoexamen`
--

DROP TABLE IF EXISTS `resultadoexamen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultadoexamen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(450) DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ruta` varchar(450) DEFAULT NULL,
  `descripcion` varchar(450) DEFAULT NULL,
  `laboratorios_id` int NOT NULL,
  `ordenexam_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resultadoexamen_laboratorios1_idx` (`laboratorios_id`),
  KEY `fk_resultadoexamen_ordenexam1_idx` (`ordenexam_id`),
  CONSTRAINT `fk_resultadoexamen_laboratorios1` FOREIGN KEY (`laboratorios_id`) REFERENCES `laboratorios` (`id`),
  CONSTRAINT `fk_resultadoexamen_ordenexam1` FOREIGN KEY (`ordenexam_id`) REFERENCES `ordenexam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultadoexamen`
--

LOCK TABLES `resultadoexamen` WRITE;
/*!40000 ALTER TABLE `resultadoexamen` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultadoexamen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permiso_rol_rols1_idx` (`role_id`),
  KEY `fk_permiso_rol_permisos1_idx` (`permission_id`),
  CONSTRAINT `fk_permiso_rol_permisos1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `fk_permiso_rol_rols1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seds`
--

DROP TABLE IF EXISTS `seds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seds` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seds`
--

LOCK TABLES `seds` WRITE;
/*!40000 ALTER TABLE `seds` DISABLE KEYS */;
INSERT INTO `seds` VALUES (1,'Bajo',NULL,NULL),(2,'Normal',NULL,NULL),(3,'Alto',NULL,NULL);
/*!40000 ALTER TABLE `seds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sueños`
--

DROP TABLE IF EXISTS `sueños`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sueños` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(450) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sueños`
--

LOCK TABLES `sueños` WRITE;
/*!40000 ALTER TABLE `sueños` DISABLE KEYS */;
INSERT INTO `sueños` VALUES (1,'Bajo',NULL,NULL),(2,'Normal',NULL,NULL),(3,'Alto',NULL,NULL);
/*!40000 ALTER TABLE `sueños` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocies`
--

DROP TABLE IF EXISTS `tipocies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocies`
--

LOCK TABLES `tipocies` WRITE;
/*!40000 ALTER TABLE `tipocies` DISABLE KEYS */;
INSERT INTO `tipocies` VALUES (1,'Diagnostico',NULL,NULL),(2,'Procedimiento',NULL,NULL);
/*!40000 ALTER TABLE `tipocies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoempleados`
--

DROP TABLE IF EXISTS `tipoempleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoempleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoempleados`
--

LOCK TABLES `tipoempleados` WRITE;
/*!40000 ALTER TABLE `tipoempleados` DISABLE KEYS */;
INSERT INTO `tipoempleados` VALUES (1,'admin','Activo',NULL,NULL),(4,'Medico','Activo',NULL,NULL);
/*!40000 ALTER TABLE `tipoempleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoexamexterno`
--

DROP TABLE IF EXISTS `tipoexamexterno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoexamexterno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `detalle` varchar(450) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoexamexterno`
--

LOCK TABLES `tipoexamexterno` WRITE;
/*!40000 ALTER TABLE `tipoexamexterno` DISABLE KEYS */;
INSERT INTO `tipoexamexterno` VALUES (1,'BIOQUIMICO',NULL,NULL,NULL),(2,'HEMATOLOGIA',NULL,NULL,NULL),(3,'INMUNOLOGIA',NULL,NULL,NULL),(4,'ENDOCRINOLOGIA',NULL,NULL,NULL),(5,'MARCADORES TUMORALES',NULL,NULL,NULL),(6,'MICROBIOLOGIA',NULL,NULL,NULL),(7,'PARASITOLOGIA',NULL,NULL,NULL),(8,'PERFIL LIPIDICO',NULL,NULL,NULL),(9,'PERFIL HEPATICO',NULL,NULL,NULL),(10,'PERFIL REUMATOLOGICO',NULL,NULL,NULL),(11,'PERFIL CORONARIO',NULL,NULL,NULL),(12,'PERFIL GESTANTE',NULL,NULL,NULL),(13,'PERFIL PREQUIRUUGICO',NULL,NULL,NULL),(14,'PERFIL TIROIDEO',NULL,NULL,NULL),(15,'PAQUETE ITU',NULL,NULL,NULL),(16,'CHEQUEO GENERAL',NULL,NULL,NULL),(17,'PERFIL DE COAGULACION',NULL,NULL,NULL),(18,'ECOGRAFIAS',NULL,NULL,NULL),(19,'EXÁMENES',NULL,NULL,NULL),(20,'GENÉTICA',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tipoexamexterno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoexaminters`
--

DROP TABLE IF EXISTS `tipoexaminters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoexaminters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoexaminters`
--

LOCK TABLES `tipoexaminters` WRITE;
/*!40000 ALTER TABLE `tipoexaminters` DISABLE KEYS */;
INSERT INTO `tipoexaminters` VALUES (4,'Consulta',NULL,NULL),(5,'Eco. Abdominal',NULL,NULL),(6,'Eco. Transvaginal',NULL,NULL),(7,'Eco. de Mamas',NULL,NULL),(8,'Eco. Tiroidez',NULL,NULL),(9,'Eco. Obstetrica 2D',NULL,NULL),(10,'Eco. Partes Blandas',NULL,NULL),(11,'Eco. Testicular',NULL,NULL),(12,'Eco. Renal y Prostatica',NULL,NULL),(13,'Eco. Obstetrica 3D-4D',NULL,NULL),(14,'Eco. Doppler',NULL,NULL),(15,'Chequeo Ginecológico',NULL,NULL),(16,'Exámen Citológico',NULL,NULL),(17,'Vidéo Coloscopía',NULL,NULL),(18,'Biopsia',NULL,NULL);
/*!40000 ALTER TABLE `tipoexaminters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamientos`
--

DROP TABLE IF EXISTS `tratamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamientos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `indicacion` varchar(450) DEFAULT NULL,
  `consultas_id` int NOT NULL,
  `medicamentos_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cantidad` varchar(450) DEFAULT NULL,
  `dosis` varchar(450) DEFAULT NULL,
  `via` varchar(450) DEFAULT NULL,
  `frecuencia` varchar(450) DEFAULT NULL,
  `duracion` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tratamientos_consultas1_idx` (`consultas_id`),
  KEY `fk_tratamientos_medicamentos1_idx` (`medicamentos_id`),
  CONSTRAINT `fk_tratamientos_consultas1` FOREIGN KEY (`consultas_id`) REFERENCES `consultas` (`id`),
  CONSTRAINT `fk_tratamientos_medicamentos1` FOREIGN KEY (`medicamentos_id`) REFERENCES `medicamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamientos`
--

LOCK TABLES `tratamientos` WRITE;
/*!40000 ALTER TABLE `tratamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tratamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triaje`
--

DROP TABLE IF EXISTS `triaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triaje` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `antecpersonals_id` int NOT NULL,
  `citas_id` int NOT NULL,
  `users_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `funcvitals_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_triaje_antecpersonals1_idx` (`antecpersonals_id`),
  KEY `fk_triaje_citas1_idx` (`citas_id`),
  KEY `fk_triaje_users1_idx` (`users_id`),
  KEY `fk_triaje_funcvitals1_idx` (`funcvitals_id`),
  CONSTRAINT `fk_triaje_antecpersonals1` FOREIGN KEY (`antecpersonals_id`) REFERENCES `antecpersonals` (`id`),
  CONSTRAINT `fk_triaje_citas1` FOREIGN KEY (`citas_id`) REFERENCES `citas` (`id`),
  CONSTRAINT `fk_triaje_funcvitals1` FOREIGN KEY (`funcvitals_id`) REFERENCES `funcvitals` (`id`),
  CONSTRAINT `fk_triaje_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triaje`
--

LOCK TABLES `triaje` WRITE;
/*!40000 ALTER TABLE `triaje` DISABLE KEYS */;
INSERT INTO `triaje` VALUES (37,'2019-10-09',47,52,3,'2019-10-09 21:04:53','2019-10-09 21:04:53',60);
/*!40000 ALTER TABLE `triaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_rol`
--

DROP TABLE IF EXISTS `user_has_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `rol_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_rol_users1_idx` (`users_id`),
  KEY `fk_user_rol_rols1_idx` (`rol_id`),
  CONSTRAINT `fk_user_rol_rols1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_user_rol_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_rol`
--

LOCK TABLES `user_has_rol` WRITE;
/*!40000 ALTER TABLE `user_has_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empleados_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_empleados1_idx` (`empleados_id`),
  CONSTRAINT `fk_users_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Administrador','admin@admin.com','$2y$10$wcTV2/rcpq41iBB1GSfC2.HM0sA6vud6g54HpMSyTF6vkuQ0W6cIy',NULL,NULL,1),(4,'Andres','andres@gmail.com','$2y$10$UC/to3BozStfCHbHDxxeUuNrsQVAveheBbZ1ar.pqx5.AC9PuGHiO','2019-08-29 06:38:01','2019-08-29 06:38:01',4);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-02 12:39:05
