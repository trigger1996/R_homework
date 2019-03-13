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
-- Table structure for table `word_index_title`
--

DROP TABLE IF EXISTS `word_index_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `word_index_title` (
  `value` int(11) DEFAULT NULL,
  `word` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_index_title`
--

LOCK TABLES `word_index_title` WRITE;
/*!40000 ALTER TABLE `word_index_title` DISABLE KEYS */;
INSERT INTO `word_index_title` VALUES (1,'厦门大学'),(2,'2018'),(3,'学校'),(4,'召开'),(5,'学院'),(6,'实践'),(7,'进行'),(8,'时'),(9,'大赛'),(10,'中国'),(11,'爱国'),(12,'奋斗'),(13,'红色'),(14,'路上'),(15,'举办'),(16,'筑梦之旅'),(17,'互联网'),(18,'一'),(19,'两学'),(20,'学子'),(21,'校'),(22,'创新'),(23,'化学'),(24,'关于'),(25,'教授'),(26,'2019'),(27,'全国'),(28,'校区'),(29,'厦大'),(30,'校领导'),(31,'化工学院'),(32,'生命科学'),(33,'做'),(34,'福建省'),(35,'校长'),(36,'副'),(37,'翔安'),(38,'身边'),(39,'大学生'),(40,'教育'),(41,'第四届'),(42,'好'),(43,'老师'),(44,'高招'),(45,'党委书记'),(46,'张彦'),(47,'学习'),(48,'张荣'),(49,'校党委'),(50,'青年'),(51,'举行'),(52,'技术'),(53,'国际'),(54,'我'),(55,'创业'),(56,'防御'),(57,'第二届'),(58,'新'),(59,'组织'),(60,'师生'),(61,'第十一届'),(62,'撸'),(63,'起'),(64,'袖子'),(65,'大学'),(66,'厦门'),(67,'学生'),(68,'率团'),(69,'第十一次'),(70,'青春'),(71,'管理'),(72,'工作'),(73,'厦门市'),(74,'会见'),(75,'党委'),(76,'人民日报'),(77,'思明'),(78,'开展'),(79,'慰问'),(80,'院士'),(81,'教育部'),(82,'再'),(83,'砥砺'),(84,'助力'),(85,'研究生'),(86,'科学'),(87,'刊发'),(88,'共建'),(89,'国家'),(90,'艺术'),(91,'附属'),(92,'校友'),(93,'情系'),(94,'人文学院'),(95,'第九届'),(96,'马来西亚'),(97,'马克思主义'),(98,'机关'),(99,'研究'),(100,'迎新'),(101,'两会'),(102,'时间'),(103,'一流'),(104,'收看'),(105,'参加'),(106,'党校'),(107,'智能'),(108,'医学院'),(109,'南强'),(110,'带队'),(111,'学科'),(112,'夏宁'),(113,'邵'),(114,'科技'),(115,'市长'),(116,'主席'),(117,'来校'),(118,'建设'),(119,'光明日报'),(120,'集团'),(121,'委员会'),(122,'7'),(123,'海洋'),(124,'陈嘉庚'),(125,'传承'),(126,'分校'),(127,'建筑'),(128,'队'),(129,'中共'),(130,'获'),(131,'信息科学'),(132,'启动'),(133,'项目'),(134,'奋进'),(135,'党代会'),(136,'纪念'),(137,'时代'),(138,'聚焦'),(139,'本科'),(140,'黄牛'),(141,'新增'),(142,'年度'),(143,'电子'),(144,'课题组'),(145,'孔子'),(146,'不见'),(147,'赴'),(148,'热议'),(149,'考古'),(150,'首届'),(151,'基层'),(152,'第一轮'),(153,'贵州'),(154,'联合'),(155,'校友会'),(156,'民族'),(157,'姚明'),(158,'第'),(159,'论坛'),(160,'会'),(161,'中心组'),(162,'文化'),(163,'成功'),(164,'改革开放'),(165,'能源'),(166,'档案馆'),(167,'荣获'),(168,'健康'),(169,'第五届'),(170,'材料'),(171,'旅游'),(172,'五年'),(173,'教学'),(174,'大学校长'),(175,'调整'),(176,'足球队'),(177,'使命'),(178,'当选'),(179,'翔安区'),(180,'扶贫'),(181,'提升'),(182,'政府'),(183,'幼儿园'),(184,'人'),(185,'研究院'),(186,'报'),(187,'检查'),(188,'科技日报'),(189,'头版'),(190,'洪文晶'),(191,'经济'),(192,'新春'),(193,'校团委'),(194,'研究所'),(195,'春节'),(196,'外'),(197,'调研'),(198,'美丽'),(199,'领导'),(200,'医院'),(201,'政协'),(202,'送别'),(203,'海洋环境'),(204,'期末'),(205,'高等教育'),(206,'国家自然科学基金委员会'),(207,'心血管病'),(208,'历史系'),(209,'到'),(210,'承办'),(211,'实验室'),(212,'通讯'),(213,'支部'),(214,'多篇'),(215,'广西'),(216,'支'),(217,'出访'),(218,'读懂'),(219,'第十六届'),(220,'深入'),(221,'科研'),(222,'社科'),(223,'志愿'),(224,'爱'),(225,'经院'),(226,'坚持'),(227,'分类'),(228,'扩大'),(229,'融入'),(230,'软件'),(231,'期间'),(232,'你'),(233,'土木工程'),(234,'智库'),(235,'海外'),(236,'本科生'),(237,'代表团'),(238,'梦'),(239,'走进'),(240,'西藏'),(241,'帆船'),(242,'做客'),(243,'云南'),(244,'师范大学'),(245,'两岸'),(246,'第二期'),(247,'第十届'),(248,'专业'),(249,'香港'),(250,'参与'),(251,'防'),(252,'影响力'),(253,'签署'),(254,'海峡两岸'),(255,'教师'),(256,'新教'),(257,'不忘'),(258,'让'),(259,'定向'),(260,'金奖'),(261,'背后'),(262,'学术'),(263,'获得'),(264,'校园'),(265,'田中'),(266,'中国科学院'),(267,'院长'),(268,'级'),(269,'化学系'),(270,'演武'),(271,'习近平'),(272,'张杰'),(273,'推进'),(274,'部署'),(275,'喜获'),(276,'绿色'),(277,'国家自然科学基金'),(278,'书记'),(279,'筑梦'),(280,'1'),(281,'管委会'),(282,'营'),(283,'青少年'),(284,'发展'),(285,'感动'),(286,'同辈'),(287,'新闻'),(288,'基因'),(289,'6'),(290,'央视'),(291,'福建'),(292,'团省委'),(293,'一行'),(294,'闽台'),(295,'心向'),(296,'党'),(297,'男子'),(298,'工会'),(299,'情怀'),(300,'蒋月'),(301,'宏观经济'),(302,'研究成果'),(303,'敦聘'),(304,'蒋剑春'),(305,'外事'),(306,'大南'),(307,'芗剧'),(308,'现代'),(309,'剧'),(310,'毕马威'),(311,'女'),(312,'官方'),(313,'微博'),(314,'13'),(315,'2'),(316,'个'),(317,'校级'),(318,'外文'),(319,'今明两年'),(320,'王野'),(321,'排名第'),(322,'学生宿舍'),(323,'多所'),(324,'睿'),(325,'资产'),(326,'经营'),(327,'有限公司'),(328,'出版社'),(329,'新学期'),(330,'陈兰芬'),(331,'wiser'),(332,'发改委'),(333,'游园会'),(334,'火热'),(335,'周大旺'),(336,'人类学'),(337,'王传超'),(338,'客户端'),(339,'学生处'),(340,'功能'),(341,'网络'),(342,'点线面'),(343,'知懂'),(344,'坚守'),(345,'温馨'),(346,'我们'),(347,'国桂荣'),(348,'课程'),(349,'8'),(350,'视频'),(351,'图说'),(352,'市委'),(353,'省政协'),(354,'总结'),(355,'表彰'),(356,'各界'),(357,'沉痛'),(358,'国台办'),(359,'慰问组'),(360,'陈星弼'),(361,'总会'),(362,'司'),(363,'专访'),(364,'学位'),(365,'博士后'),(366,'督学'),(367,'督教'),(368,'导思导行'),(369,'近海'),(370,'百年'),(371,'机关党委'),(372,'获批'),(373,'学会'),(374,'深挖'),(375,'彻查'),(376,'5'),(377,'税务局'),(378,'个人所得税'),(379,'科学部'),(380,'财经大学'),(381,'客人'),(382,'3'),(383,'锐眼'),(384,'识'),(385,'执法'),(386,'整治'),(387,'纽约大学'),(388,'电影学院'),(389,'张真'),(390,'中国民主同盟'),(391,'嘉庚'),(392,'五个'),(393,'福州'),(394,'向'),(395,'昌吉'),(396,'人才'),(397,'扬'),(398,'国乐'),(399,'华章'),(400,'校务'),(401,'项'),(402,'第十七期'),(403,'机关干部'),(404,'奖学金'),(405,'中科院'),(406,'华南理工大学'),(407,'禁毒'),(408,'校主'),(409,'之子'),(410,'挑战杯'),(411,'台湾'),(412,'不'),(413,'散场'),(414,'重大'),(415,'脂肪'),(416,'能'),(417,'抗菌'),(418,'高雅'),(419,'综治'),(420,'处'),(421,'隆德'),(422,'悦读'),(423,'非'),(424,'立德'),(425,'林惠祥'),(426,'先生'),(427,'特色'),(428,'话语'),(429,'高校'),(430,'学情'),(431,'安全'),(432,'敬老'),(433,'爱老'),(434,'涓涓细流'),(435,'主动'),(436,'闽宁'),(437,'闽南'),(438,'逐梦'),(439,'教工'),(440,'编织'),(441,'围巾'),(442,'赠'),(443,'诚美'),(444,'信'),(445,'董云伟'),(446,'团队'),(447,'缅怀'),(448,'先贤'),(449,'激励'),(450,'不畏'),(451,'强'),(452,'最强'),(453,'文明'),(454,'五千'),(455,'新年'),(456,'舞会'),(457,'暑期社会'),(458,'网站'),(459,'报道'),(460,'宣传'),(461,'五院'),(462,'就业'),(463,'思想'),(464,'茅台'),(465,'常务副'),(466,'今天'),(467,'第五期'),(468,'芙蓉'),(469,'湖畔'),(470,'后勤'),(471,'治理'),(472,'张彦为'),(473,'邓'),(474,'研究生院'),(475,'党员'),(476,'陈景润'),(477,'投石'),(478,'创始人'),(479,'印度'),(480,'侨联'),(481,'闽侨'),(482,'讴歌'),(483,'广西艺术学院'),(484,'来访'),(485,'日本'),(486,'谁'),(487,'海丝'),(488,'南音'),(489,'外国'),(490,'经济日报'),(491,'校园行'),(492,'浙江省'),(493,'教育厅'),(494,'及'),(495,'亮彩'),(496,'汕头市'),(497,'人民政府'),(498,'海关'),(499,'细胞'),(500,'应激'),(501,'彭波'),(502,'条例'),(503,'学报'),(504,'哲社版'),(505,'金融'),(506,'李'),(507,'第六届'),(508,'语文'),(509,'出席'),(510,'印尼'),(511,'华裔'),(512,'欧亚'),(513,'科学院'),(514,'历史'),(515,'两'),(516,'苏'),(517,'进程'),(518,'加盟'),(519,'当代'),(520,'会计'),(521,'评论'),(522,'市'),(523,'系统'),(524,'商务部'),(525,'部长'),(526,'中国医学科学院'),(527,'林东昕'),(528,'教务处'),(529,'南丁格尔'),(530,'奖'),(531,'出发'),(532,'编写'),(533,'防艾抗'),(534,'艾'),(535,'原'),(536,'中央委员'),(537,'国务院研究室'),(538,'语音'),(539,'华北电力大学'),(540,'营商'),(541,'第三季'),(542,'建院'),(543,'老年大学'),(544,'文科'),(545,'网络空间'),(546,'医管'),(547,'办'),(548,'体育部'),(549,'加拿大'),(550,'圣玛丽'),(551,'夺得'),(552,'妇联'),(553,'诈骗'),(554,'内蒙古自治区'),(555,'国务院'),(556,'参事室'),(557,'国情'),(558,'星光'),(559,'以色列'),(560,'最具'),(561,'建行'),(562,'催化'),(563,'前沿'),(564,'46'),(565,'位'),(566,'党内'),(567,'法规'),(568,'省'),(569,'药科'),(570,'促进'),(571,'行为'),(572,'部门'),(573,'凝心'),(574,'聚力'),(575,'平凡'),(576,'辅导员'),(577,'群防群治'),(578,'擒'),(579,'巡察'),(580,'洪永淼'),(581,'全民'),(582,'防治'),(583,'喜迎'),(584,'公众'),(585,'陕西'),(586,'选调生'),(587,'故事'),(588,'工入'),(589,'袁亚'),(590,'湘'),(591,'下半年'),(592,'菲律宾'),(593,'骨干'),(594,'知识产权'),(595,'法学'),(596,'十年'),(597,'厦知'),(598,'金风送爽'),(599,'十一月'),(600,'参展'),(601,'硕士'),(602,'本学期'),(603,'中国化学会'),(604,'英国'),(605,'谢菲尔德'),(606,'田径队'),(607,'警校'),(608,'出击'),(609,'高尔夫球'),(610,'弘扬'),(611,'航空航天'),(612,'王老吉'),(613,'群'),(614,'法国'),(615,'英'),(616,'发布'),(617,'媒体'),(618,'行政'),(619,'昆山'),(620,'杜克大学'),(621,'常务'),(622,'罗化'),(623,'庆'),(624,'佳节'),(625,'欢乐'),(626,'致'),(627,'全校师生'),(628,'员工'),(629,'新加坡'),(630,'嘉庚颂'),(631,'卡迪夫'),(632,'飞行器'),(633,'常委'),(634,'孙世刚'),(635,'西'),(636,'颁奖典礼'),(637,'孙春兰'),(638,'同志'),(639,'航模'),(640,'综合'),(641,'争夺'),(642,'赛'),(643,'馆长'),(644,'一带'),(645,'一路'),(646,'访问'),(647,'携手'),(648,'艺术团'),(649,'启用'),(650,'地下'),(651,'1984'),(652,'级新生'),(653,'夜间'),(654,'​'),(655,'部'),(656,'董全峰'),(657,'会计准则'),(658,'概念'),(659,'框架'),(660,'中国文联'),(661,'省新阶联'),(662,'建筑界'),(663,'诺贝尔奖'),(664,'爱是'),(665,'开'),(666,'展开'),(667,'迎'),(668,'中秋'),(669,'教室'),(670,'学以'),(671,'暑期'),(672,'讲座'),(673,'最'),(674,'加纳'),(675,'经贸'),(676,'管理模式'),(677,'贸工部'),(678,'多彩'),(679,'东盟'),(680,'秘书长'),(681,'林玉辉'),(682,'徐海'),(683,'宁夏'),(684,'隆德县'),(685,'东区'),(686,'有'),(687,'电梯'),(688,'公共卫生'),(689,'公共'),(690,'龙岩市'),(691,'会议'),(692,'孔祥建'),(693,'无人机'),(694,'队获'),(695,'袁晶'),(696,'丝路'),(697,'车队'),(698,'运动队'),(699,'暴雨'),(700,'杨贤金'),(701,'副省长'),(702,'主持'),(703,'郑'),(704,'29'),(705,'名'),(706,'第十三届'),(707,'五位'),(708,'台湾大学'),(709,'前'),(710,'新能源'),(711,'共济'),(712,'棒球队'),(713,'化开'),(714,'贵厦'),(715,'ieee'),(716,'cs'),(717,'追寻'),(718,'厦梦'),(719,'委第'),(720,'206'),(721,'回延安'),(722,'孔院'),(723,'钟秉林'),(724,'应邀'),(725,'云端'),(726,'铸梦'),(727,'新区'),(728,'院企'),(729,'永宁'),(730,'西秀'),(731,'马新班'),(732,'人民网'),(733,'讲述'),(734,'社会各界'),(735,'深情'),(736,'绿洲'),(737,'过渡'),(738,'交叉'),(739,'切磋'),(740,'做好'),(741,'继续'),(742,'奉献'),(743,'于'),(744,'延安'),(745,'土木'),(746,'专业学位'),(747,'首次'),(748,'研究部署'),(749,'暑假'),(750,'讲坛'),(751,'网'),(752,'经济学'),(753,'党建'),(754,'南京农业大学'),(755,'多支'),(756,'关工委'),(757,'马'),(758,''),(759,'武术队'),(760,'郑兰荪'),(761,'入围'),(762,'教职工'),(763,'安心'),(764,'啦'),(765,'操队'),(766,'一线'),(767,'高温'),(768,'政协委员'),(769,'党派'),(770,'朱子学'),(771,'将军'),(772,'军事'),(773,'认知'),(774,'心理卫生'),(775,'cell'),(776,'黄飞榕'),(777,'优秀'),(778,'宣传部'),(779,'公共事务'),(780,'运动会'),(781,'招生'),(782,'导师'),(783,'心系'),(784,'祖国'),(785,'美国'),(786,'优秀青年'),(787,'结束'),(788,'布置'),(789,'远东'),(790,'无损'),(791,'寓教于乐'),(792,'邬大光'),(793,'国家海洋局'),(794,'第三'),(795,'一堂'),(796,'夏海平'),(797,'普通高校'),(798,'初心'),(799,'共同'),(800,'留学'),(801,'40'),(802,'妇女'),(803,'体验'),(804,'第三届'),(805,'活动'),(806,'纳姆迪'),(807,'老同志'),(808,'祝福'),(809,'法学院'),(810,'庆祝'),(811,'纪律检查'),(812,'中国共产党'),(813,'2016'),(814,'获赠'),(815,'多语种'),(816,'中学'),(817,'廖'),(818,'科学家'),(819,'主题'),(820,'剧目'),(821,'g'),(822,'é'),(823,'rard'),(824,'原油期货'),(825,'林圣彩'),(826,'族群'),(827,'大中华区'),(828,'话'),(829,'咨询服务'),(830,'全面'),(831,'眼科'),(832,'课题'),(833,'传播学'),(834,'78'),(835,'jan'),(836,'achenbach'),(837,'代表大会'),(838,'坚定'),(839,'理想信念'),(840,'争做'),(841,'整版'),(842,'宁夏大学'),(843,'市校'),(844,'联动'),(845,'协调'),(846,'陈振明'),(847,'全国人大'),(848,'华侨'),(849,'寄出'),(850,'合作'),(851,'深化'),(852,'校地'),(853,'数学'),(854,'保密'),(855,'我爱你'),(856,'再见'),(857,'冯霞'),(858,'特任'),(859,'研究员'),(860,'强强合作'),(861,'焦念志'),(862,'就任'),(863,'统计学'),(864,'学员'),(865,'自强'),(866,'周颖刚'),(867,'论文'),(868,'数字'),(869,'贯彻'),(870,'文学'),(871,'新北市'),(872,'台北市'),(873,'sdc2018'),(874,'竞赛'),(875,'工程硕士'),(876,'南开大学'),(877,'中国国民党'),(878,'创'),(879,'陆延青'),(880,'幸福'),(881,'上海交通大学'),(882,'副校长'),(883,'吴旦'),(884,'海峡'),(885,'相聚'),(886,'彩'),(887,'纽约'),(888,'届'),(889,'乘新'),(890,'多');
/*!40000 ALTER TABLE `word_index_title` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-13 15:18:35