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
-- Table structure for table `ann_result_train`
--

DROP TABLE IF EXISTS `ann_result_train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ann_result_train` (
  `id` int(11) DEFAULT NULL,
  `predict_val` double DEFAULT NULL,
  `real_val` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ann_result_train`
--

LOCK TABLES `ann_result_train` WRITE;
/*!40000 ALTER TABLE `ann_result_train` DISABLE KEYS */;
INSERT INTO `ann_result_train` VALUES (0,819,838.8189697265625),(1,579,0),(2,583,579.8646850585938),(3,667,0),(4,1845,1862.593505859375),(5,1132,1124.8284912109375),(6,951,925.775390625),(7,2002,2007.1796875),(8,553,0),(9,920,889.6112060546875),(10,1484,1486.109130859375),(11,1726,1723.76953125),(12,2142,2142.03271484375),(13,2501,2473.604736328125),(14,1289,0),(15,548,579.47412109375),(16,1803,1807.176513671875),(17,828,0),(18,1270,0),(19,636,629.739990234375),(20,6306,6304.1162109375),(21,1262,1271.86328125),(22,311,306.1778564453125),(23,1078,1087.8531494140625),(24,977,0),(25,734,719.31005859375),(26,1092,1096.00732421875),(27,359,0),(28,884,879.486572265625),(29,994,0),(30,519,0),(31,101,0),(32,978,0),(33,384,0),(34,1909,1854.352294921875),(35,433,0),(36,2814,2794.991943359375),(37,2125,2114.932373046875),(38,471,452.2962646484375),(39,585,584.106201171875),(40,1144,0),(41,915,895.19287109375),(42,1883,1873.73095703125),(43,1276,1258.780029296875),(44,3542,3533.32421875),(45,706,686.0111083984375),(46,646,0),(47,538,0),(48,755,712.9384765625),(49,326,0),(50,1196,1165.0556640625),(51,1012,1004.6451416015625),(52,835,830.912841796875),(53,2461,2445.555419921875),(54,1586,0),(55,510,500.96630859375),(56,737,719.874267578125),(57,2640,2544.59814453125),(58,726,0),(59,1542,1517.64013671875),(60,1321,1292.531982421875),(61,1207,1152.16357421875),(62,1287,1266.39404296875),(63,681,654.82958984375),(64,363,0),(65,845,0),(66,725,714.423828125),(67,427,381.6566162109375),(68,1892,1864.60205078125),(69,1261,1235.862548828125),(70,1219,1175.8663330078125),(71,2951,2897.168701171875),(72,734,0),(73,840,0),(74,668,0),(75,1189,1123.6143798828125),(76,425,0),(77,1307,1239.168212890625),(78,750,0),(79,432,0),(80,542,0),(81,2395,2367.77734375),(82,1318,1266.81298828125),(83,1427,1377.6878662109375),(84,2460,2431.035400390625),(85,793,721.06982421875),(86,458,0),(87,662,0),(88,1101,1067.204345703125),(89,811,774.875244140625),(90,689,651.097900390625),(91,1112,1055.14794921875),(92,1951,1888.723876953125),(93,1810,1750.39306640625),(94,1145,1071.143310546875),(95,2694,2641.972900390625),(96,1251,1156.9249267578125),(97,1387,1338.379150390625),(98,1461,1383.715576171875),(99,617,0),(100,1559,1487.80224609375),(101,899,841.354736328125),(102,697,0),(103,647,0),(104,1130,0),(105,2130,2053.642578125),(106,627,547.6652221679688),(107,2763,2688.350830078125),(108,571,477.917236328125),(109,1534,1481.22509765625),(110,2039,1976.714599609375),(111,1315,1233.32373046875),(112,587,523.1984252929688),(113,1481,1421.436279296875),(114,651,0),(115,2231,2165.177001953125),(116,2314,2230.66357421875),(117,1150,1028.92724609375),(118,1765,1655.887939453125),(119,4138,4069.913330078125),(120,1803,1701.487548828125),(121,1127,939.429931640625),(122,1196,1088.1873779296875),(123,902,779.7877197265625),(124,623,0),(125,463,366.705078125),(126,1799,1705.65185546875),(127,2685,0),(128,757,0),(129,520,0),(130,1217,0),(131,799,698.4893798828125),(132,1689,0),(133,972,867.2587890625),(134,504,0),(135,454,314.7977294921875),(136,3152,3022.941650390625),(137,1893,1736.015869140625),(138,1384,0),(139,1188,1037.752197265625),(140,995,839.5087890625),(141,779,0),(142,632,549.9747314453125),(143,1175,1058.165283203125),(144,666,530.95947265625),(145,323,0),(146,1408,1223.16845703125),(147,931,0),(148,4543,4386.044921875),(149,590,0),(150,485,344.63671875),(151,864,0),(152,1984,1813.521240234375),(153,1468,1322.30419921875),(154,315,0),(155,1473,0),(156,716,568.5811767578125),(157,336,0),(158,278,0),(159,860,695.79443359375),(160,2125,2002.131103515625),(161,956,811.5714111328125),(162,1734,1584.4716796875),(163,82508,82314.546875),(164,1321,0),(165,1728,1599.9100341796875),(166,438,0),(167,2609,2478.61669921875),(168,2212,2033.71533203125),(169,629,0),(170,475,0),(171,2346,2213.781005859375),(172,971,0),(173,780,0),(174,1527,1332.35791015625),(175,1089,0),(176,822,624.17626953125),(177,1434,1311.692138671875),(178,1554,1362.744384765625),(179,165,0.7041015625),(180,550,364.0418701171875),(181,2415,2344.028076171875),(182,6230,6149.9755859375),(183,1056,908.1007080078125),(184,359,0),(185,1978,1873.140625),(186,1481,1348.41162109375),(187,812,641.8221435546875),(188,1594,1399.702880859375),(189,1348,0),(190,392,0),(191,602,0),(192,1300,1132.043212890625),(193,530,0),(194,1884,1747.9267578125),(195,469,0),(196,542,0),(197,190,33.6220703125),(198,1198,995.4129638671875),(199,1046,875.815673828125),(200,583,0),(201,1453,0),(202,745,524.2935791015625),(203,1148,971.3310546875),(204,1716,1497.2987060546875),(205,399,293.464111328125),(206,563,0),(207,460,188.6466064453125),(208,1662,1422.4169921875),(209,785,658.1065673828125),(210,1041,867.6943359375),(211,1748,1539.3614501953125),(212,1537,1395.6224365234375),(213,2162,1962.081787109375),(214,493,202.148681640625),(215,1059,872.42529296875),(216,1371,0),(217,1013,817.4765625),(218,4069,3921.358642578125),(219,2539,2343.71923828125),(220,543,205.38763427734375),(221,742,0),(222,970,756.493408203125),(223,709,499.42041015625),(224,945,647.529296875),(225,974,0),(226,926,0),(227,2104,0),(228,700,0),(229,958,628.468505859375),(230,1463,1215.328857421875),(231,666,488.306884765625),(232,683,483.104736328125),(233,765,487.7724609375),(234,1258,1049.2945556640625),(235,953,742.6466064453125),(236,886,666.017578125),(237,794,451.718994140625),(238,376,0),(239,561,327.8868408203125),(240,1284,1046.804931640625),(241,979,0),(242,742,0),(243,704,402.891357421875),(244,486,0),(245,4048,3836.368896484375),(246,1524,1223.763671875),(247,1352,1163.864990234375),(248,478,233.206787109375),(249,552,334.0064697265625),(250,867,694.808349609375),(251,1136,876.4739990234375),(252,360,0),(253,513,143.3883056640625),(254,379,0),(255,519,261.18463134765625),(256,1064,0),(257,920,0),(258,766,520.63330078125),(259,116,0),(260,850,0),(261,383,143.154541015625),(262,956,712.5018310546875),(263,391,0),(264,1078,0),(265,374,0),(266,708,0),(267,1604,1480.6571044921875),(268,621,405.794189453125),(269,510,0),(270,563,374.5667724609375),(271,350,0),(272,904,0),(273,434,0),(274,745,451.729736328125),(275,590,228.9422607421875),(276,3035,2788.025390625),(277,1056,859.2237548828125),(278,531,0),(279,652,414.77392578125),(280,2036,1834.369140625),(281,483,0),(282,1490,1255.5941162109375),(283,915,0),(284,685,433.43780517578125),(285,5160,0),(286,374,77.61376953125),(287,519,0),(288,796,0),(289,623,309.8590087890625),(290,867,0),(291,696,0),(292,2920,2727.547119140625),(293,145,0),(294,741,441.32470703125),(295,424,117.49139404296875),(296,1098,0),(297,771,478.65679931640625),(298,796,534.1936645507812),(299,914,592.831787109375),(300,1026,0),(301,1738,1502.908935546875),(302,948,0),(303,384,0),(304,1009,712.748046875),(305,1179,1015.2242431640625),(306,5936,5641.57421875),(307,739,0),(308,508,311.35107421875),(309,2052,1826.403564453125),(310,842,536.6612548828125),(311,264,0),(312,412,0),(313,1481,0),(314,562,0),(315,1339,1027.609619140625),(316,1372,1051.7789306640625),(317,597,279.73492431640625),(318,1464,1227.785400390625),(319,1039,794.910400390625),(320,1269,1043.7874755859375),(321,1632,1384.5791015625),(322,523,0),(323,757,437.3153076171875),(324,826,0),(325,3112,2859.83642578125),(326,1271,0),(327,758,450.3853759765625),(328,1020,690.76806640625),(329,1013,0),(330,1134,842.195068359375),(331,859,518.437255859375),(332,1223,947.896728515625),(333,898,0),(334,837,644.3759765625),(335,1324,1029.200439453125),(336,1178,0),(337,555,0),(338,1035,733.87890625),(339,996,734.642578125),(340,881,528.494873046875),(341,1072,755.9267578125),(342,1100,0),(343,1740,1624.193359375),(344,472,229.601806640625),(345,669,0),(346,1225,908.89990234375),(347,1639,1412.02783203125),(348,875,0),(349,1002,844.705322265625),(350,599,377.12109375),(351,2087,1818.977783203125),(352,2497,2196.953369140625),(353,697,0),(354,1253,0),(355,1212,0),(356,609,0),(357,1583,1335.139892578125),(358,343,68.902099609375),(359,980,666.0982666015625),(360,769,449.90582275390625),(361,448,0),(362,399,0),(363,653,0),(364,435,0),(365,2438,0),(366,842,500.01171875),(367,996,805.4853515625),(368,1285,0),(369,1652,0),(370,780,590.8535766601562),(371,1283,1135.3548583984375),(372,939,695.672607421875),(373,1242,1025.131591796875),(374,279,0),(375,946,605.1678466796875),(376,1315,989.085693359375),(377,409,119.589599609375),(378,880,633.247314453125),(379,820,559.5301513671875),(380,1026,826.3638916015625),(381,1280,1069.565673828125),(382,1760,1547.3251953125),(383,1468,1287.4947509765625),(384,1186,954.47900390625),(385,823,750.8409423828125),(386,4157,0),(387,1143,0),(388,1869,0),(389,780,479.8828125),(390,1364,1126.8963623046875),(391,3298,3114.184814453125),(392,1554,1317.048828125),(393,2687,2487.597900390625),(394,618,0),(395,3551,3306.875732421875),(396,727,466.93310546875),(397,794,0),(398,1795,1607.25927734375),(399,549,265.76141357421875),(400,2411,2182.290283203125),(401,581,0),(402,829,0),(403,307,0),(404,1794,1652.210205078125),(405,323,0),(406,949,686.4957275390625),(407,492,0),(408,869,695.00390625),(409,869,0),(410,859,0),(411,424,0),(412,2722,0),(413,910,0),(414,479,0),(415,747,580.90283203125),(416,446,184.316162109375),(417,517,0),(418,449,249.513427734375),(419,676,449.830078125),(420,1598,0),(421,702,472.674072265625),(422,1760,0),(423,950,765.2879638671875),(424,136,0),(425,424,0),(426,598,443.881591796875),(427,2369,2145.50146484375),(428,910,679.2818603515625),(429,616,447.86651611328125),(430,1394,0),(431,874,0),(432,411,0),(433,856,0),(434,669,0),(435,1454,0),(436,770,0),(437,795,597.281005859375),(438,1283,1089.4130859375),(439,346,0),(440,1068,932.9443359375),(441,749,0),(442,995,0),(443,1230,0),(444,1239,1095.7142333984375),(445,679,0),(446,857,0),(447,3146,0),(448,617,481.155517578125),(449,478,0),(450,1430,0),(451,942,0),(452,1333,1183.1722412109375),(453,211,0),(454,1276,0),(455,246,82.84912109375),(456,1808,1658.395263671875),(457,1152,949.8623046875),(458,871,0),(459,740,537.63525390625),(460,6246,0),(461,1109,925.96142578125),(462,547,395.9710693359375),(463,509,353.0673828125),(464,875,708.8896484375),(465,762,585.2532958984375),(466,508,361.83929443359375),(467,691,549.0919189453125),(468,1564,0),(469,1390,1216.5244140625),(470,1434,1223.3162841796875),(471,497,344.17938232421875),(472,1501,0),(473,525,341.487548828125),(474,1142,0),(475,549,0),(476,1984,1886.6328125),(477,1175,0),(478,1256,1110.403564453125),(479,1857,1725.144287109375),(480,440,0),(481,397,255.3719482421875),(482,3120,2963.021240234375),(483,695,0),(484,1222,1094.4273681640625),(485,1416,0),(486,1002,0),(487,1168,1078.685546875),(488,869,758.5185546875),(489,2660,2540.926513671875),(490,615,0),(491,475,363.9578857421875),(492,1461,0),(493,756,0),(494,845,750.1639404296875),(495,953,0),(496,991,0),(497,435,0),(498,1403,0),(499,649,506.9736328125),(500,953,845.100341796875),(501,1437,0),(502,747,0),(503,598,455.49169921875),(504,785,646.175048828125),(505,7519,7414.904296875),(506,794,0),(507,1232,0),(508,386,0),(509,742,0),(510,1093,972.8983154296875),(511,871,789.7421875),(512,302,205.265625),(513,1197,0),(514,1163,1069.5555419921875),(515,1155,1030.4610595703125),(516,1286,1192.0933837890625),(517,1144,0),(518,863,773.7236328125),(519,563,446.1416015625),(520,924,0),(521,1321,0),(522,953,849.7664794921875),(523,1051,963.437744140625),(524,327,0),(525,1454,1405.2169189453125),(526,726,630.326171875),(527,977,898.735595703125),(528,126,0),(529,1219,1161.9027099609375),(530,638,569.163818359375),(531,666,0),(532,691,614.9361572265625),(533,406,0),(534,2088,0),(535,1374,1270.81591796875),(536,914,813.39697265625),(537,1142,1094.5029296875),(538,798,0),(539,1444,1356.67822265625),(540,857,0),(541,335,0),(542,532,459.27288818359375),(543,1147,1063.7271728515625),(544,692,627.576416015625),(545,787,0),(546,1011,0),(547,620,541.5448608398438),(548,1044,972.54345703125),(549,290,251.2784423828125),(550,473,0),(551,825,762.49169921875),(552,1521,0),(553,498,0),(554,1442,1354.2052001953125),(555,514,0),(556,3588,3524.735595703125),(557,1578,0),(558,671,614.628173828125),(559,1513,1474.052001953125),(560,1061,1014.944091796875),(561,2411,2382.262939453125),(562,657,0),(563,779,0),(564,481,426.53997802734375),(565,3505,0),(566,891,853.47119140625),(567,1389,1343.7703857421875),(568,1286,1247.0792236328125),(569,183236,0),(570,1141,0),(571,623,599.8941650390625),(572,1070,1021.656494140625),(573,617,0),(574,1080,1044.0211181640625),(575,2247,2212.991455078125),(576,404,0),(577,996,952.707763671875),(578,631,597.346435546875),(579,551,0),(580,1297,1281.3331298828125),(581,484,451.7603759765625),(582,764,0),(583,1065,1020.0880126953125),(584,2473,2450.69189453125),(585,1204,0),(586,985,955.99169921875),(587,1166,1140.421142578125),(588,332,315.9603271484375),(589,919,0),(590,1408,0),(591,1151,1110.9208984375),(592,679,646.901611328125),(593,981,950.3115234375),(594,396,365.416015625),(595,718,0),(596,1898,0),(597,563,0),(598,571,556.0545654296875),(599,582,0),(600,750,0),(601,1126,1117.895751953125),(602,1169,1138.495849609375),(603,1746,1715.873779296875),(604,415,387.9420166015625),(605,411,394.2991943359375),(606,2443,2422.882080078125),(607,606,588.35595703125),(608,2129,0),(609,604,584.0115966796875),(610,1011,998.253662109375),(611,706,692.1373291015625),(612,663,648.184814453125),(613,1828,0),(614,938,0),(615,8480,8462.833984375),(616,4282,4295.8544921875),(617,1523,1524.93408203125),(618,1725,1725.341552734375),(619,1191,1180.98583984375),(620,904,895.42236328125),(621,745,0),(622,6418,0),(623,1343,1346.522705078125),(624,841,0),(625,662,653.6541748046875),(626,1177,1177.46728515625),(627,446,0),(628,944,0),(629,679,668.9052734375),(630,874,0),(631,908,0),(632,4171,4170.2314453125),(633,628,613.7601318359375),(634,1398,1401.15087890625),(635,783,777.23046875),(636,318,312.6187744140625),(637,1408,1407.822509765625),(638,1307,1317.89892578125),(639,1262,1258.038330078125),(640,2007,0),(641,2477,2487.179931640625),(642,772,0),(643,528,0),(644,634,0),(645,686,0),(646,1379,1371.6446533203125),(647,992,0),(648,5788,5783.724609375),(649,570,0),(650,1063,0),(651,803,0),(652,1052,1050.6756591796875),(653,446,438.919189453125),(654,165,0),(655,971,969.2083740234375),(656,856,0),(657,1078,0),(658,2135,2127.922119140625),(659,285,285.3148193359375),(660,1141,0),(661,976,988.313232421875),(662,748,0),(663,911,909.3975830078125),(664,1024,0),(665,888,888.3399658203125),(666,454,453.807861328125),(667,2551,2566.6376953125);
/*!40000 ALTER TABLE `ann_result_train` ENABLE KEYS */;
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
