-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `ID_Enfermeiro` int NOT NULL,
  `Nome_Enfermeiro` varchar(100) DEFAULT NULL,
  `CIP` varchar(8) DEFAULT NULL,
  `Data_Nascimento_Enfermeiro` timestamp NULL DEFAULT NULL,
  `Genero_Enfermeiro` char(1) DEFAULT NULL,
  `CPF_Enfermeiro` varchar(14) DEFAULT NULL,
  `RG_Enfermeiro` varchar(12) DEFAULT NULL,
  `Nome_Endereco_Enfermeiro` varchar(100) DEFAULT NULL,
  `Numero_Enfermeiro` int DEFAULT NULL,
  `Complemento_Enfermeiro` varchar(100) DEFAULT NULL,
  `Logradouro_Enfermeiro` varchar(100) DEFAULT NULL,
  `Telefone_Enfermeiro` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Enfermeiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
INSERT INTO `enfermeiro` VALUES (1,'John Doe','12345678','1990-05-15 03:00:00','M','123.456.789-01','ABC123456','123 Main St',123,'Apt 456','Street Name','1234567890'),(2,'Jane Smith','87654321','1985-09-20 03:00:00','F','987.654.321-02','XYZ987654','456 Elm St',456,'Suite 789','Oak Avenue','9876543210'),(3,'Robert Johnson','23456789','1980-12-03 03:00:00','M','234.567.890-03','PQR234567','789 Oak Ln',789,'apt 3b','Maple Street','5678901234'),(4,'Mary Brown','34567890','1992-07-08 03:00:00','F','345.678.901-04','RST345678','567 Willow Ave',567,'Apt 123','Cedar Lane','6789012345'),(5,'David Wilson','45678901','1987-03-12 03:00:00','M','456.789.012-05','UVW456789','890 Pine St',890,'apt 5b','Birch Road','7890123456'),(6,'Sarah Davis','56789012','1995-11-25 03:00:00','F','567.890.123-06','XYZ567890','123 Cedar St',123,'Suite 456','Oakwood Drive','8901234567'),(7,'Michael Johnson','67890123','1983-08-17 03:00:00','M','678.901.234-07','ABC678901','234 Elm St',234,'apt 92b','Pine Avenue','9012345678'),(8,'Lisa Taylor','78901234','1993-02-04 03:00:00','F','789.012.345-08','XYZ789012','456 Oak St',456,'Apt 789','Maple Avenue','0123456789'),(9,'William Clark','89012345','1986-06-30 03:00:00','M','890.123.456-09','PQR890123','678 Pine Ln',678,'Suite 234','Cedar Street','1234567890'),(10,'Emily White','90123456','1994-09-10 03:00:00','F','901.234.567-10','RST901234','789 Maple St',789,NULL,'Birch Lane','2345678901');
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `ID_Medico` int NOT NULL,
  `Nome_Medico` varchar(100) DEFAULT NULL,
  `CRM` int DEFAULT NULL,
  `CPF_Medico` varchar(14) DEFAULT NULL,
  `Data_Nascimento_Medico` timestamp NULL DEFAULT NULL,
  `Genero_Medico` char(1) DEFAULT NULL,
  `Telefone_Medico` varchar(11) DEFAULT NULL,
  `Numero_Medico` int DEFAULT NULL,
  `Complemento_Medico` varchar(100) DEFAULT NULL,
  `Nome_Endereco_Medico` varchar(100) DEFAULT NULL,
  `Logradouro_Medico` varchar(100) DEFAULT NULL,
  `RG_Medico` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`ID_Medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Roberto',3711,'144.385.988-00','1980-05-01 03:00:00','M','41978650888',41,'casa','cds123132','emanuel filho','98762323'),(2,'Maria',4823,'233.456.789-01','1985-08-15 03:00:00','F','4191234567',23,'Apt 3B','Rua ABC','Centro','76543210'),(3,'Carlos',5739,'789.123.456-02','1977-03-20 03:00:00','M','4199876543',12,'Apt 4B','Rua XYZ','Bairro Sul','54321098'),(4,'Isabella',6298,'987.654.321-03','1988-12-05 03:00:00','F','4198765432',56,'Apt 7C','Av. Principal','Centro','32109876'),(5,'Lucas',7145,'567.890.123-04','1990-09-10 03:00:00','M','4197654321',8,'Apt 12D','Rua Maple','Bairro Norte','45678901'),(6,'Ana',8253,'901.234.567-05','1983-07-22 03:00:00','F','4190123456',34,'apt 9b','Av. Central','Bairro Oeste','65432109'),(7,'Fernando',9374,'123.456.789-06','1986-11-15 03:00:00','M','4198765432',19,'Apt 5A','Rua ABC','Bairro Sul','78901234'),(8,'Luis',1102,'234.567.890-07','1982-04-30 03:00:00','M','4190123456',67,NULL,'Av. Principal','Bairro Central','89012345'),(9,'Laura',2498,'345.678.901-08','1994-03-18 03:00:00','F','4197654321',28,'Apt 4B','Rua XYZ','Bairro Norte','23456789'),(10,'Miguel',3790,'456.789.012-09','1991-08-08 03:00:00','M','4190123456',14,'apt 3A','Av. Central','Bairro Oeste','90123456');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacao_paciente_enfermeiro_medico_sala_cirurgia`
