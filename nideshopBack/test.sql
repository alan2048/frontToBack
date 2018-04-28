DROP TABLE IF EXISTS `nideshop_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nideshop_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `position_id` (`ad_position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nideshop_ad`
--

LOCK TABLES `nideshop_ad` WRITE;
/*!40000 ALTER TABLE `nideshop_ad` DISABLE KEYS */;
INSERT INTO `nideshop_ad` VALUES (1,1,1,'合作 谁是你的菜','','http://yanxuan.nosdn.127.net/65091eebc48899298171c2eb6696fe27.jpg','合作 谁是你的菜',0,1),(2,1,1,'活动 美食节','','http://yanxuan.nosdn.127.net/bff2e49136fcef1fd829f5036e07f116.jpg','活动 美食节',0,1),(3,1,1,'活动 母亲节','','http://yanxuan.nosdn.127.net/8e50c65fda145e6dd1bf4fb7ee0fcecc.jpg','活动 母亲节',0,1);
/*!40000 ALTER TABLE `nideshop_ad` ENABLE KEYS */;
UNLOCK TABLES;