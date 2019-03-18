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
-- Table structure for table `weight_trained3`
--

DROP TABLE IF EXISTS `weight_trained3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `weight_trained3` (
  `id` int(11) DEFAULT NULL,
  `layer_1` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_trained3`
--

LOCK TABLES `weight_trained3` WRITE;
/*!40000 ALTER TABLE `weight_trained3` DISABLE KEYS */;
INSERT INTO `weight_trained3` VALUES (0,0.05601214990019798),(1,1172.3619384765625),(2,-444.3035888671875),(3,-1394.867919921875),(4,963.423095703125),(5,-428.56964111328125),(6,67.47821807861328),(7,-184.14076232910156),(8,17.34780502319336),(9,-352.45782470703125),(10,-95.57496643066406),(11,-448.6835632324219),(12,66.70425415039062),(13,-1576.8179931640625),(14,413.7650451660156),(15,316.6507873535156),(16,251.49267578125),(17,-183.406494140625),(18,-20.92367172241211),(19,207.02340698242188),(20,-280.25518798828125),(21,861.9348754882812),(22,169.15916442871094),(23,42.37181854248047),(24,-273.276611328125),(25,1814.16796875),(26,-367.4859924316406),(27,-844.0733032226562),(28,-681.1392822265625),(29,955.0005493164062),(30,-1834.0050048828125),(31,385.7553405761719),(32,-189.12393188476562),(33,-1351.6534423828125),(34,-543.7783813476562),(35,-170.57647705078125),(36,73.22223663330078),(37,-67.94937133789062),(38,144.0419921875),(39,438.0889587402344),(40,-694.3484497070312),(41,-381.71954345703125),(42,-388.5064697265625),(43,-1230.98779296875),(44,-1413.14990234375),(45,374.0792541503906),(46,-1306.2216796875),(47,163.76296997070312),(48,61.92755889892578),(49,-239.86683654785156),(50,296.3952941894531),(51,-351.2593688964844),(52,-1060.531982421875),(53,-90.8533935546875),(54,-341.2787780761719),(55,-128.4193878173828),(56,-183.08168029785156),(57,-42.652095794677734),(58,3360.860107421875),(59,73.35879516601562),(60,-841.8370971679688),(61,-637.6951293945312),(62,-334.3841552734375),(63,-756.5966186523438),(64,227.54307556152344),(65,-778.4921875),(66,-330.2251892089844),(67,280.4364013671875),(68,21.07638168334961),(69,-68.11297607421875),(70,300.7877197265625),(71,-102.57720947265625),(72,-98.2540054321289),(73,-154.37948608398438),(74,-7.203543186187744),(75,14.972683906555176),(76,136.56716918945312),(77,-603.594970703125),(78,3147.602294921875),(79,-245.25469970703125),(80,814.9127807617188),(81,340.9619445800781),(82,-193.3811492919922),(83,-231.8672332763672),(84,1471.055908203125),(85,198.31561279296875),(86,555.1537475585938),(87,615.9308471679688),(88,-12.400385856628418),(89,-157.05455017089844),(90,-33.601436614990234),(91,237.69894409179688),(92,-178.5890655517578),(93,-214.04360961914062),(94,398.2322082519531),(95,-577.1033325195312),(96,-11.953238487243652),(97,-42.773677825927734),(98,-339.8267822265625),(99,92.24007415771484),(100,91.50212860107422),(101,-221.34149169921875),(102,84.95606994628906),(103,-372.9161376953125),(104,131.65892028808594),(105,426.4645080566406),(106,-53.99238586425781),(107,186.45648193359375),(108,597.8496704101562),(109,-119.45860290527344),(110,-424.14910888671875),(111,-15.345109939575195),(112,-567.345947265625),(113,-0.26867711544036865),(114,381.2862243652344),(115,-96.4722900390625),(116,216.4686279296875),(117,-23.83258056640625),(118,281.84442138671875),(119,74.61309814453125),(120,39.34079360961914),(121,-399.3298645019531),(122,-298.82098388671875),(123,-397.0964660644531),(124,-26.79043960571289),(125,-1008.5052490234375),(126,-388.065185546875),(127,149.11904907226562),(128,2111.59716796875),(129,80.80906677246094),(130,-178.51144409179688),(131,234.09811401367188),(132,-506.23651123046875),(133,-22.78426742553711),(134,-281.32952880859375),(135,272.7925720214844),(136,-76.22367095947266),(137,56.20192337036133),(138,388.99090576171875),(139,105.56819152832031),(140,-152.38316345214844),(141,284.59130859375),(142,85.36318969726562),(143,-253.89923095703125),(144,-265.1222839355469),(145,-156.66726684570312),(146,367.7313537597656),(147,718.8718872070312),(148,14.349140167236328),(149,52.674903869628906),(150,39.157657623291016),(151,-650.6173095703125),(152,123.2678451538086),(153,-293.97991943359375),(154,-61.07564926147461),(155,-999.406982421875),(156,5023.4951171875),(157,-430.7258605957031),(158,541.6258544921875),(159,-176.66664123535156),(160,249.6204071044922),(161,-286.3738098144531),(162,-62.86122131347656),(163,112.36962127685547),(164,-275.7447204589844),(165,-256.14410400390625),(166,-179.29583740234375),(167,18.747695922851562),(168,-830.8143920898438),(169,-66.8614730834961),(170,-84.42839813232422),(171,-334.70703125),(172,-371.05584716796875),(173,15.460593223571777),(174,-815.5357055664062),(175,129.5092010498047),(176,576.2728271484375),(177,129.67425537109375),(178,400.42138671875),(179,233.4405975341797),(180,-1114.7569580078125),(181,326.85565185546875),(182,-277.0213623046875),(183,-583.7175903320312),(184,-376.53607177734375),(185,274.0052185058594),(186,-407.8216552734375),(187,47.236671447753906),(188,723.5767822265625),(189,3.2474381923675537),(190,-283.8995361328125),(191,-88.19156646728516),(192,18.140514373779297),(193,45.89344024658203),(194,-484.4610900878906),(195,-110.87059020996094),(196,-275.7565612792969),(197,-220.928466796875),(198,4197.28857421875),(199,380.28765869140625),(200,99.49754333496094),(201,382.8539123535156),(202,-269.8720397949219),(203,-125.19715118408203),(204,162.6389923095703),(205,-530.7507934570312),(206,-65.14659118652344),(207,-21.58863067626953),(208,-323.4465637207031),(209,-533.6781005859375),(210,674.7785034179688),(211,-325.7888488769531),(212,126.22825622558594),(213,-636.0226440429688),(214,-136.26052856445312),(215,-638.7719116210938),(216,-268.2513122558594),(217,165.85398864746094),(218,-215.19021606445312),(219,20.613727569580078),(220,-447.36175537109375),(221,75.59525299072266),(222,-403.2342224121094),(223,356.58941650390625),(224,-564.3004760742188),(225,402.2162780761719),(226,111.11823272705078),(227,8.088979721069336),(228,-109.58221435546875),(229,-189.2796173095703),(230,-23.287647247314453),(231,391.3094177246094),(232,227.9207763671875),(233,116.73357391357422),(234,108.07041931152344),(235,-135.86940002441406),(236,-213.43157958984375),(237,92.43089294433594),(238,-315.4035339355469),(239,130.55836486816406),(240,-1470.4356689453125),(241,1.6207928657531738),(242,601.0995483398438),(243,40.473960876464844),(244,14.089279174804688),(245,669.3441162109375),(246,278.4895324707031),(247,578.8375244140625),(248,-290.167724609375),(249,1.1717779636383057),(250,-253.5760955810547),(251,13.32337760925293),(252,67.9181900024414),(253,-277.7294616699219),(254,481.1263732910156),(255,-26.71720314025879),(256,-785.801025390625),(257,-143.6919403076172),(258,-151.76148986816406),(259,2788.5419921875),(260,-508.1654357910156),(261,478.9651184082031),(262,-155.2732696533203),(263,-228.4797821044922),(264,-21.428573608398438),(265,-183.83740234375),(266,-21.199369430541992),(267,304.1100769042969),(268,-352.1295166015625),(269,144.46307373046875),(270,250.930908203125),(271,458.45745849609375),(272,-117.03792572021484),(273,-207.18638610839844),(274,-479.6181640625),(275,430.8454895019531),(276,-344.6085510253906),(277,-132.08238220214844),(278,-533.6079711914062),(279,-256.0364074707031),(280,-79.29033660888672),(281,-280.6209716796875),(282,-250.1537322998047),(283,192.7098846435547),(284,-158.66526794433594),(285,-540.75732421875),(286,-135.9069061279297),(287,-275.5808410644531),(288,108.4630126953125),(289,-510.193115234375),(290,-400.9677429199219),(291,126.77330017089844),(292,461.10357666015625),(293,123.79106140136719),(294,-324.6127014160156),(295,-501.95208740234375),(296,-77.5837173461914),(297,-826.732421875),(298,92.7732925415039),(299,-21.237016677856445),(300,-1.794843316078186),(301,-33.22876739501953),(302,195.67506408691406),(303,-486.65606689453125),(304,125.04896545410156),(305,-293.2995910644531),(306,-209.77403259277344),(307,-424.8429260253906),(308,5657.97412109375),(309,-593.7256469726562),(310,49.88915252685547),(311,334.2619323730469),(312,-281.3101806640625),(313,4928.91845703125),(314,92.95703887939453),(315,365.2032470703125),(316,576.0386962890625),(317,5798.33349609375),(318,48.98381805419922),(319,26.20973777770996),(320,-109.67236328125),(321,-175.57803344726562),(322,-134.28433227539062),(323,-113.01797485351562),(324,206.3485565185547),(325,41.02182388305664),(326,45.638702392578125),(327,-358.95703125),(328,-558.33056640625),(329,188.94956970214844),(330,-165.7741241455078),(331,-178.44215393066406),(332,109.9426040649414),(333,557.451416015625),(334,75.57337188720703),(335,-156.74038696289062),(336,590.4459838867188),(337,371.11553955078125),(338,112.52725982666016),(339,-518.3388061523438),(340,-34.23226547241211),(341,401.94622802734375),(342,134.20330810546875),(343,-69.50469970703125),(344,508.9728088378906),(345,-82.48088836669922),(346,155.75564575195312),(347,-31.944934844970703),(348,165.3399658203125),(349,-398.29815673828125),(350,-68.48381805419922),(351,-72.91410064697266),(352,78.58724975585938),(353,48.588462829589844),(354,-17.575654983520508),(355,-147.9804229736328),(356,-552.0765991210938),(357,205.8087921142578),(358,-124.30718994140625),(359,-36.36995315551758),(360,184.97183227539062),(361,-179.55043029785156),(362,-445.3151550292969),(363,-873.2301635742188),(364,270.89599609375),(365,208.1490478515625),(366,-128.35557556152344),(367,312.26629638671875),(368,98.89840698242188),(369,-566.9981689453125),(370,283.4635925292969),(371,87.8914566040039),(372,-1383.108642578125),(373,-979.1316528320312),(374,395.16583251953125),(375,387.01751708984375),(376,99.17314147949219),(377,291.3655090332031),(378,328.60247802734375),(379,-265.9695129394531),(380,139.10926818847656),(381,195.734130859375),(382,-261.5643005371094),(383,48.74088668823242),(384,-157.25013732910156),(385,-2.679856061935425),(386,-493.7402648925781),(387,509.675537109375),(388,48.18120193481445),(389,101.26738739013672),(390,331.3206481933594),(391,399.7624816894531),(392,-390.0482177734375),(393,28.00503921508789),(394,330.3321838378906),(395,66.63556671142578),(396,-187.6891326904297),(397,17.10132598876953),(398,-327.8111877441406),(399,288.158203125),(400,-523.1708984375),(401,-531.3624267578125),(402,77.58779907226562),(403,-19.928871154785156),(404,39.04824447631836),(405,283.0381774902344),(406,-209.51193237304688),(407,-290.667236328125),(408,167.67828369140625),(409,-260.1643981933594),(410,-136.6257781982422),(411,-109.76184844970703),(412,479.8812255859375),(413,207.51287841796875),(414,-285.70831298828125),(415,46.925655364990234),(416,-395.0026550292969),(417,270.3435974121094),(418,168.7998809814453),(419,19.528032302856445),(420,49.28959274291992),(421,125.85811614990234),(422,-292.1119079589844),(423,-656.2122802734375),(424,76.64119720458984),(425,185.0485076904297),(426,89.63043212890625),(427,-205.8773193359375),(428,177.22216796875),(429,14.87176513671875),(430,-604.260498046875),(431,9.11141300201416),(432,-298.46112060546875),(433,273.77392578125),(434,-54.97249221801758),(435,53.36245346069336),(436,-299.64862060546875),(437,-230.16439819335938),(438,78.52281951904297),(439,179.3755645751953),(440,-1062.206298828125),(441,274.2838134765625),(442,-372.7847900390625),(443,-90.44538116455078),(444,286.16229248046875),(445,-24.69198226928711),(446,296.7948303222656),(447,37.46364212036133),(448,-25.905569076538086),(449,6.37220573425293),(450,68.50509643554688),(451,166.55030822753906),(452,-212.5220489501953),(453,-133.9591522216797),(454,3.3553414344787598),(455,-1609.9464111328125),(456,-150.3097381591797),(457,-195.6412811279297),(458,42.212093353271484),(459,-785.9638061523438),(460,80.36607360839844),(461,90.1722412109375),(462,-140.15550231933594),(463,-49.451377868652344),(464,169.944091796875),(465,8.578832626342773),(466,84.20172119140625),(467,-67.5834732055664),(468,115.9344711303711),(469,354.1739196777344),(470,281.1239013671875),(471,-307.2106628417969),(472,-396.0165100097656),(473,-216.27243041992188),(474,-171.51597595214844),(475,-73.96485900878906),(476,-104.31351470947266),(477,124.11587524414062),(478,110.10753631591797),(479,-438.1243591308594),(480,322.6964111328125),(481,377.1073303222656),(482,122.63687896728516),(483,-29.39733123779297),(484,-351.3765563964844),(485,-396.2869567871094),(486,80.0738754272461),(487,1.9397625923156738),(488,879.2840576171875),(489,88.52435302734375),(490,-135.2827606201172),(491,-22.724483489990234),(492,68.72511291503906),(493,44.51416778564453),(494,124.44510650634766),(495,54.18082809448242),(496,-73.32563018798828),(497,-26.5184326171875),(498,155.3397216796875),(499,266.7397766113281),(500,-187.6673583984375),(501,-51.244869232177734),(502,72.51547241210938),(503,294.62530517578125),(504,263.6358642578125),(505,-164.399169921875),(506,-90.63581085205078),(507,160.66091918945312),(508,-42.33566665649414),(509,-149.88197326660156),(510,119.99171447753906),(511,-109.5321044921875),(512,222.4396514892578),(513,296.45770263671875),(514,62.58858871459961),(515,208.9447784423828),(516,-218.46771240234375),(517,-300.2071838378906),(518,168.67005920410156),(519,171.9146270751953),(520,-161.38002014160156),(521,-113.37153625488281),(522,422.8984680175781),(523,127.5567626953125),(524,-192.14498901367188),(525,234.5652618408203),(526,-178.492431640625),(527,4.689676761627197),(528,63.57725524902344),(529,-23.124353408813477),(530,-158.71546936035156),(531,73.52181243896484),(532,113.55886840820312),(533,34.51144790649414),(534,-1662.904052734375),(535,296.3284912109375),(536,-616.8569946289062),(537,-62.064517974853516),(538,230.28155517578125),(539,-31.692646026611328),(540,206.635498046875),(541,233.33377075195312),(542,-81.37235260009766),(543,182.56703186035156),(544,251.56869506835938),(545,74.42649841308594),(546,346.79840087890625),(547,-30.4251651763916),(548,-788.8212890625),(549,-172.5360107421875),(550,-15.084790229797363),(551,-195.9891815185547),(552,-17.84108543395996),(553,-16.136672973632812),(554,-41.760894775390625),(555,-88.46298217773438),(556,-57.18610382080078),(557,-3.5171618461608887),(558,-204.30447387695312),(559,-41.5931510925293),(560,-19.03221321105957),(561,34.077091217041016),(562,-1.0648200511932373),(563,-218.15994262695312),(564,32.10296630859375),(565,48.66468048095703),(566,464.2742919921875),(567,103.15074157714844),(568,-37.930599212646484),(569,0.42302483320236206),(570,-1426.6348876953125),(571,-382.1942138671875),(572,75.33235931396484),(573,-77.56922912597656),(574,-352.6019592285156),(575,369.7563171386719),(576,167.878662109375),(577,128.4920654296875),(578,251.08738708496094),(579,-14.437891006469727),(580,331.69232177734375),(581,-163.6892852783203),(582,-189.73342895507812),(583,-242.72463989257812),(584,-264.6067810058594),(585,-178.2075958251953),(586,-2.8297595977783203),(587,-142.87686157226562),(588,-350.9851989746094),(589,1073.233154296875),(590,-88.44083404541016),(591,35.891029357910156),(592,-208.2342071533203),(593,-169.7446746826172),(594,22.2053279876709),(595,-589.2664794921875),(596,-68.37442016601562),(597,60.142520904541016),(598,211.62774658203125),(599,-1940.6451416015625),(600,-348.1399230957031),(601,323.96044921875),(602,-366.20269775390625),(603,-243.99679565429688),(604,-240.8241424560547),(605,-3.5572879314422607),(606,203.05206298828125),(607,169.8789825439453),(608,111.4813003540039),(609,124.28655242919922),(610,-236.09207153320312),(611,-238.04872131347656),(612,-409.1330261230469),(613,-88.02572631835938),(614,-98.36575317382812),(615,4.706538677215576),(616,-357.3558349609375),(617,-437.323974609375),(618,438.5625915527344),(619,-0.7996070981025696),(620,180.88690185546875),(621,-74.32686614990234),(622,-103.78836822509766),(623,-70.02344512939453),(624,266.638916015625),(625,200.82730102539062),(626,4.837882041931152),(627,456.2118225097656),(628,-26.53278350830078),(629,-309.3988037109375),(630,-12.217883110046387),(631,242.0039520263672),(632,-332.30438232421875),(633,58.34246063232422),(634,-114.14064025878906),(635,-99.55220031738281),(636,35.25117492675781),(637,95.62483215332031),(638,-12.15047836303711),(639,221.3621368408203),(640,-82.71292114257812),(641,34.56364059448242),(642,-133.6573944091797),(643,-249.28744506835938),(644,-489.4230651855469),(645,-126.50819396972656),(646,-57.44102478027344),(647,375.6614074707031),(648,-96.26472473144531),(649,-145.47158813476562),(650,-95.83959197998047),(651,8.018073081970215),(652,-38.43800735473633),(653,92.55386352539062),(654,-19.770139694213867),(655,182.63580322265625),(656,-34.40909957885742),(657,9.86953067779541),(658,-229.77529907226562),(659,4.375707626342773),(660,208.18218994140625),(661,108.85469055175781),(662,-146.80360412597656),(663,-225.220458984375),(664,-423.4626770019531),(665,28.733718872070312),(666,-81.55455017089844),(667,-12.873449325561523),(668,-1491.488037109375),(669,29.663272857666016),(670,136.493896484375),(671,124.71790313720703),(672,-500.4464111328125),(673,75.35393524169922),(674,418.8825378417969),(675,159.1220245361328),(676,-78.07162475585938),(677,37.10795593261719),(678,66.9288101196289),(679,236.5325469970703),(680,-208.15005493164062),(681,3.316810131072998),(682,-15.012331008911133),(683,219.3612823486328),(684,-311.8515930175781),(685,-7.1023664474487305),(686,140.25502014160156),(687,-18.43206214904785),(688,-140.8487548828125),(689,157.9257354736328),(690,328.0672607421875),(691,3.2382402420043945),(692,160.09043884277344),(693,193.61175537109375),(694,192.74452209472656),(695,119.68334197998047),(696,-263.453125),(697,61.219276428222656),(698,62.49840545654297),(699,65.17218780517578),(700,1.110553503036499),(701,496.7997741699219),(702,487.3229064941406),(703,-739.1915893554688),(704,593.0376586914062),(705,6253.94140625),(706,-269.4522399902344),(707,124.4609146118164),(708,258.62109375),(709,-339.10455322265625),(710,-264.8134460449219),(711,-560.3696899414062),(712,-211.46200561523438),(713,263.1102294921875),(714,224.4432830810547),(715,-99.93737030029297),(716,211.6132354736328),(717,-601.9969482421875),(718,-135.24949645996094),(719,-63.19218826293945),(720,108.17443084716797),(721,488.6708679199219),(722,-166.26513671875),(723,-231.27020263671875),(724,-379.14068603515625),(725,-130.7733154296875),(726,183.56842041015625),(727,279.54052734375),(728,65.15252685546875),(729,91.51837158203125),(730,36.71669387817383),(731,179.78140258789062),(732,-49.85723876953125),(733,194.85147094726562),(734,148.82339477539062),(735,42.66056442260742),(736,332.17169189453125),(737,-95.32868194580078),(738,-715.0430297851562),(739,-229.42494201660156),(740,397.77886962890625),(741,113.1810073852539),(742,-225.81788635253906),(743,-237.1682586669922),(744,9.216028213500977),(745,105.93083953857422),(746,-125.87923431396484),(747,-44.18586730957031),(748,618.4591064453125),(749,488.5539245605469),(750,90.33820343017578),(751,188.27809143066406),(752,18.525489807128906),(753,6.300347805023193),(754,5.832871913909912),(755,6.751733303070068),(756,-1.4188183546066284),(757,-147.0847930908203),(758,-612.9149169921875),(759,-111.89445495605469),(760,-6.071424961090088),(761,1.0970019102096558),(762,-314.4290466308594),(763,-39.63270568847656),(764,-161.74627685546875),(765,-162.35882568359375),(766,-92.75989532470703),(767,-265.5614318847656),(768,-246.89036560058594),(769,-247.11692810058594),(770,-20.600833892822266),(771,-444.21038818359375),(772,23.64873504638672),(773,127.48925018310547),(774,-315.7009582519531),(775,70.83759307861328),(776,156.7857208251953),(777,-231.1457061767578),(778,80.21968078613281),(779,83.56031036376953),(780,42.82129669189453),(781,209.65769958496094),(782,-249.01361083984375),(783,0.21002835035324097),(784,-256.70977783203125),(785,335.86297607421875),(786,142.00120544433594),(787,154.20396423339844),(788,-70.22557067871094),(789,-170.01492309570312),(790,-354.6865234375),(791,-159.87893676757812),(792,45.819007873535156),(793,270.85272216796875),(794,-607.1503295898438),(795,0.17136390507221222),(796,-1192.8453369140625),(797,-10.436777114868164),(798,21.405338287353516),(799,-96.1226806640625),(800,25.47080421447754),(801,-2.7459075450897217),(802,-53.284297943115234),(803,-0.6476146578788757),(804,-110.19779968261719),(805,149.7389678955078),(806,-89.69258880615234),(807,6.417165756225586),(808,-115.25151062011719),(809,227.93411254882812),(810,45.33011245727539),(811,-74.6833267211914),(812,34.700374603271484),(813,109.89558410644531),(814,21.27353286743164),(815,-14.587654113769531),(816,74.07980346679688),(817,-23.47572898864746),(818,-40.75370788574219),(819,896.661376953125),(820,169.10536193847656),(821,-161.122314453125),(822,-160.86160278320312),(823,-30.981029510498047),(824,-13.188843727111816),(825,389.1958312988281),(826,12.042628288269043),(827,-160.52867126464844),(828,85.11438751220703),(829,95.42587280273438),(830,43.53377151489258),(831,298.39996337890625),(832,40.23646926879883),(833,38.659854888916016),(834,-59.206809997558594),(835,-102.47210693359375),(836,-28.897106170654297),(837,47.20708465576172),(838,241.84361267089844),(839,185.46994018554688),(840,1.6708953380584717),(841,234.55902099609375),(842,-151.27194213867188),(843,-83.83723449707031),(844,-795.1148681640625),(845,1.105690598487854),(846,90.07347106933594),(847,-253.8014373779297),(848,-68.65982818603516),(849,281.6086120605469),(850,79.89571380615234),(851,81.30570220947266),(852,-83.96044921875),(853,93.95701599121094),(854,-198.10702514648438),(855,-5.051612854003906),(856,250.9573211669922),(857,-8.933899879455566),(858,-239.2372283935547),(859,-151.29812622070312),(860,-152.0015869140625),(861,-600.2733154296875),(862,220.23526000976562),(863,-48.35590744018555),(864,-414.3804626464844),(865,54.26205825805664),(866,-153.3923797607422),(867,-19.15924644470215),(868,-102.08554077148438),(869,-120.40386962890625),(870,-63.4969596862793),(871,6.683950424194336),(872,-236.76121520996094),(873,45.598724365234375),(874,71.19799041748047),(875,93.30963897705078),(876,38.167415618896484),(877,-18.494482040405273),(878,-11.070828437805176),(879,-95.7257080078125),(880,-37.94551467895508),(881,129.2688751220703),(882,135.23004150390625),(883,-102.41637420654297),(884,140.7256317138672),(885,150.5826416015625),(886,113.22269439697266),(887,9.48059368133545),(888,-160.84848022460938),(889,-360.923583984375),(890,14.641700744628906),(891,-4.3627119064331055),(892,224.57383728027344),(893,124.85765075683594),(894,242.6810760498047),(895,36.84945297241211),(896,22.878990173339844),(897,-522.1527099609375),(898,-264.2306823730469),(899,42.70015335083008),(900,108.3259506225586),(901,-601.0108642578125),(902,-24.646974563598633),(903,15.109933853149414),(904,0.2482036054134369),(905,-310.9674072265625),(906,-289.2415466308594),(907,256.8101501464844),(908,87.10713958740234),(909,-66.06421661376953),(910,73.05159759521484),(911,-180.11387634277344),(912,200.24891662597656),(913,145.00376892089844),(914,-27.554603576660156),(915,-29.964555740356445),(916,-130.63148498535156),(917,-53.94610595703125),(918,59.48427963256836),(919,19.085308074951172),(920,232.57516479492188),(921,-74.19286346435547),(922,147.6776885986328),(923,-0.8595755100250244),(924,-278.7970275878906),(925,-2.2561936378479004),(926,-197.43980407714844),(927,25.062997817993164),(928,55.12670135498047),(929,-553.7642211914062),(930,173.87965393066406),(931,-86.61848449707031),(932,-24.657217025756836),(933,182.86178588867188),(934,62.98789596557617),(935,112.13761901855469),(936,155.0201873779297),(937,-30.200471878051758),(938,265.6007080078125),(939,-735.0213012695312),(940,38.696311950683594),(941,-0.14390362799167633),(942,-132.557861328125),(943,184.45738220214844),(944,301.3411560058594),(945,32.88948440551758),(946,442.37139892578125),(947,9.952619552612305),(948,187.84922790527344),(949,-381.7198486328125),(950,-89.10132598876953),(951,317.42510986328125),(952,-202.30938720703125),(953,60.418121337890625),(954,256.921875),(955,-93.13042449951172),(956,-159.12872314453125),(957,-305.03497314453125),(958,38.247772216796875),(959,18.197277069091797),(960,-91.1290283203125),(961,-87.99906921386719),(962,120.65190124511719),(963,74.62517547607422),(964,183.7937774658203),(965,347.166748046875),(966,90.85254669189453),(967,139.0647430419922),(968,-0.45658084750175476),(969,6302.74169921875),(970,-9.080495834350586),(971,-11.027371406555176),(972,155.62806701660156),(973,121.64227294921875),(974,-392.1922607421875),(975,27.72610855102539),(976,-140.49942016601562),(977,-0.10464805364608765),(978,-56.08115005493164),(979,-233.9424591064453),(980,-0.5040407180786133),(981,337.62969970703125),(982,72.24545288085938),(983,71.91853332519531),(984,-0.7112911343574524),(985,22.532081604003906),(986,300.0149230957031),(987,298.5215148925781),(988,298.986083984375),(989,-247.68763732910156),(990,-98.87283325195312),(991,-100.81050109863281),(992,32.27072525024414),(993,-2.423757791519165),(994,-57.7920036315918),(995,227.53717041015625),(996,0.44785913825035095),(997,69.9964828491211),(998,-158.48570251464844),(999,-293.36761474609375);
/*!40000 ALTER TABLE `weight_trained3` ENABLE KEYS */;
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