--

DROP TABLE IF EXISTS `operacao_paciente_enfermeiro_medico_sala_cirurgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operacao_paciente_enfermeiro_medico_sala_cirurgia` (
  `fk_Paciente_ID_Paciente` int DEFAULT NULL,
  `fk_Enfermeiro_ID_Enfermeiro` int DEFAULT NULL,
  `fk_Medico_ID_Medico` int DEFAULT NULL,
  `fk_Sala_Cirurgia_ID_Sala` int DEFAULT NULL,
  `ID_Operacao` int NOT NULL,
  PRIMARY KEY (`ID_Operacao`),
  UNIQUE KEY `fk_Sala_Cirurgia_ID_Sala` (`fk_Sala_Cirurgia_ID_Sala`,`fk_Medico_ID_Medico`,`fk_Paciente_ID_Paciente`,`fk_Enfermeiro_ID_Enfermeiro`),
  KEY `FK_Operacao_Paciente_Enfermeiro_Medico_Sala_Cirurgia_1` (`fk_Paciente_ID_Paciente`),
  KEY `FK_Operacao_Paciente_Enfermeiro_Medico_Sala_Cirurgia_2` (`fk_Enfermeiro_ID_Enfermeiro`),
  KEY `FK_Operacao_Paciente_Enfermeiro_Medico_Sala_Cirurgia_3` (`fk_Medico_ID_Medico`),
  CONSTRAINT `FK_Operacao_Paciente_Enfermeiro_Medico_Sala_Cirurgia_1` FOREIGN KEY (`fk_Paciente_ID_Paciente`) REFERENCES `paciente` (`ID_Paciente`),
  CONSTRAINT `FK_Operacao_Paciente_Enfermeiro_Medico_Sala_Cirurgia_2` FOREIGN KEY (`fk_Enfermeiro_ID_Enfermeiro`) REFERENCES `enfermeiro` (`ID_Enfermeiro`),
  CONSTRAINT `FK_Operacao_Paciente_Enfermeiro_Medico_Sala_Cirurgia_3` FOREIGN KEY (`fk_Medico_ID_Medico`) REFERENCES `medico` (`ID_Medico`),
  CONSTRAINT `FK_Operacao_Paciente_Enfermeiro_Medico_Sala_Cirurgia_4` FOREIGN KEY (`fk_Sala_Cirurgia_ID_Sala`) REFERENCES `sala_cirurgia` (`ID_Sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacao_paciente_enfermeiro_medico_sala_cirurgia`
--

LOCK TABLES `operacao_paciente_enfermeiro_medico_sala_cirurgia` WRITE;
/*!40000 ALTER TABLE `operacao_paciente_enfermeiro_medico_sala_cirurgia` DISABLE KEYS */;
INSERT INTO `operacao_paciente_enfermeiro_medico_sala_cirurgia` VALUES (1,1,1,41,1),(2,2,2,42,2),(3,3,3,43,3),(4,4,4,44,4),(5,5,5,45,5),(6,6,6,46,6),(7,7,7,47,7),(8,8,8,48,8),(9,9,9,49,9),(10,10,10,50,10);
/*!40000 ALTER TABLE `operacao_paciente_enfermeiro_medico_sala_cirurgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `ID_Paciente` int NOT NULL,
  `Data_Nascimento_Paciente` timestamp NULL DEFAULT NULL,
  `Condicao` varchar(20) DEFAULT NULL,
  `Telefone_Emergencia` varchar(11) DEFAULT NULL,
  `Logradouro_Paciente` varchar(100) DEFAULT NULL,
  `Nome_Paciente` varchar(100) DEFAULT NULL,
  `Numero_Paciente` int DEFAULT NULL,
  `Complemento_Paciente` varchar(100) DEFAULT NULL,
  `CPF_Paciente` varchar(14) DEFAULT NULL,
  `RG_Paciente` varchar(12) DEFAULT NULL,
  `Nome_Endereco_Paciente` varchar(100) DEFAULT NULL,
  `Genero_Paciente` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'1982-03-05 03:00:00','Cortado','41990123456','Rua Ronaldo Fernandes','Miguel',32,'apartamento 2','242.234.243-23','22342132','dsa21343223','M'),(2,'1990-06-15 03:00:00','Alergia','41987654321','Avenida Silva','Ana',45,'Bloco 3','332.456.789-12','98761234','Rua das Flores','F'),(3,'1975-12-20 03:00:00','Diabetes','41901234567','Rua Xavier','Carlos',28,'Casa 5','543.123.456-34','12345678','Avenida Central','M'),(4,'1988-09-03 03:00:00','Hipertensão','41976543210','Rua Oliveira','Isabella',18,'Apt 7B','654.789.012-45','34567890','Rua das Palmeiras','F'),(5,'1995-04-12 03:00:00','Asma','4190123456','Avenida dos Santos','Lucas',56,'apt 9C','987.123.456-56','56789012','Avenida da Praia','M'),(6,'1983-07-25 03:00:00','Fratura','41998765432','Rua Pereira','Fernanda',37,'Bloco 2','876.234.567-67','23456789','Rua das Montanhas','F'),(7,'1986-04-15 03:00:00','Fratura','41987654321','Rua da Silva','Rafael',12,'Apt 4C','345.678.901-78','87654321','Avenida das Árvores','M'),(8,'1993-01-04 03:00:00','Diabetes','41901234567','Rua Oliveira','Luis',24,'Casa 1A','987.234.567-89','23456789','Rua das Flores','M'),(9,'1991-06-30 03:00:00','Alergia','41976543210','Avenida dos Santos','Laura',30,'casa 2','234.789.012-90','98765432','Avenida da Praia','F'),(10,'1980-08-10 03:00:00','Cortado','4190123456','Rua Pereira','Miguel',8,'Apt 3D','876.123.456-01','12345678','Avenida das Montanhas','M');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala_cirurgia`
--

DROP TABLE IF EXISTS `sala_cirurgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala_cirurgia` (
  `Bloco_Sala` varchar(20) DEFAULT NULL,
  `Numero_Sala` int DEFAULT NULL,
  `ID_Sala` int NOT NULL,
  PRIMARY KEY (`ID_Sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala_cirurgia`
--

LOCK TABLES `sala_cirurgia` WRITE;
/*!40000 ALTER TABLE `sala_cirurgia` DISABLE KEYS */;
INSERT INTO `sala_cirurgia` VALUES ('Bloco 1',104,41),('Bloco 2',201,42),('Bloco 1',105,43),('Bloco 3',302,44),('Bloco 2',202,45),('Bloco 1',106,46),('Bloco 3',303,47),('Bloco 2',203,48),('Bloco 1',107,49),('Bloco 3',304,50);
/*!40000 ALTER TABLE `sala_cirurgia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 22:00:47
