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
INSERT INTO `ann_result_test` VALUES (0,1941,124.94808959960938),(1,539,2311.07470703125),(2,373,2774.6904296875),(3,878,0),(4,549,0),(5,633,0),(6,1645,2074.697021484375),(7,1423,4359.92578125),(8,809,0),(9,1133,687.846435546875),(10,909,2949.318603515625),(11,2794,11220.1181640625),(12,5995,14286.7607421875),(13,1138,0),(14,1477,0),(15,554,0),(16,2757,1515.49609375),(17,224,0),(18,1054,1020.6705322265625),(19,934,99.78567504882812),(20,1062,801.207763671875),(21,955,1540.6466064453125),(22,434,0),(23,599,0),(24,583,959.1292724609375),(25,664,4486.62646484375),(26,3510,392.5883483886719),(27,659,0),(28,729,862.8795166015625),(29,809,1371.6600341796875),(30,1775,2849.18310546875),(31,2635,729.8497314453125),(32,527,3741.39208984375),(33,1180,0),(34,991,0),(35,1148,1747.9605712890625),(36,850,142.07473754882812),(37,278,0),(38,1437,1847.8370361328125),(39,1437,0),(40,838,1422.8726806640625),(41,1888,0),(42,241,0),(43,1084,0),(44,911,380.1824035644531),(45,1632,0),(46,322,0),(47,469,0),(48,2589,718.8228759765625),(49,1356,74.57632446289062),(50,910,71.80636596679688),(51,535,0),(52,4509,0),(53,1719,4129.9140625),(54,2037,0),(55,833,0),(56,442,650.4398193359375),(57,4027,0),(58,3331,0),(59,1118,2801.257080078125),(60,855,8208.0205078125),(61,605,0),(62,1935,444.1825256347656),(63,1241,2186.8671875),(64,570,0),(65,701,0),(66,1161,0),(67,5837,13427.578125),(68,3389,1499.39306640625),(69,902,0),(70,872,524.037841796875),(71,4980,148.53005981445312),(72,963,0),(73,503,0),(74,826,0),(75,872,0),(76,2332,4553.603515625),(77,701,0),(78,546,99.09402465820312),(79,1923,0),(80,1788,2310.957763671875),(81,604,0),(82,1669,0),(83,1114,0),(84,441,0),(85,663,0),(86,2150,56.75244140625),(87,2038,2703.6572265625),(88,397,448.1846008300781),(89,550,0),(90,1416,2404.76708984375),(91,827,1701.4791259765625),(92,950,0),(93,944,0),(94,577,1368.5667724609375),(95,465,0),(96,1379,0),(97,1036,0),(98,409,0),(99,1201,0),(100,367,948.985107421875),(101,2462,549.9713134765625),(102,1125,275.7883605957031),(103,2066,2791.857177734375),(104,1481,0),(105,1495,0),(106,1897,359.4875183105469),(107,2428,3646.54248046875),(108,804,0),(109,1344,991.3048095703125),(110,1175,0),(111,681,0),(112,659,3358.359375),(113,1141,696.2264404296875),(114,823,0),(115,824,0),(116,122,0),(117,249,0),(118,1871,1584.6212158203125),(119,1863,1942.2147216796875),(120,669,2394.5693359375),(121,924,0),(122,1367,2465.14501953125),(123,706,1508.4954833984375),(124,1097,1106.4549560546875),(125,1115,1601.2108154296875),(126,1563,709.8177490234375),(127,936,1135.216552734375),(128,349,0),(129,480465,10620.353515625),(130,1318,3314.427001953125),(131,1086,0),(132,1454,0),(133,1128,0),(134,1367,545.9532470703125),(135,3187,1743.4046630859375),(136,1347,0),(137,768,976.6422119140625),(138,984,193.29629516601562),(139,808,0),(140,657,0),(141,1352,334.5935363769531),(142,2188,0),(143,876,763.0810546875),(144,1119,783.47412109375),(145,613,457.1498107910156),(146,478,0),(147,1193,49.828765869140625),(148,765,234.83120727539062),(149,928,0),(150,1085,3800.98876953125),(151,3185,0),(152,631,4806.63427734375),(153,756,0),(154,308,0),(155,750,250.89541625976562),(156,1096,0),(157,1210,0),(158,519,4364.05322265625),(159,1919,0),(160,1457,5733.80078125),(161,1644,1931.1654052734375),(162,977,0),(163,789,0),(164,1605,2317.092529296875),(165,425,0);
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

-- Dump completed on 2019-03-13 15:18:36
