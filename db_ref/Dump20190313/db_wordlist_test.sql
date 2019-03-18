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
-- Table structure for table `wordlist_test`
--

DROP TABLE IF EXISTS `wordlist_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wordlist_test` (
  `id` int(11) DEFAULT NULL,
  `seq_all` int(11) DEFAULT NULL,
  `real_val` int(11) DEFAULT NULL,
  `word_index` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wordlist_test`
--

LOCK TABLES `wordlist_test` WRITE;
/*!40000 ALTER TABLE `wordlist_test` DISABLE KEYS */;
INSERT INTO `wordlist_test` VALUES (0,255,1941,'5,7,20,28,31,41,51,70,74,87,133,158,167,225,361,624,896,1024,1115,3696,3768,3848,4609,4623,'),(1,238,539,'1,2,4,6,8,11,12,14,28,31,45,49,165,171,301,341,385,435,891,1187,3742,3967,4212,4623,'),(2,807,373,'2,4,10,14,16,20,31,37,40,49,99,165,193,435,564,888,1261,2202,2203,2204,3733,3799,3829,4623,'),(3,216,878,'1,3,5,9,10,21,105,140,143,154,161,176,190,194,229,261,264,390,751,752,3732,3734,3736,4623,'),(4,385,549,'1,8,24,32,43,60,103,115,134,445,488,591,661,706,814,1244,1245,1246,2164,2165,3813,4190,4191,4623,'),(5,452,633,'3,7,13,24,48,55,58,63,134,140,196,220,256,363,923,1169,1326,1327,2574,2575,3982,4313,4314,4623,'),(6,453,1645,'6,7,8,9,10,11,16,19,23,25,50,115,116,147,202,236,272,395,1423,2716,3781,3960,4365,4623,'),(7,8,1423,'15,21,45,106,198,414,455,585,606,2717,2718,2719,2720,2721,2722,2723,2724,2725,2726,3812,3862,4366,4623,'),(8,437,809,'3,6,7,8,10,14,16,31,70,97,130,163,186,284,315,445,508,761,1005,1580,3735,3736,3868,4623,'),(9,622,1133,'5,9,10,17,19,26,50,56,87,138,149,150,500,736,1036,1416,2697,2698,2699,2700,4351,4352,4353,4623,'),(10,549,909,'2,6,8,12,54,61,69,78,82,131,137,202,226,237,476,609,1271,1328,1366,3174,3784,3818,3875,4623,'),(11,692,2794,'1,2,10,17,22,37,55,77,81,109,191,308,385,651,965,969,1253,1421,2988,2989,3734,3832,4410,'),(12,729,5995,'1,5,21,143,156,174,176,218,245,261,308,748,920,986,987,988,3330,3331,3739,3740,3776,'),(13,467,1138,'1,9,10,17,38,41,45,101,121,141,154,192,238,250,372,486,1166,3426,3427,3428,3734,3813,4532,4623,'),(14,274,1477,'3,9,17,18,25,32,35,42,47,55,60,62,80,84,120,159,228,397,439,1422,3739,3740,3741,'),(15,527,554,'2,4,5,13,14,22,41,74,77,98,243,263,369,422,562,718,1256,2304,2305,2306,3971,4222,4223,4623,'),(16,581,2757,'12,15,24,47,73,218,292,511,533,937,1447,1468,2927,2928,2929,2930,2931,2932,3784,3818,3875,4623,'),(17,813,224,'3,16,44,63,290,299,335,374,479,610,611,612,704,742,744,1490,3076,3077,3078,3079,3756,3864,4431,4623,'),(18,726,1054,'1,6,9,12,15,22,28,51,56,74,123,149,158,179,213,225,284,624,1395,3670,3768,3847,4604,4623,'),(19,523,934,'3,6,7,8,14,31,54,119,139,175,254,262,271,272,389,659,730,1177,3422,3423,3815,3989,4530,4623,'),(20,364,1062,'9,10,17,55,79,80,81,93,159,412,448,529,965,1124,1203,1396,1466,2916,2917,2918,3770,3774,3775,'),(21,768,955,'2,3,7,8,10,11,16,23,31,34,68,71,89,147,156,163,186,298,392,1366,3735,3736,3871,4623,'),(22,701,434,'3,4,5,6,9,17,38,61,243,326,343,461,562,917,3537,3538,3539,3540,3541,3542,3742,4019,4565,4623,'),(23,187,599,'2,12,18,37,38,79,81,95,101,422,587,700,715,1373,1538,3347,3348,3349,3350,3351,4016,4515,4516,4623,'),(24,732,583,'13,35,41,59,67,170,189,221,249,251,310,514,870,1221,1222,2074,2075,2076,2077,2078,3733,3826,4155,4623,'),(25,457,664,'1,2,4,12,45,59,66,102,189,339,380,431,1265,1456,1546,3431,3432,3433,3434,3435,3733,3785,4536,4623,'),(26,111,3510,'4,5,6,7,8,11,12,14,19,28,36,54,137,150,167,510,838,949,1423,2738,3952,4369,4370,4623,'),(27,827,659,'3,6,8,11,17,31,53,64,70,72,108,119,139,253,254,262,415,556,774,1127,3734,3736,4103,4623,'),(28,382,729,'1,4,6,13,15,51,53,67,95,122,148,213,378,434,441,469,1465,3709,3710,3711,3891,3979,4616,4623,'),(29,17,809,'4,12,15,45,72,77,100,150,177,190,199,275,300,465,526,588,1377,1378,2567,2568,3757,3910,4312,4623,'),(30,81,1775,'1,4,7,8,12,71,81,90,97,199,263,287,310,398,449,510,619,620,770,1598,3753,3777,3778,4623,'),(31,218,2635,'3,7,10,16,17,22,32,47,55,80,159,448,776,819,1100,1800,1801,1802,1803,1804,3930,4076,4077,4623,'),(32,412,527,'5,7,11,14,19,21,22,25,35,121,128,140,243,399,453,562,1182,1247,2170,2171,3732,3804,4192,4623,'),(33,637,1180,'3,14,20,72,73,88,90,99,111,190,203,545,671,816,1168,1397,2633,2634,2635,2636,3779,3781,3893,4623,'),(34,762,991,'4,8,11,18,20,23,38,40,49,64,139,165,444,564,758,874,978,3210,3211,3212,3747,3807,3838,4623,'),(35,207,1148,'5,21,22,52,70,121,143,176,261,279,390,397,451,601,608,751,752,1381,3521,3522,3776,4561,4562,4623,'),(36,448,850,'112,367,590,697,698,875,1095,1235,1236,1237,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145,3786,3920,3921,4623,'),(37,117,278,'13,23,47,81,159,257,303,306,339,490,550,593,1210,1275,1418,1419,1420,1421,2710,2711,3743,3744,3832,'),(38,94,1437,'9,39,103,291,297,317,336,363,373,424,456,524,668,669,784,1143,1144,1875,1876,1877,3872,4106,4107,4623,'),(39,623,1437,'2,3,6,8,10,11,16,21,24,28,92,98,108,116,132,179,203,357,419,663,3735,4086,4087,4623,'),(40,587,838,'1,13,18,22,26,40,47,51,58,96,173,196,235,269,918,977,1382,1513,3175,3176,3738,3746,4461,'),(41,314,1888,'12,15,73,276,548,588,698,818,975,1086,1099,1496,3087,3088,3089,3090,3091,3755,3763,4435,4623,'),(42,73,241,'3,38,48,57,63,75,192,253,256,290,523,669,923,1326,1327,2401,2402,2403,2404,2405,3850,4254,4255,4623,'),(43,154,1084,'3,4,5,6,7,11,38,59,71,81,120,185,234,371,449,468,469,542,813,814,3732,3762,3811,4623,'),(44,590,911,'5,8,11,21,24,42,52,54,68,71,143,156,278,423,429,518,520,1976,1977,1978,3732,3854,3948,4623,'),(45,298,1632,'2,4,5,10,11,19,25,34,53,69,82,85,86,91,132,209,278,354,476,3098,3732,3752,4438,4623,'),(46,34,322,'1,3,4,7,9,15,19,27,30,56,142,154,190,242,300,331,379,420,567,709,3734,3742,3978,4623,'),(47,175,469,'3,7,9,11,16,34,103,134,184,246,290,362,518,629,630,1006,1038,1647,1648,1649,3732,3759,3837,4623,'),(48,801,2589,'9,12,15,32,38,73,181,325,382,544,1191,2028,2029,2030,2031,2032,2033,2034,2035,2036,4147,4148,4149,4623,'),(49,804,1356,'2,12,21,106,141,180,182,381,465,719,723,729,862,3630,3631,3632,3633,3634,3635,3757,4593,4594,4623,'),(50,617,910,'2,4,10,11,21,25,43,53,66,85,86,209,279,453,498,984,1343,3643,3644,3645,3732,3752,3862,4623,'),(51,597,535,'2,4,6,8,14,20,40,41,49,64,90,92,96,111,1494,1511,3162,3163,3164,3165,3738,4458,4459,'),(52,484,4509,'15,26,33,82,102,168,169,302,364,483,583,666,728,836,865,1404,1499,3112,3113,3114,3734,3874,4009,4623,'),(53,223,1719,'1,3,4,8,9,26,38,51,78,87,112,158,161,194,269,270,468,710,1359,2798,3767,3780,3800,4623,'),(54,776,2037,'2,7,8,9,10,11,12,14,17,20,23,24,34,36,49,68,71,257,316,396,3735,3743,3744,'),(55,584,833,'9,13,33,35,42,58,274,282,973,980,1386,3556,3557,3558,3559,3560,3561,3562,3563,3564,3745,3748,3816,'),(56,408,442,'1,2,5,25,34,37,38,86,160,172,280,345,457,877,974,1494,1495,3082,3083,3084,3732,3752,4007,4623,'),(57,763,4027,'2,3,5,10,34,44,86,91,123,148,153,176,204,229,245,374,390,733,1396,2630,3732,3758,4333,4623,'),(58,657,3331,'5,12,15,33,36,42,91,129,169,215,248,326,512,801,826,1499,3523,3524,3525,3526,3840,3926,4563,4623,'),(59,785,1118,'1,4,6,15,22,26,27,33,42,60,69,109,123,187,266,332,336,720,960,1297,3733,3851,3961,4623,'),(60,642,855,'3,4,16,19,25,28,29,35,50,75,128,259,360,362,377,441,607,667,1108,1477,4575,4576,4577,4623,'),(61,388,605,'1,2,6,7,8,11,26,36,60,124,154,187,203,236,332,619,724,761,905,953,3772,4472,4473,4623,'),(62,47,1935,'1,5,9,18,47,56,145,162,208,277,281,394,516,543,810,845,941,2583,2584,2585,3991,4317,4318,4623,'),(63,358,1241,'10,60,72,247,530,635,1053,1054,1055,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,3733,3839,4054,4623,'),(64,331,570,'2,5,10,21,52,66,175,209,256,305,346,426,576,716,1225,1284,2518,2519,2520,2521,3732,3752,4300,4623,'),(65,19,701,'10,11,20,29,30,52,83,86,92,99,104,108,160,193,196,227,356,2451,2452,2453,3732,3766,4273,4623,'),(66,697,1161,'3759,3833,3834,'),(67,686,5837,'1,21,156,161,174,176,183,194,241,245,261,308,748,986,987,988,992,1521,1537,3739,3740,3776,'),(68,65,3389,'1,12,177,181,248,362,642,648,925,1394,1462,1473,1474,1475,3316,3317,3318,3319,3320,3840,4004,4507,4623,'),(69,242,902,'2,4,7,9,12,17,20,22,90,98,111,124,155,174,191,263,287,318,398,412,3732,3791,3925,4623,'),(70,747,872,'2,3,8,14,15,28,49,53,60,99,179,187,193,254,285,714,789,1136,1265,2218,3733,3737,3829,4623,'),(71,148,4980,'32,37,67,166,204,245,428,472,475,499,614,703,1113,1532,3470,3471,3472,3473,3474,3823,3846,4548,4623,'),(72,101,963,'3,7,8,9,16,17,27,35,44,63,72,132,163,188,265,374,579,679,1958,1959,3735,3736,4128,4623,'),(73,50,503,'2,3,16,27,28,31,64,88,108,130,135,145,192,254,330,366,556,783,1126,1127,3734,3874,3883,4623,'),(74,798,826,'10,11,12,14,48,53,57,63,100,118,243,461,532,637,792,793,794,1060,1699,1700,3790,3841,4056,4623,'),(75,535,872,'9,15,35,181,222,279,562,648,912,1105,1239,3613,3614,3615,3616,3617,3618,3619,3620,3621,3826,4590,4591,4623,'),(76,60,2332,'3,10,14,16,18,20,21,24,37,56,144,208,281,308,389,443,961,962,1471,2958,3734,3968,4000,4623,'),(77,320,701,'2,4,10,13,18,39,59,125,205,249,274,531,535,536,537,636,644,790,800,1058,3733,3820,3877,4623,'),(78,691,546,'5,6,11,12,34,52,61,78,100,118,143,248,602,927,1328,2420,2421,2422,2423,2424,3757,4261,4262,4623,'),(79,537,1923,'2,5,13,37,116,148,149,155,167,175,182,191,391,425,943,982,983,1033,3328,3329,3734,3759,4509,4623,'),(80,205,1788,'1,12,15,42,94,325,544,945,1082,1097,1473,1474,1475,2962,2963,2964,2965,2966,2967,3757,3840,4004,4623,'),(81,635,604,'2,7,10,13,62,94,95,100,140,192,295,302,430,453,494,569,1234,2122,2123,2124,3761,4175,4176,4623,'),(82,696,1669,'11,12,18,46,68,90,111,117,135,165,188,358,435,444,627,712,1258,1517,3206,3207,3732,3782,3841,4623,'),(83,810,1114,'1,29,30,33,51,52,62,83,221,249,255,320,735,985,1200,1526,3339,3340,3341,3342,3766,3951,4512,4623,'),(84,673,441,'2,14,20,24,49,89,90,92,108,124,193,431,433,1008,1150,1219,1557,1558,3662,3663,3779,3829,4601,'),(85,90,663,'2,13,18,29,40,42,46,50,113,114,183,224,303,470,685,3272,3273,3274,3275,3276,3745,3748,4011,'),(86,794,2150,'3761,4082,4083,'),(87,796,2038,'6,8,14,19,22,32,53,54,61,76,84,150,233,246,359,404,580,583,609,890,3794,3795,3796,'),(88,480,397,'2,4,12,14,20,49,90,92,151,193,262,376,541,675,1298,1464,1525,1557,1558,3605,3737,3829,4589,4623,'),(89,787,550,'33,128,223,240,295,342,437,438,440,538,582,626,717,738,857,861,1022,1443,1444,2790,3739,3740,3741,'),(90,663,1416,'3,5,6,7,15,32,58,70,101,124,133,151,158,167,207,232,934,1449,3581,3582,3853,4579,4580,4623,'),(91,85,827,'5,8,35,48,70,135,146,158,183,216,247,375,417,662,806,934,3255,3256,3257,3258,3849,3929,4486,4623,'),(92,775,950,'5,6,15,42,61,266,310,656,823,824,1025,1104,1105,1815,1816,1817,1818,1819,1820,1821,3732,3846,3881,4623,'),(93,666,944,'2,10,11,13,20,23,32,40,44,46,58,95,104,129,139,421,564,899,3554,3555,4570,4571,4572,4623,'),(94,339,577,'4,5,10,14,20,34,40,42,46,60,96,104,187,278,317,424,747,878,974,3259,3732,3738,4487,4623,'),(95,699,465,'4,6,9,12,19,32,35,65,67,95,122,196,201,342,470,1245,2468,2469,2470,2471,3754,3870,3903,4623,'),(96,819,1379,'1,13,19,21,30,52,66,82,166,182,191,229,299,378,605,614,756,982,3345,3346,3734,4014,4015,4623,'),(97,517,1036,'11,34,86,129,209,233,402,942,984,1215,1407,1444,1548,1554,3681,3682,3683,3684,3685,3686,3732,3902,4607,4623,'),(98,748,409,'5,9,22,28,48,57,64,158,213,341,411,741,872,1027,1172,1463,1464,2903,2904,2905,3768,3848,4392,4623,'),(99,486,1201,'9,10,13,17,29,37,38,46,47,60,81,141,160,397,448,482,1348,3475,3476,3477,4017,4018,4549,'),(100,463,367,'1,5,15,23,27,30,38,181,198,256,277,303,465,466,585,809,898,1402,2806,2807,3732,3898,4375,4623,'),(101,386,2462,'1,2,7,9,11,14,19,25,33,42,50,87,147,210,233,236,411,731,1417,2750,3739,3740,3741,'),(102,181,1125,'1,2,9,12,28,53,56,81,109,118,164,172,189,341,1325,2576,2577,2578,2579,2580,3737,3822,4315,4623,'),(103,195,2066,'1,13,18,107,342,450,451,513,1135,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,3733,3747,3915,4623,'),(104,265,1481,'3,10,11,14,16,17,20,24,32,49,67,71,92,116,203,357,419,464,693,694,3743,3744,3958,'),(105,341,1495,'3,10,13,17,21,24,36,67,81,95,197,258,302,365,396,685,1280,1281,2273,2274,3742,3970,4218,4623,'),(106,742,1897,'1,2,15,25,30,33,34,66,68,78,79,85,110,121,160,209,219,305,2475,2476,3732,3752,4283,4623,'),(107,107,2428,'1,3,8,14,24,31,49,89,97,110,131,135,199,272,389,488,1303,1551,3449,3450,3733,3801,4544,4623,'),(108,752,804,'3,7,8,14,16,20,23,27,30,34,64,92,105,108,115,186,231,415,558,1136,3736,3781,3793,4623,'),(109,49,1344,'94,269,325,367,369,475,544,652,804,1076,1083,1545,3491,3492,3493,3494,3495,3496,3497,3498,3757,3876,4557,4623,'),(110,268,1175,'2,6,8,16,27,32,35,43,54,115,152,188,219,248,269,273,294,791,1059,1698,3737,3764,3840,4623,'),(111,683,681,'5,30,33,42,50,52,58,65,91,127,166,260,302,319,328,483,499,674,2282,2283,3732,3854,3948,4623,'),(112,59,659,'1,4,9,15,17,36,74,118,235,266,326,344,670,688,928,972,3308,3309,3310,3311,4504,4505,4506,4623,'),(113,708,1141,'3,12,15,69,73,76,177,178,233,321,368,631,642,643,1072,1073,1074,1729,1730,1731,3755,3763,3922,4623,'),(114,735,823,'2,4,13,16,17,23,37,67,81,119,133,180,263,507,671,682,707,719,3371,3372,3750,3751,3765,'),(115,3,824,'2,3,7,8,12,24,35,51,54,60,61,68,93,137,138,219,267,283,389,558,3736,3737,3764,4623,'),(116,194,122,'1,5,17,28,51,52,213,225,352,756,994,995,996,997,1564,1565,1566,1567,1568,1569,3782,3789,4026,4623,'),(117,16,249,'1,2,12,13,28,37,44,48,57,74,93,96,127,130,132,134,136,196,305,586,3734,3943,4163,4623,'),(118,741,1871,'1,2,17,22,23,133,158,167,214,448,509,1014,1015,1016,1592,1593,1594,1595,1596,1597,3753,3777,3778,4623,'),(119,84,1863,'1,6,7,8,14,27,88,94,97,110,170,272,355,380,501,622,901,958,1549,1550,3733,3793,3861,4623,'),(120,415,669,'1,4,6,8,26,53,161,235,246,416,472,552,553,821,822,1103,1811,1812,1813,1814,3733,3823,3932,4623,'),(121,754,924,'5,11,12,27,30,31,34,43,62,68,76,86,101,110,116,164,178,316,577,2640,3759,3901,4335,4623,'),(122,516,1367,'1,4,9,12,15,38,59,149,221,248,326,368,649,656,1189,1445,1553,3505,3506,3507,3894,4020,4558,4623,'),(123,760,706,'1,9,15,36,65,131,157,181,344,567,629,921,1207,1397,1461,2898,2899,2900,2901,2902,4389,4390,4391,4623,'),(124,598,1097,'1,6,7,8,9,14,31,54,62,63,119,204,247,265,283,351,501,753,754,755,3753,3801,3867,4623,'),(125,56,1115,'2,4,19,25,63,85,86,94,172,191,217,218,353,401,402,485,503,739,857,952,3732,3742,3752,4623,'),(126,286,1563,'13,41,103,104,125,153,250,297,410,534,639,640,796,797,798,1056,1067,1068,1720,3733,3760,3809,4623,'),(127,576,936,'1,4,8,12,15,52,53,151,171,211,214,310,346,376,560,599,691,1298,1299,2327,3733,3742,3831,4623,'),(128,449,349,'1,3,7,16,44,63,174,290,324,349,479,505,610,611,612,742,743,1488,1489,3067,3756,3788,3907,4623,'),(129,740,480465,'1,7,21,43,67,94,198,294,365,372,373,403,406,1120,1422,2712,2713,2714,2715,3733,3760,3809,4623,'),(130,511,1318,'1,3,16,27,94,110,210,231,272,380,760,779,780,808,958,1004,1398,1549,3447,3448,3733,3861,4543,4623,'),(131,23,1086,'1,2,12,15,27,61,70,101,114,126,219,265,302,343,609,728,836,1223,2883,2884,3764,3938,4387,4623,'),(132,69,1454,'1,2,6,8,26,65,69,75,112,123,157,201,286,360,401,1025,1026,1613,1614,1615,3732,3805,3914,4623,'),(133,656,1128,'7,48,57,64,88,120,170,206,247,294,328,363,371,372,373,463,535,806,1066,1088,3735,3811,3927,4623,'),(134,690,1367,'1,22,29,52,83,102,127,141,223,277,320,739,759,1180,1432,1493,3245,3246,3247,3248,3732,4012,4483,4623,'),(135,464,3187,'3,5,21,91,176,231,245,261,429,604,702,749,750,751,990,991,992,1153,1533,3327,3739,3740,3776,'),(136,722,1347,'32,47,55,81,84,107,124,159,190,216,228,238,304,819,1061,1427,2751,2752,2753,2754,3739,3740,3741,'),(137,589,768,'4,13,14,16,17,20,49,84,90,92,99,151,193,311,376,830,947,1538,3406,3407,3779,4003,4527,4623,'),(138,119,984,'44,53,63,174,183,225,349,505,572,609,737,1400,1484,3092,3093,3094,3095,3096,3097,3756,3788,3864,4623,'),(139,201,808,'2,11,13,20,24,46,58,82,95,119,139,311,408,415,421,477,482,557,840,1128,3750,3751,3786,'),(140,446,657,'3,6,11,15,20,23,27,30,34,59,67,89,92,108,121,140,693,694,2110,2111,3735,3736,3781,4623,'),(141,518,1352,'6,18,28,36,39,41,69,82,100,106,118,164,304,315,330,344,489,533,1119,2709,3768,3998,3999,4623,'),(142,614,2188,'2,7,8,9,11,16,22,37,46,48,49,54,111,137,163,174,301,422,686,2906,3735,3743,3744,'),(143,241,876,'6,8,11,14,15,16,17,19,30,61,147,179,242,246,930,980,1486,3156,3157,3158,3757,4455,4456,4623,'),(144,399,1119,'12,15,32,177,181,467,486,590,690,697,875,1179,1235,1236,2212,2213,2214,2215,2216,2217,3732,3844,3845,4623,'),(145,120,613,'1,4,6,8,21,26,31,36,45,65,122,123,180,220,256,601,1144,2609,2610,2611,3734,3785,3798,4623,'),(146,248,478,'5,10,13,14,41,75,102,140,170,256,264,417,797,1145,1146,1147,1883,1884,1885,1886,3805,4109,4110,4623,'),(147,688,1193,'15,17,38,46,82,89,147,195,199,341,413,431,477,482,489,664,882,1269,2226,2227,3732,3824,4208,4623,'),(148,639,765,'1,2,10,14,25,33,62,85,127,132,141,166,168,187,220,305,314,359,437,458,3816,4008,4016,4623,'),(149,723,928,'5,8,13,26,42,58,61,104,126,141,150,253,416,422,635,670,1059,1337,1339,1520,3843,4005,4470,4623,'),(150,685,1085,'1,2,4,10,24,38,42,45,83,85,160,172,218,280,382,1523,3408,3409,3410,3411,3733,3734,3742,4623,'),(151,185,3185,'65,161,179,194,310,429,463,499,604,614,749,773,1529,1530,1531,1532,1533,3313,3314,3315,3739,3740,3776,'),(152,435,631,'1,4,7,10,13,25,28,29,39,121,131,172,295,805,1219,2066,2067,2068,2069,2070,3733,3797,4154,4623,'),(153,244,756,'2,5,6,7,11,28,30,36,54,88,114,147,149,163,271,291,439,1413,2694,2695,3772,3821,4350,4623,'),(154,239,308,'2,3,10,11,13,24,40,41,43,64,80,81,119,137,139,174,257,340,497,557,3751,3786,4207,'),(155,61,750,'2,12,15,21,76,150,204,208,219,338,565,1098,1262,1263,2205,2206,2207,2208,2209,3737,3764,4205,4623,'),(156,698,1096,'15,24,38,73,125,325,801,802,1075,1076,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,3737,3764,4062,4623,'),(157,318,1210,'3,7,16,27,28,31,74,110,116,140,142,143,152,176,264,355,392,761,3343,3344,3733,3853,4513,4623,'),(158,563,519,'15,41,73,78,100,106,118,181,248,368,426,546,826,925,2413,2414,2415,2416,2417,2418,3812,4258,4259,4623,'),(159,567,1919,'1,6,7,11,26,38,56,87,113,123,162,179,347,369,395,795,803,1014,1125,3022,3732,4005,4422,4623,'),(160,829,1457,'1,2,25,45,66,69,85,132,148,447,503,645,726,1486,3037,3038,3039,3040,3041,3042,3733,4425,4426,4623,'),(161,543,1644,'1,3,13,31,38,58,89,94,101,142,174,252,315,331,379,466,1173,1300,1555,3720,3975,4617,4618,4623,'),(162,671,977,'1,3,16,25,44,56,75,112,202,208,268,281,282,324,441,521,607,968,1477,2977,3742,3749,3773,4623,'),(163,135,789,'4,11,13,14,34,49,62,71,121,140,1087,1110,1289,1467,1478,3267,3268,3269,3270,3757,4492,4493,4623,'),(164,650,1605,'9,35,39,103,297,317,363,373,403,406,410,424,456,524,571,575,784,1143,1170,1171,3886,4117,4118,4623,'),(165,750,425,'2,3,16,28,43,44,48,57,63,64,70,103,105,112,134,169,184,296,463,641,3735,3810,3936,4623,');
/*!40000 ALTER TABLE `wordlist_test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-18 14:06:43
