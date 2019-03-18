-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ann_result_test`
--

DROP TABLE IF EXISTS `ann_result_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ann_result_test` (
  `id` int(11) DEFAULT NULL,
  `predict_val` double DEFAULT NULL,
  `real_val` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ann_result_test`
--

LOCK TABLES `ann_result_test` WRITE;
/*!40000 ALTER TABLE `ann_result_test` DISABLE KEYS */;
INSERT INTO `ann_result_test` VALUES (0,1941,333.95758056640625),(1,539,2151.92431640625),(2,373,2846.2578125),(3,878,0),(4,549,0),(5,633,0),(6,1645,2180.998779296875),(7,1423,4251.130859375),(8,809,0),(9,1133,842.3349609375),(10,909,3020.517578125),(11,2794,11163.0615234375),(12,5995,14274.455078125),(13,1138,0),(14,1477,0),(15,554,0),(16,2757,1455.30908203125),(17,224,0),(18,1054,1155.048828125),(19,934,246.07440185546875),(20,1062,857.402587890625),(21,955,1596.24462890625),(22,434,0),(23,599,0),(24,583,941.2938232421875),(25,664,4268.2177734375),(26,3510,314.9564208984375),(27,659,0),(28,729,746.28955078125),(29,809,1468.9649658203125),(30,1775,2947.42529296875),(31,2635,673.3865966796875),(32,527,3722.205322265625),(33,1180,0),(34,991,0),(35,1148,2020.5771484375),(36,850,119.065185546875),(37,278,0),(38,1437,1847.01123046875),(39,1437,0),(40,838,1661.11572265625),(41,1888,0),(42,241,0),(43,1084,0),(44,911,576.539306640625),(45,1632,0),(46,322,0),(47,469,0),(48,2589,686.95458984375),(49,1356,48.6572265625),(50,910,142.1309814453125),(51,535,0),(52,4509,0),(53,1719,4264.6640625),(54,2037,0),(55,833,0),(56,442,612.80908203125),(57,4027,0),(58,3331,0),(59,1118,2676.023681640625),(60,855,8116.212890625),(61,605,0),(62,1935,115.63568115234375),(63,1241,2265.458984375),(64,570,0),(65,701,0),(66,1161,0),(67,5837,13569.017578125),(68,3389,1487.1600341796875),(69,902,0),(70,872,488.7320556640625),(71,4980,0),(72,963,0),(73,503,0),(74,826,0),(75,872,0),(76,2332,4613.6123046875),(77,701,0),(78,546,159.801513671875),(79,1923,0),(80,1788,2266.124267578125),(81,604,0),(82,1669,0),(83,1114,0),(84,441,0),(85,663,0),(86,2150,46.6934814453125),(87,2038,2638.43505859375),(88,397,638.056884765625),(89,550,0),(90,1416,2273.391357421875),(91,827,1764.182861328125),(92,950,0),(93,944,0),(94,577,1660.582763671875),(95,465,0),(96,1379,0),(97,1036,0),(98,409,0),(99,1201,0),(100,367,946.09716796875),(101,2462,272.638427734375),(102,1125,309.86279296875),(103,2066,2932.662353515625),(104,1481,0),(105,1495,0),(106,1897,245.22259521484375),(107,2428,3831.179443359375),(108,804,0),(109,1344,884.965576171875),(110,1175,0),(111,681,0),(112,659,3365.853759765625),(113,1141,721.970458984375),(114,823,0),(115,824,0),(116,122,0),(117,249,0),(118,1871,1550.741455078125),(119,1863,2087.55224609375),(120,669,2407.518798828125),(121,924,0),(122,1367,2515.298828125),(123,706,1504.636962890625),(124,1097,1198.1116943359375),(125,1115,1409.2947998046875),(126,1563,825.264892578125),(127,936,1142.245361328125),(128,349,0),(129,480465,10390.96484375),(130,1318,3210.360107421875),(131,1086,200.26873779296875),(132,1454,0),(133,1128,0),(134,1367,531.280029296875),(135,3187,1718.651123046875),(136,1347,0),(137,768,1130.97412109375),(138,984,242.687255859375),(139,808,0),(140,657,0),(141,1352,327.7158203125),(142,2188,0),(143,876,679.86572265625),(144,1119,884.284423828125),(145,613,495.482177734375),(146,478,0),(147,1193,122.68408203125),(148,765,80.875),(149,928,0),(150,1085,3798.260986328125),(151,3185,0),(152,631,4831.5244140625),(153,756,0),(154,308,0),(155,750,404.3427734375),(156,1096,0),(157,1210,0),(158,519,4239.0029296875),(159,1919,0),(160,1457,5490.6162109375),(161,1644,1906.433837890625),(162,977,0),(163,789,0),(164,1605,2415.9814453125),(165,425,0);
/*!40000 ALTER TABLE `ann_result_test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-18 14:06:41