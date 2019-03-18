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
-- Table structure for table `word_index_context3`
--

DROP TABLE IF EXISTS `word_index_context3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `word_index_context3` (
  `value` int(11) DEFAULT NULL,
  `word` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_index_context3`
--

LOCK TABLES `word_index_context3` WRITE;
/*!40000 ALTER TABLE `word_index_context3` DISABLE KEYS */;
INSERT INTO `word_index_context3` VALUES (0,'喷水池'),(1,'电梯'),(2,'加装'),(3,'住宅'),(4,'施工'),(5,'实施'),(6,'住户'),(7,'集训'),(8,'文艺演出'),(9,'县'),(10,'东华大学'),(11,'教练员'),(12,'陈志辉'),(13,'海洋大学'),(14,'全队'),(15,'白祝鹏'),(16,'球员'),(17,'节能'),(18,'减排'),(19,'人均'),(20,'达'),(21,'龙岩市'),(22,'田佳良'),(23,'事件'),(24,'周运中'),(25,'错误'),(26,'言论'),(27,'处分'),(28,'co2'),(29,'稀土'),(30,'光催化'),(31,'催化活性'),(32,'盐'),(33,'瞬态'),(34,'广电集团'),(35,'策展'),(36,'无人机'),(37,'空中'),(38,'机器人'),(39,'自主'),(40,'亚太'),(41,'iarc'),(42,'清洁'),(43,'保洁'),(44,'27'),(45,'赛前'),(46,'赛场'),(47,'所有'),(48,'动合子'),(49,'gc'),(50,'β'),(51,'cgmp'),(52,'按'),(53,'蚊'),(54,'疟原虫'),(55,'聚集'),(56,'激活'),(57,'成熟'),(58,'cdc50a'),(59,'疟疾'),(60,'cupt'),(61,'倡议'),(62,'星洲'),(63,'陕州区'),(64,'陕州'),(65,'疾病'),(66,'2016'),(67,'积分'),(68,'甲组'),(69,'乙组'),(70,'短距离'),(71,'总'),(72,'身临'),(73,'企境'),(74,'电子商务'),(75,'险情'),(76,'值守'),(77,'责任人'),(78,'按照'),(79,'明治'),(80,'省赛'),(81,'创意设计'),(82,'菜园'),(83,'李渊'),(84,'杨贤金'),(85,'事项'),(86,'纳米'),(87,'界面'),(88,'with'),(89,'载体'),(90,'articles'),(91,'预警'),(92,'ⅳ'),(93,'热带'),(94,'低压'),(95,'秒'),(96,'偏西'),(97,'电子设计'),(98,'申请人'),(99,'优青'),(100,'国家自然科学基金委员会'),(101,'决定'),(102,'绿水青山'),(103,'之厦'),(104,'金山'),(105,'幸福'),(106,'壶关县'),(107,'村'),(108,'壶关'),(109,'外卖'),(110,'骑手'),(111,'16'),(112,'面上'),(113,'重大项目'),(114,'进攻'),(115,'实力'),(116,'守备'),(117,'打线'),(118,'比分'),(119,'棒'),(120,'垒球'),(121,'华东政法'),(122,'外国语'),(123,'北方工业大学'),(124,'贵金属'),(125,'筛查'),(126,'副司长'),(127,'控制'),(128,'制导'),(129,'csaa'),(130,'gncc2018'),(131,'中国航空学会'),(132,'旧址'),(133,'连城县'),(134,'农产品'),(135,'实地'),(136,'助力'),(137,'河长'),(138,'河长制'),(139,'河流'),(140,'河道'),(141,'厦梦'),(142,'江河'),(143,'见'),(144,'园长'),(145,'美玲'),(146,'查看'),(147,'活动室'),(148,'建安'),(149,'双清'),(150,'河村'),(151,'延安市'),(152,'陕西省'),(153,'桥'),(154,'丁家明'),(155,'认为'),(156,'钟秉林'),(157,'内涵'),(158,'贵州省'),(159,'德保县'),(160,'产业园'),(161,'雄安'),(162,'新区'),(163,'正定'),(164,'西柏坡'),(165,'从江县'),(166,'周蕾'),(167,'黄冈市'),(168,'非公经济'),(169,'主体'),(170,'杭州'),(171,'合力'),(172,'革命烈士'),(173,'举措'),(174,'药业'),(175,'厦至'),(176,'大户'),(177,'紫'),(178,'山药'),(179,'岩腊乡'),(180,'凤凰花'),(181,'珩'),(182,'厝'),(183,'新店'),(184,'协作'),(185,'光伏'),(186,'高昕'),(187,'手望'),(188,'勇担'),(189,'推出'),(190,'文学院'),(191,'凤县'),(192,'低聚'),(193,'木糖'),(194,'周畅'),(195,'年任'),(196,'中国致公党'),(197,'致公党'),(198,'中国人民政治协商会议'),(199,'相'),(200,'观察'),(201,'以赛'),(202,'沙漠'),(203,'绿洲'),(204,'庄园'),(205,'赤溪村'),(206,'乡'),(207,'保'),(208,'能否'),(209,'南湖'),(210,'嘉兴'),(211,'绍兴'),(212,'擂选'),(213,'中国矿业大学'),(214,'理念'),(215,'德宏'),(216,'传媒'),(217,'缅'),(218,'缅甸'),(219,'瑞丽'),(220,'边境'),(221,'德宏州'),(222,'文化交流'),(223,'住宿'),(224,'登记'),(225,'外国人'),(226,'窗口'),(227,'铺境'),(228,'入伍'),(229,'边防'),(230,'士兵'),(231,'错那县'),(232,'某团'),(233,'征兵'),(234,'在实践中'),(235,'知青'),(236,'港澳'),(237,'习'),(238,'混凝土'),(239,'系'),(240,'类别'),(241,'参评'),(242,'工商管理'),(243,'综治'),(244,'网'),(245,'派出'),(246,'当中'),(247,'网球'),(248,'批次'),(249,'大别山'),(250,'政治经济学'),(251,'示范点'),(252,'健美操'),(253,'文嘉仪'),(254,'后勤保障'),(255,'南京农业大学'),(256,'闫'),(257,'祥林'),(258,'丝路'),(259,'兴国'),(260,'体育运动'),(261,'武术'),(262,'套路'),(263,'仍'),(264,'紧张'),(265,'已有'),(266,'推选'),(267,'投票'),(268,'候选人'),(269,'教师节'),(270,'子女'),(271,'古田'),(272,'采摘'),(273,'节'),(274,'古田县'),(275,'水蜜桃'),(276,'倒刺'),(277,'鲃'),(278,'鱼类'),(279,'现状'),(280,'项目组'),(281,'淡水鱼'),(282,'南峰'),(283,'领略'),(284,'一周'),(285,'啦'),(286,'越来越'),(287,'花球'),(288,'倪'),(289,'振华'),(290,'员工'),(291,'高温'),(292,'班子成员'),(293,'新侨'),(294,'两地'),(295,'重点高校'),(296,'朱子学'),(297,'朱子'),(298,'特里尔'),(299,'德国'),(300,'朱熹'),(301,'苏费翔'),(302,'朱杰'),(303,'河田镇伯湖'),(304,'伯湖村'),(305,'号召'),(306,'铜奖'),(307,'范明'),(308,'低氧'),(309,'极端'),(310,'军事医学科学院'),(311,'专门'),(312,'面向'),(313,'分数线'),(314,'出档'),(315,'cdk5'),(316,'神经系统'),(317,'p35'),(318,'神经'),(319,'细胞周期'),(320,'邀请赛'),(321,'细化'),(322,'胡'),(323,'芸芸'),(324,'黄飞榕'),(325,'压力'),(326,'多个'),(327,'打通'),(328,'大中学生'),(329,'普高'),(330,'zsb'),(331,'电视'),(332,'形象'),(333,'获评'),(334,'综艺'),(335,'收到'),(336,'第八届'),(337,'儿童'),(338,'健身'),(339,'气功'),(340,'诀'),(341,'第一名'),(342,'生源'),(343,'优质'),(344,'学理'),(345,'张建霖'),(346,'贸易战'),(347,'发言'),(348,'孙福生'),(349,'吴仲平'),(350,'两位'),(351,'访学团'),(352,'特拉华'),(353,'选房'),(354,'公寓'),(355,'租赁'),(356,'凌'),(357,'波湾'),(358,'丰庭'),(359,'住房'),(360,'正在'),(361,'招办'),(362,'响应'),(363,'抗旱'),(364,'指挥部'),(365,'预报'),(366,'我市'),(367,'逐渐'),(368,'韩家'),(369,'吴乔'),(370,'入党'),(371,'牢记'),(372,'认真学习'),(373,'气象局'),(374,'警报'),(375,'提前'),(376,'批'),(377,'运动队'),(378,'登陆'),(379,'两场'),(380,'风力'),(381,'特种设备'),(382,'无损'),(383,'检验'),(384,'红剧'),(385,'短剧'),(386,'抗争'),(387,'圆满'),(388,'汀州'),(389,'感恩'),(390,'医疗卫生'),(391,'手术'),(392,'德育'),(393,'纽卡斯尔'),(394,'剑桥大学'),(395,'玩命'),(396,'快乐'),(397,'现象'),(398,'轻松'),(399,'警惕'),(400,'大众化'),(401,'陷阱'),(402,'三'),(403,'蔡锋'),(404,'张海峰'),(405,'党课'),(406,'一堂'),(407,'德州'),(408,'team'),(409,'jia'),(410,'赛队'),(411,'卡拜'),(412,'碳龙'),(413,'钌'),(414,'杂戊搭炔'),(415,'夏海平'),(416,'键角'),(417,'°'),(418,'军事'),(419,'教材'),(420,'培训班'),(421,'受表彰'),(422,'先进集体'),(423,'中国科学院学部'),(424,'研习'),(425,'领事'),(426,'出国'),(427,'平安'),(428,'酒店'),(429,'夜市'),(430,'钢琴'),(431,'艺术节'),(432,'演奏'),(433,'协奏曲'),(434,'红旗'),(435,'武夷'),(436,'配音'),(437,'重温'),(438,'汉教'),(439,'英雄'),(440,'问候'),(441,'实际困难'),(442,'建党'),(443,'晚会'),(444,'深情'),(445,'带来'),(446,'纪律检查'),(447,'坚决'),(448,'决议'),(449,'纪委'),(450,'称号'),(451,'心理健康'),(452,'心理'),(453,'心理咨询'),(454,'news'),(455,'xmu'),(456,'edu'),(457,'cn'),(458,'page'),(459,'htm'),(460,'过去'),(461,'砥砺'),(462,'治国'),(463,'理政'),(464,'多语种'),(465,'图书'),(466,'图书馆'),(467,'北京'),(468,'崇学'),(469,'前'),(470,'最高分'),(471,'率达'),(472,'排名'),(473,'预'),(474,'康恩贝'),(475,'四年'),(476,'始终'),(477,'哥德巴赫猜想'),(478,'内蒙古'),(479,'草原'),(480,'话剧'),(481,'剧组'),(482,'剧目'),(483,'gnss'),(484,'lachapelle'),(485,'卡尔加里'),(486,'g'),(487,'原油期货'),(488,'交易'),(489,'杨坚'),(490,'谷氨酰胺'),(491,'gls1'),(492,'酶'),(493,'调节'),(494,'形态'),(495,'感受器'),(496,'缺失'),(497,'缺乏'),(498,'财务'),(499,'履职'),(500,'当好'),(501,'一支'),(502,'笔'),(503,'预算'),(504,'人群'),(505,'基因'),(506,'右江'),(507,'期待'),(508,'四川'),(509,'投资者'),(510,'邹至庄'),(511,'分股'),(512,'联通'),(513,'证券市场'),(514,'珍重'),(515,'离别'),(516,'即将'),(517,'当'),(518,'一声'),(519,'时刻'),(520,'填报'),(521,'微信'),(522,'干细胞'),(523,'眼科'),(524,'角膜'),(525,'眼'),(526,'模范作用'),(527,'主体性'),(528,'梅兰芳'),(529,'表演艺术'),(530,'戏曲'),(531,'一文'),(532,'实效'),(533,'离校'),(534,'开题'),(535,'十三'),(536,'年鉴'),(537,'学界'),(538,'传播学'),(539,'业界'),(540,'中国社会科学院'),(541,'编辑出版'),(542,'燃料电池'),(543,'巴拉德'),(544,'叶思宇'),(545,'工程院'),(546,'膜'),(547,'授予'),(548,'学士学位'),(549,'奖章'),(550,'力学'),(551,'achenbach'),(552,'黄永刚'),(553,'争做'),(554,'院'),(555,'牡蛎'),(556,'壳'),(557,'荔枝'),(558,'沙江镇'),(559,'厦渔'),(560,'拾贝'),(561,'废弃'),(562,'霞浦'),(563,'涵江'),(564,'24'),(565,'日及'),(566,'毕业典礼'),(567,'周六'),(568,'－'),(569,'周日'),(570,'国际贸易'),(571,'海原'),(572,'海原县'),(573,'四中'),(574,'初步'),(575,'叩鼎'),(576,'翠冠梨'),(577,'苏联'),(578,'管理学'),(579,'行政管理学'),(580,'历来'),(581,'侨务工作'),(582,'人数'),(583,'录取人数'),(584,'国家民委'),(585,'民族乡'),(586,'李昌平'),(587,'龙海市'),(588,'龙海'),(589,'双河'),(590,'山区'),(591,'涉密'),(592,'妳'),(593,'再见'),(594,'摄影展'),(595,'影展'),(596,'广告'),(597,'广告学'),(598,'廉洁'),(599,'纪律'),(600,'规矩'),(601,'应届'),(602,'最后'),(603,'腐败'),(604,'人大常委会'),(605,'三维'),(606,'建筑物'),(607,'框线'),(608,'基于'),(609,'在读'),(610,'语义'),(611,'点云'),(612,'鼠疫'),(613,'杆菌'),(614,'分离'),(615,'瘟疫'),(616,'测序'),(617,'这些'),(618,'青铜器时代'),(619,'spyrou'),(620,'谱系'),(621,'两院'),(622,'谢兆雄'),(623,'拟合'),(624,'假设'),(625,'菡子'),(626,'超'),(627,'像素'),(628,'采样'),(629,'焦念志'),(630,'asm'),(631,'aam'),(632,'american'),(633,'microbiology'),(634,'就任'),(635,'新兴'),(636,'货币政策'),(637,'曹村'),(638,'三明市'),(639,'生态农业'),(640,'宁化县'),(641,'解决'),(642,'mpacc'),(643,'西南财经大学'),(644,'全国会计'),(645,'思源'),(646,'三期'),(647,'六期'),(648,'王灿'),(649,'篇章'),(650,'周颖刚'),(651,'房价'),(652,'房租'),(653,'对冲'),(654,'泡沫'),(655,'国债'),(656,'避险'),(657,'石墨'),(658,'电子信息'),(659,'联合会'),(660,'水'),(661,'许和山'),(662,'全院'),(663,'姓氏'),(664,'源流'),(665,'参赛选手'),(666,'新北市'),(667,'\r'),(668,'吕卫青'),(669,'邓家基'),(670,'葡萄'),(671,'乡建'),(672,'兴农'),(673,'处处长'),(674,'太阳能'),(675,'联队'),(676,'中法'),(677,'五老'),(678,'试点'),(679,'形式'),(680,'工程硕士'),(681,'突出贡献'),(682,'获得者'),(683,'铝板带'),(684,'天华'),(685,'铝箔'),(686,'李义丹'),(687,'纪委书记'),(688,'借鉴'),(689,'囊'),(690,'萤路'),(691,'信箱'),(692,'二路'),(693,'芙蓉路'),(694,'鲁迅'),(695,'郝龙斌'),(696,'三明'),(697,'创'),(698,'液晶'),(699,'陆延青'),(700,'取向'),(701,'光子'),(702,'亲子'),(703,'趣味'),(704,'吴旦'),(705,'科技成果'),(706,'交大'),(707,'做法'),(708,'残障'),(709,'残疾人'),(710,'嘉年华'),(711,'芭蕾舞'),(712,'欧锐'),(713,'李娜'),(714,'蒙古'),(715,'蒙古国'),(716,'陈祎超'),(717,'成年组'),(718,'乌兰巴托'),(719,'丰富多彩'),(720,'满意度'),(721,'易班'),(722,'成都'),(723,'张钟浚'),(724,'包'),(725,'命题'),(726,'交响乐团'),(727,'hey'),(728,'导师制'),(729,'表彰大会');
/*!40000 ALTER TABLE `word_index_context3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-18 14:06:42
