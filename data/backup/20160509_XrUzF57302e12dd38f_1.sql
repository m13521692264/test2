-- 74CMS VERSION:3.7
-- Mysql VERSION:5.5.21
-- Create time:2016-05-09 14:28:34
DROP TABLE IF EXISTS `qs_ad`;
CREATE TABLE `qs_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `alias` varchar(80) NOT NULL,
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` smallint(5) NOT NULL,
  `type_id` smallint(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `note` varchar(230) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '50',
  `addtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `deadline` int(11) NOT NULL DEFAULT '0',
  `text_content` varchar(250) NOT NULL,
  `text_url` varchar(250) NOT NULL,
  `text_color` varchar(60) NOT NULL,
  `img_path` varchar(250) NOT NULL,
  `img_url` varchar(250) NOT NULL,
  `img_explain` varchar(250) NOT NULL,
  `img_uid` int(10) NOT NULL DEFAULT '0',
  `code_content` text NOT NULL,
  `flash_path` varchar(250) NOT NULL,
  `flash_width` int(10) unsigned NOT NULL,
  `flash_height` int(10) unsigned NOT NULL,
  `floating_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `floating_width` int(10) unsigned NOT NULL,
  `floating_height` int(10) unsigned NOT NULL,
  `floating_url` varchar(250) NOT NULL,
  `floating_path` varchar(250) NOT NULL,
  `floating_left` varchar(10) NOT NULL,
  `floating_right` varchar(10) NOT NULL,
  `floating_top` int(11) NOT NULL,
  `video_path` varchar(250) NOT NULL,
  `video_width` int(10) unsigned NOT NULL,
  `video_height` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias_starttime_deadline` (`alias`,`starttime`,`deadline`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_ad` VALUES ('1','0','QS_indexfocus','1','1','2','�����ҵ��Ȩ','','50','0','0','0','','','','http://www.74cms.com/74ad_610x270.jpg','http://www.74cms.com/','��ʿCMS��ҵ��Ȩ','0','','','0','0','1','0','0','','','','','0','','0','0');
DROP TABLE IF EXISTS `qs_ad_app`;
CREATE TABLE `qs_ad_app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(80) NOT NULL,
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` smallint(5) NOT NULL,
  `type_id` smallint(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `note` varchar(230) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '50',
  `addtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `deadline` int(11) NOT NULL DEFAULT '0',
  `text_content` varchar(250) NOT NULL,
  `text_url` varchar(250) NOT NULL,
  `text_color` varchar(60) NOT NULL,
  `img_path` varchar(250) NOT NULL,
  `img_url` varchar(250) NOT NULL,
  `img_explain` varchar(250) NOT NULL,
  `img_uid` int(10) NOT NULL DEFAULT '0',
  `code_content` text NOT NULL,
  `flash_path` varchar(250) NOT NULL,
  `flash_width` int(10) unsigned NOT NULL,
  `flash_height` int(10) unsigned NOT NULL,
  `floating_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `floating_width` int(10) unsigned NOT NULL,
  `floating_height` int(10) unsigned NOT NULL,
  `floating_url` varchar(250) NOT NULL,
  `floating_path` varchar(250) NOT NULL,
  `floating_left` varchar(10) NOT NULL,
  `floating_right` varchar(10) NOT NULL,
  `floating_top` int(11) NOT NULL,
  `video_path` varchar(250) NOT NULL,
  `video_width` int(10) unsigned NOT NULL,
  `video_height` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias_starttime_deadline` (`alias`,`starttime`,`deadline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_ad_app_category`;
CREATE TABLE `qs_ad_app_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `categoryname` varchar(100) NOT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expense` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_ad_app_category` VALUES ('1','QS_appindexfocus','2','��ҳͼƬ�ַ����','1','10');
INSERT INTO `qs_ad_app_category` VALUES ('2','QS_appwelcome','2','��ӭҳ���','1','30');
DROP TABLE IF EXISTS `qs_ad_category`;
CREATE TABLE `qs_ad_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `categoryname` varchar(100) NOT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expense` smallint(5) unsigned NOT NULL,
  `tpl` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_ad_category` VALUES ('1','QS_indexfocus','2','��ҳͼƬ�ַ����','1','10','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('2','QS_indexcentreimg','2','��ҳ�в����ӹ��','1','30','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('3','QS_newsbanner','2','��Ѷ��ҳ�м���','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('4','QS_indexfootimg','2','��ҳ�·����ӹ��λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('5','QS_indexfloat','5','��ҳ�������','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('6','QS_indexfootbanner','2','��ҳ�ײ�������','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('7','QS_trainfocus','2','��ѵ��ҳ�Ϸ���ͼƬ���λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('8','QS_traincentreimg','2','��ѵ���в�������','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('9','QS_indexcenter','2','��ҳ�в�������','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('10','QS_indexrecommend','2','��ҳ�ϲ������Ƽ����λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('11','QS_jobfairallimg','2','��Ƹ���б�ҳ���','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('12','QS_indextopimg','2','��ҳ�Ϸ�������λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('13','QS_yellowpage','2','��ҳ�Ҳ���λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('14','QS_newsbanner2','2','��Ѷ��ҳ�м���2','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('15','QS_shop_index','2','�����̳���ҳ�ֲ����λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('16','QS_campusbanner','2','У����ҳͨ�����λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('17','QS_campusmedium','2','У����ҳ�еȹ��λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('18','QS_campusshort','2','У����ҳ��С���λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('19','QS_campusright','2','У����ҳ�Ҳ���λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('20','QS_company_index','2','��ҵ��Ա�����в����λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('21','QS_hunterindexright','2','��ͷ��ҳ�Ҳ���λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('22','QS_trainindexright','2','��ѵ��ҳ�Ҳ���λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('23','QS_indexcentreimg_230x58','2','��ҳ�в����ӹ��230x58','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('24','QS_floor_img1','2','��ҳ¥����1','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('25','QS_floor_img2','2','��ҳ¥����2','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('26','QS_floor_img3','2','��ҳ¥����3','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('27','QS_floor_img4','2','��ҳ¥����4','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('28','QS_floor_img5','2','��ҳ¥����5','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('29','QS_37indexcenterbanner','2','37��ģ����ҳ�м������','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('30','QS_37indexcenterimg','2','37��ģ����ҳ�м���ӹ��','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('31','QS_37indexnewimg','2','37��ģ����ҳ�·������Ƽ����','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('32','QS_simpleresumeallimg','2','΢�����в����λ','1','0','default,default_subsite');
INSERT INTO `qs_ad_category` VALUES ('33','QS_simpleallimg','2','΢��Ƹ�в����λ','1','0','default,default_subsite');
DROP TABLE IF EXISTS `qs_admin`;
CREATE TABLE `qs_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `purview` text NOT NULL,
  `rank` varchar(32) NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  `site_purview` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_admin` VALUES ('1','admin','123@qq.com','8e422956f884721abc0c5f298a0b47ab','brKbki','all','��������Ա','1462333182','1462774154','110.178.240.228','');
DROP TABLE IF EXISTS `qs_admin_log`;
CREATE TABLE `qs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `add_time` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_admin_log` VALUES ('1','admin','1462333207','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('2','admin','1462434031','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('3','admin','1462435017','���idΪ2�ĸ��˻�Ա','110.177.50.44','3');
INSERT INTO `qs_admin_log` VALUES ('4','admin','1462435153','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('5','admin','1462435195','<span style=\"color:#FF0000\">�û������������</span>','110.177.50.44','2');
INSERT INTO `qs_admin_log` VALUES ('6','admin','1462435201','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('7','admin','1462437068','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('8','admin','1462442014','�޸Ļ�ԱuidΪ1����','110.177.50.44','3');
INSERT INTO `qs_admin_log` VALUES ('9','admin','1462495892','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('10','admin','1462499120','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('11','admin','1462499634','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('12','admin','1462502290','�ɹ���¼','127.0.0.1','1');
INSERT INTO `qs_admin_log` VALUES ('13','admin','1462503383','��̨�ɹ�������վ����','127.0.0.1','3');
INSERT INTO `qs_admin_log` VALUES ('14','admin','1462505323','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('15','admin','1462505396','<span style=\"color:#FF0000\">�û������������</span>','110.177.50.44','2');
INSERT INTO `qs_admin_log` VALUES ('16','admin','1462505402','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('17','admin','1462505654','��̨�ɹ�������վ����','110.177.50.44','3');
INSERT INTO `qs_admin_log` VALUES ('18','admin','1462510915','�ɹ���¼','110.177.50.44','1');
INSERT INTO `qs_admin_log` VALUES ('19','admin','1462516736','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('20','admin','1462516918','��̨�ɹ�������������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('21','admin','1462517901','��̨�ɹ�������������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('22','admin','1462517943','��ְλidΪ2��ְλ,���״̬����Ϊ3������1��','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('23','admin','1462518374','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('24','admin','1462518787','��ӻ�Աqqqqqqqqqqq','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('25','admin','1462518911','����ҵuidΪ1����ҵ����֤״̬�޸�Ϊ1','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('26','admin','1462519142','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('27','admin','1462520792','��̨�ɹ�������������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('28','admin','1462520831','��̨��������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('29','admin','1462522369','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('30','admin','1462523332','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('31','admin','1462524565','��ְλidΪ6��ְλ,���״̬����Ϊ3������1��','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('32','admin','1462531414','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('33','admin','1462546809','�ɹ���¼','171.117.31.101','1');
INSERT INTO `qs_admin_log` VALUES ('34','admin','1462548955','�ɹ���¼','171.117.31.101','1');
INSERT INTO `qs_admin_log` VALUES ('35','admin','1462580790','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('36','admin','1462580820','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('37','admin','1462582255','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('38','admin','1462582332','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('39','admin','1462589329','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('40','admin','1462589344','�޸Ļ�ԱuidΪ1����','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('41','admin','1462589358','�޸Ļ�ԱuidΪ5����','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('42','admin','1462590074','�޸Ļ�ԱuidΪ2������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('43','admin','1462591104','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('44','admin','1462606475','�ɹ���¼','114.111.167.234','1');
INSERT INTO `qs_admin_log` VALUES ('45','admin','1462606803','���idΪ7�ĸ��˻�Ա','114.111.167.234','3');
INSERT INTO `qs_admin_log` VALUES ('46','admin','1462608856','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('47','admin','1462613290','�ɹ���¼','123.151.42.47','1');
INSERT INTO `qs_admin_log` VALUES ('48','admin','1462623535','�ɹ���¼','183.185.255.147','1');
INSERT INTO `qs_admin_log` VALUES ('49','admin','1462754929','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('50','admin','1462755073','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('51','admin','1462755392','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('52','admin','1462755443','��̨��ӷ��࣡','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('53','admin','1462755562','��̨�ɹ���ӷ��� , �����6����','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('54','admin','1462755685','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('55','admin','1462755711','��̨�ɹ��޸ķ��࣡','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('56','admin','1462761947','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('57','admin','1462761963','��̨����վ������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('58','admin','1462763126','��̨�ɹ�������������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('59','admin','1462763157','��̨�ɹ�������������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('60','admin','1462763470','��̨�ɹ�������������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('61','admin','1462774154','�ɹ���¼','110.178.240.228','1');
INSERT INTO `qs_admin_log` VALUES ('62','admin','1462774977','��̨�ɹ�������������','110.178.240.228','3');
INSERT INTO `qs_admin_log` VALUES ('63','admin','1462775062','��̨�ɹ�������������','110.178.240.228','3');
DROP TABLE IF EXISTS `qs_article`;
CREATE TABLE `qs_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `type_id` tinyint(3) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Small_img` varchar(80) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `focos` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `article_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`article_order`,`id`),
  KEY `click` (`click`),
  KEY `focos_article_order` (`focos`,`article_order`,`id`),
  KEY `addtime` (`addtime`),
  KEY `parentid` (`parentid`,`article_order`,`id`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_article_category`;
CREATE TABLE `qs_article_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_article_category` VALUES ('1','0','��Ѷ����','0','��Ѷ����','','','1');
INSERT INTO `qs_article_category` VALUES ('2','1','ְҵָ��','0','','','','1');
INSERT INTO `qs_article_category` VALUES ('3','1','����ָ��','0','','','','1');
INSERT INTO `qs_article_category` VALUES ('4','1','���Ա���','0','','','','1');
INSERT INTO `qs_article_category` VALUES ('5','1','ְ������','0','','','','1');
INSERT INTO `qs_article_category` VALUES ('6','1','�Ͷ���Է','0','','','','1');
INSERT INTO `qs_article_category` VALUES ('7','1','ְ���۲�','0','','','','1');
INSERT INTO `qs_article_category` VALUES ('8','0','��ͷ��Ѷ','0','��ͷ��Ѷ','','','1');
INSERT INTO `qs_article_category` VALUES ('9','8','��ҵ��Ѷ','0','','','','1');
DROP TABLE IF EXISTS `qs_article_property`;
CREATE TABLE `qs_article_property` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(30) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_article_property` VALUES ('1','��ͨ��Ѷ','0','1');
INSERT INTO `qs_article_property` VALUES ('2','ͷ����Ѷ','0','1');
INSERT INTO `qs_article_property` VALUES ('3','��������','0','1');
INSERT INTO `qs_article_property` VALUES ('4','�Ƽ���Ѷ','0','1');
DROP TABLE IF EXISTS `qs_audit_reason`;
CREATE TABLE `qs_audit_reason` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobs_id` int(10) unsigned NOT NULL DEFAULT '0',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `resume_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_id` (`jobs_id`),
  KEY `company_id` (`company_id`),
  KEY `resume_id` (`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_baidu_submiturl`;
CREATE TABLE `qs_baidu_submiturl` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_baidu_submiturl` VALUES ('1','token','');
INSERT INTO `qs_baidu_submiturl` VALUES ('2','addcompany','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('3','addjob','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('4','addresume','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('5','addcompanynews','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('6','addjobfair','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('7','addarticle','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('8','addexplain','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('9','addnotice','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('10','addcampus','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('11','addhunterjob','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('12','addhunter','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('13','addcourse','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('14','addagency','0');
INSERT INTO `qs_baidu_submiturl` VALUES ('15','addteacher','0');
DROP TABLE IF EXISTS `qs_baiduxml`;
CREATE TABLE `qs_baiduxml` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_baiduxml` VALUES ('1','order','1');
INSERT INTO `qs_baiduxml` VALUES ('2','xmlmax','0');
INSERT INTO `qs_baiduxml` VALUES ('3','xmlpagesize','3000');
INSERT INTO `qs_baiduxml` VALUES ('4','xmlpre','li_');
INSERT INTO `qs_baiduxml` VALUES ('5','xmldir','baiduxml/');
INSERT INTO `qs_baiduxml` VALUES ('6','indexname','index.xml');
INSERT INTO `qs_baiduxml` VALUES ('7','indexdir','baiduxml/');
DROP TABLE IF EXISTS `qs_captcha`;
CREATE TABLE `qs_captcha` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_captcha` VALUES ('1','verify_userreg','0');
INSERT INTO `qs_captcha` VALUES ('2','verify_userlogin','1');
INSERT INTO `qs_captcha` VALUES ('3','verify_getpwd','0');
INSERT INTO `qs_captcha` VALUES ('4','verify_addjob','0');
INSERT INTO `qs_captcha` VALUES ('5','verify_resume','0');
INSERT INTO `qs_captcha` VALUES ('6','verify_link','1');
INSERT INTO `qs_captcha` VALUES ('7','verify_gifts','1');
INSERT INTO `qs_captcha` VALUES ('8','verify_simple','0');
INSERT INTO `qs_captcha` VALUES ('9','verify_comment','1');
INSERT INTO `qs_captcha` VALUES ('10','verify_adminlogin','0');
INSERT INTO `qs_captcha` VALUES ('11','verify_addteachers','0');
INSERT INTO `qs_captcha` VALUES ('12','verify_addcourse','0');
INSERT INTO `qs_captcha` VALUES ('13','captcha_width','150');
INSERT INTO `qs_captcha` VALUES ('14','captcha_height','40');
INSERT INTO `qs_captcha` VALUES ('15','captcha_textcolor','');
INSERT INTO `qs_captcha` VALUES ('16','captcha_textfontsize','25');
INSERT INTO `qs_captcha` VALUES ('17','captcha_textlength','4');
INSERT INTO `qs_captcha` VALUES ('18','captcha_lang','en');
INSERT INTO `qs_captcha` VALUES ('19','captcha_bgcolor','');
INSERT INTO `qs_captcha` VALUES ('20','captcha_noisepoint','0');
INSERT INTO `qs_captcha` VALUES ('21','captcha_noiseline','5');
INSERT INTO `qs_captcha` VALUES ('22','captcha_distortion','0');
INSERT INTO `qs_captcha` VALUES ('23','verify_resume_outward','0');
DROP TABLE IF EXISTS `qs_category`;
CREATE TABLE `qs_category` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_parentid` int(10) unsigned NOT NULL,
  `c_alias` char(30) NOT NULL,
  `c_name` char(30) NOT NULL,
  `c_order` int(10) NOT NULL,
  `c_index` char(1) NOT NULL,
  `c_note` char(60) NOT NULL,
  `stat_jobs` char(15) NOT NULL,
  `stat_resume` char(15) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `c_alias` (`c_alias`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_category` VALUES ('1','0','QS_trade','��������/Ӳ��','0','','','','');
INSERT INTO `qs_category` VALUES ('2','0','QS_trade','�����ϵͳ/ά��','0','','','','');
INSERT INTO `qs_category` VALUES ('3','0','QS_trade','ͨ��(�豸/��Ӫ/����)','0','','','','');
INSERT INTO `qs_category` VALUES ('4','0','QS_trade','������/��������','0','','','','');
INSERT INTO `qs_category` VALUES ('5','0','QS_trade','������Ϸ','0','','','','');
INSERT INTO `qs_category` VALUES ('6','0','QS_trade','����/�뵼��/���ɵ�·','0','','','','');
INSERT INTO `qs_category` VALUES ('7','0','QS_trade','�����Ǳ�/��ҵ�Զ���','0','','','','');
INSERT INTO `qs_category` VALUES ('8','0','QS_trade','���/���','0','','','','');
INSERT INTO `qs_category` VALUES ('9','0','QS_trade','����(Ͷ��/֤ȯ','0','','','','');
INSERT INTO `qs_category` VALUES ('10','0','QS_trade','����(����/����)','0','','','','');
INSERT INTO `qs_category` VALUES ('11','0','QS_trade','ó��/������','0','','','','');
INSERT INTO `qs_category` VALUES ('12','0','QS_trade','����/����','0','','','','');
INSERT INTO `qs_category` VALUES ('13','0','QS_trade','����Ʒ(ʳ/��/�̾�)','0','','','','');
INSERT INTO `qs_category` VALUES ('14','0','QS_trade','��װ/��֯/Ƥ��','0','','','','');
INSERT INTO `qs_category` VALUES ('15','0','QS_trade','�Ҿ�/�ҵ�/����Ʒ/���','0','','','','');
INSERT INTO `qs_category` VALUES ('16','0','QS_trade','�칫��Ʒ���豸','0','','','','');
INSERT INTO `qs_category` VALUES ('17','0','QS_trade','��е/�豸/�ع�','0','','','','');
INSERT INTO `qs_category` VALUES ('18','0','QS_trade','����/Ħ�г�/�����','0','','','','');
INSERT INTO `qs_category` VALUES ('19','0','QS_trade','��ҩ/���﹤��','0','','','','');
INSERT INTO `qs_category` VALUES ('20','0','QS_trade','ҽ��/����/����/����','0','','','','');
INSERT INTO `qs_category` VALUES ('21','0','QS_trade','ҽ���豸/��е','0','','','','');
INSERT INTO `qs_category` VALUES ('22','0','QS_trade','���/�г��ƹ�','0','','','','');
INSERT INTO `qs_category` VALUES ('23','0','QS_trade','��չ/����','0','','','','');
INSERT INTO `qs_category` VALUES ('24','0','QS_trade','Ӱ��/ý��/����/����','0','','','','');
INSERT INTO `qs_category` VALUES ('25','0','QS_trade','ӡˢ/��װ/��ֽ','0','','','','');
INSERT INTO `qs_category` VALUES ('26','0','QS_trade','���ز�����','0','','','','');
INSERT INTO `qs_category` VALUES ('27','0','QS_trade','�����빤��','0','','','','');
INSERT INTO `qs_category` VALUES ('28','0','QS_trade','�Ҿ�/�������/װ��','0','','','','');
INSERT INTO `qs_category` VALUES ('29','0','QS_trade','��ҵ����/��ҵ����','0','','','','');
INSERT INTO `qs_category` VALUES ('30','0','QS_trade','�н����/��������','0','','','','');
INSERT INTO `qs_category` VALUES ('31','0','QS_trade','רҵ����/�ƻ�/����','0','','','','');
INSERT INTO `qs_category` VALUES ('32','0','QS_trade','���/��֤','0','','','','');
INSERT INTO `qs_category` VALUES ('33','0','QS_trade','����/��ѵ','0','','','','');
INSERT INTO `qs_category` VALUES ('34','0','QS_trade','ѧ��/����','0','','','','');
INSERT INTO `qs_category` VALUES ('35','0','QS_trade','����/����/����','0','','','','');
INSERT INTO `qs_category` VALUES ('36','0','QS_trade','�Ƶ�/����','0','','','','');
INSERT INTO `qs_category` VALUES ('37','0','QS_trade','��ͨ/����/����','0','','','','');
INSERT INTO `qs_category` VALUES ('38','0','QS_trade','����/����','0','','','','');
INSERT INTO `qs_category` VALUES ('39','0','QS_trade','��Դ(ʯ��/����/���)','0','','','','');
INSERT INTO `qs_category` VALUES ('40','0','QS_trade','��Դ(�ɾ�/ұ��/ԭ����)','0','','','','');
INSERT INTO `qs_category` VALUES ('41','0','QS_trade','����/ˮ��/����Դ','0','','','','');
INSERT INTO `qs_category` VALUES ('42','0','QS_trade','��������/��ҵ��λ','0','','','','');
INSERT INTO `qs_category` VALUES ('43','0','QS_trade','��ӯ������/��ҵЭ��','0','','','','');
INSERT INTO `qs_category` VALUES ('44','0','QS_trade','ũҵ/��ҵ/��ҵ/��ҵ','0','','','','');
INSERT INTO `qs_category` VALUES ('45','0','QS_trade','������ҵ','0','','','','');
INSERT INTO `qs_category` VALUES ('46','0','QS_company_type','����','0','','','','');
INSERT INTO `qs_category` VALUES ('47','0','QS_company_type','��Ӫ','0','','','','');
INSERT INTO `qs_category` VALUES ('48','0','QS_company_type','����','0','','','','');
INSERT INTO `qs_category` VALUES ('49','0','QS_company_type','���̶���','0','','','','');
INSERT INTO `qs_category` VALUES ('50','0','QS_company_type','�ɷ�����ҵ','0','','','','');
INSERT INTO `qs_category` VALUES ('51','0','QS_company_type','���й�˾','0','','','','');
INSERT INTO `qs_category` VALUES ('52','0','QS_company_type','���һ���','0','','','','');
INSERT INTO `qs_category` VALUES ('53','0','QS_company_type','��ҵ��λ','0','','','','');
INSERT INTO `qs_category` VALUES ('54','0','QS_company_type','����','0','','','','');
INSERT INTO `qs_category` VALUES ('56','0','QS_wage','1000~1500Ԫ/��','0','','','','');
INSERT INTO `qs_category` VALUES ('57','0','QS_wage','1500~2000Ԫ/��','0','','','','');
INSERT INTO `qs_category` VALUES ('58','0','QS_wage','2000~3000Ԫ/��','0','','','','');
INSERT INTO `qs_category` VALUES ('59','0','QS_wage','3000~5000Ԫ/��','0','','','','');
INSERT INTO `qs_category` VALUES ('60','0','QS_wage','5000~10000Ԫ/��','0','','','','');
INSERT INTO `qs_category` VALUES ('61','0','QS_wage','1������/��','0','','','','');
INSERT INTO `qs_category` VALUES ('62','0','QS_jobs_nature','ȫְ','0','','','','');
INSERT INTO `qs_category` VALUES ('63','0','QS_jobs_nature','��ְ','0','','','','');
INSERT INTO `qs_category` VALUES ('64','0','QS_jobs_nature','ʵϰ','0','','','','');
INSERT INTO `qs_category` VALUES ('65','0','QS_education','����','0','','','','');
INSERT INTO `qs_category` VALUES ('66','0','QS_education','����','0','','','','');
INSERT INTO `qs_category` VALUES ('67','0','QS_education','�м�','0','','','','');
INSERT INTO `qs_category` VALUES ('68','0','QS_education','��ר','0','','','','');
INSERT INTO `qs_category` VALUES ('69','0','QS_education','��ר','0','','','','');
INSERT INTO `qs_category` VALUES ('70','0','QS_education','����','0','','','','');
INSERT INTO `qs_category` VALUES ('71','0','QS_education','˶ʿ','0','','','','');
INSERT INTO `qs_category` VALUES ('72','0','QS_education','��ʿ','0','','','','');
INSERT INTO `qs_category` VALUES ('73','0','QS_education','����','0','','','','');
INSERT INTO `qs_category` VALUES ('74','0','QS_experience','�޾���','0','','','','');
INSERT INTO `qs_category` VALUES ('75','0','QS_experience','1������','0','','','','');
INSERT INTO `qs_category` VALUES ('76','0','QS_experience','1-3��','0','','','','');
INSERT INTO `qs_category` VALUES ('77','0','QS_experience','3-5��','0','','','','');
INSERT INTO `qs_category` VALUES ('78','0','QS_experience','5-10��','0','','','','');
INSERT INTO `qs_category` VALUES ('79','0','QS_experience','10������','0','','','','');
INSERT INTO `qs_category` VALUES ('80','0','QS_scale','20������','0','','','','');
INSERT INTO `qs_category` VALUES ('81','0','QS_scale','20-99��','0','','','','');
INSERT INTO `qs_category` VALUES ('82','0','QS_scale','100-499��','0','','','','');
INSERT INTO `qs_category` VALUES ('83','0','QS_scale','500-999��','0','','','','');
INSERT INTO `qs_category` VALUES ('84','0','QS_scale','1000-9999��','0','','','','');
INSERT INTO `qs_category` VALUES ('85','0','QS_scale','10000������','0','','','','');
INSERT INTO `qs_category` VALUES ('86','0','QS_train_type','������ѧ','0','','','','');
INSERT INTO `qs_category` VALUES ('88','0','QS_train_type','��ѧ����','0','','','','');
INSERT INTO `qs_category` VALUES ('240','0','QS_train_classtype','������','0','q','','','');
INSERT INTO `qs_category` VALUES ('239','0','QS_train_classtype','ȫ����','0','q','','','');
INSERT INTO `qs_category` VALUES ('238','0','QS_train_classtype','��ĩ��','0','z','','','');
INSERT INTO `qs_category` VALUES ('237','0','QS_train_classtype','���','0','w','','','');
INSERT INTO `qs_category` VALUES ('236','0','QS_train_classtype','�����','0','b','','','');
INSERT INTO `qs_category` VALUES ('235','0','QS_train_classtype','�浽��ѧ','0','s','','','');
INSERT INTO `qs_category` VALUES ('127','0','QS_street','������·','0','j','0','','');
INSERT INTO `qs_category` VALUES ('128','0','QS_street','�����н�','0','x','0','','');
INSERT INTO `qs_category` VALUES ('129','0','QS_street','�ӻ����','0','x','0','','');
INSERT INTO `qs_category` VALUES ('130','0','QS_street','����·','0','c','0','','');
INSERT INTO `qs_category` VALUES ('131','0','QS_street','���·','0','j','0','','');
INSERT INTO `qs_category` VALUES ('132','0','QS_street','̫��·','0','t','0','','');
INSERT INTO `qs_category` VALUES ('133','0','QS_street','����·','0','j','0','','');
INSERT INTO `qs_category` VALUES ('134','0','QS_street','��԰��·','0','t','0','','');
INSERT INTO `qs_category` VALUES ('135','0','QS_street','������','0','f','0','','');
INSERT INTO `qs_category` VALUES ('136','0','QS_street','ӭ����','0','y','0','','');
INSERT INTO `qs_category` VALUES ('137','0','QS_street','ˮ���ؽ�','0','s','0','','');
INSERT INTO `qs_category` VALUES ('138','0','QS_street','����','0','l','0','','');
INSERT INTO `qs_category` VALUES ('139','0','QS_street','������·','0','l','0','','');
INSERT INTO `qs_category` VALUES ('140','0','QS_street','������Ӫ','0','d','0','','');
INSERT INTO `qs_category` VALUES ('141','0','QS_street','�����ؽ�','0','h','0','','');
INSERT INTO `qs_category` VALUES ('142','0','QS_street','������','0','c','0','','');
INSERT INTO `qs_category` VALUES ('143','0','QS_street','������·','0','b','0','','');
INSERT INTO `qs_category` VALUES ('144','0','QS_street','�����','0','c','0','','');
INSERT INTO `qs_category` VALUES ('145','0','QS_jobtag','������','0','h','0','','');
INSERT INTO `qs_category` VALUES ('146','0','QS_jobtag','���ս�','0','n','0','','');
INSERT INTO `qs_category` VALUES ('147','0','QS_jobtag','˫��','0','s','0','','');
INSERT INTO `qs_category` VALUES ('148','0','QS_jobtag','����һ��','0','w','0','','');
INSERT INTO `qs_category` VALUES ('149','0','QS_jobtag','�Ӱ��','0','j','0','','');
INSERT INTO `qs_category` VALUES ('150','0','QS_jobtag','��������','0','c','0','','');
INSERT INTO `qs_category` VALUES ('151','0','QS_jobtag','��ͨ����','0','m','0','','');
INSERT INTO `qs_category` VALUES ('152','0','QS_jobtag','�Ӱಹ��','0','s','0','','');
INSERT INTO `qs_category` VALUES ('153','0','QS_jobtag','��ʳ��','0','b','0','','');
INSERT INTO `qs_category` VALUES ('154','0','QS_jobtag','����淶','0','g','0','','');
INSERT INTO `qs_category` VALUES ('155','0','QS_jobtag','�����','0','y','0','','');
INSERT INTO `qs_category` VALUES ('156','0','QS_jobtag','ȫ�ڽ�','0','q','0','','');
INSERT INTO `qs_category` VALUES ('157','0','QS_jobtag','�����','0','y','0','','');
INSERT INTO `qs_category` VALUES ('158','0','QS_jobtag','ר������','0','z','0','','');
INSERT INTO `qs_category` VALUES ('159','0','QS_jobtag','�в���','0','y','0','','');
INSERT INTO `qs_category` VALUES ('160','0','QS_jobtag','������','0','j','0','','');
INSERT INTO `qs_category` VALUES ('161','0','QS_jobtag','����','0','c','0','','');
INSERT INTO `qs_category` VALUES ('162','0','QS_jobtag','����','0','f','0','','');
INSERT INTO `qs_category` VALUES ('163','0','QS_jobtag','ѹ��С','0','y','0','','');
INSERT INTO `qs_category` VALUES ('164','0','QS_jobtag','������ѵ','0','j','0','','');
INSERT INTO `qs_category` VALUES ('165','0','QS_jobtag','����','0','l','0','','');
INSERT INTO `qs_category` VALUES ('166','0','QS_resumetag','�����','0','x','0','','');
INSERT INTO `qs_category` VALUES ('167','0','QS_resumetag','���ʼ�','0','q','0','','');
INSERT INTO `qs_category` VALUES ('168','0','QS_resumetag','�ܳ���','0','n','0','','');
INSERT INTO `qs_category` VALUES ('169','0','QS_resumetag','����Ĭ','0','h','0','','');
INSERT INTO `qs_category` VALUES ('170','0','QS_resumetag','��������','0','j','0','','');
INSERT INTO `qs_category` VALUES ('171','0','QS_resumetag','���׺���','0','y','0','','');
INSERT INTO `qs_category` VALUES ('172','0','QS_resumetag','��ѧ��','0','s','0','','');
INSERT INTO `qs_category` VALUES ('173','0','QS_resumetag','����ḻ','0','j','0','','');
INSERT INTO `qs_category` VALUES ('174','0','QS_resumetag','�ܼӰ�','0','n','0','','');
INSERT INTO `qs_category` VALUES ('175','0','QS_resumetag','����','0','h','0','','');
INSERT INTO `qs_category` VALUES ('176','0','QS_resumetag','�Ὺ��','0','h','0','','');
INSERT INTO `qs_category` VALUES ('177','0','QS_resumetag','�ڲź�','0','k','0','','');
INSERT INTO `qs_category` VALUES ('178','0','QS_resumetag','��������','0','s','0','','');
INSERT INTO `qs_category` VALUES ('179','0','QS_resumetag','��Ӧ��','0','h','0','','');
INSERT INTO `qs_category` VALUES ('180','0','QS_resumetag','��ʵ����','0','c','0','','');
INSERT INTO `qs_category` VALUES ('181','0','QS_resumetag','�����','0','w','0','','');
INSERT INTO `qs_category` VALUES ('182','0','QS_resumetag','�Ը���','0','x','0','','');
INSERT INTO `qs_category` VALUES ('183','0','QS_resumetag','���Ͻ���','0','y','0','','');
INSERT INTO `qs_category` VALUES ('184','0','QS_resumetag','������','0','r','0','','');
INSERT INTO `qs_category` VALUES ('185','0','QS_resumetag','֪ʶ�ḻ','0','z','0','','');
INSERT INTO `qs_category` VALUES ('186','0','QS_resumetag','���ն�','0','c','0','','');
INSERT INTO `qs_category` VALUES ('187','0','QS_train_category','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('188','0','QS_train_category','Ӣ��','0','','0','','');
INSERT INTO `qs_category` VALUES ('189','0','QS_train_category','��������','0','','0','','');
INSERT INTO `qs_category` VALUES ('190','0','QS_train_category','��ҵ����','0','','0','','');
INSERT INTO `qs_category` VALUES ('191','0','QS_train_category','ְҵ�ʸ�','0','','0','','');
INSERT INTO `qs_category` VALUES ('192','0','QS_train_category','��ҵ����','0','','0','','');
INSERT INTO `qs_category` VALUES ('193','0','QS_train_category','�ƻ����','0','','0','','');
INSERT INTO `qs_category` VALUES ('194','0','QS_train_category','ѧ������','0','','0','','');
INSERT INTO `qs_category` VALUES ('195','0','QS_train_category','������ѧ','0','','0','','');
INSERT INTO `qs_category` VALUES ('196','0','QS_hunter_wage','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('197','0','QS_hunter_wage','10-20��','0','','0','','');
INSERT INTO `qs_category` VALUES ('198','0','QS_hunter_wage','20-30��','0','','0','','');
INSERT INTO `qs_category` VALUES ('199','0','QS_hunter_wage','30-50��','0','','0','','');
INSERT INTO `qs_category` VALUES ('200','0','QS_hunter_wage','50-80��','0','','0','','');
INSERT INTO `qs_category` VALUES ('201','0','QS_hunter_wage','80-100��','0','','0','','');
INSERT INTO `qs_category` VALUES ('202','0','QS_hunter_wage','100������','0','','0','','');
INSERT INTO `qs_category` VALUES ('203','0','QS_hunter_age','18-25��','0','','0','','');
INSERT INTO `qs_category` VALUES ('204','0','QS_hunter_age','25-30��','0','','0','','');
INSERT INTO `qs_category` VALUES ('205','0','QS_hunter_age','30-40��','0','','0','','');
INSERT INTO `qs_category` VALUES ('206','0','QS_hunter_age','40-50��','0','','0','','');
INSERT INTO `qs_category` VALUES ('207','0','QS_hunter_age','50-60��','0','','0','','');
INSERT INTO `qs_category` VALUES ('208','0','QS_language','��ͨ��','0','','0','','');
INSERT INTO `qs_category` VALUES ('209','0','QS_language','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('210','0','QS_language','Ӣ��','0','','0','','');
INSERT INTO `qs_category` VALUES ('211','0','QS_language','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('212','0','QS_language','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('213','0','QS_language','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('214','0','QS_hunter_wage_structure','����н��','0','','0','','');
INSERT INTO `qs_category` VALUES ('215','0','QS_hunter_wage_structure','����/���','0','','0','','');
INSERT INTO `qs_category` VALUES ('216','0','QS_hunter_wage_structure','��Ȩ','0','','0','','');
INSERT INTO `qs_category` VALUES ('217','0','QS_hunter_wage_structure','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('218','0','QS_hunter_socialbenefits','���ұ�׼','0','','0','','');
INSERT INTO `qs_category` VALUES ('219','0','QS_hunter_socialbenefits','��ҵ����','0','','0','','');
INSERT INTO `qs_category` VALUES ('220','0','QS_hunter_socialbenefits','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('221','0','QS_hunter_livebenefits','ס������','0','','0','','');
INSERT INTO `qs_category` VALUES ('222','0','QS_hunter_livebenefits','��˾����','0','','0','','');
INSERT INTO `qs_category` VALUES ('223','0','QS_hunter_livebenefits','������','0','','0','','');
INSERT INTO `qs_category` VALUES ('224','0','QS_hunter_livebenefits','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('225','0','QS_hunter_annualleave','���ұ�׼','0','','0','','');
INSERT INTO `qs_category` VALUES ('226','0','QS_hunter_annualleave','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('227','0','QS_hunter_rank','Ѱ��Ա(R)','0','','0','','');
INSERT INTO `qs_category` VALUES ('228','0','QS_hunter_rank','�������(AC)','0','','0','','');
INSERT INTO `qs_category` VALUES ('229','0','QS_hunter_rank','����(C)','0','','0','','');
INSERT INTO `qs_category` VALUES ('230','0','QS_hunter_rank','�������(SC)','0','','0','','');
INSERT INTO `qs_category` VALUES ('231','0','QS_hunter_rank','�ϻ���','0','','0','','');
INSERT INTO `qs_category` VALUES ('232','0','QS_hunter_rank','��ְ��ͷ','0','','0','','');
INSERT INTO `qs_category` VALUES ('233','0','QS_hunter_rank','����','0','','0','','');
INSERT INTO `qs_category` VALUES ('241','0','QS_current','��Ŀǰ����ְ���ɿ��ٵ���','0','','','','');
INSERT INTO `qs_category` VALUES ('242','0','QS_current','��Ŀǰ��ְ�������ǻ����»���','0','','','','');
INSERT INTO `qs_category` VALUES ('243','0','QS_current','�����кõĻ����ٿ���','0','','','','');
INSERT INTO `qs_category` VALUES ('244','0','QS_current','Ŀǰ�������۴���','0','','','','');
INSERT INTO `qs_category` VALUES ('245','0','QS_current','Ӧ���ҵ��','0','','','','');
INSERT INTO `qs_category` VALUES ('246','0','QS_major','��������/Ӳ�����','0','j','','','');
INSERT INTO `qs_category` VALUES ('247','0','QS_major','�����ϵͳ/ά�����','0','j','','','');
INSERT INTO `qs_category` VALUES ('248','0','QS_major','ͨ��(�豸/��Ӫ/����)���','0','t','','','');
INSERT INTO `qs_category` VALUES ('249','0','QS_major','������/�����������','0','h','','','');
INSERT INTO `qs_category` VALUES ('250','0','QS_major','������Ϸ���','0','w','','','');
INSERT INTO `qs_category` VALUES ('251','0','QS_major','����/�뵼��/���ɵ�·���','0','d','','','');
INSERT INTO `qs_category` VALUES ('252','0','QS_major','�����Ǳ�/��ҵ�Զ������','0','y','','','');
INSERT INTO `qs_category` VALUES ('253','0','QS_major','���/������','0','h','','','');
INSERT INTO `qs_category` VALUES ('254','0','QS_major','����(Ͷ��/֤ȯ���','0','j','','','');
INSERT INTO `qs_category` VALUES ('255','0','QS_major','����(����/����)���','0','j','','','');
INSERT INTO `qs_category` VALUES ('256','0','QS_major','ó��/���������','0','m','','','');
INSERT INTO `qs_category` VALUES ('257','0','QS_major','����/�������','0','p','','','');
INSERT INTO `qs_category` VALUES ('258','0','QS_major','����Ʒ(ʳ/��/�̾�)���','0','x','','','');
INSERT INTO `qs_category` VALUES ('259','0','QS_major','��װ/��֯/Ƥ�����','0','f','','','');
INSERT INTO `qs_category` VALUES ('260','0','QS_major','�Ҿ�/�ҵ�/����Ʒ/������','0','j','','','');
INSERT INTO `qs_category` VALUES ('261','0','QS_major','�칫��Ʒ���豸���','0','b','','','');
INSERT INTO `qs_category` VALUES ('262','0','QS_major','��е/�豸/�ع����','0','j','','','');
INSERT INTO `qs_category` VALUES ('263','0','QS_major','����/Ħ�г�/��������','0','q','','','');
INSERT INTO `qs_category` VALUES ('264','0','QS_major','��ҩ/���﹤�����','0','z','','','');
INSERT INTO `qs_category` VALUES ('265','0','QS_major','ҽ��/����/����/�������','0','y','','','');
INSERT INTO `qs_category` VALUES ('266','0','QS_major','ҽ���豸/��е���','0','y','','','');
INSERT INTO `qs_category` VALUES ('267','0','QS_major','���/�г��ƹ����','0','g','','','');
INSERT INTO `qs_category` VALUES ('268','0','QS_major','��չ/�������','0','h','','','');
INSERT INTO `qs_category` VALUES ('269','0','QS_major','Ӱ��/ý��/����/�������','0','y','','','');
INSERT INTO `qs_category` VALUES ('270','0','QS_major','ӡˢ/��װ/��ֽ���','0','y','','','');
INSERT INTO `qs_category` VALUES ('271','0','QS_major','���ز��������','0','f','','','');
INSERT INTO `qs_category` VALUES ('272','0','QS_major','�����빤�����','0','j','','','');
INSERT INTO `qs_category` VALUES ('273','0','QS_major','�Ҿ�/�������/װ�����','0','j','','','');
INSERT INTO `qs_category` VALUES ('274','0','QS_major','��ҵ����/��ҵ�������','0','w','','','');
INSERT INTO `qs_category` VALUES ('275','0','QS_major','�н����/�����������','0','z','','','');
INSERT INTO `qs_category` VALUES ('276','0','QS_major','רҵ����/�ƻ�/�������','0','z','','','');
INSERT INTO `qs_category` VALUES ('277','0','QS_major','���/��֤���','0','j','','','');
INSERT INTO `qs_category` VALUES ('278','0','QS_major','����/��ѵ���','0','j','','','');
INSERT INTO `qs_category` VALUES ('279','0','QS_major','ѧ��/�������','0','x','','','');
INSERT INTO `qs_category` VALUES ('280','0','QS_major','����/����/�������','0','c','','','');
INSERT INTO `qs_category` VALUES ('281','0','QS_major','�Ƶ�/�������','0','j','','','');
INSERT INTO `qs_category` VALUES ('282','0','QS_major','��ͨ/����/�������','0','j','','','');
INSERT INTO `qs_category` VALUES ('283','0','QS_major','����/�������','0','h','','','');
INSERT INTO `qs_category` VALUES ('284','0','QS_major','��Դ(ʯ��/����/���)���','0','n','','','');
INSERT INTO `qs_category` VALUES ('285','0','QS_major','��Դ(�ɾ�/ұ��/ԭ����)���','0','n','','','');
INSERT INTO `qs_category` VALUES ('286','0','QS_major','����/ˮ��/����Դ���','0','d','','','');
INSERT INTO `qs_category` VALUES ('287','0','QS_major','��������/��ҵ��λ���','0','z','','','');
INSERT INTO `qs_category` VALUES ('288','0','QS_major','��ӯ������/��ҵЭ�����','0','f','','','');
INSERT INTO `qs_category` VALUES ('289','0','QS_major','ũҵ/��ҵ/��ҵ/��ҵ���','0','n','','','');
INSERT INTO `qs_category` VALUES ('290','0','QS_major','����רҵ','0','q','','','');
INSERT INTO `qs_category` VALUES ('291','0','QS_language_level','����','0','r','','','');
INSERT INTO `qs_category` VALUES ('292','0','QS_language_level','����','0','s','','','');
INSERT INTO `qs_category` VALUES ('293','0','QS_language_level','��ͨ','0','j','','','');
INSERT INTO `qs_category` VALUES ('294','0','nocancel','һ��','1','y','','','');
INSERT INTO `qs_category` VALUES ('295','0','nocancel','����','2','s','','','');
INSERT INTO `qs_category` VALUES ('296','0','nocancel','����','3','w','','','');
INSERT INTO `qs_category` VALUES ('297','0','nocancel','һ��','4','y','','','');
INSERT INTO `qs_category` VALUES ('298','0','nocancel','һ��','5','y','','','');
INSERT INTO `qs_category` VALUES ('299','0','nocancel','����','6','s','','','');
DROP TABLE IF EXISTS `qs_category_district`;
CREATE TABLE `qs_category_district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryname` varchar(30) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stat_jobs` varchar(15) NOT NULL,
  `stat_resume` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_category_district` VALUES ('1','0','������','0','','');
INSERT INTO `qs_category_district` VALUES ('2','0','�Ϻ���','0','','');
INSERT INTO `qs_category_district` VALUES ('3','0','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('4','0','������','0','','');
INSERT INTO `qs_category_district` VALUES ('5','0','�ӱ�ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('6','0','ɽ��ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('7','0','���ɹ�','0','','');
INSERT INTO `qs_category_district` VALUES ('8','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('9','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('10','0','������ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('11','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('12','0','�㽭ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('13','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('14','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('15','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('16','0','ɽ��ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('17','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('18','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('19','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('20','0','�㶫ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('21','0','����','0','','');
INSERT INTO `qs_category_district` VALUES ('22','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('23','0','�Ĵ�ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('24','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('25','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('26','0','����','0','','');
INSERT INTO `qs_category_district` VALUES ('27','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('28','0','����ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('29','0','�ຣʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('30','0','����','0','','');
INSERT INTO `qs_category_district` VALUES ('31','0','�½�','0','','');
INSERT INTO `qs_category_district` VALUES ('32','0','̨��ʡ','0','','');
INSERT INTO `qs_category_district` VALUES ('33','0','���','0','','');
INSERT INTO `qs_category_district` VALUES ('34','0','����','0','','');
INSERT INTO `qs_category_district` VALUES ('35','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('36','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('37','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('38','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('39','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('40','1','��̨��','0','','');
INSERT INTO `qs_category_district` VALUES ('41','1','ʯ��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('42','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('43','1','��ͷ����','0','','');
INSERT INTO `qs_category_district` VALUES ('44','1','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('45','1','ͨ����','0','','');
INSERT INTO `qs_category_district` VALUES ('46','1','˳����','0','','');
INSERT INTO `qs_category_district` VALUES ('47','1','��ƽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('48','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('49','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('50','1','ƽ����','0','','');
INSERT INTO `qs_category_district` VALUES ('51','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('52','1','������','0','','');
INSERT INTO `qs_category_district` VALUES ('53','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('54','2','¬����','0','','');
INSERT INTO `qs_category_district` VALUES ('55','2','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('56','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('57','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('58','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('59','2','բ����','0','','');
INSERT INTO `qs_category_district` VALUES ('60','2','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('61','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('62','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('63','2','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('64','2','�ζ���','0','','');
INSERT INTO `qs_category_district` VALUES ('65','2','�ֶ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('66','2','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('67','2','�ɽ���','0','','');
INSERT INTO `qs_category_district` VALUES ('68','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('69','2','�ϻ���','0','','');
INSERT INTO `qs_category_district` VALUES ('70','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('71','2','������','0','','');
INSERT INTO `qs_category_district` VALUES ('72','3','��ƽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('73','3','�Ӷ���','0','','');
INSERT INTO `qs_category_district` VALUES ('74','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('75','3','�Ͽ���','0','','');
INSERT INTO `qs_category_district` VALUES ('76','3','�ӱ���','0','','');
INSERT INTO `qs_category_district` VALUES ('77','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('78','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('79','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('80','3','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('81','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('82','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('83','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('84','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('85','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('86','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('87','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('88','3','������','0','','');
INSERT INTO `qs_category_district` VALUES ('89','3','����','0','','');
INSERT INTO `qs_category_district` VALUES ('90','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('91','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('92','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('93','4','��ɿ���','0','','');
INSERT INTO `qs_category_district` VALUES ('94','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('95','4','ɳƺ����','0','','');
INSERT INTO `qs_category_district` VALUES ('96','4','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('97','4','�ϰ���','0','','');
INSERT INTO `qs_category_district` VALUES ('98','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('99','4','��ʢ��','0','','');
INSERT INTO `qs_category_district` VALUES ('100','4','˫����','0','','');
INSERT INTO `qs_category_district` VALUES ('101','4','�山��','0','','');
INSERT INTO `qs_category_district` VALUES ('102','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('103','4','ǭ����','0','','');
INSERT INTO `qs_category_district` VALUES ('104','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('105','4','�뽭��','0','','');
INSERT INTO `qs_category_district` VALUES ('106','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('107','4','ͭ����','0','','');
INSERT INTO `qs_category_district` VALUES ('108','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('109','4','�ٲ���','0','','');
INSERT INTO `qs_category_district` VALUES ('110','4','�ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('111','4','��ƽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('112','4','�ǿ���','0','','');
INSERT INTO `qs_category_district` VALUES ('113','4','�ᶼ��','0','','');
INSERT INTO `qs_category_district` VALUES ('114','4','�潭��','0','','');
INSERT INTO `qs_category_district` VALUES ('115','4','��¡��','0','','');
INSERT INTO `qs_category_district` VALUES ('116','4','����','0','','');
INSERT INTO `qs_category_district` VALUES ('117','4','����','0','','');
INSERT INTO `qs_category_district` VALUES ('118','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('119','4','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('120','4','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('121','4','��Ϫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('122','4','ʯ��','0','','');
INSERT INTO `qs_category_district` VALUES ('123','4','��ɽ','0','','');
INSERT INTO `qs_category_district` VALUES ('124','4','����','0','','');
INSERT INTO `qs_category_district` VALUES ('125','4','��ˮ','0','','');
INSERT INTO `qs_category_district` VALUES ('126','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('127','4','�ϴ���','0','','');
INSERT INTO `qs_category_district` VALUES ('128','4','������','0','','');
INSERT INTO `qs_category_district` VALUES ('129','4','�ϴ���','0','','');
INSERT INTO `qs_category_district` VALUES ('130','5','ʯ��ׯ��','0','','');
INSERT INTO `qs_category_district` VALUES ('131','5','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('132','5','�ػʵ���','0','','');
INSERT INTO `qs_category_district` VALUES ('133','5','������','0','','');
INSERT INTO `qs_category_district` VALUES ('134','5','��̨��','0','','');
INSERT INTO `qs_category_district` VALUES ('135','5','������','0','','');
INSERT INTO `qs_category_district` VALUES ('136','5','�żҿ���','0','','');
INSERT INTO `qs_category_district` VALUES ('137','5','�е���','0','','');
INSERT INTO `qs_category_district` VALUES ('138','5','������','0','','');
INSERT INTO `qs_category_district` VALUES ('139','5','�ȷ���','0','','');
INSERT INTO `qs_category_district` VALUES ('140','5','��ˮ��','0','','');
INSERT INTO `qs_category_district` VALUES ('141','6','̫ԭ��','0','','');
INSERT INTO `qs_category_district` VALUES ('142','6','��ͬ��','0','','');
INSERT INTO `qs_category_district` VALUES ('143','6','��Ȫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('144','6','������','0','','');
INSERT INTO `qs_category_district` VALUES ('145','6','������','0','','');
INSERT INTO `qs_category_district` VALUES ('146','6','˷����','0','','');
INSERT INTO `qs_category_district` VALUES ('147','6','������','0','','');
INSERT INTO `qs_category_district` VALUES ('148','6','�˳���','0','','');
INSERT INTO `qs_category_district` VALUES ('149','6','������','0','','');
INSERT INTO `qs_category_district` VALUES ('150','6','�ٷ���','0','','');
INSERT INTO `qs_category_district` VALUES ('151','6','������','0','','');
INSERT INTO `qs_category_district` VALUES ('152','7','���ͺ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('153','7','��ͷ��','0','','');
INSERT INTO `qs_category_district` VALUES ('154','7','�ں���','0','','');
INSERT INTO `qs_category_district` VALUES ('155','7','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('156','7','ͨ����','0','','');
INSERT INTO `qs_category_district` VALUES ('157','7','������˹��','0','','');
INSERT INTO `qs_category_district` VALUES ('158','7','���ױ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('159','7','�����׶���','0','','');
INSERT INTO `qs_category_district` VALUES ('160','7','�����첼��','0','','');
INSERT INTO `qs_category_district` VALUES ('161','7','�˰���','0','','');
INSERT INTO `qs_category_district` VALUES ('162','7','���ֹ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('163','7','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('164','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('165','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('166','8','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('167','8','��˳��','0','','');
INSERT INTO `qs_category_district` VALUES ('168','8','��Ϫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('169','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('170','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('171','8','Ӫ����','0','','');
INSERT INTO `qs_category_district` VALUES ('172','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('173','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('174','8','�̽���','0','','');
INSERT INTO `qs_category_district` VALUES ('175','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('176','8','������','0','','');
INSERT INTO `qs_category_district` VALUES ('177','8','��«����','0','','');
INSERT INTO `qs_category_district` VALUES ('178','9','������','0','','');
INSERT INTO `qs_category_district` VALUES ('179','9','������','0','','');
INSERT INTO `qs_category_district` VALUES ('180','9','��ƽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('181','9','��Դ��','0','','');
INSERT INTO `qs_category_district` VALUES ('182','9','ͨ����','0','','');
INSERT INTO `qs_category_district` VALUES ('183','9','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('184','9','��ԭ��','0','','');
INSERT INTO `qs_category_district` VALUES ('185','9','�׳���','0','','');
INSERT INTO `qs_category_district` VALUES ('186','9','�ӱ���','0','','');
INSERT INTO `qs_category_district` VALUES ('187','10','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('188','10','���������','0','','');
INSERT INTO `qs_category_district` VALUES ('189','10','������','0','','');
INSERT INTO `qs_category_district` VALUES ('190','10','�׸���','0','','');
INSERT INTO `qs_category_district` VALUES ('191','10','˫Ѽɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('192','10','������','0','','');
INSERT INTO `qs_category_district` VALUES ('193','10','������','0','','');
INSERT INTO `qs_category_district` VALUES ('194','10','��ľ˹��','0','','');
INSERT INTO `qs_category_district` VALUES ('195','10','��̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('196','10','ĵ������','0','','');
INSERT INTO `qs_category_district` VALUES ('197','10','�ں���','0','','');
INSERT INTO `qs_category_district` VALUES ('198','10','�绯��','0','','');
INSERT INTO `qs_category_district` VALUES ('199','10','���˰���','0','','');
INSERT INTO `qs_category_district` VALUES ('200','11','�Ͼ���','0','','');
INSERT INTO `qs_category_district` VALUES ('201','11','������','0','','');
INSERT INTO `qs_category_district` VALUES ('202','11','������','0','','');
INSERT INTO `qs_category_district` VALUES ('203','11','������','0','','');
INSERT INTO `qs_category_district` VALUES ('204','11','������','0','','');
INSERT INTO `qs_category_district` VALUES ('205','11','��ͨ��','0','','');
INSERT INTO `qs_category_district` VALUES ('206','11','���Ƹ���','0','','');
INSERT INTO `qs_category_district` VALUES ('207','11','������','0','','');
INSERT INTO `qs_category_district` VALUES ('208','11','�γ���','0','','');
INSERT INTO `qs_category_district` VALUES ('209','11','������','0','','');
INSERT INTO `qs_category_district` VALUES ('210','11','����','0','','');
INSERT INTO `qs_category_district` VALUES ('211','11','̩����','0','','');
INSERT INTO `qs_category_district` VALUES ('212','11','��Ǩ��','0','','');
INSERT INTO `qs_category_district` VALUES ('213','12','������','0','','');
INSERT INTO `qs_category_district` VALUES ('214','12','������','0','','');
INSERT INTO `qs_category_district` VALUES ('215','12','������','0','','');
INSERT INTO `qs_category_district` VALUES ('216','12','������','0','','');
INSERT INTO `qs_category_district` VALUES ('217','12','������','0','','');
INSERT INTO `qs_category_district` VALUES ('218','12','������','0','','');
INSERT INTO `qs_category_district` VALUES ('219','12','����','0','','');
INSERT INTO `qs_category_district` VALUES ('220','12','������','0','','');
INSERT INTO `qs_category_district` VALUES ('221','12','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('222','12','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('223','12','��ˮ��','0','','');
INSERT INTO `qs_category_district` VALUES ('224','13','�Ϸ���','0','','');
INSERT INTO `qs_category_district` VALUES ('225','13','�ߺ���','0','','');
INSERT INTO `qs_category_district` VALUES ('226','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('227','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('228','13','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('229','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('230','13','ͭ����','0','','');
INSERT INTO `qs_category_district` VALUES ('231','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('232','13','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('233','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('234','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('235','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('236','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('237','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('238','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('239','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('240','13','������','0','','');
INSERT INTO `qs_category_district` VALUES ('241','14','������','0','','');
INSERT INTO `qs_category_district` VALUES ('242','14','������','0','','');
INSERT INTO `qs_category_district` VALUES ('243','14','������','0','','');
INSERT INTO `qs_category_district` VALUES ('244','14','������','0','','');
INSERT INTO `qs_category_district` VALUES ('245','14','Ȫ����','0','','');
INSERT INTO `qs_category_district` VALUES ('246','14','������','0','','');
INSERT INTO `qs_category_district` VALUES ('247','14','��ƽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('248','14','������','0','','');
INSERT INTO `qs_category_district` VALUES ('249','14','������','0','','');
INSERT INTO `qs_category_district` VALUES ('250','15','�ϲ���','0','','');
INSERT INTO `qs_category_district` VALUES ('251','15','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('252','15','Ƽ����','0','','');
INSERT INTO `qs_category_district` VALUES ('253','15','�Ž���','0','','');
INSERT INTO `qs_category_district` VALUES ('254','15','������','0','','');
INSERT INTO `qs_category_district` VALUES ('255','15','ӥ̶��','0','','');
INSERT INTO `qs_category_district` VALUES ('256','15','������','0','','');
INSERT INTO `qs_category_district` VALUES ('257','15','������','0','','');
INSERT INTO `qs_category_district` VALUES ('258','15','�˴���','0','','');
INSERT INTO `qs_category_district` VALUES ('259','15','������','0','','');
INSERT INTO `qs_category_district` VALUES ('260','15','������','0','','');
INSERT INTO `qs_category_district` VALUES ('261','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('262','16','�ൺ��','0','','');
INSERT INTO `qs_category_district` VALUES ('263','16','�Ͳ���','0','','');
INSERT INTO `qs_category_district` VALUES ('264','16','��ׯ��','0','','');
INSERT INTO `qs_category_district` VALUES ('265','16','��Ӫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('266','16','��̨��','0','','');
INSERT INTO `qs_category_district` VALUES ('267','16','Ϋ����','0','','');
INSERT INTO `qs_category_district` VALUES ('268','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('269','16','̩����','0','','');
INSERT INTO `qs_category_district` VALUES ('270','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('271','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('272','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('273','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('274','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('275','16','�ĳ���','0','','');
INSERT INTO `qs_category_district` VALUES ('276','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('277','16','������','0','','');
INSERT INTO `qs_category_district` VALUES ('278','17','֣����','0','','');
INSERT INTO `qs_category_district` VALUES ('279','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('280','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('281','17','ƽ��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('282','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('283','17','�ױ���','0','','');
INSERT INTO `qs_category_district` VALUES ('284','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('285','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('286','17','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('287','17','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('288','17','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('289','17','����Ͽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('290','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('291','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('292','17','������','0','','');
INSERT INTO `qs_category_district` VALUES ('293','17','�ܿ���','0','','');
INSERT INTO `qs_category_district` VALUES ('294','17','פ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('295','18','�人��','0','','');
INSERT INTO `qs_category_district` VALUES ('296','18','��ʯ��','0','','');
INSERT INTO `qs_category_district` VALUES ('297','18','ʮ����','0','','');
INSERT INTO `qs_category_district` VALUES ('298','18','�˲���','0','','');
INSERT INTO `qs_category_district` VALUES ('299','18','�差��','0','','');
INSERT INTO `qs_category_district` VALUES ('300','18','������','0','','');
INSERT INTO `qs_category_district` VALUES ('301','18','������','0','','');
INSERT INTO `qs_category_district` VALUES ('302','18','Т����','0','','');
INSERT INTO `qs_category_district` VALUES ('303','18','������','0','','');
INSERT INTO `qs_category_district` VALUES ('304','18','�Ƹ���','0','','');
INSERT INTO `qs_category_district` VALUES ('305','18','������','0','','');
INSERT INTO `qs_category_district` VALUES ('306','18','������','0','','');
INSERT INTO `qs_category_district` VALUES ('307','18','��ʩ��','0','','');
INSERT INTO `qs_category_district` VALUES ('308','18','������','0','','');
INSERT INTO `qs_category_district` VALUES ('309','18','Ǳ����','0','','');
INSERT INTO `qs_category_district` VALUES ('310','18','������','0','','');
INSERT INTO `qs_category_district` VALUES ('311','18','��ũ������','0','','');
INSERT INTO `qs_category_district` VALUES ('312','19','��ɳ��','0','','');
INSERT INTO `qs_category_district` VALUES ('313','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('314','19','��̶��','0','','');
INSERT INTO `qs_category_district` VALUES ('315','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('316','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('317','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('318','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('319','19','�żҽ���','0','','');
INSERT INTO `qs_category_district` VALUES ('320','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('321','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('322','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('323','19','������','0','','');
INSERT INTO `qs_category_district` VALUES ('324','19','¦����','0','','');
INSERT INTO `qs_category_district` VALUES ('325','19','����','0','','');
INSERT INTO `qs_category_district` VALUES ('326','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('327','20','�ع���','0','','');
INSERT INTO `qs_category_district` VALUES ('328','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('329','20','�麣��','0','','');
INSERT INTO `qs_category_district` VALUES ('330','20','��ͷ��','0','','');
INSERT INTO `qs_category_district` VALUES ('331','20','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('332','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('333','20','տ����','0','','');
INSERT INTO `qs_category_district` VALUES ('334','20','ï����','0','','');
INSERT INTO `qs_category_district` VALUES ('335','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('336','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('337','20','÷����','0','','');
INSERT INTO `qs_category_district` VALUES ('338','20','��β��','0','','');
INSERT INTO `qs_category_district` VALUES ('339','20','��Դ��','0','','');
INSERT INTO `qs_category_district` VALUES ('340','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('341','20','��Զ��','0','','');
INSERT INTO `qs_category_district` VALUES ('342','20','��ݸ��','0','','');
INSERT INTO `qs_category_district` VALUES ('343','20','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('344','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('345','20','������','0','','');
INSERT INTO `qs_category_district` VALUES ('346','20','�Ƹ���','0','','');
INSERT INTO `qs_category_district` VALUES ('347','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('348','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('349','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('350','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('351','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('352','21','���Ǹ���','0','','');
INSERT INTO `qs_category_district` VALUES ('353','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('354','21','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('355','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('356','21','��ɫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('357','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('358','21','�ӳ���','0','','');
INSERT INTO `qs_category_district` VALUES ('359','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('360','21','������','0','','');
INSERT INTO `qs_category_district` VALUES ('361','22','������','0','','');
INSERT INTO `qs_category_district` VALUES ('362','22','������','0','','');
INSERT INTO `qs_category_district` VALUES ('363','22','��ָɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('364','22','����','0','','');
INSERT INTO `qs_category_district` VALUES ('365','22','������','0','','');
INSERT INTO `qs_category_district` VALUES ('366','22','�Ĳ���','0','','');
INSERT INTO `qs_category_district` VALUES ('367','22','������','0','','');
INSERT INTO `qs_category_district` VALUES ('368','22','������','0','','');
INSERT INTO `qs_category_district` VALUES ('369','22','������','0','','');
INSERT INTO `qs_category_district` VALUES ('370','22','�Ͳ���','0','','');
INSERT INTO `qs_category_district` VALUES ('371','22','������','0','','');
INSERT INTO `qs_category_district` VALUES ('372','22','�ٸ���','0','','');
INSERT INTO `qs_category_district` VALUES ('373','22','��ɳ','0','','');
INSERT INTO `qs_category_district` VALUES ('374','22','����','0','','');
INSERT INTO `qs_category_district` VALUES ('375','22','�ֶ�','0','','');
INSERT INTO `qs_category_district` VALUES ('376','22','��ˮ','0','','');
INSERT INTO `qs_category_district` VALUES ('377','22','��ͤ','0','','');
INSERT INTO `qs_category_district` VALUES ('378','22','����','0','','');
INSERT INTO `qs_category_district` VALUES ('379','22','��ɳȺ��','0','','');
INSERT INTO `qs_category_district` VALUES ('380','22','��ɳȺ��','0','','');
INSERT INTO `qs_category_district` VALUES ('381','22','��ɳȺ��','0','','');
INSERT INTO `qs_category_district` VALUES ('382','23','�ɶ���','0','','');
INSERT INTO `qs_category_district` VALUES ('383','23','�Թ���','0','','');
INSERT INTO `qs_category_district` VALUES ('384','23','��֦����','0','','');
INSERT INTO `qs_category_district` VALUES ('385','23','������','0','','');
INSERT INTO `qs_category_district` VALUES ('386','23','������','0','','');
INSERT INTO `qs_category_district` VALUES ('387','23','������','0','','');
INSERT INTO `qs_category_district` VALUES ('388','23','��Ԫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('389','23','������','0','','');
INSERT INTO `qs_category_district` VALUES ('390','23','�ڽ���','0','','');
INSERT INTO `qs_category_district` VALUES ('391','23','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('392','23','�ϳ���','0','','');
INSERT INTO `qs_category_district` VALUES ('393','23','üɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('394','23','�˱���','0','','');
INSERT INTO `qs_category_district` VALUES ('395','23','�㰲��','0','','');
INSERT INTO `qs_category_district` VALUES ('396','23','������','0','','');
INSERT INTO `qs_category_district` VALUES ('397','23','�Ű���','0','','');
INSERT INTO `qs_category_district` VALUES ('398','23','������','0','','');
INSERT INTO `qs_category_district` VALUES ('399','23','������','0','','');
INSERT INTO `qs_category_district` VALUES ('400','23','����','0','','');
INSERT INTO `qs_category_district` VALUES ('401','23','����','0','','');
INSERT INTO `qs_category_district` VALUES ('402','23','��ɽ','0','','');
INSERT INTO `qs_category_district` VALUES ('403','24','������','0','','');
INSERT INTO `qs_category_district` VALUES ('404','24','����ˮ��','0','','');
INSERT INTO `qs_category_district` VALUES ('405','24','������','0','','');
INSERT INTO `qs_category_district` VALUES ('406','24','��˳��','0','','');
INSERT INTO `qs_category_district` VALUES ('407','24','ͭ�ʵ���','0','','');
INSERT INTO `qs_category_district` VALUES ('408','24','ǭ������','0','','');
INSERT INTO `qs_category_district` VALUES ('409','24','�Ͻڵ���','0','','');
INSERT INTO `qs_category_district` VALUES ('410','24','ǭ������','0','','');
INSERT INTO `qs_category_district` VALUES ('411','24','ǭ����','0','','');
INSERT INTO `qs_category_district` VALUES ('412','25','������','0','','');
INSERT INTO `qs_category_district` VALUES ('413','25','������','0','','');
INSERT INTO `qs_category_district` VALUES ('414','25','��Ϫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('415','25','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('416','25','��ͨ��','0','','');
INSERT INTO `qs_category_district` VALUES ('417','25','������','0','','');
INSERT INTO `qs_category_district` VALUES ('418','25','˼é��','0','','');
INSERT INTO `qs_category_district` VALUES ('419','25','�ٲ���','0','','');
INSERT INTO `qs_category_district` VALUES ('420','25','����','0','','');
INSERT INTO `qs_category_district` VALUES ('421','25','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('422','25','��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('423','25','��˫������','0','','');
INSERT INTO `qs_category_district` VALUES ('424','25','������','0','','');
INSERT INTO `qs_category_district` VALUES ('425','25','�º���','0','','');
INSERT INTO `qs_category_district` VALUES ('426','25','ŭ����','0','','');
INSERT INTO `qs_category_district` VALUES ('427','25','������','0','','');
INSERT INTO `qs_category_district` VALUES ('428','26','������','0','','');
INSERT INTO `qs_category_district` VALUES ('429','26','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('430','26','ɽ�ϵ���','0','','');
INSERT INTO `qs_category_district` VALUES ('431','26','�տ������','0','','');
INSERT INTO `qs_category_district` VALUES ('432','26','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('433','26','�������','0','','');
INSERT INTO `qs_category_district` VALUES ('434','26','��֥����','0','','');
INSERT INTO `qs_category_district` VALUES ('435','27','������','0','','');
INSERT INTO `qs_category_district` VALUES ('436','27','ͭ����','0','','');
INSERT INTO `qs_category_district` VALUES ('437','27','������','0','','');
INSERT INTO `qs_category_district` VALUES ('438','27','������','0','','');
INSERT INTO `qs_category_district` VALUES ('439','27','μ����','0','','');
INSERT INTO `qs_category_district` VALUES ('440','27','�Ӱ���','0','','');
INSERT INTO `qs_category_district` VALUES ('441','27','������','0','','');
INSERT INTO `qs_category_district` VALUES ('442','27','������','0','','');
INSERT INTO `qs_category_district` VALUES ('443','27','������','0','','');
INSERT INTO `qs_category_district` VALUES ('444','27','������','0','','');
INSERT INTO `qs_category_district` VALUES ('445','28','������','0','','');
INSERT INTO `qs_category_district` VALUES ('446','28','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('447','28','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('448','28','������','0','','');
INSERT INTO `qs_category_district` VALUES ('449','28','��ˮ��','0','','');
INSERT INTO `qs_category_district` VALUES ('450','28','������','0','','');
INSERT INTO `qs_category_district` VALUES ('451','28','��Ҵ��','0','','');
INSERT INTO `qs_category_district` VALUES ('452','28','ƽ����','0','','');
INSERT INTO `qs_category_district` VALUES ('453','28','��Ȫ��','0','','');
INSERT INTO `qs_category_district` VALUES ('454','28','������','0','','');
INSERT INTO `qs_category_district` VALUES ('455','28','������','0','','');
INSERT INTO `qs_category_district` VALUES ('456','28','¤����','0','','');
INSERT INTO `qs_category_district` VALUES ('457','28','����','0','','');
INSERT INTO `qs_category_district` VALUES ('458','28','����','0','','');
INSERT INTO `qs_category_district` VALUES ('459','29','������','0','','');
INSERT INTO `qs_category_district` VALUES ('460','29','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('461','29','������','0','','');
INSERT INTO `qs_category_district` VALUES ('462','29','������','0','','');
INSERT INTO `qs_category_district` VALUES ('463','29','������','0','','');
INSERT INTO `qs_category_district` VALUES ('464','29','������','0','','');
INSERT INTO `qs_category_district` VALUES ('465','29','������','0','','');
INSERT INTO `qs_category_district` VALUES ('466','29','������','0','','');
INSERT INTO `qs_category_district` VALUES ('467','30','������','0','','');
INSERT INTO `qs_category_district` VALUES ('468','30','ʯ��ɽ��','0','','');
INSERT INTO `qs_category_district` VALUES ('469','30','������','0','','');
INSERT INTO `qs_category_district` VALUES ('470','30','��ԭ��','0','','');
INSERT INTO `qs_category_district` VALUES ('471','30','������','0','','');
INSERT INTO `qs_category_district` VALUES ('472','31','��³ľ����','0','','');
INSERT INTO `qs_category_district` VALUES ('473','31','����������','0','','');
INSERT INTO `qs_category_district` VALUES ('474','31','��³������','0','','');
INSERT INTO `qs_category_district` VALUES ('475','31','���ܵ���','0','','');
INSERT INTO `qs_category_district` VALUES ('476','31','������','0','','');
INSERT INTO `qs_category_district` VALUES ('477','31','����','0','','');
INSERT INTO `qs_category_district` VALUES ('478','31','����','0','','');
INSERT INTO `qs_category_district` VALUES ('479','31','�����յ���','0','','');
INSERT INTO `qs_category_district` VALUES ('480','31','����','0','','');
INSERT INTO `qs_category_district` VALUES ('481','31','��ʲ����','0','','');
INSERT INTO `qs_category_district` VALUES ('482','31','�������','0','','');
INSERT INTO `qs_category_district` VALUES ('483','31','������','0','','');
INSERT INTO `qs_category_district` VALUES ('484','31','���ǵ���','0','','');
INSERT INTO `qs_category_district` VALUES ('485','31','����̩����','0','','');
INSERT INTO `qs_category_district` VALUES ('486','31','ʯ������','0','','');
INSERT INTO `qs_category_district` VALUES ('487','31','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('488','31','ͼľ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('489','31','�������','0','','');
INSERT INTO `qs_category_district` VALUES ('490','32','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('491','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('492','32','��¡��','0','','');
INSERT INTO `qs_category_district` VALUES ('493','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('494','32','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('495','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('496','32','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('497','32','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('498','32','��԰��','0','','');
INSERT INTO `qs_category_district` VALUES ('499','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('500','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('501','32','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('502','32','�û���','0','','');
INSERT INTO `qs_category_district` VALUES ('503','32','��Ͷ��','0','','');
INSERT INTO `qs_category_district` VALUES ('504','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('505','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('506','32','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('507','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('508','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('509','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('510','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('511','32','̨����','0','','');
INSERT INTO `qs_category_district` VALUES ('512','32','�����','0','','');
INSERT INTO `qs_category_district` VALUES ('513','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('514','32','������','0','','');
INSERT INTO `qs_category_district` VALUES ('515','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('516','33','����','0','','');
INSERT INTO `qs_category_district` VALUES ('517','33','����','0','','');
INSERT INTO `qs_category_district` VALUES ('518','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('519','33','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('520','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('521','33','��ˮ����','0','','');
INSERT INTO `qs_category_district` VALUES ('522','33','�ƴ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('523','33','�ͼ�����','0','','');
INSERT INTO `qs_category_district` VALUES ('524','33','�뵺��','0','','');
INSERT INTO `qs_category_district` VALUES ('525','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('526','33','����','0','','');
INSERT INTO `qs_category_district` VALUES ('527','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('528','33','ɳ����','0','','');
INSERT INTO `qs_category_district` VALUES ('529','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('530','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('531','33','������','0','','');
INSERT INTO `qs_category_district` VALUES ('532','33','Ԫ����','0','','');
INSERT INTO `qs_category_district` VALUES ('533','34','����������','0','','');
INSERT INTO `qs_category_district` VALUES ('534','34','ʥ����������','0','','');
INSERT INTO `qs_category_district` VALUES ('535','34','������','0','','');
INSERT INTO `qs_category_district` VALUES ('536','34','��������','0','','');
INSERT INTO `qs_category_district` VALUES ('537','34','��˳����','0','','');
DROP TABLE IF EXISTS `qs_category_group`;
CREATE TABLE `qs_category_group` (
  `g_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_alias` varchar(60) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `g_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_category_group` VALUES ('1','QS_trade','��ҵ����','1');
INSERT INTO `qs_category_group` VALUES ('2','QS_company_type','��ҵ���ʷ���','1');
INSERT INTO `qs_category_group` VALUES ('3','QS_wage','��н����','1');
INSERT INTO `qs_category_group` VALUES ('4','QS_jobs_nature','ְλ���ʷ���','1');
INSERT INTO `qs_category_group` VALUES ('5','QS_education','ѧ������','1');
INSERT INTO `qs_category_group` VALUES ('6','QS_experience','�����������','1');
INSERT INTO `qs_category_group` VALUES ('7','QS_scale','��ҵ��ģ','1');
INSERT INTO `qs_category_group` VALUES ('9','QS_street','��·','1');
INSERT INTO `qs_category_group` VALUES ('10','QS_jobtag','ְλ��ǩ','1');
INSERT INTO `qs_category_group` VALUES ('11','QS_resumetag','������ǩ','1');
INSERT INTO `qs_category_group` VALUES ('12','QS_train_type','��ѵ�������ʷ���','1');
INSERT INTO `qs_category_group` VALUES ('13','QS_train_category','��ѵ�γ̷���','1');
INSERT INTO `qs_category_group` VALUES ('14','QS_train_classtype','��ѵ�γ̰��Ʒ���','1');
INSERT INTO `qs_category_group` VALUES ('15','QS_hunter_wage','��ͷְλ��н����','1');
INSERT INTO `qs_category_group` VALUES ('16','QS_hunter_age','��ͷְλ�������','1');
INSERT INTO `qs_category_group` VALUES ('17','QS_hunter_wage_structure','��ͷְλн�ʹ���','1');
INSERT INTO `qs_category_group` VALUES ('18','QS_hunter_socialbenefits','��ͷְλ�籣����','1');
INSERT INTO `qs_category_group` VALUES ('19','QS_hunter_livebenefits','��ͷְλ��ס����','1');
INSERT INTO `qs_category_group` VALUES ('20','QS_hunter_annualleave','��ͷְλ��ٸ���','1');
INSERT INTO `qs_category_group` VALUES ('21','QS_hunter_rank','��ͷͷ�η���','1');
INSERT INTO `qs_category_group` VALUES ('22','QS_language','���Է���','1');
INSERT INTO `qs_category_group` VALUES ('23','QS_language_level','���������̶�','1');
INSERT INTO `qs_category_group` VALUES ('24','QS_major','רҵ����','1');
INSERT INTO `qs_category_group` VALUES ('25','QS_current','Ŀǰ״̬����','1');
INSERT INTO `qs_category_group` VALUES ('26','nocancel','����ȡ��ʱ���','0');
DROP TABLE IF EXISTS `qs_category_hunterjobs`;
CREATE TABLE `qs_category_hunterjobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_category_hunterjobs` VALUES ('41','30','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('40','30','ҵ����չ(BD)����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('39','30','������/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('38','30','��ǰ֧�ֹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('37','30','��ǰ֧�־���/��ǰ֧������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('36','30','�����ܼ�/�����ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('33','30','���۾���/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('34','30','�������۾���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('35','30','�����ܼ�/�����ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('32','30','�����ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('30','0','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('31','30','���������ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('42','0','��Ӫ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('43','42','��ϯִ�й�CEO/�ܲ�/�ܾ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('44','42','��ϯ��Ӫ��COO','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('45','42','��ϯ������CTO/��ϯ��Ϣ��CIO','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('46','42','��ϯ�����CFO','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('47','42','���ܲ�/���ܾ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('48','42','�ϻ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('49','42','�ܼ�/��ҵ���ܾ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('50','42','�ܲ�����/�ܾ�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('51','42','�ֹ�˾����/��֧��������/���´�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('52','42','���ž���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('53','42','����/������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('54','42','�곤','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('55','42','������Ӫ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('56','0','IT����/����֧��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('57','56','��ϯ������CTO/��ϯ��Ϣ��CIO','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('58','56','�����ܼ�/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('59','56','��Ŀ�ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('60','56','��Ŀ����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('61','56','��Ŀִ��/Э����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('62','56','��Ϣ��������/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('63','56','��Ϣ����רԱ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('64','56','����/��׼������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('65','56','Ʒ�ʾ���/��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('66','56','���/ϵͳ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('67','56','Ӳ������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('68','56','�ĵ�����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('69','56','����֧��/ά������/����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('70','56','Helpdesk','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('71','56','����IT����/Ʒ��/����֧��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('72','0','��������/Ӳ��/ϵͳ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('73','72','�߼�Ӳ������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('74','72','Ӳ������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('75','72','�߼��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('76','72','�������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('77','72','ϵͳ�ܹ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('78','72','ϵͳ����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('79','72','�з�����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('80','72','���UI���ʦ/����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('81','72','����Ӧ�ù���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('82','72','ERPʵʩ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('83','72','ERP��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('84','72','���󹤳�ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('85','72','���ݿ����Ա/��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('86','72','�����������ƹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('87','72','ϵͳ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('88','72','ϵͳ���ɹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('89','72','��������Ŀʵʩ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('90','72','������������/Ӳ��/ϵͳ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('91','0','������/��������/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('92','91','�����������������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('93','91','��վӪ�˹���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('94','91','��վӪ���ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('95','91','��վӪ�˾���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('96','91','��վӪ��רԱ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('97','91','��Ʒ�ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('98','91','��Ʒ����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('99','91','��ƷרԱ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('100','91','SEO���������Ż�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('101','91','�����ƹ��ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('102','91','�����ƹ㾭��/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('103','91','�����ƹ�רԱ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('104','91','���������ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('105','91','����������/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('106','91','��������רԱ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('107','91','����곤/�ͷ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('108','91','���繤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('109','91','UI���ʦ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('110','91','UE�������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('111','91','ϵͳ�ܹ�ʦ/��վ�ܹ�ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('112','91','��վά������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('113','91','ϵͳ����Ա/����ʦ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('114','91','��վ�߻�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('115','91','��վ�༭','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('116','91','��ҳ���/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('117','91','����/��Ƶ/ͼ�ο�������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('118','91','��ý��/��Ϸ��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('119','91','�ű���������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('120','91','��Ϸ�߻�ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('121','91','��Ϸ�������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('122','91','Flash���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('123','91','��Ч���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('124','91','�Ӿ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('125','91','��Ч���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('126','91','��ά/3D���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('127','91','������Ϣ��ȫ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('128','91','����������/��������/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('129','0','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('130','129','֤ȯ/���/�ڻ�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('131','129','�г�/���г�/�߼�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('132','129','Ͷ��/֤ȯ/����/����/���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('133','129','Ͷ������ҵ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('134','129','������Ŀ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('135','129','�ͻ�����/���ڲ�ƷӪ������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('136','129','�ʲ�����/�ʲ�����/���׹���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('137','129','���չ���/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('138','129','�Ŵ�����/���ù���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('139','129','�ʽ����/�������/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('140','129','��Ա/�����ѯ/�ͻ�����/���л��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('141','129','���п�/��������/��ҵ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('142','129','���ʽ���/��㽻��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('143','129','����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('144','129','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('145','0','�г�/��Ʒ/����/ý��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('146','145','�г��ܼ�CMO','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('147','145','�г�Ӫ������/�г�Ӫ������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('148','145','����ý�龭��/����ý������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('149','145','�г����������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('150','145','������/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('151','145','��Ʒ����/Ʒ�ƾ���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('152','145','��������/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('153','145','�г��󻮾���/�г�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('154','145','��洴��/�߻�/��ƻ��İ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('155','145','���ͻ�����/���ͻ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('156','145','�����г�/����/ý��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('157','0','����/���ز�/װ��װ��/��ҵ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('158','157','����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('159','157','�ṹ����ʦ/��ľ��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('160','157','�������/������ͼ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('161','157','�������̹���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('162','157','���̼���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('163','157','����ˮ/ǿ��/����/����ůͨ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('164','157','���ز�����/�߻�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('165','157','���ز�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('166','157','�豸����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('167','157','���/��Ԥ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('168','157','·��/���/�ۿ�/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('169','157','԰�����/԰�����/�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('170','157','������װ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('171','157','��ҵ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('172','157','���й滮�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('173','157','���й滮�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('174','157','��·�������/��·����Ԥ��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('175','157','ʩ��Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('176','157','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('177','0','������Դ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('178','177','������Դ�ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('179','177','������Դ����/������Դ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('180','177','��������/����רԱ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('181','177','��Ƹ����/��Ƹ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('182','177','��ѵ����/��ѵ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('183','177','��ѵʦ/��ѵרԱ/��ѵ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('184','177','н�ʸ�������/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('185','177','��Ч���˾���/��Ч��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('186','177','Ա����ϵ����/Ա����ϵ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('187','177','����������Դ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('188','0','����/���/ͳ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('189','188','��ϯ�����CFO','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('190','188','�����ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('191','188','������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('192','188','��������/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('193','188','��ƾ���/�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('194','188','���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('195','188','�����������/�����������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('196','188','�������Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('197','188','�ɱ�����/�ɱ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('198','188','�ɱ�����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('199','188','��ƾ���/�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('200','188','���רԱ/�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('201','188','��������/�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('202','188','ͳ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('203','188','˰����/˰������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('204','188','˰��רԱ/˰������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('205','188','Ͷ���ʾ���/Ͷ��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('206','188','��������/���/ͳ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('207','0','��Ŀ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('208','207','��Ŀ�ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('209','207','��Ŀ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('210','207','������Ŀ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('211','0','ó��/����/�ɹ�/����/�ֿ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('212','211','��ó����/����/רԱ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('213','211','����ó�׾���/����/רԱ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('214','211','������/����/רԱ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('215','211','��֤Ա/����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('216','211','����/���˲�����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('217','211','�ɹ��ܼ�/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('218','211','�����ܼ�/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('219','211','��Ӧ���ܼ�/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('220','211','���Ϲ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('221','211','�ֿ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('222','211','���侭��/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('223','211','���˴���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('224','211','��½�ս�ͨ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('225','211','����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('226','211','����ó��/����/�ɹ�/����/�ִ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('227','0','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('228','227','Ӫ�˾���/Ӫ������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('229','227','�ܹ���ʦ/���ܹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('230','227','��������ʦ/��Ŀ����ʦ/��Ʒ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('231','227','�ɹ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('232','227','���ϻ���������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('233','227','���̻��豸����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('234','227','��ȫ/����/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('235','227','��Ʒ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('236','227','����������ƾ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('237','227','����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('238','227','�ֿ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('239','227','ά�޹���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('240','227','��������/��������/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('241','227','�鳤/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('242','227','�����ƻ�/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('243','227','��Ʒ���������չ���ʦ(PE/ME)','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('244','227','��ҵ����ʦ��IE��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('245','227','���칤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('246','227','������������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('247','0','ͨ��/����/����/�뵼��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('248','247','ͨ�ż�������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('249','247','���ߴ��乤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('250','247','����ͨ�Ź���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('251','247','���Ž�������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('252','247','����ͨ�Ź���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('253','247','�ƶ�ͨ�Ź���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('254','247','�������繤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('255','247','ͨ�ŵ�Դ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('256','247','��ֵ��Ʒ��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('257','247','�ֻ������������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('258','247','�ֻ�Ӧ�ÿ�������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('259','247','���ɵ�·IC���/Ӧ�ù���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('260','247','IC��֤����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('261','247','����/��·����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('262','247','����/ͨѶ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('263','247','���Ӽ����з�����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('264','247','��Ƶ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('265','247','����/����ά��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('266','247','��ѹ����ŵ繤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('267','247','��ͼ��ƹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('268','247','��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('269','247','����/���칤��ʦ/����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('270','247','����/����Ӽ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('271','247','�뵼�弼��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('272','247','�Զ����ƹ���ʦ/����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('273','247','Ƕ��ʽ�������(Linux/��Ƭ��/DLC/DSP��)','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('274','247','Ƕ��ʽӲ������(�������)','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('275','247','���/��Դ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('276','247','FAE �ֳ�Ӧ�ù���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('277','247','���չ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('278','247','���õ���/�����Ʒ�з�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('279','247','����Ԫ��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('280','247','��Դ����������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('281','247','�����ĵ�����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('282','247','���Թ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('283','247','��е����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('284','247','��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('285','247','��������Ŀʵʩ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('286','247','����ͨ��/����/����/�뵼��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('287','0','����/���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('288','287','��ƹ�����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('289','287','����/ͼ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('290','287','��ҵ/��Ʒ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('291','287','��װ/��֯Ʒ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('292','287','��װ����/��װ�ư�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('293','287','����Ʒ/�鱦���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('294','287','�Ҿ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('295','287','ƽ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('296','287','ý�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('297','287','�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('298','287','��ý�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('299','287','����/3D���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('300','287','��װ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('301','287','չʾ/װ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('302','287','��������/���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('303','0','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('304','303','������֤(QA)/��������/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('305','303','��������(QC)/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('306','303','��Ʒ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('307','303','��Ӧ�̹���/�ɹ��豸�������������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('308','303','������������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('309','0','����/��е/�����Ǳ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('310','309','����/�豸/����/����/����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('311','309','��е����ʦ/��ҵ����ʦ/�ṹ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('312','309','ģ�߹���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('313','309','��е���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('314','309','��е��ͼԱ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('315','309','���繤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('316','309','���ܻ�е/�����Ǳ���ʦ/����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('317','309','����/���칤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('318','309','ע�ܹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('319','309','CNC����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('320','309','��ѹ����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('321','309','�о߹���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('322','309','��¯����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('323','309','���ӹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('324','309','����/Ħ�г�����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('325','309','��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('326','309','���������������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('327','309','��еά�޹���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('328','309','��װ/ӡˢ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('329','309','ʳƷ��е','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('330','309','��֯��е','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('331','309','�豸����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('332','309','��������/��е/�����Ǳ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('333','0','����/Ӱ��/д��/ý��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('334','333','����/׫����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('335','333','�ܱ�/���ܱ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('336','333','�༭/����/����/׫����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('337','333','�����༭','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('338','333','�����ܼ�/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('339','333','����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('340','333','У��/¼��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('341','333','�Ű����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('342','333','�����ܼ�/����ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('343','333','Ӱ�Ӳ߻�/Ӱ������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('344','333','����/�ർ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('345','333','��Ӱ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('346','333','¼��/��Чʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('347','333','��ױʦ/����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('348','333','��Ա/����/ģ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('349','333','������/����Ա/DJ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('350','333','���ջ�����������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('351','333','��������/Ӱ��/д��/ý��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('352','0','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('353','352','����/��Ʒ�з�/Ͷ��/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('354','352','�˱�/����/��Լ����/����̨','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('355','352','��ѵ/��ѵ/��Ա����/ҵ���ƶ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('356','352','���մ�����/������/�ͻ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('357','352','�ͻ�����/���ڹ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('358','352','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('359','0','����/��ҩ/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('360','359','���﹤��/������ҩ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('361','359','�ٴ�����/ҩƷע��/�豸ע��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('362','359','ҽҩ�з�/��ѧ�Ƽ��з�/ҽ���豸����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('363','359','ҩƷ����/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('364','359','ҩƷ����/�ƹ�/ҵ����ѯ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('365','359','ҽ����е�ƹ�/����/ά��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('366','359','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('367','359','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('368','359','��������/��ҩ/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('369','0','����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('370','369','�����ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('371','369','��������/��������/�칫������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('372','369','ͼ���鱨/����/�ĵ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('373','369','��������/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('374','0','��ѯ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('375','374','��ܹ���/רҵ����/�߻�ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('376','374','��ѯ�ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('377','374','��ѯ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('378','374','��ѯԱ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('379','374','����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('380','374','��ѵʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('381','374','������ѯʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('382','374','������ѯ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('383','0','�ͻ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('384','383','�ͻ������ܼ�','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('385','383','�ͻ�������/�ͻ���������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('386','383','�ͻ���ϵ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('387','383','�ۺ�֧�־���/�ۺ�֧������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('388','383','�ۺ�֧�ֹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('389','383','�����ͻ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('390','0','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('391','390','��ʦ/��ʦ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('392','390','���ɹ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('393','390','������Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('394','390','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('395','0','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('396','395','���й�����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('397','395','������Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('398','395','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('399','0','ҽ������/���ݱ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('400','399','ҽ�ƹ�����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('401','399','ҽ�Ƽ�����Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('402','399','ҽ��/ҽʦ/����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('403','399','ҽҩ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('404','399','ҩѧ�����������Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('405','399','��������/��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('406','399','����/����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('407','399','��ҽ/����ҽ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('408','399','ҩ������/ҩ��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('409','399','�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('410','399','ҩƷע��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('411','399','ҽҩ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('412','399','����ҽ������/���ݱ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('413','0','�Ƶ�/����/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('414','413','���ݻ�Ƶ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('415','413','���ֻ��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('416','413','���þ���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('417','413','¥�澭��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('418','413','��ʦ/����ʦ/����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('419','413','Ӫ��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('420','413','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('421','413','�������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('422','413','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('423','413','�����Ƶ�/����/����/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('424','0','����/��Դ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('425','424','��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('426','424','��Դ����������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('427','424','��ѹ����ŵ繤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('428','424','��·����ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('429','424','���ܴ���/�ۺϲ���/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('430','424','��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('431','424','����ά�޼���Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('432','424','ˮ��/ˮ�繤��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('433','424','����/��������ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('434','424','�յ�/���ܹ���ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('435','424','ʯ����Ȼ��������Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('436','424','�Զ�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('437','424','����/ůͨ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('438','424','��������/��Դ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('439','0','����/��ѵ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('440','439','��ѧ/���������Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('441','439','�׶�����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('442','439','��ʦ/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('443','439','��ʦ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('444','439','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('445','439','�������/����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('446','439','��������/��ѵ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('447','0','��ҵ����ҵ','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('448','447','�곤','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('449','447','Ӫ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('450','447','����/��������Ա','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('451','447','������ҵ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('452','0','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('453','452','Ӣ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('454','452','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('455','452','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('456','452','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('457','452','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('458','452','��������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('459','452','������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('460','452','�������ַ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('461','0','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('462','461','���պ���','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('463','461','�ɻ�����/������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('464','461','�г�����/�г�˾��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('465','461','��ȫ����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('466','461','����ѧ����/���⼼��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('467','461','��漼��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('468','461','���ʿ��ұ��','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('469','461','����','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('470','461','ũ������','0');
INSERT INTO `qs_category_hunterjobs` VALUES ('471','461','�������ְλ','0');
DROP TABLE IF EXISTS `qs_category_jobs`;
CREATE TABLE `qs_category_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stat_jobs` varchar(15) NOT NULL,
  `stat_resume` varchar(15) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_category_jobs` VALUES ('1','0','����|�г�|�ͷ�|ó��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('2','1','���۹���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('3','1','������Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('4','1','������������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('5','1','�г�/�߻�/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('6','1','�ͷ�/����֧��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('7','1','ó��/�ɹ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('638','22','��������/����','0','','','��λְ��\r\n1����˾�˹��ɱ����������õ�Ԥ�������\r\n2���ƶ����̽��衢���������֯���칫����������˾����ɹ�ͳ��̶��ʲ�������������˾�ִ�����Ʒ�����\r\n3������������ϵ����칫��������װ�ޡ������ɹ���ϵ�ά����������ἰ��Ҫ���֯��\r\n4���ɹ�������˾�̶��ʲ����ֵ�׺�Ʒ���ǰ칫��Ʒ���ճ���Ʒ����\r\n5������̶��ʲ�̨����ˡ���֯�̶��ʲ��̵㹤����\r\n\r\n��λҪ��\r\n1����������ѧ������ҵ���������������������ϣ�\r\n2���̶��ʲ������顢�ʲ������ͬ�������д�����ҵ���Ͽ�ܾ��飻\r\n3����һ�������飻\r\n4����ǿ�������ĺ;�ҵ�������õ���֯Э����������ͨ��������ǿ�ķ������������������\r\n5������ʹ�ð칫����Ͱ칫�Զ����豸��');
INSERT INTO `qs_category_jobs` VALUES ('637','22','�����ܼ�','0','','','��λְ��\r\n1��Э�����߲��ƶ���˾��չս�ԣ������书�������ڶ��ڼ����ڵĹ�˾���ߺ�ս�ԣ��Թ�˾�г���Ŀ��Ĵ�ɲ�����ҪӰ�죻\r\n2�����ݹ�˾Ҫ���ƶ���˾��������ķ��롢���ߺ��ƶȣ�\r\n3������˾�ճ������Ĺ������Ϣ���Ľ��裻\r\n4��������ҵ�Ļ�������ƹ㣻\r\n5������˾�̶��ʲ��Ĺ������ϸ�����˾�ʲ��Ĺ����ƶȻ������򻯣�\r\n6������˾��Χ����ҵ�����ڹ���');
INSERT INTO `qs_category_jobs` VALUES ('636','21','����������Դ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('635','21','��ҵ�Ļ�/Ա����ϵ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('634','21','��ѵרԱ/��ѵʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('633','21','��ѵ����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('19','0','��Ӫ����|������Դ|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('20','19','��Ӫ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('21','19','������Դ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('22','19','����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('632','21','��Ч���˾���/רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('631','21','н�ʸ�������/רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('630','21','��ƸרԱ/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('629','21','��Ƹ����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('628','21','������Դ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('627','21','������ԴרԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('626','21','������Դ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('625','21','������Դ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('624','21','������Դ�ܼ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('623','20','������Ӫ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('622','20','��ҵ�߻���Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('621','20','��Ŀ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('620','20','���ž���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('619','20','��Ӫ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('618','20','���´�/�ֹ�˾����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('617','20','�ܼ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('616','20','�ܲ�����/�ܾ�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('615','20','���ܾ���/���ܲ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('614','20','CEO/�ܲ�/�ܾ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('49','0','����|����|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('50','49','����/���/˰��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('51','49','֤ȯ/�ڻ�/Ͷ��/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('52','49','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('665','51','�ͻ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('664','51','���/����/��ծ������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('663','51','��Ʊ/�ڻ�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('662','51','֤ȯ����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('661','51','֤ȯ/�ڻ�/��㾭����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('660','50','��������/���/˰��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('659','50','ͳ��Ա','0','','','��λְ��\r\n1��������˾����״�����о���ҵ�ڹ�˾��Ϣ���Գ����ʲ��Խ��в�������Ͳƾ����߸��٣�\r\n2��������������ҵ��͸�����ҵ�����ṩ������;���֧�֣�\r\n3��Ԥ�Ⲣ�ල��˾�ֽ����͸����ʽ�ʹ�������\r\n4������Ͷ�ʺ�������Ŀ�Ĳ�����㡢�ɱ������������Է���������ƶ�Ͷ�ʺ����ʷ�����\r\n5��׫д����������桢Ͷ�ʲ�����б��桢�������о����棻\r\n6��Э����˾�Ͳ��ŵ�����������\r\n\r\n��λҪ��\r\n1����������ѧ�������ڡ��ƾ������רҵ��\r\n2���������ϱ���λ��ҵ���飬��ҵ�������нϺõ��ȶ��ԣ�\r\n3���н�ǿ���Ŷ�Э������֯Э�������Լ�ѧϰ�������Ϻõ�Ӣ�Ĺ�ͨ����������ͬʱ�߱��Ͻ���ʱ�����ͳɱ�����\r\n4���������渺������������������ǿ���߱����õ�ְҵ�����������ʣ���������Ժ����ֱ��������\r\n5���ܹ���Ŀ��������ѧ�������г������������������Ʒ֪ʶ�ȷ������ѵ��');
INSERT INTO `qs_category_jobs` VALUES ('658','50','���Ա','0','','','��λְ��\r\n1������˰�ձ�������˰��ɱ�Ԥ��ͷ������棬�걨��˰��\r\n2������˰��Ǽ�֤�İ�����켰ע����˰�����ϵ�����ͱ��ܣ�\r\n3��˰����ˡ�˰����鹤�����Լ���ȸ���˰�ֵ���˰�걨�����������й�˰�ռ���������\r\n4��������˰����ƹ�����\r\n5������Э�������ܲ����Ƹ����������ƶȡ�\r\n\r\n��λҪ��\r\n1�����񡢻�ƻ�˰�����רҵ�����Ƽ�����ѧ��������ע��˰��ʦִҵ�ʸ�\r\n2���������Ϲ������飬�޲���ִҵ��¼��\r\n3���ܹ�����˰����ѯ��˰����ƻ�˰��Ϲ�ȷ���Ĺ���, ����ʵ��רҵ����֪ʶ��\r\n4����Ϥ���ҡ��ط��Ĳ�˰���߼����ɷ��棬�ó�˰��ﻮ������\r\n5���������˹�ͨ���������õĿͻ���ͨЭ���������Ŷ�Э��������\r\n6������ʹ�ð칫�����EXCEL��WORD �ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('657','50','�ɱ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('656','50','�ɱ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('655','50','�������','0','','','��λְ��\r\n1��ȫ��������ල��˾���񼰾�Ӫ״����\r\n2��������ҵ����ģ�ͣ��ռ�������Ϣ��׫д�������棻\r\n3��������񱨱��ṩ���������\r\n4����ʵʩ�Ĳ��񷽰�������Ľ�����;���֧�֣�\r\n5���о�������˾�ɱ����������\r\n6��Э�������Ԥ����ơ��ɱ����ƺ����ⲿ��ƹ�����\r\n7�����������������ļ��͵�����\r\n\r\n��λҪ��\r\n1���ƻᡢ��Ƶ����רҵ��������ѧ�����л��ʦ�ʸ����֤�����ȣ�\r\n2��3�����ϲ������������ع������飻\r\n3����Ϥ�������Ԥ����ơ��ɱ��������Ƶ�ҵ�����̣�\r\n4���ó������������Ϥ�������ģ�ͣ�����ʹ�ò��������\r\n5�����õ�Э������ͨ�������Ŷ�Э������');
INSERT INTO `qs_category_jobs` VALUES ('654','50','����','0','','','��λְ��\r\n1�������ճ���֧�Ĺ���ͺ˶ԣ�\r\n2���칫�һ�������ĺ˶ԣ�\r\n3�������ռ������ԭʼƾ֤����֤����������ԭʼ���ݵĺϷ��ԡ�׼ȷ�ԣ�\r\n4������Ǽ��ֽ����д���ռ��˲�׼ȷ¼��ϵͳ����ʱ�������д�������ڱ�\r\n5���������ƾ֤�ı�š�װ�������桢�鵵����������ϣ�\r\n6�����𿪾߸���Ʊ�ݣ�\r\n7������ܻḺ��칫�Ҳ������ͳ�ƻ��ܡ�\r\n\r\n��λҪ��\r\n1����ѧר������ѧ�������ѧ��������רҵ��ҵ��\r\n2������1�����ϳ��ɹ������飻\r\n3����Ϥ�������������Excel��Word�Ȱ칫�����\r\n4������Ҫ���ּ�������׼ȷ����ʱ����Ŀ�����½ᣬ�������׼ȷ����ʱ��\r\n5���������棬̬�ȶ�����\r\n6���˽���Ҳƾ����ߺͻ�ơ�˰�񷨹棬��Ϥ���н���ҵ��');
INSERT INTO `qs_category_jobs` VALUES ('653','50','���','0','','','��λְ��\r\n1������������֧�����Ĳ���ר�ⱨ��ͻ�Ʊ������ش�Ĳ�����֧�ƻ������ú�ͬ���л�ǩ��\r\n2������Ԥ���ִ��Ԥ�㣬�����ⶩ�ʽ����ʹ�÷�����ȷ���ʽ����Чʹ�ã�\r\n3����鹫˾�����ṩ�Ļ�����ϣ�\r\n4��������˹�˾�����͸�������λ�ϱ��Ļ�Ʊ���ͼ��Ź�˾��Ʊ������Ʋ����ۺϷ��������ר��������棬Ϊ��˾�쵼�����ṩ�ɿ������ݣ�\r\n5���ƶ���˾�ڲ����񡢻���ƶȺ͹������򣬾���׼����֯ʵʩ���ලִ�У�\r\n6����֯������ʵ�ֹ�˾�Ĳ�����֧�ƻ����Ŵ��ƻ���ɱ����üƻ���\r\n\r\n��λҪ��\r\n1��������רҵ����ר����ѧ����\r\n2��2�����Ϲ������飬��һ����˰����ҵ�������������ȣ�\r\n3������ϸ�£����ھ�ҵ���Կ����ͣ������õ�ְҵ���أ�\r\n4��˼ά���ݣ���������ǿ���ܶ���˼���������ܽṤ�����飻\r\n5������Ӧ�ò���Office�칫������Խ�������ѵȲ���ϵͳ��ʵ�ʲ��������ȣ�\r\n6���������õĹ�ͨ������\r\n7���л�ƴ�ҵ�ʸ�֤�飬ͬʱ�߱���Ƴ����ʸ�֤�����ȿ��ǡ�');
INSERT INTO `qs_category_jobs` VALUES ('652','50','��ƾ���/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('651','50','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('650','50','������','0','','','��λְ��\r\n1���ճ�������㡢���ƾ֤�����ɡ�˰��������ˣ�\r\n2���о��ƶ�������ߺͲ���ָ�����������׼��\r\n3����˹�˾���񱨱��˶Թ����������ϲ��������в��������\r\n4������Ͷ����Ҫ�󣬶����ṩ�����±����������걨��\r\n5����֯ҵ��ѧϰ����ѵ�ͻ�Ƹ�λ����ѵ����\r\n6�����ݷ��ù���涨��������Ʒ���֧����\r\n7��������֯���������ִ��������Ͽز������գ�����������⣻\r\n8��Э��������ƣ��ṩ����ƻ����ϡ�\r\n\r\n��λҪ��\r\n1���ƻ�רҵ��ѧ����ѧ����\r\n2���л��֤��ע����ʦ�ʸ������ȣ�\r\n3��5�����ϻ�ƹ������飬2��������ƹ������飻\r\n4����Ϥ����������̣��в���ѧϰ����Ը��������\r\n5�������õĹ�ͨ���˼ʽ�����������֯Э�������ͳ�ѹ������');
INSERT INTO `qs_category_jobs` VALUES ('649','50','�����ܼ�','0','','','��λְ��\r\n1�����ֹ�˾����ս�Ե��ƶ�����������ڲ����ƹ����������ҵ����ƻ���\r\n2�����ò���������ƹ���ԭ��Ϊ��˾��Ӫ�����ṩ���ݣ�Э���ܾ����ƶ���˾ս�ԣ������ֹ�˾����ս�Թ滮���ƶ���\r\n3���ƶ���˾�ʽ���Ӫ�ƻ����ල�ʽ�������Ԥ�����㣻\r\n4���Թ�˾Ͷ�ʻ����Ҫ���ʽ��뷽ʽ���гɱ����㣻\r\n5���Ｏ��˾��Ӫ�����ʽ𣬱�֤��˾ս�Է�չ���ʽ�����������˾�ش��ʽ�����\r\n6�����ֶ��ش�Ͷ����Ŀ�;�Ӫ��ķ���������ָ�������ٺͲ�����տ��ƣ�\r\n7��Э����˾ͬ���С����̡�˰����������ŵĹ�ϵ��ά����˾���棻\r\n8�����빫˾��Ҫ����ķ����;��ߣ�Ϊ��ҵ��������Ӫ��ҵ��չ������Ͷ�ʵ������ṩ������ķ����;������ݣ�\r\n9����˲��񱨱��ύ������������档\r\n\r\n��λҪ��\r\n1����ƻ����רҵ��������ѧ������ע����ʦ�ʸ������ȣ�\r\n2��5�����ϲ�����������飬��3�������������ְλ���飻\r\n3����Ϥ��ơ���ơ�˰�񡢲��������Ƶ��㻯����ط��ɷ��棻\r\n4���������ո߼������������Ͱ칫�����\r\n5����ɫ�Ĳ�����������ʺ��ʽ����������\r\n6�����õ���֯��Э�����������õı���������ŶӺ�������\r\n7����ͨ�����������к�����ѧ���������ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('74','0','�����|ͨ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('75','74','�����Ӧ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('76','74','������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('77','74','�������Ӳ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('78','74','IT����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('79','74','ITƷ��/����֧��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('80','74','ͨ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('693','75','��ӡ��/��ӡ��ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('692','75','�����ά��/ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('691','75','Ӧ��ϵͳ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('690','75','����ϵͳ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('689','75','���ܴ���ϵͳ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('688','75','���������ϵͳ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('687','75','����/3D���','0','','','��λְ��\r\n1��������Ŀ��Ʒ��ͼ�ġ�����ý��Ĳ߻���ƹ�����\r\n2����������Ƭ��Ƭͷ��Ƭ�ж����Ĵ����������\r\n3������Ʒ������ѡ���������������\r\n4��ָ������ѵ��������������Ա����ơ�����������\r\n5�������ƶ�ƽ��Ͷ�����������ر�׼�����̹涨�����¹�����\r\n\r\n��λҪ��\r\n1���Ӿ�������ƻ�����������רҵ��ҵ����ר������ѧ����\r\n2����������ƽ�桢������ƾ��飬�ж�ý����ҵ��ҵ����Ϊ�ţ�\r\n3������ʹ����ض�ý����Ƽ����ڱ༭��������������ն����ű����ԣ�\r\n4����������ǿ�����⹹˼���ء�������ǿ���������õ��Ŷ�Э������\r\n5����ǿ�Ľ�����ƺͶ����Ʋ߻��������Ϻõ��ֻ��������˽�־�ͷ���Ʒ���\r\n6���߱������������̵Ĺ�ͨ����������');
INSERT INTO `qs_category_jobs` VALUES ('686','75','ƽ�����','0','','','��λְ��\r\n1����վ���ݽ���Ĳ��ֺͽṹ�ȷ��������滮�����ֱ༭������\r\n2��������վ�ճ�������ƺ��������ϵ�������\r\n3�������Ϣ���ݵĲ߻����ճ�������ά����\r\n4����д��վ�������ϼ���ز�Ʒ���ϣ�\r\n5����ϲ߻��ƹ���������ִ�У�\r\n\r\n��λҪ��\r\n1���е���������վ�༭����򿪹��Ա����̾��������ȣ�\r\n2����ǿ�Ĵ��⡢�߻����������õ����ֱ��������˼ά���ݣ�\r\n3������ʹ��Photoshop��Flash��fireworks��Dreamweaver�ȳ���������������\r\n4���������棬�������ģ�̤ʵ�ϸɣ������ŶӾ���\r\n5���߱����õ��������������õĴ��⹹˼������');
INSERT INTO `qs_category_jobs` VALUES ('685','75','������������/CAD','0','','','��λְ��\r\n1�����3D���ʦ��ɻ�չ��Ŀ��CADʩ��ͼ��\r\n2�����������ʦ��ָ���������������Ŀ��ʩ��ͼ��CAD���ƣ�\r\n3�����������Ŀ�������̲��ĸ������\r\n\r\n��λҪ��\r\n1����ר������ѧ����ƽ��������רҵ���������ø��������\r\n2���߱��߶ȵĹ������飬��ͨЭ��������ǿ��\r\n3���л�չ��ҵ��ҵ���������ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('96','0','����|���ز�|��ҵ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('97','96','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('98','96','���ز�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('99','96','��ҵ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('757','97','����滮���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('756','97','·��/�ۿ�/����','0','','','��λְ��\r\n1��ȫ��������Ŀ������������\r\n2����֤�������������ȺͰ�ȫ�����Ϲ�˾Ҫ��\r\n3�������ƶ���ʵʩʵʩ��ʩ����֯��ơ��ش�ʩ��������ʩ���ƻ�����ȫ��������취�ȣ���\r\n4������ʩ���ֳ��ļ���ָ������ʱ����ʩ���������⣻��\r\n5�����ָ��༼�����Ϻͼ����ļ����ռ�������ͱ��ƹ�������֯���Ʊ����̿����ļ��ͼ����ܽ᣻\r\n6���μӿ������պͲ�Ȩ�ƽ���������\r\n7��Э����Ŀ����ץ����������Э����ʩ���ӵĹ�ϵ����\r\n8��ָ�����ල����������������Ա�ļ������������Ʋ�ʵʩ����Ŀ��������Ա�ļ�����ѵ�ƻ���\r\n\r\n��λҪ��\r\n1��������·����רҵ��ѧ��������ѧ����\r\n2��������Ժ���滮Ժ�������������ȿ��ǣ�\r\n3���ж����е���רҵ������Ŀ��֯��Ƶľ�������������ȣ�\r\n4�����м�����רҵְ�����ȣ���רҵע���ʸ����ȣ�\r\n5����������CAD��������·רҵ��������\r\n6��רҵ����֪ʶ��ʵ����Ϥרҵ�淶����רҵ֪ʶ�н�ǿ�����о���\r\n7�����õĺ�������ͽ�ǿ�Ĺ��������ġ�');
INSERT INTO `qs_category_jobs` VALUES ('755','97','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('754','97','�ṹ����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('753','97','��ľ����','0','','','��λְ��\r\n1����������ͼֽ����ˣ������ֳ����졢���졢��棬�����������̸�Ԥ�㣬������Ƶ�λ��Ҫ���ͼֽ�����޸ĺ����ƣ�\r\n2��Э���б깤�����μ��б깤��ͼֽ���ɣ���������רҵ�������������רҵ�����Ƿ������ع涨�������շ��Ƿ����\r\n3��ʩ�������У���������ʩ�����������Ⱥͳɱ��Ŀ��ƣ����ʩ���г��ֵľ���רҵ�������⣻\r\n4��Э��ҵ����ʩ����λ�ͼ���λ֮���Լ���������רҵ֮��Ĺ�ϵ��\r\n5����֯��Ա��鿢�����ϺͶԵ�λ���̼�����̳������֯�������գ������������̽���˶������������㵥��\r\n\r\n��λҪ��\r\n1����ѧ���Ƽ�����ѧ�������������񽨡���ľ���������רҵ��\r\n2��2�����������������ʩ���������飬�����м�����ְ�������ȣ�\r\n3����Ϥ���Ҽ��ط���ط��桢���ߣ���Ϥ������ʩ��ͼ��ʩ��������й�������ʩ���淶��Ҫ��������Ŀ�滮��������ơ�ʩ�������չ淶���������׵Ȼ����������\r\n4����ͨ�����������嵥����۱��ƣ�����ʹ��Ԥ���嵥�������Ϥʩ���ֳ��������̺ͻ��ڣ��˽��г����������Ϣ��������Ϣ��\r\n5���������õļ���Ӣ��ˮƽ�ͼ������������������ʹ��CAD��ͼ�����������ġ���ҵ�ļ��ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('752','97','�������/��ͼ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('751','97','����ʦ','0','','','��λְ��\r\n1������˾����ʩ�����������ͼ���������������ƣ�\r\n2������˾��������ļ�������֯�ƶ���ʵʩ�ش������ߺͼ���������\r\n3�����ʩ���ֳ��ļ������⣻\r\n4��������֯���ش������¹ʵļ����ʹ��������ڶ�ʩ���ֳ����м�飬��ʱ��ع����������������⼰ʱ�ټ������Ա���д���\r\n5�������С�Ͷ�깤������ؼ������ϵȣ�\r\n6��������Ŀ���ϱ���ʩ����֯��ơ�ʩ�����������ƶ�ʩ�����ղ�����\r\n7���μӼ׷���֯��ͼֽ���󡢷�����֤��\r\n8������Թ�����֯����������ֲ��͵�λ���̵���������;\r\n9������ִ᳹�й��ҿƼ���������ߣ�������ȫ��Ӧ�Ĺ����ƶȣ�\r\n10������ʩ���ֳ��ϱ����Լ����ݼ���������ⵥλ�ĳ���������ݣ��Թ�������������������������Ӧ��Ӧ��Ԥ����\r\n11�����ֽ����������ļ����ϵı��ƣ��μӽ��������ա���֯ʩ�������ܽ��ѧ�����ĵ�׫д��������˺����ϼ����档\r\n\r\n��λҪ��\r\n1����ѧ����ѧ������������ľ����רҵ��\r\n2��10���������Ժ�������飬5��������ҵȫ�澭Ӫ���������飻\r\n3����Ϥ����רҵ��ƹ淶��\r\n4�����нϺõ�����Э�������͹�ͨ�������нϺõ����ֱ�������Ϳ�ͷ���������');
INSERT INTO `qs_category_jobs` VALUES ('750','97','����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('749','97','��ȫԱ','0','','','��λְ��\r\n1����֯��ȫ�ļ��ı�д����ȫ��������ȫ�ļ��Ĺ���\r\n2����ʩ���ֳ����а�ȫ�ල����顢ָ���������ð�ȫ����¼��\r\n3���Բ����ϰ�ȫ�淶ʩ���İ��鼰���˽��а�ȫ����������������ʱ�������ģ�\r\n4������ȫԤ�����Ľ������ı��ƣ�\r\n5����ȷ�ʩ���ֳ���ȫ��ʩ�������İ�ȫ�������棬���������ȫ�����������������������\r\n6����֯��ȫ��顢��ȫ��������ȫ���������ҵ��Ա��ѵ�Ϳ��ˣ�\r\n7������һ���Եİ�ȫ�¹ʡ�\r\n\r\n��λҪ��\r\n1����ѧר�Ƽ�����ѧ���������񽨡������ͽṹ�����רҵ��\r\n2��2�����Ϲ��̰�ȫ���������飬���а�ȫԱ��λ����֤�����ȣ�\r\n3����Ϥ���Ҹ��ȫ���ɷ��棬��Ϥ�����ֳ���ȫ�������̡���ȫ�����淶�Ͱ�ȫ����ĳ����ܹ���ʱ���ְ�ȫ���������������\r\n4����Ϥ���ս���ʩ���������̼���ȫ�����������ٵ����ذ�ȫ���¡���׼���ճ���ȫ�����и߶ȵ������ģ�\r\n5������һ����Э������֯�͹�ͨ����������һ�������Ա��������');
INSERT INTO `qs_category_jobs` VALUES ('748','97','����Ա','0','','','��λְ��\r\n1�����𹤳̲������ļ��Ĺ鵵���ƽ������Ĺ���\r\n2�����𹤳����ϡ�ͼֽ�Ĺ��������ļ��Ĵ���\r\n3����������Ҫ���ܹ����ƻ����¶ȹ����򱨵ȹ�������\r\n4������ϼ��������������\r\n\r\n��λҪ��\r\n1����ѧר�Ƽ�����ѧ�������̹������񽨡�������������רҵ��\r\n2��������ع���1�����ϣ��߱�һ���Ĺ������Ϲ����飻\r\n3������ʹ��CAD��WORD��EXCEL�Ȼ�ͼ���칫�����\r\n4���������õ��ŶӺ�������������ǿ��\r\n5�������������н�ǿЭ��������');
INSERT INTO `qs_category_jobs` VALUES ('747','97','ʩ��Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('746','97','���/Ԥ����','0','','','��λְ��\r\n1����ĿͶ�ʷ����������ճ��ɱ����㣬�ṩ��Ʊ���ɱ����飻\r\n2���������ƹ��㡢ʩ��ͼԤ�㡢�б��ļ����ơ����������������ˣ�\r\n3����֯�ڲ��б�ʵʩ������ⲿ�бꣻ\r\n4����ͬ�ļ��������������ٷ�����ִͬ����������������\r\n5�����̿�֧����ˣ����������Ԥ������㱨�棻\r\n6�����Ǣ����˼������������ˡ�\r\n\r\n��λҪ��\r\n1���������̡���ۡ�Ԥ������רҵ��ר����ѧ����\r\n2��2��������ع������飬����ע�����ʦ�ʸ�\r\n3����������������򹤳���۹���ͳɱ��������̣��˽���ع涨�����ߣ�\r\n4������׫д�б��ļ�����ͬ����������̸�У�\r\n5�������Ͻ������ڹ�ͨ���߱����õ��ŶӺ��������ְҵ���أ�\r\n6��׿Խ��ִ��������ѧϰ�����Ͷ�������������');
INSERT INTO `qs_category_jobs` VALUES ('745','97','���̼���','0','','','��λְ��\r\n1����רҵ������ʦ��ָ���¿�չ��������\r\n2��Э��רҵ������ʦ��ɹ������ĺ˶���\r\n3�������ֳ����������������⼰ʱ��רҵ������ʦ���棻\r\n4���Գн���λʵʩ�ƻ��ͽ��Ƚ��м�鲢��¼��\r\n5���н���λʵʩ�����е�������豸��װ�����ԡ����Խ��мල����¼��\r\n6�������ͼ����ر�׼���Գа���λ�Ĺ��չ��̺�ʩ��������м��ͼ�¼��\r\n\r\n��λҪ��\r\n1����ѧר�Ƽ�����ѧ������������ľ�����������רҵ��\r\n2��1�����Ϲ��̼��������飬��������ʦ�ʸ������ȣ�\r\n3����ͨ���̼������̹�������רҵ֪ʶ���˽⽨��������ͬ������Ͷ�귨����ط��ɷ��棬�˽⹤�̸�Ԥ�����֪ʶ��\r\n4�����н�ǿ�Ĺ�ͨ��������֯Э���������ܹ�������Ч��Э��������ع����������Ͻ������桢ϸ�£��߱�һ���ļ��������������\r\n5��������ǿ���Կ����ͣ�����Ӧ�������');
INSERT INTO `qs_category_jobs` VALUES ('744','97','������Ŀ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('743','97','�߼���������ʦ/�ܹ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('116','0','����|�ʹ�|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('117','116','��������/��Ӫ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('118','116','����/��ȫ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('119','116','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('120','116','��е','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('121','116','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('122','116','��װ/��֯Ʒ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('798','117','�����з�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('797','117','�ɹ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('796','117','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('795','117','�ֿ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('794','117','����/�豸����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('793','117','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('792','117','�����ƻ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('791','117','���鳤/��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('790','117','��������/��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('789','117','�ܹ�/���ܹ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('788','117','����/������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('787','117','�����з�����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('136','0','����|����|��Դ|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('137','136','����/�뵼��/����/�Ǳ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('138','136','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('139','136','����/��Դ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('140','136','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('880','137','��������/�뵼��/�Ǳ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('879','137','�������ӹ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('878','137','����ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('877','137','����/����Ӽ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('876','137','���/��Դ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('875','137','�����豸װ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('874','137','�����豸ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('873','137','����/�Ǳ�/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('872','137','����Ԫ��������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('871','137','���Ӳ���/�뵼��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('870','137','��ͼ/��·���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('869','137','Ƕ��ʽ��/Ӳ������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('868','137','���̾���/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('867','137','���Ӽ�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('866','137','���Ӽ����з�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('865','137','���ӹ���ʦ/����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('169','0','���|ý��|����|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('170','169','���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('171','169','Ӱ��/ý��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('172','169','�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('173','169','���ų���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('927','172','��ý�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('926','172','����/����/չ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('925','172','����/3D���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('924','172','�������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('923','172','�Ű����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('922','172','ƽ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('921','172','������������/CAD','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('920','171','����Ӱ��/ý��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('919','171','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('918','171','��̨���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('917','171','����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('916','171','��Ӱ/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('915','171','������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('914','171','������/����Ա/DJ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('913','171','��Ա/ģ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('912','171','����/�ർ/�����ܼ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('911','171','Ӱ�Ӳ߻�/������Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('910','170','�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('909','170','����ָ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('908','170','�İ�/�߻�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('907','170','��洴��/���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('906','170','���ͻ�רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('905','170','���ͻ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('203','0','����|����|��ѯ|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('204','203','����/��ѵ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('205','203','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('206','203','��ѯ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('207','203','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('961','204','����/�γ̹���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('960','204','��ѵ�߻�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('959','204','������Ʒ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('958','204','��ѵ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('957','204','��ѵʦ/��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('956','204','�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('955','204','�ҽ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('954','204','У��/��У��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('953','204','�赸��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('952','204','������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('951','204','���ֽ�ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('950','204','�����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('949','204','�׽�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('948','204','Сѧ��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('947','204','��ѧ��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('225','0','ҽ��|��ҩ|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('226','225','ҽԺ/ҽ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('227','225','��ҩ/ҽ����е','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('228','225','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('992','226','����ҽԺ/ҽ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('991','226','ҩ������/ҩ��ʦ','0','','','��λְ��\r\n1������ҩƷ���ŵ�Ӫ�ˡ���������\r\n2������ҩƷ�ĵ��������ż�ҩ����ѯ������\r\n3�����ա�GSP����׼���ƶ�Ҫ����б�����ļ�����\r\n��λҪ��\r\n1����ר������ѧ����1������ҩƷ���ۡ������飻\r\n2����ҩ��ʦ/ִҵҩ��ʦְ��֤�飬GSP�ϸ�֤\r\n3�������������������и߶ȵ����θС���ҵ������ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('990','226','��ҽ/����ҽ��','0','','','��λְ��\r\n1������Ȯ���ճ���࣬Ȯֻ���ճ�����\r\n2���ܶԳ��Ｒ�������ٴ���ϡ����ƣ�����ҩ�����롢��Һ�ȣ�\r\n3������������������������ǰ׼�������м໤������Ļ�������\r\n��λҪ��:\r\n1��ϲ��Ȯֻ���߱����ĺ����ԣ�\r\n2���������������н�ȡ�ģ����õ�ѧϰ���������Ա���������Ŷ�Э��������\r\n3������ҽѧ�����רҵ��ר�Ƽ�����ѧ����');
INSERT INTO `qs_category_jobs` VALUES ('989','226','Ӫ��ʦ','0','','','��λְ��\r\n1��������ͻ�������Ч��ͨ�������û������ṩ��ѯ����\r\n2������Կͻ�������ѵ��ָ�������������Ľ���ͷ������棻\r\n3��������չҵ�񣬲��Ͽ����µĿͻ���ά���Ͽͻ���\r\n4���������ز��Ž��о�����Ŀ�Ĺ�ͨ����֤��ѯ��Ŀ��˳������\r\n��λҪ��\r\n1��3��������ع������飻\r\n2����������̤ʵ���ܳ���һ���Ĺ���ѹ����\r\n3��Ʒ�ж��������彡�������о�ҵ����\r\n4���������ģ��ŶӺ�������ǿ��');
INSERT INTO `qs_category_jobs` VALUES ('988','226','ҽԺ������Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('987','226','����ҽ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('986','226','��ʿ/������Ա','0','','','��λְ��\r\n1�����ҽ�����öԲ��˵����ƹ�����\r\n2���۲첡�˵Ĳ���ת�������\r\n��λҪ��\r\n1���������רҵ��ר������ѧ����\r\n2��һ�����Ϲ������飬�л�ʿ�ϸ�֤���ȣ�\r\n3���׺���ǿ�����ڰ��ģ�̤ʵ��ҵ��');
INSERT INTO `qs_category_jobs` VALUES ('985','226','ҽ�Ƽ�����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('984','226','ҽ��/ҽʦ','0','','','��λְ��\r\n1���Ӵ��ճ���������ҽ�ƹ����������黼�߲��飬ϸ����ϣ���ȷ������������ҩ���ž����\r\n2�����ݰ������÷����������ռ������;Ȼ�֪ʶ��\r\n3�����ڶ�ҽ���ҵĸ���ҽ����е������������\r\n4��ҩƷ����飬�Թ���ҩƷ��ʱ����ȷ��Ա����ҩ��ȫ��\r\n��λҪ��\r\n1����ר����ѧ����ҽѧ���ٴ��������רҵ��\r\n2�����Ա���������������������õĽ�����ͨ�������׺�����\r\n3����Ϥ���������֪ʶ������������\r\n4���������õ�ְҵ���º��Ŷ�Э������');
INSERT INTO `qs_category_jobs` VALUES ('241','0','����ҵ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('242','241','�ٻ�/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('243','241','����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('244','241','����/����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('245','241','����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('246','241','����/��ͨ/�ִ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1014','242','�����ٻ�/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1013','242','Ʒ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1012','242','����Ա/�ڱ�','0','','','��λְ��\r\n1��ά���������򣬱�֤�����Ʋ���ȫ���˿ͺ�Ա����ȫ��\r\n2�������������ϵͳ�������Ȱ�ȫ��ʩ��ʹ��״��������ά���뱣����\r\n3��Ѳ����Ʒ�ڸ�����ȫͨ���������ص������Լ�����������ž�һ�а�ȫ������\r\n4��������Ʒ���ԭ��Э�������������\r\n5����ϱ���������������ǡ�����');
INSERT INTO `qs_category_jobs` VALUES ('1011','242','����Ա','0','','','��λְ��\r\n1�����ظ�������ƶȺͲ�������\r\n2�����涨Ϊ�����˰������������ȷ�����������֮ǰ���������Ŀ��������\r\n3����������δ�����Ŀ����δ����Ŀ��������ø���\r\n4��������˿����ʻ�ת�ƣ�\r\n5������Ϊ���˶һ���ң��ṩ������Ʒ�Ĵ汣���䣻\r\n��λҪ��\r\n1����������ѧ����������XX�����ϣ� �������ʺã�\r\n2���Ǳ�����Ա����豾�л����˵���;\r\n3�����оƵ�ǰ̨�����������飬������Ӧ�Ļ��֪ʶ��');
INSERT INTO `qs_category_jobs` VALUES ('1010','242','���Ա','0','','','��λְ��\r\n1����Ϥ������Ʒ���ŵ���Ʒ���ơ����ء����ҡ������;�����ܡ��������ޣ�\r\n2�����س��вֿ�������Ʒ�������йع涨������ҵ���̽��и������\r\n3��������Ʒ��۵�֪ʶ����ȷ��ü۸�\r\n4������������Ʒ���е��й�רҵ֪ʶ�����������õ�ʵ�ʹ����У�\r\n5����û�����������\r\n��λҪ��\r\n1����������ѧ����\r\n2���д����̳����й������������ȣ�\r\n3��Ʒò�������Ȱ�������ҵ���Կ����ͣ�������ǿ�����彡�����к�ǿ�ľ�ҵ��������õ��������ʣ�\r\n4���߱��򵥵ļ�����������ɣ��˽���Ʒ����ʹ洢֪ʶ��\r\n5���ܹ�ʤ�η��ص���������������Ӧ��ҹ����ݰ��š�');
INSERT INTO `qs_category_jobs` VALUES ('1009','242','����Ա/����Ա','0','','','��λְ��\r\n1��ȫ�����ֵ���Ĺ�����������ܲ��ĸ���Ӫ�����Ե�ʵʩ��\r\n2��ִ���ܲ��´�ĸ�������\r\n3�������ŵ�������ŵķֹ���������\r\n4���ල��Ʒ��Ҫ�����ϻ������������ý������ա���Ʒ���С���Ʒ�����ͷ�������������й���ҵ��\r\n5���ල�ŵ���Ʒ��Ĺ���������Ʒ��ĳ߶ȣ�');
INSERT INTO `qs_category_jobs` VALUES ('1008','242','��Ա/ӪҵԱ','0','','','��λְ��\r\n1��ȫ�����ֵ���Ĺ�����������ܲ��ĸ���Ӫ�����Ե�ʵʩ��\r\n2��ִ���ܲ��´�ĸ�������\r\n3�������ŵ�������ŵķֹ���������\r\n4���ල��Ʒ��Ҫ�����ϻ������������ý������ա���Ʒ���С���Ʒ�����ͷ�������������й���ҵ��\r\n5���ල�ŵ���Ʒ��Ĺ���������Ʒ��ĳ߶ȣ�');
INSERT INTO `qs_category_jobs` VALUES ('1007','242','�곤/��������','0','','','��λְ��\r\n1��ȫ�����ֵ���Ĺ�����������ܲ��ĸ���Ӫ�����Ե�ʵʩ��\r\n2��ִ���ܲ��´�ĸ�������\r\n3�������ŵ�������ŵķֹ���������\r\n4���ල��Ʒ��Ҫ�����ϻ������������ý������ա���Ʒ���С���Ʒ�����ͷ�������������й���ҵ��\r\n5���ල�ŵ���Ʒ��Ĺ���������Ʒ��ĳ߶ȣ�\r\n��λҪ��\r\n1����ר������ѧ��,רҵ���ޣ�\r\n2��3����������ҵ���������飬���н�ǿ�ĵ�������飻\r\n3����ͨ�Ŷӹ����ͻ�������Ʒ�������й����������ͣ���Ϥ����ĸ������̵��ƶ���ִ�У�\r\n4����ǿ���Ŷӹ��������͹�ͨ�������ܹ����ܽϴ�Ĺ���ǿ�Ⱥ͹���ѹ����\r\n5������35�����£�');
INSERT INTO `qs_category_jobs` VALUES ('258','0','ѧ��|�繤|����|ũҵ|����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('259','258','ѧ��/�繤/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('260','258','ũ/��/��/��ҵ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('261','258','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1064','260','��ҵˮ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1063','260','��ҵ��ľ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1062','260','԰��԰��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1061','260','��ҽ/����ҽ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1060','260','����Ӫ��/�����з�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1059','260','������ֳ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1058','260','ũ��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1057','259','��ѧ�о���Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1056','259','������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1055','259','ʵϰ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('773','98','���ز�����/��ҵ����','0','','','��λְ��\r\n1�� ����ͻ��ĽӴ�����ѯ������Ϊ�ͻ��ṩרҵ�ķ��ز���ҵ��ѯ����\r\n2�� ��ͬ�ͻ��������ٳɶ��ַ�����������ҵ��\r\n3�� ����˾��Դ��������ۣ�����ҵ���������õ�ҵ��Э����ϵ��\r\n\r\n��λҪ��\r\n1��������20��30���꣬��ר����ѧ����\r\n2����ʵ���ţ��Կ����ͣ��������õ��ŶӾ���\r\n3���ܳ��ܽ�ǿ�Ĺ���ѹ����Ը����ս��н��\r\n4����ͨ��������\r\n5������ؾ��������ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('772','98','���ز�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('771','98','���ز�Ӫ���߻�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('770','98','���ز�����/�߻�','0','','','��λְ��\r\n1�����𷿵ز���Ŀ����ǰ�ڲ߻��Ĺ���������Ŀ��λ������Ͷ��������������ľ������ý���ȣ�\r\n2�����𷿵ز���Ŀ�����ĺ���Ӫ���߻��Ĺ���������Ŀ���λ�ĳɹ��������Ӫ���ַ������ã�\r\n3�����������ý��Խ�,��ù�˾�����ƹ���Ŀ,���û�Ĳ߻�,��װ,����,������ʵʩ������\r\n4��׫дȫ�̲߻����桢��λ���桢�滮���顢ִ�б��棻\r\n5����������ۼ��߻����Ƚ��ж�̬�ƿء�\r\n\r\n��λҪ��\r\n1��Ӫ������桢��������ľ�����רҵ��ѧר�Ƽ�����ѧ����\r\n2��2�����Ϸ��ز���ҵ�߻���ѯ�������飬�гɹ��߻����������ȣ�\r\n3����Ϥ���ز��߻����ܹ����ǰ�ڲ߻����桢Ӫ���߻����桢�ƹ�߻���ȷ��ز����������еĲ߻���׫д������\r\n4����Ϥ���н��衢���ز���ҵ����Ϥ���ز�������ط��ɷ��棬��ʱ���շ��ز��г���̬������������г����������ж�����\r\n5���Ȱ����ز��߻���ҵ���Ͻ���ǿ�����г����ͻ�������һ���������ԡ�');
INSERT INTO `qs_category_jobs` VALUES ('769','98','���ز���Ŀ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('768','97','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('767','97','���/����','0','','','��λְ��\r\n1��������Ŀ�Ľ���滮����֯��չ��·,����ȷ��濱�⣻\r\n2������Ŀ���̽�����̽���ָ�����ල��\r\n3������Ŀ���輰������Ӫ����������������׼ȷ�ķ�����Ԥ�⣻\r\n4��������Ʒ�����֯�ֳ�ʩ�����������Ӧ�ĸĽ����顣\r\n\r\n��λҪ��\r\n1����ר������ѧ�������̲��������⣬������Ϣ�����רҵ��ҵ��\r\n2��2�����������ҵ����ʩ�����飻\r\n3��GPS��ȫվ�ǲ���������\r\n4���Ϸ�CASS��AUTOCAD�����������������������\r\n5�����й����ֳ�����ͼ���ָ�����飬�ܷ����������м������⣬ָ��������Ա��ҵ��\r\n6���н�ǿ�Ĺ�ͨ�����;�ҵ����');
INSERT INTO `qs_category_jobs` VALUES ('766','97','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('765','97','�ۺϲ���','0','','','��λְ��\r\n1����������ϵͳ�����滮����ƺʹ������ʩ��ͼֽ������������ʽ�㱨�����ٸ������罨����ȣ�������ֽ�������� \r\n2��������ͬ����ȥ��Կͻ��˽�ͻ���������ǰ����Ƶ���������˿ͶԲ��߷����Ҫ�� \r\n3���������û���ͨ,��ϸ�˽�����,�������Ƶ�ʩ���Ĺ������û����̿����ĵ����ơ��ύ��ȫ���̹���\r\n4�����ϵͳ����ʦ���ϵͳ������Ŀ���ڵ�ʵʩ������\r\n\r\n��λҪ��\r\n1. ��������רҵ����Ϥ��������������֪ʶ������CAD��ͼ��\r\n2. ��������ϵͳ���飨��Ҫ���ۺϲ��ߡ�ͨ�Ż����豸��װ/���ԡ����������ϵͳ������ϵͳ�ȣ���\r\n3. ��Ϥ������ҵ����ع淶�ͱ�׼�ȣ��߱���ǿ����Ŀ���Ŷӹ���Э��������\r\n4. �������飬������ǿ�����д��¾��񣬾������õ�ѧϰ��������������ͽ������������� \r\n5. �˼ʹ�ͨ����ǿ���������õ��Ŷ�Э������ \r\n6���ܹ�ִ�й�˾ҵ�����̼�����ʩ���淶��������ǿ��');
INSERT INTO `qs_category_jobs` VALUES ('764','97','���ܴ���ϵͳ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('763','97','�������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('762','97','����ůͨ','0','','','��λְ��\r\n1���ƶ�������Ŀˮů���̵ľ���ʩ���������ֳ�ָ������ʩ�����̲��ṩ����֧�֣�\r\n2������Ƶ�λ��ͨ��Э��������ʹ�˾��ůͨ���������ůͨ��Ʒ�����ͼֽ������\r\n3��Ϊůͨʩ���ṩ����֧�֣���ůͨ�豸��ѡ���ṩ����Ľ�����޸������\r\n4���μ��ֳ�Ѳ�ӣ���Ϲ���ʩ�������գ������ֳ�ʩ�����⣻\r\n5���Թ�����Ŀ�е�ˮů���̽��м������������мල�͹���\r\n6��������ʩ����λ������λ��Э����ͨ��\r\n\r\n��λҪ��\r\n1������25�����ϣ�����ˮ��ůͨ��������רҵר������ѧ����\r\n2��3������ůͨ�������飬���й�����ز��Ű䷢��ְҵ�ʸ�֤�飨�ϸ�֤����\r\n3����Ϥůͨ����ʩ�����ա�ʩ�����̼�������չ淶���˽�ůͨ����ʩ�������г�����͹�����Ƶ���ҵ�淶��\r\n4��������ʵ�Ĺ����ֳ�����������õ�������ʶ���ɱ���ʶ����ȿ���������\r\n5���������õĹ�ͨ��Э���������ḻ���ֳ�Э�����������õ��ŶӾ����뾴ҵ����\r\n6�����彡�����Կ����ͣ��ܹ��������ɡ�');
INSERT INTO `qs_category_jobs` VALUES ('761','97','����ˮ','0','','','��λְ��\r\n1���������ˮ������ϵͳ������ơ�ʩ���������ֳ���������\r\n2����˸���ˮ�ȹ����б��ļ��ļ������֣�\r\n3��Э��ʩ����λ������λ�����ֳ����⣻\r\n4�����𹤳̸����������ա��������ռ��������յ����չ�����\r\n5�����ñ�רҵ�йؼ������ϵ���������\r\n6����������쵼���������������\r\n\r\n��λҪ��\r\n1�����̡�����ˮ�����רҵ��ѧר�Ƽ�����ѧ����\r\n2��2��������ع������飬�м�����ְ�ƣ�\r\n3����Ϥ�����ҵ��ҵ��������ƹ������̣��߱���רҵ�Ļ�������֪ʶ���˽����רҵ֪ʶ������������Office��Auto��CAD�ȼ�������ϵͳ��\r\n4��ϸ���Ͻ����ܳԿ����ͣ������ŶӾ��񼰹�ͨЭ��������');
INSERT INTO `qs_category_jobs` VALUES ('760','97','Ļǽ���','0','','','��λְ��\r\n1��ȫ��Э����Ƽල�����Ŀ�������\r\n2��������Ƽල��Ҫ����ƻ��޸�ͼֽ����������ͼ��ƽ��ͼ������ͼ�ȣ�\r\n3��������Ƽලί�ɵĲ���ͳ���嵥��\r\n4��������Ƽලί�ɵĲ��϶�����Ϣ/���飻\r\n5������������ɵĹ����ύ��ͼֽ���Ա����Ƽලȷ�ϣ�\r\n6��Э����Ƽලά�����������������ļ��ռ������ơ���ӡ���Ǽǵȣ�\r\n7��Э��רҵ�ܹ���������ֳ����ֵļ������⡣\r\n\r\n��λҪ��\r\n1����ר������ѧ����5�����ϼ׼����Ժ����ͷ��ز�����/ʩ����˾�������飻\r\n2������ʹ��AUTOCAD��ͼ������칫�����\r\n3����Ϥ������صĹ��ҹ淶�����棻\r\n4���д����ۺ���Ŀ��ƾ��飬�������ս���ʩ��ͼҪ��������\r\n5���е�����ͼֽ��Ӧרҵ��˹�����\r\n6�����ֳ�ʩ����Ͼ��飬��סլ���͡��淶����ƾ��飻\r\n7���߱����õĹ�ͨЭ�����˼ʹ�ϵ������\r\n8���м�����ʦ��');
INSERT INTO `qs_category_jobs` VALUES ('759','97','��������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('758','97','԰��/�������','0','','','��λְ��\r\n1����֯��ʵ���۹�����ƹ���������ͼֽ������Ľ������ȡ���ȼ������ԣ�\r\n2�����ơ���龰�۹��̼ƻ������ƶ���Ʊ�׼�����ƾ�����ƣ����ƾ���ʵʩЧ����\r\n3�����ܾ��۷�����ʩ��ͼ���ļ�����ˣ�\r\n4����֯���۹��̲��ϵ�ѡ�������幤����\r\n5����֯�ɹ����۹�������Ҫ��СƷ��\r\n6�����𾰹۹��̿������ա����ʩ�����ȡ������������ؼ������⡣\r\n\r\n��λҪ��\r\n1��԰�֡�԰�ա�������������רҵ��ѧר�Ƽ�����ѧ����\r\n2��2�����Ͼ���������������������飬�м�����ְ�ƣ�\r\n3����Ϥ��ľ���ԣ������ֳ��������ܶ�����֯������Ŀ����ƺ�ʩ������������Ч�Ŀ��ƹ��ں;���ʵʩЧ��������ʹ�õ��԰칫�������ͼרҵ�����\r\n4���߱�רҵ�������������ո�Ч�Ĺ����������߱����õ�Э�����������м�ǿ�ľ�ҵ����������ġ�');
INSERT INTO `qs_category_jobs` VALUES ('742','80','����ͨ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('741','80','ͨ�Ų�Ʒά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('740','80','�ƶ�ͨ�Ź���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('739','80','����ͨ�Ź���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('738','80','����ͨ�Ź���ʦ','0','','','��λְ��\r\n1�����߲�Ʒ���Ʒ����ģ�鲿�ֵĿ�����ơ�����ѡ�ͣ�\r\n2���о����ߵ粨����ģ�ͣ�\r\n3�����ߵ���ؼ���Ӧ���о���\r\n4����д�з������ĵ���\r\n\r\n��λҪ��\r\n1�����ߵ��ͨ��רҵ�����Ƽ�����ѧ����Ӣ�����ã�\r\n2��2��������ع���������\r\n3����ͨ���ߵ�ͨ���������֪ʶ����Ϥ�����źŴ����㷨��');
INSERT INTO `qs_category_jobs` VALUES ('737','80','ͨ�ż�������ʦ','0','','','��λְ��\r\n1�����𱾹�˾��Ʒ��ά�ޡ���������Ƶ����ͨ����صȹ�����\r\n2�������ʹ�ñ���˾��Ʒ������վ����ж���Ѳ�칤������ʱ������������ʱ������ϣ�\r\n3�������û�Ҫ����豸���칤����\r\n4����ʱ�����������⣻\r\n5��������ά���������˻㱨ά�����������\r\n\r\n��λҪ��\r\n1��ͨ���ࡢ��������רҵ��\r\n2��1�����Ϲ������飬������ʸ�֤�������ȣ�\r\n3����Ϥ������������豸����˼�ơ���Ϊ����\r\n4����ǿ�Ķ�����������ͽ�������������');
INSERT INTO `qs_category_jobs` VALUES ('736','79','����ITƷ��/����֧��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('735','79','Ӳ������','0','','','��λְ��\r\n1����ɹ�˾��Ŀ����Ʒ��������ز��Թ�����\r\n2�����ݲ�Ʒ���������ĵ����ƶ����Լƻ�������������������Ʋ������̣�\r\n3�����ݲ�Ʒ����������ɲ��Ի�������������ù�����\r\n4��ִ�о����������ȷ�ϲ��Խ����ȱ�ݸ��٣���ɲ��Ա����Լ����Խ��������\r\n5���ڲ��Ը������뿪������Ʒ�Ȳ��Ź�ͨ��֤����������������ȷ�Ժ��걸�ԣ�\r\n6����ɲ�Ʒȱ����֤��ȷ�ϣ������������ֵ�ȱ�ݣ���Ҫ��ɿ�����ԭ���������֤��\r\n7�������ύ��Ʒȱ��ͳ�Ʒ������沢��ɲ�Ʒ�����ܽᱨ�棻\r\n8����ɲ����ŶӵĹ����˼�ҵ����ѵ����\r\n\r\n��λҪ��\r\n1�����רҵ��������ѧ����Ӣ�����ã�\r\n2������������ز��Թ������飻\r\n3����Ϥ��Ʒ�ṹ�������������ۣ������ƶ����Լƻ������Ʋ��Է������������ܹ��淶�������̣���Ϥ��ز��Թ��ߣ�����ʹ�ð칫�����\r\n4���߱����õ�ҵ��ͨ���������,�н�ǿ�����θм���ȡ����');
INSERT INTO `qs_category_jobs` VALUES ('734','79','�������','0','','','��λְ��\r\n1����ɹ�˾��Ŀ����Ʒ��������ز��Թ�����\r\n2�����ݲ�Ʒ���������ĵ����ƶ����Լƻ�������������������Ʋ������̣�\r\n3�����ݲ�Ʒ����������ɲ��Ի�������������ù�����\r\n4��ִ�о����������ȷ�ϲ��Խ����ȱ�ݸ��٣���ɲ��Ա����Լ����Խ��������\r\n5���ڲ��Ը������뿪������Ʒ�Ȳ��Ź�ͨ��֤����������������ȷ�Ժ��걸�ԣ�\r\n6����ɲ�Ʒȱ����֤��ȷ�ϣ������������ֵ�ȱ�ݣ���Ҫ��ɿ�����ԭ���������֤��\r\n7�������ύ��Ʒȱ��ͳ�Ʒ������沢��ɲ�Ʒ�����ܽᱨ�棻\r\n8����ɲ����ŶӵĹ����˼�ҵ����ѵ������\r\n\r\n��λҪ��\r\n1�����רҵ��������ѧ����Ӣ�����ã�\r\n2������������ز��Թ������飻\r\n3����Ϥ��Ʒ�ṹ�������������ۣ������ƶ����Լƻ������Ʋ��Է������������ܹ��淶�������̣���Ϥ��ز��Թ��ߣ�����ʹ�ð칫�����\r\n4���߱����õ�ҵ��ͨ���������,�н�ǿ�����θм���ȡ����');
INSERT INTO `qs_category_jobs` VALUES ('733','79','ITƷ�ʹ���','0','','','��λְ��\r\n1���������缰���豸��ά�������������ų����ճ�������ȷ����˾�����ճ�������������\r\n2������˾�칫��������Ӳ��������ϵͳ���ճ�ά����\r\n3��ά���ͼ�ع�˾������������������֤���������У�ȷ�����������������ڹ����ڼ��ڰ�ȫ�ȶ����У�\r\n4����װ��ά����˾�������������ϵͳ�����Ӧ�������ͬʱΪ���������ṩ��Ӳ������֧�֣�\r\n5������ų�������Ӳ�����ϣ����ü�¼����������ϵͳ���б��棻\r\n6��ά���������ģ���ϵͳ���ݽ��б��ݡ�\r\n\r\n��λҪ��\r\n1��ͨ�š����ӹ��̡��Զ���������������רҵ����ר������ѧ����1����������ϵͳ��ITϵͳά���������飻\r\n2����Ϥ�����ո��ּ������Ӳ�����ɶ������а�װ�����Լ������ų���\r\n3����ͨ��������ά�������簲ȫ֪ʶ�����������о������Ĵ�������豸�Ļ���ά���͹��ϴ���\r\n4����������WINDOWS��server20002003�ȶԷ���������ά�������\r\n5�������õ�רҵӢ���дˮƽ������������ǿ������ϸ�£��������ģ��߱��ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('732','79','IT����֧��/ά������ʦ','0','','','��λְ��\r\n1���������缰���豸��ά�������������ų����ճ�������ȷ����˾�����ճ�������������\r\n2������˾�칫��������Ӳ��������ϵͳ���ճ�ά����\r\n3��ά���ͼ�ع�˾������������������֤���������У�ȷ�����������������ڹ����ڼ��ڰ�ȫ�ȶ����У�\r\n4����װ��ά����˾�������������ϵͳ�����Ӧ�������ͬʱΪ���������ṩ��Ӳ������֧�֣�\r\n5������ų�������Ӳ�����ϣ����ü�¼����������ϵͳ���б��棻\r\n6��ά���������ģ���ϵͳ���ݽ��б��ݡ�\r\n\r\n��λҪ��\r\n1��ͨ�š����ӹ��̡��Զ���������������רҵ����ר������ѧ����1����������ϵͳ��ITϵͳά���������飻\r\n2����Ϥ�����ո��ּ������Ӳ�����ɶ������а�װ�����Լ������ų���\r\n3����ͨ��������ά�������簲ȫ֪ʶ�����������о������Ĵ�������豸�Ļ���ά���͹��ϴ���\r\n4����������WINDOWS��server20002003�ȶԷ���������ά�������\r\n5�������õ�רҵӢ���дˮƽ������������ǿ������ϸ�£��������ģ��߱��ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('731','79','IT����֧��/ά������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('730','78','����IT����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('729','78','IT��Ŀִ��/Э��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('728','78','IT��Ŀ����/����','0','','','��λְ��\r\n1��������վ��Ŀ���������������Ŀ������ƺ��Ż�����������\r\n2��������ơ�ϸ����ʵʩ���򿪷��ƻ���������򿪷��Ŷӣ�\r\n3������ܹ���ƣ����ܺ�ģ�黮�֣��������ģ�鿪����\r\n4����������ѵ㡣\r\n\r\n��λҪ��\r\n1����������ѧ����3������PHP�������飬1�����Ͽ��������飻\r\n2����ͨjavascript,��css��php����ϤajaxӦ�á�SQL���ݿ���Ƽ�����Ӧ��SQL���ԣ�\r\n3����Ϥ����������̡����ģʽ���Ϻõ��ĵ����������õı�����\r\n4����Ƶ���μ�������E-learning���������������ȼѣ�\r\n5�����õ����ͱ�����������ڹ�ͨ���ܺõ��ŶӺ�����ʶ��');
INSERT INTO `qs_category_jobs` VALUES ('727','78','��Ϣ��������/רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('726','78','IT�����ܼ�/����','0','','','��λְ��\r\n1����֯�ƶ���ʵʩ�ش������ߺͼ����������ƶ�������չս�ԡ��滮��չ����\r\n2���������Ŀ�����ƻ������ύ��Ŀ�����飻\r\n3��������Ŀ�ƻ�������ͳ����켼���Ŷ������Ŀ�������ĵ�����\r\n4�����м�������Ĺ��غ�Ԥ�У�\r\n5��ʵ������ļ������󣻽��ͻ�����ļ������⣬�ṩ����֧�֣�\r\n6���ⶨ�ŶӵĹ���Ŀ�겢�ලʵʩ��\r\n7���Ŷӹ���ָ��ѧϰ��������ѵ�������ŶӼ���ˮƽ��\r\n\r\n��λҪ��\r\n1�������רҵ����������ѧ����\r\n2��5�����Ϲ������飻3��������Ŀʵʩ�͹����飻\r\n3��������ͨ������ҵ����������˽⣻\r\n4��˼·���������Ա������ǿ�������õ�Ӣ��������\r\n5����ǿ��ѧϰ�������¼�����������\r\n6���������õ����������Լ��ŶӺ��������н�ǿ�������ġ�');
INSERT INTO `qs_category_jobs` VALUES ('725','77','�����������Ӳ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('724','77','Ƕ��ʽ��/Ӳ������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('723','77','Ӳ������ʦ','0','','','��λְ��\r\n1��������ɲ�Ʒ��Ӳ�����塢�߼���·������뿪����Э��PCB��Ƽ��������Ƽӹ���\r\n2����ĿҪ��������巽��������ѡ�͡�ԭ��ͼ��ơ����ԡ�����ά���Ż��ȹ��������������������\r\n3����ʱ��д�����ĵ��ͱ�׼�����ϣ�\r\n4���Ա���Ԫ��Ʒ�ṩ����֧�֣�\r\n5����ѵ��ָ��������������Ա��������ԪӲ�����̡�\r\n\r\n��λҪ��\r\n1�����Ƽ�����ѧ����ͨ�š�����������ӵ����רҵ��2��������ع������飻\r\n2���нϺõ���ģ��·���ź���ϵͳ����֪ʶ���߱�һ�������ϵ���ģ��·���Ծ��飻\r\n3����ͨProtel�ȿ������ߣ���ͨ����C���Կ�����\r\n4���ܹ������Ķ�Ӣ��������ϣ�\r\n5���������θ�ǿ���нϺõ����о�����ŶӺ�����ʶ��');
INSERT INTO `qs_category_jobs` VALUES ('722','77','����������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('721','77','WEBǰ�˿���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('720','77','�ֻ��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('719','77','ERP��������/Ӧ��/ʵʩ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('718','77','ϵͳ����/�ܹ�','0','','','��λְ��\r\n1������ϵͳ��������к����������׫д��ؼ����ĵ�\r\n2���ϵͳ�������������ϵͳ��ܺͺ��Ĵ����ʵ�֣�\r\n3����Ŀ��Ҫ��ơ���ϸ��ơ������ƻ��ȵı��Ʋ�ʵʩ��\r\n4��ϵͳ�������ԡ�����ͼ��ɣ�\r\n5�����������������еļ������⣻\r\n6���������ά���뱸�ݡ�\r\n\r\n��λҪ��\r\n1��2������ʵ��JAVA��Ŀ����ʵʩ�������飬�������������רҵ����ѧ�����ϣ�\r\n2�����зḻJ2EE�ܹ���ƾ��飻��ͨjava��̡����ģʽ�������������Ϥ��ϵ�����ݿ⣻\r\n3������ʹ��uml��xml��صĿ������ߺʹ��������Ϥspring��struts��,hibernate�ȳ��ÿ�Դϵͳ\r\n4����Ϥ����JavaӦ�÷�������ʹ�ã���ϤLINUX��UNIX����ϵͳ��\r\n5������ʹ��eclipse��cvs��svn��ant��tomcat��mysql�ȳ��ÿ������ߺͿ���������\r\n6����Ϥ��Restful��WebService��xml-rpc��jax-ws��xmlschema�ȱ�׼������Ϥ��axis2��xfire��cxf��restlet���е����������Ϥ��apache��ϵ�п�Դ�����\r\n7���˽⡢JMS��JSON��restlet��json-rpc��Osgi��SCA��JMX��ESB���˽����ģʽ�����ģʽ���ܹ�������ã�\r\n8���߱����õ��ŶӺ�������͹�ͨ����������');
INSERT INTO `qs_category_jobs` VALUES ('717','77','�������Ա','0','','','��λְ��\r\n1������������վ������ϵͳ������\r\n2��������Ŀ�������̣������з����ŵ������������\r\n3��������ϸ��ơ����뿪������ϲ��ԣ������������Ŀ��\r\n4�����뼼�����⹥�ء���֯�������۵ȹ�����\r\n\r\n��λҪ��\r\n1��һ�����Ͽ������飬����ҵ��Ӧ�ÿ������飻\r\n2����ͨJava/J2EE��̣���Spring+Hibernate�����ƿ�ܵ�ʵ����Ŀ���飬����ʹ��Eclipse�ȿ������ߣ�\r\n3����ϤJavaScript��Ajax��XML����ؼ�����\r\n4����ϤVelocity��Freemaker��ģ�����棻\r\n5����ϤOracle��MySQL�����ݿ⿪����SQL���ܵ��ţ�\r\n6���������ճ��õ�Linux�����shell�ű���Windows��Server�ĸ������Ӧ�����ã�\r\n7���������OO˼�룬��ϤUML���ԣ�\r\n8�������õĴ�����д��ע�ͺ͵�Ԫ����ϰ�ߣ��������ö���������ģʽ��\r\n9���߱����õĹ�ͨ�������ɣ���ǿ�������ļ��ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('716','77','���ݿ⿪��/����','0','','','��λְ��\r\n1������ҵ��ϵͳ���ݿ�Ĺ滮����ơ�ʵʩ����Ʋ��Ż����ݿ������跽��\r\n2�������ݿ���й����������ݿ�Ӧ��ϵͳ����Ӫ����أ�\r\n3��ҵ��ϵͳ���ݿ�Ķ���ά�����쳣����\r\n4�������ݿ����ܷ�������ţ��Ŵ���֤���ݰ�ȫ��\r\n5�������ݿ���ж��ڱ��ݡ��Ͱ���ָ���\r\n6������������Ž��е����ݴ�����ѯ��ͳ�ƺͷ���������\r\n\r\n��λҪ��\r\n1����������רҵ����������ѧ����\r\n2������������ع������飻\r\n3����ͨ��ϵ���ݿ�ԭ��,��Ϥ���ݿ�ϵͳ�Ĺ滮����װ�����á����ܵ��ԣ�\r\n4����ͨSQL�ű��ı�д���зḻ�����ݿ������ά���ž��飻\r\n5������ʹ�����ݿ������������ƹ��ߣ�\r\n6�����ٴ���ϵͳͻ���¼�����������ǿ��ѧϰ�ʹ���������\r\n7�����õ����õĹ�ͨ�������ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('715','77','�������ʦ','0','','','��λְ��\r\n1��������ϵͳ�����ʵ�֣���д����ע�ͺͿ����ĵ���\r\n2����������ϵͳ�Ĺ��ܶ���,������ƣ�\r\n3����������ĵ�������˵����ɴ����д�����ԣ����Ժ�ά����\r\n4�����������������������е����⣻\r\n5��Э�����Թ���ʦ�ƶ����Լƻ�����λ���ֵ����⣻\r\n6�������Ŀ��������������Ŀ�ꡣ\r\n\r\n��λҪ��\r\n1������������רҵ����ѧ�����ϣ�\r\n2��2����������������飻\r\n3����Ϥ�������˼�룬��ͨ��̣����Ժ���ؼ�����\r\n4����ϤӦ�÷������İ�װ�����ԡ����ü�ʹ�ã�\r\n5���߱����������ϵͳ������������Լ���ǿ���߼������Ͷ����������������\r\n6���������Ķ����ġ�Ӣ�ļ����ĵ��������ŶӾ���,���θк͹�ͨ������');
INSERT INTO `qs_category_jobs` VALUES ('714','76','����������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('713','76','��Ϸ���/����','0','','','��λְ��\r\n1��������Ϸ��ں;���ϸ�ڵĲ߻�����ƹ�����\r\n2�����������Ϸ�����ձ���Ч����\r\n3��������Ϸ�����ִ��⡢������Ƶȹ�����\r\n4������Э������Ա��ԭ�������Ա�����Ϸʵ�֣�\r\n5����������г����С���������ȣ������û�ʹ������������棻\r\n6������ָ��ʱ�����͹������񣬲��ල��ʱ��ɡ�\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ����1����Ϸ�߻��������飻\r\n2����ͨphotoshop�����ͱ༭����ͼ�أ�����ƽ����ƻ�����\r\n3����Ϥ��Ϸ���������̼��������ڣ���Ϥ��Ϸ�г�������ҵ��չ��������ʶ��\r\n4�������õ��߼�˼ά������������Ĵ���������������\r\n5�����������ֹ��ף��߱����õ�ְҵ�������ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('712','76','�ۺϲ���','0','','','��λְ��\r\n1����������ϵͳ�����滮����ƺʹ������ʩ��ͼֽ������������ʽ�㱨�����ٸ������罨����ȣ�������ֽ�������� \r\n2��������ͬ����ȥ��Կͻ��˽�ͻ���������ǰ����Ƶ���������˿ͶԲ��߷����Ҫ�� \r\n3���������û���ͨ,��ϸ�˽�����,�������Ƶ�ʩ���Ĺ������û����̿����ĵ����ơ��ύ��ȫ���̹���\r\n4�����ϵͳ����ʦ���ϵͳ������Ŀ���ڵ�ʵʩ������\r\n\r\n��λҪ��\r\n1. ��������רҵ����Ϥ��������������֪ʶ������CAD��ͼ��\r\n2. ��������ϵͳ���飨��Ҫ���ۺϲ��ߡ�ͨ�Ż����豸��װ/���ԡ����������ϵͳ������ϵͳ�ȣ���\r\n3. ��Ϥ������ҵ����ع淶�ͱ�׼�ȣ��߱���ǿ����Ŀ���Ŷӹ���Э��������\r\n4. �������飬������ǿ�����д��¾��񣬾������õ�ѧϰ��������������ͽ������������� \r\n5. �˼ʹ�ͨ����ǿ���������õ��Ŷ�Э������ \r\n6���ܹ�ִ�й�˾ҵ�����̼�����ʩ���淶��������ǿ��');
INSERT INTO `qs_category_jobs` VALUES ('711','76','������Ϣ��ȫ����ʦ','0','','','��λְ��\r\n1������˾��ȫ���յ��������ӹ̺���ƣ�\r\n2������˾��ȫ�¼��ķ�������Ӧ��\r\n3������˾��ȫ���ԵĶ��ƺ�Ӧ�ã�\r\n4������˾��ȫ֪ʶ���о��ͳ���\r\n5��Ϊ��˾�ṩ��Ӧ�İ�ȫ������ѵ��\r\n\r\n��λҪ��\r\n1���˽���Ϣ��ȫ��ϵ�Ͱ�ȫ��׼��BS7799��ISO27001��������Ϣ��ȫ��ϵ�Ͱ�ȫ���������н�ȫ�����ʶ��\r\n2����Ϥ����·����������ǽ�������������ؾ���������豸��ѡ�͡�����ά������ȫ������\r\n3������Windows��Linux�Ȳ���ϵͳ��ϵͳ��ȫ���Ժ�ʵʩ��\r\n4����Ϥ������簲ȫ��Ʒ����AD�򡢷���ǽ��IDS��IPS��������ϵͳ��©���������ߡ���ز�Ʒ�ȣ�\r\n5������ص���Ŀ���飬�������İ�ȫ��Ʒ�Ƚ���Ϥ���ܱ�д�������ĵ����˽���ֹ��������������');
INSERT INTO `qs_category_jobs` VALUES ('710','76','���繤��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('709','76','��վ�༭','0','','','��λְ��\r\n1��������վ�����Ŀ/Ƶ������Ϣ�Ѽ����༭����У�ȹ�����\r\n2�������Ϣ���ݵĲ߻����ճ�������ά����\r\n3����д��վ�������ϼ���ز�Ʒ���ϣ�\r\n4���ռ����о��ʹ���������ߵ�����ͷ�����Ϣ��\r\n5��������α༭��֯�߻��ƹ���������ִ�У�\r\n6��Э�����Ƶ����������Ŀ�ķ�չ�滮���ٽ���վ֪���ȵ���ߣ�\r\n7����ǿ���ڲ���ز��ź���֯�ⲿ�Ĺ�ͨ��Э����\r\n\r\n��λҪ��\r\n1���༭�����桢���š����ĵ����רҵ��ר������ѧ����\r\n2����ý��༭�����ҵ���������ȣ�\r\n3�������������õ���ҳ��������������������ߣ��˽���վ���������м�ά�������֪ʶ��\r\n4�����õ����ֹ��ף���ǿ����վר��߻�����Ϣ�ɱ�������\r\n5���ϸߵ�ְҵ��������ҵ�����ŶӾ������ڹ�ͨ��');
INSERT INTO `qs_category_jobs` VALUES ('708','76','��վ�߻�','0','','','��λְ��\r\n1������˾��վ�ĸ���������ݵĹ滮�����\r\n2������˾��վ���ݵı༭����̳���ճ�����\r\n3��������վ��Ϣ���ݵĸ��º�ά��\r\n4��������Ŀ���Ϻ���Ϣ���Ѽ�������\r\n5��������վ��Ϣ���ݵı༭����У����֤��Ϣ���ݵĽ���\r\n6������ѡȡ��׫д��ժ¼��ת�ظ���վ���������\r\n7��Э�����ܲ߻���վ��վ�㡢Ƶ��ҳ�漰ר����\r\n\r\n��λҪ��\r\n1�����Ƽ�����ѧ�������š����ġ��������רҵ\r\n2�����нϹ��֪ʶ�棬���õ����ֱ༭��д������\r\n3����Ϥ���Բ�������ϤPhotoshop��Dreamweaver��Frontpage���������\r\n4����ϤHTML����ʹ�ã���������֪ʶ������վ��ҵ�����������ý���ҵ����������\r\n5���������ϣ�ѧϰ�����ã�������ʶǿ���ܹ����ܹ���ѹ��������������ǿ�������ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('707','76','��վ�Ż�/SEO','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('706','76','it��Ŀ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('705','76','��Ʒ����/רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('704','76','��վ�ƹ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('703','76','��վ��Ӫ','0','','','��λְ��\r\n1��������վ����ơ����輰�ճ�ά������£�\r\n2������վϵͳ���ݿ�����ճ�����ͳ�����ݿ��������Ϣ��\r\n3������˾��վ��Ӫ����˾Ʒ����ҵ���ƹ㣻\r\n4�������������еİ�ȫ�ԡ��ɿ��Լ��ȶ��ԣ�\r\n5��ά����˾������������վ�����ӡ���̨����ֽ��ý��ĺ�����ϵ��\r\n6������˾��վ�����ӡ���潻������վ����ĺ����ƹ㹤����\r\n\r\n��λҪ��\r\n1����������רҵ����������ѧ����\r\n2����һ������Ŀ��վ���辭�飬�д�����վ�������������ȿ��ǣ�\r\n3������ʹ��photoshop��flash��dreamweaver�ȹ��ߣ���ϤASP��JAVA,SQL,HTML�ȿ������ԣ�\r\n4�����Զ��������վǰ��̨��������Ϥ������B2B��B2C��վ����Ӫ���ƹ�Ӫ����\r\n5�����õĹ�ͨ�������Ŷ�Э�����������������ġ�ѧϰ����ǿ��');
INSERT INTO `qs_category_jobs` VALUES ('702','76','�������Ա','0','','','��λְ��\r\n1�������ڲ���������ά����\r\n2������С�ͻ�����������·�������豸�����Լ�����ƽ̨�����м�غ�ά����\r\n3�����а칫�豸���ճ�ά����������������ά����\r\n4�����𲡶��Ĳ�ɱ��ά������ϵͳ��ȫ��\r\n5���������缰��������ϣ�\r\n6�������ڲ���Ϣϵͳ���衢ά����������������̨���ݡ��������\r\n\r\n��λҪ��\r\n1���������IT���רҵ����ѧ���ƣ�25������\r\n2��һ�������������������ܹ������飻\r\n3����Ϥ·������������������ǽ�������豸�����������\r\n4���˽����ϵͳ����ϤWEB��FTP��MAIL�������ļ��裻\r\n5��ѧϰ����ǿ���ϺõĹ�ͨ��Э����������ǿ��ִ�����͹�ͨ�������߱����õķ�����ʶ��');
INSERT INTO `qs_category_jobs` VALUES ('701','76','�������������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('700','76','�Ա�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('699','76','��ҳ���/����','0','','','��λְ��\r\n1������˾��վ����ơ��İ桢���£�\r\n2������˾��Ʒ�Ľ��������ơ��༭�������ȹ�����\r\n3���Թ�˾��������Ʒ����������ƣ�\r\n4������ͻ���ϵͳ�ڵĹ���ר�����ƣ�\r\n5�������뿪����Ա��������Ͻ��վ��ǰ̨ҳ����ƺͱ༭��\r\n6�����������������صĹ�����\r\n\r\n��λҪ��\r\n1��������ƽ��������רҵ��ר�Ƽ�����ѧ����\r\n2������������ҳ��Ƽ�ƽ����ƹ������飻\r\n3������ʵ���������ס����õĴ���˼ά������������ܼ�ʱ���տͻ�����\r\n4����ͨPhotoshop\\\\Dreamweaver\\\\Illustrator������������ͼƬ��Ⱦ���Ӿ�Ч���нϺ���ʶ��\r\n5���������˹�ͨ�����õ��ŶӺ�������͸߶ȵ����θУ��ܹ�����ѹ�����д��¾��񣬱�֤����������\r\n6��ӦƸʱ������ṩ������Ʒ��');
INSERT INTO `qs_category_jobs` VALUES ('698','75','���������Ӧ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('697','75','���Ի�ͼ','0','','','��λְ��\r\n1����������ƽ̨��ά����\r\n2����������ϵͳ���ϣ���������ϵͳ������\r\n3��ͳ������ϵͳ���������ݣ�\r\n4��Э����Ŀ���ܽ����Ŷӹ���\r\n\r\n��λҪ��\r\n1�����������ۻ�����\r\n2����ϤCisco������ص���Ӳ����\r\n3����ά������Cisco����ƽ̨���飻\r\n4��Ӣ����˵��д������\r\n5������Ը�����ڸ��༼����ѧϰ��ʵ������Cisco�������������֤�����ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('696','75','��ý�����','0','','','��λְ��\r\n1��������Ŀ��Ʒ��ͼ�ġ�����ý��Ĳ߻���ƹ�����\r\n2����������Ƭ��Ƭͷ��Ƭ�ж����Ĵ����������\r\n3������Ʒ������ѡ���������������\r\n4��ָ������ѵ��������������Ա����ơ�����������\r\n6�������ƶ�ƽ��Ͷ�����������ر�׼�����̹涨�����¹�����\r\n\r\n��λҪ��\r\n1���Ӿ�������ƻ�����������רҵ��ҵ����ר������ѧ����\r\n2����������ƽ�桢������ƾ��飬�ж�ý����ҵ��ҵ����Ϊ�ţ�\r\n3������ʹ����ض�ý����Ƽ����ڱ༭��������������ն����ű����ԣ�\r\n4����������ǿ�����⹹˼���ء�������ǿ���������õ��Ŷ�Э������\r\n5����ǿ�Ľ�����ƺͶ����Ʋ߻��������Ϻõ��ֻ��������˽�־�ͷ���Ʒ���\r\n7���߱������������̵Ĺ�ͨ����������');
INSERT INTO `qs_category_jobs` VALUES ('695','75','���Բ���Ա/����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('694','75','ϵͳ����Ա/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('684','52','��������','0','','','��λְ��\r\n1���������е��ճ�ҵ����������������ȹ�����\r\n2����������Ӫҵ��������û�ƺ��㣻\r\n3�����𿪾������ո�ƾ֤,��ʱ����,ƾ֤��������ȹ�����\r\n4��������˰�걨�����ƾ֤���ʲ��װ���ȹ�����\r\n5�����������ճ�ƾ֤���º�ල�������ܣ�\r\n6�����������ճ����񱨱�ı��ƺ͹��Լ�飻\r\n7����������Ӫҵ���ʽ������̨����ͺ��㣻\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�������񡢻�Ƶ����רҵ��\r\n2����Ϥ�й�˰���ɣ��걨��ҵ����˰��\r\n3����Ϥ�ʲ���ծ�������Ȳ��񱨱�ı��ƣ�\r\n4������2���������в����飬�л��֤�����ȣ�\r\n5����������OFFICE�Ȱ칫����Ͳ��������\r\n6�����к�ǿ�������ģ�����ϸ�ģ����档');
INSERT INTO `qs_category_jobs` VALUES ('683','52','���մ�����/������','0','','','��λְ��\r\n1���������е��ճ�ҵ����������������ȹ�����\r\n2����������Ӫҵ��������û�ƺ��㣻\r\n3�����𿪾������ո�ƾ֤,��ʱ����,ƾ֤��������ȹ�����\r\n4��������˰�걨�����ƾ֤���ʲ��װ���ȹ�����\r\n5�����������ճ�ƾ֤���º�ල�������ܣ�\r\n6�����������ճ����񱨱�ı��ƺ͹��Լ�飻\r\n7����������Ӫҵ���ʽ������̨����ͺ��㣻\r\n8����������Ӫҵ���ڿ��ƶȵ��ƶ��ͼ�鹤��\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�������񡢻�Ƶ����רҵ��\r\n2����Ϥ�й�˰���ɣ��걨��ҵ����˰��\r\n3����Ϥ�ʲ���ծ�������Ȳ��񱨱�ı��ƣ�\r\n4������2���������в����飬�л��֤�����ȣ�\r\n5����������OFFICE�Ȱ칫����Ͳ��������\r\n6�����к�ǿ�������ģ�����ϸ�ģ����档');
INSERT INTO `qs_category_jobs` VALUES ('682','52','���վ���/�з�/��ѵ','0','','','��λְ��\r\n1���������е��ճ�ҵ����������������ȹ�����\r\n2����������Ӫҵ��������û�ƺ��㣻\r\n3�����𿪾������ո�ƾ֤,��ʱ����,ƾ֤��������ȹ�����\r\n4��������˰�걨�����ƾ֤���ʲ��װ���ȹ�����\r\n5�����������ճ�ƾ֤���º�ල�������ܣ�\r\n6�����������ճ����񱨱�ı��ƺ͹��Լ�飻\r\n7����������Ӫҵ���ʽ������̨����ͺ��㣻\r\n8����������Ӫҵ���ڿ��ƶȵ��ƶ��ͼ�鹤����\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�������񡢻�Ƶ����רҵ��\r\n2����Ϥ�й�˰���ɣ��걨��ҵ����˰��\r\n3����Ϥ�ʲ���ծ�������Ȳ��񱨱�ı��ƣ�\r\n4������2���������в����飬�л��֤�����ȣ�\r\n5����������OFFICE�Ȱ칫����Ͳ��������\r\n6�����к�ǿ�������ģ�����ϸ�ģ����档');
INSERT INTO `qs_category_jobs` VALUES ('681','52','��������','0','','','��λְ��\r\n1���������е��ճ�ҵ����������������ȹ�����\r\n2����������Ӫҵ��������û�ƺ��㣻\r\n3�����𿪾������ո�ƾ֤,��ʱ����,ƾ֤��������ȹ�����\r\n4��������˰�걨�����ƾ֤���ʲ��װ���ȹ�����\r\n5�����������ճ�ƾ֤���º�ල�������ܣ�\r\n6�����������ճ����񱨱�ı��ƺ͹��Լ�飻\r\n7����������Ӫҵ���ʽ������̨����ͺ��㣻\r\n8����������Ӫҵ���ڿ��ƶȵ��ƶ��ͼ�鹤����\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�������񡢻�Ƶ����רҵ��\r\n2����Ϥ�й�˰���ɣ��걨��ҵ����˰��\r\n3����Ϥ�ʲ���ծ�������Ȳ��񱨱�ı��ƣ�\r\n4������2���������в����飬�л��֤�����ȣ�\r\n5����������OFFICE�Ȱ칫����Ͳ��������\r\n6�����к�ǿ�������ģ�����ϸ�ģ����档');
INSERT INTO `qs_category_jobs` VALUES ('680','52','�ͻ�����/���ڹ���','0','','','��λְ��\r\n1���������е��ճ�ҵ����������������ȹ�����\r\n2����������Ӫҵ��������û�ƺ��㣻\r\n3�����𿪾������ո�ƾ֤,��ʱ����,ƾ֤��������ȹ�����\r\n4��������˰�걨�����ƾ֤���ʲ��װ���ȹ�����\r\n5�����������ճ�ƾ֤���º�ල�������ܣ�\r\n6�����������ճ����񱨱�ı��ƺ͹��Լ�飻\r\n7����������Ӫҵ���ʽ������̨����ͺ��㣻\r\n8����������Ӫҵ���ڿ��ƶȵ��ƶ��ͼ�鹤����\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�������񡢻�Ƶ����רҵ��\r\n2����Ϥ�й�˰���ɣ��걨��ҵ����˰��\r\n3����Ϥ�ʲ���ծ�������Ȳ��񱨱�ı��ƣ�\r\n4������2���������в����飬�л��֤�����ȣ�\r\n5����������OFFICE�Ȱ칫����Ͳ��������\r\n6�����к�ǿ�������ģ�����ϸ�ģ����档');
INSERT INTO `qs_category_jobs` VALUES ('679','52','�˱�����','0','','','��λְ��\r\n1���������е��ճ�ҵ����������������ȹ�����\r\n2����������Ӫҵ��������û�ƺ��㣻\r\n3�����𿪾������ո�ƾ֤,��ʱ����,ƾ֤��������ȹ�����\r\n4��������˰�걨�����ƾ֤���ʲ��װ���ȹ�����\r\n5�����������ճ�ƾ֤���º�ල�������ܣ�\r\n6�����������ճ����񱨱�ı��ƺ͹��Լ�飻\r\n7����������Ӫҵ���ʽ������̨����ͺ��㣻\r\n8����������Ӫҵ���ڿ��ƶȵ��ƶ��ͼ�鹤����\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�������񡢻�Ƶ����רҵ��\r\n2����Ϥ�й�˰���ɣ��걨��ҵ����˰��\r\n3����Ϥ�ʲ���ծ�������Ȳ��񱨱�ı��ƣ�\r\n4������2���������в����飬�л��֤�����ȣ�\r\n5����������OFFICE�Ȱ칫����Ͳ��������\r\n6�����к�ǿ�������ģ�����ϸ�ģ����档');
INSERT INTO `qs_category_jobs` VALUES ('678','52','��ƹ���/����滮ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('677','52','����ҵ����/����','0','','','��λְ��\r\n1���������е��ճ�ҵ����������������ȹ�����\r\n2����������Ӫҵ��������û�ƺ��㣻\r\n3�����𿪾������ո�ƾ֤,��ʱ����,ƾ֤��������ȹ�����\r\n4��������˰�걨�����ƾ֤���ʲ��װ���ȹ�����\r\n5�����������ճ�ƾ֤���º�ල�������ܣ�\r\n6�����������ճ����񱨱�ı��ƺ͹��Լ�飻\r\n7����������Ӫҵ���ʽ������̨����ͺ��㣻\r\n8����������Ӫҵ���ڿ��ƶȵ��ƶ��ͼ�鹤����\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�������񡢻�Ƶ����רҵ��\r\n2����Ϥ�й�˰���ɣ��걨��ҵ����˰��\r\n3����Ϥ�ʲ���ծ�������Ȳ��񱨱�ı��ƣ�\r\n4������2���������в����飬�л��֤�����ȣ�\r\n5����������OFFICE�Ȱ칫����Ͳ��������\r\n6�����к�ǿ�������ģ�����ϸ�ģ����档');
INSERT INTO `qs_category_jobs` VALUES ('676','51','����֤ȯ/�ڻ�/Ͷ��/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('675','51','���п�/���������ƹ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('674','51','���й�Ա/���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('673','51','�ʲ�����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('672','51','�Ŵ�����/��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('671','51','���տ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('670','51','����/�䵱/����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('669','51','���ʾ���/רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('668','51','Ͷ������ҵ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('667','51','Ͷ��/������Ŀ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('666','51','Ͷ��/��ƹ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('648','22','��������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('647','22','�������ϱ�д/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('646','22','���Բ���Ա/����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('645','22','ͼ������/�ĵ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('644','22','����/����','0','','','��λְ��\r\n1����������ѧ������ҵ���������������������ϣ�\r\n2���̶��ʲ������顢�ʲ������ͬ�������д�����ҵ���Ͽ�ܾ��飻\r\n3����һ�������飻\r\n4����ǿ�������ĺ;�ҵ�������õ���֯Э����������ͨ��������ǿ�ķ������������������\r\n5������ʹ�ð칫����Ͱ칫�Զ����豸��\r\n\r\n��λҪ��\r\n1��1�������������ܹ������飻\r\n2����Ϥ�����������̣��칫��Ʒ�ɹ����̣���ҵ�ʲ�����\r\n3����ǿ�������ĺ;�ҵ�������õ���֯Э����������ͨ��������ǿ�ķ������������������\r\n4������ʹ�ð칫����Ͱ칫�Զ����豸��');
INSERT INTO `qs_category_jobs` VALUES ('643','22','ǰ̨/�Ӵ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('642','22','��������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('641','22','��Ա','0','','','��λְ��\r\n1������ã����ʼѣ�������20-30�꣬Ůʿ���ȣ�\r\n2��1��������ع������飬���ء�������������רҵ���ȿ��ǣ�\r\n3����Ϥ�칫����������֪ʶ���������̣��߱����������ź�д����������ǿ������Ϳ�ͷ���������\r\n4����Ϥ����д����ʽ����������OFFICE�Ȱ칫�����\r\n5��������ϸ���档\r\n\r\n��λҪ��\r\n1��Ůʿ���ȣ�����ã����ʼѣ�����18��24�꣬���1.65���ϣ�\r\n2����ר������ѧ����1����ع������飬���ء�������������רҵ���ȿ��ǣ�\r\n3����ǿ�ķ�����ʶ������ʹ�õ��԰칫�����\r\n4���߱����õ�Э����������ͨ���������������ģ��Ը���ÿ��ʣ������׺�����\r\n5����ͨ��׼ȷ������\r\n6���߱�һ����������֪ʶ��');
INSERT INTO `qs_category_jobs` VALUES ('640','22','�칫������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('639','22','����רԱ/����','0','','','��λְ��\r\n1����ݺ��޸ı��桢�ĸ�ȣ�\r\n2����ʱ׼ȷ�ĸ���Ա��ͨѶ¼������˾���硢���䣻\r\n3�������ճ��칫��Ʒ�ɹ������š��Ǽǹ����칫���豸����\r\n4��������ȱ�����־���շ��ճ�������־�������ʼ���\r\n5��Ա������ϵͳά��������ͳ�Ƽ������Ա����\r\n6����֤ǰ̨�������ʵĳ��㣨��ˮ��ֽ���豸���Ĳļ��������ݱ��ȣ������ý��㡣\r\n\r\n��λҪ��\r\n1�����ء�������������רҵ��ר����ѧ����\r\n2������������ع������飻\r\n3����Ϥ�칫����������֪ʶ���������̣���Ϥ����д����ʽ���߱����������ź�д����������������OFFICE�Ȱ칫�����\r\n4��������ϸ���桢������ǿ��Ϊ����ֱ���߱���ǿ������Ϳ�ͷ���������\r\n5������ã����ʼѣ�������20-30�꣬Ů�����ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('613','7','����ó��/�ɹ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('612','7','�ɹ�Ա','0','','','��λְ��\r\n1��ִ�вɹ������Ͳɹ���ͬ����ʵ����ɹ����̣�\r\n2������ɹ�����������ȷ�ϡ����ŷ��������ٵ������ڣ�\r\n3��ִ�в����Ƴɱ����ͼ����Ʒ�����\r\n4�����������󡢹���Ӧ�̣�ά�������ϵ��\r\n5����д�йزɹ�����ύ�ɹ��������ܽᱨ�棻\r\n6����ɲɹ����ܰ��ŵ�����������\r\n\r\n��λҪ��\r\n1����ר������ѧ����XX�����רҵ��\r\n2��xx��ҵ1��������ع������飻\r\n3����Ϥ�ɹ����̣����õĹ�ͨ������̸�������ͳɱ���ʶ��\r\n4������ϸ�����棬������ǿ��˼ά���ݣ����н�ǿ���ŶӺ�������Ӣ������ǿ�����ȿ��ǣ�\r\n5�������õ�ְҵ���º��������ܳ���һ������ѹ����');
INSERT INTO `qs_category_jobs` VALUES ('611','7','�ɹ�����/����','0','','','��λְ��\r\n1������˾�ɹ�������������ѯ�ۡ��ȼۡ�ǩ���ɹ���ͬ�����ա��������������ܹ�����\r\n2�����顢����������Ŀ���г���ȷ����Ҫ�Ͳɹ�ʱ����\r\n3�����ƹ�˾�ɹ��ƶȣ��ƶ����Ż��ɹ����̣����Ʋɹ�������ɱ���\r\n4����֯�Թ�Ӧ�̽�����������֤���������ˣ�\r\n5���ƶ����ŵĶ̡��С����ڹ����ƻ������Ʋ��ύ����Ԥ�㣻\r\n6������ɹ���Ա�ĸ�ǰ��ѵ���ڸ���ѵ������֯���ˣ�\r\n7��Э����˾�����ż乤����\r\n\r\n��λҪ��\r\n1����ѧ���Ƽ�����ѧ���������ࡢ���������רҵ��\r\n2��xx��ҵ3��������زɹ���ҵ���������飬��������ҵ�ɹ����������������ȣ�\r\n3����Ϥ�б�Ͳɹ����̣���Ϥ��Ӧ�����������ˣ���Ϥ���������ϵ��׼��\r\n4���߱����ò����ںͿ粿�ŵ���֯��Э�����������õ�̸�С��˼ʹ�ͨ�������Ŷ�Э������ǿ��\r\n5���߱���ǿְҵ�������ʡ�');
INSERT INTO `qs_category_jobs` VALUES ('610','7','��֤Ա','0','','','��λְ��\r\n1������ó�׿�֤����֤�����յ����Ƶ��ĳ���������������ȵ��ݽ����ȫ����ִ�к͸��٣�ȷ����֤�������������������ȷ�ԣ�\r\n2���������񺯵硢��ͬ�ķ�����鵵������\r\n3����ϵ��ͨ�ͻ�����ʱ�����ͻ����������\r\n4���ϼ������������ع�����\r\n\r\n��λҪ��\r\n1����ר������ѧ��������ó�ס�����Ӣ�������רҵ��\r\n2��2������ó�׵�֤������������顢��������ع������������ȿ��ǣ�\r\n3����Ϥ��ó��֤�������̣���Ϥ����֤�����֪ʶ����һ���������֪ʶ�����ȿ��ǣ�\r\n4��������Ӣ�Ŀ�ͷ�������＼�ɣ������������ð칫�����\r\n5����������ϸ�¡��Ͻ����н�ǿ�Ĺ�����������θС�');
INSERT INTO `qs_category_jobs` VALUES ('609','7','����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('608','7','����Ա','0','','','��λְ��\r\n1����������ڻ�Ʒ�ı��ء����鼰���ֵ�֤����˺����ƣ�\r\n2������Э������,�̼��빫˾�ڲ�������˵����磻\r\n3������������Ӧ�ļ���ʱ�ջأ�\r\n4��������װ��ʱ������װ���������ز����Ӧ������ί�б����мල���������·��䣻\r\n5����ɹ�����ر���\r\n\r\n��λҪ��\r\n1����ר������ѧ��������ó�ס����������רҵ��\r\n2��һ������������������飬������������������������ȿ��ǣ�\r\n3����Ϥ��ر������̣���Ϥ��Ӧ�Ĺ��ҷ��ɷ��棬���б���Ա�ʸ�֤�����ȿ��ǣ�\r\n4���߱�һ���Ĺ�ͨ���������������������һ��Ӣ��������\r\n5���Ը��ʡ�Ϊ����ֱ������ϸ�ĸ���');
INSERT INTO `qs_category_jobs` VALUES ('607','7','ҵ�����','0','','','��λְ��\r\n1��������ڶ����ĸ��١���֤���������Լ������������漰�ĸ������ݣ�\r\n2��Э�����������Լ������������˾֮������磻\r\n3���ͻ���ҵ����ϵ��ͨ��\r\n4����ϲ������ú��������ʹ�����\r\n5���������ͳ�ƺ�������ع�����\r\n\r\n��λҪ��\r\n1����ר������ѧ��������ó�ס�����Ӣ����������רҵ��\r\n2��2��������ó����������������飬������������������������ȿ��ǣ�\r\n3����Ϥ������ҵ������������̣���Ϥ�������䰲�ż����ע�����\r\n4�����õ�Ӣ����˵��д�����������ļ����Ӧ�ü��ɣ���ǿ�Ĺ�ͨ�����������������������ǿ��\r\n5����ʵ��ҵ����ǿ�ҵĿ�ѹ�Ժ������ģ��ŶӾ���ѡ�');
INSERT INTO `qs_category_jobs` VALUES ('606','7','����ó��רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('605','7','����ó��רԱ','0','','','��λְ��\r\n1��ִ�й�˾��ó��ҵ��ʵʩó�׹�̣������г���\r\n2��������ϵ�ͻ������Ʊ��ۡ���������̸�У�ǩ����ͬ��\r\n3�������������١��������ֳ���װ��\r\n4������֤��ˡ����ء����㡢�ۺ����ȹ�����\r\n5���ͻ�����չ��ά����\r\n6��ҵ��������ϵ�����͹鵵��\r\n7�����ҵ�����Ļ㱨��\r\n\r\n��λҪ��\r\n1����ר������ѧ��������ó�ס�����Ӣ�������רҵ��\r\n2��2������ó������ҵ��������飬�����������������ȿ��ǣ�\r\n3����Ϥó�ײ������̼���ط��ɷ��棬�߱�ó������רҵ֪ʶ��\r\n4�����нϸߵ�Ӣ��ˮƽ���Ϻõļ��������ˮƽ���б���֤�����ó�ײ���֤�������ȿ��ǣ�\r\n5���������õ�ҵ����չ����������̸�м��ɣ�������ʶǿ�����н�ǿ����ҵ�ġ��ŶӺ�������Ͷ����������������ڿ��غʹ��¡�');
INSERT INTO `qs_category_jobs` VALUES ('604','7','����ó�׾���/����','0','','','��λְ��\r\n1����֯����ó�ײ����ƶ����Ź����ƻ������Ԥ�㣬ȫ������ó�ײ����ճ���������\r\n2���ƶ����滮������ҵ�����̣��ռ���������ҵ��Ҫ��Ϣ���ݡ��������ع������г���\r\n3������ǩ������ó�׺�ͬ���ල��ִͬ�У���������������ˣ�\r\n4����Ҫ�ͻ��Ľ�Ǣ���硢��ϵά����\r\n5������ó�ײ���Ա�����������ˡ���ѵ�����͵ȹ�����\r\n\r\n��λҪ��\r\n1����ѧ���Ƽ�����ѧ��������ó�������רҵ��\r\n2��5�����Ͻ�����ҵ����������飬������������������������ȿ��ǣ�\r\n3����Ϥ������ҵ�����̣���Ϥ��ó�����ڷ������棬�߱�ó�׹���רҵ֪ʶ����ؼ��ܣ�\r\n4�����������Ӣ������˵������д��������Ϥʹ�ð칫�����\r\n5���߱��������֯�������������õĹ�ͨ��̸�м��ɣ����õĴ�����ʶ���ŶӺ���������������ʶ��������ǿ��');
INSERT INTO `qs_category_jobs` VALUES ('603','6','�����ͷ�/����֧��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('602','6','�ͻ���ѵʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('601','6','�ͻ���ϵ����','0','','','��λְ��\r\n1����غ�ά��CRMϵͳ��ָ��ҵ��Ա����������¼��͹���ͻ���Ϣ���ݣ�\r\n2������˽�ͻ�����ϸ�ֿͻ����ͣ����зּ���������������ھ�Ǳ�ڿͻ����ص�ͻ���\r\n3���������ۡ������ҵ�����������ݣ��ṩ��Ч���棻\r\n4���ල����Ա�ͻ������ж��������ʱ������������ܲ��ƶ�������\r\n\r\n��λҪ��\r\n1����ع�������2�����ϣ�\r\n2�����õĹ�ͨ�����Ա���������ж���������˼����������������\r\n3���ܳ��ܽ�ǿ�Ĺ���ѹ���������õ�ѧϰ������\r\n4����Ч���й�ͨ��Э������������֯����/Ӧ��������ǿ��\r\n5������Ӧ��Office�칫�����\r\n6��Ϊ����ֱ������̤ʵ�ڷܣ���CRM��ع������������ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('600','6','�ۺ���֧��','0','','','��λְ��\r\n1���˽�ͻ�����������Ϣ��������Ч���٣�������ǰ���ۺ�ָ���ͷ������� \r\n1���������ù�˾��Ʒ�����ͻ����ʲ���ʵ���⣻ \r\n3������ز��Ž�����ϣ�Э����ͨ��\r\n5��ά���ͻ���ϵ���������¿ͻ�\r\n\r\n��λҪ��\r\n1������1���������ۻ�ͷ��������飻\r\n2���߱��������ҵ��ʶ����ǿ��Ӧ����������ͷ����빵ͨ������\r\n3���н�ǿ���ƹ��ά��Э���ͻ�����������Ϥ�ͻ��������̣�\r\n4���߱���ǿ��ѧϰ�������ɿ�������רҵ֪ʶ����ʱ��չ������\r\n5����������office�����õ��ĵ�д��������\r\n6�������Ͻ����ƻ���ǿ�����ڷ���˼�����⣬�������ģ�');
INSERT INTO `qs_category_jobs` VALUES ('599','6','��ǰ����֧��','0','','','��λְ��\r\n1���˽�ͻ�����������Ϣ��������Ч���٣�������ǰ���ۺ�ָ���ͷ������� \r\n1���������ù�˾��Ʒ�����ͻ����ʲ���ʵ���⣻ \r\n3������ز��Ž�����ϣ�Э����ͨ��\r\n4��ά���ͻ���ϵ���������¿ͻ�\r\n\r\n��λҪ��\r\n1������1���������ۻ�ͷ��������飻\r\n2���߱��������ҵ��ʶ����ǿ��Ӧ����������ͷ����빵ͨ������\r\n3���н�ǿ���ƹ��ά��Э���ͻ�����������Ϥ�ͻ��������̣�\r\n4���߱���ǿ��ѧϰ�������ɿ�������רҵ֪ʶ����ʱ��չ������\r\n5����������office�����õ��ĵ�д��������\r\n6�������Ͻ����ƻ���ǿ�����ڷ���˼�����⣬�������ģ�\r\n7���ڷ�̤ʵ�����õķ�����ʶ���ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('598','6','�Ա��ͷ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('597','6','����ͷ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('596','6','�ͷ�רԱ','0','','','��λְ��\r\n1�����������绰�ͻ����ܹ���ʱ���ֿͻ����Ⲣ������ȷ������Ļظ���\r\n2����ͻ��������õ���ϵ����Ϥ���ھ�ͻ����󣬲��Կͻ�����ϵͳ��Ӧ����ѵ��\r\n3���߱��������⡢���Ž�չ���������̡���ͨ����������������ʶ������������޶ȵ���߿ͻ�����ȡ��������ܽ�������ⰴ�����ύ�����Ա�����ܴ��������ٽ�չֱ�������\r\n4���߱�һ����������������Թ�˾���еĿͻ�����Ӫ�����ÿͻ����ܸ�Ϊ�㷺�������Ʒ���ﵽ��õ�����Ӫ����Ч����\r\n5�����Ͻ��ܹ�˾�ĸ���ҵ��ͼ���������ѵ��\r\n\r\n��λҪ��\r\n1��ר��ѧ������һ���ͻ���������������۾��飬��һ���Ŀͻ�����֪ʶ������ ��\r\n2�����������������office�칫���ʹ����������һ��������֪ʶ����������ʹ��Photoshop����ͼ���������ȿ��ǡ�\r\n3��Ҫ��һ��Ҫ�С��ͻ�Ϊ�ȡ��ķ�����һ�дӰ����ͻ�������ͻ��Ƕȳ����� \r\n4���Ը�Ҫ����ȡ����̣�������������ͬ���ģ��ֹۡ���������ͨ����׼����������Ӧ������ \r\n5���Ȱ���������ҵ���ڿң�����˼�����������ҷ�չ������Ը��������ѧϰ���������ʵ��Ӱ������ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('595','6','�ͷ�����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('594','6','��������/�绰�ͷ�','0','','','��λְ��\r\n1�����ݹ�˾�ṩ�Ŀͻ��绰����ͻ��ƹ㹫˾�Ĳ�Ʒ���� \r\n2����������ͻ����ߣ�Ϊ�ͻ����⡢�ƹ��Ʒ��\r\n3��ͨ���绰����ͻ���Լ�ù�����\r\n4��Э����������Ŷӣ���������ҵ����\r\n\r\n��λҪ��\r\n1��������������ͨ����׼����ͨ��������ѣ�\r\n2�����������칫�Զ����豸��OFFICE�����\r\n3�����õ�ִ�������ŶӺ�������\r\n4����Ϥ�绰���ۻ�ͻ������ҵ��ģʽ���е绰���۾��������ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('593','5','�����г�/�߻�/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('592','5','����/���߻�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('591','5','ý�龭��/רԱ','0','','','��λְ��\r\n1���������硢��չ��ά��ý���ϵ������������ϵ������ý����Դ���Ϻ�ά����\r\n2����ý�������Ϣ������⣬�������γɼ�ⱨ�棬���紫������Ѽ���������Ŀ�����ȣ�\r\n3���߻���ִ����ý�������Ŀ���ƹ����Լ����������ִ�У�\r\n4�����о������ֹ��ش���������з��������ڳ��ߵ��б��棻\r\n5����Լý����Ա�μӸ������͵Ļ�ȡ�\r\n\r\n��λҪ��\r\n1����������ѧ�������ء����Ŵ���ѧ���г�Ӫ�������רҵ���ȣ�\r\n2���������Ϲ��ع�˾����ҵ�������飬�л�������ҵ��ҵ���������ȣ�\r\n3���ܹ�������֯���ŷ����ᡢר�ü��������ػ��\r\n4��ӵ�зḻ��ý����Դ���ܹ�����׫д���������ļ���\r\n5����������Ա���������ܹ��ڹ��ػ�н��и��ڸ�Ⱦ�����ݽ���\r\n6����ǿ�Ĺ۲�����Ӧ��������������˼ʽ�����Э����������ǿ�����������');
INSERT INTO `qs_category_jobs` VALUES ('590','5','������/רԱ','0','','','��λְ��\r\n1��������˺�����λ�Ļ�չ�ƻ���Э����չ��Ŀ��\r\n2������չ���г��ƹ���̵ľ������񣬲�Э����ɻ��֯�빵ͨЭ���ľ��幤����\r\n3��Э�����ܽ��л�������ƶ�������Э�����ϸ�����Դ��ȷ�Ϻ�ִ�л�������Իȫ���̽�����֯����\r\n4����չ�ṫ˾��������������ƶ��������ۡ�\r\n\r\n��λҪ��\r\n1����洫ý���г�Ӫ�������רҵר�Ƽ�����ѧ����\r\n2����������չ��չʾ��ع������飬�д���չ��ʵս�������������ȣ�\r\n3����Ϥ����չ����ִ�����̣�\r\n4������һ������Ŀ��������������Ͻ��ҵ����֪��\r\n5����������Ĺ�ͨ���ɺ��˼ʽ�����');
INSERT INTO `qs_category_jobs` VALUES ('589','5','����רԱ','0','','','��λְ��\r\n1�����𹫹ؿͻ��Ŀ�����ά����\r\n2������ֱ���쵼�İ��ţ����г���ͬ��Эͬ����������Ч���ʵ����������ͻ��ճ���������\r\n3������˾������Ҫ��ĽӴ������ع�����\r\n4������˾��Ʒ�Ľ��⼰���ܡ�\r\n\r\n��λҪ��\r\n1��1�����Ϲ�����ҵ���飬���Ŵ�����������ϵ�����ġ��г�Ӫ�������רҵר�Ƽ�����ѧ����\r\n2����ͨ����׼�����о�ֹ�󷽵��壻\r\n3������Ķ����������ѵĹ�ͨ��������ǿѧϰ������Э���������ŶӾ���\r\n4���ܳ��ܽϴ���ѹ������Ӧ�����ڼӰࡣ');
INSERT INTO `qs_category_jobs` VALUES ('588','5','���ؾ���/����','0','','','��λְ��\r\n1�������ƶ���ִ���г����ؼƻ�����Ϲ�˾��Ŀ�߻������Ŷ���ĸ���ػ��\r\n2�������ύ���ػ���沢���г���������ṩ���飻\r\n3����չ���ڹ�ϵ���飬����ʱ���������������ߣ�\r\n4���߻�������Ҫ�Ĺ���ר����Э�����������Ĺ�ϵ��\r\n5�������ƶ���ʵʩ��˾���Ŵ����ƻ���ʵʩ���������ļල��Ч��������\r\n6���ṩ�г����ؼ����������ˡ�չ�ᡢ�ֳ���ȷ���Ĺ���֧�֣�Э���Ӵ���˾������\r\n7��������ά��������ϵ���ݿ⡢�����ĵ���\r\n\r\n��λҪ��\r\n1��ר������ѧ�������ء����Ŵ���ѧ���г�Ӫ�������רҵ���ȣ�\r\n2����Ϥ_____��ҵ���������ϴ�������ҵ���ء��г���������򹫹ع�˾�������飻\r\n3������ҵ�Ļ��������봫���͹�����ϵ�Ľ�����ά���н�Ϊ��̵���⣻\r\n4�����га���䡢���ŷ�������ش��Ĺ������飻\r\n5�����õ����ֹ��ף����н�ǿ����֯������Э����������Դ��������\r\n6��˼ά���ݡ����ڹ�ͨ���׺���ǿ���������ʼѣ�������');
INSERT INTO `qs_category_jobs` VALUES ('587','5','��������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('586','5','�г�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('585','5','��߻�/ִ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('584','5','Ʒ�ƾ���/רԱ','0','','','��λְ��\r\n1��Э��Ʒ������ʵʩ��ҵ��Ʒ���ƹ�ƻ���\r\n2��������ά����ҵ��������ϵ����������Ͳ߻����\r\n3�����в�Ʒ�г��ƹ�Ĳ߻���ʵʩ,�����ƹ�Ч�����и��٣�\r\n4�����ڷ����г����,�������Ч�ƹ�Ľ��顣\r\n\r\n��λҪ��\r\n1���г�Ӫ���������ࡢ���������רҵר������ѧ����\r\n2������_______��ҵ�Ĵ�ҵ��������Ʒ��רԱ�������������ȣ�\r\n3���нϺõ��ۺ����ʼ��Ļ�������\r\n4����ʵ�ڷܣ������õĹ�ͨ��Э����������ǿ��ִ��������\r\n5�������׺�������ҵ�����ŶӺ�������\r\n6����������OFFICE�����');
INSERT INTO `qs_category_jobs` VALUES ('583','5','�г�����/ҵ�����','0','','','��λְ��\r\n1��Э�������ƶ��г���չ�ƻ����������ר����е���֯��ִ�У�\r\n2����������ڸ��������л����Ĺ�ͨ��������ԭʼ���ݺ;����Ҫ���������������档\r\n3����ϸ���������γ��ŵ�����������ĵ���������Ӧ�ܽ���������γɾ�����ۣ�\r\n4�������г�����������Ϣ��Ӧ�̵�ͳһ�������������\r\n5��������ͳ�Ʒ�������ȱ���\r\n6���ռ��������ֻ��Ʒ�ĸ�����Ϣ������ԡ�����ƹ����ϵȣ���������г����С�\r\n\r\n��λҪ��\r\n1���г�Ӫ������������רҵ��������ѧ����\r\n2������_______��ҵ�Ĵ�ҵ��������רҵ�����г����й����������Ͼ��������ȣ�\r\n3����Ϥ��Ʒ�ṹ�������Ʒ�������������з�ɢ��˼ά�ʹ�����ʶ��\r\n4������˼�����߱����õ�Ӧ����������ͨЭ��������������֯������\r\n5����������Ķ�������һ���ķ����ж�������\r\n6�������������Ը��ʣ��ܹ�������Ϊ�㷺����ҵ��������ϵ��');
INSERT INTO `qs_category_jobs` VALUES ('582','5','�г���չ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('581','5','�г��߻�����/רԱ','0','','','��λְ��\r\n1��������ҵ�鱨���ռ�����Ϣƽ̨�Ĺ滮���о��г��ĺ�۷������Ϣ�������г���̬������Ʒ�ƶ��򡢲�Ʒ���г���Ϣ��\r\n2�������ƶ��ꡢ�����¶��г��ƹ㷽����������ִ�У�\r\n3��������ɹ��߻�������Ʒ���ƹ㷽����������Ʊ����׫д��\r\n4��Э����˾�ڲ�������ʵʩ�������Ʒ�ơ���Ʒ�ƹ��Ч������������Ľ�������\r\n\r\n��λҪ��\r\n1���г�Ӫ������������רҵר������ѧ����\r\n2������_______��ҵ�Ĵ�ҵ���������г��߻��������飻\r\n3��������İ����ף��н�ǿ�Ĵ�����˼ά���������������õĹ�ͨ������\r\n4���˽��г���̬�������г��仯��ʱ�߻��ƶ���������������߻����ڵĴ������\r\n5����һ������֯ʵʩ���飬�ල��ָ������ʵ�������ִ�У��гɹ��Ĳ߻����������ȣ�\r\n6�����ۺ����ð������߻����������������ػ�����ڵĸ���Ӫ����ʽ�����г�������Ʒ���ƹ��������\r\n7�����������칫�����');
INSERT INTO `qs_category_jobs` VALUES ('580','5','�г�Ӫ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('579','5','�г�רԱ/����','0','','','��λְ��\r\n1��Э��������֯չ���г������������۽�����ϣ�ִ����ز�Ʒ���г�Ӫ����ƻ�����������Ӧ�ķ����뷴����\r\n2�����г��������ָ���£������Ʒ�ն˳��С�չʾģʽ����������ѵ��ָ����\r\n3�������Ʒ���ʹ����ƻ���ִ�С����ٺͷ�����������Ʒʹ�õ�ִ�кͼල��\r\n4���˽⡢�����������г����������Э���������������Ʒ��ͻ���¼���\r\n5��Э��չ���г����顢�����г���Ը��֯����������������г���ְ�������Э����ִ�к͹���\r\n6�������Ҫ�г����Ͷ����������׼�����ṩ��ҵ�г����ݵĴ���������\r\n7��Э��������������г��ƻ���\r\n\r\n��λҪ��\r\n1����ѧ��������ѧ�����г�Ӫ���������������������רҵ���ȣ�\r\n2����Ϥ_______��ҵ��һ��������ع������飬���в�Ʒ�г�רԱ��ҵ���������ȣ�\r\n3���߱���ǿ����Ӣ���ֱ���������ĵ���֯��д������\r\n4������ʹ��MS Office�����д��Ʒ�ĵ�����Ʒ��ʾ�ĸ�ͽ������ݷ�����\r\n5�����н�ǿ�Ĺ滮�����������ʹ�����ʶ���Բ�Ʒ��������Ӫ���� , ˼ά������������\r\n6�����õĹ�ͨ��Э���������������ǿ��ͻ����ִ��������\r\n7�����õ�ְҵ���ʺ;�ҵ����');
INSERT INTO `qs_category_jobs` VALUES ('578','5','�г�����/����','0','','','��λְ��\r\n1��������й�˾�г�ս�Թ滮���ƶ���˾���г����幤���ƻ�������г��ƹ㡢Ʒ�ơ����ء���ȷ���ľ��巽���ʵʩ������\r\n2����֯�ͼලʵʩ����г��ƹ�ƻ���\r\n3�������г�������������о�ͬ�С�ҵ�緢չ״�������ڽ����г�Ԥ�⼰�鱨������Ϊ��˾�����ṩ���ݣ�\r\n4���ƶ���˾���幫�ز��Լ�Σ�����ص�Ӧ�Դ���\r\n5�����������г������������Լ��ƶȹ淶��\r\n6���ƶ��г��ƹ����Ԥ�㼰�г���ȫ���������Ԥ���ƶ��������Լ����Ƽ��������ƶȣ�\r\n7�������г��Ŷӣ������Ŷӳ�Ա����ز��Ž����г���ѵ��ָ����\r\n\r\n��λҪ��\r\n1���г�Ӫ������������רҵ��������ѧ����\r\n2�������г�Ӫ���������飬�������ҵ��ְ�г��ܼ��������ϣ������г��߻���ҵ�Ĵ�ҵ�������Ը�����չ�������⣻\r\n3���߱���ǿ�Ĳ߻���������Ϥ����ý��������ʽ���д����г���ƹ�ɹ����飻\r\n4���������е���ҵ���г���ʶ���������⼰�����������ǿ�������������Դ����������ҵ���ƽ�������\r\n5���߱����õĹ�ͨ�������ɼ��ḻ���Ŷӽ��辭�顣');
INSERT INTO `qs_category_jobs` VALUES ('577','5','�г��ܼ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('576','4','������������������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('575','4','�г�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('574','4','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('573','4','�������','0','','','��λְ��\r\n1����������ͻ����ϣ�\r\n2�����ܿͻ��������������۶������������Խӣ�\r\n3���������繵ͨ�ͻ���\r\n4��Э���������Ʋ��Ź����ƶȺͲ���������淶���������۵ĺ�̨֧�֣�\r\n\r\n��λҪ��\r\n1����ר������ѧ��������ó�ס�����Ӣ����רҵ��\r\n2��1����������������������飻\r\n3���������ƹ㡢�߻�����ľ��飻\r\n4��Ӣ�Ｐ�����������������һ������֪ʶ�����ȿ��ǣ�');
INSERT INTO `qs_category_jobs` VALUES ('572','4','����רԱ/����','0','','','��λְ��\r\n1����������ͻ����ϣ�\r\n2�����ܿͻ��������������۶������������Խӣ�\r\n3���������繵ͨ�ͻ���\r\n4��Э���������Ʋ��Ź����ƶȺͲ���������淶���������۵ĺ�̨֧�֣�\r\n6����ص�����Э�顢��ͬ�ȴ浵����\r\n\r\n��λҪ��\r\n1����ר������ѧ��������ó�ס�����Ӣ����רҵ��\r\n2��1����������������������飻\r\n3���������ƹ㡢�߻�����ľ��飻\r\n4��Ӣ�Ｐ�����������������һ������֪ʶ�����ȿ��ǣ�\r\n6�����õ����Ա�Ｐ��ǿ�Ĺ�ͨ��������������ϸ�£�������ȡ������ѧϰ�봴�¡�');
INSERT INTO `qs_category_jobs` VALUES ('571','4','������/����','0','','','��λְ��\r\n1����������ͻ����ϣ�\r\n2�����ܿͻ��������������۶������������Խӣ�\r\n3���������繵ͨ�ͻ���\r\n4��Э���������Ʋ��Ź����ƶȺͲ���������淶���������۵ĺ�̨֧�֣�\r\n5����ص�����Э�顢��ͬ�ȴ浵����\r\n\r\n��λҪ��\r\n1����ר������ѧ��������ó�ס�����Ӣ����רҵ��\r\n2��1����������������������飻\r\n3���������ƹ㡢�߻�����ľ��飻\r\n4��Ӣ�Ｐ�����������������һ������֪ʶ�����ȿ��ǣ�\r\n5�����õ����Ա�Ｐ��ǿ�Ĺ�ͨ��������������ϸ�£�������ȡ������ѧϰ�봴�¡�');
INSERT INTO `qs_category_jobs` VALUES ('570','4','����������Ա','0','','','��λְ��\r\n1������˾���ۺ�ͬ���ļ����ϵĹ������ࡢ���������ͱ��ܣ�\r\n2�������������ָ����¶ȡ����ȡ����ͳ�Ʊ���ͱ������������д������ʱ�㱨���۶�̬��\r\n3�������ռ������������г����飬����������棻\r\n4��Э�����۾������õ绰���ù�������������Աȱϯʱ��ʱת��ͻ���Ϣ�����ƴ���\r\n5��Э�����۾������ò������񡢸����ڲ�����ļ�¼�ȹ�����\r\n\r\n��λҪ��\r\n1��ר������ѧ�����������ʼѣ�\r\n2�����¹����������ͳ���๤�������ȿ��ǣ�\r\n3���������桢ϸ�ġ�����\r\n4������ʹ��office�Ȱ칫�����\r\n5�����з�����ʶ������Ӧ�ϴ�Ĺ���ѹ����\r\n6�����������н�ǿ�Ĺ�ͨЭ��������');
INSERT INTO `qs_category_jobs` VALUES ('569','4','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('568','4','������������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('567','3','����������Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('566','3','����Ա/����Ա','0','','','��λְ��\r\n1�����ݹ�˾������滮��Э�������ƶ���ȴ����ƻ�����������Ԥ�㣻\r\n2������˾�Ĳ�Ʒ�ƹ㣬�����ۺ���񣬽������õĿͻ���ϵ��\r\n3����ʱ������ɴ����������ͳ�Ʊ���\r\n4��������Ʒ����Ʒ����ơ����������Ź���\r\n5����Ʒ��Ϣ���ռ��뷴����\r\n6�����մ����ƻ�ʵʩ������\r\n��λҪ��\r\n1���г�Ӫ���������ࡢ���������רҵר������ѧ����\r\n2����һ���г��߻���������ͨЭ��������\r\n3���нϺõ��ۺ����ʼ��Ļ���������ҵ�����ŶӺ�������\r\n4�������׺�������ǿ��ִ��������\r\n5����������OFFICE�����');
INSERT INTO `qs_category_jobs` VALUES ('565','3','���մ�����/������','0','','','��λְ��\r\n1��������¿ͻ�Ͷ����ƹ滮�ͱ��ղ�Ʒ���ۣ�\r\n2�����������֯�ķ�չ��ѵ������������\r\n3������Э�������ͻ��ı��ռ�����״����\r\n4�������ڽ���ҵ����ѵ��\r\n5�����𸨵����˵����ۡ���ѵ����������\r\n6������Ϊ�α��ͻ��ṩ�����۱��յ�һ�з���\r\n\r\n��λҪ��\r\n1����ר������ѧ����������25-45���꣬��Ů���ޣ�\r\n2�����վ��á����ڡ������רҵ֪ʶ��\r\n3����Ϥ���ղ�Ʒ�ر���ص�רҵ֪ʶ��\r\n4�����н�ǿ�Ĺ�ͨ����֯Э���������׺�����\r\n5���������õ����Ա�������������ж�������\r\n6���л�����ȡ�ľ��񼰽�����ս���Ը�\r\n7���������õ������ġ���һ�����Ŷ�Э������');
INSERT INTO `qs_category_jobs` VALUES ('564','3','���ز�����/��ҵ����','0','','','��λְ��\r\n1�� ����ͻ��ĽӴ�����ѯ������Ϊ�ͻ��ṩרҵ�ķ��ز���ҵ��ѯ����\r\n2�� ��ͬ�ͻ��������ٳɶ��ַ�����������ҵ��\r\n3�� ����˾��Դ��������ۣ�����ҵ���������õ�ҵ��Э����ϵ��\r\n\r\n��λҪ��\r\n1��������20��30���꣬��ר����ѧ����\r\n2����ʵ���ţ��Կ����ͣ��������õ��ŶӾ���\r\n3���ܳ��ܽ�ǿ�Ĺ���ѹ����Ը����ս��н��\r\n4����ͨ��������');
INSERT INTO `qs_category_jobs` VALUES ('563','3','��������/������','0','','','��λְ��\r\n1�������������۷���ͽ���ͻ���ѯ����\r\n2��������������͵��������ϼ��ͻ�������\r\n3�������ز�Ʒ�������г�����ɸ�������ָ�ꣻ\r\n4�������ھ�ͻ�����ʵ�ֲ�Ʒ���ۣ�\r\n5��������ǰҵ��������ۺ�ͻ�άϵ������\r\n\r\n��λҪ��\r\n1����ר������ѧ�����м�ʻ֤����ʻ����������ã����ʼѣ�\r\n2��������ǿ������̬�Ȼ������Ȱ��������۹�����\r\n3���н�ǿ����ҵ�ģ����������ս��\r\n4�����õĹ�ͨ�ͱ��������Ӧ�������ͽ��������������������ʼѣ�\r\n5�����õ��Ŷ�Э������Ϳͻ�������ʶ��\r\n6�������۾�����г�Ӫ��רҵ���ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('562','3','ҽ����е����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('561','3','ҽҩ����','0','','','��λְ��\r\n1����Ͻ����ҽԺ���й�˾��Ʒ���ƹ����ۣ������������\r\n2��������Ҫ�ݷ�ҽ����Ա����ͻ��ƹ��Ʒ��������߲�Ʒ�г��ݶ\r\n3������Ǳ�ڵ�ҽԺ�����ͻ������Լ��еĿͻ�����ά����\r\n4������˽��г�״̬����ʱ���ϼ����ܷ�ӳ�������ֵ�������г���̬������������飻\r\n5���ƶ���ʵʩϽ��ҽԺ�������ƻ�����֯ҽԺ�ڸ����ƹ���\r\n6��������˾���������� �Թ�˾��ҵ�����������ܡ�\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ����ҽҩ��Ӫ�������רҵ��\r\n2��2���������۹������飬��ҽ�����ġ��Ĳġ�ҩƷ���۾��������ȣ�\r\n3����ҽԺ���۾��飬��ϤҽԺ�������̣�ӵ�����õ�ҽԺ��Դ�������������Ȱ�ҩƷ���۷�������\r\n4�����н�ǿ�Ķ��������������罻���ɣ��ϺõĹ�ͨ������Э���������ŶӺ���������\r\n5�����彡�������ж��������ͽ�������������');
INSERT INTO `qs_category_jobs` VALUES ('560','3','��������','0','','','��λְ��\r\n1������������й�˾��Ʒ�����ۼ��ƹ㣻\r\n2������˾����ó��ƽ̨�Ĳ�������Ͳ�Ʒ��Ϣ�ķ�����\r\n3���˽���Ѽ������ϸ�ͬ�м�������Ʒ�Ķ�̬��Ϣ��\r\n4��ͨ�������������������ҵ����չ��\r\n5����ʱ�����������\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�����г�Ӫ�������רҵ��\r\n2��2�������������۹������飬���������������������ȣ�\r\n3����ͨ�����������ۼ��ɣ������Ͽ������ع������飬��Ϥ�����Ż���վ����������վ��\r\n4����Ϥ�������磬����ʹ�����罻�����ߺ͸��ְ칫�����\r\n5���н�ǿ�Ĺ�ͨ������');
INSERT INTO `qs_category_jobs` VALUES ('559','3','����רԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('558','3','�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('557','3','�ͻ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('556','3','�绰����','0','','','��λְ��\r\n1�������Ѽ��¿ͻ������ϲ����й�ͨ�������¿ͻ���\r\n2��ͨ���绰��ͻ�������Ч��ͨ�˽�ͻ�����, Ѱ�����ۻ��Ტ�������ҵ����\r\n3��ά���Ͽͻ���ҵ���ھ�ͻ������Ǳ����\r\n4������������ͻ����й�ͨ���������õĳ��ں�����ϵ��\r\n\r\n��λҪ��\r\n1��20-30�꣬�ڳ���������ͨ���������������и�Ⱦ����\r\n2�������۹����нϸߵ����飻\r\n3���߱���ǿ��ѧϰ����������Ĺ�ͨ������\r\n4���Ը���ͣ�˼ά���ݣ��߱����õ�Ӧ�������ͳ�ѹ������\r\n5����������г�����������ǿ�ҵ���ҵ�ġ������ĺͻ����Ĺ���̬�ȣ�����ص绰���۹������������ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('555','3','���۹���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('553','2','�������۹���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('552','2','�Ź�����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('551','2','��ͻ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('550','2','ҵ����չ(BD)����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('549','2','��������/����','0','','','��λְ��\r\n1�������������������̵����硢������ɸѡ����̭�͸��¹�����\r\n2����ҵ�ƹ�������չ���Ʒ�����\r\n3��ִ�������̵���ѵ����ǰЭ�����ۺ�ͻ�����ͼ���֧�֣�\r\n4����������������ųɱ������Ϳ��Ʒ�����\r\n5������쵼�������������\r\n6����Ӧ���ڳ��\r\n\r\n��λҪ��\r\n1�������������ۺ��г����飬�߱�����������������г�����������\r\n2����ǿ�ҵ���ҵ�ĺ����θУ��߱����õ��˼ʽ������������������̸��������\r\n3���Թ����м��顢ִ�š���ҵ, ˼ά��������Ծ��\r\n4���Ϻõ�̸�£�����ã����ʼѣ�\r\n5���������õ��Ŷ�Э���������õ�Э������ͨ�Ͱ���ȫ�ֵ�������\r\n6��˼ά���񣬼������¾��񣬻�����Ӧ����ǿ����ѹ������ǿ��');
INSERT INTO `qs_category_jobs` VALUES ('548','2','�������۾���/����','0','','','��λְ��\r\n1�������Ͻ����Ĳ�Ʒ��������������Ʒ�������ڵ�ռ�ȣ�\r\n2��������Ͻ�������г��Ŀ��ء��ͻ��Ŀ���������Ĳ��ּ��¿ͻ�ǰ�ڽ���̸�й�����\r\n3��������Ͻ�����������ĳ����滮���ã����������ά����\r\n4��������Ͻ�����ڵĲ�Ʒ�ߵ��趨����Ʒ���ۼۡ���۵��ƶ�������۸���ϵ��ά����\r\n5��������Ͻ�����ڿͻ������������������ʱ�����ͻ�����ƻ�����������״����\r\n6���������������������ƶ�\r\n7������Ԥ�㡢ȷ�������ͻ��ĸ�����ã���ʱ���ˡ��߿\r\n8��������Ͻ�����ھ�Ʒ��̬���ڼ��մ�����ƻ������ƶ�����Ӧ���ԡ�\r\n\r\n��λҪ��\r\n1�����Ƽ�����ѧ�����г�Ӫ���򾭼á����������רҵ���ȣ�\r\n2������1�����ϼҵ�����Ʒ��ҵ�����۹����������ȣ��Լҵ���ҵ�����������г������н�ǿ������ȼѣ�\r\n3���Կ����ͣ��н�ǿ�Ĺ��������ĺ��Ŷ�Э������\r\n4��Office�칫�������������������PPT�㱨����������Excel��������\r\n5�����������߿��ʵ��ſ�Ҫ��');
INSERT INTO `qs_category_jobs` VALUES ('547','2','�ͻ�����/����','0','','','��λְ��\r\n1�������г����к����������\r\n2������������۵�Ԥ�⣬Ŀ����ƶ����ֽ⣻\r\n3��ȷ�����۲���Ŀ����ϵ��������\r\n4���ƶ����ۼƻ�������Ԥ�㣻\r\n5���������������Ϳͻ��Ĺ���\r\n6���齨���۶��飬��ѵ������Ա��\r\n7����������ҵ�������������Ŷӡ�\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�����г�Ӫ�������רҵ��\r\n2��2������������ҵ�������飬�����۹��������������ȣ�\r\n3�����зḻ�Ŀͻ���Դ�Ϳͻ���ϵ��ҵ�����㣻\r\n4���߱���ǿ���г�������Ӫ�����ƹ����������õ��˼ʹ�ͨ��Э�������������ͽ�������������\r\n5���н�ǿ����ҵ�ģ��߱�һ�����쵼������');
INSERT INTO `qs_category_jobs` VALUES ('542','2','�����ܼ�','0','','','��λְ��\r\n1��Э���ܾ����ƶ���˾�ķ�չս�ԣ�����ս�ԣ��ƶ�����֯ʵʩ���������ۼƻ����쵼�Ŷӽ��ƻ�ת��Ϊ���۽����\r\n2������������ҵҵ����ͻ���ͬ��ҵ�䣨������ҵ���������õĺ�����ϵ��\r\n3���ƶ�ȫ�����۷���Ԥ�㣬�����Ϳ����г����۹����ķ���ͽ��ȣ�\r\n4���ֽ���������ָ�꣬�ƶ����Ρ��������۰취���ƶ�������������Ӫ���ߣ�\r\n5������������ҵ�ͻ����ݿ⣬�˽ⲻͬ��ģ�û�����״���������\r\n6����֯���ſ������������ֶΣ�������ۼƻ����ؿ�����\r\n7�������Ŷӽ��裬�������������䡢��չ���������۶���\r\n8�����ֹ�˾�ش�Ӫ����ͬ��̸����ǩ��������\r\n9�����пͻ��������ھ��û����󣬿����µĿͻ����µ��г�����\r\n��λҪ��\r\n1��28��40�꣬��ר����ѧ���������õ�ְҵ���أ�Ʒ�����㣬�ۺ����ʸߣ�\r\n2���������������г�Ӫ������������飻\r\n3����������ǿ���������ǿ��\r\n4�����н�ǿ���г����������ۼ��ܣ�\r\n5���߱�����Ĺ�ͨ�������ŶӺ��������齨����ѵ�ŶӾ���ḻ����������ҵ�����ã�\r\n6���߱���ǿ��ʱ����������͹�������������\r\n7���кܺõ�������ҵ�˼���Դ��');
INSERT INTO `qs_category_jobs` VALUES ('543','2','���۾���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('554','3','ҵ��Ա/���۴���','0','','','��λְ��\r\n1������˾��Ʒ�����ۼ��ƹ㣻\r\n2�������г�Ӫ���ƻ�����ɲ�������ָ�ꣻ\r\n3���������г�,��չ�¿ͻ�,���Ӳ�Ʒ���۷�Χ��\r\n4������Ͻ���г���Ϣ���ռ����������ֵķ�����\r\n5�������������������ۻ�Ĳ߻���ִ�У������������\r\n6������ά���ͻ���ϵ�Լ��ͻ���ĳ���ս�Ժ����ƻ���\r\n\r\n��λҪ��\r\n1������˾��Ʒ�����ۼ��ƹ㣻\r\n2�������г�Ӫ���ƻ�����ɲ�������ָ�ꣻ\r\n3���������г�,��չ�¿ͻ�,���Ӳ�Ʒ���۷�Χ��\r\n4������Ͻ���г���Ϣ���ռ����������ֵķ�����\r\n5�������������������ۻ�Ĳ߻���ִ�У������������\r\n6������ά���ͻ���ϵ�Լ��ͻ���ĳ���ս�Ժ����ƻ���');
INSERT INTO `qs_category_jobs` VALUES ('545','2','��������','0','','','��λְ��\r\n1�������г����к����������\r\n2������������۵�Ԥ�⣬Ŀ����ƶ����ֽ⣻\r\n3��ȷ�����۲���Ŀ����ϵ��������\r\n4���ƶ����ۼƻ�������Ԥ�㣻\r\n5���������������Ϳͻ��Ĺ���\r\n6���齨���۶��飬��ѵ������Ա��\r\n7����������ҵ�������������Ŷӡ�\r\n\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ�����г�Ӫ�������רҵ��\r\n2��2������������ҵ�������飬�����۹��������������ȣ�\r\n3�����зḻ�Ŀͻ���Դ�Ϳͻ���ϵ��ҵ�����㣻\r\n4���߱���ǿ���г�������Ӫ�����ƹ����������õ��˼ʹ�ͨ��Э�������������ͽ�������������\r\n5���н�ǿ����ҵ�ģ��߱�һ�����쵼����');
INSERT INTO `qs_category_jobs` VALUES ('774','98','���ز����۾���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('775','98','���ز��н�/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('776','98','���ز�����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('777','98','���ز����׹���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('778','98','���ز���Ŀ��Ͷ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('779','98','�������ز�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('780','99','��ҵ������/����','0','','','��λְ��\r\n1���ܱ�д��ҵ��Ŀ�Ĺ���ָ���飬�Լ���Ŀ�ķ���ƻ���������Ŀ��Ԥ�㣻\r\n2��ȫ�渺����ҵ��Ŀ����Ա�������������Ʒ����͸����ֳ�����\r\n3���ܼ�ʱ������Ŵ��﹫˾���������ľ��񼰰䲼���ƶȣ������ϸ�ִ�У�\r\n4����ʵ��Ա������ҵ��¥������ճ�ά�ޡ���ɨ���ࡢ�̻�����������������������������������������ֹΥ��װ�޺�Υ�´�Ⱦ�������������\r\n5�����ݹ�˾����ҵ��Ŀҵί���Ҫ�����֡���顢ǩ������ĸ���ú�ͬ��\r\n6���������ݡ�������ʩ��ά�ޡ������ƻ���ҵ��/�⻧װ�����룬��֯ά����Ա��ʱ������ɸ������񣬲���鶽��ҵ��/�⻧���涨����װ�ޣ�\r\n7����ҵ��/�⻧֮������ҵʹ���з������������Э����\r\n8��������ҵί�ᱨ����ҵά�ޡ����·��õ���֧��Ŀ��������ˣ�\r\n9�����ֵܽ��ͷ��ز������ŵ�ָ���ͼල���������������������\r\n\r\n��λҪ��\r\n1�����彡��������ѣ�����30��45�꣬��Ů�Կɣ�\r\n2����ר����ѧ������ҵ����רҵ���ѣ�\r\n3���������ϸߵ�סլ��ҵ��5��Ԫ/ƽ�����г��ۼۣ�������������ͨ��ҵ���������ľ������ݡ���׼������\r\n4����ȫ����ҵ�������ʸ�֤�����ҵ����ʦ֤�飻\r\n5���Ϻ��л��������Ϻ������������졢���ڻ����ҵ������\r\n6��Ӣ�����������ȣ�\r\n7���������ҵ��ҵ�����ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('781','99','��ҵ����Ա','0','','','��λְ��\r\n1������Ӵ��������������õǼǣ�\r\n2������Ϊҵ����������ס��װ������������ҵ����ѯ��Ͷ�߹�����\r\n3������˾��ࡢ�̻����ΰ���ά�޵ȷ�������\r\n4�������������в��ϸ�ķ�����Ŀ�����и��١���֤��\r\n5��ȫ������������ҵ������ʩ���豸��ʹ�ù��̡�\r\n\r\n��λҪ��\r\n1��30�����£���ר����ѧ������ҵ�������רҵ��\r\n2���������ϸߵ���ҵ������Ǽ��Ƶ���ҵ�ͷ��������飻\r\n3����ǿ�Ŀͻ�������ʶ�����õĹ�ͨ�����������ǿ��Э��������\r\n4��������ҵ�����ϸ�֤����Ʒ����ҵ��ҵ�����������ȿ��ǡ�');
INSERT INTO `qs_category_jobs` VALUES ('782','99','��ҵ����/����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('783','99','��ҵ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('784','99','��ҵ��ʩ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('785','99','��ҵά��','0','','','��λְ��\r\n1���Թ�˾�涨����Ŀ��Ĺ������м���ά�ޣ�\r\n2����ֵ���ڼ䷢�������⼰ʱ�ϱ�����\r\n3��������ҵ�豸�ļ��ȣ�\r\n4��ִ�С��μӹ�˾��ʱί�ɵ�����\r\n\r\n��λҪ��\r\n1��2�������ۺ���ҵά�޹������飻\r\n2�������豸��ʩ��ά�������������޹������飻\r\n3����Ϥˮ��ů��ͨ��רҵ֪ʶ��\r\n4����ά�޵繤�ϸ�֤(��ѹ�繤�ϸ�֤)����ά��ǯ���ȼ�֤(ά��ǯ���ȼ�֤)�ȸ�λ����֤�飻\r\n5����һ����ͨ������ִ���������ŶӺ�������������ǿ���ܹ��Կ����͡�');
INSERT INTO `qs_category_jobs` VALUES ('786','99','������ҵ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('799','117','��Ʒ/���չ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('800','117','��ҵ���/��Ʒ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('801','117','��ҵ����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('802','117','����ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('803','117','����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('804','117','���������������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('805','118','Ʒ�ʱ�֤/�������ƾ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('806','118','�������ƹ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('807','118','��������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('808','118','��ϵ��֤����ʦ/���Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('809','118','��Ӧ�̹���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('810','118','�ɹ���������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('811','118','��ȫ/����/��������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('812','118','��ȫ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('813','118','��ȫ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('814','118','��������/��ȫ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('815','119','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('816','119','4S�꾭��/ά��վ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('817','119','��������/������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('818','119','������������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('819','119','������ƹ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('820','119','�������ӹ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('821','119','����װ������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('822','119','����վ����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('823','119','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('824','120','��Ʒ/���չ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('825','120','����/�豸����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('826','120','����/��е��ͼԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('827','120','��е���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('828','120','��е����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('829','120','CNC/���ع���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('830','120','ģ�߹���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('831','120','��еά�޹���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('832','120','�豸ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('833','120','���ܻ�е/�����Ǳ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('834','120','���Ϲ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('835','120','ұ���е','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('836','120','������е','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('837','120','������е','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('838','121','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('839','121','�繤','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('840','121','�յ�/����/��¯��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('841','121','�纸/í����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('842','121','ǯ��/���޹�/�ӽ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('843','121','��/ĥ/ϳ/��/�۹�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('844','121','�и��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('845','121','װж/�泵��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('846','121','����ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('847','121','ˮ��/ľ��/���Ṥ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('848','121','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('849','121','��װ/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('850','121','�ü���������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('851','121','ģ�߹�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('852','121','�չ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('853','121','������������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('854','122','��װ/��֯Ʒ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('855','122','��ɴ/֯��/��֯','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('856','122','��װ����/�ư�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('857','122','Ьñ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('858','122','Ƥ��/ëƤ�ӹ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('859','122','�ü���������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('860','122','ӡȾ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('861','122','��װ/��֯/Ƥ�����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('862','122','������װ/��֯Ʒ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('881','138','�������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('882','138','��������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('883','138','�Զ����ƹ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('884','138','���繤��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('885','138','�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('886','138','����ά��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('887','138','�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('888','138','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('889','139','ˮ��/ˮ�繤��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('890','139','��������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('891','139','�����豸����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('892','139','��Դ����������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('893','139','���ϵͳ����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('894','139','�յ�/���ܹ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('895','139','ʯ����Ȼ������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('896','139','���ʿ���/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('897','139','��������/��Դ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('898','140','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('899','140','ʵ�����о�Ա/����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('900','140','ʯ�ͻ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('901','140','��/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('902','140','ʳƷ/�����з�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('903','140','ˮ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('904','140','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('928','172','�����༭/���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('929','172','��װ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('930','172','�Ҿ�/�Ҿ���Ʒ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('931','172','����Ʒ/�鱦���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('932','172','��ҵ���/��Ʒ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('933','172','��̨���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('934','172','��װ/��֯Ʒ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('935','172','�����������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('936','173','�ܱ�/���ܱ�/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('937','173','�༭/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('938','173','����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('939','173','�İ�/�߻�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('940','173','�Ű����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('941','173','У��/¼��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('942','173','�����༭/���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('943','173','����/ӡˢ/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('944','173','�ư�/װ��/�̽�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('945','173','ӡˢ��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('946','173','��������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('962','204','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('963','205','��ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('964','205','���ɹ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('965','205','������Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('966','205','֪ʶ��Ȩ/ר������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('967','205','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('968','206','רҵ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('969','206','��ѯ����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('970','206','��ѯԱ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('971','206','�鱨��Ϣ����/����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('972','206','������ѯ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('973','207','Ӣ�﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('974','207','���﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('975','207','���﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('976','207','���﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('977','207','���﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('978','207','���﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('979','207','������﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('980','207','�������﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('981','207','�������﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('982','207','�������﷭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('983','207','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('993','227','ҩƷ����/�ʹ�','0','','','��λְ��\r\n1������ҽҩ�м��塢ԭ��ҩ���ʼ칤������ػ�ѧ������\r\n2������ѧ�ϳ�ʵ�飻\r\n3����д�ʼ챨�沢���ϼ��㱨��\r\n��λҪ��\r\n1����ר����ѧ���������ѧ�����רҵ��\r\n2����1������ҩƷ���鹤�����飬��Ϥ���������̼���׼��\r\n3���ܹ�����ʹ�ð칫����������豸��');
INSERT INTO `qs_category_jobs` VALUES ('994','227','���＼����ҩ','0','','','��λְ��\r\n1���������﹤��Ӧ�ü�����ǰ�ڵ��У�ȷ��������Ŀ�����ƿ������о����棬�����걨��˾�ڡ��ⲿ���\r\n2���������﹤�̷�����Ŀ���з������������������ںͳɱ�����\r\n3���������﹤�̼�������Ʒ�ļ�������ר���걨��������ƹ�������������ѵ��\r\n4������ָ�����﹤�̼����з��ɹ��ڹ����е�Ӧ�ü������ĳ������ƺ���ߣ�\r\n��λҪ��\r\n1�����Ƽ�����ѧ�����������������﹤���з����飻\r\n2����һ�����Ͼ��������ľ��飻\r\n3������ʹ������������׼ȷ�������ݷ�����\r\n4���н�ǿ�����ݷ����������߼�����������\r\n5��Ӣ���������������⼮ר�ҽ������ϰ���');
INSERT INTO `qs_category_jobs` VALUES ('995','227','ҽ���豸����','0','','','��λְ��\r\n1������ҽ����е��Ʒ������\r\n2������Ѱ�ҹ��ںϸ����������֮��ͨ��Ʒʵ�ַ�����ȷ�����ռ���Ʒ������׼�����۴��������ʣ�\r\n3���ʿغϸ���Э����֤��Ʒ��������Ԥ�ڱ�׼��\r\n4��������е��Ʒ�����ļ��������ļ���\r\n5�����Ʒ�����ҵ�������̵���Ŀ�ƻ����������С���ʵ����أ������豸��ģ�����������ʵ�֡�\r\n��λҪ��\r\n1����ѧ��������ѧ����5�����ϻ�е���Ӳ�Ʒ��ҵ���飻\r\n2����Ϥע�ܡ���Ϳ��PCB���գ���Ϥע�ܡ���Ϳ��PCB�����������ƣ�\r\n3������ʹ��AutoCAD�����UG��Solidwork��pro-E��Catia����֮һ��\r\n4��ʵ��ҽ����е���Ӳ�Ʒ�з�������ʵ�־��鲻����3�ꣻ\r\n5���߱�������ƿ����ͷ������������������н�ǿ�Ķ���������\r\n6�������õĹ�ͨ���Ŷ�Э������������Ӣ����п��ｻ����\r\n7����Ϥҽ����е��ҵ�����ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('996','227','ҽҩ����','0','','','��λְ��\r\n1����Ͻ����ҽԺ���й�˾��Ʒ���ƹ����ۣ������������\r\n2��������Ҫ�ݷ�ҽ����Ա����ͻ��ƹ��Ʒ��������߲�Ʒ�г��ݶ\r\n3������Ǳ�ڵ�ҽԺ�����ͻ������Լ��еĿͻ�����ά����\r\n4������˽��г�״̬����ʱ���ϼ����ܷ�ӳ�������ֵ�������г���̬������������飻\r\n5���ƶ���ʵʩϽ��ҽԺ�������ƻ�����֯ҽԺ�ڸ����ƹ���\r\n��λҪ��\r\n1��ר�Ƽ�����ѧ����ҽҩ��Ӫ�������רҵ��\r\n2��2���������۹������飬��ҽ�����ġ��Ĳġ�ҩƷ���۾��������ȣ�\r\n3����ҽԺ���۾��飬��ϤҽԺ�������̣�ӵ�����õ�ҽԺ��Դ�������������Ȱ�ҩƷ���۷�������\r\n4�����н�ǿ�Ķ��������������罻���ɣ��ϺõĹ�ͨ������Э���������ŶӺ���������\r\n5�����彡�������ж��������ͽ�������������');
INSERT INTO `qs_category_jobs` VALUES ('997','227','ҽ����е����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('998','227','������ҩ/ҽ����е','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('999','228','��������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1000','228','�������۹���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1001','228','�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1002','228','ˮ����','0','','','��λְ��\r\n1���������ദ����Ŀ����������\r\n2������������ദ������Ŀ�Ĺ��ա�������������ơ�ʩ��ͼ��Ƶȣ�\r\n3���ܹ�����ʩ���ֳ��ļ���ָ�������е��ԡ�\r\n��λҪ��\r\n1����ѧ���Ƽ�����ѧ�����������̼����רҵ��\r\n2����Ϥ��ˮ����������̣��˽⻷�����ɷ��棻\r\n3��3��������ع������顣');
INSERT INTO `qs_category_jobs` VALUES ('1003','228','�̷Ϲ���ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1004','228','����������ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1005','228','��������/԰�־�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1006','228','��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1015','243','����/����','0','','','��λְ��\r\n1��ȷʵ���հ�ȫ���ˣ������ڴ���ǰ�������ڡ����ż���ָ��֮�����ڣ�\r\n2�����б�������ָ֮ʾ�����ڰ�ȫ��������ȷ���Ʋ���˿Ͱ�ȫ��\r\n��λҪ��\r\n1��18��30���꣬���175CM���ϣ����彡������ò������\r\n2����Ϥ��ȫ�ƶȼ���ȫ����ʹ�á������¼��������¹�֮Ԥ���밲�ţ�\r\n3�����õ��׺���������������ȿ��ǡ�');
INSERT INTO `qs_category_jobs` VALUES ('1016','243','�п�Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1017','243','����/��๤','0','','','��λְ��\r\n1�����������������ͻ���������๤����\r\n2����֤���ʰ�������������������\r\n3�����ӷ���Ͱ��š�\r\n��λҪ��\r\n1����Ů���ޣ����彡��������40-55�ꣻ\r\n2������ع������������ȿ��ǡ�');
INSERT INTO `qs_category_jobs` VALUES ('1018','243','��������/��ķ','0','','','��λְ��\r\n1������������ͻ��ļ�ͥ������๤����\r\n2�������ͥ�ò͵�ʳ�Ĳɹ��������ȹ�����\r\n3�������չ˺�С������ʳ��ӡ�ѧУ���͵����\r\n4�����ӷ���Ͱ��š�\r\n��λҪ��\r\n1��Ů�����彡��������20-45�ꣻ\r\n2������ع������������ȿ��ǡ�');
INSERT INTO `qs_category_jobs` VALUES ('1019','243','��������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1020','244','�Ƶ�/���ݾ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1021','244','���þ���','0','','','��λְ��\r\n1������Ա���������ò�ǰ׼����ȷ��������׼��\r\n2����ʽ���ͺ󣬶�������Ա�������÷����������Բμӷ�������\r\n3����ʱ���١����̨�棬�Բ��ϸ�ĵط�����ָ����������\r\n4����ʱ�Բ�̨�ϲ��ٶȡ�����˽⣬��ʱ�߲ˣ�\r\n5���ͺ���֯����Ա��ʱ��̨������ò�����������������\r\n��λҪ��\r\n1�����������Ļ��̶ȣ��������ʼѣ�\r\n2����Ϥ��������ͷ������֪ʶ�����������ķ����ܣ�\r\n3���нϸߵĴ������ͻ���¼���Ӧ���������Կ͹�ͨ������\r\n4���Ȱ�������������̤ʵ�����棬�н�ǿ����ҵ�ĺ����θС�');
INSERT INTO `qs_category_jobs` VALUES ('1022','244','¥�澭��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1023','244','ǰ���Ӵ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1024','244','�ͷ�����Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1025','244','����/���й���','0','','','��λְ��\r\n1�����������ڵ����۹�����������Ӧ�ͻ���ѯ��������ͻ���ͨ��ѵ����β�Ʒ�����������ͻ����۲�ֱ����ɽ��ף�\r\n2�����Լ����������ڿͻ����ֽ��ܵ���ϵ����ʱ�绰�ݷã�����Ѱ������\r\n3����ͻ���ɽ��׺󣬸���Գɽ���ҵ���������ز��Ž���Э����ͨ�븨�����\r\n��λҪ��\r\n1����ר����ѧ������������ҵ��ҵ�������ȣ�\r\n2���Ը����򡢷�Ӧ���ݡ��������ǿ�������õ��ŶӺ�����ʶ��\r\n3�����нϸߵ����ۼ�̸�м��ɣ������׺�����\r\n4���Ȱ�������ҵ���������ģ��ܳ��ܽϴ�Ĺ���ѹ�����Կ����ͣ�\r\n5���������õ�Э������֯���߻����������ڹ�ͨ��');
INSERT INTO `qs_category_jobs` VALUES ('1026','244','�г̹���/�Ƶ�','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1027','244','��Ʊ/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1028','244','����/��������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1029','244','����/��������Ա','0','','','��λְ��\r\n1��������ల�������������Ρ�����������������̨��׼���ø�����Ʒ��ȷ������Ӫҵʹ�á�\r\n2���Ӵ��˿�Ӧ���������顢��ò�����ġ��ܵ���ʹ�˿��б������֮�У�\r\n3��������ò���ԣ�Ϊ�����ṩ��ѷ���\r\n4��������˿ͽ��ܺ�������������Ʒ����ɫ�˵㣻\r\n5�������๤�������ӹ���\r\n��λҪ��\r\n1������18-30�꣬���彡����Ů�����1��58m���ϡ��������1��70���ϣ��ܳԿ࣬\r\n2��Ʒ�ж������ܳԿ����ͣ����������Ļ��̶ȡ�');
INSERT INTO `qs_category_jobs` VALUES ('1030','244','����/ӭ��','0','','','��λְ��\r\n1���������ѱ��͵�ӭ���ͽӴ����������ܱ��͸���������Ԥ����������ʵ��\r\n2����ϸ����Ԥ����¼��\r\n3���˽���ռ����͵Ľ�����������ʱ�������ϼ��쵼��\r\n4���Թ淶�ķ�����ڣ�������˾Ʒ�����ʣ����ŵķ�������\r\n��λҪ��\r\n1��Ů�ԣ�����18��28���꣬���彡��������ȳơ���ٶ�ׯ�����1��65��1��72�ס�\r\n2���������õĹ�ͨЭ��������������ʶ����Ӧ��������ׯ�󷽡���ֹ���ţ�\r\n3����ҵ��ҵ�����н�ǿ�������ĺͳԿ����͵�ְҵ�������߱�һ����Ӣ��ˮƽ��\r\n4���߱��Ǽ��Ƶ�ǰ̨���������ߵ�����д');
INSERT INTO `qs_category_jobs` VALUES ('1031','244','��ʦ','0','','','��λְ��\r\n1���������������������������\r\n2��ִ�в��������´�ĸ��������͹���ָʾ��\r\n3�������ƶ������ĸ��ֹ����ƻ���\r\n4���Գ����ĳ�Ʒ��������ʳƷ�ɱ��е���Ҫ�����Σ�\r\n5�����ֶԳ�����Χ��Ѳ�ӣ�������Ա�����ж�������ʱ����ֳ����������⣬����������߹���������\r\n��λҪ��\r\n1��������ʮ�����ϣ���������ѧ�������彡�����������棬���������Ǽ��Ƶ��ʦ���������飻\r\n2������ǿ�ҵ������ģ����ڿ��غʹ��£����������\r\n3��ӵ�нϸߵ���⿼������˽����ϤʳƷ���ϵĲ��ء����������һ�������\r\n4���Գɱ����ƹ���ʳƷӪ��ѧ���������豸֪ʶӵ��');
INSERT INTO `qs_category_jobs` VALUES ('1032','244','����/����','0','','','��λְ��\r\n1��������������ʦ�������֪ͨ��ע������ȣ�\r\n2��Ϊ��ʦ��������ʳ�ġ���֤ʳ�ĵ����ʡ������ȣ�\r\n3��������̨��������������ʹ�á�\r\n��λҪ��\r\n1������18��45�꣬�Ա��ޣ����彡����\r\n2�����������ģ����õ�ִ�������͹�ͨ�������ܹ��ϸ��ձ�׼������\r\n3���ڷ�Ŭ�����Բ��������нϸߵĹ������顣');
INSERT INTO `qs_category_jobs` VALUES ('1033','244','��������/����/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1034','245','����ʦ','0','','','��λְ��\r\n1��Ϊ�˿��ṩƤ�����������������\r\n2����װ��������Ҫ�󡢳������ܽ������ݻ��������\r\n3�����ֹ��������ĸɾ����ࣻ\r\n4��ѧϰ��Ʒ֪ʶ��רҵ�����������������ְҵ���ʺͼ��ܣ�\r\n5����ָ��������������\r\n��λҪ��\r\n1������ã����ʼѣ���18��30��֮�䣻\r\n2����һ��������������/���壬�����������飻\r\n3����ͨ�������ǿ�������ַ��ã��з�����ʶ��\r\n4�������׺������ŶӾ������Ͻ��ģ�\r\n5��������ʦ�ʸ�֤��������ҽ֤�����ȿ���');
INSERT INTO `qs_category_jobs` VALUES ('1035','245','��ױʦ','0','','','��λְ��\r\n1�����ݲ�ͬ�����㷽��Ҫ����Ʋ�ͬ��ױ�����ͣ�\r\n2�����������Ļ�ױ�����͡���װ�����ε�����������ƣ�\r\n3��Э����Ӱʦ������㹤����\r\n��λҪ��\r\n1����������һ�����ϣ�����Ӱ�����һ���Ӱ¥�������飻\r\n2����Ʒ�ã���������Ϻã���ҵ��ҵ��\r\n3����������˹�ͨ��ױ������������Ȼ���Լ���һ���뷨��\r\n4����ͨ��������ǿ���ܺܺõ��ŶӺ�������');
INSERT INTO `qs_category_jobs` VALUES ('1036','245','����ʦ','0','','','��λְ��\r\n1���ܰ�������������͹淶������ò�ĽӴ����ͣ����ṩһ�����������ѯ����\r\n2�����ݹ˿Ͳ�ͬ������������������Ϲ˿�Ҫ��ķ��ͣ�\r\n3���ܶ�������ϴ�������������硢�����̷���Ⱦ���ļ���������\r\n4����������ʹ��������Ʒ�������豸��\r\n5����ָ��������������\r\n��λҪ��\r\n1����������ʼѣ���������ʱ������������\r\n2���������Ϸ���ʦ���飬������׼ϸ�£��������͹�������������ʱ�ж���Ʒλ����Ӣ��ɳ�����Ϻ��ķ�ɳ������ѵ�����ߡ��нϴ���ʱ�л�������������������ȣ�\r\n3����ͨ�����ã��ܹ�Ϊ�˿��ṩ���ʷ���');
INSERT INTO `qs_category_jobs` VALUES ('1037','245','����ʦ','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1038','245','�������/����','0','','','��λְ��\r\n1�������Ա������е��ָ����ѵ����\r\n2�������Ա�ٿε��ƶ������Σ�\r\n2���ܹ���֯���ƹ���չѵ����Ŀ��\r\n��λҪ��\r\n1����2��������ع������飻\r\n2�������������ܻ�ŷ���������ʸ�֤�ߣ�\r\n3���зḻ��˽�˽�����ٿδ��ξ��飻\r\n4�������˶������Ρ��Ը��ʡ�');
INSERT INTO `qs_category_jobs` VALUES ('1039','245','�赸��ʦ','0','','','��λְ��\r\n1���нϸߵ�ʾ����ָ��������\r\n2���ܹ�������Ӧ����Ⱥ�ƶ���Ӧ���ڿη�����\r\n3���ܹ�������Ӧ�ĵ�������ѵ�������ƶ���Ӧ���ڿη�����\r\n4����ȷ�����٤���������ʽ��\r\n5������ȷ���ƶ��٤��ʳ���׷�����\r\n��λҪ��\r\n1����ר����ѧ��������ص�ָ���ʸ�֤�飻\r\n2������������ؾ��飬�����ù������θн�ǿ�߿����ȿ��ǣ�\r\n3�����彡���������õ����ʽ��\r\n4���Ȱ��٤��ҵ���������õ�ְҵ����\r\n5�����ܹ�����ϵͳ���٤רҵ��ѵ��\r\n6����ͨ����ǿ�����з�����ʶ��Ϊ����ֱ����ʵ����ҵ');
INSERT INTO `qs_category_jobs` VALUES ('1040','245','��Ħ/����','0','','','��λְ��\r\n1��Ϊ�˿ͽ�����ɫ��Ŀ��������ã�\r\n2�����չ涨�ĳ����ʱ�������ɹ˿����ѵ���Ŀ��\r\n3����ɨ��ά���Լ�����������\r\n��λҪ��\r\n1������20-30�꣬��������ѧ����\r\n2��1��������ع������飻\r\n3���׺���ǿ���������÷�����ʶ��\r\n4���������õĹ�ͨ�������ŶӺ�������\r\n5���߱����֤�������ȿ��ǡ�');
INSERT INTO `qs_category_jobs` VALUES ('1041','245','��������/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1042','246','�ֿ����','0','','','��λְ��\r\n1��ִ�����ʹ�������ֿ��йص�SOP��ȷ���ֿ���ҵ˳�����У�\r\n2������ֿ��ճ����ʵ����ա���⡢��š����ܡ��̵㡢���˵ȹ�����\r\n3������ֿ��ճ����ʵļ�ѡ�����ˡ�װ�������˹�����\r\n4�����𱣳ֲ��ڻ�Ʒ�ͻ�������ࡢ���������������\r\n5��������ص�֤�ı�����浵��\r\n6���ֿ����ݵ�ͳ�ơ��浵�������ϵͳ���ݵ����룻\r\n7���������ܽ�����������ˡ�\r\n��λҪ��\r\n1����ר������ѧ���������ִ������רҵ��\r\n2��1�������������ʵ��ҵ��������飬������������������������ȿ��ǣ�\r\n3����Ϥ�ֿ�������������̣��߱����ʱ���רҵ֪ʶ�ͼ��ܣ�\r\n4����Ϥ���԰칫�������,����SAP���������ȿ��ǣ�\r\n5���������͡�������ǿ�����к����ʹ��¾���');
INSERT INTO `qs_category_jobs` VALUES ('1043','246','��������/����','0','','','��λְ��\r\n1���������ճ����������������������䡢�ִ������͡���������ȣ�\r\n2���ƶ���ִ�����������ƻ��������������淶�����ܽ�����ƣ�\r\n3���ලʵʩ������ϵְ��������׼��\r\n4�������ͻ��Ͳִ��ɱ���\r\n5�������ƶ�����Ʋ�����������Ԥ�㣻\r\n6���ƶ�������������������ͻ�����ȣ�\r\n7�����ڻ����ϱ���������������\r\n8���������ڲ�����Ա�Ŀ��ˡ���ѵ������\r\n��λҪ��\r\n1����ר������ѧ���������ࡢ���������רҵ��\r\n2��3�������������������������飬��������ҵ�������������������ȣ�\r\n3����Ϥ��������ҵ�����̣��зḻ�����̹���������ܣ�\r\n4����ϤERP��������Ϣ����ϵͳ����ʵʩ���飻\r\n5�����õĹ�ͨ��̸���������Ŷӹ���������������������ǿ���ܳ��ܽϴ���ѹ����');
INSERT INTO `qs_category_jobs` VALUES ('1044','246','����רԱ/����','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1045','246','����/�������','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1046','246','���˴���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1047','246','���Ϲ���','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1048','246','����˾��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1049','246','����/����/�೵˾��','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1050','246','��½���˲���Ա','0','','','');
INSERT INTO `qs_category_jobs` VALUES ('1051','246','����Ա','0','','','��λְ��\r\n1�����������Ƴ��������ƶȣ�\r\n2����˾�����ĵ��ȣ���˾������·�̡������Ƚ��а��ţ�\r\n3���������͵Ŀ���������ʹ�ã�\r\n4����֯�������ճ�����ά�ޡ���������֤����������Ͱ�ȫ��\r\n5�����˾�����ճ��������˵ȹ�����\r\n6����֯˾�����н�ͨ���桢��ȫ֪ʶ��ѧϰ��\r\n��λҪ��\r\n1����������ѧ����\r\n2������������ظ�λ�������飻\r\n3������Ա�������Ĺ�����зḻ�ľ��飬��Ϥ����֤�յİ������̣���Ϥ��ͨ���ɡ����棻\r\n4���������ġ��Կ����ͣ���ҵ���ڡ�����̬�Ȼ���������Ĺ�ͨ��Э����ִ��������\r\n5�����ԣ�40�����¡�');
INSERT INTO `qs_category_jobs` VALUES ('1052','246','�ٵ�Ա','0','','','��λְ��\r\n1�����������ڵ���Ʒ�ʹＰ����ļ�ʱ���أ�\r\n2��ִ��ҵ��������̣�׼ʱ�ʹ���Ʒ��ָ���ͻ���д������ϲ���ʱȡ�أ�\r\n3�������ʵ����ҵ�񵥾ݺ����ϣ�\r\n4���ͻ���ά�����ͻ���ѯ�Ĵ��������ķ�����\r\n5��ͻ���¼��Ĵ���\r\n��λҪ��\r\n1�����м�����ѧ����\r\n2����Ϥ���ص��Σ���ͬ��ҵ�������������ȣ�\r\n3���Կ����ͣ���Ʒ������������ϸ���棻\r\n4�����彡�����޲����Ⱥ�');
INSERT INTO `qs_category_jobs` VALUES ('1053','246','���Ա','0','','','��λְ��\r\n1����Ϥ������Ʒ���ŵ���Ʒ���ơ����ء����ҡ������;�����ܡ��������ޣ�\r\n2�����س��вֿ�������Ʒ�������йع涨������ҵ���̽��и������\r\n3��������Ʒ��۵�֪ʶ����ȷ��ü۸�\r\n4������������Ʒ���е��й�רҵ֪ʶ�����������õ�ʵ�ʹ����У�\r\n5����û�����������\r\n��λҪ��\r\n1����������ѧ����\r\n2���д����̳����й������������ȣ�\r\n3��Ʒò�������Ȱ�������ҵ���Կ����ͣ�������ǿ�����彡�����к�ǿ�ľ�ҵ��������õ��������ʣ�\r\n4���߱��򵥵ļ�����������ɣ��˽���Ʒ����ʹ洢֪ʶ��\r\n5���ܹ�ʤ�η��ص���������������Ӧ��ҹ����ݰ��š�');
INSERT INTO `qs_category_jobs` VALUES ('1054','246','��������/��ͨ/�ִ�','0','','','');
DROP TABLE IF EXISTS `qs_category_major`;
CREATE TABLE `qs_category_major` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `category_order` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_category_major` VALUES ('1','0','������','0');
INSERT INTO `qs_category_major` VALUES ('2','0','�����','0');
INSERT INTO `qs_category_major` VALUES ('3','0','ũѧ��','0');
INSERT INTO `qs_category_major` VALUES ('4','0','ҽѧ��','0');
INSERT INTO `qs_category_major` VALUES ('5','0','����ѧ','0');
INSERT INTO `qs_category_major` VALUES ('6','0','��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('7','0','��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('8','0','������','0');
INSERT INTO `qs_category_major` VALUES ('9','1','������Ϣ��','0');
INSERT INTO `qs_category_major` VALUES ('12','1','������','0');
INSERT INTO `qs_category_major` VALUES ('10','1','������Ϣ��','0');
INSERT INTO `qs_category_major` VALUES ('11','1','�ؿ���','0');
INSERT INTO `qs_category_major` VALUES ('13','1','��е��','0');
INSERT INTO `qs_category_major` VALUES ('14','1','�����Ǳ���','0');
INSERT INTO `qs_category_major` VALUES ('15','1','��Դ������','0');
INSERT INTO `qs_category_major` VALUES ('16','1','������','0');
INSERT INTO `qs_category_major` VALUES ('17','1','ˮ����','0');
INSERT INTO `qs_category_major` VALUES ('18','1','�����','0');
INSERT INTO `qs_category_major` VALUES ('19','1','�����밲ȫ��','0');
INSERT INTO `qs_category_major` VALUES ('20','1','��������ҩ��','0');
INSERT INTO `qs_category_major` VALUES ('21','1','��ͨ������','0');
INSERT INTO `qs_category_major` VALUES ('22','1','���󹤳���','0');
INSERT INTO `qs_category_major` VALUES ('23','1','�Ṥ��֯ʳƷ��','0');
INSERT INTO `qs_category_major` VALUES ('24','1','���պ�����','0');
INSERT INTO `qs_category_major` VALUES ('25','1','������','0');
INSERT INTO `qs_category_major` VALUES ('26','1','������ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('27','1','���﹤����','0');
INSERT INTO `qs_category_major` VALUES ('28','1','ũҵ������','0');
INSERT INTO `qs_category_major` VALUES ('29','1','��ҵ������','0');
INSERT INTO `qs_category_major` VALUES ('30','1','����������','0');
INSERT INTO `qs_category_major` VALUES ('31','2','��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('32','2','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('33','2','��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('34','2','�����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('35','2','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('36','2','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('37','2','�����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('38','2','��������ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('39','2','������ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('40','2','�����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('41','2','��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('42','2','������Ϣ��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('43','2','���Ͽ�ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('44','2','������ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('45','2','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('46','2','ͳ��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('47','3','ֲ��������','0');
INSERT INTO `qs_category_major` VALUES ('48','3','��ҵ��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('49','3','ɭ����Դ��','0');
INSERT INTO `qs_category_major` VALUES ('50','3','������̬��','0');
INSERT INTO `qs_category_major` VALUES ('51','3','����������','0');
INSERT INTO `qs_category_major` VALUES ('52','3','����ҽѧ��','0');
INSERT INTO `qs_category_major` VALUES ('53','3','ˮ����','0');
INSERT INTO `qs_category_major` VALUES ('54','4','����ҽѧ��','0');
INSERT INTO `qs_category_major` VALUES ('55','4','Ԥ��ҽѧ��','0');
INSERT INTO `qs_category_major` VALUES ('56','4','�ٴ�ҽѧ��ҽѧ������','0');
INSERT INTO `qs_category_major` VALUES ('57','4','��ǻҽѧ��','0');
INSERT INTO `qs_category_major` VALUES ('58','4','��ҽѧ��','0');
INSERT INTO `qs_category_major` VALUES ('59','4','��ҽѧ��','0');
INSERT INTO `qs_category_major` VALUES ('60','4','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('61','4','ҩѧ��','0');
INSERT INTO `qs_category_major` VALUES ('62','5','�����ѧ�빤����','0');
INSERT INTO `qs_category_major` VALUES ('63','5','���̹�����','0');
INSERT INTO `qs_category_major` VALUES ('64','5','����������','0');
INSERT INTO `qs_category_major` VALUES ('65','5','ũҵ���ù�����','0');
INSERT INTO `qs_category_major` VALUES ('66','5','ͼ�鵵��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('67','6','��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('68','6','���˼����������','0');
INSERT INTO `qs_category_major` VALUES ('69','6','���ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('70','6','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('71','6','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('72','7','�й�������ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('73','7','���������ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('74','7','���Ŵ���ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('75','7','������','0');
INSERT INTO `qs_category_major` VALUES ('76','8','��ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('77','8','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('78','8','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('79','8','����ѧ��','0');
INSERT INTO `qs_category_major` VALUES ('80','8','��ʷѧ��','0');
INSERT INTO `qs_category_major` VALUES ('81','8','δ����רҵ','0');
INSERT INTO `qs_category_major` VALUES ('82','8','������','0');
DROP TABLE IF EXISTS `qs_color`;
CREATE TABLE `qs_color` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_color` VALUES ('1','#bc123a');
INSERT INTO `qs_color` VALUES ('2','#a212bc');
INSERT INTO `qs_color` VALUES ('3','#12bc86');
INSERT INTO `qs_color` VALUES ('4','#bc7a12');
DROP TABLE IF EXISTS `qs_comment`;
CREATE TABLE `qs_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `reply` text NOT NULL,
  `reply_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_company_down_resume`;
CREATE TABLE `qs_company_down_resume` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `down_addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `resume_uid_rid` (`resume_uid`,`resume_id`),
  KEY `down_addtime` (`down_addtime`),
  KEY `company_uid_addtime` (`company_uid`,`down_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_company_down_resume` VALUES ('5','2','�Ż�2','3','1','dfadfads','1462608934');
INSERT INTO `qs_company_down_resume` VALUES ('3','2','�Ż�2','3','5','�ٶ�','1462519958');
INSERT INTO `qs_company_down_resume` VALUES ('4','3','�����','4','5','�ٶ�','1462521252');
DROP TABLE IF EXISTS `qs_company_favorites`;
CREATE TABLE `qs_company_favorites` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `favoritesa_ddtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `company_uid` (`company_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_company_img`;
CREATE TABLE `qs_company_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(120) NOT NULL,
  `addtime` int(100) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_company_interview`;
CREATE TABLE `qs_company_interview` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(30) NOT NULL,
  `resume_addtime` int(10) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `jobs_addtime` int(10) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_addtime` int(10) NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `interview_addtime` int(10) unsigned NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT '',
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `interview_time` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`did`),
  KEY `resume_uid_resumeid` (`resume_uid`,`resume_id`),
  KEY `company_uid_jobid` (`company_uid`,`jobs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_company_interview` VALUES ('1','1','�Ż�','1462440426','3','1','��Ŀ����','1462515868','1','dfadfads','1462420723','1','1462516024','','2','2016-05-14');
INSERT INTO `qs_company_interview` VALUES ('2','3','�����','1425744000','4','6','�����ܼ�','1462521124','2','�ٶ�','1462519791','5','1462521268','','2','2016-05-19');
INSERT INTO `qs_company_interview` VALUES ('3','1','�Ż�','1462440426','3','3','���繤��ʦ','1462516461','1','dfadfads','1462420723','1','1462526903','','1','2016-05-06');
INSERT INTO `qs_company_interview` VALUES ('6','3','�����','1425744000','4','7','�߻��ܼ�','1462603183','1','dfadfads','1462420723','1','1462612381','','2','2016-05-27');
INSERT INTO `qs_company_interview` VALUES ('5','3','�����','1425744000','4','5','����','1462521005','1','dfadfads','1462420723','1','1462526939','','1','2016-05-08');
INSERT INTO `qs_company_interview` VALUES ('7','3','�����','1425744000','4','3','���繤��ʦ','1462516461','1','dfadfads','1462420723','1','1462613038','','2','2016-05-19');
DROP TABLE IF EXISTS `qs_company_label_resume`;
CREATE TABLE `qs_company_label_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `personal_uid` int(10) NOT NULL,
  `resume_id` int(10) NOT NULL,
  `resume_state` tinyint(1) NOT NULL DEFAULT '0',
  `resume_state_cn` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_company_news`;
CREATE TABLE `qs_company_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `order` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_company_praise`;
CREATE TABLE `qs_company_praise` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `click_type` tinyint(1) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_company_profile`;
CREATE TABLE `qs_company_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `tpl` varchar(60) NOT NULL,
  `companyname` varchar(60) NOT NULL,
  `nature` smallint(5) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `street` smallint(5) unsigned NOT NULL,
  `street_cn` varchar(50) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `registered` varchar(150) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `telephone` varchar(130) NOT NULL,
  `landline_tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `license` varchar(120) NOT NULL,
  `certificate_img` varchar(80) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `contents` text NOT NULL,
  `audit` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `map_x` varchar(50) NOT NULL,
  `map_y` varchar(50) NOT NULL,
  `map_zoom` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `yellowpages` tinyint(1) NOT NULL DEFAULT '0',
  `contact_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` int(10) unsigned NOT NULL,
  `resume_processing` tinyint(3) NOT NULL DEFAULT '100',
  `tag` varchar(60) NOT NULL,
  `wzp_tpl` tinyint(1) NOT NULL DEFAULT '0',
  `crm_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `audit` (`audit`),
  KEY `companyname` (`companyname`),
  KEY `yellowpages` (`yellowpages`,`trade`),
  KEY `addtime` (`addtime`),
  KEY `crm_id` (`crm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_company_profile` VALUES ('1','1','','dfadfads','47','��Ӫ','1','��������/Ӳ��','6','141','ɽ��ʡ/̫ԭ��','127','������·','80','20������','','�����','fdafadsfasdfasdadsfadsfasd','ererererer','','0351-2222222-0','362392403@qq.com','','','','','fdafadsfasdfasdadsfadsfasdfdafadsfasdfasdadsfadsfasdfdafadsfasdfasdadsfadsfasdfdafadsfasdfasdadsfadsfasdfdafadsfasdfasdadsfadsfasdfdafadsfasdfasdadsfadsfasd','1','0','','','0','1462420723','1462420723','1','1','0','1','1','0','1','0','0','100','','0','0');
INSERT INTO `qs_company_profile` VALUES ('2','5','','�ٶ�','47','��Ӫ','9','����(Ͷ��/֤ȯ','1','35','������/������','0','','83','500-999��','','�����','�����ж�����','13566666666','','0355-55555555555-0','wudazui@sina.com','','','','2016/05/06/5.gif','���Ļ�Ҫ���V<span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span><span>���Ļ�Ҫ���V</span>','1','1','','','0','1462519791','1462519791','1','1','0','1','1','0','1','0','0','0','','0','0');
DROP TABLE IF EXISTS `qs_config`;
CREATE TABLE `qs_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_config` VALUES ('1','site_name','��ʿ�˲�ϵͳ');
INSERT INTO `qs_config` VALUES ('2','site_domain','http://test7.74lietou.com');
INSERT INTO `qs_config` VALUES ('3','site_dir','/');
INSERT INTO `qs_config` VALUES ('4','template_dir','default/');
INSERT INTO `qs_config` VALUES ('5','outdated_jobs','1');
INSERT INTO `qs_config` VALUES ('6','top_tel','000-00000000');
INSERT INTO `qs_config` VALUES ('7','bootom_tel','000-00000000');
INSERT INTO `qs_config` VALUES ('8','address','00ʡ00��00·00��0����00¥');
INSERT INTO `qs_config` VALUES ('9','bottom_other','Copyright @ 2015 74cms.com All Right Reserved ');
INSERT INTO `qs_config` VALUES ('10','icp','icp000000000');
INSERT INTO `qs_config` VALUES ('11','web_logo','logo.gif');
INSERT INTO `qs_config` VALUES ('12','isclose','0');
INSERT INTO `qs_config` VALUES ('13','close_reason','');
INSERT INTO `qs_config` VALUES ('14','statistics','');
INSERT INTO `qs_config` VALUES ('15','closereg','0');
INSERT INTO `qs_config` VALUES ('16','showjobcontact','1');
INSERT INTO `qs_config` VALUES ('17','showresumecontact','2');
INSERT INTO `qs_config` VALUES ('18','points_byname','����');
INSERT INTO `qs_config` VALUES ('19','points_quantifier','��');
INSERT INTO `qs_config` VALUES ('20','points_min_remind','10');
INSERT INTO `qs_config` VALUES ('21','audit_verifycom_addjob','1');
INSERT INTO `qs_config` VALUES ('22','audit_verifycom_editjob','1');
INSERT INTO `qs_config` VALUES ('23','audit_unexaminedcom_addjob','3');
INSERT INTO `qs_config` VALUES ('24','audit_unexaminedcom_editjob','3');
INSERT INTO `qs_config` VALUES ('25','manager_resume_max','2');
INSERT INTO `qs_config` VALUES ('26','down_talent_resume_limit','2');
INSERT INTO `qs_config` VALUES ('27','audit_verifycom_addimg','1');
INSERT INTO `qs_config` VALUES ('28','audit_unexaminedcom_addimg','2');
INSERT INTO `qs_config` VALUES ('29','audit_verifycom_addnews','1');
INSERT INTO `qs_config` VALUES ('30','audit_verifycom_editnews','-1');
INSERT INTO `qs_config` VALUES ('31','audit_unexaminedcom_addnews','2');
INSERT INTO `qs_config` VALUES ('32','audit_unexaminedcom_editnews','-1');
INSERT INTO `qs_config` VALUES ('33','company_add_days','15');
INSERT INTO `qs_config` VALUES ('34','company_repeat','1');
INSERT INTO `qs_config` VALUES ('35','jobs_list_max','1000');
INSERT INTO `qs_config` VALUES ('36','certificate_max_size','1024');
INSERT INTO `qs_config` VALUES ('37','updir_images','images');
INSERT INTO `qs_config` VALUES ('38','updir_thumb','images/thumb');
INSERT INTO `qs_config` VALUES ('39','updir_certificate','certificate');
INSERT INTO `qs_config` VALUES ('40','updir_train_certificate','train_certificate');
INSERT INTO `qs_config` VALUES ('41','payment_min','1');
INSERT INTO `qs_config` VALUES ('42','payment_rate','1');
INSERT INTO `qs_config` VALUES ('43','resume_max','3');
INSERT INTO `qs_config` VALUES ('44','resume_privacy','1');
INSERT INTO `qs_config` VALUES ('45','resume_list_max','1000');
INSERT INTO `qs_config` VALUES ('46','resume_photo_dir','photo');
INSERT INTO `qs_config` VALUES ('47','resume_photo_dir_thumb','photo/thumb');
INSERT INTO `qs_config` VALUES ('48','resume_photo_max','500');
INSERT INTO `qs_config` VALUES ('49','elite_resume_complete_percent','60');
INSERT INTO `qs_config` VALUES ('50','down_resume_limit','2');
INSERT INTO `qs_config` VALUES ('51','logo_max_size','500');
INSERT INTO `qs_config` VALUES ('52','apply_jobs_max','30');
INSERT INTO `qs_config` VALUES ('53','audit_resume','1');
INSERT INTO `qs_config` VALUES ('54','audit_edit_resume','1');
INSERT INTO `qs_config` VALUES ('55','audit_resume_photo','1');
INSERT INTO `qs_config` VALUES ('56','audit_edit_photo','1');
INSERT INTO `qs_config` VALUES ('57','audit_add_com','0');
INSERT INTO `qs_config` VALUES ('58','audit_edit_com','1');
INSERT INTO `qs_config` VALUES ('59','map_zoom','14');
INSERT INTO `qs_config` VALUES ('60','map_center_x','112.559468');
INSERT INTO `qs_config` VALUES ('61','map_center_y','37.845738');
INSERT INTO `qs_config` VALUES ('62','map_ak','np21m1qLWsuF4gGwzSwYMpC4');
INSERT INTO `qs_config` VALUES ('63','app_link','1');
INSERT INTO `qs_config` VALUES ('64','filter','');
INSERT INTO `qs_config` VALUES ('65','filter_tips','��������Ϣ�а����д��');
INSERT INTO `qs_config` VALUES ('66','filter_ip','');
INSERT INTO `qs_config` VALUES ('67','filter_ip_tips','����IP�Ѿ���������ֹ���ʣ�����ϵ��վ����Ա��');
INSERT INTO `qs_config` VALUES ('68','meal_min_remind','0');
INSERT INTO `qs_config` VALUES ('69','reg_service','1');
INSERT INTO `qs_config` VALUES ('70','operation_mode','1');
INSERT INTO `qs_config` VALUES ('71','tpl_company','default');
INSERT INTO `qs_config` VALUES ('72','tpl_personal','default');
INSERT INTO `qs_config` VALUES ('73','open_csrf','1');
INSERT INTO `qs_config` VALUES ('74','simple_open','1');
INSERT INTO `qs_config` VALUES ('75','simple_add_audit','1');
INSERT INTO `qs_config` VALUES ('76','simple_edit_audit','-1');
INSERT INTO `qs_config` VALUES ('77','simple_tel_repeat','0');
INSERT INTO `qs_config` VALUES ('78','simple_tel_edit','0');
INSERT INTO `qs_config` VALUES ('79','login_com_audit_email','0');
INSERT INTO `qs_config` VALUES ('80','login_com_audit_mobile','0');
INSERT INTO `qs_config` VALUES ('81','login_per_audit_email','0');
INSERT INTO `qs_config` VALUES ('82','login_per_audit_mobile','0');
INSERT INTO `qs_config` VALUES ('83','jobsearch_purview','1');
INSERT INTO `qs_config` VALUES ('84','jobsearch_type','2');
INSERT INTO `qs_config` VALUES ('85','jobsearch_sort','1');
INSERT INTO `qs_config` VALUES ('86','resumesearch_purview','1');
INSERT INTO `qs_config` VALUES ('87','resumesearch_type','2');
INSERT INTO `qs_config` VALUES ('88','resumesearch_sort','1');
INSERT INTO `qs_config` VALUES ('89','contact_img_com','1');
INSERT INTO `qs_config` VALUES ('90','contact_img_job','1');
INSERT INTO `qs_config` VALUES ('91','contact_img_resume','1');
INSERT INTO `qs_config` VALUES ('92','hunterjobsearch_purview','1');
INSERT INTO `qs_config` VALUES ('93','hunterjobsearch_type','2');
INSERT INTO `qs_config` VALUES ('94','hunterjobsearch_sort','1');
INSERT INTO `qs_config` VALUES ('95','courseearch_purview','1');
INSERT INTO `qs_config` VALUES ('96','courseearch_type','2');
INSERT INTO `qs_config` VALUES ('97','courseearch_sort','1');
INSERT INTO `qs_config` VALUES ('98','open_comment','1');
INSERT INTO `qs_config` VALUES ('99','open_commentaudit','0');
INSERT INTO `qs_config` VALUES ('100','qq_apiopen','1');
INSERT INTO `qs_config` VALUES ('101','qq_logintype','1');
INSERT INTO `qs_config` VALUES ('102','qq_appid','');
INSERT INTO `qs_config` VALUES ('103','qq_appkey','');
INSERT INTO `qs_config` VALUES ('104','sina_apiopen','1');
INSERT INTO `qs_config` VALUES ('105','sina_appkey','');
INSERT INTO `qs_config` VALUES ('106','sina_appsecret','');
INSERT INTO `qs_config` VALUES ('107','taobao_apiopen','1');
INSERT INTO `qs_config` VALUES ('108','taobao_appkey','');
INSERT INTO `qs_config` VALUES ('109','taobao_appsecret','');
INSERT INTO `qs_config` VALUES ('110','tpl_train','default');
INSERT INTO `qs_config` VALUES ('111','operation_train_mode','1');
INSERT INTO `qs_config` VALUES ('112','train_points_byname','����');
INSERT INTO `qs_config` VALUES ('113','train_points_quantifier','��');
INSERT INTO `qs_config` VALUES ('114','train_points_min_remind','10');
INSERT INTO `qs_config` VALUES ('115','train_payment_rate','10');
INSERT INTO `qs_config` VALUES ('116','train_payment_min','10');
INSERT INTO `qs_config` VALUES ('117','train_reg_service','1');
INSERT INTO `qs_config` VALUES ('118','train_meal_min_remind','0');
INSERT INTO `qs_config` VALUES ('119','audit_add_train','0');
INSERT INTO `qs_config` VALUES ('120','audit_edit_train','-1');
INSERT INTO `qs_config` VALUES ('121','audit_verifytrain_addcourse','1');
INSERT INTO `qs_config` VALUES ('122','audit_verifytrain_editcourse','-1');
INSERT INTO `qs_config` VALUES ('123','audit_unexaminedtrain_addcourse','1');
INSERT INTO `qs_config` VALUES ('124','audit_unexaminedtrain_editcourse','-1');
INSERT INTO `qs_config` VALUES ('125','audit_verifytrain_addtea','1');
INSERT INTO `qs_config` VALUES ('126','audit_verifytrain_edittea','-1');
INSERT INTO `qs_config` VALUES ('127','audit_unexaminedtrain_addtea','1');
INSERT INTO `qs_config` VALUES ('128','audit_unexaminedtrain_edittea','-1');
INSERT INTO `qs_config` VALUES ('129','login_train_audit_email','0');
INSERT INTO `qs_config` VALUES ('130','login_train_audit_mobile','0');
INSERT INTO `qs_config` VALUES ('131','audit_verifytrain_addimg','1');
INSERT INTO `qs_config` VALUES ('132','audit_unexaminedtrain_addimg','2');
INSERT INTO `qs_config` VALUES ('133','audit_verifytrain_addnews','1');
INSERT INTO `qs_config` VALUES ('134','audit_verifytrain_editnews','-1');
INSERT INTO `qs_config` VALUES ('135','audit_unexaminedtrain_addnews','2');
INSERT INTO `qs_config` VALUES ('136','audit_unexaminedtrain_editnews','-1');
INSERT INTO `qs_config` VALUES ('137','outdated_course','0');
INSERT INTO `qs_config` VALUES ('138','course_add_days','15');
INSERT INTO `qs_config` VALUES ('139','course_add_days_min','10');
INSERT INTO `qs_config` VALUES ('140','train_repeat','1');
INSERT INTO `qs_config` VALUES ('141','course_list_max','1000');
INSERT INTO `qs_config` VALUES ('142','certificate_train_max_size','1024');
INSERT INTO `qs_config` VALUES ('143','logo_train_max_size','500');
INSERT INTO `qs_config` VALUES ('144','apply_course_max','30');
INSERT INTO `qs_config` VALUES ('145','showcoursecontact','1');
INSERT INTO `qs_config` VALUES ('146','contact_img_train','1');
INSERT INTO `qs_config` VALUES ('147','contact_img_course','1');
INSERT INTO `qs_config` VALUES ('148','hunter_add_days','15');
INSERT INTO `qs_config` VALUES ('149','hunter_add_days_min','10');
INSERT INTO `qs_config` VALUES ('150','hunter_photo_max','1024');
INSERT INTO `qs_config` VALUES ('151','hunter_list_max','1000');
INSERT INTO `qs_config` VALUES ('152','showhunterjobcontact','1');
INSERT INTO `qs_config` VALUES ('153','contact_img_hunter','1');
INSERT INTO `qs_config` VALUES ('154','contact_img_hunterjob','1');
INSERT INTO `qs_config` VALUES ('155','audit_add_hunter','0');
INSERT INTO `qs_config` VALUES ('156','audit_edit_hunter','-1');
INSERT INTO `qs_config` VALUES ('157','audit_verifyhunter_addjob','1');
INSERT INTO `qs_config` VALUES ('158','audit_verifyhunter_editjob','-1');
INSERT INTO `qs_config` VALUES ('159','audit_unexaminedhunter_addjob','1');
INSERT INTO `qs_config` VALUES ('160','audit_unexaminedhunter_editjob','-1');
INSERT INTO `qs_config` VALUES ('161','login_hunter_audit_email','0');
INSERT INTO `qs_config` VALUES ('162','login_hunter_audit_mobile','0');
INSERT INTO `qs_config` VALUES ('163','outdated_hunter_jobs','0');
INSERT INTO `qs_config` VALUES ('164','hunter_repeat','1');
INSERT INTO `qs_config` VALUES ('165','operation_hunter_mode','1');
INSERT INTO `qs_config` VALUES ('166','hunter_points_byname','����');
INSERT INTO `qs_config` VALUES ('167','hunter_points_quantifier','��');
INSERT INTO `qs_config` VALUES ('168','hunter_points_min_remind','10');
INSERT INTO `qs_config` VALUES ('169','hunter_payment_rate','10');
INSERT INTO `qs_config` VALUES ('170','hunter_payment_min','10');
INSERT INTO `qs_config` VALUES ('171','hunter_reg_service','1');
INSERT INTO `qs_config` VALUES ('172','hunter_meal_min_remind','0');
INSERT INTO `qs_config` VALUES ('173','com_pointsmode_refresh_space','0');
INSERT INTO `qs_config` VALUES ('174','com_pointsmode_refresh_time','0');
INSERT INTO `qs_config` VALUES ('175','per_refresh_resume_space','0');
INSERT INTO `qs_config` VALUES ('176','per_refresh_resume_time','0');
INSERT INTO `qs_config` VALUES ('177','closetime','1');
INSERT INTO `qs_config` VALUES ('178','hunter_pointsmode_refresh_space','0');
INSERT INTO `qs_config` VALUES ('179','hunter_pointsmode_refresh_time','0');
INSERT INTO `qs_config` VALUES ('180','train_pointsmode_refresh_space','0');
INSERT INTO `qs_config` VALUES ('181','train_pointsmode_refresh_time','0');
INSERT INTO `qs_config` VALUES ('182','setmeal_to_points','1');
INSERT INTO `qs_config` VALUES ('183','showapplycontact','0');
INSERT INTO `qs_config` VALUES ('184','weixin_apiopen','0');
INSERT INTO `qs_config` VALUES ('185','weixin_appsecret','');
INSERT INTO `qs_config` VALUES ('186','weixin_img','weixin_img.jpg');
INSERT INTO `qs_config` VALUES ('187','weixin_first_pic','first_pic.gif');
INSERT INTO `qs_config` VALUES ('188','weixin_default_pic','weixin_default_pic.png');
INSERT INTO `qs_config` VALUES ('189','weixin_apptoken','');
INSERT INTO `qs_config` VALUES ('190','weixin_appid','');
INSERT INTO `qs_config` VALUES ('191','wap_domain','');
INSERT INTO `qs_config` VALUES ('192','search_time','0');
INSERT INTO `qs_config` VALUES ('193','shake_range','1');
INSERT INTO `qs_config` VALUES ('194','access_token','');
INSERT INTO `qs_config` VALUES ('195','expires_addtime','1462775307');
INSERT INTO `qs_config` VALUES ('196','weixin_scan_reg','0');
INSERT INTO `qs_config` VALUES ('197','weixin_scan_bind','0');
INSERT INTO `qs_config` VALUES ('198','weixin_mpname','');
INSERT INTO `qs_config` VALUES ('199','weixin_mpnumber','');
INSERT INTO `qs_config` VALUES ('200','weixin_scan_login','0');
INSERT INTO `qs_config` VALUES ('201','weixin_encoding_aes_key','');
INSERT INTO `qs_config` VALUES ('202','android_download','phone/apk/CRRecruit.apk');
INSERT INTO `qs_config` VALUES ('203','ios_download','');
INSERT INTO `qs_config` VALUES ('204','app_version','');
INSERT INTO `qs_config` VALUES ('205','ios_version','');
INSERT INTO `qs_config` VALUES ('206','content_key_link','2');
INSERT INTO `qs_config` VALUES ('207','showresumecontact_wap','2');
INSERT INTO `qs_config` VALUES ('208','showjobcontact_wap','1');
INSERT INTO `qs_config` VALUES ('209','body_bgimg','');
INSERT INTO `qs_config` VALUES ('210','is_superposition','2');
INSERT INTO `qs_config` VALUES ('211','superposition_time','7');
INSERT INTO `qs_config` VALUES ('212','reset_service','1');
INSERT INTO `qs_config` VALUES ('213','reg_com_set','');
INSERT INTO `qs_config` VALUES ('214','uc_open','0');
INSERT INTO `qs_config` VALUES ('215','check_reg_email','0');
INSERT INTO `qs_config` VALUES ('216','user_unlogin_time','');
INSERT INTO `qs_config` VALUES ('217','ordinary_apply_job','0');
INSERT INTO `qs_config` VALUES ('218','site_introduce','');
INSERT INTO `qs_config` VALUES ('219','company_sms','1');
INSERT INTO `qs_config` VALUES ('220','weixin_mch_id','');
INSERT INTO `qs_config` VALUES ('221','create_resume_points_max','200');
INSERT INTO `qs_config` VALUES ('222','resume_refresh_points_max','30');
INSERT INTO `qs_config` VALUES ('223','apply_jobs_points_max','20');
INSERT INTO `qs_config` VALUES ('224','reg_mobile_type','1');
INSERT INTO `qs_config` VALUES ('225','reg_email_type','1');
INSERT INTO `qs_config` VALUES ('226','reg_prefix','sp_');
INSERT INTO `qs_config` VALUES ('227','reg_weixin_password_tpye','1');
INSERT INTO `qs_config` VALUES ('228','reg_weixin_password','123456');
INSERT INTO `qs_config` VALUES ('229','vip_com_contact','1');
INSERT INTO `qs_config` VALUES ('230','weixin_signday','10');
INSERT INTO `qs_config` VALUES ('231','email_reg_prefix','em_');
INSERT INTO `qs_config` VALUES ('232','third_reg_prefix','third_');
INSERT INTO `qs_config` VALUES ('233','subsite_method','1');
INSERT INTO `qs_config` VALUES ('234','company_url','');
INSERT INTO `qs_config` VALUES ('235','job_url','');
INSERT INTO `qs_config` VALUES ('236','resume_url','');
INSERT INTO `qs_config` VALUES ('237','news_url','');
INSERT INTO `qs_config` VALUES ('238','explain_url','');
INSERT INTO `qs_config` VALUES ('239','notice_url','');
INSERT INTO `qs_config` VALUES ('240','jobfair_url','');
INSERT INTO `qs_config` VALUES ('241','train_url','');
INSERT INTO `qs_config` VALUES ('242','hunter_url','');
INSERT INTO `qs_config` VALUES ('243','sel_subsite_method','0');
INSERT INTO `qs_config` VALUES ('244','m_explain_url','');
INSERT INTO `qs_config` VALUES ('245','m_news_url','');
INSERT INTO `qs_config` VALUES ('246','m_resume_url','');
INSERT INTO `qs_config` VALUES ('247','m_job_url','');
INSERT INTO `qs_config` VALUES ('248','m_notice_url','');
INSERT INTO `qs_config` VALUES ('249','m_company_url','');
INSERT INTO `qs_config` VALUES ('250','m_jobfair_url','');
DROP TABLE IF EXISTS `qs_consultant`;
CREATE TABLE `qs_consultant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `pic` text,
  `qq` int(15) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_content_key_link`;
CREATE TABLE `qs_content_key_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_cooperate_campus`;
CREATE TABLE `qs_cooperate_campus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campusname` varchar(60) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `contents` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `companyname` (`campusname`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_cooperate_campus_img`;
CREATE TABLE `qs_cooperate_campus_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campus_id` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(120) NOT NULL,
  `addtime` int(100) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campus_id` (`campus_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_course`;
CREATE TABLE `qs_course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `recommend` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `trainname` varchar(30) NOT NULL,
  `train_id` int(10) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(15) NOT NULL,
  `classtype` smallint(5) unsigned NOT NULL,
  `classtype_cn` varchar(15) NOT NULL,
  `teacher_id` int(5) unsigned NOT NULL,
  `teacher_cn` varchar(15) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `train_object` varchar(50) NOT NULL,
  `train_certificate` varchar(30) NOT NULL,
  `classhour` smallint(10) unsigned NOT NULL,
  `train_expenses` int(10) unsigned NOT NULL,
  `favour_expenses` int(10) unsigned NOT NULL,
  `contents` varchar(1800) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(15) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `likekey` varchar(220) NOT NULL,
  `tpl` varchar(60) NOT NULL,
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `classtype` (`classtype`),
  KEY `category` (`category`),
  KEY `sdistrict` (`sdistrict`),
  KEY `district` (`district`),
  KEY `train_id` (`train_id`),
  KEY `starttime` (`starttime`),
  KEY `setmeal_deadline` (`setmeal_deadline`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_course_contact`;
CREATE TABLE `qs_course_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `contact` varchar(80) NOT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `telephone` varchar(80) NOT NULL,
  `address` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `contact_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qq_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_account`;
CREATE TABLE `qs_crm_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountname` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `amount_money` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_admin`;
CREATE TABLE `qs_crm_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `purview` text NOT NULL,
  `rank` varchar(32) NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crm_admin` VALUES ('1','crm','123@qq.com','','75fd909ce33008b62f5c63c38ce171c4','nE0?Fr','all','��������Ա','1462333283','1462333290','110.177.50.44');
DROP TABLE IF EXISTS `qs_crm_admin_log`;
CREATE TABLE `qs_crm_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `add_time` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crm_admin_log` VALUES ('1','crm','1462333290','�ɹ���¼','110.177.50.44','1');
DROP TABLE IF EXISTS `qs_crm_business_dairy`;
CREATE TABLE `qs_crm_business_dairy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crm_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_id` (`crm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_category`;
CREATE TABLE `qs_crm_category` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_parentid` int(10) unsigned NOT NULL,
  `c_alias` char(30) NOT NULL,
  `c_name` char(30) NOT NULL,
  `c_order` int(10) NOT NULL,
  `c_index` char(1) NOT NULL,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `c_alias` (`c_alias`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crm_category` VALUES ('1','0','QS_crm_status','���ڸ���','0','z','1');
INSERT INTO `qs_crm_category` VALUES ('2','0','QS_crm_status','����ͻ�','0','y','1');
INSERT INTO `qs_crm_category` VALUES ('3','0','QS_crm_status','�Ѿ�����','0','y','1');
INSERT INTO `qs_crm_category` VALUES ('4','0','QS_crm_type','���Ͽͻ�','0','x','0');
INSERT INTO `qs_crm_category` VALUES ('5','0','QS_crm_type','���¿ͻ�','0','x','0');
INSERT INTO `qs_crm_category` VALUES ('6','0','QS_crm_grade','��ͨ�ͻ�','0','p','0');
INSERT INTO `qs_crm_category` VALUES ('7','0','QS_crm_grade','�ж˿ͻ�','0','z','0');
INSERT INTO `qs_crm_category` VALUES ('8','0','QS_crm_grade','�߶˿ͻ�','0','g','0');
INSERT INTO `qs_crm_category` VALUES ('9','0','QS_crm_source','��Դ��','0','z','0');
INSERT INTO `qs_crm_category` VALUES ('10','0','QS_crm_source','������ϵ','0','z','0');
INSERT INTO `qs_crm_category` VALUES ('11','0','QS_crm_source','���ѽ���','0','p','0');
INSERT INTO `qs_crm_category` VALUES ('12','0','QS_crm_trustworthiness','��','0','c','0');
INSERT INTO `qs_crm_category` VALUES ('13','0','QS_crm_trustworthiness','����','0','l','0');
INSERT INTO `qs_crm_category` VALUES ('14','0','QS_crm_trustworthiness','����','0','y','0');
INSERT INTO `qs_crm_category` VALUES ('16','0','QS_crm_department','����','0','c','0');
INSERT INTO `qs_crm_category` VALUES ('17','0','QS_crm_department','���۲�','0','x','0');
DROP TABLE IF EXISTS `qs_crm_category_group`;
CREATE TABLE `qs_crm_category_group` (
  `g_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_alias` varchar(60) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `g_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crm_category_group` VALUES ('1','QS_crm_status','�ͻ�״̬','1');
INSERT INTO `qs_crm_category_group` VALUES ('2','QS_crm_type','�ͻ�����','1');
INSERT INTO `qs_crm_category_group` VALUES ('3','QS_crm_grade','�ͻ��ȼ�','1');
INSERT INTO `qs_crm_category_group` VALUES ('4','QS_crm_source','�ͻ���Դ','1');
INSERT INTO `qs_crm_category_group` VALUES ('5','QS_crm_trustworthiness','���õȼ�','1');
INSERT INTO `qs_crm_category_group` VALUES ('6','QS_crm_department','���Ź���','1');
DROP TABLE IF EXISTS `qs_crm_client`;
CREATE TABLE `qs_crm_client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crm_id` int(10) unsigned NOT NULL,
  `company_id` int(10) NOT NULL,
  `companyname` varchar(80) NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `district_cn` varchar(30) NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(120) NOT NULL,
  `note` text NOT NULL,
  `addtime` int(10) NOT NULL,
  `nexttime` int(10) NOT NULL,
  `followtime` int(10) NOT NULL,
  `grade_id` int(10) NOT NULL,
  `status_id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `source_id` int(10) NOT NULL,
  `trustworthiness_id` int(10) NOT NULL,
  `dealtime` int(10) unsigned NOT NULL,
  `edittime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_id` (`crm_id`),
  KEY `addtime` (`addtime`),
  KEY `nexttime` (`nexttime`),
  KEY `followtime` (`followtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_client_demand`;
CREATE TABLE `qs_crm_client_demand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `client_other` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_client_financial`;
CREATE TABLE `qs_crm_client_financial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `client_bank` varchar(60) NOT NULL,
  `client_bank_acc` varchar(80) NOT NULL,
  `client_note` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_client_log`;
CREATE TABLE `qs_crm_client_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `addtime` int(10) NOT NULL,
  `client_log` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_client_other`;
CREATE TABLE `qs_crm_client_other` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `client_other` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_client_tmp`;
CREATE TABLE `qs_crm_client_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crm_id` int(10) unsigned NOT NULL,
  `company_id` int(10) NOT NULL,
  `companyname` varchar(80) NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `district_cn` varchar(30) NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(120) NOT NULL,
  `note` text NOT NULL,
  `addtime` int(10) NOT NULL,
  `nexttime` int(10) NOT NULL,
  `followtime` int(10) NOT NULL,
  `grade_id` int(10) NOT NULL,
  `status_id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `source_id` int(10) NOT NULL,
  `trustworthiness_id` int(10) NOT NULL,
  `dealtime` int(10) unsigned NOT NULL,
  `edittime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_id` (`crm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_contacts`;
CREATE TABLE `qs_crm_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crm_id` int(10) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `web` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `w_word` (`fullname`),
  KEY `w_hot` (`tel`),
  KEY `crm_id` (`crm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_crons`;
CREATE TABLE `qs_crm_crons` (
  `cronid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) unsigned NOT NULL,
  `admin_set` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `filename` varchar(60) NOT NULL,
  `lastrun` int(10) unsigned NOT NULL,
  `nextrun` int(10) unsigned NOT NULL,
  `weekday` tinyint(1) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` varchar(60) NOT NULL,
  PRIMARY KEY (`cronid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crm_crons` VALUES ('1','1','1','δ�ɽ��ͻ�������Դ��','restore_nodeal.php','1462333285','1462383000','-1','-1','0','30');
INSERT INTO `qs_crm_crons` VALUES ('2','1','1','δ�����ͻ�������Դ��','restore_nofollow.php','1462333290','1462381200','-1','-1','1','0');
DROP TABLE IF EXISTS `qs_crm_doc`;
CREATE TABLE `qs_crm_doc` (
  `h_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `h_typeid` smallint(5) unsigned NOT NULL,
  `h_filename` varchar(200) NOT NULL,
  `h_fileurl` varchar(200) NOT NULL,
  `h_order` int(10) NOT NULL DEFAULT '0',
  `h_color` varchar(7) NOT NULL,
  `h_strong` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_doc_category`;
CREATE TABLE `qs_crm_doc_category` (
  `c_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(80) NOT NULL,
  `c_order` int(11) NOT NULL DEFAULT '0',
  `c_adminset` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crm_doc_category` VALUES ('1','��ͬ�б�','0','1');
INSERT INTO `qs_crm_doc_category` VALUES ('2','����۸�','0','1');
INSERT INTO `qs_crm_doc_category` VALUES ('3','�Żݻ','0','1');
DROP TABLE IF EXISTS `qs_crm_employee`;
CREATE TABLE `qs_crm_employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sex` varchar(5) NOT NULL DEFAULT '��',
  `birthday` int(10) unsigned NOT NULL,
  `education` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `department` int(11) unsigned NOT NULL DEFAULT '0',
  `job_position` varchar(20) NOT NULL DEFAULT '',
  `wage` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postalcode` int(6) NOT NULL DEFAULT '0',
  `remark` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_my_contacts`;
CREATE TABLE `qs_crm_my_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crm_id` int(10) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `web` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `w_word` (`fullname`),
  KEY `w_hot` (`tel`),
  KEY `crm_id` (`crm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_my_contacts_group`;
CREATE TABLE `qs_crm_my_contacts_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(30) NOT NULL,
  `admin_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_report`;
CREATE TABLE `qs_crm_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crm_id` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `client_number` int(11) unsigned NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `client_addtime` int(10) unsigned NOT NULL,
  `last_followtime` int(10) NOT NULL,
  `last_follow_text` text NOT NULL,
  `next_followtime` int(10) unsigned NOT NULL,
  `client_status` varchar(255) NOT NULL,
  `client_demand` text NOT NULL,
  `client_remark` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_sendemail`;
CREATE TABLE `qs_crm_sendemail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `addtime` int(10) unsigned NOT NULL,
  `admin_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_sms`;
CREATE TABLE `qs_crm_sms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `addtime` int(10) unsigned NOT NULL,
  `admin_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crm_users_config`;
CREATE TABLE `qs_crm_users_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) NOT NULL,
  `config_value` int(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crm_users_config` VALUES ('1','max_receive_client_num','30');
INSERT INTO `qs_crm_users_config` VALUES ('2','follow_days','7');
INSERT INTO `qs_crm_users_config` VALUES ('3','deal_days','15');
DROP TABLE IF EXISTS `qs_crm_workplan`;
CREATE TABLE `qs_crm_workplan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crm_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_id` (`crm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_crons`;
CREATE TABLE `qs_crons` (
  `cronid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) unsigned NOT NULL,
  `admin_set` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `filename` varchar(60) NOT NULL,
  `lastrun` int(10) unsigned NOT NULL,
  `nextrun` int(10) unsigned NOT NULL,
  `weekday` tinyint(1) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` varchar(60) NOT NULL,
  PRIMARY KEY (`cronid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_crons` VALUES ('1','1','1','ÿ���������Ա������־','clear_admin_log.php','1462342514','1464796800','-1','1','0','0');
INSERT INTO `qs_crons` VALUES ('2','1','1','ÿ����������ļ�','clear_all_cache.php','1462580769','1463158800','5','-1','1','0');
INSERT INTO `qs_crons` VALUES ('3','1','1','��ʱ�ƹ�����','clear_promotion.php','1462754851','1462809600','-1','-1','0','0');
INSERT INTO `qs_crons` VALUES ('4','0','1','ÿ������ͳ��','stat_category.php','0','0','-1','-1','0','0');
INSERT INTO `qs_crons` VALUES ('5','1','1','ÿ�������Ա������־','clear_members_log.php','1462411356','1464796800','-1','1','0','0');
INSERT INTO `qs_crons` VALUES ('6','1','1','ÿСʱ�������ְλ','clear_expired_jobs.php','1462763156','1462766460','-1','-1','-1','1');
INSERT INTO `qs_crons` VALUES ('7','1','1','ÿ���������΢��Ƹ','clear_expired_simple.php','1462754928','1462820400','-1','-1','3','0');
INSERT INTO `qs_crons` VALUES ('8','0','1','ÿ�����ɰٶȿ���ƽ̨����','make_baiduxml.php','0','0','-1','-1','3','0');
INSERT INTO `qs_crons` VALUES ('9','1','1','ְλ���ķ����ʼ�','subscribe.php','1462754929','1463328000','0','-1','0','');
INSERT INTO `qs_crons` VALUES ('10','1','1','ί�м����Զ�����ְλ','auto_apply_jobs.php','1462755342','1462813260','-1','-1','0','1');
INSERT INTO `qs_crons` VALUES ('11','1','1','�û�δ��¼�ʼ�����','remind_user_login.php','1462430713','1462809600','1','-1','0','0');
INSERT INTO `qs_crons` VALUES ('12','1','1','ÿ�����ù����ײͻ�Ա���ײ�Ϊָ���ײ�','clear_members_setmeal.php','1462755342','1462813260','-1','-1','0','1');
INSERT INTO `qs_crons` VALUES ('13','1','1','ÿ���Զ�ˢ��ԤԼˢ�µ�ְλ','auto_refresh_jobs.php','1462755351','1462809600','-1','-1','0','0');
INSERT INTO `qs_crons` VALUES ('14','1','1','ÿ���Զ�ˢ�¼���','auto_refresh_resume.php','1462755352','1462809600','-1','-1','0','0');
DROP TABLE IF EXISTS `qs_evaluation_option`;
CREATE TABLE `qs_evaluation_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `paper_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `paper_id` (`paper_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_evaluation_paper`;
CREATE TABLE `qs_evaluation_paper` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL COMMENT '????????',
  `title` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL COMMENT '???logo',
  `question_num` int(10) unsigned NOT NULL COMMENT '?????',
  `timelimit` int(10) unsigned NOT NULL COMMENT '???????��????',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '??????��?????0???',
  `keywords` varchar(255) NOT NULL COMMENT '?????',
  `description` varchar(255) NOT NULL COMMENT '???????',
  `explain` text NOT NULL COMMENT '?��????',
  `join_num` int(10) unsigned NOT NULL COMMENT '????????',
  `suitable_crowd` varchar(100) NOT NULL COMMENT '???????',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_evaluation_question`;
CREATE TABLE `qs_evaluation_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `paper_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paper_id` (`paper_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_evaluation_record`;
CREATE TABLE `qs_evaluation_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paper_id` int(10) unsigned NOT NULL,
  `paper_title` varchar(100) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_addtime` (`uid`,`addtime`),
  KEY `uid_type_id` (`uid`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_evaluation_type`;
CREATE TABLE `qs_evaluation_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `suitable_crowd` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_evaluation_type` VALUES ('1','������֪����','','�Լ�����ϲ��ʲô���ʺ���ʲô��ֻ�����Լ�ϲ���ġ��ʺϵĹ����������ڹ����и��õ��ھ��Լ���Ǳ����������֪���ԣ�������ְҵ��Ȥ����Ϊ�������ͣ�����������ȷ�Լ�����Ȥ���ͣ��˽���ϲ����ְҵ������ְҵ���ͣ�����������ְҵѡ���ְҵ��ơ�','ȫ����Ա','0');
INSERT INTO `qs_evaluation_type` VALUES ('2','ְҵ�������','','���������ְ����ְ������ۻ����ҵĹ�����������ѡ�����Ƿ�֪���Լ��ܹ�ʤ�ι�������ѧ����ְ�ۺϲ������Ӧ���ҵ����ְ�ص㣬����ͨ����������ģ�ͣ�ͨ���ò�����ȫ��������ʤ�����ʡ���֪������������ֵ�ۡ���ְҵ��Ȥ���˽��Լ������ƺͲ��㣬�����Լ�����ְҵ���ġ�','����ְ����Ӧ���ҵ��','0');
INSERT INTO `qs_evaluation_type` VALUES ('3','רҵ�˲Ų���','','̤��ְ�����꣬���������������ӱ�������ظ������Ƿ�����������չ��ƿ������������Լ���רҵ��λ�ϵ�ʤ������ͨ����ϵ�в�����Ʒ��������ȷ�Լ��������������̰壬����ø�������Եĸ�λ������չ���飬�������˵�ְҵ��չ��Ҫ����ʵ�֡�����Ϊ�����Ĺ�������Ϊ��ҵӮ�þ������ƣ���Ҫ�Ĳ����ǹ�������֪ʶ������Ҫʵ�ʲ���ָ����','��רҵ��λ��Ա','0');
INSERT INTO `qs_evaluation_type` VALUES ('4','�����˲Ų���','','������ӹ����λʱ�����Ƿ���������������������󣿹�����Ա��λʤ�������������������������PSA�龳ģ�⼼�����Թ�����Ա�Ļ�����̬��ѧϰ������������������ֵ�۵�ά�Ƚ��п��죬��ȷ��������̰壬Ϊ���˷�չ�ṩ��������ѧϰ������ʵ���뻷��֧�ֵ�������Ľ��顣','���㼶������Ա','0');
DROP TABLE IF EXISTS `qs_explain`;
CREATE TABLE `qs_explain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `type_id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) NOT NULL DEFAULT '0',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL,
  `show_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_explain` VALUES ('1','0','1','��ϵ����','','','0','1','http://','','','1','1264332774','0');
INSERT INTO `qs_explain` VALUES ('2','0','1','��վ���','','','0','1','http://','','','1','1266987290','0');
INSERT INTO `qs_explain` VALUES ('4','0','1','������Ӯ','','','0','1','','','','1','1407755536','0');
INSERT INTO `qs_explain` VALUES ('5','0','1','��վ����','','','0','1','','','','1','1407755601','0');
INSERT INTO `qs_explain` VALUES ('6','0','1','ְ��ָ��','','','0','1','','','','1','1407755714','0');
INSERT INTO `qs_explain` VALUES ('7','0','1','�շѱ�׼','','','0','1','','','','1','1407755891','0');
DROP TABLE IF EXISTS `qs_explain_category`;
CREATE TABLE `qs_explain_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_explain_category` VALUES ('1','��������','0','1');
DROP TABLE IF EXISTS `qs_feedback`;
CREATE TABLE `qs_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `infotype` tinyint(3) unsigned NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `addtime` int(10) NOT NULL,
  `tel` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_gifts`;
CREATE TABLE `qs_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_id` int(10) unsigned NOT NULL,
  `account` varchar(160) NOT NULL,
  `password` varchar(160) NOT NULL,
  `usettime` int(10) unsigned NOT NULL DEFAULT '0',
  `useuid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  KEY `addtime` (`addtime`),
  KEY `t_id` (`t_id`),
  KEY `usettime` (`usettime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_gifts_type`;
CREATE TABLE `qs_gifts_type` (
  `t_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(160) NOT NULL,
  `t_repeat` int(10) unsigned NOT NULL DEFAULT '1',
  `t_pre` varchar(180) NOT NULL,
  `t_starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `t_endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t_effective` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `t_amount` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_gifts_type` VALUES ('1','δ������Ʒ��','1','74cms','0','0','1','100');
DROP TABLE IF EXISTS `qs_help`;
CREATE TABLE `qs_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`order`,`id`),
  KEY `focos_article_order` (`order`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_help_category`;
CREATE TABLE `qs_help_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_help_category` VALUES ('1','0','�˻�����','3');
INSERT INTO `qs_help_category` VALUES ('2','0','������ҵ','2');
INSERT INTO `qs_help_category` VALUES ('3','0','���Ǹ���','1');
INSERT INTO `qs_help_category` VALUES ('4','1','ע�����¼','0');
INSERT INTO `qs_help_category` VALUES ('5','1','�����һ�������','0');
INSERT INTO `qs_help_category` VALUES ('6','1','�˻�״̬','0');
INSERT INTO `qs_help_category` VALUES ('7','1','������ͷ��','0');
INSERT INTO `qs_help_category` VALUES ('8','1','�ֻ���������֤','0');
INSERT INTO `qs_help_category` VALUES ('9','2','ְλ���������','0');
INSERT INTO `qs_help_category` VALUES ('10','2','ְλ�ƹ�','0');
INSERT INTO `qs_help_category` VALUES ('11','2','��Ƹ����','0');
INSERT INTO `qs_help_category` VALUES ('12','2','��Ƹ��','0');
INSERT INTO `qs_help_category` VALUES ('13','2','��ֵ������','0');
INSERT INTO `qs_help_category` VALUES ('14','2','ʹ����Ʒ��','0');
INSERT INTO `qs_help_category` VALUES ('15','2','�������ͼ','0');
INSERT INTO `qs_help_category` VALUES ('16','3','�������������','0');
INSERT INTO `qs_help_category` VALUES ('17','3','��ְ����','0');
DROP TABLE IF EXISTS `qs_hotword`;
CREATE TABLE `qs_hotword` (
  `w_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_word` varchar(120) NOT NULL,
  `w_hot` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`w_id`),
  KEY `w_word` (`w_word`),
  KEY `w_hot` (`w_hot`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_hotword` VALUES ('44','��Ӫ����','70');
INSERT INTO `qs_hotword` VALUES ('45','ˮ�繤','207');
INSERT INTO `qs_hotword` VALUES ('46','���','5475');
INSERT INTO `qs_hotword` VALUES ('47','�ͷ�','656');
INSERT INTO `qs_hotword` VALUES ('48','����֧��','436');
INSERT INTO `qs_hotword` VALUES ('49','ƽ�����ʦ','1749');
INSERT INTO `qs_hotword` VALUES ('50','�绰����','2930');
INSERT INTO `qs_hotword` VALUES ('51','ǰ̨�Ӵ�','1045');
INSERT INTO `qs_hotword` VALUES ('52','����','1457');
INSERT INTO `qs_hotword` VALUES ('53','��������','3365');
INSERT INTO `qs_hotword` VALUES ('54','ƽ�����','2383');
INSERT INTO `qs_hotword` VALUES ('55','�ܾ�������','1372');
INSERT INTO `qs_hotword` VALUES ('58','������������','212');
INSERT INTO `qs_hotword` VALUES ('59','�߼���ͷ����','10');
INSERT INTO `qs_hotword` VALUES ('60','��ͷ��������','14');
INSERT INTO `qs_hotword` VALUES ('61','��ͷ����','36');
INSERT INTO `qs_hotword` VALUES ('62','��ҳ���','232');
INSERT INTO `qs_hotword` VALUES ('67','�绰����רԱ','201');
INSERT INTO `qs_hotword` VALUES ('68','���ؾ���','216');
INSERT INTO `qs_hotword` VALUES ('70','�г�����','349');
INSERT INTO `qs_hotword` VALUES ('75','��ҳ����','62');
INSERT INTO `qs_hotword` VALUES ('77','������۹���','10');
INSERT INTO `qs_hotword` VALUES ('78','��վ����','506');
INSERT INTO `qs_hotword` VALUES ('81','����','267');
INSERT INTO `qs_hotword` VALUES ('82','�ִ�����Ա','17');
INSERT INTO `qs_hotword` VALUES ('83','���˻��','217');
INSERT INTO `qs_hotword` VALUES ('84','�������¾���','227');
INSERT INTO `qs_hotword` VALUES ('86','�������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('88','��Ŀ����','2687');
INSERT INTO `qs_hotword` VALUES ('89','Ӳ������ʦ','518');
INSERT INTO `qs_hotword` VALUES ('90','��Ŀ�߻�','30');
INSERT INTO `qs_hotword` VALUES ('92','�����鳤','10');
INSERT INTO `qs_hotword` VALUES ('93','�߻��ܼ�','267');
INSERT INTO `qs_hotword` VALUES ('94','����ƽ�����','77');
INSERT INTO `qs_hotword` VALUES ('95','���¾���','446');
INSERT INTO `qs_hotword` VALUES ('96','�ͻ��ܼ�','116');
INSERT INTO `qs_hotword` VALUES ('97','����רԱ','177');
INSERT INTO `qs_hotword` VALUES ('99','��������','19');
INSERT INTO `qs_hotword` VALUES ('101','���˲���','139');
INSERT INTO `qs_hotword` VALUES ('102','ǰ̨','896');
INSERT INTO `qs_hotword` VALUES ('103','��������','103');
INSERT INTO `qs_hotword` VALUES ('104','����רԱ','312');
INSERT INTO `qs_hotword` VALUES ('105','��ʻԱ','500');
INSERT INTO `qs_hotword` VALUES ('107','���۾���','7290');
INSERT INTO `qs_hotword` VALUES ('108','�������Ա','26');
INSERT INTO `qs_hotword` VALUES ('109','ҵ��չ����','22');
INSERT INTO `qs_hotword` VALUES ('110','ǰ̨��Ա','1062');
INSERT INTO `qs_hotword` VALUES ('111','������','1697');
INSERT INTO `qs_hotword` VALUES ('112','����','1824');
INSERT INTO `qs_hotword` VALUES ('113','PHP����Ա','498');
INSERT INTO `qs_hotword` VALUES ('115','�ŵ��Ա','19');
INSERT INTO `qs_hotword` VALUES ('117','˾��','2445');
INSERT INTO `qs_hotword` VALUES ('119','�󻮾���','201');
INSERT INTO `qs_hotword` VALUES ('120','��óҵ����','38');
INSERT INTO `qs_hotword` VALUES ('122','��óҵ�����','28');
INSERT INTO `qs_hotword` VALUES ('123','��װ���ʦ','183');
INSERT INTO `qs_hotword` VALUES ('124','��������ͷ�','44');
INSERT INTO `qs_hotword` VALUES ('125','�ƽ𾭼���','31');
INSERT INTO `qs_hotword` VALUES ('127','�������','264');
INSERT INTO `qs_hotword` VALUES ('130','�ֿ����Ա','1698');
INSERT INTO `qs_hotword` VALUES ('131','�ն�����','16');
INSERT INTO `qs_hotword` VALUES ('132','Ͷ�ʹ���','405');
INSERT INTO `qs_hotword` VALUES ('133','����Ӫ��רԱ','191');
INSERT INTO `qs_hotword` VALUES ('134','��������','633');
INSERT INTO `qs_hotword` VALUES ('140','�ͷ���Ա','307');
INSERT INTO `qs_hotword` VALUES ('142','��������','225');
INSERT INTO `qs_hotword` VALUES ('143','��ʦ','196');
INSERT INTO `qs_hotword` VALUES ('144','������������','233');
INSERT INTO `qs_hotword` VALUES ('145','��ά���ʦ','63');
INSERT INTO `qs_hotword` VALUES ('146','�������','632');
INSERT INTO `qs_hotword` VALUES ('147','����ѧԱ','16');
INSERT INTO `qs_hotword` VALUES ('148','�г�����','544');
INSERT INTO `qs_hotword` VALUES ('149','�ܾ�������','570');
INSERT INTO `qs_hotword` VALUES ('155','��ҵ�о�Ա','18');
INSERT INTO `qs_hotword` VALUES ('158','��ѯ�ܼ�','21');
INSERT INTO `qs_hotword` VALUES ('159','�ռ����ʦ','113');
INSERT INTO `qs_hotword` VALUES ('160','�������Ա','508');
INSERT INTO `qs_hotword` VALUES ('161','��������','23');
INSERT INTO `qs_hotword` VALUES ('162','�г��ܼ�','445');
INSERT INTO `qs_hotword` VALUES ('164','��װ���ʦ','56');
INSERT INTO `qs_hotword` VALUES ('165','�����ܼ�','1362');
INSERT INTO `qs_hotword` VALUES ('166','�г���չԱ','49');
INSERT INTO `qs_hotword` VALUES ('169','��ѵ����','124');
INSERT INTO `qs_hotword` VALUES ('171','ƽ����ƾ���','11');
INSERT INTO `qs_hotword` VALUES ('174','�������ʦ','62');
INSERT INTO `qs_hotword` VALUES ('176','�г�����','588');
INSERT INTO `qs_hotword` VALUES ('179','����У��','23');
INSERT INTO `qs_hotword` VALUES ('180','�������ʦ','1416');
INSERT INTO `qs_hotword` VALUES ('181','�������','55');
INSERT INTO `qs_hotword` VALUES ('183','��������','970');
INSERT INTO `qs_hotword` VALUES ('188','��ҳ���ʦ','596');
INSERT INTO `qs_hotword` VALUES ('190','����','277');
INSERT INTO `qs_hotword` VALUES ('194','����רԱ','707');
INSERT INTO `qs_hotword` VALUES ('195','�ܲ�����','158');
INSERT INTO `qs_hotword` VALUES ('198','���ʦ����','86');
INSERT INTO `qs_hotword` VALUES ('199','���۴���','9256');
INSERT INTO `qs_hotword` VALUES ('202','����Ա','16');
INSERT INTO `qs_hotword` VALUES ('206','��óרԱ','160');
INSERT INTO `qs_hotword` VALUES ('208','�������ʦ','319');
INSERT INTO `qs_hotword` VALUES ('209','�ɱ�����','35');
INSERT INTO `qs_hotword` VALUES ('210','��Ŀ����ʦ','272');
INSERT INTO `qs_hotword` VALUES ('212','�绰ҵ��Ա','56');
INSERT INTO `qs_hotword` VALUES ('214','ʵϰ��','689');
INSERT INTO `qs_hotword` VALUES ('215','�ܲ�����','136');
INSERT INTO `qs_hotword` VALUES ('216','����Ա','321');
INSERT INTO `qs_hotword` VALUES ('219','ǰ̨����','87');
INSERT INTO `qs_hotword` VALUES ('220','��Ŀʵʩ����','20');
INSERT INTO `qs_hotword` VALUES ('221','ѧ������','12');
INSERT INTO `qs_hotword` VALUES ('223','�г��ƹ㾭��','92');
INSERT INTO `qs_hotword` VALUES ('226','�������ʦ','252');
INSERT INTO `qs_hotword` VALUES ('228','����Ա','556');
INSERT INTO `qs_hotword` VALUES ('229','��վ��Ӫ����','11');
INSERT INTO `qs_hotword` VALUES ('233','���۹���ʦ','4075');
INSERT INTO `qs_hotword` VALUES ('234','��ѯ����','19');
INSERT INTO `qs_hotword` VALUES ('235','��������ʦ','590');
INSERT INTO `qs_hotword` VALUES ('240','�߼���ҵ����','30');
INSERT INTO `qs_hotword` VALUES ('243','Ӫҵ����','18');
INSERT INTO `qs_hotword` VALUES ('244','����Ա','1487');
INSERT INTO `qs_hotword` VALUES ('246','Ԥ��Ա','451');
INSERT INTO `qs_hotword` VALUES ('249','�г���չרԱ','277');
INSERT INTO `qs_hotword` VALUES ('250','��ҵ����','51');
INSERT INTO `qs_hotword` VALUES ('252','����','32');
INSERT INTO `qs_hotword` VALUES ('259','���Թ���ʦ','587');
INSERT INTO `qs_hotword` VALUES ('260','���ܲ�','16');
INSERT INTO `qs_hotword` VALUES ('261','���ڷ���ʦ','24');
INSERT INTO `qs_hotword` VALUES ('262','�ɹ�רԱ','325');
INSERT INTO `qs_hotword` VALUES ('265','��óҵ��Ա','861');
INSERT INTO `qs_hotword` VALUES ('267','װ�����ʦ','69');
INSERT INTO `qs_hotword` VALUES ('274','�������','11');
INSERT INTO `qs_hotword` VALUES ('277','Ӫҵ����','22');
INSERT INTO `qs_hotword` VALUES ('278','�ͻ�����','2952');
INSERT INTO `qs_hotword` VALUES ('279','���乤��ʦ','29');
INSERT INTO `qs_hotword` VALUES ('280','����ʦ����','17');
INSERT INTO `qs_hotword` VALUES ('282','��������','3032');
INSERT INTO `qs_hotword` VALUES ('284','���רԱ','47');
INSERT INTO `qs_hotword` VALUES ('285','ʡ�����۾���','141');
INSERT INTO `qs_hotword` VALUES ('292','�İ��߻�','855');
INSERT INTO `qs_hotword` VALUES ('296','���칤��ʦ','19');
INSERT INTO `qs_hotword` VALUES ('297','�������','558');
INSERT INTO `qs_hotword` VALUES ('298','ģ�߹���ʦ','71');
INSERT INTO `qs_hotword` VALUES ('299','3D���ʦ','124');
INSERT INTO `qs_hotword` VALUES ('301','��װ����Ա','14');
INSERT INTO `qs_hotword` VALUES ('302','����','137');
INSERT INTO `qs_hotword` VALUES ('306','�㷨����ʦ','42');
INSERT INTO `qs_hotword` VALUES ('307','�豸����','46');
INSERT INTO `qs_hotword` VALUES ('308','�곤','1631');
INSERT INTO `qs_hotword` VALUES ('309','�ܾ���','355');
INSERT INTO `qs_hotword` VALUES ('310','��ҵ�ͻ�����','49');
INSERT INTO `qs_hotword` VALUES ('312','�ɹ���Ա','55');
INSERT INTO `qs_hotword` VALUES ('313','����������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('315','���۲�����','21');
INSERT INTO `qs_hotword` VALUES ('316','Ůװ���ʦ','41');
INSERT INTO `qs_hotword` VALUES ('318','�繤','997');
INSERT INTO `qs_hotword` VALUES ('319','���޼�ʦ','26');
INSERT INTO `qs_hotword` VALUES ('321','ģ�߹�','35');
INSERT INTO `qs_hotword` VALUES ('323','�߼��ͻ�����','279');
INSERT INTO `qs_hotword` VALUES ('324','���ܾ���','500');
INSERT INTO `qs_hotword` VALUES ('325','���񹤳�ʦ','233');
INSERT INTO `qs_hotword` VALUES ('329','�����ƹ㾭��','40');
INSERT INTO `qs_hotword` VALUES ('330','��ѵ����','298');
INSERT INTO `qs_hotword` VALUES ('335','��Ӫ�߻�','31');
INSERT INTO `qs_hotword` VALUES ('337','���۾�������','62');
INSERT INTO `qs_hotword` VALUES ('340','��������','59');
INSERT INTO `qs_hotword` VALUES ('341','��������','31');
INSERT INTO `qs_hotword` VALUES ('343','�ͷ�רԱ','1819');
INSERT INTO `qs_hotword` VALUES ('344','�ʼ�Ա','625');
INSERT INTO `qs_hotword` VALUES ('345','�������','123');
INSERT INTO `qs_hotword` VALUES ('347','ϵͳ�ܹ�ʦ','108');
INSERT INTO `qs_hotword` VALUES ('350','Ӫ�˾���','157');
INSERT INTO `qs_hotword` VALUES ('357','��������ʦ','840');
INSERT INTO `qs_hotword` VALUES ('358','���̾���','940');
INSERT INTO `qs_hotword` VALUES ('359','ˮ�繤��ʦ','346');
INSERT INTO `qs_hotword` VALUES ('364','���ҵ����','20');
INSERT INTO `qs_hotword` VALUES ('365','��Ա','1694');
INSERT INTO `qs_hotword` VALUES ('366','��ʦ','22');
INSERT INTO `qs_hotword` VALUES ('368','���Ա','254');
INSERT INTO `qs_hotword` VALUES ('371','�Ա��̳ǿͷ�','32');
INSERT INTO `qs_hotword` VALUES ('372','�ͻ�����','160');
INSERT INTO `qs_hotword` VALUES ('373','QA','75');
INSERT INTO `qs_hotword` VALUES ('374','�ɹ�����','398');
INSERT INTO `qs_hotword` VALUES ('378','�������ʦ','409');
INSERT INTO `qs_hotword` VALUES ('380','����Ա','11');
INSERT INTO `qs_hotword` VALUES ('382','ůͨ����ʦ','269');
INSERT INTO `qs_hotword` VALUES ('383','�ɹ�����','452');
INSERT INTO `qs_hotword` VALUES ('385','�ṹ����ʦ','412');
INSERT INTO `qs_hotword` VALUES ('387','����רԱ','902');
INSERT INTO `qs_hotword` VALUES ('388','������Դ����','641');
INSERT INTO `qs_hotword` VALUES ('389','��������','1645');
INSERT INTO `qs_hotword` VALUES ('393','ҵ��רԱ','168');
INSERT INTO `qs_hotword` VALUES ('394','����ܼ�����','16');
INSERT INTO `qs_hotword` VALUES ('396','������רԱ','22');
INSERT INTO `qs_hotword` VALUES ('398','�ɹ�����ʦ','267');
INSERT INTO `qs_hotword` VALUES ('399','�ɹ�Ա','1003');
INSERT INTO `qs_hotword` VALUES ('403','������ʦ','80');
INSERT INTO `qs_hotword` VALUES ('406','��֤Ա','172');
INSERT INTO `qs_hotword` VALUES ('409','����ǰ̨','654');
INSERT INTO `qs_hotword` VALUES ('410','��������רԱ','309');
INSERT INTO `qs_hotword` VALUES ('416','ASP����Ա','49');
INSERT INTO `qs_hotword` VALUES ('417','�����İ�','159');
INSERT INTO `qs_hotword` VALUES ('419','ý��רԱ','168');
INSERT INTO `qs_hotword` VALUES ('427','����Ӣ���ʦ','25');
INSERT INTO `qs_hotword` VALUES ('429','�����ʦ','28');
INSERT INTO `qs_hotword` VALUES ('430','�����ʦ','37');
INSERT INTO `qs_hotword` VALUES ('431','��������ʦ','28');
INSERT INTO `qs_hotword` VALUES ('433','�����ʦ','25');
INSERT INTO `qs_hotword` VALUES ('434','������ʦ','26');
INSERT INTO `qs_hotword` VALUES ('438','ý��߻�����','18');
INSERT INTO `qs_hotword` VALUES ('443','����Ӣ���ʦ','27');
INSERT INTO `qs_hotword` VALUES ('444','��ҳ����','260');
INSERT INTO `qs_hotword` VALUES ('446','��վ�༭','919');
INSERT INTO `qs_hotword` VALUES ('448','�ֹ���Ա','12');
INSERT INTO `qs_hotword` VALUES ('450','����רԱ','560');
INSERT INTO `qs_hotword` VALUES ('453','ҽҩ���۴���','531');
INSERT INTO `qs_hotword` VALUES ('456','������Դ����','12');
INSERT INTO `qs_hotword` VALUES ('458','�İ�','727');
INSERT INTO `qs_hotword` VALUES ('459','����','102');
INSERT INTO `qs_hotword` VALUES ('461','����','196');
INSERT INTO `qs_hotword` VALUES ('463','�����ƹ�Ա','128');
INSERT INTO `qs_hotword` VALUES ('466','��������','13');
INSERT INTO `qs_hotword` VALUES ('469','��ó����Ա','70');
INSERT INTO `qs_hotword` VALUES ('470','�����ܼ�','640');
INSERT INTO `qs_hotword` VALUES ('475','��ѯҽ��','66');
INSERT INTO `qs_hotword` VALUES ('476','��������ʦ','321');
INSERT INTO `qs_hotword` VALUES ('481','���繤��ʦ','608');
INSERT INTO `qs_hotword` VALUES ('484','����','256');
INSERT INTO `qs_hotword` VALUES ('486','����','714');
INSERT INTO `qs_hotword` VALUES ('487','����ҵ��','194');
INSERT INTO `qs_hotword` VALUES ('489','������Դ','50');
INSERT INTO `qs_hotword` VALUES ('493','�Ǳ���ʦ','49');
INSERT INTO `qs_hotword` VALUES ('494','ǿ�繤','17');
INSERT INTO `qs_hotword` VALUES ('495','����רԱ','1685');
INSERT INTO `qs_hotword` VALUES ('496','�ͷ�����','266');
INSERT INTO `qs_hotword` VALUES ('498','���繤','28');
INSERT INTO `qs_hotword` VALUES ('501','�������۾���','166');
INSERT INTO `qs_hotword` VALUES ('503','�������۾���','2937');
INSERT INTO `qs_hotword` VALUES ('506','��óҵ������','19');
INSERT INTO `qs_hotword` VALUES ('507','���ܹ�','94');
INSERT INTO `qs_hotword` VALUES ('508','��ͼԱ','51');
INSERT INTO `qs_hotword` VALUES ('509','������','45');
INSERT INTO `qs_hotword` VALUES ('511','�������','119');
INSERT INTO `qs_hotword` VALUES ('512','�߼�Ͷ�ʾ���','23');
INSERT INTO `qs_hotword` VALUES ('513','�칫��Ա','120');
INSERT INTO `qs_hotword` VALUES ('517','����רԱ','49');
INSERT INTO `qs_hotword` VALUES ('519','���߻�','54');
INSERT INTO `qs_hotword` VALUES ('520','���̼���Ա','85');
INSERT INTO `qs_hotword` VALUES ('521','ҵ��Ա','3059');
INSERT INTO `qs_hotword` VALUES ('522','����','941');
INSERT INTO `qs_hotword` VALUES ('523','��ó��֤Ա','52');
INSERT INTO `qs_hotword` VALUES ('525','���ݿ����Ա','35');
INSERT INTO `qs_hotword` VALUES ('530','��������','146');
INSERT INTO `qs_hotword` VALUES ('531','ҵ������','633');
INSERT INTO `qs_hotword` VALUES ('534','�г�������','76');
INSERT INTO `qs_hotword` VALUES ('535','ӪҵԱ','486');
INSERT INTO `qs_hotword` VALUES ('539','ͳ��','41');
INSERT INTO `qs_hotword` VALUES ('542','�Ա���ӪרԱ','32');
INSERT INTO `qs_hotword` VALUES ('543','�ͻ�����','139');
INSERT INTO `qs_hotword` VALUES ('544','��Ʒ��������','23');
INSERT INTO `qs_hotword` VALUES ('545','�߻�����','32');
INSERT INTO `qs_hotword` VALUES ('547','ִ��У��','14');
INSERT INTO `qs_hotword` VALUES ('549','���ʦ','722');
INSERT INTO `qs_hotword` VALUES ('553','�ۺ���֧��','45');
INSERT INTO `qs_hotword` VALUES ('555','��������רԱ','13');
INSERT INTO `qs_hotword` VALUES ('557','����ʦ','65');
INSERT INTO `qs_hotword` VALUES ('558','Ͷ�ʾ���','135');
INSERT INTO `qs_hotword` VALUES ('563','������','154');
INSERT INTO `qs_hotword` VALUES ('566','�����ɲ�','1215');
INSERT INTO `qs_hotword` VALUES ('567','ǯ��','164');
INSERT INTO `qs_hotword` VALUES ('568','��ҵ����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('569','��ͻ�����','745');
INSERT INTO `qs_hotword` VALUES ('570','��֤','22');
INSERT INTO `qs_hotword` VALUES ('571','������','537');
INSERT INTO `qs_hotword` VALUES ('574','��Ŀ����','265');
INSERT INTO `qs_hotword` VALUES ('575','������������','108');
INSERT INTO `qs_hotword` VALUES ('579','��ƾ���','141');
INSERT INTO `qs_hotword` VALUES ('580','UI����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('582','QC����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('583','ý�����۾���','12');
INSERT INTO `qs_hotword` VALUES ('584','Buyer','21');
INSERT INTO `qs_hotword` VALUES ('589','�������̾���','32');
INSERT INTO `qs_hotword` VALUES ('591','�г�רԱ','1826');
INSERT INTO `qs_hotword` VALUES ('593','�İ�ָ��','54');
INSERT INTO `qs_hotword` VALUES ('594','�߻�����','513');
INSERT INTO `qs_hotword` VALUES ('596','���ʾ���','123');
INSERT INTO `qs_hotword` VALUES ('605','��������','192');
INSERT INTO `qs_hotword` VALUES ('606','ѧͽ��','63');
INSERT INTO `qs_hotword` VALUES ('609','ά�޵繤','137');
INSERT INTO `qs_hotword` VALUES ('613','����ָ��','268');
INSERT INTO `qs_hotword` VALUES ('619','��Ч����','44');
INSERT INTO `qs_hotword` VALUES ('620','�����Ա','81');
INSERT INTO `qs_hotword` VALUES ('621','�������','110');
INSERT INTO `qs_hotword` VALUES ('624','��������','130');
INSERT INTO `qs_hotword` VALUES ('625','���ܻ��','349');
INSERT INTO `qs_hotword` VALUES ('626','ʩ��Ա','332');
INSERT INTO `qs_hotword` VALUES ('629','�г��󻮾���','86');
INSERT INTO `qs_hotword` VALUES ('635','�ͻ���������','50');
INSERT INTO `qs_hotword` VALUES ('636','��ó��Ա','55');
INSERT INTO `qs_hotword` VALUES ('637','�ܾ���˾��','30');
INSERT INTO `qs_hotword` VALUES ('641','ά������','59');
INSERT INTO `qs_hotword` VALUES ('642','�г�������Ա','32');
INSERT INTO `qs_hotword` VALUES ('643','�ֽṹ���ʦ','20');
INSERT INTO `qs_hotword` VALUES ('646','ҵ�����Ա','46');
INSERT INTO `qs_hotword` VALUES ('649','Ӫ���ܼ�','666');
INSERT INTO `qs_hotword` VALUES ('652','ҽ���豸����','16');
INSERT INTO `qs_hotword` VALUES ('654','ʵ�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('655','�󻮲�����','18');
INSERT INTO `qs_hotword` VALUES ('656','��óҵ������','70');
INSERT INTO `qs_hotword` VALUES ('660','��ѵרԱ','696');
INSERT INTO `qs_hotword` VALUES ('664','Ͷ�����ܼ�','12');
INSERT INTO `qs_hotword` VALUES ('665','��Ŀ�ܾ���','76');
INSERT INTO `qs_hotword` VALUES ('668','����Ԥ��Ա','143');
INSERT INTO `qs_hotword` VALUES ('676','�Ŵ��ͻ�����','14');
INSERT INTO `qs_hotword` VALUES ('678','ҵ�����','1613');
INSERT INTO `qs_hotword` VALUES ('679','���ͻ�����','114');
INSERT INTO `qs_hotword` VALUES ('682','����Ա','428');
INSERT INTO `qs_hotword` VALUES ('684','������','262');
INSERT INTO `qs_hotword` VALUES ('686','Sales','10');
INSERT INTO `qs_hotword` VALUES ('692','�ֳ�����ʦ','76');
INSERT INTO `qs_hotword` VALUES ('694','ҵ����չ����','45');
INSERT INTO `qs_hotword` VALUES ('696','ҽѧ�༭','20');
INSERT INTO `qs_hotword` VALUES ('702','��������','148');
INSERT INTO `qs_hotword` VALUES ('703','��е���','101');
INSERT INTO `qs_hotword` VALUES ('704','����ʦ','162');
INSERT INTO `qs_hotword` VALUES ('708','�ͻ�����','667');
INSERT INTO `qs_hotword` VALUES ('711','��������','996');
INSERT INTO `qs_hotword` VALUES ('712','��������','26');
INSERT INTO `qs_hotword` VALUES ('713','������','150');
INSERT INTO `qs_hotword` VALUES ('714','�ͻ�����','52');
INSERT INTO `qs_hotword` VALUES ('716','��������','599');
INSERT INTO `qs_hotword` VALUES ('719','��ͼԱ','121');
INSERT INTO `qs_hotword` VALUES ('720','�绰��������','89');
INSERT INTO `qs_hotword` VALUES ('722','��������','43');
INSERT INTO `qs_hotword` VALUES ('723','����������','398');
INSERT INTO `qs_hotword` VALUES ('727','�������Ľ�ʦ','30');
INSERT INTO `qs_hotword` VALUES ('728','CAD��ͼԱ','79');
INSERT INTO `qs_hotword` VALUES ('731','ƽ���������','36');
INSERT INTO `qs_hotword` VALUES ('741','�ɹ�','146');
INSERT INTO `qs_hotword` VALUES ('745','�ͻ�����רԱ','192');
INSERT INTO `qs_hotword` VALUES ('747','��������','599');
INSERT INTO `qs_hotword` VALUES ('751','�ͻ��������','37');
INSERT INTO `qs_hotword` VALUES ('754','��������רԱ','53');
INSERT INTO `qs_hotword` VALUES ('756','�ֹ�','261');
INSERT INTO `qs_hotword` VALUES ('761','�����ƹ�רԱ','375');
INSERT INTO `qs_hotword` VALUES ('762','ҵ��չרԱ','297');
INSERT INTO `qs_hotword` VALUES ('763','����Ա','306');
INSERT INTO `qs_hotword` VALUES ('764','��е����ʦ','798');
INSERT INTO `qs_hotword` VALUES ('765','��������ʦ','1293');
INSERT INTO `qs_hotword` VALUES ('768','��ҳ�������','23');
INSERT INTO `qs_hotword` VALUES ('775','����Ա','166');
INSERT INTO `qs_hotword` VALUES ('780','CAD��ͼ','16');
INSERT INTO `qs_hotword` VALUES ('781','����ʵϰ��','34');
INSERT INTO `qs_hotword` VALUES ('782','���ʦ','30');
INSERT INTO `qs_hotword` VALUES ('786','���̼���','335');
INSERT INTO `qs_hotword` VALUES ('788','����Ա','395');
INSERT INTO `qs_hotword` VALUES ('793','�����ƻ�Ա','100');
INSERT INTO `qs_hotword` VALUES ('804','ά�޹���ʦ','303');
INSERT INTO `qs_hotword` VALUES ('806','�̱������','38');
INSERT INTO `qs_hotword` VALUES ('809','�з�����Ա','44');
INSERT INTO `qs_hotword` VALUES ('810','��������','257');
INSERT INTO `qs_hotword` VALUES ('811','��','62');
INSERT INTO `qs_hotword` VALUES ('813','������ѧ��ʦ','58');
INSERT INTO `qs_hotword` VALUES ('816','����Ӣ���ʦ','44');
INSERT INTO `qs_hotword` VALUES ('817','�Ա��곤','102');
INSERT INTO `qs_hotword` VALUES ('820','ҵ����չרԱ','45');
INSERT INTO `qs_hotword` VALUES ('821','��վӪ�˾���','52');
INSERT INTO `qs_hotword` VALUES ('824','������ѧ��ʦ','36');
INSERT INTO `qs_hotword` VALUES ('826','�Ա��ͷ�','412');
INSERT INTO `qs_hotword` VALUES ('827','�����ƹ�','478');
INSERT INTO `qs_hotword` VALUES ('831','����רԱ','29');
INSERT INTO `qs_hotword` VALUES ('833','����Ӣ���ʦ','32');
INSERT INTO `qs_hotword` VALUES ('836','�г���Ա','85');
INSERT INTO `qs_hotword` VALUES ('838','�ͻ�רԱ','205');
INSERT INTO `qs_hotword` VALUES ('839','������Ա','222');
INSERT INTO `qs_hotword` VALUES ('842','ҵ����','1563');
INSERT INTO `qs_hotword` VALUES ('846','�������۾���','16');
INSERT INTO `qs_hotword` VALUES ('851','�߼��İ�','35');
INSERT INTO `qs_hotword` VALUES ('854','�󻮲�����','108');
INSERT INTO `qs_hotword` VALUES ('855','�γ̹���','586');
INSERT INTO `qs_hotword` VALUES ('856','Ӫ������','342');
INSERT INTO `qs_hotword` VALUES ('857','�г��߻�����','46');
INSERT INTO `qs_hotword` VALUES ('862','���ع�','11');
INSERT INTO `qs_hotword` VALUES ('865','ʵʩ����ʦ','273');
INSERT INTO `qs_hotword` VALUES ('866','��������','480');
INSERT INTO `qs_hotword` VALUES ('867','��Ʒ����','24');
INSERT INTO `qs_hotword` VALUES ('868','B��ҽ��','49');
INSERT INTO `qs_hotword` VALUES ('869','����רԱ','277');
INSERT INTO `qs_hotword` VALUES ('875','�ֹ�˾�ܾ���','190');
INSERT INTO `qs_hotword` VALUES ('878','��ҽ','129');
INSERT INTO `qs_hotword` VALUES ('883','Ӫ������','115');
INSERT INTO `qs_hotword` VALUES ('884','��Ʒ����','906');
INSERT INTO `qs_hotword` VALUES ('885','��ʿ','373');
INSERT INTO `qs_hotword` VALUES ('886','��ϯ����','30');
INSERT INTO `qs_hotword` VALUES ('889','����Ӫ���ƹ�','11');
INSERT INTO `qs_hotword` VALUES ('894','���²�����','42');
INSERT INTO `qs_hotword` VALUES ('896','�ۺ�ά�޹�','11');
INSERT INTO `qs_hotword` VALUES ('898','����Ӫ��','189');
INSERT INTO `qs_hotword` VALUES ('900','��ó���','61');
INSERT INTO `qs_hotword` VALUES ('902','�����ܹ�','27');
INSERT INTO `qs_hotword` VALUES ('904','�г�������','75');
INSERT INTO `qs_hotword` VALUES ('905','��Ŀ��չ����','17');
INSERT INTO `qs_hotword` VALUES ('908','���̲�����','533');
INSERT INTO `qs_hotword` VALUES ('909','������������','202');
INSERT INTO `qs_hotword` VALUES ('910','��Ʋ�����','146');
INSERT INTO `qs_hotword` VALUES ('915','SEOרԱ','85');
INSERT INTO `qs_hotword` VALUES ('917','װ��ǯ��','107');
INSERT INTO `qs_hotword` VALUES ('918','������Ա','850');
INSERT INTO `qs_hotword` VALUES ('921','��������','16');
INSERT INTO `qs_hotword` VALUES ('925','��Ʒ����','62');
INSERT INTO `qs_hotword` VALUES ('926','�ͻ�ִ��','33');
INSERT INTO `qs_hotword` VALUES ('929','�߻�����','221');
INSERT INTO `qs_hotword` VALUES ('933','��ϷUI���','22');
INSERT INTO `qs_hotword` VALUES ('935','���ʵϰ��','18');
INSERT INTO `qs_hotword` VALUES ('937','�г�Ӫ��רԱ','100');
INSERT INTO `qs_hotword` VALUES ('938','ҵ�񹤳�ʦ','31');
INSERT INTO `qs_hotword` VALUES ('942','�����ʦ','40');
INSERT INTO `qs_hotword` VALUES ('951','��������רԱ','273');
INSERT INTO `qs_hotword` VALUES ('953','��óҵ��Ա','42');
INSERT INTO `qs_hotword` VALUES ('955','���ֱ༭','102');
INSERT INTO `qs_hotword` VALUES ('956','����ģ��','33');
INSERT INTO `qs_hotword` VALUES ('957','���˲���','27');
INSERT INTO `qs_hotword` VALUES ('960','��ó����','93');
INSERT INTO `qs_hotword` VALUES ('962','��������','162');
INSERT INTO `qs_hotword` VALUES ('971','����','60');
INSERT INTO `qs_hotword` VALUES ('972','Ӧ��Ӧ�����','12');
INSERT INTO `qs_hotword` VALUES ('978','�з�����ʦ','280');
INSERT INTO `qs_hotword` VALUES ('980','Ӱ�Ӻ�������','46');
INSERT INTO `qs_hotword` VALUES ('982','��ʦ����','58');
INSERT INTO `qs_hotword` VALUES ('987','ҵ�����','199');
INSERT INTO `qs_hotword` VALUES ('988','������������','209');
INSERT INTO `qs_hotword` VALUES ('996','�г��ƹ�','180');
INSERT INTO `qs_hotword` VALUES ('1000','���۹���','60');
INSERT INTO `qs_hotword` VALUES ('1004','��ó������','26');
INSERT INTO `qs_hotword` VALUES ('1005','�ۺ����','142');
INSERT INTO `qs_hotword` VALUES ('1006','��֤����','12');
INSERT INTO `qs_hotword` VALUES ('1007','������','384');
INSERT INTO `qs_hotword` VALUES ('1010','CAE����ʦ','16');
INSERT INTO `qs_hotword` VALUES ('1012','ҽ����е����','172');
INSERT INTO `qs_hotword` VALUES ('1013','��������','29');
INSERT INTO `qs_hotword` VALUES ('1015','����ͷ�','128');
INSERT INTO `qs_hotword` VALUES ('1016','����','46');
INSERT INTO `qs_hotword` VALUES ('1017','�ͷ�����','372');
INSERT INTO `qs_hotword` VALUES ('1018','Ӧ�ù���ʦ','138');
INSERT INTO `qs_hotword` VALUES ('1022','ҵ������','565');
INSERT INTO `qs_hotword` VALUES ('1026','�г�������','133');
INSERT INTO `qs_hotword` VALUES ('1032','ƽ�����Ա','50');
INSERT INTO `qs_hotword` VALUES ('1035','����ʩ��Ա','41');
INSERT INTO `qs_hotword` VALUES ('1036','�г�����','71');
INSERT INTO `qs_hotword` VALUES ('1037','Ӧ�����','10');
INSERT INTO `qs_hotword` VALUES ('1038','�з�����','31');
INSERT INTO `qs_hotword` VALUES ('1040','�г�Ӫ������','48');
INSERT INTO `qs_hotword` VALUES ('1045','��������','81');
INSERT INTO `qs_hotword` VALUES ('1046','���޹�','242');
INSERT INTO `qs_hotword` VALUES ('1047','��Ŀִ��','16');
INSERT INTO `qs_hotword` VALUES ('1048','��ȫ����','16');
INSERT INTO `qs_hotword` VALUES ('1049','�ܹ���ʦ','235');
INSERT INTO `qs_hotword` VALUES ('1052','���̾���','168');
INSERT INTO `qs_hotword` VALUES ('1054','��װ����ʦ','192');
INSERT INTO `qs_hotword` VALUES ('1056','Ӫ���߻�����','71');
INSERT INTO `qs_hotword` VALUES ('1057','Ӫ���߻�רԱ','64');
INSERT INTO `qs_hotword` VALUES ('1058','�İ��༭','122');
INSERT INTO `qs_hotword` VALUES ('1061','�ֳ���Ŀ����','11');
INSERT INTO `qs_hotword` VALUES ('1062','Ӣ��ͷ�','25');
INSERT INTO `qs_hotword` VALUES ('1065','�������','21');
INSERT INTO `qs_hotword` VALUES ('1067','��ְ����','10');
INSERT INTO `qs_hotword` VALUES ('1070','��߻�','178');
INSERT INTO `qs_hotword` VALUES ('1071','¥�����Ա','19');
INSERT INTO `qs_hotword` VALUES ('1073','����','270');
INSERT INTO `qs_hotword` VALUES ('1074','��Ƴ���','20');
INSERT INTO `qs_hotword` VALUES ('1078','�ִ��רԱ','19');
INSERT INTO `qs_hotword` VALUES ('1081','װ��Ԥ��Ա','24');
INSERT INTO `qs_hotword` VALUES ('1082','����','38');
INSERT INTO `qs_hotword` VALUES ('1083','��������','799');
INSERT INTO `qs_hotword` VALUES ('1084','��ѧ����','79');
INSERT INTO `qs_hotword` VALUES ('1087','��������','50');
INSERT INTO `qs_hotword` VALUES ('1089','����ҵ��Ա','258');
INSERT INTO `qs_hotword` VALUES ('1090','װ��ʩ��Ա','13');
INSERT INTO `qs_hotword` VALUES ('1091','��ó����רԱ','21');
INSERT INTO `qs_hotword` VALUES ('1092','��ó���۴���','14');
INSERT INTO `qs_hotword` VALUES ('1095','����Ա','228');
INSERT INTO `qs_hotword` VALUES ('1097','��ȫԱ','255');
INSERT INTO `qs_hotword` VALUES ('1101','���������','37');
INSERT INTO `qs_hotword` VALUES ('1104','ý��ִ��','28');
INSERT INTO `qs_hotword` VALUES ('1105','�绰�ͷ�רԱ','49');
INSERT INTO `qs_hotword` VALUES ('1106','��վ����Ա','146');
INSERT INTO `qs_hotword` VALUES ('1111','��߻�רԱ','60');
INSERT INTO `qs_hotword` VALUES ('1112','������۾���','55');
INSERT INTO `qs_hotword` VALUES ('1113','����QC','38');
INSERT INTO `qs_hotword` VALUES ('1114','�����ܼ�','38');
INSERT INTO `qs_hotword` VALUES ('1123','ҵ��','134');
INSERT INTO `qs_hotword` VALUES ('1125','��������','103');
INSERT INTO `qs_hotword` VALUES ('1127','���﷭��','34');
INSERT INTO `qs_hotword` VALUES ('1130','�г���չ����','38');
INSERT INTO `qs_hotword` VALUES ('1131','�渨�ϲɹ�','24');
INSERT INTO `qs_hotword` VALUES ('1133','�༭����','20');
INSERT INTO `qs_hotword` VALUES ('1135','��Ŀ��������','47');
INSERT INTO `qs_hotword` VALUES ('1136','ƽ���������','69');
INSERT INTO `qs_hotword` VALUES ('1139','��Ŀ���۾���','50');
INSERT INTO `qs_hotword` VALUES ('1144','����ʦ','131');
INSERT INTO `qs_hotword` VALUES ('1148','����˾��','12');
INSERT INTO `qs_hotword` VALUES ('1149','���繤','34');
INSERT INTO `qs_hotword` VALUES ('1151','���Ṥ','89');
INSERT INTO `qs_hotword` VALUES ('1153','�ӽ�','98');
INSERT INTO `qs_hotword` VALUES ('1157','������','13');
INSERT INTO `qs_hotword` VALUES ('1158','Ӫ������','12');
INSERT INTO `qs_hotword` VALUES ('1165','�������۴���','172');
INSERT INTO `qs_hotword` VALUES ('1166','�ۺ�ͷ�רԱ','22');
INSERT INTO `qs_hotword` VALUES ('1170','��������','10');
INSERT INTO `qs_hotword` VALUES ('1172','������','2426');
INSERT INTO `qs_hotword` VALUES ('1175','������ƹ���','17');
INSERT INTO `qs_hotword` VALUES ('1179','��ѵʦ','309');
INSERT INTO `qs_hotword` VALUES ('1180','����','27');
INSERT INTO `qs_hotword` VALUES ('1184','��ó���۾���','10');
INSERT INTO `qs_hotword` VALUES ('1185','�༭','225');
INSERT INTO `qs_hotword` VALUES ('1187','���Ųɱ�','13');
INSERT INTO `qs_hotword` VALUES ('1191','����Ա','1309');
INSERT INTO `qs_hotword` VALUES ('1192','Ͷ�ʹ�������','19');
INSERT INTO `qs_hotword` VALUES ('1197','ǰ̨��������','20');
INSERT INTO `qs_hotword` VALUES ('1201','��������','63');
INSERT INTO `qs_hotword` VALUES ('1202','Ʒ����Ӫ����','15');
INSERT INTO `qs_hotword` VALUES ('1206','���۶���','87');
INSERT INTO `qs_hotword` VALUES ('1208','Ӫ������','138');
INSERT INTO `qs_hotword` VALUES ('1211','ë�����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('1216','ˮ������Ա','16');
INSERT INTO `qs_hotword` VALUES ('1217','�ɱ�','50');
INSERT INTO `qs_hotword` VALUES ('1218','QC','150');
INSERT INTO `qs_hotword` VALUES ('1220','ERPרԱ','27');
INSERT INTO `qs_hotword` VALUES ('1226','��Ŀ����','12');
INSERT INTO `qs_hotword` VALUES ('1232','IT','24');
INSERT INTO `qs_hotword` VALUES ('1233','Ӱ������','14');
INSERT INTO `qs_hotword` VALUES ('1242','��������ܼ�','20');
INSERT INTO `qs_hotword` VALUES ('1243','PHP����ʦ','152');
INSERT INTO `qs_hotword` VALUES ('1246','������ԴרԱ','674');
INSERT INTO `qs_hotword` VALUES ('1247','�칫������','15');
INSERT INTO `qs_hotword` VALUES ('1248','��ƹ���ʦ','92');
INSERT INTO `qs_hotword` VALUES ('1250','֤ȯ�������','33');
INSERT INTO `qs_hotword` VALUES ('1252','������������','77');
INSERT INTO `qs_hotword` VALUES ('1265','��ϰ����','52');
INSERT INTO `qs_hotword` VALUES ('1269','JAVA����','42');
INSERT INTO `qs_hotword` VALUES ('1271','�칫����Ա','631');
INSERT INTO `qs_hotword` VALUES ('1281','�ִ��','80');
INSERT INTO `qs_hotword` VALUES ('1282','��������','201');
INSERT INTO `qs_hotword` VALUES ('1283','��վӪ��רԱ','65');
INSERT INTO `qs_hotword` VALUES ('1286','��������','82');
INSERT INTO `qs_hotword` VALUES ('1287','��������','112');
INSERT INTO `qs_hotword` VALUES ('1292','��������','78');
INSERT INTO `qs_hotword` VALUES ('1296','����','57');
INSERT INTO `qs_hotword` VALUES ('1297','�������','79');
INSERT INTO `qs_hotword` VALUES ('1298','��ͻ�����','48');
INSERT INTO `qs_hotword` VALUES ('1299','�Ա��̳��ƹ�','10');
INSERT INTO `qs_hotword` VALUES ('1307','����������ϯ','28');
INSERT INTO `qs_hotword` VALUES ('1311','�������','71');
INSERT INTO `qs_hotword` VALUES ('1316','���񸱾���','52');
INSERT INTO `qs_hotword` VALUES ('1321','��Ʒ�༭','10');
INSERT INTO `qs_hotword` VALUES ('1324','Ӫ��רԱ','155');
INSERT INTO `qs_hotword` VALUES ('1326','�߼����۴���','176');
INSERT INTO `qs_hotword` VALUES ('1328','����ʦ','358');
INSERT INTO `qs_hotword` VALUES ('1335','ʵ��������','11');
INSERT INTO `qs_hotword` VALUES ('1336','��Ŀ�鳤','12');
INSERT INTO `qs_hotword` VALUES ('1342','��������','119');
INSERT INTO `qs_hotword` VALUES ('1345','������������','189');
INSERT INTO `qs_hotword` VALUES ('1347','�������','96');
INSERT INTO `qs_hotword` VALUES ('1349','�ִ�����','11');
INSERT INTO `qs_hotword` VALUES ('1350','������Ա','134');
INSERT INTO `qs_hotword` VALUES ('1351','���ۿͷ�','122');
INSERT INTO `qs_hotword` VALUES ('1356','��������Ա','56');
INSERT INTO `qs_hotword` VALUES ('1357','����������','108');
INSERT INTO `qs_hotword` VALUES ('1358','Ʒ�ʲ�����','24');
INSERT INTO `qs_hotword` VALUES ('1364','��óԱ','22');
INSERT INTO `qs_hotword` VALUES ('1366','�����ܼ�','32');
INSERT INTO `qs_hotword` VALUES ('1367','ϵͳ����ʦ','286');
INSERT INTO `qs_hotword` VALUES ('1369','����ҵ�����','28');
INSERT INTO `qs_hotword` VALUES ('1370','ҵ������','16');
INSERT INTO `qs_hotword` VALUES ('1372','��������','39');
INSERT INTO `qs_hotword` VALUES ('1379','��������','511');
INSERT INTO `qs_hotword` VALUES ('1381','�İ���','12');
INSERT INTO `qs_hotword` VALUES ('1383','�����İ��߻�','25');
INSERT INTO `qs_hotword` VALUES ('1385','���Թ���ʦ','53');
INSERT INTO `qs_hotword` VALUES ('1386','���۲�����','277');
INSERT INTO `qs_hotword` VALUES ('1388','�߼���ѵ��ʦ','27');
INSERT INTO `qs_hotword` VALUES ('1389','�߻�','169');
INSERT INTO `qs_hotword` VALUES ('1391','������Ŀ����','26');
INSERT INTO `qs_hotword` VALUES ('1392','������������','31');
INSERT INTO `qs_hotword` VALUES ('1393','�����༭','82');
INSERT INTO `qs_hotword` VALUES ('1394','Ʒ�ƾ���','253');
INSERT INTO `qs_hotword` VALUES ('1397','������ǰ̨','16');
INSERT INTO `qs_hotword` VALUES ('1399','Ӧ��ʵϰ��','23');
INSERT INTO `qs_hotword` VALUES ('1401','ҽҩ����','1362');
INSERT INTO `qs_hotword` VALUES ('1405','��ά����ʦ','265');
INSERT INTO `qs_hotword` VALUES ('1408','Ӫ������','95');
INSERT INTO `qs_hotword` VALUES ('1415','˰����','17');
INSERT INTO `qs_hotword` VALUES ('1416','�豸����','20');
INSERT INTO `qs_hotword` VALUES ('1417','�豸����ʦ','221');
INSERT INTO `qs_hotword` VALUES ('1419','�豸����','58');
INSERT INTO `qs_hotword` VALUES ('1420','�ۺ������Ա','97');
INSERT INTO `qs_hotword` VALUES ('1421','�������۾���','20');
INSERT INTO `qs_hotword` VALUES ('1426','����','57');
INSERT INTO `qs_hotword` VALUES ('1439','�о�Ա','45');
INSERT INTO `qs_hotword` VALUES ('1440','���۸��ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('1441','����������','11');
INSERT INTO `qs_hotword` VALUES ('1444','�����','10');
INSERT INTO `qs_hotword` VALUES ('1450','���մ�����','117');
INSERT INTO `qs_hotword` VALUES ('1451','���³�����','216');
INSERT INTO `qs_hotword` VALUES ('1452','��ϰ����Ա','34');
INSERT INTO `qs_hotword` VALUES ('1453','���³�����','254');
INSERT INTO `qs_hotword` VALUES ('1457','����Ա','64');
INSERT INTO `qs_hotword` VALUES ('1458','��������','26');
INSERT INTO `qs_hotword` VALUES ('1459','�ŶӾ���','124');
INSERT INTO `qs_hotword` VALUES ('1460','��ƹ���','291');
INSERT INTO `qs_hotword` VALUES ('1464','ý������','14');
INSERT INTO `qs_hotword` VALUES ('1467','��������','51');
INSERT INTO `qs_hotword` VALUES ('1468','��ϰ����','40');
INSERT INTO `qs_hotword` VALUES ('1469','����ó��','63');
INSERT INTO `qs_hotword` VALUES ('1470','ƽ�����רԱ','62');
INSERT INTO `qs_hotword` VALUES ('1478','ǰ̨������','30');
INSERT INTO `qs_hotword` VALUES ('1479','����ҵ��Ա','29');
INSERT INTO `qs_hotword` VALUES ('1480','�ֿ�����','402');
INSERT INTO `qs_hotword` VALUES ('1481','���˲�����','20');
INSERT INTO `qs_hotword` VALUES ('1482','�ͻ���������','12');
INSERT INTO `qs_hotword` VALUES ('1490','�ֹ�Ա','529');
INSERT INTO `qs_hotword` VALUES ('1492','��е���ʦ','57');
INSERT INTO `qs_hotword` VALUES ('1494','���۹���','995');
INSERT INTO `qs_hotword` VALUES ('1495','Ӫ������','13');
INSERT INTO `qs_hotword` VALUES ('1497','װ�乤','84');
INSERT INTO `qs_hotword` VALUES ('1499','����༭','301');
INSERT INTO `qs_hotword` VALUES ('1505','Ͷ���ܼ�','45');
INSERT INTO `qs_hotword` VALUES ('1506','Ʒ������','80');
INSERT INTO `qs_hotword` VALUES ('1508','��������','108');
INSERT INTO `qs_hotword` VALUES ('1510','�鱦����','11');
INSERT INTO `qs_hotword` VALUES ('1511','��վ�ƹ�','70');
INSERT INTO `qs_hotword` VALUES ('1514','��ѧ����ʦ','26');
INSERT INTO `qs_hotword` VALUES ('1520','�����ƻ�����','35');
INSERT INTO `qs_hotword` VALUES ('1521','�绰Ӫ��','532');
INSERT INTO `qs_hotword` VALUES ('1522','�Ӿ����ʦ','53');
INSERT INTO `qs_hotword` VALUES ('1525','������Ŀ����','242');
INSERT INTO `qs_hotword` VALUES ('1530','��������','10');
INSERT INTO `qs_hotword` VALUES ('1537','ý�龭��','105');
INSERT INTO `qs_hotword` VALUES ('1539','ERP����ʦ','21');
INSERT INTO `qs_hotword` VALUES ('1543','���ϸ���','12');
INSERT INTO `qs_hotword` VALUES ('1547','�߼���ƾ���','23');
INSERT INTO `qs_hotword` VALUES ('1548','�г�Ӫ������','12');
INSERT INTO `qs_hotword` VALUES ('1554','CNC����Ա','16');
INSERT INTO `qs_hotword` VALUES ('1556','ʡ������','281');
INSERT INTO `qs_hotword` VALUES ('1559','�г�����','10');
INSERT INTO `qs_hotword` VALUES ('1563','����ܼ�','310');
INSERT INTO `qs_hotword` VALUES ('1564','���רԱ','22');
INSERT INTO `qs_hotword` VALUES ('1566','Ч��ͼ����','28');
INSERT INTO `qs_hotword` VALUES ('1568','��������','236');
INSERT INTO `qs_hotword` VALUES ('1569','����רԱ','593');
INSERT INTO `qs_hotword` VALUES ('1570','�����ܼ�','121');
INSERT INTO `qs_hotword` VALUES ('1574','��������Ա','77');
INSERT INTO `qs_hotword` VALUES ('1577','��óҵ��רԱ','11');
INSERT INTO `qs_hotword` VALUES ('1582','IE����ʦ','176');
INSERT INTO `qs_hotword` VALUES ('1583','Ч��ͼ���ʦ','103');
INSERT INTO `qs_hotword` VALUES ('1586','���������ʦ','39');
INSERT INTO `qs_hotword` VALUES ('1587','פ����','16');
INSERT INTO `qs_hotword` VALUES ('1588','��ϵ����ʦ','51');
INSERT INTO `qs_hotword` VALUES ('1591','Ӫҵ����','47');
INSERT INTO `qs_hotword` VALUES ('1595','��վ��Ӫ�ܼ�','34');
INSERT INTO `qs_hotword` VALUES ('1598','��������רԱ','255');
INSERT INTO `qs_hotword` VALUES ('1601','�ۺ󹤳�ʦ','210');
INSERT INTO `qs_hotword` VALUES ('1603','�鱦ӪҵԱ','14');
INSERT INTO `qs_hotword` VALUES ('1604','����Ա','154');
INSERT INTO `qs_hotword` VALUES ('1607','�ͷ�����','13');
INSERT INTO `qs_hotword` VALUES ('1613','����������','84');
INSERT INTO `qs_hotword` VALUES ('1615','������չ����','22');
INSERT INTO `qs_hotword` VALUES ('1621','C++����Ա','59');
INSERT INTO `qs_hotword` VALUES ('1624','BDרԱ','22');
INSERT INTO `qs_hotword` VALUES ('1626','Ӣ���ʦ','204');
INSERT INTO `qs_hotword` VALUES ('1629','���ӽ�ʦ','35');
INSERT INTO `qs_hotword` VALUES ('1631','�����ܼ�','37');
INSERT INTO `qs_hotword` VALUES ('1633','IT��Ŀ����','12');
INSERT INTO `qs_hotword` VALUES ('1635','��ϯ���ʦ','78');
INSERT INTO `qs_hotword` VALUES ('1637','��������רԱ','22');
INSERT INTO `qs_hotword` VALUES ('1639','��Ӫ����','102');
INSERT INTO `qs_hotword` VALUES ('1641','����ܹ�ʦ','31');
INSERT INTO `qs_hotword` VALUES ('1643','EHSרԱ','11');
INSERT INTO `qs_hotword` VALUES ('1646','�ܹ�ʦ','24');
INSERT INTO `qs_hotword` VALUES ('1647','��ҵ�Ļ�����','11');
INSERT INTO `qs_hotword` VALUES ('1658','��ع���ʦ','21');
INSERT INTO `qs_hotword` VALUES ('1661','DBA','25');
INSERT INTO `qs_hotword` VALUES ('1663','��վ��ӪרԱ','52');
INSERT INTO `qs_hotword` VALUES ('1667','������Դ����','599');
INSERT INTO `qs_hotword` VALUES ('1671','��Ƶ�༭','41');
INSERT INTO `qs_hotword` VALUES ('1672','��������','14');
INSERT INTO `qs_hotword` VALUES ('1673','�з�רԱ','12');
INSERT INTO `qs_hotword` VALUES ('1676','��ѵ����','65');
INSERT INTO `qs_hotword` VALUES ('1677','��������','219');
INSERT INTO `qs_hotword` VALUES ('1681','����������Ա','30');
INSERT INTO `qs_hotword` VALUES ('1683','�绰Ӫ������','25');
INSERT INTO `qs_hotword` VALUES ('1685','�绰���۹���','25');
INSERT INTO `qs_hotword` VALUES ('1688','�İ�����','18');
INSERT INTO `qs_hotword` VALUES ('1695','������ʦ','50');
INSERT INTO `qs_hotword` VALUES ('1696','��վ��Ӫ����','46');
INSERT INTO `qs_hotword` VALUES ('1698','������Ա','75');
INSERT INTO `qs_hotword` VALUES ('1700','�绰����','28');
INSERT INTO `qs_hotword` VALUES ('1704','ϵͳ�߻�','44');
INSERT INTO `qs_hotword` VALUES ('1705','�߻�ʦ','214');
INSERT INTO `qs_hotword` VALUES ('1706','�г���չ����','104');
INSERT INTO `qs_hotword` VALUES ('1707','����������','48');
INSERT INTO `qs_hotword` VALUES ('1710','�г��ܼ�����','22');
INSERT INTO `qs_hotword` VALUES ('1713','������ѯʦ','242');
INSERT INTO `qs_hotword` VALUES ('1715','��ǰ����ʦ','351');
INSERT INTO `qs_hotword` VALUES ('1716','�ٶ�Ӣ���ʦ','162');
INSERT INTO `qs_hotword` VALUES ('1718','��ѯ����','430');
INSERT INTO `qs_hotword` VALUES ('1720','��������','35');
INSERT INTO `qs_hotword` VALUES ('1730','������ѯ����','14');
INSERT INTO `qs_hotword` VALUES ('1732','�ͻ�����','118');
INSERT INTO `qs_hotword` VALUES ('1734','�ͻ�������Ա','12');
INSERT INTO `qs_hotword` VALUES ('1735','�г�������','972');
INSERT INTO `qs_hotword` VALUES ('1736','OTC����','24');
INSERT INTO `qs_hotword` VALUES ('1737','��������','50');
INSERT INTO `qs_hotword` VALUES ('1739','��ͬ����Ա','44');
INSERT INTO `qs_hotword` VALUES ('1740','OTC����','10');
INSERT INTO `qs_hotword` VALUES ('1742','��Ʒ��ӪרԱ','13');
INSERT INTO `qs_hotword` VALUES ('1743','�������','13');
INSERT INTO `qs_hotword` VALUES ('1747','�߼���ʦ','32');
INSERT INTO `qs_hotword` VALUES ('1752','�з�������','71');
INSERT INTO `qs_hotword` VALUES ('1759','��������','88');
INSERT INTO `qs_hotword` VALUES ('1761','�г��ƹ���Ա','31');
INSERT INTO `qs_hotword` VALUES ('1762','��רԱ','269');
INSERT INTO `qs_hotword` VALUES ('1763','������','75');
INSERT INTO `qs_hotword` VALUES ('1764','UI���ʦ','268');
INSERT INTO `qs_hotword` VALUES ('1768','�ɱ����','610');
INSERT INTO `qs_hotword` VALUES ('1770','�Ա��ƹ�','49');
INSERT INTO `qs_hotword` VALUES ('1771','������ѯʦ','36');
INSERT INTO `qs_hotword` VALUES ('1775','����Ա','777');
INSERT INTO `qs_hotword` VALUES ('1783','��ѵ��','17');
INSERT INTO `qs_hotword` VALUES ('1788','����Ա','378');
INSERT INTO `qs_hotword` VALUES ('1790','����Ա','161');
INSERT INTO `qs_hotword` VALUES ('1792','����רԱ','97');
INSERT INTO `qs_hotword` VALUES ('1796','ǰ̨����','56');
INSERT INTO `qs_hotword` VALUES ('1798','������ѯ����','12');
INSERT INTO `qs_hotword` VALUES ('1801','����Ա','21');
INSERT INTO `qs_hotword` VALUES ('1805','�߻��༭','21');
INSERT INTO `qs_hotword` VALUES ('1810','��������','14');
INSERT INTO `qs_hotword` VALUES ('1812','����','289');
INSERT INTO `qs_hotword` VALUES ('1829','���ز�������','189');
INSERT INTO `qs_hotword` VALUES ('1832','�γ���ѯ����','45');
INSERT INTO `qs_hotword` VALUES ('1834','������Ա','17');
INSERT INTO `qs_hotword` VALUES ('1837','������Ա','130');
INSERT INTO `qs_hotword` VALUES ('1842','���ݷ���ʦ','58');
INSERT INTO `qs_hotword` VALUES ('1845','ʱ�б༭','19');
INSERT INTO `qs_hotword` VALUES ('1846','��վ�ͷ�','53');
INSERT INTO `qs_hotword` VALUES ('1849','�߼�����','26');
INSERT INTO `qs_hotword` VALUES ('1855','��������','99');
INSERT INTO `qs_hotword` VALUES ('1859','�ֿ��鳤','14');
INSERT INTO `qs_hotword` VALUES ('1864','������','548');
INSERT INTO `qs_hotword` VALUES ('1869','Ժ��','21');
INSERT INTO `qs_hotword` VALUES ('1873','�ٶȾ���רԱ','32');
INSERT INTO `qs_hotword` VALUES ('1876','�İ�רԱ','61');
INSERT INTO `qs_hotword` VALUES ('1878','�������','55');
INSERT INTO `qs_hotword` VALUES ('1879','��������','41');
INSERT INTO `qs_hotword` VALUES ('1881','�칫������','47');
INSERT INTO `qs_hotword` VALUES ('1882','������ѯҽ��','45');
INSERT INTO `qs_hotword` VALUES ('1883','���˳�ʦ','15');
INSERT INTO `qs_hotword` VALUES ('1885','ϴ�빤','96');
INSERT INTO `qs_hotword` VALUES ('1887','����������','52');
INSERT INTO `qs_hotword` VALUES ('1889','��Ӱʦ','209');
INSERT INTO `qs_hotword` VALUES ('1890','�ⷿ���Ա','10');
INSERT INTO `qs_hotword` VALUES ('1894','��������Ա','41');
INSERT INTO `qs_hotword` VALUES ('1898','ҵ�񶽵�','30');
INSERT INTO `qs_hotword` VALUES ('1899','�߻�רԱ','325');
INSERT INTO `qs_hotword` VALUES ('1902','��ϢרԱ','66');
INSERT INTO `qs_hotword` VALUES ('1907','������ѯ','67');
INSERT INTO `qs_hotword` VALUES ('1909','���о���','12');
INSERT INTO `qs_hotword` VALUES ('1910','�ʼ칤��ʦ','42');
INSERT INTO `qs_hotword` VALUES ('1911','��Ŀ���','19');
INSERT INTO `qs_hotword` VALUES ('1913','ˮů��','40');
INSERT INTO `qs_hotword` VALUES ('1914','�յ���','100');
INSERT INTO `qs_hotword` VALUES ('1916','Ʒ�ʹ���Ա','27');
INSERT INTO `qs_hotword` VALUES ('1917','Ʒ�ƶ���','18');
INSERT INTO `qs_hotword` VALUES ('1923','�����п�Ա','19');
INSERT INTO `qs_hotword` VALUES ('1926','�滮���ʦ','35');
INSERT INTO `qs_hotword` VALUES ('1927','��ѹ�繤','40');
INSERT INTO `qs_hotword` VALUES ('1928','��ѵ��','12');
INSERT INTO `qs_hotword` VALUES ('1929','���ݷ�������','10');
INSERT INTO `qs_hotword` VALUES ('1931','����������','26');
INSERT INTO `qs_hotword` VALUES ('1933','Ӣ�ķ���','37');
INSERT INTO `qs_hotword` VALUES ('1935','������Ա','1090');
INSERT INTO `qs_hotword` VALUES ('1936','������ѯרԱ','10');
INSERT INTO `qs_hotword` VALUES ('1937','��װҵ��Ա','51');
INSERT INTO `qs_hotword` VALUES ('1941','Ӫ������','158');
INSERT INTO `qs_hotword` VALUES ('1942','�ۺ����רԱ','172');
INSERT INTO `qs_hotword` VALUES ('1943','Ӣ�ı༭','27');
INSERT INTO `qs_hotword` VALUES ('1945','����ҵ��Ա','43');
INSERT INTO `qs_hotword` VALUES ('1947','�߼��༭','12');
INSERT INTO `qs_hotword` VALUES ('1951','ͼ��༭','25');
INSERT INTO `qs_hotword` VALUES ('1958','��ԱרԱ','12');
INSERT INTO `qs_hotword` VALUES ('1959','������������','47');
INSERT INTO `qs_hotword` VALUES ('1960','��Ա�����','17');
INSERT INTO `qs_hotword` VALUES ('1961','��վ��Ӫ','34');
INSERT INTO `qs_hotword` VALUES ('1963','������Ӫ����','24');
INSERT INTO `qs_hotword` VALUES ('1965','�ֿ����','41');
INSERT INTO `qs_hotword` VALUES ('1975','�Ƶ긱�ܾ���','10');
INSERT INTO `qs_hotword` VALUES ('1978','ѧϰ����','76');
INSERT INTO `qs_hotword` VALUES ('1980','�����ܼ�','42');
INSERT INTO `qs_hotword` VALUES ('1983','�Ƶ������','10');
INSERT INTO `qs_hotword` VALUES ('1987','Ӫ��������','97');
INSERT INTO `qs_hotword` VALUES ('1990','ҩ��ӪҵԱ','49');
INSERT INTO `qs_hotword` VALUES ('1991','רְ��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('1993','ִҵҩʦ','33');
INSERT INTO `qs_hotword` VALUES ('1996','�������ʦ','36');
INSERT INTO `qs_hotword` VALUES ('1999','���繤��ʦ','249');
INSERT INTO `qs_hotword` VALUES ('2005','��������','988');
INSERT INTO `qs_hotword` VALUES ('2009','�Ա��ͷ�רԱ','32');
INSERT INTO `qs_hotword` VALUES ('2010','��Ʒ�༭','16');
INSERT INTO `qs_hotword` VALUES ('2013','��Ŀ����','199');
INSERT INTO `qs_hotword` VALUES ('2014','������ѯ����','11');
INSERT INTO `qs_hotword` VALUES ('2022','Ӧ�ջ��','26');
INSERT INTO `qs_hotword` VALUES ('2026','��װ���ʦ','60');
INSERT INTO `qs_hotword` VALUES ('2037','�ⷿ����Ա','161');
INSERT INTO `qs_hotword` VALUES ('2041','��ҵ���۾���','57');
INSERT INTO `qs_hotword` VALUES ('2052','���»�����','36');
INSERT INTO `qs_hotword` VALUES ('2054','��ά����','14');
INSERT INTO `qs_hotword` VALUES ('2058','��ӪרԱ','151');
INSERT INTO `qs_hotword` VALUES ('2059','����İ��߻�','24');
INSERT INTO `qs_hotword` VALUES ('2076','��ƷרԱ','260');
INSERT INTO `qs_hotword` VALUES ('2079','�߼��߻�ʦ','89');
INSERT INTO `qs_hotword` VALUES ('2089','���۾���','56');
INSERT INTO `qs_hotword` VALUES ('2090','�ۺϹ����','10');
INSERT INTO `qs_hotword` VALUES ('2091','��ѯ����','61');
INSERT INTO `qs_hotword` VALUES ('2095','�Ź�רԱ','36');
INSERT INTO `qs_hotword` VALUES ('2096','��УУ��','61');
INSERT INTO `qs_hotword` VALUES ('2098','��������ʦ','41');
INSERT INTO `qs_hotword` VALUES ('2105','JSP����Ա','12');
INSERT INTO `qs_hotword` VALUES ('2106','��������','20');
INSERT INTO `qs_hotword` VALUES ('2109','��������','13');
INSERT INTO `qs_hotword` VALUES ('2110','�绰���۴���','124');
INSERT INTO `qs_hotword` VALUES ('2115','רְӢ�﷭��','20');
INSERT INTO `qs_hotword` VALUES ('2116','���Ź���ʦ','19');
INSERT INTO `qs_hotword` VALUES ('2123','��ֵ�߻�','80');
INSERT INTO `qs_hotword` VALUES ('2135','IT����Ա','28');
INSERT INTO `qs_hotword` VALUES ('2141','����','25');
INSERT INTO `qs_hotword` VALUES ('2148','��ó����','73');
INSERT INTO `qs_hotword` VALUES ('2152','��������','13');
INSERT INTO `qs_hotword` VALUES ('2161','��Ŀ����','37');
INSERT INTO `qs_hotword` VALUES ('2167','��ҽҽʦ','12');
INSERT INTO `qs_hotword` VALUES ('2169','����ҽ��','16');
INSERT INTO `qs_hotword` VALUES ('2170','�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('2172','���','557');
INSERT INTO `qs_hotword` VALUES ('2175','Ͷ������','29');
INSERT INTO `qs_hotword` VALUES ('2176','�ƹ�רԱ','184');
INSERT INTO `qs_hotword` VALUES ('2177','Ʒ���ܼ�','52');
INSERT INTO `qs_hotword` VALUES ('2181','������Ա','17');
INSERT INTO `qs_hotword` VALUES ('2182','���۸���','76');
INSERT INTO `qs_hotword` VALUES ('2187','��ͻ��ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('2198','��Ϣ¼��Ա','25');
INSERT INTO `qs_hotword` VALUES ('2202','����������','51');
INSERT INTO `qs_hotword` VALUES ('2203','����ʦ','124');
INSERT INTO `qs_hotword` VALUES ('2205','��������','38');
INSERT INTO `qs_hotword` VALUES ('2208','����רԱ','55');
INSERT INTO `qs_hotword` VALUES ('2212','��װ����Ա','25');
INSERT INTO `qs_hotword` VALUES ('2223','�ṹ���','24');
INSERT INTO `qs_hotword` VALUES ('2224','�ͷ�����','183');
INSERT INTO `qs_hotword` VALUES ('2225','ˮ�����ʦ','44');
INSERT INTO `qs_hotword` VALUES ('2229','��Ŀ�ܼ�','143');
INSERT INTO `qs_hotword` VALUES ('2236','���ν���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('2240','����Ա','13');
INSERT INTO `qs_hotword` VALUES ('2241','ϵͳ����ʦ','37');
INSERT INTO `qs_hotword` VALUES ('2250','������','103');
INSERT INTO `qs_hotword` VALUES ('2260','�Ա���Ӫ','18');
INSERT INTO `qs_hotword` VALUES ('2264','�ർ','47');
INSERT INTO `qs_hotword` VALUES ('2276','�߼����۾���','274');
INSERT INTO `qs_hotword` VALUES ('2283','��ҵ�Ļ�����','24');
INSERT INTO `qs_hotword` VALUES ('2287','��Ӫ����','262');
INSERT INTO `qs_hotword` VALUES ('2294','Ʒ���ƹ�רԱ','52');
INSERT INTO `qs_hotword` VALUES ('2296','���Ľ�ʦ','41');
INSERT INTO `qs_hotword` VALUES ('2297','ҵ����Ա','37');
INSERT INTO `qs_hotword` VALUES ('2301','AE','65');
INSERT INTO `qs_hotword` VALUES ('2306','�������','40');
INSERT INTO `qs_hotword` VALUES ('2309','�ŵ꾭��','65');
INSERT INTO `qs_hotword` VALUES ('2319','������ϵ����','14');
INSERT INTO `qs_hotword` VALUES ('2322','����������Ա','26');
INSERT INTO `qs_hotword` VALUES ('2323','�������ʦ','59');
INSERT INTO `qs_hotword` VALUES ('2327','Ͷ��רԱ','22');
INSERT INTO `qs_hotword` VALUES ('2331','����רԱ','35');
INSERT INTO `qs_hotword` VALUES ('2333','��ͻ�רԱ','77');
INSERT INTO `qs_hotword` VALUES ('2335','��Ϣ������','23');
INSERT INTO `qs_hotword` VALUES ('2337','��������ʦ','33');
INSERT INTO `qs_hotword` VALUES ('2339','�ʽ�����','15');
INSERT INTO `qs_hotword` VALUES ('2341','�з��ܼ�','41');
INSERT INTO `qs_hotword` VALUES ('2350','ǰ��רԱ','22');
INSERT INTO `qs_hotword` VALUES ('2352','�泵˾��','125');
INSERT INTO `qs_hotword` VALUES ('2359','ǰ̨����','66');
INSERT INTO `qs_hotword` VALUES ('2371','���񲿾���','140');
INSERT INTO `qs_hotword` VALUES ('2372','��ҩ����Ա','18');
INSERT INTO `qs_hotword` VALUES ('2373','���ܾ�������','31');
INSERT INTO `qs_hotword` VALUES ('2375','��վ���ʦ','85');
INSERT INTO `qs_hotword` VALUES ('2378','C#����Ա','28');
INSERT INTO `qs_hotword` VALUES ('2379','��ҵ���۴���','13');
INSERT INTO `qs_hotword` VALUES ('2381','���ɼ�����','65');
INSERT INTO `qs_hotword` VALUES ('2382','��ʦ','14');
INSERT INTO `qs_hotword` VALUES ('2383','��������','10');
INSERT INTO `qs_hotword` VALUES ('2385','��ҵ���ʦ','45');
INSERT INTO `qs_hotword` VALUES ('2388','������ѯ����','10');
INSERT INTO `qs_hotword` VALUES ('2389','��������','23');
INSERT INTO `qs_hotword` VALUES ('2390','Ա��ʳ�ó�ʦ','13');
INSERT INTO `qs_hotword` VALUES ('2398','���۲��ž���','17');
INSERT INTO `qs_hotword` VALUES ('2407','���ʦ','38');
INSERT INTO `qs_hotword` VALUES ('2417','�з���Ŀ����','42');
INSERT INTO `qs_hotword` VALUES ('2418','�г�ҵ�����','17');
INSERT INTO `qs_hotword` VALUES ('2426','��վ�Ż�','20');
INSERT INTO `qs_hotword` VALUES ('2429','���̼�����Ա','73');
INSERT INTO `qs_hotword` VALUES ('2440','�����İ�','57');
INSERT INTO `qs_hotword` VALUES ('2449','������Ŀ�ܼ�','18');
INSERT INTO `qs_hotword` VALUES ('2450','���','84');
INSERT INTO `qs_hotword` VALUES ('2453','��������','65');
INSERT INTO `qs_hotword` VALUES ('2459','��������','331');
INSERT INTO `qs_hotword` VALUES ('2465','���۾�Ӣ','551');
INSERT INTO `qs_hotword` VALUES ('2469','���߿ͷ�','26');
INSERT INTO `qs_hotword` VALUES ('2477','Ԥ������','42');
INSERT INTO `qs_hotword` VALUES ('2479','����ʦ','38');
INSERT INTO `qs_hotword` VALUES ('2484','���ÿ�רԱ','69');
INSERT INTO `qs_hotword` VALUES ('2487','��������','114');
INSERT INTO `qs_hotword` VALUES ('2488','�Ŵ�רԱ','52');
INSERT INTO `qs_hotword` VALUES ('2495','ó��רԱ','11');
INSERT INTO `qs_hotword` VALUES ('2502','�ͷ�������','31');
INSERT INTO `qs_hotword` VALUES ('2508','չ��ҵ��Ա','19');
INSERT INTO `qs_hotword` VALUES ('2523','IT����','28');
INSERT INTO `qs_hotword` VALUES ('2524','����','210');
INSERT INTO `qs_hotword` VALUES ('2525','�����ƹ�����','67');
INSERT INTO `qs_hotword` VALUES ('2527','�ͷ���Ա','159');
INSERT INTO `qs_hotword` VALUES ('2528','��������','745');
INSERT INTO `qs_hotword` VALUES ('2532','��Ͷ��רԱ','38');
INSERT INTO `qs_hotword` VALUES ('2533','����߻�','71');
INSERT INTO `qs_hotword` VALUES ('2535','�������','103');
INSERT INTO `qs_hotword` VALUES ('2543','����','13');
INSERT INTO `qs_hotword` VALUES ('2544','����ͻ�����','20');
INSERT INTO `qs_hotword` VALUES ('2546','���α༭','65');
INSERT INTO `qs_hotword` VALUES ('2549','��߻�����','15');
INSERT INTO `qs_hotword` VALUES ('2551','Ӧ���ҵ��','166');
INSERT INTO `qs_hotword` VALUES ('2552','�����������','15');
INSERT INTO `qs_hotword` VALUES ('2558','ְҵ����','19');
INSERT INTO `qs_hotword` VALUES ('2559','��������','86');
INSERT INTO `qs_hotword` VALUES ('2562','��Ʒ����ʦ','160');
INSERT INTO `qs_hotword` VALUES ('2573','��������','16');
INSERT INTO `qs_hotword` VALUES ('2578','Ԥ��','10');
INSERT INTO `qs_hotword` VALUES ('2579','�߻�������','65');
INSERT INTO `qs_hotword` VALUES ('2587','�ɹ�����','343');
INSERT INTO `qs_hotword` VALUES ('2588','������Դ����','187');
INSERT INTO `qs_hotword` VALUES ('2589','�רԱ','57');
INSERT INTO `qs_hotword` VALUES ('2593','ǰ�ڲ�����','15');
INSERT INTO `qs_hotword` VALUES ('2594','�г�����','60');
INSERT INTO `qs_hotword` VALUES ('2597','����ҽ��','12');
INSERT INTO `qs_hotword` VALUES ('2602','SEO','22');
INSERT INTO `qs_hotword` VALUES ('2605','�칫������','65');
INSERT INTO `qs_hotword` VALUES ('2606','�п�ҽ��','10');
INSERT INTO `qs_hotword` VALUES ('2608','�г��ƹ�רԱ','329');
INSERT INTO `qs_hotword` VALUES ('2615','�Ƽ��о�Ա','14');
INSERT INTO `qs_hotword` VALUES ('2616','�ۺ�ά�޹�','66');
INSERT INTO `qs_hotword` VALUES ('2621','ҵ����չ','44');
INSERT INTO `qs_hotword` VALUES ('2622','Ӣ�﷭��','279');
INSERT INTO `qs_hotword` VALUES ('2627','Сʱ��','18');
INSERT INTO `qs_hotword` VALUES ('2628','ƽ��ģ��','13');
INSERT INTO `qs_hotword` VALUES ('2633','��ҵ����','11');
INSERT INTO `qs_hotword` VALUES ('2635','��Ŀ��Ա','11');
INSERT INTO `qs_hotword` VALUES ('2638','�ͻ�ά��רԱ','17');
INSERT INTO `qs_hotword` VALUES ('2651','�������ʦ','77');
INSERT INTO `qs_hotword` VALUES ('2656','����Ա','358');
INSERT INTO `qs_hotword` VALUES ('2665','�п�Ա','21');
INSERT INTO `qs_hotword` VALUES ('2667','�ۺ������','68');
INSERT INTO `qs_hotword` VALUES ('2670','QA����ʦ','42');
INSERT INTO `qs_hotword` VALUES ('2672','�߼���������','10');
INSERT INTO `qs_hotword` VALUES ('2682','��ó����','85');
INSERT INTO `qs_hotword` VALUES ('2685','��ѵ��ʦ','496');
INSERT INTO `qs_hotword` VALUES ('2686','�������۹���','76');
INSERT INTO `qs_hotword` VALUES ('2687','�߻��İ�','207');
INSERT INTO `qs_hotword` VALUES ('2708','԰�����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('2713','Ͷ��רԱ','62');
INSERT INTO `qs_hotword` VALUES ('2717','��Ŀ�߻�����','17');
INSERT INTO `qs_hotword` VALUES ('2718','��Ϸ��Ӫ����','11');
INSERT INTO `qs_hotword` VALUES ('2722','���񲿻��','26');
INSERT INTO `qs_hotword` VALUES ('2725','ִ������','11');
INSERT INTO `qs_hotword` VALUES ('2726','��ѯʦ','193');
INSERT INTO `qs_hotword` VALUES ('2732','�����ܼ�','262');
INSERT INTO `qs_hotword` VALUES ('2738','��������','46');
INSERT INTO `qs_hotword` VALUES ('2740','�������Ա','23');
INSERT INTO `qs_hotword` VALUES ('2750','��ѵ����','478');
INSERT INTO `qs_hotword` VALUES ('2752','ƽ�������Ա','36');
INSERT INTO `qs_hotword` VALUES ('2755','��Ʒ����רԱ','16');
INSERT INTO `qs_hotword` VALUES ('2757','���缼��','21');
INSERT INTO `qs_hotword` VALUES ('2760','�������','55');
INSERT INTO `qs_hotword` VALUES ('2774','�߼�Ӫ������','19');
INSERT INTO `qs_hotword` VALUES ('2775','Сѧ��ѧ��ʦ','24');
INSERT INTO `qs_hotword` VALUES ('2776','��������','12');
INSERT INTO `qs_hotword` VALUES ('2777','��Ʒ������','18');
INSERT INTO `qs_hotword` VALUES ('2783','��װ�޹���ʦ','57');
INSERT INTO `qs_hotword` VALUES ('2787','����֧�־���','37');
INSERT INTO `qs_hotword` VALUES ('2794','�����ܼ�','11');
INSERT INTO `qs_hotword` VALUES ('2797','����ʦ','29');
INSERT INTO `qs_hotword` VALUES ('2798','��������','70');
INSERT INTO `qs_hotword` VALUES ('2803','�������רԱ','57');
INSERT INTO `qs_hotword` VALUES ('2812','SEMרԱ','14');
INSERT INTO `qs_hotword` VALUES ('2816','����ˮ����ʦ','163');
INSERT INTO `qs_hotword` VALUES ('2817','ǰ̨�Ӵ�Ա','67');
INSERT INTO `qs_hotword` VALUES ('2822','Ʒ��רԱ','27');
INSERT INTO `qs_hotword` VALUES ('2823','���������','11');
INSERT INTO `qs_hotword` VALUES ('2825','���İ�','99');
INSERT INTO `qs_hotword` VALUES ('2827','����','53');
INSERT INTO `qs_hotword` VALUES ('2829','Ӫ���߻�����','83');
INSERT INTO `qs_hotword` VALUES ('2830','ϴ����','74');
INSERT INTO `qs_hotword` VALUES ('2832','�ͷ�����','404');
INSERT INTO `qs_hotword` VALUES ('2835','ʩ��ͼ���ʦ','77');
INSERT INTO `qs_hotword` VALUES ('2839','ǿ�缼��','13');
INSERT INTO `qs_hotword` VALUES ('2840','��������','31');
INSERT INTO `qs_hotword` VALUES ('2842','������������','40');
INSERT INTO `qs_hotword` VALUES ('2863','��ʦ����','39');
INSERT INTO `qs_hotword` VALUES ('2866','�߼����ʦ','63');
INSERT INTO `qs_hotword` VALUES ('2871','��ѧ�ܼ�','40');
INSERT INTO `qs_hotword` VALUES ('2874','�г�����רԱ','53');
INSERT INTO `qs_hotword` VALUES ('2875','�ⷿ����','40');
INSERT INTO `qs_hotword` VALUES ('2879','ARM����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('2885','��վ��Ӫ����','31');
INSERT INTO `qs_hotword` VALUES ('2891','����ҵ����Ա','11');
INSERT INTO `qs_hotword` VALUES ('2892','�г��ƹ�Ա','86');
INSERT INTO `qs_hotword` VALUES ('2896','�绰������Ա','74');
INSERT INTO `qs_hotword` VALUES ('2898','��������','203');
INSERT INTO `qs_hotword` VALUES ('2902','Ʒ������','43');
INSERT INTO `qs_hotword` VALUES ('2903','����Ա','140');
INSERT INTO `qs_hotword` VALUES ('2906','���չ���ʦ','364');
INSERT INTO `qs_hotword` VALUES ('2908','��������','61');
INSERT INTO `qs_hotword` VALUES ('2911','������ʻԱ','11');
INSERT INTO `qs_hotword` VALUES ('2914','��Ϣ����Ա','63');
INSERT INTO `qs_hotword` VALUES ('2915','��������','161');
INSERT INTO `qs_hotword` VALUES ('2916','���ӹ���ʦ','285');
INSERT INTO `qs_hotword` VALUES ('2919','������ϰ����','90');
INSERT INTO `qs_hotword` VALUES ('2925','SEO�ƹ�','11');
INSERT INTO `qs_hotword` VALUES ('2926','˰����','73');
INSERT INTO `qs_hotword` VALUES ('2928','���������ܼ�','44');
INSERT INTO `qs_hotword` VALUES ('2929','��ѵ','16');
INSERT INTO `qs_hotword` VALUES ('2930','��������','85');
INSERT INTO `qs_hotword` VALUES ('2932','�г��߻�רԱ','95');
INSERT INTO `qs_hotword` VALUES ('2934','ѧϰ����ʦ','82');
INSERT INTO `qs_hotword` VALUES ('2938','���̹���Ա','18');
INSERT INTO `qs_hotword` VALUES ('2942','��������Ա','17');
INSERT INTO `qs_hotword` VALUES ('2943','�����ܼ�����','59');
INSERT INTO `qs_hotword` VALUES ('2947','��Ŀ����','22');
INSERT INTO `qs_hotword` VALUES ('2948','������Ա','85');
INSERT INTO `qs_hotword` VALUES ('2962','������Ա','358');
INSERT INTO `qs_hotword` VALUES ('2971','��������','24');
INSERT INTO `qs_hotword` VALUES ('2975','��Ƶ����','10');
INSERT INTO `qs_hotword` VALUES ('2980','�г��о�����','15');
INSERT INTO `qs_hotword` VALUES ('2981','Ӫ���ܼ�����','36');
INSERT INTO `qs_hotword` VALUES ('2983','����ʦ','79');
INSERT INTO `qs_hotword` VALUES ('2984','�곤����','130');
INSERT INTO `qs_hotword` VALUES ('2993','ʵ���ҹ���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('2994','Ӫ��Ա','70');
INSERT INTO `qs_hotword` VALUES ('2996','���л�ѧ��ʦ','11');
INSERT INTO `qs_hotword` VALUES ('2999','ҵ���ܼ�','48');
INSERT INTO `qs_hotword` VALUES ('3013','н�긣��רԱ','33');
INSERT INTO `qs_hotword` VALUES ('3017','�Ű����','26');
INSERT INTO `qs_hotword` VALUES ('3018','Ӫ����Ӣ','63');
INSERT INTO `qs_hotword` VALUES ('3019','����Ա��','16');
INSERT INTO `qs_hotword` VALUES ('3030','�������ľ���','26');
INSERT INTO `qs_hotword` VALUES ('3031','��Ϸ���߻�','15');
INSERT INTO `qs_hotword` VALUES ('3032','���ι���','30');
INSERT INTO `qs_hotword` VALUES ('3033','KA����','45');
INSERT INTO `qs_hotword` VALUES ('3034','�������۴���','15');
INSERT INTO `qs_hotword` VALUES ('3042','����','11');
INSERT INTO `qs_hotword` VALUES ('3043','��ĿרԱ','88');
INSERT INTO `qs_hotword` VALUES ('3045','�Ա�����','200');
INSERT INTO `qs_hotword` VALUES ('3046','��װ���ʦ','47');
INSERT INTO `qs_hotword` VALUES ('3050','�ֻ���Ϸ����','12');
INSERT INTO `qs_hotword` VALUES ('3054','�չ�','355');
INSERT INTO `qs_hotword` VALUES ('3056','��װ����','24');
INSERT INTO `qs_hotword` VALUES ('3058','����','190');
INSERT INTO `qs_hotword` VALUES ('3061','�����Ա','86');
INSERT INTO `qs_hotword` VALUES ('3064','�ۺ���Ա','26');
INSERT INTO `qs_hotword` VALUES ('3069','������Ա','20');
INSERT INTO `qs_hotword` VALUES ('3071','ľ��','57');
INSERT INTO `qs_hotword` VALUES ('3073','���ϲɹ�','13');
INSERT INTO `qs_hotword` VALUES ('3074','KA����','124');
INSERT INTO `qs_hotword` VALUES ('3079','ϵͳ����Ա','96');
INSERT INTO `qs_hotword` VALUES ('3080','���ϲɹ�','18');
INSERT INTO `qs_hotword` VALUES ('3084','�绰Ӫ��Ա','178');
INSERT INTO `qs_hotword` VALUES ('3089','�г�����','436');
INSERT INTO `qs_hotword` VALUES ('3094','�������ʦ','113');
INSERT INTO `qs_hotword` VALUES ('3095','��������','307');
INSERT INTO `qs_hotword` VALUES ('3099','����֧����Ա','15');
INSERT INTO `qs_hotword` VALUES ('3100','�߼�����','24');
INSERT INTO `qs_hotword` VALUES ('3101','����ҵ��Ա','27');
INSERT INTO `qs_hotword` VALUES ('3102','���ݷ���Ա','93');
INSERT INTO `qs_hotword` VALUES ('3103','�ֿ����Ա','15');
INSERT INTO `qs_hotword` VALUES ('3104','У԰����','55');
INSERT INTO `qs_hotword` VALUES ('3105','�г��İ�','22');
INSERT INTO `qs_hotword` VALUES ('3116','�߼���Ʒ����','31');
INSERT INTO `qs_hotword` VALUES ('3118','��Ʒ��Ӫ����','21');
INSERT INTO `qs_hotword` VALUES ('3125','�߼���Ŀ����','104');
INSERT INTO `qs_hotword` VALUES ('3126','��Ʒ�߻�','72');
INSERT INTO `qs_hotword` VALUES ('3127','�г���չ��Ա','22');
INSERT INTO `qs_hotword` VALUES ('3135','�绰�ͷ�','338');
INSERT INTO `qs_hotword` VALUES ('3139','�绰���۾�Ӣ','82');
INSERT INTO `qs_hotword` VALUES ('3140','��Ʒ���','32');
INSERT INTO `qs_hotword` VALUES ('3143','��������','11');
INSERT INTO `qs_hotword` VALUES ('3144','�г���չ','157');
INSERT INTO `qs_hotword` VALUES ('3146','�ֿ�����','11');
INSERT INTO `qs_hotword` VALUES ('3147','Ӫ��ʦ','93');
INSERT INTO `qs_hotword` VALUES ('3148','����רԱ','132');
INSERT INTO `qs_hotword` VALUES ('3158','Ӫ������','104');
INSERT INTO `qs_hotword` VALUES ('3159','����Ӫ��Ա','51');
INSERT INTO `qs_hotword` VALUES ('3161','���Լ���Ա','32');
INSERT INTO `qs_hotword` VALUES ('3164','�Ա��ƹ�רԱ','67');
INSERT INTO `qs_hotword` VALUES ('3167','�������۴���','75');
INSERT INTO `qs_hotword` VALUES ('3174','�廭ʦ','11');
INSERT INTO `qs_hotword` VALUES ('3183','΢���༭','12');
INSERT INTO `qs_hotword` VALUES ('3186','�г�������','25');
INSERT INTO `qs_hotword` VALUES ('3190','������Ա','100');
INSERT INTO `qs_hotword` VALUES ('3191','�ͷ�����ʦ','212');
INSERT INTO `qs_hotword` VALUES ('3194','����������','26');
INSERT INTO `qs_hotword` VALUES ('3195','���񲿲���','14');
INSERT INTO `qs_hotword` VALUES ('3196','�칫������','704');
INSERT INTO `qs_hotword` VALUES ('3199','���רԱ','133');
INSERT INTO `qs_hotword` VALUES ('3201','��Ʒ����','18');
INSERT INTO `qs_hotword` VALUES ('3206','��������','70');
INSERT INTO `qs_hotword` VALUES ('3207','��óҵ��','53');
INSERT INTO `qs_hotword` VALUES ('3208','�г�����רԱ','38');
INSERT INTO `qs_hotword` VALUES ('3219','����������','61');
INSERT INTO `qs_hotword` VALUES ('3221','��ƾ���','66');
INSERT INTO `qs_hotword` VALUES ('3224','���רԱ','22');
INSERT INTO `qs_hotword` VALUES ('3227','��ƷרԱ','47');
INSERT INTO `qs_hotword` VALUES ('3228','н��רԱ','42');
INSERT INTO `qs_hotword` VALUES ('3229','��������','36');
INSERT INTO `qs_hotword` VALUES ('3230','ϵͳά��Ա','31');
INSERT INTO `qs_hotword` VALUES ('3234','�г�����רԱ','20');
INSERT INTO `qs_hotword` VALUES ('3239','�����ܼ�����','22');
INSERT INTO `qs_hotword` VALUES ('3242','�ʽ�רԱ','24');
INSERT INTO `qs_hotword` VALUES ('3245','�ʽ���','21');
INSERT INTO `qs_hotword` VALUES ('3249','�������ʦ','21');
INSERT INTO `qs_hotword` VALUES ('3254','��ͬ����','14');
INSERT INTO `qs_hotword` VALUES ('3255','��������','77');
INSERT INTO `qs_hotword` VALUES ('3258','����Ա','231');
INSERT INTO `qs_hotword` VALUES ('3259','�߼�����ʦ','46');
INSERT INTO `qs_hotword` VALUES ('3263','C#����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('3265','ǰ�˹���ʦ','56');
INSERT INTO `qs_hotword` VALUES ('3267','��վ�ܹ�ʦ','12');
INSERT INTO `qs_hotword` VALUES ('3274','����˾��','187');
INSERT INTO `qs_hotword` VALUES ('3275','���Ա','27');
INSERT INTO `qs_hotword` VALUES ('3276','ҵ�����۴���','12');
INSERT INTO `qs_hotword` VALUES ('3280','��Ƭ������ʦ','22');
INSERT INTO `qs_hotword` VALUES ('3282','�ɹ�������','87');
INSERT INTO `qs_hotword` VALUES ('3298','����ͷ�רԱ','23');
INSERT INTO `qs_hotword` VALUES ('3299','��Ϣ������','14');
INSERT INTO `qs_hotword` VALUES ('3304','��������','19');
INSERT INTO `qs_hotword` VALUES ('3308','��ó����','59');
INSERT INTO `qs_hotword` VALUES ('3310','��װQC','24');
INSERT INTO `qs_hotword` VALUES ('3314','�г���רԱ','69');
INSERT INTO `qs_hotword` VALUES ('3317','�з�����','46');
INSERT INTO `qs_hotword` VALUES ('3320','Ʒ��Ա','15');
INSERT INTO `qs_hotword` VALUES ('3321','��ѯ��Ŀ����','15');
INSERT INTO `qs_hotword` VALUES ('3322','������Ա','83');
INSERT INTO `qs_hotword` VALUES ('3331','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('3332','Ӣ�Ŀͷ�','16');
INSERT INTO `qs_hotword` VALUES ('3333','����ʦ','29');
INSERT INTO `qs_hotword` VALUES ('3334','��վ��Ʒ����','18');
INSERT INTO `qs_hotword` VALUES ('3354','����ͳ��Ա','24');
INSERT INTO `qs_hotword` VALUES ('3358','�ƻ�Ա','62');
INSERT INTO `qs_hotword` VALUES ('3364','�绰��Ա','60');
INSERT INTO `qs_hotword` VALUES ('3365','Ԥ�㾭��','23');
INSERT INTO `qs_hotword` VALUES ('3367','������ѯ����','21');
INSERT INTO `qs_hotword` VALUES ('3370','Ӧ����','17');
INSERT INTO `qs_hotword` VALUES ('3373','װ�乤��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('3374','���´�����','124');
INSERT INTO `qs_hotword` VALUES ('3375','����������','55');
INSERT INTO `qs_hotword` VALUES ('3378','��ʿ��','13');
INSERT INTO `qs_hotword` VALUES ('3389','ʵ���Ҽ���Ա','52');
INSERT INTO `qs_hotword` VALUES ('3391','��ױʦ','94');
INSERT INTO `qs_hotword` VALUES ('3397','��������Ա','87');
INSERT INTO `qs_hotword` VALUES ('3401','��ױ����','27');
INSERT INTO `qs_hotword` VALUES ('3404','�ͻ�˾��','92');
INSERT INTO `qs_hotword` VALUES ('3406','����','51');
INSERT INTO `qs_hotword` VALUES ('3407','�⹤','50');
INSERT INTO `qs_hotword` VALUES ('3415','����רԱ','25');
INSERT INTO `qs_hotword` VALUES ('3420','��ƹ滮ʦ','207');
INSERT INTO `qs_hotword` VALUES ('3426','��������','350');
INSERT INTO `qs_hotword` VALUES ('3429','��������רԱ','65');
INSERT INTO `qs_hotword` VALUES ('3430','�ͷ���ѯ','12');
INSERT INTO `qs_hotword` VALUES ('3431','���˳��ڲ���','15');
INSERT INTO `qs_hotword` VALUES ('3434','��������','15');
INSERT INTO `qs_hotword` VALUES ('3438','ˮ��ʩ��Ա','15');
INSERT INTO `qs_hotword` VALUES ('3439','����','265');
INSERT INTO `qs_hotword` VALUES ('3444','����Ա','28');
INSERT INTO `qs_hotword` VALUES ('3450','����˾��','39');
INSERT INTO `qs_hotword` VALUES ('3451','ˮů����ʦ','230');
INSERT INTO `qs_hotword` VALUES ('3452','Ԥ����Ա','37');
INSERT INTO `qs_hotword` VALUES ('3454','ά��ǯ��','40');
INSERT INTO `qs_hotword` VALUES ('3456','�г�����רԱ','21');
INSERT INTO `qs_hotword` VALUES ('3459','����','25');
INSERT INTO `qs_hotword` VALUES ('3463','�ܾ�������','49');
INSERT INTO `qs_hotword` VALUES ('3464','ǿ���繤��ʦ','22');
INSERT INTO `qs_hotword` VALUES ('3468','��������ʦ','33');
INSERT INTO `qs_hotword` VALUES ('3472','���۹���ʦ','121');
INSERT INTO `qs_hotword` VALUES ('3473','�豸������','14');
INSERT INTO `qs_hotword` VALUES ('3476','��װ����ʦ','22');
INSERT INTO `qs_hotword` VALUES ('3479','ǰ������','19');
INSERT INTO `qs_hotword` VALUES ('3481','�������','55');
INSERT INTO `qs_hotword` VALUES ('3483','С��˾��','125');
INSERT INTO `qs_hotword` VALUES ('3484','����Ա','120');
INSERT INTO `qs_hotword` VALUES ('3485','�ֿⱣ��Ա','144');
INSERT INTO `qs_hotword` VALUES ('3486','B��ҽʦ','17');
INSERT INTO `qs_hotword` VALUES ('3488','��ʦ','395');
INSERT INTO `qs_hotword` VALUES ('3494','Ļǽ����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('3497','��Ӱ����','87');
INSERT INTO `qs_hotword` VALUES ('3505','���˽��ڲ���','12');
INSERT INTO `qs_hotword` VALUES ('3512','����','78');
INSERT INTO `qs_hotword` VALUES ('3516','ƽ������','12');
INSERT INTO `qs_hotword` VALUES ('3517','��������','14');
INSERT INTO `qs_hotword` VALUES ('3518','����˾��','42');
INSERT INTO `qs_hotword` VALUES ('3520','��������','121');
INSERT INTO `qs_hotword` VALUES ('3527','Ԥ�㹤��ʦ','52');
INSERT INTO `qs_hotword` VALUES ('3528','����','33');
INSERT INTO `qs_hotword` VALUES ('3532','��������','27');
INSERT INTO `qs_hotword` VALUES ('3535','����������Ա','22');
INSERT INTO `qs_hotword` VALUES ('3536','�Զ�������ʦ','115');
INSERT INTO `qs_hotword` VALUES ('3539','��������ʦ','98');
INSERT INTO `qs_hotword` VALUES ('3541','��������','31');
INSERT INTO `qs_hotword` VALUES ('3548','�г��ƹ�����','61');
INSERT INTO `qs_hotword` VALUES ('3549','�г���רԱ','243');
INSERT INTO `qs_hotword` VALUES ('3550','���þ���','54');
INSERT INTO `qs_hotword` VALUES ('3551','���','25');
INSERT INTO `qs_hotword` VALUES ('3556','Ʒ��רԱ','45');
INSERT INTO `qs_hotword` VALUES ('3557','CAD��ͼԱ','51');
INSERT INTO `qs_hotword` VALUES ('3558','���л�ѧ��ʦ','36');
INSERT INTO `qs_hotword` VALUES ('3561','��ҵ����','1543');
INSERT INTO `qs_hotword` VALUES ('3574','���רԱ','32');
INSERT INTO `qs_hotword` VALUES ('3575','������������','16');
INSERT INTO `qs_hotword` VALUES ('3580','�б깤��ʦ','23');
INSERT INTO `qs_hotword` VALUES ('3581','����֧��','87');
INSERT INTO `qs_hotword` VALUES ('3584','����˾��','10');
INSERT INTO `qs_hotword` VALUES ('3591','�绰������Ա','10');
INSERT INTO `qs_hotword` VALUES ('3592','���ݷ���רԱ','85');
INSERT INTO `qs_hotword` VALUES ('3595','��ϰ������','51');
INSERT INTO `qs_hotword` VALUES ('3596','���߻�����','12');
INSERT INTO `qs_hotword` VALUES ('3598','����Ӫ������','72');
INSERT INTO `qs_hotword` VALUES ('3607','��������','36');
INSERT INTO `qs_hotword` VALUES ('3610','����ҵ��Ա','13');
INSERT INTO `qs_hotword` VALUES ('3612','������곤','27');
INSERT INTO `qs_hotword` VALUES ('3616','������Ա','29');
INSERT INTO `qs_hotword` VALUES ('3617','�ͻ�Ա','144');
INSERT INTO `qs_hotword` VALUES ('3619','ʩ���ӳ�','10');
INSERT INTO `qs_hotword` VALUES ('3621','��������','14');
INSERT INTO `qs_hotword` VALUES ('3630','�ֿ�����','34');
INSERT INTO `qs_hotword` VALUES ('3634','�绰��Լ','17');
INSERT INTO `qs_hotword` VALUES ('3648','�߼�ҵ����','29');
INSERT INTO `qs_hotword` VALUES ('3659','��������','12');
INSERT INTO `qs_hotword` VALUES ('3660','���ɼ���Ա','21');
INSERT INTO `qs_hotword` VALUES ('3664','������������','16');
INSERT INTO `qs_hotword` VALUES ('3665','����Ա','48');
INSERT INTO `qs_hotword` VALUES ('3668','��������רԱ','21');
INSERT INTO `qs_hotword` VALUES ('3683','�豸ά��','35');
INSERT INTO `qs_hotword` VALUES ('3686','��ѵ��ʦ','17');
INSERT INTO `qs_hotword` VALUES ('3687','����������','11');
INSERT INTO `qs_hotword` VALUES ('3689','��Ӫ�ܼ�','318');
INSERT INTO `qs_hotword` VALUES ('3696','�ͻ���ϵ����','24');
INSERT INTO `qs_hotword` VALUES ('3703','�߼�����Ա','61');
INSERT INTO `qs_hotword` VALUES ('3710','��������Ա','133');
INSERT INTO `qs_hotword` VALUES ('3712','�����ܹ���ʦ','21');
INSERT INTO `qs_hotword` VALUES ('3716','�����곤','244');
INSERT INTO `qs_hotword` VALUES ('3719','���﷭��','171');
INSERT INTO `qs_hotword` VALUES ('3722','��������','98');
INSERT INTO `qs_hotword` VALUES ('3723','3D���','38');
INSERT INTO `qs_hotword` VALUES ('3724','��ְ','90');
INSERT INTO `qs_hotword` VALUES ('3727','�г�������','14');
INSERT INTO `qs_hotword` VALUES ('3731','����������Ա','11');
INSERT INTO `qs_hotword` VALUES ('3732','Ʒ�ʼ���Ա','22');
INSERT INTO `qs_hotword` VALUES ('3736','��������','37');
INSERT INTO `qs_hotword` VALUES ('3741','���Ա','215');
INSERT INTO `qs_hotword` VALUES ('3748','�鱦����','19');
INSERT INTO `qs_hotword` VALUES ('3750','�׶���ʦ','88');
INSERT INTO `qs_hotword` VALUES ('3751','�����ܳ�','23');
INSERT INTO `qs_hotword` VALUES ('3753','�ٶ�Ӣ����ʦ','40');
INSERT INTO `qs_hotword` VALUES ('3754','�г����۴���','15');
INSERT INTO `qs_hotword` VALUES ('3756','ǰ������','59');
INSERT INTO `qs_hotword` VALUES ('3757','Ʒ�ܹ���ʦ','38');
INSERT INTO `qs_hotword` VALUES ('3758','�ͷ�����Ա','150');
INSERT INTO `qs_hotword` VALUES ('3760','PA���','10');
INSERT INTO `qs_hotword` VALUES ('3763','����Ա','39');
INSERT INTO `qs_hotword` VALUES ('3768','�������','14');
INSERT INTO `qs_hotword` VALUES ('3769','�����������','14');
INSERT INTO `qs_hotword` VALUES ('3775','����ó��רԱ','62');
INSERT INTO `qs_hotword` VALUES ('3776','Ӫ����Ա','83');
INSERT INTO `qs_hotword` VALUES ('3778','��������','18');
INSERT INTO `qs_hotword` VALUES ('3784','Ӱ�Ӻ���','25');
INSERT INTO `qs_hotword` VALUES ('3786','���ø���','67');
INSERT INTO `qs_hotword` VALUES ('3789','�ӹ�','19');
INSERT INTO `qs_hotword` VALUES ('3791','���¹���','13');
INSERT INTO `qs_hotword` VALUES ('3797','ģ��ǯ��','37');
INSERT INTO `qs_hotword` VALUES ('3802','����רԱ','39');
INSERT INTO `qs_hotword` VALUES ('3805','�߼��ͻ�����','22');
INSERT INTO `qs_hotword` VALUES ('3807','��������','29');
INSERT INTO `qs_hotword` VALUES ('3812','��е��ͼԱ','21');
INSERT INTO `qs_hotword` VALUES ('3813','Э��Ա','20');
INSERT INTO `qs_hotword` VALUES ('3815','��¯��','60');
INSERT INTO `qs_hotword` VALUES ('3820','�ֿ����Ա','14');
INSERT INTO `qs_hotword` VALUES ('3822','ͳ��Ա','304');
INSERT INTO `qs_hotword` VALUES ('3824','IQC','20');
INSERT INTO `qs_hotword` VALUES ('3830','������Ա','15');
INSERT INTO `qs_hotword` VALUES ('3832','ʩ��ͼ��ͼԱ','23');
INSERT INTO `qs_hotword` VALUES ('3836','��ҵ���','21');
INSERT INTO `qs_hotword` VALUES ('3839','�콢��곤','13');
INSERT INTO `qs_hotword` VALUES ('3840','ůͨ���ʦ','74');
INSERT INTO `qs_hotword` VALUES ('3842','ά�޹�','132');
INSERT INTO `qs_hotword` VALUES ('3846','�ۺ�����','10');
INSERT INTO `qs_hotword` VALUES ('3847','ITרԱ','122');
INSERT INTO `qs_hotword` VALUES ('3849','��������Ա','20');
INSERT INTO `qs_hotword` VALUES ('3852','���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('3856','�г��߻�','185');
INSERT INTO `qs_hotword` VALUES ('3869','ý������','19');
INSERT INTO `qs_hotword` VALUES ('3871','�ⷿ����','16');
INSERT INTO `qs_hotword` VALUES ('3872','���þ���','12');
INSERT INTO `qs_hotword` VALUES ('3873','�з���Ա','73');
INSERT INTO `qs_hotword` VALUES ('3876','����˾��','123');
INSERT INTO `qs_hotword` VALUES ('3878','ůͨ�����Ա','27');
INSERT INTO `qs_hotword` VALUES ('3895','Ԥ��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('3897','��ְ��ҳ����','15');
INSERT INTO `qs_hotword` VALUES ('3901','�绰רԱ','33');
INSERT INTO `qs_hotword` VALUES ('3903','�׶�԰԰��','33');
INSERT INTO `qs_hotword` VALUES ('3906','������ϵרԱ','35');
INSERT INTO `qs_hotword` VALUES ('3907','����װ�乤','12');
INSERT INTO `qs_hotword` VALUES ('3914','�г�Ӫ��','160');
INSERT INTO `qs_hotword` VALUES ('3922','ʵϰ�༭','11');
INSERT INTO `qs_hotword` VALUES ('3925','��ҵרԱ','32');
INSERT INTO `qs_hotword` VALUES ('3926','ͼƬ�༭','16');
INSERT INTO `qs_hotword` VALUES ('3928','ý���ܼ�','16');
INSERT INTO `qs_hotword` VALUES ('3932','�����ƻ�����','14');
INSERT INTO `qs_hotword` VALUES ('3933','Һѹ����ʦ','51');
INSERT INTO `qs_hotword` VALUES ('3939','������','27');
INSERT INTO `qs_hotword` VALUES ('3940','���ఢ��','15');
INSERT INTO `qs_hotword` VALUES ('3943','ҵ����Ա','196');
INSERT INTO `qs_hotword` VALUES ('3944','�ֽṹ����ʦ','40');
INSERT INTO `qs_hotword` VALUES ('3947','ʵʩ����','130');
INSERT INTO `qs_hotword` VALUES ('3967','�纸��','103');
INSERT INTO `qs_hotword` VALUES ('3968','�ⷿ����','36');
INSERT INTO `qs_hotword` VALUES ('3971','��ȫ����','49');
INSERT INTO `qs_hotword` VALUES ('3985','�������Ŀͷ�','20');
INSERT INTO `qs_hotword` VALUES ('3986','�ۺ�������','27');
INSERT INTO `qs_hotword` VALUES ('3988','��ʱ����Ա','11');
INSERT INTO `qs_hotword` VALUES ('3991','��������','248');
INSERT INTO `qs_hotword` VALUES ('3992','�������','50');
INSERT INTO `qs_hotword` VALUES ('3995','�������Ա','30');
INSERT INTO `qs_hotword` VALUES ('3998','��������Ա','12');
INSERT INTO `qs_hotword` VALUES ('4005','ά�޼�ʦ','71');
INSERT INTO `qs_hotword` VALUES ('4006','��еװ�乤','16');
INSERT INTO `qs_hotword` VALUES ('4015','��ҵ��Ŀ����','48');
INSERT INTO `qs_hotword` VALUES ('4026','���̲�����','59');
INSERT INTO `qs_hotword` VALUES ('4028','ǰ���Ӵ�','68');
INSERT INTO `qs_hotword` VALUES ('4032','�߼���ҵ����','116');
INSERT INTO `qs_hotword` VALUES ('4049','�����ܼ�','24');
INSERT INTO `qs_hotword` VALUES ('4050','������������','13');
INSERT INTO `qs_hotword` VALUES ('4058','���﷭��','35');
INSERT INTO `qs_hotword` VALUES ('4063','����Ա','11');
INSERT INTO `qs_hotword` VALUES ('4064','�೵˾��','33');
INSERT INTO `qs_hotword` VALUES ('4066','֪ʶ��Ȩ����','40');
INSERT INTO `qs_hotword` VALUES ('4073','��������','192');
INSERT INTO `qs_hotword` VALUES ('4076','�г�������','25');
INSERT INTO `qs_hotword` VALUES ('4080','�г�����Ա','36');
INSERT INTO `qs_hotword` VALUES ('4084','���곤','45');
INSERT INTO `qs_hotword` VALUES ('4086','��Ա','242');
INSERT INTO `qs_hotword` VALUES ('4089','HR����','15');
INSERT INTO `qs_hotword` VALUES ('4096','���ҵ��','15');
INSERT INTO `qs_hotword` VALUES ('4098','��������Ա','80');
INSERT INTO `qs_hotword` VALUES ('4099','ע����ʦ','68');
INSERT INTO `qs_hotword` VALUES ('4101','��๤','46');
INSERT INTO `qs_hotword` VALUES ('4102','ע��רԱ','35');
INSERT INTO `qs_hotword` VALUES ('4105','����','144');
INSERT INTO `qs_hotword` VALUES ('4106','�ٴ����Ա','25');
INSERT INTO `qs_hotword` VALUES ('4111','��������','126');
INSERT INTO `qs_hotword` VALUES ('4114','ʵ��Ա','65');
INSERT INTO `qs_hotword` VALUES ('4116','רְ˾��','45');
INSERT INTO `qs_hotword` VALUES ('4119','��������','46');
INSERT INTO `qs_hotword` VALUES ('4122','ѧ������','16');
INSERT INTO `qs_hotword` VALUES ('4126','ͨ�Ź���ʦ','65');
INSERT INTO `qs_hotword` VALUES ('4134','������ѯʦ','48');
INSERT INTO `qs_hotword` VALUES ('4141','��ó��������','25');
INSERT INTO `qs_hotword` VALUES ('4146','��������רԱ','30');
INSERT INTO `qs_hotword` VALUES ('4147','��װҵ������','10');
INSERT INTO `qs_hotword` VALUES ('4149','�Ӵ�Ա','36');
INSERT INTO `qs_hotword` VALUES ('4150','������Ա','140');
INSERT INTO `qs_hotword` VALUES ('4152','�����೤','21');
INSERT INTO `qs_hotword` VALUES ('4153','���˾��','21');
INSERT INTO `qs_hotword` VALUES ('4160','��������','69');
INSERT INTO `qs_hotword` VALUES ('4163','����Ա','10');
INSERT INTO `qs_hotword` VALUES ('4165','�����鳤','27');
INSERT INTO `qs_hotword` VALUES ('4166','������ʦ','27');
INSERT INTO `qs_hotword` VALUES ('4167','ά������ʦ','117');
INSERT INTO `qs_hotword` VALUES ('4169','������Ŀ����','26');
INSERT INTO `qs_hotword` VALUES ('4181','����ͳ��','30');
INSERT INTO `qs_hotword` VALUES ('4184','����ά��','49');
INSERT INTO `qs_hotword` VALUES ('4186','�����ܾ���','29');
INSERT INTO `qs_hotword` VALUES ('4188','����Ա','34');
INSERT INTO `qs_hotword` VALUES ('4191','ҵ������','37');
INSERT INTO `qs_hotword` VALUES ('4192','���繤��ʦ','187');
INSERT INTO `qs_hotword` VALUES ('4196','��Ŀ��������','32');
INSERT INTO `qs_hotword` VALUES ('4208','�ͻ�����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('4209','����������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('4214','��ְ��ʦ','14');
INSERT INTO `qs_hotword` VALUES ('4221','�ƻ�רԱ','30');
INSERT INTO `qs_hotword` VALUES ('4228','�칫����','14');
INSERT INTO `qs_hotword` VALUES ('4241','����ҵ��','11');
INSERT INTO `qs_hotword` VALUES ('4245','���浼��','43');
INSERT INTO `qs_hotword` VALUES ('4249','����Ա','571');
INSERT INTO `qs_hotword` VALUES ('4253','���۵���','14');
INSERT INTO `qs_hotword` VALUES ('4266','��������Ա','15');
INSERT INTO `qs_hotword` VALUES ('4272','�������','43');
INSERT INTO `qs_hotword` VALUES ('4277','�����ܼ�','93');
INSERT INTO `qs_hotword` VALUES ('4278','ʵϰ���ʦ','111');
INSERT INTO `qs_hotword` VALUES ('4279','Ʒ�ʲ�����','10');
INSERT INTO `qs_hotword` VALUES ('4298','������Ŀ����','41');
INSERT INTO `qs_hotword` VALUES ('4299','��������Ա','105');
INSERT INTO `qs_hotword` VALUES ('4302','�����˾��','11');
INSERT INTO `qs_hotword` VALUES ('4314','�������','23');
INSERT INTO `qs_hotword` VALUES ('4318','��������','10');
INSERT INTO `qs_hotword` VALUES ('4321','������ҵ','38');
INSERT INTO `qs_hotword` VALUES ('4322','���񵣵�','10');
INSERT INTO `qs_hotword` VALUES ('4323','��չרԱ','257');
INSERT INTO `qs_hotword` VALUES ('4324','�ṹ���ʦ','196');
INSERT INTO `qs_hotword` VALUES ('4338','���̶���','31');
INSERT INTO `qs_hotword` VALUES ('4340','�������','14');
INSERT INTO `qs_hotword` VALUES ('4341','ר����ӪҵԱ','64');
INSERT INTO `qs_hotword` VALUES ('4348','�Ŷ�����','14');
INSERT INTO `qs_hotword` VALUES ('4356','����������Ա','19');
INSERT INTO `qs_hotword` VALUES ('4359','�ܵ�����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('4360','������Ա','25');
INSERT INTO `qs_hotword` VALUES ('4362','��Ϸ�ƹ�Ա','10');
INSERT INTO `qs_hotword` VALUES ('4363','����������Ա','20');
INSERT INTO `qs_hotword` VALUES ('4366','����','367');
INSERT INTO `qs_hotword` VALUES ('4374','�׶�ָ����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('4378','��ҳ�༭','14');
INSERT INTO `qs_hotword` VALUES ('4382','�Ŵ�����','15');
INSERT INTO `qs_hotword` VALUES ('4383','����רԱ','112');
INSERT INTO `qs_hotword` VALUES ('4387','Ʒ��רԱ','18');
INSERT INTO `qs_hotword` VALUES ('4390','�칫�Ҹ�����','61');
INSERT INTO `qs_hotword` VALUES ('4393','���﷭��','58');
INSERT INTO `qs_hotword` VALUES ('4401','�����ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('4405','����İ�','50');
INSERT INTO `qs_hotword` VALUES ('4424','ҽ��','47');
INSERT INTO `qs_hotword` VALUES ('4426','С���ƹ�רԱ','22');
INSERT INTO `qs_hotword` VALUES ('4427','�շ�Ա','56');
INSERT INTO `qs_hotword` VALUES ('4434','��������Ա','14');
INSERT INTO `qs_hotword` VALUES ('4438','���۸�����','20');
INSERT INTO `qs_hotword` VALUES ('4442','ͳ����Ա','22');
INSERT INTO `qs_hotword` VALUES ('4444','���ݹ���','283');
INSERT INTO `qs_hotword` VALUES ('4446','�ͷ�AE','14');
INSERT INTO `qs_hotword` VALUES ('4449','��վ����','40');
INSERT INTO `qs_hotword` VALUES ('4450','���ž���','117');
INSERT INTO `qs_hotword` VALUES ('4453','�߼��İ��߻�','16');
INSERT INTO `qs_hotword` VALUES ('4455','������չ����','35');
INSERT INTO `qs_hotword` VALUES ('4457','ʡ������','557');
INSERT INTO `qs_hotword` VALUES ('4459','��ҵ���','68');
INSERT INTO `qs_hotword` VALUES ('4461','������','15');
INSERT INTO `qs_hotword` VALUES ('4462','���ҹ�','54');
INSERT INTO `qs_hotword` VALUES ('4465','���¹�','112');
INSERT INTO `qs_hotword` VALUES ('4473','���������Ա','10');
INSERT INTO `qs_hotword` VALUES ('4474','��������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('4475','�߼��繤','11');
INSERT INTO `qs_hotword` VALUES ('4480','���ʦ','48');
INSERT INTO `qs_hotword` VALUES ('4481','����רԱ','60');
INSERT INTO `qs_hotword` VALUES ('4483','��ѯ����','102');
INSERT INTO `qs_hotword` VALUES ('4486','�绰�ͷ���Ա','13');
INSERT INTO `qs_hotword` VALUES ('4489','������������','26');
INSERT INTO `qs_hotword` VALUES ('4498','ҩʦ','30');
INSERT INTO `qs_hotword` VALUES ('4501','�г��ƹ�����','12');
INSERT INTO `qs_hotword` VALUES ('4504','����רԱ','63');
INSERT INTO `qs_hotword` VALUES ('4522','��̳�༭','149');
INSERT INTO `qs_hotword` VALUES ('4524','���ɸ�','15');
INSERT INTO `qs_hotword` VALUES ('4525','���ҵ��Ա','68');
INSERT INTO `qs_hotword` VALUES ('4526','������','127');
INSERT INTO `qs_hotword` VALUES ('4532','�׶�԰���','11');
INSERT INTO `qs_hotword` VALUES ('4536','��ҵ��Ӫ����','15');
INSERT INTO `qs_hotword` VALUES ('4556','������Ա','41');
INSERT INTO `qs_hotword` VALUES ('4562','벻�����','58');
INSERT INTO `qs_hotword` VALUES ('4566','���ۿͻ�����','36');
INSERT INTO `qs_hotword` VALUES ('4569','��̹���','16');
INSERT INTO `qs_hotword` VALUES ('4573','�����ʦ','41');
INSERT INTO `qs_hotword` VALUES ('4585','�̳�ҵ��Ա','24');
INSERT INTO `qs_hotword` VALUES ('4586','��������','36');
INSERT INTO `qs_hotword` VALUES ('4595','�ۺ�רԱ','39');
INSERT INTO `qs_hotword` VALUES ('4599','����ʵϰ��','30');
INSERT INTO `qs_hotword` VALUES ('4602','���ڽ�ʦ','10');
INSERT INTO `qs_hotword` VALUES ('4603','����רԱ','19');
INSERT INTO `qs_hotword` VALUES ('4604','�������ʦ','96');
INSERT INTO `qs_hotword` VALUES ('4605','������Ա','31');
INSERT INTO `qs_hotword` VALUES ('4609','������������','10');
INSERT INTO `qs_hotword` VALUES ('4611','ҵ����չ��Ա','13');
INSERT INTO `qs_hotword` VALUES ('4613','������ƾ���','33');
INSERT INTO `qs_hotword` VALUES ('4616','���۸��ܾ���','25');
INSERT INTO `qs_hotword` VALUES ('4617','�绰Ӫ����Ա','48');
INSERT INTO `qs_hotword` VALUES ('4618','ҵ������','30');
INSERT INTO `qs_hotword` VALUES ('4623','ҵ��Ӣ','201');
INSERT INTO `qs_hotword` VALUES ('4625','԰��','14');
INSERT INTO `qs_hotword` VALUES ('4635','�߼�ӪҵԱ','15');
INSERT INTO `qs_hotword` VALUES ('4641','HRרԱ','11');
INSERT INTO `qs_hotword` VALUES ('4642','IPQC','21');
INSERT INTO `qs_hotword` VALUES ('4652','�г�Ӫ����Ա','51');
INSERT INTO `qs_hotword` VALUES ('4653','�ƾ��༭','15');
INSERT INTO `qs_hotword` VALUES ('4656','Ͷ������','20');
INSERT INTO `qs_hotword` VALUES ('4659','������','81');
INSERT INTO `qs_hotword` VALUES ('4678','ҽҩ���̾���','36');
INSERT INTO `qs_hotword` VALUES ('4679','��������','16');
INSERT INTO `qs_hotword` VALUES ('4681','�鱦���۹���','139');
INSERT INTO `qs_hotword` VALUES ('4684','н�꼨Ч����','39');
INSERT INTO `qs_hotword` VALUES ('4695','ִ���ܾ���','29');
INSERT INTO `qs_hotword` VALUES ('4706','�������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('4711','�����Ա','17');
INSERT INTO `qs_hotword` VALUES ('4712','����ʵϰ��','100');
INSERT INTO `qs_hotword` VALUES ('4714','���','43');
INSERT INTO `qs_hotword` VALUES ('4719','���רԱ','27');
INSERT INTO `qs_hotword` VALUES ('4725','�������֧��','16');
INSERT INTO `qs_hotword` VALUES ('4726','�г�������','19');
INSERT INTO `qs_hotword` VALUES ('4736','����߻�ʦ','30');
INSERT INTO `qs_hotword` VALUES ('4739','��վ���','50');
INSERT INTO `qs_hotword` VALUES ('4741','�߼�����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('4744','��ҵ�߻�����','13');
INSERT INTO `qs_hotword` VALUES ('4749','ҽҩ����','10');
INSERT INTO `qs_hotword` VALUES ('4753','����רԱ','22');
INSERT INTO `qs_hotword` VALUES ('4764','ǰ̨����','41');
INSERT INTO `qs_hotword` VALUES ('4773','ҵ��ʵϰ��','20');
INSERT INTO `qs_hotword` VALUES ('4778','���̴���','56');
INSERT INTO `qs_hotword` VALUES ('4779','��ҵ�Ļ�רԱ','88');
INSERT INTO `qs_hotword` VALUES ('4781','����Ӫ������','47');
INSERT INTO `qs_hotword` VALUES ('4783','�߼�����','18');
INSERT INTO `qs_hotword` VALUES ('4786','Ԥ����Ա','41');
INSERT INTO `qs_hotword` VALUES ('4787','�������ݼ�ʦ','25');
INSERT INTO `qs_hotword` VALUES ('4788','�ͻ��ط�רԱ','20');
INSERT INTO `qs_hotword` VALUES ('4791','��ƾ���','118');
INSERT INTO `qs_hotword` VALUES ('4796','�����ƹ�����','20');
INSERT INTO `qs_hotword` VALUES ('4797','��е�������','10');
INSERT INTO `qs_hotword` VALUES ('4801','�ƹ�����','36');
INSERT INTO `qs_hotword` VALUES ('4811','����ѧͽ','19');
INSERT INTO `qs_hotword` VALUES ('4814','����ά�޹�','30');
INSERT INTO `qs_hotword` VALUES ('4815','��������','37');
INSERT INTO `qs_hotword` VALUES ('4816','���ʦ','37');
INSERT INTO `qs_hotword` VALUES ('4817','Ӫҵ���ܾ���','24');
INSERT INTO `qs_hotword` VALUES ('4818','����˾��','25');
INSERT INTO `qs_hotword` VALUES ('4830','ʵϰҵ��Ա','24');
INSERT INTO `qs_hotword` VALUES ('4831','�绰Ӫ��רԱ','258');
INSERT INTO `qs_hotword` VALUES ('4834','�ʼ�רԱ','25');
INSERT INTO `qs_hotword` VALUES ('4837','�ۺ�����','42');
INSERT INTO `qs_hotword` VALUES ('4838','���רԱ','14');
INSERT INTO `qs_hotword` VALUES ('4841','��۹���ʦ','198');
INSERT INTO `qs_hotword` VALUES ('4848','�༭������','18');
INSERT INTO `qs_hotword` VALUES ('4864','���Ų����ܼ�','19');
INSERT INTO `qs_hotword` VALUES ('4876','�г���ϢԱ','11');
INSERT INTO `qs_hotword` VALUES ('4877','��Ա','105');
INSERT INTO `qs_hotword` VALUES ('4878','��������ʦ','44');
INSERT INTO `qs_hotword` VALUES ('4882','һ������ʦ','65');
INSERT INTO `qs_hotword` VALUES ('4891','��Ŀ����','29');
INSERT INTO `qs_hotword` VALUES ('4897','��ϯ����','15');
INSERT INTO `qs_hotword` VALUES ('4902','HR����','16');
INSERT INTO `qs_hotword` VALUES ('4903','ҽԺ����','43');
INSERT INTO `qs_hotword` VALUES ('4907','��������ʦ','39');
INSERT INTO `qs_hotword` VALUES ('4909','���Ա','75');
INSERT INTO `qs_hotword` VALUES ('4925','�����繤','32');
INSERT INTO `qs_hotword` VALUES ('4930','�����о�Ա','30');
INSERT INTO `qs_hotword` VALUES ('4931','����Ӫ�˾���','10');
INSERT INTO `qs_hotword` VALUES ('4939','���ۺ���','14');
INSERT INTO `qs_hotword` VALUES ('4947','����Ա','24');
INSERT INTO `qs_hotword` VALUES ('4951','�ֳ�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('4953','�������','33');
INSERT INTO `qs_hotword` VALUES ('4955','ϵͳ����Ա','18');
INSERT INTO `qs_hotword` VALUES ('4957','��װ����','68');
INSERT INTO `qs_hotword` VALUES ('4958','���ɼ�����','14');
INSERT INTO `qs_hotword` VALUES ('4970','����ó����Ա','18');
INSERT INTO `qs_hotword` VALUES ('4972','��������','51');
INSERT INTO `qs_hotword` VALUES ('4977','����ӪҵԱ','10');
INSERT INTO `qs_hotword` VALUES ('4978','��Ч����רԱ','78');
INSERT INTO `qs_hotword` VALUES ('4979','���̼���','19');
INSERT INTO `qs_hotword` VALUES ('4980','���ݷ���','48');
INSERT INTO `qs_hotword` VALUES ('4987','���ݵ�ʦ','354');
INSERT INTO `qs_hotword` VALUES ('4989','�ٴ�ҽҩ����','88');
INSERT INTO `qs_hotword` VALUES ('4992','�ۺ�����','18');
INSERT INTO `qs_hotword` VALUES ('4993','���ݽ�ʦ','67');
INSERT INTO `qs_hotword` VALUES ('4996','����ѧԱ','44');
INSERT INTO `qs_hotword` VALUES ('4998','��������ʦ','34');
INSERT INTO `qs_hotword` VALUES ('5001','��������Ա','58');
INSERT INTO `qs_hotword` VALUES ('5004','ǰ̨�ͷ�','73');
INSERT INTO `qs_hotword` VALUES ('5005','פ�����','13');
INSERT INTO `qs_hotword` VALUES ('5006','¼��Ա','24');
INSERT INTO `qs_hotword` VALUES ('5011','����ܼ�','16');
INSERT INTO `qs_hotword` VALUES ('5015','����Ԥ��','10');
INSERT INTO `qs_hotword` VALUES ('5016','ר��������Ա','12');
INSERT INTO `qs_hotword` VALUES ('5024','��ѯҽʦ','10');
INSERT INTO `qs_hotword` VALUES ('5026','�г�������Ա','42');
INSERT INTO `qs_hotword` VALUES ('5029','ý������','23');
INSERT INTO `qs_hotword` VALUES ('5050','������Ŀ����','21');
INSERT INTO `qs_hotword` VALUES ('5055','רְӢ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('5060','��ҵ����','123');
INSERT INTO `qs_hotword` VALUES ('5062','�����ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('5065','��Ա�ͷ�','28');
INSERT INTO `qs_hotword` VALUES ('5073','�绰��ѯʦ','17');
INSERT INTO `qs_hotword` VALUES ('5076','ѧͽ','18');
INSERT INTO `qs_hotword` VALUES ('5080','��ҵ����','35');
INSERT INTO `qs_hotword` VALUES ('5082','��������Ա','10');
INSERT INTO `qs_hotword` VALUES ('5086','�߻�����','141');
INSERT INTO `qs_hotword` VALUES ('5087','�������۾���','12');
INSERT INTO `qs_hotword` VALUES ('5093','��ְ����Ա','13');
INSERT INTO `qs_hotword` VALUES ('5105','��������ʦ','81');
INSERT INTO `qs_hotword` VALUES ('5108','��չ����','145');
INSERT INTO `qs_hotword` VALUES ('5121','��������','26');
INSERT INTO `qs_hotword` VALUES ('5124','����רԱ','32');
INSERT INTO `qs_hotword` VALUES ('5133','QA����','27');
INSERT INTO `qs_hotword` VALUES ('5142','���Ա','69');
INSERT INTO `qs_hotword` VALUES ('5145','�������Ա','28');
INSERT INTO `qs_hotword` VALUES ('5146','У������','63');
INSERT INTO `qs_hotword` VALUES ('5147','רְ������','26');
INSERT INTO `qs_hotword` VALUES ('5149','������Ա','14');
INSERT INTO `qs_hotword` VALUES ('5151','���Ṥ','85');
INSERT INTO `qs_hotword` VALUES ('5155','ҵ�񲿾���','68');
INSERT INTO `qs_hotword` VALUES ('5157','ʵϰ������','16');
INSERT INTO `qs_hotword` VALUES ('5159','��Ŀ�걨רԱ','57');
INSERT INTO `qs_hotword` VALUES ('5170','�Ź����۾���','19');
INSERT INTO `qs_hotword` VALUES ('5171','ҵ����չ����','16');
INSERT INTO `qs_hotword` VALUES ('5178','�ƹ㾭��','80');
INSERT INTO `qs_hotword` VALUES ('5191','������Ա','16');
INSERT INTO `qs_hotword` VALUES ('5195','����Ա','39');
INSERT INTO `qs_hotword` VALUES ('5198','װ�޹���ʦ','84');
INSERT INTO `qs_hotword` VALUES ('5200','C��������ʦ','22');
INSERT INTO `qs_hotword` VALUES ('5202','����','31');
INSERT INTO `qs_hotword` VALUES ('5212','��������רԱ','16');
INSERT INTO `qs_hotword` VALUES ('5213','Ʒ������','35');
INSERT INTO `qs_hotword` VALUES ('5214','����רԱ','116');
INSERT INTO `qs_hotword` VALUES ('5217','��������Ա','11');
INSERT INTO `qs_hotword` VALUES ('5218','����Ԥ��','16');
INSERT INTO `qs_hotword` VALUES ('5224','�ֹ�˾����','209');
INSERT INTO `qs_hotword` VALUES ('5226','���л�ѧ��ʦ','16');
INSERT INTO `qs_hotword` VALUES ('5227','Сѧ������ʦ','18');
INSERT INTO `qs_hotword` VALUES ('5235','ϳ��','81');
INSERT INTO `qs_hotword` VALUES ('5250','SEO�Ż�','28');
INSERT INTO `qs_hotword` VALUES ('5258','��ϰ����','15');
INSERT INTO `qs_hotword` VALUES ('5264','������ѵ��','140');
INSERT INTO `qs_hotword` VALUES ('5267','����Ա','18');
INSERT INTO `qs_hotword` VALUES ('5273','��������','113');
INSERT INTO `qs_hotword` VALUES ('5274','��Ŀ������Ա','11');
INSERT INTO `qs_hotword` VALUES ('5287','˽�˽���','31');
INSERT INTO `qs_hotword` VALUES ('5298','רҵ����ʦ','16');
INSERT INTO `qs_hotword` VALUES ('5302','��վ����','22');
INSERT INTO `qs_hotword` VALUES ('5304','�ͷ�������','71');
INSERT INTO `qs_hotword` VALUES ('5308','����ҵ����','25');
INSERT INTO `qs_hotword` VALUES ('5313','��ҵ����Ա','65');
INSERT INTO `qs_hotword` VALUES ('5321','��������','19');
INSERT INTO `qs_hotword` VALUES ('5323','ע�����ʦ','26');
INSERT INTO `qs_hotword` VALUES ('5324','������۴���','14');
INSERT INTO `qs_hotword` VALUES ('5325','���س���','54');
INSERT INTO `qs_hotword` VALUES ('5328','����ǰ̨','25');
INSERT INTO `qs_hotword` VALUES ('5358','��е����Ա','14');
INSERT INTO `qs_hotword` VALUES ('5363','��ҵ����ʦ','26');
INSERT INTO `qs_hotword` VALUES ('5366','ǰ̨��ѯ','19');
INSERT INTO `qs_hotword` VALUES ('5368','��װ����','27');
INSERT INTO `qs_hotword` VALUES ('5374','�ֿ����Ա','78');
INSERT INTO `qs_hotword` VALUES ('5376','�������۹���','15');
INSERT INTO `qs_hotword` VALUES ('5377','������������','15');
INSERT INTO `qs_hotword` VALUES ('5378','���ж���','25');
INSERT INTO `qs_hotword` VALUES ('5383','����ͷ�','48');
INSERT INTO `qs_hotword` VALUES ('5395','��װԤ��Ա','87');
INSERT INTO `qs_hotword` VALUES ('5398','Ӫ���߻�','161');
INSERT INTO `qs_hotword` VALUES ('5401','��Ʒ����','22');
INSERT INTO `qs_hotword` VALUES ('5419','����Ա','26');
INSERT INTO `qs_hotword` VALUES ('5420','���������ܼ�','19');
INSERT INTO `qs_hotword` VALUES ('5421','�ʼ���Ա','20');
INSERT INTO `qs_hotword` VALUES ('5426','�̳��ܾ���','18');
INSERT INTO `qs_hotword` VALUES ('5434','��������','12');
INSERT INTO `qs_hotword` VALUES ('5437','��������','55');
INSERT INTO `qs_hotword` VALUES ('5459','�ͻ�������','33');
INSERT INTO `qs_hotword` VALUES ('5461','�γ�����','29');
INSERT INTO `qs_hotword` VALUES ('5469','������Ա','17');
INSERT INTO `qs_hotword` VALUES ('5470','��������','77');
INSERT INTO `qs_hotword` VALUES ('5476','������Ŀ����','16');
INSERT INTO `qs_hotword` VALUES ('5479','ˮ������ʦ','26');
INSERT INTO `qs_hotword` VALUES ('5483','���̲�����Ա','46');
INSERT INTO `qs_hotword` VALUES ('5485','C++����ʦ','39');
INSERT INTO `qs_hotword` VALUES ('5486','Ʒ��Ա','34');
INSERT INTO `qs_hotword` VALUES ('5489','������Ա','15');
INSERT INTO `qs_hotword` VALUES ('5490','֤ȯ������','59');
INSERT INTO `qs_hotword` VALUES ('5500','н������','20');
INSERT INTO `qs_hotword` VALUES ('5501','ʡ�����̾���','65');
INSERT INTO `qs_hotword` VALUES ('5505','JAVA��ʦ','20');
INSERT INTO `qs_hotword` VALUES ('5506','���ӹ�','26');
INSERT INTO `qs_hotword` VALUES ('5525','��ѧ��ѯ����','85');
INSERT INTO `qs_hotword` VALUES ('5528','���ݶ���','65');
INSERT INTO `qs_hotword` VALUES ('5539','��Ա�����','10');
INSERT INTO `qs_hotword` VALUES ('5540','������Ա','11');
INSERT INTO `qs_hotword` VALUES ('5541','�յ�ά�޹�','20');
INSERT INTO `qs_hotword` VALUES ('5556','���ҽʦ','13');
INSERT INTO `qs_hotword` VALUES ('5557','ר���굼��','73');
INSERT INTO `qs_hotword` VALUES ('5558','��ЭרԱ','10');
INSERT INTO `qs_hotword` VALUES ('5560','������Ӫ����','11');
INSERT INTO `qs_hotword` VALUES ('5562','�Գ��Լ�רԱ','10');
INSERT INTO `qs_hotword` VALUES ('5563','�����ܼ�','85');
INSERT INTO `qs_hotword` VALUES ('5564','��ҵ�ܾ���','17');
INSERT INTO `qs_hotword` VALUES ('5566','��������','11');
INSERT INTO `qs_hotword` VALUES ('5572','��װ���ʦ','87');
INSERT INTO `qs_hotword` VALUES ('5578','�������ʦ','30');
INSERT INTO `qs_hotword` VALUES ('5579','��װ���ʦ','100');
INSERT INTO `qs_hotword` VALUES ('5580','�������ʦ','111');
INSERT INTO `qs_hotword` VALUES ('5583','�б�רԱ','39');
INSERT INTO `qs_hotword` VALUES ('5587','����Ԥ������','14');
INSERT INTO `qs_hotword` VALUES ('5592','�ܼ�����','90');
INSERT INTO `qs_hotword` VALUES ('5598','�Ź�ҵ��Ա','71');
INSERT INTO `qs_hotword` VALUES ('5600','����Ա','47');
INSERT INTO `qs_hotword` VALUES ('5615','���̲�����','76');
INSERT INTO `qs_hotword` VALUES ('5618','չ������','42');
INSERT INTO `qs_hotword` VALUES ('5626','��������','65');
INSERT INTO `qs_hotword` VALUES ('5634','פ�����','16');
INSERT INTO `qs_hotword` VALUES ('5636','�������ۿͷ�','27');
INSERT INTO `qs_hotword` VALUES ('5640','�������','71');
INSERT INTO `qs_hotword` VALUES ('5643','������Ա','19');
INSERT INTO `qs_hotword` VALUES ('5644','ά������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('5645','���´�����','222');
INSERT INTO `qs_hotword` VALUES ('5650','�������۾���','448');
INSERT INTO `qs_hotword` VALUES ('5662','����������','34');
INSERT INTO `qs_hotword` VALUES ('5667','����������Ա','36');
INSERT INTO `qs_hotword` VALUES ('5669','Ӫ��','10');
INSERT INTO `qs_hotword` VALUES ('5670','IT����','41');
INSERT INTO `qs_hotword` VALUES ('5672','���ܼ�','90');
INSERT INTO `qs_hotword` VALUES ('5676','����ʩ����Ա','16');
INSERT INTO `qs_hotword` VALUES ('5682','��װ����ʦ','16');
INSERT INTO `qs_hotword` VALUES ('5683','���¹����','11');
INSERT INTO `qs_hotword` VALUES ('5684','�������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('5689','��ҵ��˾����','15');
INSERT INTO `qs_hotword` VALUES ('5693','����Ա','55');
INSERT INTO `qs_hotword` VALUES ('5694','ר���굼��Ա','24');
INSERT INTO `qs_hotword` VALUES ('5696','��ƺ����','10');
INSERT INTO `qs_hotword` VALUES ('5702','��ҵ���','27');
INSERT INTO `qs_hotword` VALUES ('5704','��������','245');
INSERT INTO `qs_hotword` VALUES ('5712','��־����','13');
INSERT INTO `qs_hotword` VALUES ('5718','��ͻ�����','27');
INSERT INTO `qs_hotword` VALUES ('5719','���Ա','17');
INSERT INTO `qs_hotword` VALUES ('5726','��ЧרԱ','79');
INSERT INTO `qs_hotword` VALUES ('5728','�������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('5738','���ӹ���ʦ','89');
INSERT INTO `qs_hotword` VALUES ('5743','����','180');
INSERT INTO `qs_hotword` VALUES ('5746','�����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('5758','�������ʦ','50');
INSERT INTO `qs_hotword` VALUES ('5760','Ԥ�㲿����','48');
INSERT INTO `qs_hotword` VALUES ('5763','�ֿⱣ��','25');
INSERT INTO `qs_hotword` VALUES ('5767','��ƷרԱ','114');
INSERT INTO `qs_hotword` VALUES ('5776','ר������','33');
INSERT INTO `qs_hotword` VALUES ('5777','���������ʦ','25');
INSERT INTO `qs_hotword` VALUES ('5778','���е����ʦ','20');
INSERT INTO `qs_hotword` VALUES ('5779','�Կع���ʦ','49');
INSERT INTO `qs_hotword` VALUES ('5780','���̲���','22');
INSERT INTO `qs_hotword` VALUES ('5785','���ۼ���֧��','15');
INSERT INTO `qs_hotword` VALUES ('5786','������ѧԱ','23');
INSERT INTO `qs_hotword` VALUES ('5799','�г����ܼ�','42');
INSERT INTO `qs_hotword` VALUES ('5806','���۴����ɲ�','79');
INSERT INTO `qs_hotword` VALUES ('5808','ʵϰ�곤','14');
INSERT INTO `qs_hotword` VALUES ('5811','����Ա','69');
INSERT INTO `qs_hotword` VALUES ('5822','��Ӫ����','25');
INSERT INTO `qs_hotword` VALUES ('5824','����','82');
INSERT INTO `qs_hotword` VALUES ('5831','�칫������','17');
INSERT INTO `qs_hotword` VALUES ('5832','��ְӢ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('5834','ר�����Ա','81');
INSERT INTO `qs_hotword` VALUES ('5835','����ʦ','51');
INSERT INTO `qs_hotword` VALUES ('5853','Ʒ���ƹ�','16');
INSERT INTO `qs_hotword` VALUES ('5854','�ն˾���','21');
INSERT INTO `qs_hotword` VALUES ('5860','�ط�רԱ','22');
INSERT INTO `qs_hotword` VALUES ('5868','�칫����Ա','25');
INSERT INTO `qs_hotword` VALUES ('5869','ר����곤','144');
INSERT INTO `qs_hotword` VALUES ('5870','���浼��Ա','10');
INSERT INTO `qs_hotword` VALUES ('5882','��������','57');
INSERT INTO `qs_hotword` VALUES ('5884','����ά�޹�','11');
INSERT INTO `qs_hotword` VALUES ('5889','ˮ̨','10');
INSERT INTO `qs_hotword` VALUES ('5893','���缼��Ա','10');
INSERT INTO `qs_hotword` VALUES ('5900','������ѯ����','10');
INSERT INTO `qs_hotword` VALUES ('5904','��������','12');
INSERT INTO `qs_hotword` VALUES ('5906','���澭��','140');
INSERT INTO `qs_hotword` VALUES ('5915','���и�','20');
INSERT INTO `qs_hotword` VALUES ('5916','������۴���','53');
INSERT INTO `qs_hotword` VALUES ('5919','������Ա','26');
INSERT INTO `qs_hotword` VALUES ('5924','�߼��������','42');
INSERT INTO `qs_hotword` VALUES ('5945','��У��','18');
INSERT INTO `qs_hotword` VALUES ('5948','������ʦ','24');
INSERT INTO `qs_hotword` VALUES ('5949','�г�ҵ��Ա','27');
INSERT INTO `qs_hotword` VALUES ('5954','�۹�','18');
INSERT INTO `qs_hotword` VALUES ('5958','ƽ���������','17');
INSERT INTO `qs_hotword` VALUES ('5973','��ͨ����','18');
INSERT INTO `qs_hotword` VALUES ('5974','����ά�޼�ʦ','14');
INSERT INTO `qs_hotword` VALUES ('5978','�泵��','103');
INSERT INTO `qs_hotword` VALUES ('5980','������','11');
INSERT INTO `qs_hotword` VALUES ('5981','����Ӣ����ʦ','16');
INSERT INTO `qs_hotword` VALUES ('5994','�ŵ�곤','59');
INSERT INTO `qs_hotword` VALUES ('6004','������Դ����','22');
INSERT INTO `qs_hotword` VALUES ('6008','װ��繤','31');
INSERT INTO `qs_hotword` VALUES ('6011','���̸�����','26');
INSERT INTO `qs_hotword` VALUES ('6015','���̸��ܾ���','29');
INSERT INTO `qs_hotword` VALUES ('6018','ˮůԤ��Ա','20');
INSERT INTO `qs_hotword` VALUES ('6019','������ҵ','34');
INSERT INTO `qs_hotword` VALUES ('6021','��������','61');
INSERT INTO `qs_hotword` VALUES ('6027','��ˮԱ','14');
INSERT INTO `qs_hotword` VALUES ('6028','����','20');
INSERT INTO `qs_hotword` VALUES ('6036','ҽ������','48');
INSERT INTO `qs_hotword` VALUES ('6038','ʩ������Ա','14');
INSERT INTO `qs_hotword` VALUES ('6040','��ѧ��ʦ','51');
INSERT INTO `qs_hotword` VALUES ('6041','�����ʦ','24');
INSERT INTO `qs_hotword` VALUES ('6042','�߼�����','42');
INSERT INTO `qs_hotword` VALUES ('6043','��ѧ��ʦ','22');
INSERT INTO `qs_hotword` VALUES ('6047','��������','12');
INSERT INTO `qs_hotword` VALUES ('6048','�ֹ�˾����','11');
INSERT INTO `qs_hotword` VALUES ('6058','���ʦ','22');
INSERT INTO `qs_hotword` VALUES ('6062','ǰ̨����Ա','29');
INSERT INTO `qs_hotword` VALUES ('6064','�̳�����','11');
INSERT INTO `qs_hotword` VALUES ('6066','��ҵ����','15');
INSERT INTO `qs_hotword` VALUES ('6090','���˻��','29');
INSERT INTO `qs_hotword` VALUES ('6094','��������','64');
INSERT INTO `qs_hotword` VALUES ('6102','����Ա','32');
INSERT INTO `qs_hotword` VALUES ('6106','�ֹ�˾������','16');
INSERT INTO `qs_hotword` VALUES ('6110','��̨','12');
INSERT INTO `qs_hotword` VALUES ('6111','�Ա����ۿͷ�','17');
INSERT INTO `qs_hotword` VALUES ('6114','�Ա��ۺ�ͷ�','26');
INSERT INTO `qs_hotword` VALUES ('6118','��������Ա','13');
INSERT INTO `qs_hotword` VALUES ('6120','�߼�����Ա','13');
INSERT INTO `qs_hotword` VALUES ('6125','���ʻ��','73');
INSERT INTO `qs_hotword` VALUES ('6127','�豸����Ա','72');
INSERT INTO `qs_hotword` VALUES ('6130','¥������','33');
INSERT INTO `qs_hotword` VALUES ('6135','�칫������','51');
INSERT INTO `qs_hotword` VALUES ('6147','�������','159');
INSERT INTO `qs_hotword` VALUES ('6153','������Դ����','14');
INSERT INTO `qs_hotword` VALUES ('6163','�ֵ꾭��','23');
INSERT INTO `qs_hotword` VALUES ('6164','����','19');
INSERT INTO `qs_hotword` VALUES ('6165','í��','33');
INSERT INTO `qs_hotword` VALUES ('6178','���Ų�����','11');
INSERT INTO `qs_hotword` VALUES ('6182','����Ա','71');
INSERT INTO `qs_hotword` VALUES ('6185','ƽ������ܼ�','41');
INSERT INTO `qs_hotword` VALUES ('6189','KAҵ��','17');
INSERT INTO `qs_hotword` VALUES ('6197','����������Ա','39');
INSERT INTO `qs_hotword` VALUES ('6198','�ɹ�����','24');
INSERT INTO `qs_hotword` VALUES ('6202','ĥ��','15');
INSERT INTO `qs_hotword` VALUES ('6204','Ӣ��༭','28');
INSERT INTO `qs_hotword` VALUES ('6211','�깤','10');
INSERT INTO `qs_hotword` VALUES ('6216','��������','33');
INSERT INTO `qs_hotword` VALUES ('6219','����ͳ��','29');
INSERT INTO `qs_hotword` VALUES ('6223','רְ��ȫԱ','11');
INSERT INTO `qs_hotword` VALUES ('6230','����Ӫ���ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('6232','�ŵ�����','29');
INSERT INTO `qs_hotword` VALUES ('6240','����ҵ������','11');
INSERT INTO `qs_hotword` VALUES ('6243','�豸����Ա','30');
INSERT INTO `qs_hotword` VALUES ('6246','���ʵϰ��','15');
INSERT INTO `qs_hotword` VALUES ('6260','����רԱ','16');
INSERT INTO `qs_hotword` VALUES ('6266','����߻�','12');
INSERT INTO `qs_hotword` VALUES ('6277','�İ����','13');
INSERT INTO `qs_hotword` VALUES ('6279','�ɱ���Լ����','10');
INSERT INTO `qs_hotword` VALUES ('6293','����','13');
INSERT INTO `qs_hotword` VALUES ('6314','��������','28');
INSERT INTO `qs_hotword` VALUES ('6315','�׽�','14');
INSERT INTO `qs_hotword` VALUES ('6316','������ѯ����','18');
INSERT INTO `qs_hotword` VALUES ('6319','��������','24');
INSERT INTO `qs_hotword` VALUES ('6324','����ӪҵԱ','20');
INSERT INTO `qs_hotword` VALUES ('6325','�ͻ�����','85');
INSERT INTO `qs_hotword` VALUES ('6329','�绰��ѯԱ','36');
INSERT INTO `qs_hotword` VALUES ('6340','�и���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('6350','����˾��','43');
INSERT INTO `qs_hotword` VALUES ('6360','���乤��','29');
INSERT INTO `qs_hotword` VALUES ('6362','����ҵ��Ա','14');
INSERT INTO `qs_hotword` VALUES ('6365','��ȫ����Ա','49');
INSERT INTO `qs_hotword` VALUES ('6374','װ��Ԥ��Ա','11');
INSERT INTO `qs_hotword` VALUES ('6378','�ɱ�����','37');
INSERT INTO `qs_hotword` VALUES ('6381','�����ͻ�����','41');
INSERT INTO `qs_hotword` VALUES ('6386','��ҵ����','17');
INSERT INTO `qs_hotword` VALUES ('6394','ҽѧ����','36');
INSERT INTO `qs_hotword` VALUES ('6399','����ҵ�����','37');
INSERT INTO `qs_hotword` VALUES ('6400','��ҵԱ','21');
INSERT INTO `qs_hotword` VALUES ('6401','����רԱ','33');
INSERT INTO `qs_hotword` VALUES ('6416','Ӫҵ����','37');
INSERT INTO `qs_hotword` VALUES ('6423','ˮ�ɷ���Ա','12');
INSERT INTO `qs_hotword` VALUES ('6430','�г��רԱ','55');
INSERT INTO `qs_hotword` VALUES ('6432','����-���','11');
INSERT INTO `qs_hotword` VALUES ('6443','���ʲ�����','13');
INSERT INTO `qs_hotword` VALUES ('6445','����','33');
INSERT INTO `qs_hotword` VALUES ('6447','������ʦ','21');
INSERT INTO `qs_hotword` VALUES ('6457','ǩԼרԱ','14');
INSERT INTO `qs_hotword` VALUES ('6458','�������','28');
INSERT INTO `qs_hotword` VALUES ('6464','����ˮ���ʦ','45');
INSERT INTO `qs_hotword` VALUES ('6466','�ɱ�����','23');
INSERT INTO `qs_hotword` VALUES ('6469','����','39');
INSERT INTO `qs_hotword` VALUES ('6472','԰�ֹ���ʦ','77');
INSERT INTO `qs_hotword` VALUES ('6497','ӭ��','52');
INSERT INTO `qs_hotword` VALUES ('6501','������ѧ����','23');
INSERT INTO `qs_hotword` VALUES ('6506','����߻�','10');
INSERT INTO `qs_hotword` VALUES ('6508','��ʦ','56');
INSERT INTO `qs_hotword` VALUES ('6511','�����ͷ�','19');
INSERT INTO `qs_hotword` VALUES ('6514','���Ͻ�ʦ','13');
INSERT INTO `qs_hotword` VALUES ('6517','����Ա','30');
INSERT INTO `qs_hotword` VALUES ('6519','���ֽ�ʦ','11');
INSERT INTO `qs_hotword` VALUES ('6521','����ԺԺ��','36');
INSERT INTO `qs_hotword` VALUES ('6525','ůͨ����','13');
INSERT INTO `qs_hotword` VALUES ('6529','����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('6532','��������ʦ','49');
INSERT INTO `qs_hotword` VALUES ('6544','���ྭ��','22');
INSERT INTO `qs_hotword` VALUES ('6545','�绰����רԱ','25');
INSERT INTO `qs_hotword` VALUES ('6548','�̳�����','18');
INSERT INTO `qs_hotword` VALUES ('6554','�г���ҵ��Ա','24');
INSERT INTO `qs_hotword` VALUES ('6557','��ְҵ��Ա','51');
INSERT INTO `qs_hotword` VALUES ('6565','������չרԱ','28');
INSERT INTO `qs_hotword` VALUES ('6571','��������','69');
INSERT INTO `qs_hotword` VALUES ('6575','�ܼ�����ʦ','31');
INSERT INTO `qs_hotword` VALUES ('6581','��ϢԱ','87');
INSERT INTO `qs_hotword` VALUES ('6582','Ͷ����ƹ���','64');
INSERT INTO `qs_hotword` VALUES ('6594','�ӽ��й�','14');
INSERT INTO `qs_hotword` VALUES ('6595','����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('6596','�����һ�ʿ','18');
INSERT INTO `qs_hotword` VALUES ('6602','ҽѧ����Ա','10');
INSERT INTO `qs_hotword` VALUES ('6607','����','20');
INSERT INTO `qs_hotword` VALUES ('6615','��Ŀ������','35');
INSERT INTO `qs_hotword` VALUES ('6622','����רԱ','78');
INSERT INTO `qs_hotword` VALUES ('6631','��Ŀ������','17');
INSERT INTO `qs_hotword` VALUES ('6632','����Ա','40');
INSERT INTO `qs_hotword` VALUES ('6641','�����Ż�','15');
INSERT INTO `qs_hotword` VALUES ('6647','������','24');
INSERT INTO `qs_hotword` VALUES ('6648','Ʒ��Ա','59');
INSERT INTO `qs_hotword` VALUES ('6663','��ѯ����','29');
INSERT INTO `qs_hotword` VALUES ('6688','չ���Ӵ�','25');
INSERT INTO `qs_hotword` VALUES ('6705','����������','35');
INSERT INTO `qs_hotword` VALUES ('6707','��Ϣ����','19');
INSERT INTO `qs_hotword` VALUES ('6708','ˮ��Ԥ��Ա','26');
INSERT INTO `qs_hotword` VALUES ('6710','ר��������','47');
INSERT INTO `qs_hotword` VALUES ('6711','�ܲð�����','30');
INSERT INTO `qs_hotword` VALUES ('6725','���̻��','13');
INSERT INTO `qs_hotword` VALUES ('6729','���񲿳�','35');
INSERT INTO `qs_hotword` VALUES ('6730','�ֳ�ʩ��Ա','11');
INSERT INTO `qs_hotword` VALUES ('6731','����רԱ','15');
INSERT INTO `qs_hotword` VALUES ('6736','��Ӫ����','13');
INSERT INTO `qs_hotword` VALUES ('6739','�̻�����','10');
INSERT INTO `qs_hotword` VALUES ('6740','���۲���','24');
INSERT INTO `qs_hotword` VALUES ('6745','��װ�����ʦ','16');
INSERT INTO `qs_hotword` VALUES ('6748','���Ա','96');
INSERT INTO `qs_hotword` VALUES ('6756','�ۺ�ǰ̨����','10');
INSERT INTO `qs_hotword` VALUES ('6757','ά��Ա','38');
INSERT INTO `qs_hotword` VALUES ('6761','����רԱ','28');
INSERT INTO `qs_hotword` VALUES ('6762','�Ҿӹ���','52');
INSERT INTO `qs_hotword` VALUES ('6774','��װ��','56');
INSERT INTO `qs_hotword` VALUES ('6775','���������Ա','13');
INSERT INTO `qs_hotword` VALUES ('6779','����������','43');
INSERT INTO `qs_hotword` VALUES ('6784','���Ա','49');
INSERT INTO `qs_hotword` VALUES ('6786','�����ӳ�','97');
INSERT INTO `qs_hotword` VALUES ('6792','������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('6797','�����Ʒ����','17');
INSERT INTO `qs_hotword` VALUES ('6799','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('6802','ά����Ա','32');
INSERT INTO `qs_hotword` VALUES ('6806','�ɹ��ܼ�','50');
INSERT INTO `qs_hotword` VALUES ('6813','������Դ�ܼ�','282');
INSERT INTO `qs_hotword` VALUES ('6816','�̻���','19');
INSERT INTO `qs_hotword` VALUES ('6817','�����ܼ�����','10');
INSERT INTO `qs_hotword` VALUES ('6825','ǰ̨����','19');
INSERT INTO `qs_hotword` VALUES ('6826','�������ʦ','32');
INSERT INTO `qs_hotword` VALUES ('6830','������Ա','17');
INSERT INTO `qs_hotword` VALUES ('6831','������������','16');
INSERT INTO `qs_hotword` VALUES ('6835','���ž�������','18');
INSERT INTO `qs_hotword` VALUES ('6843','�赸��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('6863','�����ӽ�','16');
INSERT INTO `qs_hotword` VALUES ('6865','���ɹ���','27');
INSERT INTO `qs_hotword` VALUES ('6874','����Ա','50');
INSERT INTO `qs_hotword` VALUES ('6876','�ͷ�Ա','28');
INSERT INTO `qs_hotword` VALUES ('6889','�������ʦ','29');
INSERT INTO `qs_hotword` VALUES ('6891','�����ܼ�','112');
INSERT INTO `qs_hotword` VALUES ('6892','������ʦ','45');
INSERT INTO `qs_hotword` VALUES ('6897','СѧӢ���ʦ','32');
INSERT INTO `qs_hotword` VALUES ('6898','Сѧ���Ľ�ʦ','17');
INSERT INTO `qs_hotword` VALUES ('6902','����רԱ','33');
INSERT INTO `qs_hotword` VALUES ('6904','�������ν�ʦ','17');
INSERT INTO `qs_hotword` VALUES ('6905','��ʿ��','72');
INSERT INTO `qs_hotword` VALUES ('6914','ҽѧר��','14');
INSERT INTO `qs_hotword` VALUES ('6917','��������','10');
INSERT INTO `qs_hotword` VALUES ('6918','��������','44');
INSERT INTO `qs_hotword` VALUES ('6922','OTC����','194');
INSERT INTO `qs_hotword` VALUES ('6925','���˹�','68');
INSERT INTO `qs_hotword` VALUES ('6930','У��','45');
INSERT INTO `qs_hotword` VALUES ('6939','ģ��','40');
INSERT INTO `qs_hotword` VALUES ('6940','Ա����ϵרԱ','31');
INSERT INTO `qs_hotword` VALUES ('6953','�ܹ�','41');
INSERT INTO `qs_hotword` VALUES ('6954','����Ԥ��Ա','26');
INSERT INTO `qs_hotword` VALUES ('6963','���ϲɹ�Ա','36');
INSERT INTO `qs_hotword` VALUES ('6964','���̸���','57');
INSERT INTO `qs_hotword` VALUES ('6968','���','19');
INSERT INTO `qs_hotword` VALUES ('6969','ӭ��Ա','70');
INSERT INTO `qs_hotword` VALUES ('6971','��̨Ա','24');
INSERT INTO `qs_hotword` VALUES ('6979','�տ�Ա','30');
INSERT INTO `qs_hotword` VALUES ('6986','�绰����Ա','73');
INSERT INTO `qs_hotword` VALUES ('6987','�Ҿ����ʦ','31');
INSERT INTO `qs_hotword` VALUES ('6988','չ�����ʦ','63');
INSERT INTO `qs_hotword` VALUES ('6994','�г��о�Ա','30');
INSERT INTO `qs_hotword` VALUES ('7000','��������Ա','19');
INSERT INTO `qs_hotword` VALUES ('7005','��ʱ��','10');
INSERT INTO `qs_hotword` VALUES ('7014','�ͷ�������','25');
INSERT INTO `qs_hotword` VALUES ('7020','��������','12');
INSERT INTO `qs_hotword` VALUES ('7023','�绰����','12');
INSERT INTO `qs_hotword` VALUES ('7024','�绰Ӫ������','39');
INSERT INTO `qs_hotword` VALUES ('7035','����','25');
INSERT INTO `qs_hotword` VALUES ('7036','԰��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('7044','���ʦ','67');
INSERT INTO `qs_hotword` VALUES ('7049','ѧԱ','14');
INSERT INTO `qs_hotword` VALUES ('7052','���Լ���Ա','39');
INSERT INTO `qs_hotword` VALUES ('7058','���Բ���Ա','15');
INSERT INTO `qs_hotword` VALUES ('7059','ǰ������','40');
INSERT INTO `qs_hotword` VALUES ('7062','ǰ�����','18');
INSERT INTO `qs_hotword` VALUES ('7069','����Ա','12');
INSERT INTO `qs_hotword` VALUES ('7078','�г�����Ա','42');
INSERT INTO `qs_hotword` VALUES ('7087','˾¯��','48');
INSERT INTO `qs_hotword` VALUES ('7096','IT����ʦ','132');
INSERT INTO `qs_hotword` VALUES ('7105','ʡ�����۾���','60');
INSERT INTO `qs_hotword` VALUES ('7109','��Ӫ������','44');
INSERT INTO `qs_hotword` VALUES ('7116','�ͷ�����','39');
INSERT INTO `qs_hotword` VALUES ('7117','����������','10');
INSERT INTO `qs_hotword` VALUES ('7118','�Ƶ�Ա','20');
INSERT INTO `qs_hotword` VALUES ('7120','���ز�����','26');
INSERT INTO `qs_hotword` VALUES ('7122','Ӫ������','109');
INSERT INTO `qs_hotword` VALUES ('7124','��������','58');
INSERT INTO `qs_hotword` VALUES ('7125','�ƻ�����','19');
INSERT INTO `qs_hotword` VALUES ('7128','���ռ���Ա','51');
INSERT INTO `qs_hotword` VALUES ('7136','ֱӪ��곤','36');
INSERT INTO `qs_hotword` VALUES ('7138','����ά��','18');
INSERT INTO `qs_hotword` VALUES ('7142','���Ա','38');
INSERT INTO `qs_hotword` VALUES ('7148','ʡ������','17');
INSERT INTO `qs_hotword` VALUES ('7150','�̳�ӪҵԱ','21');
INSERT INTO `qs_hotword` VALUES ('7155','������Ա','27');
INSERT INTO `qs_hotword` VALUES ('7156','���ܶӳ�','14');
INSERT INTO `qs_hotword` VALUES ('7158','KA����','48');
INSERT INTO `qs_hotword` VALUES ('7161','����Ա','21');
INSERT INTO `qs_hotword` VALUES ('7164','�ֿ���Ա','72');
INSERT INTO `qs_hotword` VALUES ('7172','�̳�����','31');
INSERT INTO `qs_hotword` VALUES ('7178','ˮ��ά�޹�','59');
INSERT INTO `qs_hotword` VALUES ('7190','�����ͷ�','23');
INSERT INTO `qs_hotword` VALUES ('7192','��������','29');
INSERT INTO `qs_hotword` VALUES ('7207','���','37');
INSERT INTO `qs_hotword` VALUES ('7211','��ְ����','20');
INSERT INTO `qs_hotword` VALUES ('7212','���������','38');
INSERT INTO `qs_hotword` VALUES ('7215','У���ܼ�','34');
INSERT INTO `qs_hotword` VALUES ('7220','�����Ŀ����','85');
INSERT INTO `qs_hotword` VALUES ('7224','�绰Ӫ������','18');
INSERT INTO `qs_hotword` VALUES ('7229','����������Ա','20');
INSERT INTO `qs_hotword` VALUES ('7230','���ͳ�ʦ','34');
INSERT INTO `qs_hotword` VALUES ('7243','�̳�ҵ������','26');
INSERT INTO `qs_hotword` VALUES ('7245','����','20');
INSERT INTO `qs_hotword` VALUES ('7252','���ù���Ա','27');
INSERT INTO `qs_hotword` VALUES ('7257','���´�����','21');
INSERT INTO `qs_hotword` VALUES ('7261','����רԱ','51');
INSERT INTO `qs_hotword` VALUES ('7262','ǿ�繤��ʦ','33');
INSERT INTO `qs_hotword` VALUES ('7267','�б�����','45');
INSERT INTO `qs_hotword` VALUES ('7280','�γ�˾��','10');
INSERT INTO `qs_hotword` VALUES ('7299','��װ���ʦ','89');
INSERT INTO `qs_hotword` VALUES ('7302','�������ʦ','30');
INSERT INTO `qs_hotword` VALUES ('7304','��Ŀ������','18');
INSERT INTO `qs_hotword` VALUES ('7310','������ѯʦ','11');
INSERT INTO `qs_hotword` VALUES ('7312','ʳ�ó�ʦ','31');
INSERT INTO `qs_hotword` VALUES ('7317','����','10');
INSERT INTO `qs_hotword` VALUES ('7321','����ά��Ա','79');
INSERT INTO `qs_hotword` VALUES ('7326','��������','21');
INSERT INTO `qs_hotword` VALUES ('7328','�г�Ӫ������','23');
INSERT INTO `qs_hotword` VALUES ('7329','�ͻ�AE','19');
INSERT INTO `qs_hotword` VALUES ('7340','ҵ��������','20');
INSERT INTO `qs_hotword` VALUES ('7344','�߼�����','28');
INSERT INTO `qs_hotword` VALUES ('7349','��������','23');
INSERT INTO `qs_hotword` VALUES ('7351','����ά�޹�','17');
INSERT INTO `qs_hotword` VALUES ('7361','չʾ���ʦ','49');
INSERT INTO `qs_hotword` VALUES ('7372','�ȴ�����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('7376','��������','14');
INSERT INTO `qs_hotword` VALUES ('7382','�׶�Ӣ���ʦ','49');
INSERT INTO `qs_hotword` VALUES ('7386','Ӣ������','32');
INSERT INTO `qs_hotword` VALUES ('7398','��ȫ����ʦ','94');
INSERT INTO `qs_hotword` VALUES ('7411','�г���չ�ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('7425','��ְӢ���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('7443','Ʒ�ʼ���','11');
INSERT INTO `qs_hotword` VALUES ('7445','��е���Ա','27');
INSERT INTO `qs_hotword` VALUES ('7447','���������Ա','10');
INSERT INTO `qs_hotword` VALUES ('7455','���������','18');
INSERT INTO `qs_hotword` VALUES ('7458','��洴���ܼ�','39');
INSERT INTO `qs_hotword` VALUES ('7469','��ǰ����֧��','64');
INSERT INTO `qs_hotword` VALUES ('7478','��ҳ�������','10');
INSERT INTO `qs_hotword` VALUES ('7481','�ڻ�������','11');
INSERT INTO `qs_hotword` VALUES ('7490','����������','11');
INSERT INTO `qs_hotword` VALUES ('7491','�����з���Ա','14');
INSERT INTO `qs_hotword` VALUES ('7494','�ն˶���','42');
INSERT INTO `qs_hotword` VALUES ('7500','������������','17');
INSERT INTO `qs_hotword` VALUES ('7521','�绰�ط�Ա','47');
INSERT INTO `qs_hotword` VALUES ('7522','��������ɲ�','41');
INSERT INTO `qs_hotword` VALUES ('7523','��������','42');
INSERT INTO `qs_hotword` VALUES ('7536','����Ӵ�','12');
INSERT INTO `qs_hotword` VALUES ('7538','��������','23');
INSERT INTO `qs_hotword` VALUES ('7539','���ƻ�ʿ','11');
INSERT INTO `qs_hotword` VALUES ('7540','���򶽵�','65');
INSERT INTO `qs_hotword` VALUES ('7542','��ѵ��ʦ','31');
INSERT INTO `qs_hotword` VALUES ('7546','�ƽ����ʦ','80');
INSERT INTO `qs_hotword` VALUES ('7547','�ܾ�������','17');
INSERT INTO `qs_hotword` VALUES ('7548','��ѧ����','41');
INSERT INTO `qs_hotword` VALUES ('7559','ר�񵼹�','13');
INSERT INTO `qs_hotword` VALUES ('7569','���Ϲ���Ա','32');
INSERT INTO `qs_hotword` VALUES ('7579','��Ʒ��ʦ','30');
INSERT INTO `qs_hotword` VALUES ('7594','SQA','10');
INSERT INTO `qs_hotword` VALUES ('7600','Ƕ��ʽ����ʦ','30');
INSERT INTO `qs_hotword` VALUES ('7617','�ٴ����۴���','20');
INSERT INTO `qs_hotword` VALUES ('7620','�Ƶ�','35');
INSERT INTO `qs_hotword` VALUES ('7621','����߻�ʦ','18');
INSERT INTO `qs_hotword` VALUES ('7622','��ʦ��','67');
INSERT INTO `qs_hotword` VALUES ('7623','�ͻ���','10');
INSERT INTO `qs_hotword` VALUES ('7625','ʡ��Ӫ���ܼ�','16');
INSERT INTO `qs_hotword` VALUES ('7636','��Ŀ�߻�רԱ','10');
INSERT INTO `qs_hotword` VALUES ('7639','��ҵ����','61');
INSERT INTO `qs_hotword` VALUES ('7643','�걾����Ա','13');
INSERT INTO `qs_hotword` VALUES ('7649','�߼���ѯ����','40');
INSERT INTO `qs_hotword` VALUES ('7655','�����Ŀ����','40');
INSERT INTO `qs_hotword` VALUES ('7661','��վ�Ż�רԱ','11');
INSERT INTO `qs_hotword` VALUES ('7667','ҽ�������','13');
INSERT INTO `qs_hotword` VALUES ('7670','�ڿ�ҽʦ','17');
INSERT INTO `qs_hotword` VALUES ('7677','ý��','10');
INSERT INTO `qs_hotword` VALUES ('7685','����곤','13');
INSERT INTO `qs_hotword` VALUES ('7689','�ʼ�','58');
INSERT INTO `qs_hotword` VALUES ('7691','��װ��','46');
INSERT INTO `qs_hotword` VALUES ('7692','�������','12');
INSERT INTO `qs_hotword` VALUES ('7693','Ļǽ���ʦ','29');
INSERT INTO `qs_hotword` VALUES ('7695','�ֿ���','11');
INSERT INTO `qs_hotword` VALUES ('7699','��Ʒ����','72');
INSERT INTO `qs_hotword` VALUES ('7705','����Ԥ��Ա','51');
INSERT INTO `qs_hotword` VALUES ('7706','���۴���','51');
INSERT INTO `qs_hotword` VALUES ('7708','ǰ̨������Ա','26');
INSERT INTO `qs_hotword` VALUES ('7720','�����һ�ʿ','38');
INSERT INTO `qs_hotword` VALUES ('7724','�ͷ��ܼ�','86');
INSERT INTO `qs_hotword` VALUES ('7734','�з������ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('7736','�Ƶ꾭��','28');
INSERT INTO `qs_hotword` VALUES ('7744','��������','61');
INSERT INTO `qs_hotword` VALUES ('7751','���ӱർ','12');
INSERT INTO `qs_hotword` VALUES ('7752','�绰����','10');
INSERT INTO `qs_hotword` VALUES ('7754','������������','41');
INSERT INTO `qs_hotword` VALUES ('7755','װ�����ʦ','39');
INSERT INTO `qs_hotword` VALUES ('7767','����ά����Ա','15');
INSERT INTO `qs_hotword` VALUES ('7774','��վ����','17');
INSERT INTO `qs_hotword` VALUES ('7777','�İ��߻�רԱ','36');
INSERT INTO `qs_hotword` VALUES ('7791','ҽҩ���۾���','30');
INSERT INTO `qs_hotword` VALUES ('7801','���̹���','36');
INSERT INTO `qs_hotword` VALUES ('7802','�ڻ��Ӽ���','12');
INSERT INTO `qs_hotword` VALUES ('7804','�꾭��','122');
INSERT INTO `qs_hotword` VALUES ('7805','����ʦ','28');
INSERT INTO `qs_hotword` VALUES ('7817','�м�������','13');
INSERT INTO `qs_hotword` VALUES ('7818','ʡ�����̾���','10');
INSERT INTO `qs_hotword` VALUES ('7819','ˮů���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('7821','�ͻ�ά��','11');
INSERT INTO `qs_hotword` VALUES ('7824','�߼�������','19');
INSERT INTO `qs_hotword` VALUES ('7827','�Ź�����','88');
INSERT INTO `qs_hotword` VALUES ('7829','����רԱ','29');
INSERT INTO `qs_hotword` VALUES ('7832','��Ʒ�߻�����','12');
INSERT INTO `qs_hotword` VALUES ('7837','Ӫ���ܼ�','98');
INSERT INTO `qs_hotword` VALUES ('7850','��������','28');
INSERT INTO `qs_hotword` VALUES ('7852','������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('7853','���ַ�������','14');
INSERT INTO `qs_hotword` VALUES ('7864','��ҵ�߻�','19');
INSERT INTO `qs_hotword` VALUES ('7872','�ӽ�ʦ','62');
INSERT INTO `qs_hotword` VALUES ('7879','���Ἴʦ','22');
INSERT INTO `qs_hotword` VALUES ('7883','��Ӫ����','15');
INSERT INTO `qs_hotword` VALUES ('7886','��������','19');
INSERT INTO `qs_hotword` VALUES ('7891','�����ƹ���Ա','28');
INSERT INTO `qs_hotword` VALUES ('7894','��վά��','32');
INSERT INTO `qs_hotword` VALUES ('7898','¼��Ա','11');
INSERT INTO `qs_hotword` VALUES ('7901','�ƻ�','16');
INSERT INTO `qs_hotword` VALUES ('7903','���ڹ���','13');
INSERT INTO `qs_hotword` VALUES ('7911','��ѵ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('7916','���������ܼ�','224');
INSERT INTO `qs_hotword` VALUES ('7919','������','113');
INSERT INTO `qs_hotword` VALUES ('7937','�г���߻�','10');
INSERT INTO `qs_hotword` VALUES ('7938','Ӫҵ����','20');
INSERT INTO `qs_hotword` VALUES ('7954','������ѵʦ','24');
INSERT INTO `qs_hotword` VALUES ('7964','����ҵ��Ա','23');
INSERT INTO `qs_hotword` VALUES ('7974','����Ա','18');
INSERT INTO `qs_hotword` VALUES ('7986','����ά��Ա','14');
INSERT INTO `qs_hotword` VALUES ('7989','��������','19');
INSERT INTO `qs_hotword` VALUES ('8003','��װ����','36');
INSERT INTO `qs_hotword` VALUES ('8007','�������۾���','22');
INSERT INTO `qs_hotword` VALUES ('8014','װ�ι���ʦ','78');
INSERT INTO `qs_hotword` VALUES ('8020','��ó������Ա','10');
INSERT INTO `qs_hotword` VALUES ('8023','���޵繤','22');
INSERT INTO `qs_hotword` VALUES ('8025','ר������ʦ','40');
INSERT INTO `qs_hotword` VALUES ('8026','��������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('8033','���Ľ�ʦ','10');
INSERT INTO `qs_hotword` VALUES ('8059','����','37');
INSERT INTO `qs_hotword` VALUES ('8061','FAE����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('8067','�ۺ�֧��','20');
INSERT INTO `qs_hotword` VALUES ('8069','����������','15');
INSERT INTO `qs_hotword` VALUES ('8073','��������Ա','49');
INSERT INTO `qs_hotword` VALUES ('8074','��Ʒ���۾���','13');
INSERT INTO `qs_hotword` VALUES ('8075','��е����Ա','40');
INSERT INTO `qs_hotword` VALUES ('8078','С��ҵ��Ա','17');
INSERT INTO `qs_hotword` VALUES ('8084','�ڱ�','19');
INSERT INTO `qs_hotword` VALUES ('8085','�����ͻ�����','25');
INSERT INTO `qs_hotword` VALUES ('8089','Ʒ�ʹ���ʦ','128');
INSERT INTO `qs_hotword` VALUES ('8091','��е��ͼ','10');
INSERT INTO `qs_hotword` VALUES ('8092','�����ƻ�','36');
INSERT INTO `qs_hotword` VALUES ('8104','��������','15');
INSERT INTO `qs_hotword` VALUES ('8105','��·������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('8112','��������','46');
INSERT INTO `qs_hotword` VALUES ('8119','�ɱ�����','15');
INSERT INTO `qs_hotword` VALUES ('8121','����רԱ','21');
INSERT INTO `qs_hotword` VALUES ('8141','����','61');
INSERT INTO `qs_hotword` VALUES ('8143','Ʒ��','24');
INSERT INTO `qs_hotword` VALUES ('8146','�������۾���','88');
INSERT INTO `qs_hotword` VALUES ('8151','���ۻ��','103');
INSERT INTO `qs_hotword` VALUES ('8160','��վ�߻�','137');
INSERT INTO `qs_hotword` VALUES ('8175','���۲���Ա','11');
INSERT INTO `qs_hotword` VALUES ('8190','ģ�����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('8191','�������۹���','24');
INSERT INTO `qs_hotword` VALUES ('8196','��Ʒ���ʦ','54');
INSERT INTO `qs_hotword` VALUES ('8209','���칤��ʦ','32');
INSERT INTO `qs_hotword` VALUES ('8225','QE','17');
INSERT INTO `qs_hotword` VALUES ('8229','�绰Ӫ������','35');
INSERT INTO `qs_hotword` VALUES ('8236','�绰��ԼרԱ','10');
INSERT INTO `qs_hotword` VALUES ('8241','����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('8245','Ӣ����ʦ','90');
INSERT INTO `qs_hotword` VALUES ('8247','�����ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('8255','����','51');
INSERT INTO `qs_hotword` VALUES ('8264','����ҵ��Ա','21');
INSERT INTO `qs_hotword` VALUES ('8265','�Ŵ�����','20');
INSERT INTO `qs_hotword` VALUES ('8278','����','29');
INSERT INTO `qs_hotword` VALUES ('8282','Ͷ�ʲ�����','18');
INSERT INTO `qs_hotword` VALUES ('8283','�ۺϹ���Ա','14');
INSERT INTO `qs_hotword` VALUES ('8311','������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('8322','��վ�ɱ�','10');
INSERT INTO `qs_hotword` VALUES ('8324','�����ͷ�','10');
INSERT INTO `qs_hotword` VALUES ('8326','���������ܼ�','47');
INSERT INTO `qs_hotword` VALUES ('8327','��Ч��������','53');
INSERT INTO `qs_hotword` VALUES ('8329','��ǰ����','61');
INSERT INTO `qs_hotword` VALUES ('8336','������','30');
INSERT INTO `qs_hotword` VALUES ('8337','��װ�ư�ʦ','13');
INSERT INTO `qs_hotword` VALUES ('8346','�г���Ӫ�ܼ�','21');
INSERT INTO `qs_hotword` VALUES ('8354','���ز�����','44');
INSERT INTO `qs_hotword` VALUES ('8358','�г����۾���','29');
INSERT INTO `qs_hotword` VALUES ('8362','ģ������','11');
INSERT INTO `qs_hotword` VALUES ('8370','��ǻ��ҽ��','12');
INSERT INTO `qs_hotword` VALUES ('8373','�ֳ�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('8375','��������Ա','29');
INSERT INTO `qs_hotword` VALUES ('8389','չ������','15');
INSERT INTO `qs_hotword` VALUES ('8392','�߼�����ʦ','25');
INSERT INTO `qs_hotword` VALUES ('8398','ģ�����','23');
INSERT INTO `qs_hotword` VALUES ('8410','�����ܼ�','20');
INSERT INTO `qs_hotword` VALUES ('8411','��Ƶ����','10');
INSERT INTO `qs_hotword` VALUES ('8416','UI���','21');
INSERT INTO `qs_hotword` VALUES ('8417','ά�޼���Ա','63');
INSERT INTO `qs_hotword` VALUES ('8430','��վ�������','13');
INSERT INTO `qs_hotword` VALUES ('8431','���۹���ʦ','39');
INSERT INTO `qs_hotword` VALUES ('8445','�г�����רԱ','18');
INSERT INTO `qs_hotword` VALUES ('8451','н��רԱ','12');
INSERT INTO `qs_hotword` VALUES ('8463','�豸ά�޹�','56');
INSERT INTO `qs_hotword` VALUES ('8465','�г�����','14');
INSERT INTO `qs_hotword` VALUES ('8468','EHS����ʦ','36');
INSERT INTO `qs_hotword` VALUES ('8474','ע��˰��ʦ','30');
INSERT INTO `qs_hotword` VALUES ('8480','�ֿ�ͳ��Ա','10');
INSERT INTO `qs_hotword` VALUES ('8483','�Ҿ�����','11');
INSERT INTO `qs_hotword` VALUES ('8490','��˾����','10');
INSERT INTO `qs_hotword` VALUES ('8507','ģ��ά�޹�','16');
INSERT INTO `qs_hotword` VALUES ('8512','�ƻ�����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('8515','ʵ��������','32');
INSERT INTO `qs_hotword` VALUES ('8520','��������','84');
INSERT INTO `qs_hotword` VALUES ('8521','�������','13');
INSERT INTO `qs_hotword` VALUES ('8524','Ԥ����','15');
INSERT INTO `qs_hotword` VALUES ('8527','�ƹ����','35');
INSERT INTO `qs_hotword` VALUES ('8532','�ص�ͻ�����','11');
INSERT INTO `qs_hotword` VALUES ('8538','VIP�ͷ�','36');
INSERT INTO `qs_hotword` VALUES ('8545','������Դ����','36');
INSERT INTO `qs_hotword` VALUES ('8559','�ͻ�����','44');
INSERT INTO `qs_hotword` VALUES ('8560','���������','12');
INSERT INTO `qs_hotword` VALUES ('8575','���������Ա','31');
INSERT INTO `qs_hotword` VALUES ('8584','���̲�����','28');
INSERT INTO `qs_hotword` VALUES ('8596','��������Ա','18');
INSERT INTO `qs_hotword` VALUES ('8600','Сѧ��ʦ','14');
INSERT INTO `qs_hotword` VALUES ('8614','����곤','14');
INSERT INTO `qs_hotword` VALUES ('8637','��չԱ','12');
INSERT INTO `qs_hotword` VALUES ('8639','����ά��Ա','15');
INSERT INTO `qs_hotword` VALUES ('8644','Ӫ��ҵ��Ա','12');
INSERT INTO `qs_hotword` VALUES ('8648','�ֹ�˾���','20');
INSERT INTO `qs_hotword` VALUES ('8650','���ԺרԱ','21');
INSERT INTO `qs_hotword` VALUES ('8656','�������','10');
INSERT INTO `qs_hotword` VALUES ('8673','ҽҩ��������','58');
INSERT INTO `qs_hotword` VALUES ('8680','���ɻ��','15');
INSERT INTO `qs_hotword` VALUES ('8681','��Ʒ����רԱ','17');
INSERT INTO `qs_hotword` VALUES ('8690','��Ӫ����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('8695','����','68');
INSERT INTO `qs_hotword` VALUES ('8697','UI�������','18');
INSERT INTO `qs_hotword` VALUES ('8698','��������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('8699','�绰�ط�רԱ','16');
INSERT INTO `qs_hotword` VALUES ('8706','��ѵ������','41');
INSERT INTO `qs_hotword` VALUES ('8710','��������','16');
INSERT INTO `qs_hotword` VALUES ('8712','��װ����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('8715','��Ʒ�ƹ㾭��','34');
INSERT INTO `qs_hotword` VALUES ('8721','����רԱ','13');
INSERT INTO `qs_hotword` VALUES ('8723','�߼�ҵ�����','33');
INSERT INTO `qs_hotword` VALUES ('8725','��Ŀ�ܹ���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('8728','�г�����Ա','28');
INSERT INTO `qs_hotword` VALUES ('8730','����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('8731','����߻�ʦ','22');
INSERT INTO `qs_hotword` VALUES ('8734','��������Ա','10');
INSERT INTO `qs_hotword` VALUES ('8737','��Ʋ���','10');
INSERT INTO `qs_hotword` VALUES ('8745','����������','14');
INSERT INTO `qs_hotword` VALUES ('8752','���ݱ༭','20');
INSERT INTO `qs_hotword` VALUES ('8762','����ʦ','33');
INSERT INTO `qs_hotword` VALUES ('8769','�ƻ���Ӫ����','10');
INSERT INTO `qs_hotword` VALUES ('8772','����ҵ����','48');
INSERT INTO `qs_hotword` VALUES ('8777','ѧ��רԱ','72');
INSERT INTO `qs_hotword` VALUES ('8779','����','74');
INSERT INTO `qs_hotword` VALUES ('8789','����רԱ','19');
INSERT INTO `qs_hotword` VALUES ('8793','����רԱ','15');
INSERT INTO `qs_hotword` VALUES ('8803','�������','17');
INSERT INTO `qs_hotword` VALUES ('8804','ʵϰ��ҵ����','11');
INSERT INTO `qs_hotword` VALUES ('8820','Ͷ����Ŀ����','14');
INSERT INTO `qs_hotword` VALUES ('8827','��ҵ������','11');
INSERT INTO `qs_hotword` VALUES ('8829','ҵ��˾��','13');
INSERT INTO `qs_hotword` VALUES ('8834','ҽ������','17');
INSERT INTO `qs_hotword` VALUES ('8837','�������ݹ�','14');
INSERT INTO `qs_hotword` VALUES ('8840','Ʒ������','12');
INSERT INTO `qs_hotword` VALUES ('8858','����','21');
INSERT INTO `qs_hotword` VALUES ('8859','�������Ա','48');
INSERT INTO `qs_hotword` VALUES ('8863','�Ź�����','32');
INSERT INTO `qs_hotword` VALUES ('8883','�ڿ��༭','16');
INSERT INTO `qs_hotword` VALUES ('8893','�����ƻ�Ա','10');
INSERT INTO `qs_hotword` VALUES ('8906','��������','11');
INSERT INTO `qs_hotword` VALUES ('8911','Ӫ�������ɲ�','11');
INSERT INTO `qs_hotword` VALUES ('8915','������ϵ����','10');
INSERT INTO `qs_hotword` VALUES ('8919','������Ա','19');
INSERT INTO `qs_hotword` VALUES ('8920','����','30');
INSERT INTO `qs_hotword` VALUES ('8925','���鼼��Ա','16');
INSERT INTO `qs_hotword` VALUES ('8930','�߼�ҽҩ����','83');
INSERT INTO `qs_hotword` VALUES ('8933','���񲿾���','23');
INSERT INTO `qs_hotword` VALUES ('8948','����','12');
INSERT INTO `qs_hotword` VALUES ('8951','��������','13');
INSERT INTO `qs_hotword` VALUES ('8952','����','24');
INSERT INTO `qs_hotword` VALUES ('8953','��˾��Ա','22');
INSERT INTO `qs_hotword` VALUES ('8954','���������','11');
INSERT INTO `qs_hotword` VALUES ('8955','��վ����רԱ','13');
INSERT INTO `qs_hotword` VALUES ('8972','Ա��������ʦ','23');
INSERT INTO `qs_hotword` VALUES ('8973','��������Ա','14');
INSERT INTO `qs_hotword` VALUES ('8977','����רԱ','26');
INSERT INTO `qs_hotword` VALUES ('8988','����Ա','23');
INSERT INTO `qs_hotword` VALUES ('8997','Ӫ�˶���','63');
INSERT INTO `qs_hotword` VALUES ('9009','FAE','10');
INSERT INTO `qs_hotword` VALUES ('9010','��Ʒ��ѵʦ','13');
INSERT INTO `qs_hotword` VALUES ('9013','��ҩ���۾���','15');
INSERT INTO `qs_hotword` VALUES ('9023','�̳�����Ա','25');
INSERT INTO `qs_hotword` VALUES ('9029','�ٴ�ҵ��Ա','26');
INSERT INTO `qs_hotword` VALUES ('9040','����������Ա','28');
INSERT INTO `qs_hotword` VALUES ('9045','�ܾ�������','61');
INSERT INTO `qs_hotword` VALUES ('9050','�������','13');
INSERT INTO `qs_hotword` VALUES ('9058','���۸���','32');
INSERT INTO `qs_hotword` VALUES ('9069','����ά�޹�','11');
INSERT INTO `qs_hotword` VALUES ('9072','��Դ����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('9086','ʩ������','24');
INSERT INTO `qs_hotword` VALUES ('9096','���˵�֤','15');
INSERT INTO `qs_hotword` VALUES ('9099','���´��ܾ���','10');
INSERT INTO `qs_hotword` VALUES ('9108','�������','26');
INSERT INTO `qs_hotword` VALUES ('9109','Ӫ��רԱ','28');
INSERT INTO `qs_hotword` VALUES ('9138','�������ʦ','30');
INSERT INTO `qs_hotword` VALUES ('9153','��Ʒ����','41');
INSERT INTO `qs_hotword` VALUES ('9164','ִ��רԱ','15');
INSERT INTO `qs_hotword` VALUES ('9168','ִ�ж���','10');
INSERT INTO `qs_hotword` VALUES ('9169','��ľ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('9178','֪ʶ��ȨרԱ','21');
INSERT INTO `qs_hotword` VALUES ('9184','Ƭ������','62');
INSERT INTO `qs_hotword` VALUES ('9188','���ʾ���','25');
INSERT INTO `qs_hotword` VALUES ('9189','פ�����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('9195','�г�����','11');
INSERT INTO `qs_hotword` VALUES ('9217','��ܾ���','15');
INSERT INTO `qs_hotword` VALUES ('9231','�г���������','33');
INSERT INTO `qs_hotword` VALUES ('9235','����������','26');
INSERT INTO `qs_hotword` VALUES ('9245','ҵ���ž���','10');
INSERT INTO `qs_hotword` VALUES ('9251','�ű��߻�','10');
INSERT INTO `qs_hotword` VALUES ('9255','��ƱԱ','40');
INSERT INTO `qs_hotword` VALUES ('9263','ͳ��רԱ','10');
INSERT INTO `qs_hotword` VALUES ('9270','������Ա','31');
INSERT INTO `qs_hotword` VALUES ('9274','��������','11');
INSERT INTO `qs_hotword` VALUES ('9282','Ӫ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('9305','Ʒ�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('9308','�ŵ�ͷ�Ա','21');
INSERT INTO `qs_hotword` VALUES ('9311','ҵ������','11');
INSERT INTO `qs_hotword` VALUES ('9315','Ӫ�˲�����','25');
INSERT INTO `qs_hotword` VALUES ('9324','Ʒ���ƹ㾭��','25');
INSERT INTO `qs_hotword` VALUES ('9327','��������','26');
INSERT INTO `qs_hotword` VALUES ('9328','��Ϸ�߻�','76');
INSERT INTO `qs_hotword` VALUES ('9329','Ӫ���߻��ܼ�','68');
INSERT INTO `qs_hotword` VALUES ('9336','�༭����','11');
INSERT INTO `qs_hotword` VALUES ('9338','Ʒ�Ʋ߻�רԱ','12');
INSERT INTO `qs_hotword` VALUES ('9339','Ƭ������','45');
INSERT INTO `qs_hotword` VALUES ('9344','����Ա','29');
INSERT INTO `qs_hotword` VALUES ('9348','��Ʒ���۾���','34');
INSERT INTO `qs_hotword` VALUES ('9349','����ͳ��Ա','49');
INSERT INTO `qs_hotword` VALUES ('9350','ҽԺ���۴���','96');
INSERT INTO `qs_hotword` VALUES ('9352','��ְ����','49');
INSERT INTO `qs_hotword` VALUES ('9362','����ά�޹�','41');
INSERT INTO `qs_hotword` VALUES ('9376','����','37');
INSERT INTO `qs_hotword` VALUES ('9378','ҵ��Ժ��','17');
INSERT INTO `qs_hotword` VALUES ('9380','��������','30');
INSERT INTO `qs_hotword` VALUES ('9390','ý��߻�','21');
INSERT INTO `qs_hotword` VALUES ('9391','ʡ��������','53');
INSERT INTO `qs_hotword` VALUES ('9396','����༭','40');
INSERT INTO `qs_hotword` VALUES ('9400','���ű༭','180');
INSERT INTO `qs_hotword` VALUES ('9410','��Ŀ����רԱ','20');
INSERT INTO `qs_hotword` VALUES ('9415','��չ������','43');
INSERT INTO `qs_hotword` VALUES ('9422','����רԱ','28');
INSERT INTO `qs_hotword` VALUES ('9424','����רԱ','16');
INSERT INTO `qs_hotword` VALUES ('9432','�������ۿͷ�','26');
INSERT INTO `qs_hotword` VALUES ('9435','�ŵ긱����','23');
INSERT INTO `qs_hotword` VALUES ('9437','ҵ������','110');
INSERT INTO `qs_hotword` VALUES ('9439','ʡ�����̴���','14');
INSERT INTO `qs_hotword` VALUES ('9446','Ʒ�Ʋ߻�','36');
INSERT INTO `qs_hotword` VALUES ('9450','��ѧ����Ա','28');
INSERT INTO `qs_hotword` VALUES ('9458','ǰ̨��ҽ','13');
INSERT INTO `qs_hotword` VALUES ('9461','�ƹ�Ա','14');
INSERT INTO `qs_hotword` VALUES ('9469','���Ա','13');
INSERT INTO `qs_hotword` VALUES ('9485','ʵϰ���','12');
INSERT INTO `qs_hotword` VALUES ('9494','����','25');
INSERT INTO `qs_hotword` VALUES ('9502','��Ϣ����רԱ','39');
INSERT INTO `qs_hotword` VALUES ('9508','�����ܼ�','34');
INSERT INTO `qs_hotword` VALUES ('9510','�ۺ���ϢԱ','13');
INSERT INTO `qs_hotword` VALUES ('9511','������','62');
INSERT INTO `qs_hotword` VALUES ('9512','��������','11');
INSERT INTO `qs_hotword` VALUES ('9514','�������Ա','16');
INSERT INTO `qs_hotword` VALUES ('9519','�ͻ��Ӵ�Ա','10');
INSERT INTO `qs_hotword` VALUES ('9531','רְ���','14');
INSERT INTO `qs_hotword` VALUES ('9546','Сѧ������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('9555','������������','55');
INSERT INTO `qs_hotword` VALUES ('9559','�ۺϲ�����','46');
INSERT INTO `qs_hotword` VALUES ('9573','�ۿ�ҽ��','23');
INSERT INTO `qs_hotword` VALUES ('9574','������ѯԱ','13');
INSERT INTO `qs_hotword` VALUES ('9582','ka���۴���','31');
INSERT INTO `qs_hotword` VALUES ('9583','���ҽ��','34');
INSERT INTO `qs_hotword` VALUES ('9585','ǰ̨����','11');
INSERT INTO `qs_hotword` VALUES ('9586','����ά��רԱ','23');
INSERT INTO `qs_hotword` VALUES ('9587','����רԱ','20');
INSERT INTO `qs_hotword` VALUES ('9590','�̹�Ա','14');
INSERT INTO `qs_hotword` VALUES ('9597','��������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('9606','�����ܾ���','10');
INSERT INTO `qs_hotword` VALUES ('9609','��������','15');
INSERT INTO `qs_hotword` VALUES ('9614','�������','10');
INSERT INTO `qs_hotword` VALUES ('9618','ֱӪ����','18');
INSERT INTO `qs_hotword` VALUES ('9637','����ʦ','26');
INSERT INTO `qs_hotword` VALUES ('9644','����ɹ�','28');
INSERT INTO `qs_hotword` VALUES ('9646','��Ʋ�����','15');
INSERT INTO `qs_hotword` VALUES ('9670','��������ʦ','62');
INSERT INTO `qs_hotword` VALUES ('9671','��������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('9673','����Ժǰ̨','19');
INSERT INTO `qs_hotword` VALUES ('9676','����רԱ','44');
INSERT INTO `qs_hotword` VALUES ('9677','����ά��Ա','26');
INSERT INTO `qs_hotword` VALUES ('9678','���רԱ','20');
INSERT INTO `qs_hotword` VALUES ('9688','��ʦ','42');
INSERT INTO `qs_hotword` VALUES ('9693','���񲿳���','14');
INSERT INTO `qs_hotword` VALUES ('9696','�Ŵ�ҵ��Ա','12');
INSERT INTO `qs_hotword` VALUES ('9699','��վ����Ա','29');
INSERT INTO `qs_hotword` VALUES ('9702','����Ա','11');
INSERT INTO `qs_hotword` VALUES ('9717','�绰���۾���','57');
INSERT INTO `qs_hotword` VALUES ('9719','����Ա','12');
INSERT INTO `qs_hotword` VALUES ('9741','��������','64');
INSERT INTO `qs_hotword` VALUES ('9746','����������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('9748','�����ͻ�Ա','13');
INSERT INTO `qs_hotword` VALUES ('9750','����������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('9752','������ѧ��ʦ','30');
INSERT INTO `qs_hotword` VALUES ('9760','�鳤','51');
INSERT INTO `qs_hotword` VALUES ('9761','��Ʒ�ܼ�','34');
INSERT INTO `qs_hotword` VALUES ('9762','��ҵ','11');
INSERT INTO `qs_hotword` VALUES ('9764','����Ա','79');
INSERT INTO `qs_hotword` VALUES ('9788','�ۺ�ά��','14');
INSERT INTO `qs_hotword` VALUES ('9807','����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('9816','SEO����ʦ','48');
INSERT INTO `qs_hotword` VALUES ('9817','��ҵ���ܾ���','18');
INSERT INTO `qs_hotword` VALUES ('9856','�Ӵ�','18');
INSERT INTO `qs_hotword` VALUES ('9857','��������','12');
INSERT INTO `qs_hotword` VALUES ('9860','��Ա����','15');
INSERT INTO `qs_hotword` VALUES ('9862','���ݵ곤','33');
INSERT INTO `qs_hotword` VALUES ('9863','פ����ڹ���','30');
INSERT INTO `qs_hotword` VALUES ('9877','װж��','30');
INSERT INTO `qs_hotword` VALUES ('9880','��������','10');
INSERT INTO `qs_hotword` VALUES ('9884','���վ�����','54');
INSERT INTO `qs_hotword` VALUES ('9896','�ʼ�����','32');
INSERT INTO `qs_hotword` VALUES ('9904','�����ܼ�','37');
INSERT INTO `qs_hotword` VALUES ('9913','�̳�����Ա','33');
INSERT INTO `qs_hotword` VALUES ('9914','�ۺ�ά����Ա','18');
INSERT INTO `qs_hotword` VALUES ('9918','�������','15');
INSERT INTO `qs_hotword` VALUES ('9920','���̲�����','46');
INSERT INTO `qs_hotword` VALUES ('9930','��е�����Ա','14');
INSERT INTO `qs_hotword` VALUES ('9932','�ն�ҵ��Ա','16');
INSERT INTO `qs_hotword` VALUES ('9949','װ�乤��','11');
INSERT INTO `qs_hotword` VALUES ('9961','�г�����','18');
INSERT INTO `qs_hotword` VALUES ('9976','ֱӪ����','29');
INSERT INTO `qs_hotword` VALUES ('9983','����ʿ','19');
INSERT INTO `qs_hotword` VALUES ('9985','������ҽ��','18');
INSERT INTO `qs_hotword` VALUES ('10010','VIP����','11');
INSERT INTO `qs_hotword` VALUES ('10031','�߼�����Ա','12');
INSERT INTO `qs_hotword` VALUES ('10034','����������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('10040','SMT����Ա','13');
INSERT INTO `qs_hotword` VALUES ('10043','��������','30');
INSERT INTO `qs_hotword` VALUES ('10055','׫��ָ��','25');
INSERT INTO `qs_hotword` VALUES ('10067','�Ź�����','21');
INSERT INTO `qs_hotword` VALUES ('10069','ǰ̨����','45');
INSERT INTO `qs_hotword` VALUES ('10070','ֵ�ྭ��','55');
INSERT INTO `qs_hotword` VALUES ('10094','��ƱԤ��Ա','12');
INSERT INTO `qs_hotword` VALUES ('10106','���Ա','33');
INSERT INTO `qs_hotword` VALUES ('10108','��������Ա','15');
INSERT INTO `qs_hotword` VALUES ('10112','�߼������ܼ�','26');
INSERT INTO `qs_hotword` VALUES ('10114','ֱӪ������','25');
INSERT INTO `qs_hotword` VALUES ('10125','�ͷ�ǰ̨','18');
INSERT INTO `qs_hotword` VALUES ('10131','���ɵ곤','12');
INSERT INTO `qs_hotword` VALUES ('10137','�г�Ӫ������','36');
INSERT INTO `qs_hotword` VALUES ('10161','�ֳ�����','15');
INSERT INTO `qs_hotword` VALUES ('10162','Ʒ�Ʋ߻�ʦ','10');
INSERT INTO `qs_hotword` VALUES ('10165','��άרԱ','18');
INSERT INTO `qs_hotword` VALUES ('10166','��ױƷ����','15');
INSERT INTO `qs_hotword` VALUES ('10171','�Ŷӳ�','17');
INSERT INTO `qs_hotword` VALUES ('10174','����װ�乤','12');
INSERT INTO `qs_hotword` VALUES ('10200','����Ӫ���߻�','24');
INSERT INTO `qs_hotword` VALUES ('10206','���⻯����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('10208','�߼�Ӫ������','15');
INSERT INTO `qs_hotword` VALUES ('10226','�Ź����۴���','26');
INSERT INTO `qs_hotword` VALUES ('10255','������','31');
INSERT INTO `qs_hotword` VALUES ('10272','ȫ����������','13');
INSERT INTO `qs_hotword` VALUES ('10278','Ӫ��������','22');
INSERT INTO `qs_hotword` VALUES ('10280','�괲��','11');
INSERT INTO `qs_hotword` VALUES ('10281','��ѹ��','23');
INSERT INTO `qs_hotword` VALUES ('10294','ְ�������','12');
INSERT INTO `qs_hotword` VALUES ('10318','��������Ա','19');
INSERT INTO `qs_hotword` VALUES ('10322','�곤������','16');
INSERT INTO `qs_hotword` VALUES ('10349','��������Ա','23');
INSERT INTO `qs_hotword` VALUES ('10354','�ۺ�','19');
INSERT INTO `qs_hotword` VALUES ('10363','פ����','53');
INSERT INTO `qs_hotword` VALUES ('10367','��վ����','23');
INSERT INTO `qs_hotword` VALUES ('10378','���רԱ','14');
INSERT INTO `qs_hotword` VALUES ('10379','Ʒ���ƹ�Ա','12');
INSERT INTO `qs_hotword` VALUES ('10419','���ϻ��','37');
INSERT INTO `qs_hotword` VALUES ('10431','���ӹ�','22');
INSERT INTO `qs_hotword` VALUES ('10441','�Ŷӳ���Ա','64');
INSERT INTO `qs_hotword` VALUES ('10459','ҵ�����θ�','17');
INSERT INTO `qs_hotword` VALUES ('10465','��Ŀ����Ա','24');
INSERT INTO `qs_hotword` VALUES ('10470','��ϵ����Ա','11');
INSERT INTO `qs_hotword` VALUES ('10477','�ƹ㽲ʦ','17');
INSERT INTO `qs_hotword` VALUES ('10479','ʡ����','13');
INSERT INTO `qs_hotword` VALUES ('10485','פ�����۾���','24');
INSERT INTO `qs_hotword` VALUES ('10491','��Ӫ�����','13');
INSERT INTO `qs_hotword` VALUES ('10492','�г�Ӫ���߻�','13');
INSERT INTO `qs_hotword` VALUES ('10494','ʡ��KA����','11');
INSERT INTO `qs_hotword` VALUES ('10508','�ֳ�����','18');
INSERT INTO `qs_hotword` VALUES ('10511','��������','19');
INSERT INTO `qs_hotword` VALUES ('10515','��ͻ�������','26');
INSERT INTO `qs_hotword` VALUES ('10517','����AE','18');
INSERT INTO `qs_hotword` VALUES ('10537','����','54');
INSERT INTO `qs_hotword` VALUES ('10550','�ͻ�������','15');
INSERT INTO `qs_hotword` VALUES ('10554','��������','10');
INSERT INTO `qs_hotword` VALUES ('10557','�ѻ�ʦ','14');
INSERT INTO `qs_hotword` VALUES ('10564','���ݿ⹤��ʦ','90');
INSERT INTO `qs_hotword` VALUES ('10565','UE���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('10583','�ŵ�ǰ̨','22');
INSERT INTO `qs_hotword` VALUES ('10585','�ƽ������','11');
INSERT INTO `qs_hotword` VALUES ('10589','�ٴ�����','10');
INSERT INTO `qs_hotword` VALUES ('10602','�ֹ�˾����','12');
INSERT INTO `qs_hotword` VALUES ('10605','��װҵ����','11');
INSERT INTO `qs_hotword` VALUES ('10606','�߼���ѵʦ','19');
INSERT INTO `qs_hotword` VALUES ('10616','����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('10619','���񵼹�','18');
INSERT INTO `qs_hotword` VALUES ('10628','���Ἴ��','10');
INSERT INTO `qs_hotword` VALUES ('10629','�ӽ𼼹�','11');
INSERT INTO `qs_hotword` VALUES ('10641','�������','34');
INSERT INTO `qs_hotword` VALUES ('10643','����ҵ�����','23');
INSERT INTO `qs_hotword` VALUES ('10651','��ҵ��Ӫ�ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('10664','��������','13');
INSERT INTO `qs_hotword` VALUES ('10669','����Ӫ��Ա','10');
INSERT INTO `qs_hotword` VALUES ('10675','�ɹ�����','12');
INSERT INTO `qs_hotword` VALUES ('10678','PE����ʦ','42');
INSERT INTO `qs_hotword` VALUES ('10679','�г���������','14');
INSERT INTO `qs_hotword` VALUES ('10685','���μƵ�','21');
INSERT INTO `qs_hotword` VALUES ('10696','����','11');
INSERT INTO `qs_hotword` VALUES ('10698','ҵ�����','21');
INSERT INTO `qs_hotword` VALUES ('10703','�߼��߻�','18');
INSERT INTO `qs_hotword` VALUES ('10711','����ҵ��Ա','10');
INSERT INTO `qs_hotword` VALUES ('10726','��������','42');
INSERT INTO `qs_hotword` VALUES ('10751','�г�����רԱ','13');
INSERT INTO `qs_hotword` VALUES ('10767','����˾��','17');
INSERT INTO `qs_hotword` VALUES ('10773','������Ա','48');
INSERT INTO `qs_hotword` VALUES ('10774','web����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('10775','Ԥ��רԱ','13');
INSERT INTO `qs_hotword` VALUES ('10777','����ǰ̨��Ա','10');
INSERT INTO `qs_hotword` VALUES ('10784','��Ϸ�İ��߻�','11');
INSERT INTO `qs_hotword` VALUES ('10787','������ƹ���','14');
INSERT INTO `qs_hotword` VALUES ('10789','�ͻ��Ӵ�','13');
INSERT INTO `qs_hotword` VALUES ('10796','��ά��Чʦ','11');
INSERT INTO `qs_hotword` VALUES ('10797','��ά����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('10802','�Ƶ����۾���','10');
INSERT INTO `qs_hotword` VALUES ('10804','Ӫ����������','25');
INSERT INTO `qs_hotword` VALUES ('10805','���·���רԱ','10');
INSERT INTO `qs_hotword` VALUES ('10809','Ӫ������','31');
INSERT INTO `qs_hotword` VALUES ('10812','���̸�����','10');
INSERT INTO `qs_hotword` VALUES ('10817','����Ա','15');
INSERT INTO `qs_hotword` VALUES ('10847','��������רԱ','11');
INSERT INTO `qs_hotword` VALUES ('10854','Web����Ա','20');
INSERT INTO `qs_hotword` VALUES ('10856','��������רԱ','15');
INSERT INTO `qs_hotword` VALUES ('10860','Ա���ͳ�ʦ','37');
INSERT INTO `qs_hotword` VALUES ('10873','Ʒ�ƹ���רԱ','21');
INSERT INTO `qs_hotword` VALUES ('10874','��������Ա','75');
INSERT INTO `qs_hotword` VALUES ('10911','��������','21');
INSERT INTO `qs_hotword` VALUES ('10952','�ۺ�ͷ�','76');
INSERT INTO `qs_hotword` VALUES ('10968','�������','15');
INSERT INTO `qs_hotword` VALUES ('10972','פ�꾭��','17');
INSERT INTO `qs_hotword` VALUES ('10980','�������','18');
INSERT INTO `qs_hotword` VALUES ('10982','¥�����Ա','24');
INSERT INTO `qs_hotword` VALUES ('10999','VIPרԱ','16');
INSERT INTO `qs_hotword` VALUES ('11001','���ðɷ���Ա','11');
INSERT INTO `qs_hotword` VALUES ('11023','�ʲ�����רԱ','11');
INSERT INTO `qs_hotword` VALUES ('11047','�ִ�����','39');
INSERT INTO `qs_hotword` VALUES ('11064','�����İ�','13');
INSERT INTO `qs_hotword` VALUES ('11077','������ѯʦ','12');
INSERT INTO `qs_hotword` VALUES ('11079','�г�����ʦ','31');
INSERT INTO `qs_hotword` VALUES ('11095','�������Ա','15');
INSERT INTO `qs_hotword` VALUES ('11100','�������Ľ�ʦ','22');
INSERT INTO `qs_hotword` VALUES ('11104','��ҳ��','11');
INSERT INTO `qs_hotword` VALUES ('11119','�������۾���','14');
INSERT INTO `qs_hotword` VALUES ('11140','���۶���','41');
INSERT INTO `qs_hotword` VALUES ('11153','����Ա','95');
INSERT INTO `qs_hotword` VALUES ('11160','��־�ɱ�','13');
INSERT INTO `qs_hotword` VALUES ('11172','Ա����ϵ����','24');
INSERT INTO `qs_hotword` VALUES ('11180','��������','24');
INSERT INTO `qs_hotword` VALUES ('11182','����','26');
INSERT INTO `qs_hotword` VALUES ('11188','���Ա','12');
INSERT INTO `qs_hotword` VALUES ('11194','��ѵ����','92');
INSERT INTO `qs_hotword` VALUES ('11210','�������۴���','17');
INSERT INTO `qs_hotword` VALUES ('11211','Ӫҵ����','13');
INSERT INTO `qs_hotword` VALUES ('11226','Ϳ�Ϲ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('11236','����������Ա','29');
INSERT INTO `qs_hotword` VALUES ('11241','�̻�����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('11246','�Ź�������','19');
INSERT INTO `qs_hotword` VALUES ('11251','ά�޽Ӵ�','11');
INSERT INTO `qs_hotword` VALUES ('11252','��Ա','30');
INSERT INTO `qs_hotword` VALUES ('11273','�������','10');
INSERT INTO `qs_hotword` VALUES ('11304','�ܽ���ʦ','23');
INSERT INTO `qs_hotword` VALUES ('11305','��Ʒ��������','14');
INSERT INTO `qs_hotword` VALUES ('11312','������Ա','14');
INSERT INTO `qs_hotword` VALUES ('11313','�洢����ʦ','20');
INSERT INTO `qs_hotword` VALUES ('11314','��������ʦ','20');
INSERT INTO `qs_hotword` VALUES ('11328','��ױʦ','28');
INSERT INTO `qs_hotword` VALUES ('11329','����������','19');
INSERT INTO `qs_hotword` VALUES ('11332','����ʦ','40');
INSERT INTO `qs_hotword` VALUES ('11337','����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('11350','С����ʻԱ','15');
INSERT INTO `qs_hotword` VALUES ('11355','ҩ��ʦ','43');
INSERT INTO `qs_hotword` VALUES ('11360','Ʒ�ܾ���','31');
INSERT INTO `qs_hotword` VALUES ('11366','��������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('11367','СѧӢ����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('11374','Ӫ������','38');
INSERT INTO `qs_hotword` VALUES ('11386','IT֧�ָ�','19');
INSERT INTO `qs_hotword` VALUES ('11391','������Ա','16');
INSERT INTO `qs_hotword` VALUES ('11403','��Ʒ����רԱ','12');
INSERT INTO `qs_hotword` VALUES ('11414','�ڻ�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('11434','�����ܼ�','41');
INSERT INTO `qs_hotword` VALUES ('11440','�ۺϹ�Ա','16');
INSERT INTO `qs_hotword` VALUES ('11441','���ز�����','217');
INSERT INTO `qs_hotword` VALUES ('11444','ý����������','51');
INSERT INTO `qs_hotword` VALUES ('11449','����������Ա','39');
INSERT INTO `qs_hotword` VALUES ('11453','����Ա','33');
INSERT INTO `qs_hotword` VALUES ('11457','IT����Ա','14');
INSERT INTO `qs_hotword` VALUES ('11463','����רԱ','15');
INSERT INTO `qs_hotword` VALUES ('11475','��������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('11540','����ǯ��','16');
INSERT INTO `qs_hotword` VALUES ('11545','�Ա�רԱ','20');
INSERT INTO `qs_hotword` VALUES ('11588','���ز��߻�','35');
INSERT INTO `qs_hotword` VALUES ('11609','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('11610','����������Ա','22');
INSERT INTO `qs_hotword` VALUES ('11615','�ɹ���Ա','12');
INSERT INTO `qs_hotword` VALUES ('11616','���ſͻ�����','17');
INSERT INTO `qs_hotword` VALUES ('11644','��ѧ�İ�','16');
INSERT INTO `qs_hotword` VALUES ('11652','���ز�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('11659','�Ἦ����','44');
INSERT INTO `qs_hotword` VALUES ('11669','�вͳ�ʦ','10');
INSERT INTO `qs_hotword` VALUES ('11677','����Ա','27');
INSERT INTO `qs_hotword` VALUES ('11680','�鱦����','11');
INSERT INTO `qs_hotword` VALUES ('11684','�ֿ����Ա','51');
INSERT INTO `qs_hotword` VALUES ('11689','���ܹ���ʦ','30');
INSERT INTO `qs_hotword` VALUES ('11710','��ʶ���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('11719','��ز�����','14');
INSERT INTO `qs_hotword` VALUES ('11720','�߼�Ͷ�ʹ���','29');
INSERT INTO `qs_hotword` VALUES ('11733','���񲿾���','17');
INSERT INTO `qs_hotword` VALUES ('11738','ůͨ��Ŀ����','12');
INSERT INTO `qs_hotword` VALUES ('11743','ҽ�ƺ����','13');
INSERT INTO `qs_hotword` VALUES ('11766','��������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('11803','��Ŀ����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('11824','���۴�������','26');
INSERT INTO `qs_hotword` VALUES ('11838','�������۾���','10');
INSERT INTO `qs_hotword` VALUES ('11843','���������','25');
INSERT INTO `qs_hotword` VALUES ('11849','�ͻ���������','17');
INSERT INTO `qs_hotword` VALUES ('11851','��Ӫ����רԱ','12');
INSERT INTO `qs_hotword` VALUES ('11882','��������','22');
INSERT INTO `qs_hotword` VALUES ('11887','��������','49');
INSERT INTO `qs_hotword` VALUES ('11894','��ѵʦ','10');
INSERT INTO `qs_hotword` VALUES ('11895','��Ʒ��Ӱʦ','18');
INSERT INTO `qs_hotword` VALUES ('11908','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('11935','�ۺ���Ա','32');
INSERT INTO `qs_hotword` VALUES ('11938','���ɳ���','15');
INSERT INTO `qs_hotword` VALUES ('11946','����ҵ�����','31');
INSERT INTO `qs_hotword` VALUES ('11947','����������','89');
INSERT INTO `qs_hotword` VALUES ('11968','��ĿӪ������','10');
INSERT INTO `qs_hotword` VALUES ('11969','�ۺϲ�����','10');
INSERT INTO `qs_hotword` VALUES ('11975','��ְд��','12');
INSERT INTO `qs_hotword` VALUES ('11990','��Ч����','26');
INSERT INTO `qs_hotword` VALUES ('11998','н�꼨ЧרԱ','39');
INSERT INTO `qs_hotword` VALUES ('12000','��ѯרԱ','33');
INSERT INTO `qs_hotword` VALUES ('12008','����������Ա','24');
INSERT INTO `qs_hotword` VALUES ('12016','�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('12022','��̹�','15');
INSERT INTO `qs_hotword` VALUES ('12039','������','11');
INSERT INTO `qs_hotword` VALUES ('12062','��������','50');
INSERT INTO `qs_hotword` VALUES ('12064','ά�޼���','25');
INSERT INTO `qs_hotword` VALUES ('12073','Ʒ�ʹ���','44');
INSERT INTO `qs_hotword` VALUES ('12074','�������','10');
INSERT INTO `qs_hotword` VALUES ('12077','��ϰ���۴���','14');
INSERT INTO `qs_hotword` VALUES ('12080','����רԱ','11');
INSERT INTO `qs_hotword` VALUES ('12099','�γ���ѯʦ','20');
INSERT INTO `qs_hotword` VALUES ('12104','ע�ܹ���ʦ','22');
INSERT INTO `qs_hotword` VALUES ('12122','������ѯ����','10');
INSERT INTO `qs_hotword` VALUES ('12125','��������ʦ','25');
INSERT INTO `qs_hotword` VALUES ('12143','�ڿؾ���','11');
INSERT INTO `qs_hotword` VALUES ('12149','�ֽ����','12');
INSERT INTO `qs_hotword` VALUES ('12154','����Ա','18');
INSERT INTO `qs_hotword` VALUES ('12156','��װ���','27');
INSERT INTO `qs_hotword` VALUES ('12159','�ʼ첿����','22');
INSERT INTO `qs_hotword` VALUES ('12172','�ڻ�����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('12204','Ʒ�ʾ���','68');
INSERT INTO `qs_hotword` VALUES ('12246','����������','14');
INSERT INTO `qs_hotword` VALUES ('12249','��ó��Ա','34');
INSERT INTO `qs_hotword` VALUES ('12269','�������̹���','29');
INSERT INTO `qs_hotword` VALUES ('12274','���ݹ���Ա','14');
INSERT INTO `qs_hotword` VALUES ('12277','������չ','12');
INSERT INTO `qs_hotword` VALUES ('12294','����Ա','13');
INSERT INTO `qs_hotword` VALUES ('12324','��������','45');
INSERT INTO `qs_hotword` VALUES ('12327','QC����','10');
INSERT INTO `qs_hotword` VALUES ('12342','������','13');
INSERT INTO `qs_hotword` VALUES ('12359','��������','15');
INSERT INTO `qs_hotword` VALUES ('12364','����ҵ��','11');
INSERT INTO `qs_hotword` VALUES ('12372','Ʒ����Ӫ�ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('12383','��Ʒ�ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('12387','PHP����','10');
INSERT INTO `qs_hotword` VALUES ('12391','˰������','19');
INSERT INTO `qs_hotword` VALUES ('12401','��˼��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('12405','���˿ͷ�','23');
INSERT INTO `qs_hotword` VALUES ('12415','��Ʒ��ѵרԱ','13');
INSERT INTO `qs_hotword` VALUES ('12421','��ʦ','28');
INSERT INTO `qs_hotword` VALUES ('12424','�������ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('12427','��ǰ��ѯ����','18');
INSERT INTO `qs_hotword` VALUES ('12436','SEO����','22');
INSERT INTO `qs_hotword` VALUES ('12439','�������۾�Ӣ','13');
INSERT INTO `qs_hotword` VALUES ('12448','��������','38');
INSERT INTO `qs_hotword` VALUES ('12453','�Ƴ̹���ʦ','20');
INSERT INTO `qs_hotword` VALUES ('12471','�߼����۹���','35');
INSERT INTO `qs_hotword` VALUES ('12489','��������רԱ','15');
INSERT INTO `qs_hotword` VALUES ('12504','�ɱ����ƾ���','14');
INSERT INTO `qs_hotword` VALUES ('12523','IQC����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('12525','IT����֧��','11');
INSERT INTO `qs_hotword` VALUES ('12532','���Ϲ���ʦ','64');
INSERT INTO `qs_hotword` VALUES ('12536','��ǰ��������','11');
INSERT INTO `qs_hotword` VALUES ('12537','��װ����ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('12572','�ռ����','48');
INSERT INTO `qs_hotword` VALUES ('12589','ģ��ʦ','14');
INSERT INTO `qs_hotword` VALUES ('12590','�������','15');
INSERT INTO `qs_hotword` VALUES ('12593','3D����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('12601','���乤','28');
INSERT INTO `qs_hotword` VALUES ('12602','��߻�����','18');
INSERT INTO `qs_hotword` VALUES ('12626','�߼��γ̹���','15');
INSERT INTO `qs_hotword` VALUES ('12633','��ѧ�����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('12637','��ѧ���Ľ�ʦ','13');
INSERT INTO `qs_hotword` VALUES ('12638','��ѧ��ѧ��ʦ','24');
INSERT INTO `qs_hotword` VALUES ('12639','��ѧӢ���ʦ','27');
INSERT INTO `qs_hotword` VALUES ('12641','��ѧ��ѧ��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('12653','�г�����','19');
INSERT INTO `qs_hotword` VALUES ('12657','pcb����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('12658','����������','59');
INSERT INTO `qs_hotword` VALUES ('12663','IOS����Ա','12');
INSERT INTO `qs_hotword` VALUES ('12669','�ܰ�����','12');
INSERT INTO `qs_hotword` VALUES ('12674','����������Ա','11');
INSERT INTO `qs_hotword` VALUES ('12685','���񲿸�����','44');
INSERT INTO `qs_hotword` VALUES ('12694','���ܻ�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('12697','ͯװ���ʦ','33');
INSERT INTO `qs_hotword` VALUES ('12699','����������Ա','15');
INSERT INTO `qs_hotword` VALUES ('12712','�г�����','47');
INSERT INTO `qs_hotword` VALUES ('12713','���粿����','11');
INSERT INTO `qs_hotword` VALUES ('12722','��̨����Ա','19');
INSERT INTO `qs_hotword` VALUES ('12738','���۹����','10');
INSERT INTO `qs_hotword` VALUES ('12749','�������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('12765','��Ʒ����','10');
INSERT INTO `qs_hotword` VALUES ('12766','��ͻ�����','22');
INSERT INTO `qs_hotword` VALUES ('12777','ע�ܼ���Ա','16');
INSERT INTO `qs_hotword` VALUES ('12780','��Ϸ����Ա','26');
INSERT INTO `qs_hotword` VALUES ('12796','�г�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('12801','�������۾�Ӣ','23');
INSERT INTO `qs_hotword` VALUES ('12820','ʵϰ����ʦ','16');
INSERT INTO `qs_hotword` VALUES ('12829','�����������','37');
INSERT INTO `qs_hotword` VALUES ('12844','���ƽ�����','12');
INSERT INTO `qs_hotword` VALUES ('12849','�������۾���','18');
INSERT INTO `qs_hotword` VALUES ('12855','���۲߻�','14');
INSERT INTO `qs_hotword` VALUES ('12859','��ְ����','11');
INSERT INTO `qs_hotword` VALUES ('12877','����߻�רԱ','11');
INSERT INTO `qs_hotword` VALUES ('12879','������Ա','13');
INSERT INTO `qs_hotword` VALUES ('12884','�ۺ���','42');
INSERT INTO `qs_hotword` VALUES ('12887','���´���Ա','23');
INSERT INTO `qs_hotword` VALUES ('12893','����רԱ','26');
INSERT INTO `qs_hotword` VALUES ('12894','���ز�����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('12908','��������','11');
INSERT INTO `qs_hotword` VALUES ('12910','��վ����','37');
INSERT INTO `qs_hotword` VALUES ('12913','��ơ�����','21');
INSERT INTO `qs_hotword` VALUES ('12925','�������רԱ','13');
INSERT INTO `qs_hotword` VALUES ('12930','�ܲð�����','18');
INSERT INTO `qs_hotword` VALUES ('12936','��������','12');
INSERT INTO `qs_hotword` VALUES ('12937','��еʦ','13');
INSERT INTO `qs_hotword` VALUES ('12953','�������Ա','16');
INSERT INTO `qs_hotword` VALUES ('12955','����Ա','38');
INSERT INTO `qs_hotword` VALUES ('12956','���ʲɹ�','11');
INSERT INTO `qs_hotword` VALUES ('12958','���ɲ�����','10');
INSERT INTO `qs_hotword` VALUES ('12959','��Ϸ����','24');
INSERT INTO `qs_hotword` VALUES ('12969','��ؾ���','22');
INSERT INTO `qs_hotword` VALUES ('12972','����ҵ����','15');
INSERT INTO `qs_hotword` VALUES ('12992','������Ƶ�','24');
INSERT INTO `qs_hotword` VALUES ('12995','�ֻ���Ϸ�߻�','24');
INSERT INTO `qs_hotword` VALUES ('12996','ҽ�����','66');
INSERT INTO `qs_hotword` VALUES ('12997','��ѵ����','22');
INSERT INTO `qs_hotword` VALUES ('13011','���¸�����','11');
INSERT INTO `qs_hotword` VALUES ('13015','��ҵ������','10');
INSERT INTO `qs_hotword` VALUES ('13029','������ҵ����','41');
INSERT INTO `qs_hotword` VALUES ('13039','��ѯԱ','42');
INSERT INTO `qs_hotword` VALUES ('13054','�����ɹ�רԱ','17');
INSERT INTO `qs_hotword` VALUES ('13055','�¹�������','11');
INSERT INTO `qs_hotword` VALUES ('13056','����ʱ������','11');
INSERT INTO `qs_hotword` VALUES ('13058','����������','11');
INSERT INTO `qs_hotword` VALUES ('13068','��Ҷ����Ա','13');
INSERT INTO `qs_hotword` VALUES ('13071','���տ��ƾ���','14');
INSERT INTO `qs_hotword` VALUES ('13074','��������','38');
INSERT INTO `qs_hotword` VALUES ('13076','��������','12');
INSERT INTO `qs_hotword` VALUES ('13078','���鹤��ʦ','24');
INSERT INTO `qs_hotword` VALUES ('13094','ƽ������','13');
INSERT INTO `qs_hotword` VALUES ('13097','����Ա','10');
INSERT INTO `qs_hotword` VALUES ('13098','������','26');
INSERT INTO `qs_hotword` VALUES ('13130','GIS����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('13137','Ʒ�ܲ�����','15');
INSERT INTO `qs_hotword` VALUES ('13159','פ�����','10');
INSERT INTO `qs_hotword` VALUES ('13167','KAҵ����','11');
INSERT INTO `qs_hotword` VALUES ('13176','����ѧԱ','45');
INSERT INTO `qs_hotword` VALUES ('13197','������չרԱ','16');
INSERT INTO `qs_hotword` VALUES ('13205','��վǰ̨����','11');
INSERT INTO `qs_hotword` VALUES ('13207','��վ�������','17');
INSERT INTO `qs_hotword` VALUES ('13218','ǰ̨�Ӵ���Ա','24');
INSERT INTO `qs_hotword` VALUES ('13225','�ۺ��������','31');
INSERT INTO `qs_hotword` VALUES ('13234','��Ŀ�ܹ�','14');
INSERT INTO `qs_hotword` VALUES ('13246','��Ʒ�з�����','15');
INSERT INTO `qs_hotword` VALUES ('13249','ѧ����ְ','29');
INSERT INTO `qs_hotword` VALUES ('13250','��չ����','55');
INSERT INTO `qs_hotword` VALUES ('13266','����רԱ','17');
INSERT INTO `qs_hotword` VALUES ('13273','���Ա','18');
INSERT INTO `qs_hotword` VALUES ('13290','�߻���Ա','33');
INSERT INTO `qs_hotword` VALUES ('13293','ǰ�ھ���','23');
INSERT INTO `qs_hotword` VALUES ('13299','�ͷ�����','38');
INSERT INTO `qs_hotword` VALUES ('13312','���涽��','19');
INSERT INTO `qs_hotword` VALUES ('13318','��װ����','18');
INSERT INTO `qs_hotword` VALUES ('13319','���ز����','15');
INSERT INTO `qs_hotword` VALUES ('13340','��ó����','39');
INSERT INTO `qs_hotword` VALUES ('13347','����������','19');
INSERT INTO `qs_hotword` VALUES ('13349','ѧ���ƹ㾭��','11');
INSERT INTO `qs_hotword` VALUES ('13351','�ͻ�����','18');
INSERT INTO `qs_hotword` VALUES ('13353','Ӫ���߻�ʦ','25');
INSERT INTO `qs_hotword` VALUES ('13356','��¥Ա','44');
INSERT INTO `qs_hotword` VALUES ('13361','�̳�����','22');
INSERT INTO `qs_hotword` VALUES ('13374','�������۾���','27');
INSERT INTO `qs_hotword` VALUES ('13383','�ۺ�����','27');
INSERT INTO `qs_hotword` VALUES ('13395','�з�Ա','25');
INSERT INTO `qs_hotword` VALUES ('13410','Сѧ��ѧ��ʦ','22');
INSERT INTO `qs_hotword` VALUES ('13429','��չ�߻�','26');
INSERT INTO `qs_hotword` VALUES ('13430','��������','45');
INSERT INTO `qs_hotword` VALUES ('13439','�ư�ʦ','26');
INSERT INTO `qs_hotword` VALUES ('13440','Ӫҵ��������','10');
INSERT INTO `qs_hotword` VALUES ('13441','��Ϣ�ɼ�Ա','13');
INSERT INTO `qs_hotword` VALUES ('13457','��������','12');
INSERT INTO `qs_hotword` VALUES ('13470','ʵϰ��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('13482','��̿γ̹���','12');
INSERT INTO `qs_hotword` VALUES ('13498','��ְ����Ա','12');
INSERT INTO `qs_hotword` VALUES ('13505','��ҩʦ','24');
INSERT INTO `qs_hotword` VALUES ('13509','�赸��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('13525','�������۴���','12');
INSERT INTO `qs_hotword` VALUES ('13528','С����˾��','15');
INSERT INTO `qs_hotword` VALUES ('13536','��������ѧͽ','14');
INSERT INTO `qs_hotword` VALUES ('13547','�����ƹ㾭��','13');
INSERT INTO `qs_hotword` VALUES ('13566','�׶�԰��ʦ','16');
INSERT INTO `qs_hotword` VALUES ('13570','ֱӪ�곤','29');
INSERT INTO `qs_hotword` VALUES ('13599','��Ӫ������','48');
INSERT INTO `qs_hotword` VALUES ('13601','פ��ҵ��','20');
INSERT INTO `qs_hotword` VALUES ('13604','�豸������','15');
INSERT INTO `qs_hotword` VALUES ('13608','�̳�ҵ��','17');
INSERT INTO `qs_hotword` VALUES ('13615','Ӫҵ����','235');
INSERT INTO `qs_hotword` VALUES ('13619','����Ӫ���ܼ�','15');
INSERT INTO `qs_hotword` VALUES ('13627','���̻�ͼԱ','10');
INSERT INTO `qs_hotword` VALUES ('13652','�����ܾ���','34');
INSERT INTO `qs_hotword` VALUES ('13657','ά����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('13672','������������','16');
INSERT INTO `qs_hotword` VALUES ('13676','�����߲�����','12');
INSERT INTO `qs_hotword` VALUES ('13691','�Ա�����ͷ�','19');
INSERT INTO `qs_hotword` VALUES ('13697','���粿����','11');
INSERT INTO `qs_hotword` VALUES ('13700','ս�Թ滮����','10');
INSERT INTO `qs_hotword` VALUES ('13710','��֤����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('13718','���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('13736','Ԥ���㹤��ʦ','23');
INSERT INTO `qs_hotword` VALUES ('13738','���Բ�����','17');
INSERT INTO `qs_hotword` VALUES ('13749','��������','24');
INSERT INTO `qs_hotword` VALUES ('13761','�ɿ󹤳�ʦ','19');
INSERT INTO `qs_hotword` VALUES ('13767','�ü���','11');
INSERT INTO `qs_hotword` VALUES ('13777','����Ա','38');
INSERT INTO `qs_hotword` VALUES ('13786','����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('13797','����ҵ�����','10');
INSERT INTO `qs_hotword` VALUES ('13801','����ҵ������','17');
INSERT INTO `qs_hotword` VALUES ('13807','������չ����','10');
INSERT INTO `qs_hotword` VALUES ('13815','�ƹ�ʦ','13');
INSERT INTO `qs_hotword` VALUES ('13825','�г�����רԱ','31');
INSERT INTO `qs_hotword` VALUES ('13847','��������','19');
INSERT INTO `qs_hotword` VALUES ('13851','����������','17');
INSERT INTO `qs_hotword` VALUES ('13855','�׶�԰��ʦ','21');
INSERT INTO `qs_hotword` VALUES ('13892','���ڻ��','14');
INSERT INTO `qs_hotword` VALUES ('13897','it����','12');
INSERT INTO `qs_hotword` VALUES ('13900','�绰ҵ��Ӣ','13');
INSERT INTO `qs_hotword` VALUES ('13938','����Ա','22');
INSERT INTO `qs_hotword` VALUES ('13960','����Ա','34');
INSERT INTO `qs_hotword` VALUES ('14009','��ս��н','17');
INSERT INTO `qs_hotword` VALUES ('14014','�ֻ�������','14');
INSERT INTO `qs_hotword` VALUES ('14015','�绰��ԼԱ','23');
INSERT INTO `qs_hotword` VALUES ('14033','�绰���ۿͷ�','13');
INSERT INTO `qs_hotword` VALUES ('14041','�绰ҵ��','47');
INSERT INTO `qs_hotword` VALUES ('14132','����Ա','11');
INSERT INTO `qs_hotword` VALUES ('14157','���з���Ա','11');
INSERT INTO `qs_hotword` VALUES ('14177','��������','17');
INSERT INTO `qs_hotword` VALUES ('14196','�������Ա','25');
INSERT INTO `qs_hotword` VALUES ('14216','���רԱ','14');
INSERT INTO `qs_hotword` VALUES ('14243','ҵ������','15');
INSERT INTO `qs_hotword` VALUES ('14273','����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('14274','�߼�����ʦ','16');
INSERT INTO `qs_hotword` VALUES ('14285','Ӫ����ѯʦ','24');
INSERT INTO `qs_hotword` VALUES ('14298','�绰���רԱ','23');
INSERT INTO `qs_hotword` VALUES ('14334','�������۴���','11');
INSERT INTO `qs_hotword` VALUES ('14365','����Ӵ�','13');
INSERT INTO `qs_hotword` VALUES ('14372','�绰��ѯ','35');
INSERT INTO `qs_hotword` VALUES ('14395','�����п�','11');
INSERT INTO `qs_hotword` VALUES ('14401','ϴ�¹�','10');
INSERT INTO `qs_hotword` VALUES ('14424','�ͻ��������','10');
INSERT INTO `qs_hotword` VALUES ('14441','����ѧͽ','21');
INSERT INTO `qs_hotword` VALUES ('14447','ȫְӢ���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('14519','������ѵ��','20');
INSERT INTO `qs_hotword` VALUES ('14540','��̨����','10');
INSERT INTO `qs_hotword` VALUES ('14548','�ɿ�','27');
INSERT INTO `qs_hotword` VALUES ('14551','��������','34');
INSERT INTO `qs_hotword` VALUES ('14571','�Ƶ����Ա','29');
INSERT INTO `qs_hotword` VALUES ('14668','����������Ա','13');
INSERT INTO `qs_hotword` VALUES ('14679','ҽʦ����','10');
INSERT INTO `qs_hotword` VALUES ('14710','���ַ�����','14');
INSERT INTO `qs_hotword` VALUES ('14748','���߿ͷ�','11');
INSERT INTO `qs_hotword` VALUES ('14749','����ҵ��Ա','39');
INSERT INTO `qs_hotword` VALUES ('14752','SEO����','11');
INSERT INTO `qs_hotword` VALUES ('14796','�Ա���Ӫ����','18');
INSERT INTO `qs_hotword` VALUES ('14857','��������Ա','20');
INSERT INTO `qs_hotword` VALUES ('14863','����Ա','12');
INSERT INTO `qs_hotword` VALUES ('14880','�����ҽ��','19');
INSERT INTO `qs_hotword` VALUES ('14981','֤ȯ����ʦ','33');
INSERT INTO `qs_hotword` VALUES ('14995','����ҵ������','10');
INSERT INTO `qs_hotword` VALUES ('15032','�绰Ӫ����Ӣ','18');
INSERT INTO `qs_hotword` VALUES ('15037','��Ա','11');
INSERT INTO `qs_hotword` VALUES ('15057','�������','10');
INSERT INTO `qs_hotword` VALUES ('15063','��վ����ʦ','21');
INSERT INTO `qs_hotword` VALUES ('15073','��������','26');
INSERT INTO `qs_hotword` VALUES ('15074','����Ա','32');
INSERT INTO `qs_hotword` VALUES ('15079','���','30');
INSERT INTO `qs_hotword` VALUES ('15090','סԺҽ��','12');
INSERT INTO `qs_hotword` VALUES ('15099','�����ҽʦ','13');
INSERT INTO `qs_hotword` VALUES ('15151','����Ա','11');
INSERT INTO `qs_hotword` VALUES ('15174','ǰ̨���','22');
INSERT INTO `qs_hotword` VALUES ('15240','�������','12');
INSERT INTO `qs_hotword` VALUES ('15309','���ÿ��ƹ�Ա','17');
INSERT INTO `qs_hotword` VALUES ('15349','��ѵ�ܼ�','46');
INSERT INTO `qs_hotword` VALUES ('15424','����Ա','25');
INSERT INTO `qs_hotword` VALUES ('15425','��Ӫ����','11');
INSERT INTO `qs_hotword` VALUES ('15428','ѡ�����Ŭ��','14');
INSERT INTO `qs_hotword` VALUES ('15439','�����꾭��','16');
INSERT INTO `qs_hotword` VALUES ('15443','�߼�ҵ��Ա','13');
INSERT INTO `qs_hotword` VALUES ('15507','�г���������','10');
INSERT INTO `qs_hotword` VALUES ('15512','���','24');
INSERT INTO `qs_hotword` VALUES ('15526','���Ƽ�ʦ','18');
INSERT INTO `qs_hotword` VALUES ('15553','ְҵ������','56');
INSERT INTO `qs_hotword` VALUES ('15589','�ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('15613','ֱͨ��רԱ','12');
INSERT INTO `qs_hotword` VALUES ('15638','�Ա��İ��߻�','12');
INSERT INTO `qs_hotword` VALUES ('15646','����רԱ','25');
INSERT INTO `qs_hotword` VALUES ('15728','רԱ','716');
INSERT INTO `qs_hotword` VALUES ('15790','���չ���','36');
INSERT INTO `qs_hotword` VALUES ('15873','���ͷ���Ա','14');
INSERT INTO `qs_hotword` VALUES ('15894','����߻�','15');
INSERT INTO `qs_hotword` VALUES ('15957','��Ʒ�ƹ�רԱ','27');
INSERT INTO `qs_hotword` VALUES ('16034','����ά��Ա','19');
INSERT INTO `qs_hotword` VALUES ('16062','���Ʊ���','15');
INSERT INTO `qs_hotword` VALUES ('16119','�Ա�����','12');
INSERT INTO `qs_hotword` VALUES ('16133','����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('16146','ά��רԱ','12');
INSERT INTO `qs_hotword` VALUES ('16172','���ƴ߿�','10');
INSERT INTO `qs_hotword` VALUES ('16206','����ʦ','31');
INSERT INTO `qs_hotword` VALUES ('16209','��λ','11');
INSERT INTO `qs_hotword` VALUES ('16229','�绰�ط�','14');
INSERT INTO `qs_hotword` VALUES ('16241','��λԱ','12');
INSERT INTO `qs_hotword` VALUES ('16317','ʵϰ����','11');
INSERT INTO `qs_hotword` VALUES ('16338','����Ա','16');
INSERT INTO `qs_hotword` VALUES ('16341','��������Ա','11');
INSERT INTO `qs_hotword` VALUES ('16386','����ҽ��','45');
INSERT INTO `qs_hotword` VALUES ('16403','�ڿ�ҽ��','53');
INSERT INTO `qs_hotword` VALUES ('16441','�߼�����','14');
INSERT INTO `qs_hotword` VALUES ('16555','��վ����','12');
INSERT INTO `qs_hotword` VALUES ('16579','��ҳ�������','15');
INSERT INTO `qs_hotword` VALUES ('16658','�ۺ󲿾���','12');
INSERT INTO `qs_hotword` VALUES ('16677','��ְ��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('16686','ǰ̨�ͷ�רԱ','12');
INSERT INTO `qs_hotword` VALUES ('16689','��������Ա','15');
INSERT INTO `qs_hotword` VALUES ('16756','��������','14');
INSERT INTO `qs_hotword` VALUES ('16757','������������','10');
INSERT INTO `qs_hotword` VALUES ('16767','������ѯ����','10');
INSERT INTO `qs_hotword` VALUES ('16789','���ز�ҵ��Ա','18');
INSERT INTO `qs_hotword` VALUES ('16812','��Ʒ����','26');
INSERT INTO `qs_hotword` VALUES ('16936','��������','16');
INSERT INTO `qs_hotword` VALUES ('16953','�ſ�רԱ','11');
INSERT INTO `qs_hotword` VALUES ('16963','�Ӵ�רԱ','19');
INSERT INTO `qs_hotword` VALUES ('16967','��վ�ƹ�רԱ','60');
INSERT INTO `qs_hotword` VALUES ('16974','��˾���ܾ���','16');
INSERT INTO `qs_hotword` VALUES ('17186','��������','20');
INSERT INTO `qs_hotword` VALUES ('17190','�������','11');
INSERT INTO `qs_hotword` VALUES ('17199','����ҵ��Ա','18');
INSERT INTO `qs_hotword` VALUES ('17213','�绰��ƹ���','10');
INSERT INTO `qs_hotword` VALUES ('17218','��Ʒ���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('17292','������Ա','12');
INSERT INTO `qs_hotword` VALUES ('17346','Ӫҵ������','46');
INSERT INTO `qs_hotword` VALUES ('17391','�绰��������','17');
INSERT INTO `qs_hotword` VALUES ('17403','�׽���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('17408','�������','11');
INSERT INTO `qs_hotword` VALUES ('17455','�绰��ѯҽ��','14');
INSERT INTO `qs_hotword` VALUES ('17659','������','13');
INSERT INTO `qs_hotword` VALUES ('17675','�����İ�','30');
INSERT INTO `qs_hotword` VALUES ('17681','������ѯרԱ','11');
INSERT INTO `qs_hotword` VALUES ('17688','��ǰ�ͷ�','14');
INSERT INTO `qs_hotword` VALUES ('17757','����רԱ','16');
INSERT INTO `qs_hotword` VALUES ('17769','���߹���Ա','14');
INSERT INTO `qs_hotword` VALUES ('17839','��Ӱʦ����','10');
INSERT INTO `qs_hotword` VALUES ('17858','��������','10');
INSERT INTO `qs_hotword` VALUES ('17915','Ʒ�ؾ���','24');
INSERT INTO `qs_hotword` VALUES ('17954','ʵϰ����','10');
INSERT INTO `qs_hotword` VALUES ('17998','��������','22');
INSERT INTO `qs_hotword` VALUES ('18001','�������','13');
INSERT INTO `qs_hotword` VALUES ('18120','����רԱ','18');
INSERT INTO `qs_hotword` VALUES ('18175','�������۴���','12');
INSERT INTO `qs_hotword` VALUES ('18197','����Ա','11');
INSERT INTO `qs_hotword` VALUES ('18229','Ƥ����ҽ��','21');
INSERT INTO `qs_hotword` VALUES ('18236','�ϻ���','10');
INSERT INTO `qs_hotword` VALUES ('18244','�߼����ݵ�ʦ','19');
INSERT INTO `qs_hotword` VALUES ('18261','�г����о���','10');
INSERT INTO `qs_hotword` VALUES ('18347','��������','19');
INSERT INTO `qs_hotword` VALUES ('18389','��Ϣ��Ա','11');
INSERT INTO `qs_hotword` VALUES ('18399','���㵼��','27');
INSERT INTO `qs_hotword` VALUES ('18726','��������','42');
INSERT INTO `qs_hotword` VALUES ('18761','�߼��ͷ�רԱ','11');
INSERT INTO `qs_hotword` VALUES ('18795','���Ծ���','41');
INSERT INTO `qs_hotword` VALUES ('18800','�������۹���','10');
INSERT INTO `qs_hotword` VALUES ('18882','�ճ���','13');
INSERT INTO `qs_hotword` VALUES ('18888','�������ʦ','28');
INSERT INTO `qs_hotword` VALUES ('18896','�߼���ƹ���','19');
INSERT INTO `qs_hotword` VALUES ('18970','��ǻ��ʿ','11');
INSERT INTO `qs_hotword` VALUES ('18976','�����չ�','12');
INSERT INTO `qs_hotword` VALUES ('19043','�ͻ���ϵרԱ','30');
INSERT INTO `qs_hotword` VALUES ('19062','��еά�޹�','27');
INSERT INTO `qs_hotword` VALUES ('19155','����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('19194','ҵ������רԱ','10');
INSERT INTO `qs_hotword` VALUES ('19208','����ҽ��','20');
INSERT INTO `qs_hotword` VALUES ('19271','��������','12');
INSERT INTO `qs_hotword` VALUES ('19299','��������','12');
INSERT INTO `qs_hotword` VALUES ('19339','KAҵ������','26');
INSERT INTO `qs_hotword` VALUES ('19345','��������Ա','31');
INSERT INTO `qs_hotword` VALUES ('19348','���˻��','12');
INSERT INTO `qs_hotword` VALUES ('19379','��ϰ�곤','20');
INSERT INTO `qs_hotword` VALUES ('19461','���ٽ�ʦ','20');
INSERT INTO `qs_hotword` VALUES ('19473','���̼���','25');
INSERT INTO `qs_hotword` VALUES ('19495','����ҽʦ','26');
INSERT INTO `qs_hotword` VALUES ('19534','���ܲ�����','17');
INSERT INTO `qs_hotword` VALUES ('19535','���̲���Ա','13');
INSERT INTO `qs_hotword` VALUES ('19582','�������','20');
INSERT INTO `qs_hotword` VALUES ('19586','˰��רԱ','23');
INSERT INTO `qs_hotword` VALUES ('19626','¥�澭��','45');
INSERT INTO `qs_hotword` VALUES ('19674','���Ա','49');
INSERT INTO `qs_hotword` VALUES ('19884','����곤','22');
INSERT INTO `qs_hotword` VALUES ('19920','Ѳ��Ա','15');
INSERT INTO `qs_hotword` VALUES ('19960','ˮ��','10');
INSERT INTO `qs_hotword` VALUES ('20006','������Ӫ�ܼ�','14');
INSERT INTO `qs_hotword` VALUES ('20039','��������Ա','12');
INSERT INTO `qs_hotword` VALUES ('20073','��Ʒ��ѵ��ʦ','14');
INSERT INTO `qs_hotword` VALUES ('20198','���չ���','10');
INSERT INTO `qs_hotword` VALUES ('20200','��������','17');
INSERT INTO `qs_hotword` VALUES ('20239','��վ�ͷ�רԱ','17');
INSERT INTO `qs_hotword` VALUES ('20354','�߼����ݹ���','57');
INSERT INTO `qs_hotword` VALUES ('20373','�ͷ�������','13');
INSERT INTO `qs_hotword` VALUES ('20535','������Ӫ����','14');
INSERT INTO `qs_hotword` VALUES ('20579','��ѧ����','10');
INSERT INTO `qs_hotword` VALUES ('20641','��������','13');
INSERT INTO `qs_hotword` VALUES ('20658','��������','10');
INSERT INTO `qs_hotword` VALUES ('20746','ʩ������','24');
INSERT INTO `qs_hotword` VALUES ('20750','���ݹ�','24');
INSERT INTO `qs_hotword` VALUES ('20761','���и','11');
INSERT INTO `qs_hotword` VALUES ('20806','�绰����רԱ','15');
INSERT INTO `qs_hotword` VALUES ('20857','�вͷ���Ա','13');
INSERT INTO `qs_hotword` VALUES ('20876','��Ӫ����','10');
INSERT INTO `qs_hotword` VALUES ('20939','�ͻ�����Ա','18');
INSERT INTO `qs_hotword` VALUES ('20961','�ۺ���Ա','43');
INSERT INTO `qs_hotword` VALUES ('20984','������Ա','13');
INSERT INTO `qs_hotword` VALUES ('20996','�г�Ӫ���ܼ�','48');
INSERT INTO `qs_hotword` VALUES ('21079','������ѯʦ','19');
INSERT INTO `qs_hotword` VALUES ('21147','��ҽʦ','42');
INSERT INTO `qs_hotword` VALUES ('21160','�������۾���','22');
INSERT INTO `qs_hotword` VALUES ('21163','�����','11');
INSERT INTO `qs_hotword` VALUES ('21226','��ͯ��Ӱʦ','16');
INSERT INTO `qs_hotword` VALUES ('21239','�Ա��̳�����','25');
INSERT INTO `qs_hotword` VALUES ('21360','���۽Ӵ�','11');
INSERT INTO `qs_hotword` VALUES ('21530','��������','14');
INSERT INTO `qs_hotword` VALUES ('21560','����ѧͽ','11');
INSERT INTO `qs_hotword` VALUES ('21609','����רԱ','11');
INSERT INTO `qs_hotword` VALUES ('21638','�߼�������Ա','17');
INSERT INTO `qs_hotword` VALUES ('21744','��������','14');
INSERT INTO `qs_hotword` VALUES ('21761','������չרԱ','27');
INSERT INTO `qs_hotword` VALUES ('21792','��ҽҽ��','12');
INSERT INTO `qs_hotword` VALUES ('21814','����ʦ','24');
INSERT INTO `qs_hotword` VALUES ('21821','PA����','11');
INSERT INTO `qs_hotword` VALUES ('21830','������۾���','10');
INSERT INTO `qs_hotword` VALUES ('21923','ҽ��Ƴ�','16');
INSERT INTO `qs_hotword` VALUES ('21957','¥�沿��','17');
INSERT INTO `qs_hotword` VALUES ('21971','�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('22075','�г�Ӫ��Ա','43');
INSERT INTO `qs_hotword` VALUES ('22078','ǰ������Ա','12');
INSERT INTO `qs_hotword` VALUES ('22168','��ͯ','10');
INSERT INTO `qs_hotword` VALUES ('22213','����ҽʦ','14');
INSERT INTO `qs_hotword` VALUES ('22256','ҽ��','44');
INSERT INTO `qs_hotword` VALUES ('22258','סԺҽʦ','17');
INSERT INTO `qs_hotword` VALUES ('22307','����Ժ�곤','21');
INSERT INTO `qs_hotword` VALUES ('22442','����ҵ��Ӣ','17');
INSERT INTO `qs_hotword` VALUES ('22476','������Ŀ����','13');
INSERT INTO `qs_hotword` VALUES ('22567','�ͷ��Ӵ�','23');
INSERT INTO `qs_hotword` VALUES ('22702','����ҵ����','11');
INSERT INTO `qs_hotword` VALUES ('22720','����ҽ��','11');
INSERT INTO `qs_hotword` VALUES ('22884','����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('22893','ҽ���İ�','13');
INSERT INTO `qs_hotword` VALUES ('22960','�ز�������','13');
INSERT INTO `qs_hotword` VALUES ('23050','�г�����Ա','21');
INSERT INTO `qs_hotword` VALUES ('23205','����רԱ','12');
INSERT INTO `qs_hotword` VALUES ('23227','�Ŵ�����Ա','13');
INSERT INTO `qs_hotword` VALUES ('23306','����Ա','12');
INSERT INTO `qs_hotword` VALUES ('23362','��վ���ݱ༭','16');
INSERT INTO `qs_hotword` VALUES ('23569','ý������','11');
INSERT INTO `qs_hotword` VALUES ('23589','������','18');
INSERT INTO `qs_hotword` VALUES ('23751','����','10');
INSERT INTO `qs_hotword` VALUES ('23766','Ͷ�ʾ�����','19');
INSERT INTO `qs_hotword` VALUES ('23832','�绰����Ա','12');
INSERT INTO `qs_hotword` VALUES ('23849','����Ա','10');
INSERT INTO `qs_hotword` VALUES ('23856','ά�޹���','10');
INSERT INTO `qs_hotword` VALUES ('23887','Ӫ�����ܾ���','25');
INSERT INTO `qs_hotword` VALUES ('23986','�̳�����Ա','24');
INSERT INTO `qs_hotword` VALUES ('24029','����Ӫ������','27');
INSERT INTO `qs_hotword` VALUES ('24066','��ƾ�����','11');
INSERT INTO `qs_hotword` VALUES ('24126','��ϰ����','51');
INSERT INTO `qs_hotword` VALUES ('24173','������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('24229','���缼��Ա','11');
INSERT INTO `qs_hotword` VALUES ('24250','�յ�����','17');
INSERT INTO `qs_hotword` VALUES ('24279','�籣רԱ','10');
INSERT INTO `qs_hotword` VALUES ('24293','ˮ�ɰ�Ա','11');
INSERT INTO `qs_hotword` VALUES ('24311','���չ���','16');
INSERT INTO `qs_hotword` VALUES ('24362','�����ܾ���','19');
INSERT INTO `qs_hotword` VALUES ('24368','�ֿ�Ա','11');
INSERT INTO `qs_hotword` VALUES ('24596','����Ͷ�ʹ���','10');
INSERT INTO `qs_hotword` VALUES ('24638','����Ͷ�ʹ���','12');
INSERT INTO `qs_hotword` VALUES ('24672','¥������','33');
INSERT INTO `qs_hotword` VALUES ('24727','��ְҵ����','16');
INSERT INTO `qs_hotword` VALUES ('24734','��������','18');
INSERT INTO `qs_hotword` VALUES ('25010','���������ܼ�','15');
INSERT INTO `qs_hotword` VALUES ('25168','��������','23');
INSERT INTO `qs_hotword` VALUES ('25187','�߼�����','13');
INSERT INTO `qs_hotword` VALUES ('25249','ϵͳά��','13');
INSERT INTO `qs_hotword` VALUES ('25253','ǰ̨��ѯʦ','10');
INSERT INTO `qs_hotword` VALUES ('25316','�г�����Ա','20');
INSERT INTO `qs_hotword` VALUES ('25396','���乤','13');
INSERT INTO `qs_hotword` VALUES ('25505','ά�޾���','15');
INSERT INTO `qs_hotword` VALUES ('25597','������ϰ����','10');
INSERT INTO `qs_hotword` VALUES ('25628','��ƾ���','43');
INSERT INTO `qs_hotword` VALUES ('25735','����','12');
INSERT INTO `qs_hotword` VALUES ('25785','BD����','13');
INSERT INTO `qs_hotword` VALUES ('25815','���۵���','10');
INSERT INTO `qs_hotword` VALUES ('25848','��ֽ����','10');
INSERT INTO `qs_hotword` VALUES ('25856','���鼼ʦ','11');
INSERT INTO `qs_hotword` VALUES ('25970','�������','26');
INSERT INTO `qs_hotword` VALUES ('26174','��Ħ��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('26206','��ҳ�����Ա','13');
INSERT INTO `qs_hotword` VALUES ('26304','���⺺���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('26307','����רԱ','11');
INSERT INTO `qs_hotword` VALUES ('26330','ǩ֤רԱ','13');
INSERT INTO `qs_hotword` VALUES ('26464','ktv����Ա','10');
INSERT INTO `qs_hotword` VALUES ('26482','Ч��ͼ��ͼԱ','26');
INSERT INTO `qs_hotword` VALUES ('26495','�ͷ�����','13');
INSERT INTO `qs_hotword` VALUES ('26506','�߼��߻�����','17');
INSERT INTO `qs_hotword` VALUES ('26529','��������','23');
INSERT INTO `qs_hotword` VALUES ('26540','�������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('26556','��ѧ����','40');
INSERT INTO `qs_hotword` VALUES ('26564','�о�����','11');
INSERT INTO `qs_hotword` VALUES ('26591','�������۴���','28');
INSERT INTO `qs_hotword` VALUES ('26598','����Ӣ','31');
INSERT INTO `qs_hotword` VALUES ('26612','�ɵ�Ա','16');
INSERT INTO `qs_hotword` VALUES ('26615','ֱӪ����','13');
INSERT INTO `qs_hotword` VALUES ('26674','��Ա����','14');
INSERT INTO `qs_hotword` VALUES ('26731','�Ƶ�ǰ̨�Ӵ�','30');
INSERT INTO `qs_hotword` VALUES ('26759','�����Ƶ�','10');
INSERT INTO `qs_hotword` VALUES ('26787','�������Ϲ���Ա','77');
INSERT INTO `qs_hotword` VALUES ('26789','��ҵ��������','18');
INSERT INTO `qs_hotword` VALUES ('26790','ERP��Ŀ����','14');
INSERT INTO `qs_hotword` VALUES ('26792','�����з�����ʦ','122');
INSERT INTO `qs_hotword` VALUES ('26795','JAVA��������ʦ','596');
INSERT INTO `qs_hotword` VALUES ('26800','C++�������ʦ','122');
INSERT INTO `qs_hotword` VALUES ('26805','��ҵ������','52');
INSERT INTO `qs_hotword` VALUES ('26816','��ҵ�߻���Ա','76');
INSERT INTO `qs_hotword` VALUES ('26822','ϵͳ���ɹ���ʦ','240');
INSERT INTO `qs_hotword` VALUES ('26823','�߼���ǰ����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('26827','��ͻ����۾���','99');
INSERT INTO `qs_hotword` VALUES ('26831','�ֳ���ѯ','13');
INSERT INTO `qs_hotword` VALUES ('26845','����֧�ֹ���ʦ','1194');
INSERT INTO `qs_hotword` VALUES ('26854','չ̨���','18');
INSERT INTO `qs_hotword` VALUES ('26861','Java����ʦ','343');
INSERT INTO `qs_hotword` VALUES ('26862','ƽ�����ʵϰ��','30');
INSERT INTO `qs_hotword` VALUES ('26874','��Ԥ�㹤��ʦ','11');
INSERT INTO `qs_hotword` VALUES ('26883','��Ϸ�ͷ�','40');
INSERT INTO `qs_hotword` VALUES ('26884','��Ϸ����','23');
INSERT INTO `qs_hotword` VALUES ('26886','�߼��������ʦ','398');
INSERT INTO `qs_hotword` VALUES ('26895','�ۺ���񲿾���','24');
INSERT INTO `qs_hotword` VALUES ('26898','������װ�����ʦ','213');
INSERT INTO `qs_hotword` VALUES ('26899','�߼��������ʦ','25');
INSERT INTO `qs_hotword` VALUES ('26900','JAVA�������ʦ','542');
INSERT INTO `qs_hotword` VALUES ('26903','PHP��������ʦ','249');
INSERT INTO `qs_hotword` VALUES ('26905','cad����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('26915','������Թ���ʦ','876');
INSERT INTO `qs_hotword` VALUES ('26927','�ۺ���񹤳�ʦ','352');
INSERT INTO `qs_hotword` VALUES ('26928','�����������','13');
INSERT INTO `qs_hotword` VALUES ('26930','�ĵ�����ʦ','32');
INSERT INTO `qs_hotword` VALUES ('26936','ע���ʲ�����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('26940','��վ��������ʦ','87');
INSERT INTO `qs_hotword` VALUES ('26951','���ù�����ʦ','27');
INSERT INTO `qs_hotword` VALUES ('26958','����רԱ','13');
INSERT INTO `qs_hotword` VALUES ('26962','��Ʒ���ݷ���Ա','10');
INSERT INTO `qs_hotword` VALUES ('26964','�������񲿾���','28');
INSERT INTO `qs_hotword` VALUES ('26974','AS3��������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('26982','���ڼ���','14');
INSERT INTO `qs_hotword` VALUES ('26989','�����ƻ�Э��Ա','26');
INSERT INTO `qs_hotword` VALUES ('26992','���ͻ��ܼ�','37');
INSERT INTO `qs_hotword` VALUES ('27018','����Ӫ���ƹ�רԱ','11');
INSERT INTO `qs_hotword` VALUES ('27019','SEO�Ż�רԱ','26');
INSERT INTO `qs_hotword` VALUES ('27028','Delphi��������ʦ','26');
INSERT INTO `qs_hotword` VALUES ('27033','��ó����Ա','17');
INSERT INTO `qs_hotword` VALUES ('27034','4S���ܾ���','42');
INSERT INTO `qs_hotword` VALUES ('27039','��������','32');
INSERT INTO `qs_hotword` VALUES ('27061','��ҵ����','29');
INSERT INTO `qs_hotword` VALUES ('27064','�������','13');
INSERT INTO `qs_hotword` VALUES ('27067','������۹���ʦ','113');
INSERT INTO `qs_hotword` VALUES ('27070','΢����ӪרԱ','18');
INSERT INTO `qs_hotword` VALUES ('27072','Ƕ��ʽ�������ʦ','195');
INSERT INTO `qs_hotword` VALUES ('27077','�����������ʦ','540');
INSERT INTO `qs_hotword` VALUES ('27091','��Ϣ��ȫ����ʦ','27');
INSERT INTO `qs_hotword` VALUES ('27095','�������Ա','14');
INSERT INTO `qs_hotword` VALUES ('27118','����������Ӫ����','17');
INSERT INTO `qs_hotword` VALUES ('27119','.NET����Ա','159');
INSERT INTO `qs_hotword` VALUES ('27121','ҽѧ��Ϣ���ݴ���','16');
INSERT INTO `qs_hotword` VALUES ('27127','JAVA�з�����ʦ','47');
INSERT INTO `qs_hotword` VALUES ('27129','��Ŀʵʩ����ʦ','143');
INSERT INTO `qs_hotword` VALUES ('27152','����ƽ�����ʦ','261');
INSERT INTO `qs_hotword` VALUES ('27158','Android����ʦ','28');
INSERT INTO `qs_hotword` VALUES ('27163','���տ���רԱ','24');
INSERT INTO `qs_hotword` VALUES ('27177','ע���������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('27179','�������ʦjava','29');
INSERT INTO `qs_hotword` VALUES ('27184','�߼�Ӳ������ʦ','108');
INSERT INTO `qs_hotword` VALUES ('27185','������Դ������','173');
INSERT INTO `qs_hotword` VALUES ('27195','��վ�ƹ�����','10');
INSERT INTO `qs_hotword` VALUES ('27201','ϵͳ�ܹ����ʦ','54');
INSERT INTO `qs_hotword` VALUES ('27202','.net�������ʦ','225');
INSERT INTO `qs_hotword` VALUES ('27205','������Դ��������','11');
INSERT INTO `qs_hotword` VALUES ('27215','web���Թ���ʦ','22');
INSERT INTO `qs_hotword` VALUES ('27238','Ӳ���з�����ʦ','58');
INSERT INTO `qs_hotword` VALUES ('27239','��е�з�����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('27249','����з�����ʦ','77');
INSERT INTO `qs_hotword` VALUES ('27251','�߼���ҳ���ʦ','82');
INSERT INTO `qs_hotword` VALUES ('27253','��Ƭ������','16');
INSERT INTO `qs_hotword` VALUES ('27254','פ��ֹ�˾����','12');
INSERT INTO `qs_hotword` VALUES ('27261','�������ƹ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('27282','��Ŀ������','15');
INSERT INTO `qs_hotword` VALUES ('27288','���ز����۾���','217');
INSERT INTO `qs_hotword` VALUES ('27322','PCB��ƹ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('27333','�߼���������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('27355','.net��������ʦ','240');
INSERT INTO `qs_hotword` VALUES ('27402','��������ʵϰ��','14');
INSERT INTO `qs_hotword` VALUES ('27419','BD','10');
INSERT INTO `qs_hotword` VALUES ('27421','���û��','45');
INSERT INTO `qs_hotword` VALUES ('27424','��Ƭ����������ʦ','40');
INSERT INTO `qs_hotword` VALUES ('27425','Ӳ�����Թ���ʦ','98');
INSERT INTO `qs_hotword` VALUES ('27426','Ӳ����������ʦ','84');
INSERT INTO `qs_hotword` VALUES ('27427','�ֻ����Թ���ʦ','52');
INSERT INTO `qs_hotword` VALUES ('27430','ý������רԱ','51');
INSERT INTO `qs_hotword` VALUES ('27431','���ͻ�����','20');
INSERT INTO `qs_hotword` VALUES ('27446','���ϸ��ϲɹ�','26');
INSERT INTO `qs_hotword` VALUES ('27453','�������ĵ绰����','18');
INSERT INTO `qs_hotword` VALUES ('27463','�������۹���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('27479','��Ʒ�ṹ����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('27488','JAVA�߼�����Ա','37');
INSERT INTO `qs_hotword` VALUES ('27506','��Ϸϵͳ�߻�','22');
INSERT INTO `qs_hotword` VALUES ('27523','�������񹤳�ʦ','235');
INSERT INTO `qs_hotword` VALUES ('27524','C++�߼�����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('27530','ϵͳ��������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('27537','Flex��������ʦ','45');
INSERT INTO `qs_hotword` VALUES ('27540','Ʒ���ƹ�����','14');
INSERT INTO `qs_hotword` VALUES ('27544','PHP�������ʦ','71');
INSERT INTO `qs_hotword` VALUES ('27558','�ͷ�����','15');
INSERT INTO `qs_hotword` VALUES ('27559','���ֳ�����ʦ','30');
INSERT INTO `qs_hotword` VALUES ('27570','��վ��������Ա','10');
INSERT INTO `qs_hotword` VALUES ('27575','������ҳ���ʦ','36');
INSERT INTO `qs_hotword` VALUES ('27578','C#�������ʦ','88');
INSERT INTO `qs_hotword` VALUES ('27581','�����ܼ�','79');
INSERT INTO `qs_hotword` VALUES ('27583','������������','13');
INSERT INTO `qs_hotword` VALUES ('27591','Java����Ա','278');
INSERT INTO `qs_hotword` VALUES ('27597','����ó��ҵ��Ա','33');
INSERT INTO `qs_hotword` VALUES ('27602','ǩ֤����','13');
INSERT INTO `qs_hotword` VALUES ('27606','�����ṹ����ʦ','35');
INSERT INTO `qs_hotword` VALUES ('27610','������ƹ���ʦ','23');
INSERT INTO `qs_hotword` VALUES ('27621','�߼���������ʦ','31');
INSERT INTO `qs_hotword` VALUES ('27628','.net��Ŀ����','24');
INSERT INTO `qs_hotword` VALUES ('27629','�����滮���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('27631','.net�߼�����Ա','21');
INSERT INTO `qs_hotword` VALUES ('27635','�����з�����','32');
INSERT INTO `qs_hotword` VALUES ('27638','�߼��з�����ʦ','48');
INSERT INTO `qs_hotword` VALUES ('27641','.NET�߼�����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('27659','���������ǰ̨','48');
INSERT INTO `qs_hotword` VALUES ('27664','�����ھ򹤳�ʦ','29');
INSERT INTO `qs_hotword` VALUES ('27671','�ͻ���ϵ����','15');
INSERT INTO `qs_hotword` VALUES ('27672','���ز��߻�����','19');
INSERT INTO `qs_hotword` VALUES ('27676','���ز����۾�Ӣ','29');
INSERT INTO `qs_hotword` VALUES ('27697','��������','27');
INSERT INTO `qs_hotword` VALUES ('27714','���ı༭','12');
INSERT INTO `qs_hotword` VALUES ('27724','�ṹ��ƹ���ʦ','95');
INSERT INTO `qs_hotword` VALUES ('27736','C#�����������ʦ','44');
INSERT INTO `qs_hotword` VALUES ('27759','��Ʒ���Թ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('27760','�������','40');
INSERT INTO `qs_hotword` VALUES ('27768','����ά������ʦ','42');
INSERT INTO `qs_hotword` VALUES ('27769','������۹���ʦ','82');
INSERT INTO `qs_hotword` VALUES ('27772','�����������ʦ','18');
INSERT INTO `qs_hotword` VALUES ('27777','BI����ʦ','26');
INSERT INTO `qs_hotword` VALUES ('27778','������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('27800','��Ϣ�༭','38');
INSERT INTO `qs_hotword` VALUES ('27803','�߼����','20');
INSERT INTO `qs_hotword` VALUES ('27817','�������۴���','18');
INSERT INTO `qs_hotword` VALUES ('27822','�����������','25');
INSERT INTO `qs_hotword` VALUES ('27829','C++��������ʦ','127');
INSERT INTO `qs_hotword` VALUES ('27830','��Ϸ��������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('27833','linuxϵͳ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('27834','�ͻ�ִ��AE','12');
INSERT INTO `qs_hotword` VALUES ('27835','����������','11');
INSERT INTO `qs_hotword` VALUES ('27836','��������Ա','11');
INSERT INTO `qs_hotword` VALUES ('27838','��������','17');
INSERT INTO `qs_hotword` VALUES ('27843','��վ�������ʦ','22');
INSERT INTO `qs_hotword` VALUES ('27847','��������ָ��','25');
INSERT INTO `qs_hotword` VALUES ('27864','ʵʩ��Ŀ����','20');
INSERT INTO `qs_hotword` VALUES ('27866','Ƕ��ʽϵͳ����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('27867','���Ӽ�������ʦ','25');
INSERT INTO `qs_hotword` VALUES ('27873','�����̱������','10');
INSERT INTO `qs_hotword` VALUES ('27885','Receptionist','23');
INSERT INTO `qs_hotword` VALUES ('27887','�豸ά��Ա','10');
INSERT INTO `qs_hotword` VALUES ('27890','��װ����ʦ','49');
INSERT INTO `qs_hotword` VALUES ('27909','.net�з�����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('27914','�߼�רԱ','18');
INSERT INTO `qs_hotword` VALUES ('27940','Ӧ�ÿ�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('27944','ϵͳά������ʦ','55');
INSERT INTO `qs_hotword` VALUES ('27947','linux����ʦ','26');
INSERT INTO `qs_hotword` VALUES ('27952','���UI����ʦ','57');
INSERT INTO `qs_hotword` VALUES ('27956','GIS��������ʦ','34');
INSERT INTO `qs_hotword` VALUES ('27965','���۾�����','11');
INSERT INTO `qs_hotword` VALUES ('27967','��ҵ�ܼ�','27');
INSERT INTO `qs_hotword` VALUES ('27984','������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('28001','����������','37');
INSERT INTO `qs_hotword` VALUES ('28002','����cashier','10');
INSERT INTO `qs_hotword` VALUES ('28003','������Դ������','18');
INSERT INTO `qs_hotword` VALUES ('28022','php�з�����ʦ','20');
INSERT INTO `qs_hotword` VALUES ('28024','VC++����Ա','14');
INSERT INTO `qs_hotword` VALUES ('28035','���ʵʩ����ʦ','154');
INSERT INTO `qs_hotword` VALUES ('28066','��������','11');
INSERT INTO `qs_hotword` VALUES ('28076','�ۺ�������ʦ','34');
INSERT INTO `qs_hotword` VALUES ('28082','ϵͳ��ά����ʦ','41');
INSERT INTO `qs_hotword` VALUES ('28083','Flash��������ʦ','41');
INSERT INTO `qs_hotword` VALUES ('28106','����Ա','18');
INSERT INTO `qs_hotword` VALUES ('28109','ִ�о���','21');
INSERT INTO `qs_hotword` VALUES ('28113','���󹤳�ʦ','30');
INSERT INTO `qs_hotword` VALUES ('28122','OTC���۴���','409');
INSERT INTO `qs_hotword` VALUES ('28124','�������רԱ','10');
INSERT INTO `qs_hotword` VALUES ('28126','�����ܼ�','15');
INSERT INTO `qs_hotword` VALUES ('28131','web��������ʦ','91');
INSERT INTO `qs_hotword` VALUES ('28132','�з�����','55');
INSERT INTO `qs_hotword` VALUES ('28134','�������۹���ʦ','19');
INSERT INTO `qs_hotword` VALUES ('28140','�Ա��ͷ�����','31');
INSERT INTO `qs_hotword` VALUES ('28160','�߼�php����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('28161','����װ�����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('28170','��Ʒ������','19');
INSERT INTO `qs_hotword` VALUES ('28179','ǰ̨����������','40');
INSERT INTO `qs_hotword` VALUES ('28180','���﷭��','20');
INSERT INTO `qs_hotword` VALUES ('28183','��������Ա','23');
INSERT INTO `qs_hotword` VALUES ('28186','.net����ʦ','75');
INSERT INTO `qs_hotword` VALUES ('28187','���ںϳ�ʦ','10');
INSERT INTO `qs_hotword` VALUES ('28191','�߼�java����Ա','14');
INSERT INTO `qs_hotword` VALUES ('28195','��Ϸ�ͷ�רԱ','16');
INSERT INTO `qs_hotword` VALUES ('28205','�ɹ�����','29');
INSERT INTO `qs_hotword` VALUES ('28208','ѧ���ƹ�רԱ','14');
INSERT INTO `qs_hotword` VALUES ('28215','FLASH�������ʦ','20');
INSERT INTO `qs_hotword` VALUES ('28216','ERPʵʩ����','53');
INSERT INTO `qs_hotword` VALUES ('28223','��е��ƹ���ʦ','304');
INSERT INTO `qs_hotword` VALUES ('28246','��е���չ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('28266','ҽ����е���۴���','97');
INSERT INTO `qs_hotword` VALUES ('28269','Secretary','27');
INSERT INTO `qs_hotword` VALUES ('28280','QC����Ա','18');
INSERT INTO `qs_hotword` VALUES ('28285','����ҵ��Ա','10');
INSERT INTO `qs_hotword` VALUES ('28296','�ͻ����񹤳�ʦ','25');
INSERT INTO `qs_hotword` VALUES ('28311','ҵ��������Ա','12');
INSERT INTO `qs_hotword` VALUES ('28320','�߼�JAVA����ʦ','87');
INSERT INTO `qs_hotword` VALUES ('28348','�м�JAVA����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('28363','��Ŀ����','17');
INSERT INTO `qs_hotword` VALUES ('28383','�ֳ�Ӧ�ù���ʦ','26');
INSERT INTO `qs_hotword` VALUES ('28384','�߼�ϵͳ����ʦ','34');
INSERT INTO `qs_hotword` VALUES ('28385','�������ӹ���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('28396','רҵ��ѵʦ','37');
INSERT INTO `qs_hotword` VALUES ('28403','��ǰ֧�ֹ���ʦ','22');
INSERT INTO `qs_hotword` VALUES ('28432','���ʹ���ʦ','25');
INSERT INTO `qs_hotword` VALUES ('28436','�Ƴ���������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('28445','��Ŀ�ɱ�����רԱ','11');
INSERT INTO `qs_hotword` VALUES ('28460','ǰ�����칤��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('28465','���ܲ��Թ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('28466','�豸ά������ʦ','35');
INSERT INTO `qs_hotword` VALUES ('28473','����������ʦ','38');
INSERT INTO `qs_hotword` VALUES ('28482','����ά�޹���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('28492','������ȫ����רԱ','12');
INSERT INTO `qs_hotword` VALUES ('28520','�ٴ����ԱCRA','20');
INSERT INTO `qs_hotword` VALUES ('28522','seo����רԱ','14');
INSERT INTO `qs_hotword` VALUES ('28527','flash����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('28533','��Ʒ�ɱ�����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('28537','�г�����������','47');
INSERT INTO `qs_hotword` VALUES ('28541','�߼���е����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('28543','��װ���Ա','29');
INSERT INTO `qs_hotword` VALUES ('28554','�������Ա','34');
INSERT INTO `qs_hotword` VALUES ('28556','������Դʵϰ��','39');
INSERT INTO `qs_hotword` VALUES ('28592','Ƕ��ʽ�������','49');
INSERT INTO `qs_hotword` VALUES ('28595','�߼���ѯʦ','25');
INSERT INTO `qs_hotword` VALUES ('28596','ǰ�˿�������ʦ','119');
INSERT INTO `qs_hotword` VALUES ('28615','�߼����繤��ʦ','41');
INSERT INTO `qs_hotword` VALUES ('28616','����ˮ��ƹ���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('28617','ůͨ��ƹ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('28626','�����з�����','16');
INSERT INTO `qs_hotword` VALUES ('28638','԰���̻�����ʦ','22');
INSERT INTO `qs_hotword` VALUES ('28648','�������ʦ','18');
INSERT INTO `qs_hotword` VALUES ('28667','��Ϸ��ӪרԱ','14');
INSERT INTO `qs_hotword` VALUES ('28677','flash���ʦ','23');
INSERT INTO `qs_hotword` VALUES ('28719','���ز��߻�ʦ','32');
INSERT INTO `qs_hotword` VALUES ('28770','iphone����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('28772','��������Ա','12');
INSERT INTO `qs_hotword` VALUES ('28782','���ݴ�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('28788','��ҳ��������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('28817','ý�����','11');
INSERT INTO `qs_hotword` VALUES ('28833','��Ӫ�༭','29');
INSERT INTO `qs_hotword` VALUES ('28835','�ֻ��������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('28902','ҵ��չ����','74');
INSERT INTO `qs_hotword` VALUES ('28908','��������ܼ�','16');
INSERT INTO `qs_hotword` VALUES ('28927','������۾���','51');
INSERT INTO `qs_hotword` VALUES ('28952','��������ͷ�רԱ','12');
INSERT INTO `qs_hotword` VALUES ('28967','java�߼�����ʦ','77');
INSERT INTO `qs_hotword` VALUES ('28969','Accountant','53');
INSERT INTO `qs_hotword` VALUES ('28976','��ҳ��ƹ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('28989','Webǰ�˹���ʦ','53');
INSERT INTO `qs_hotword` VALUES ('28996','��������ʦ','25');
INSERT INTO `qs_hotword` VALUES ('29011','֤ȯͶ�ʹ���','10');
INSERT INTO `qs_hotword` VALUES ('29035','��ˮ������ʦ','24');
INSERT INTO `qs_hotword` VALUES ('29060','��׼������ʦ','59');
INSERT INTO `qs_hotword` VALUES ('29062','�������ʵϰ��','20');
INSERT INTO `qs_hotword` VALUES ('29064','��־�༭','28');
INSERT INTO `qs_hotword` VALUES ('29101','��ҳ�������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('29108','��ְ��Ŀ����','22');
INSERT INTO `qs_hotword` VALUES ('29117','QC����','35');
INSERT INTO `qs_hotword` VALUES ('29124','�ͷ����ܷǼ���','174');
INSERT INTO `qs_hotword` VALUES ('29132','��վά������ʦ','41');
INSERT INTO `qs_hotword` VALUES ('29146','�ֳ���ѯʦ','13');
INSERT INTO `qs_hotword` VALUES ('29161','�������ķ�����Ա','13');
INSERT INTO `qs_hotword` VALUES ('29169','�߼���Ա','31');
INSERT INTO `qs_hotword` VALUES ('29182','C#��������ʦ','37');
INSERT INTO `qs_hotword` VALUES ('29185','ͨ�ż�������ʦ','63');
INSERT INTO `qs_hotword` VALUES ('29216','�������ʦ.net','36');
INSERT INTO `qs_hotword` VALUES ('29217','�������ʦ','21');
INSERT INTO `qs_hotword` VALUES ('29221','���簲ȫ����ʦ','34');
INSERT INTO `qs_hotword` VALUES ('29243','OTC��������','79');
INSERT INTO `qs_hotword` VALUES ('29255','פ�����۴���','23');
INSERT INTO `qs_hotword` VALUES ('29257','FPGA����ʦ','29');
INSERT INTO `qs_hotword` VALUES ('29258','�ۺϻ��','20');
INSERT INTO `qs_hotword` VALUES ('29260','���ͱ༭','13');
INSERT INTO `qs_hotword` VALUES ('29275','�������ʦC++','14');
INSERT INTO `qs_hotword` VALUES ('29284','Delphi����Ա','23');
INSERT INTO `qs_hotword` VALUES ('29293','�г���������','36');
INSERT INTO `qs_hotword` VALUES ('29294','�������Ŀͷ�רԱ','32');
INSERT INTO `qs_hotword` VALUES ('29315','�ֳ����񹤳�ʦ','37');
INSERT INTO `qs_hotword` VALUES ('29324','��վ�༭����','13');
INSERT INTO `qs_hotword` VALUES ('29331','��ҵ�ز��߻�ʦ','11');
INSERT INTO `qs_hotword` VALUES ('29340','���۲�������','13');
INSERT INTO `qs_hotword` VALUES ('29360','�߼���Ƶ����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('29391','PHP�߼�����ʦ','36');
INSERT INTO `qs_hotword` VALUES ('29405','�����������','10');
INSERT INTO `qs_hotword` VALUES ('29416','��վ����','10');
INSERT INTO `qs_hotword` VALUES ('29417','����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('29425','ʱ������','20');
INSERT INTO `qs_hotword` VALUES ('29427','������Ŀ����','15');
INSERT INTO `qs_hotword` VALUES ('29435','��澭��','11');
INSERT INTO `qs_hotword` VALUES ('29464','�߼�ƽ�����ʦ','48');
INSERT INTO `qs_hotword` VALUES ('29465','�������Ŀͷ�����','14');
INSERT INTO `qs_hotword` VALUES ('29472','������Ա','20');
INSERT INTO `qs_hotword` VALUES ('29483','����������Ա','10');
INSERT INTO `qs_hotword` VALUES ('29501','����','24');
INSERT INTO `qs_hotword` VALUES ('29502','�ֻ�UI���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('29517','ϵͳ�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('29526','QA����','15');
INSERT INTO `qs_hotword` VALUES ('29537','��Ʒ����Ա','17');
INSERT INTO `qs_hotword` VALUES ('29565','��еά�޹���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('29566','�ٴ����Ա','13');
INSERT INTO `qs_hotword` VALUES ('29569','���ʵϰ��','10');
INSERT INTO `qs_hotword` VALUES ('29570','ʩ��ͼ����ʦ','19');
INSERT INTO `qs_hotword` VALUES ('29582','���ز����۴���','21');
INSERT INTO `qs_hotword` VALUES ('29590','���ز�������Ա','48');
INSERT INTO `qs_hotword` VALUES ('29606','Teller','12');
INSERT INTO `qs_hotword` VALUES ('29619','Ƕ��ʽӲ������ʦ','24');
INSERT INTO `qs_hotword` VALUES ('29622','��ͻ����۴���','18');
INSERT INTO `qs_hotword` VALUES ('29624','Python��������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('29625','Delphi�������ʦ','20');
INSERT INTO `qs_hotword` VALUES ('29629','������������ʦ','18');
INSERT INTO `qs_hotword` VALUES ('29631','��Դά�޹���ʦ','26');
INSERT INTO `qs_hotword` VALUES ('29632','Ӳ��ά�޹���ʦ','26');
INSERT INTO `qs_hotword` VALUES ('29641','ASP.NET����Ա','92');
INSERT INTO `qs_hotword` VALUES ('29643','��������','13');
INSERT INTO `qs_hotword` VALUES ('29657','ETL����ʦ','25');
INSERT INTO `qs_hotword` VALUES ('29669','������ҵ���۾���','12');
INSERT INTO `qs_hotword` VALUES ('29710','java�ܹ�ʦ','24');
INSERT INTO `qs_hotword` VALUES ('29728','�ͷ�����Ǽ���','136');
INSERT INTO `qs_hotword` VALUES ('29735','�Զ������Թ���ʦ','28');
INSERT INTO `qs_hotword` VALUES ('29738','���ز���������','110');
INSERT INTO `qs_hotword` VALUES ('29743','�赸��Ա','21');
INSERT INTO `qs_hotword` VALUES ('29762','��ȫרԱ','15');
INSERT INTO `qs_hotword` VALUES ('29763','�Ա��̳���Ӫ����','15');
INSERT INTO `qs_hotword` VALUES ('29768','��ѧ��ʦ','21');
INSERT INTO `qs_hotword` VALUES ('29857','ҩ�������Ŀ����','16');
INSERT INTO `qs_hotword` VALUES ('29873','����Ӫ����Ա','18');
INSERT INTO `qs_hotword` VALUES ('29875','��վӪ������','37');
INSERT INTO `qs_hotword` VALUES ('29886','��ѯʦ�γ̹���','19');
INSERT INTO `qs_hotword` VALUES ('29919','Ժ������','13');
INSERT INTO `qs_hotword` VALUES ('29922','��⹤��ʦ','22');
INSERT INTO `qs_hotword` VALUES ('29923','�����������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('29953','��ѧ��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('29955','iPhone��������ʦ','82');
INSERT INTO `qs_hotword` VALUES ('29956','delphi����ʦ','19');
INSERT INTO `qs_hotword` VALUES ('29986','���ﵣ��','11');
INSERT INTO `qs_hotword` VALUES ('29988','�߼��о�Ա','23');
INSERT INTO `qs_hotword` VALUES ('29996','VC�������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('30010','seo�Ż�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('30013','�ɱ�����Ա','46');
INSERT INTO `qs_hotword` VALUES ('30015','�ٴ��о�ԱCRA','10');
INSERT INTO `qs_hotword` VALUES ('30031','�������ʦ����','12');
INSERT INTO `qs_hotword` VALUES ('30032','Ӱ�ӱർ','18');
INSERT INTO `qs_hotword` VALUES ('30036','�ܲð츱����','11');
INSERT INTO `qs_hotword` VALUES ('30046','��װ����Ա','10');
INSERT INTO `qs_hotword` VALUES ('30107','��ҳ���ʦ����','15');
INSERT INTO `qs_hotword` VALUES ('30108','VC++�������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('30111','����רԱ','15');
INSERT INTO `qs_hotword` VALUES ('30113','����ƻ�Ա','11');
INSERT INTO `qs_hotword` VALUES ('30115','���β�Ʒ����','12');
INSERT INTO `qs_hotword` VALUES ('30134','ϵͳ������Ŀ����','42');
INSERT INTO `qs_hotword` VALUES ('30149','iOS��������ʦ','64');
INSERT INTO `qs_hotword` VALUES ('30152','����������Դ�ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('30154','�ۺϹ�������','36');
INSERT INTO `qs_hotword` VALUES ('30155','OTC���۾���','27');
INSERT INTO `qs_hotword` VALUES ('30156','IT��ά����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('30160','��ױ��ѵʦ','17');
INSERT INTO `qs_hotword` VALUES ('30165','�γ����۹���','63');
INSERT INTO `qs_hotword` VALUES ('30168','���������ʦ','18');
INSERT INTO `qs_hotword` VALUES ('30169','����Ӣ����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('30170','������ѧ��ʦ','18');
INSERT INTO `qs_hotword` VALUES ('30220','���ͻ�רԱ','15');
INSERT INTO `qs_hotword` VALUES ('30231','�Ű�Ա','10');
INSERT INTO `qs_hotword` VALUES ('30232','�г�����Ա','23');
INSERT INTO `qs_hotword` VALUES ('30240','��Ʒ��ƹ���ʦ','57');
INSERT INTO `qs_hotword` VALUES ('30258','�ֽṹ��ƹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('30268','��չ������','13');
INSERT INTO `qs_hotword` VALUES ('30272','����רԱ','37');
INSERT INTO `qs_hotword` VALUES ('30276','��ҵ�ͷ�����','23');
INSERT INTO `qs_hotword` VALUES ('30284','����������Ա','21');
INSERT INTO `qs_hotword` VALUES ('30293','��װԤ�㹤��ʦ','23');
INSERT INTO `qs_hotword` VALUES ('30298','���ݿ⿪������ʦ','80');
INSERT INTO `qs_hotword` VALUES ('30302','����֧��רԱ','38');
INSERT INTO `qs_hotword` VALUES ('30303','Java��Ŀ����','61');
INSERT INTO `qs_hotword` VALUES ('30304','���������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('30323','����ͳ��Ա','13');
INSERT INTO `qs_hotword` VALUES ('30340','���������Ľ�ʦ','38');
INSERT INTO `qs_hotword` VALUES ('30341','������Ӣ���ʦ','43');
INSERT INTO `qs_hotword` VALUES ('30342','�����л�ѧ��ʦ','36');
INSERT INTO `qs_hotword` VALUES ('30343','�����������ʦ','40');
INSERT INTO `qs_hotword` VALUES ('30344','��������ѧ��ʦ','20');
INSERT INTO `qs_hotword` VALUES ('30348','���������','30');
INSERT INTO `qs_hotword` VALUES ('30375','ԭ�����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('30384','�����ƹ���ʦ','23');
INSERT INTO `qs_hotword` VALUES ('30419','��Ч���˾���','15');
INSERT INTO `qs_hotword` VALUES ('30420','�г��о�רԱ','13');
INSERT INTO `qs_hotword` VALUES ('30430','ůͨ�յ�����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('30431','���ܹ���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('30435','��̳����Ա','53');
INSERT INTO `qs_hotword` VALUES ('30455','װ�乤�չ���ʦ','21');
INSERT INTO `qs_hotword` VALUES ('30460','������ϵ����ʦ','36');
INSERT INTO `qs_hotword` VALUES ('30461','IE�����ܲ�','10');
INSERT INTO `qs_hotword` VALUES ('30462','���ӹ��չ���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('30482','java��������','11');
INSERT INTO `qs_hotword` VALUES ('30489','��������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('30524','�ƽ�Ͷ�ʹ���','12');
INSERT INTO `qs_hotword` VALUES ('30530','��װ���ʦ','16');
INSERT INTO `qs_hotword` VALUES ('30578','������������','12');
INSERT INTO `qs_hotword` VALUES ('30583','��ϰ��ҵ����','12');
INSERT INTO `qs_hotword` VALUES ('30585','�߻�ִ��','26');
INSERT INTO `qs_hotword` VALUES ('30606','Ӫ����Ŀ����','18');
INSERT INTO `qs_hotword` VALUES ('30608','�����������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('30636','�ͷ��鳤','16');
INSERT INTO `qs_hotword` VALUES ('30637','��Ʒ�滮����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('30638','���湤��ʦ','22');
INSERT INTO `qs_hotword` VALUES ('30644','������ƹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('30648','��Ʒ����','45');
INSERT INTO `qs_hotword` VALUES ('30682','��������','10');
INSERT INTO `qs_hotword` VALUES ('30683','����ó�׾���','13');
INSERT INTO `qs_hotword` VALUES ('30688','CEO����','10');
INSERT INTO `qs_hotword` VALUES ('30689','�߼�������','15');
INSERT INTO `qs_hotword` VALUES ('30698','��Ʒ�з�����ʦ','28');
INSERT INTO `qs_hotword` VALUES ('30705','�в�������Ա','15');
INSERT INTO `qs_hotword` VALUES ('30719','н�ʸ�������','30');
INSERT INTO `qs_hotword` VALUES ('30724','����������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('30761','�鿱�����','23');
INSERT INTO `qs_hotword` VALUES ('30770','����ҽʦ','12');
INSERT INTO `qs_hotword` VALUES ('30777','SEO���������Ż�','21');
INSERT INTO `qs_hotword` VALUES ('30778','�߼�UI���ʦ','18');
INSERT INTO `qs_hotword` VALUES ('30791','�����ƹ�seo','11');
INSERT INTO `qs_hotword` VALUES ('30812','��Ϸԭ��ʦ','13');
INSERT INTO `qs_hotword` VALUES ('30819','���۴���ʵϰ��','10');
INSERT INTO `qs_hotword` VALUES ('30840','Flex����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('30844','������Ա','22');
INSERT INTO `qs_hotword` VALUES ('30882','�Զ������ƹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('30897','�м��������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('30908','��ɫԱ','10');
INSERT INTO `qs_hotword` VALUES ('30923','����Ա','11');
INSERT INTO `qs_hotword` VALUES ('30940','��Ϸ��Чʦ','13');
INSERT INTO `qs_hotword` VALUES ('30941','ִ�в߻�','44');
INSERT INTO `qs_hotword` VALUES ('30942','��Ϸ���Թ���ʦ','24');
INSERT INTO `qs_hotword` VALUES ('30947','��Ʒ������','43');
INSERT INTO `qs_hotword` VALUES ('30969','����ʵϰ��','16');
INSERT INTO `qs_hotword` VALUES ('30979','flash����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('30985','�ͻ���������','45');
INSERT INTO `qs_hotword` VALUES ('31001','���ز������ܼ�','16');
INSERT INTO `qs_hotword` VALUES ('31009','PHP�߼�����Ա','43');
INSERT INTO `qs_hotword` VALUES ('31025','н�긣������','10');
INSERT INTO `qs_hotword` VALUES ('31029','�ά��רԱ','14');
INSERT INTO `qs_hotword` VALUES ('31031','������Ŀ����','13');
INSERT INTO `qs_hotword` VALUES ('31036','������ҵ���۾���','10');
INSERT INTO `qs_hotword` VALUES ('31055','�������ɹ�רԱ','16');
INSERT INTO `qs_hotword` VALUES ('31056','���������¹���','16');
INSERT INTO `qs_hotword` VALUES ('31062','����ҽ��','13');
INSERT INTO `qs_hotword` VALUES ('31064','ҽѧ���鼼��Ա','10');
INSERT INTO `qs_hotword` VALUES ('31065','�ɹ�������','22');
INSERT INTO `qs_hotword` VALUES ('31070','������������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('31080','��Ϣ��������','15');
INSERT INTO `qs_hotword` VALUES ('31131','�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('31134','�ִ�������','15');
INSERT INTO `qs_hotword` VALUES ('31140','Cashier','53');
INSERT INTO `qs_hotword` VALUES ('31144','���ά������ʦ','18');
INSERT INTO `qs_hotword` VALUES ('31152','�г���','18');
INSERT INTO `qs_hotword` VALUES ('31157','�����ƹ�SEM','12');
INSERT INTO `qs_hotword` VALUES ('31158','ҽ����վ�ͷ���Ա','12');
INSERT INTO `qs_hotword` VALUES ('31159','��Ƶ����ʦ','46');
INSERT INTO `qs_hotword` VALUES ('31166','��վ�Ż�SEO','17');
INSERT INTO `qs_hotword` VALUES ('31167','��ҳ�߻�','12');
INSERT INTO `qs_hotword` VALUES ('31168','��վ���ֱ༭�İ�','10');
INSERT INTO `qs_hotword` VALUES ('31169','�����ƹ�����','12');
INSERT INTO `qs_hotword` VALUES ('31243','VIP�ͻ�����','34');
INSERT INTO `qs_hotword` VALUES ('31271','�����Զ�������ʦ','28');
INSERT INTO `qs_hotword` VALUES ('31286','�����Ӿ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('31287','��������Ʒ����','25');
INSERT INTO `qs_hotword` VALUES ('31291','��óҵ�����Ա','14');
INSERT INTO `qs_hotword` VALUES ('31334','ERP��������','18');
INSERT INTO `qs_hotword` VALUES ('31345','�߼����Թ���ʦ','62');
INSERT INTO `qs_hotword` VALUES ('31350','������óҵ��Ա','20');
INSERT INTO `qs_hotword` VALUES ('31377','Ƕ��ʽ��������ʦ','45');
INSERT INTO `qs_hotword` VALUES ('31415','�ܻ�����Ա','12');
INSERT INTO `qs_hotword` VALUES ('31443','���¡�����רԱ','14');
INSERT INTO `qs_hotword` VALUES ('31456','Ӳ����ƹ���ʦ','28');
INSERT INTO `qs_hotword` VALUES ('31487','��Ʒ�߻�רԱ','11');
INSERT INTO `qs_hotword` VALUES ('31491','����ͳ��','10');
INSERT INTO `qs_hotword` VALUES ('31498','400�ͷ�רԱ','12');
INSERT INTO `qs_hotword` VALUES ('31502','�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('31513','�˼�Ա','17');
INSERT INTO `qs_hotword` VALUES ('31519','��������������ϯ','16');
INSERT INTO `qs_hotword` VALUES ('31540','����רԱ','14');
INSERT INTO `qs_hotword` VALUES ('31541','�ؿ�רԱ','20');
INSERT INTO `qs_hotword` VALUES ('31545','�����ǰ����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('31551','PHP��Ŀ����','17');
INSERT INTO `qs_hotword` VALUES ('31562','�����ĵ�����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('31593','��վ���Թ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('31601','DBA���ݿ����Ա','12');
INSERT INTO `qs_hotword` VALUES ('31605','�ͷ�רԱ�Ǽ���','17');
INSERT INTO `qs_hotword` VALUES ('31610','������ƹ���ʦ','89');
INSERT INTO `qs_hotword` VALUES ('31611','�������ʵϰ��','10');
INSERT INTO `qs_hotword` VALUES ('31646','��ǰ����','10');
INSERT INTO `qs_hotword` VALUES ('31682','JAVAϵͳ�ܹ�ʦ','12');
INSERT INTO `qs_hotword` VALUES ('31706','������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('31725','EHS����','20');
INSERT INTO `qs_hotword` VALUES ('31732','����ά�޹���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('31759','��ϷUI���ʦ','39');
INSERT INTO `qs_hotword` VALUES ('31809','����ԱӦ����','12');
INSERT INTO `qs_hotword` VALUES ('31810','���͹�ϵ����','14');
INSERT INTO `qs_hotword` VALUES ('31835','���ʵʩ��Ŀ����','11');
INSERT INTO `qs_hotword` VALUES ('31852','�����������۴���','20');
INSERT INTO `qs_hotword` VALUES ('31853','���������ܼ�','56');
INSERT INTO `qs_hotword` VALUES ('31868','�г�����ʦ','23');
INSERT INTO `qs_hotword` VALUES ('31881','���ǽӴ�','10');
INSERT INTO `qs_hotword` VALUES ('31889','�����ܼ�','20');
INSERT INTO `qs_hotword` VALUES ('31892','���ݹ���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('31916','��ά���','16');
INSERT INTO `qs_hotword` VALUES ('31919','��װ��۹���ʦ','120');
INSERT INTO `qs_hotword` VALUES ('31940','web�������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('31956','��е�ṹ����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('31984','������Ա','15');
INSERT INTO `qs_hotword` VALUES ('31993','��Ʒ�߾���','10');
INSERT INTO `qs_hotword` VALUES ('31995','�߼��ṹ����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('32005','����Ա','12');
INSERT INTO `qs_hotword` VALUES ('32008','����������','16');
INSERT INTO `qs_hotword` VALUES ('32011','������ʷ��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('32051','פ������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('32053','��װ���','30');
INSERT INTO `qs_hotword` VALUES ('32077','��ǰ��������ʦ','52');
INSERT INTO `qs_hotword` VALUES ('32090','�������﷭��','12');
INSERT INTO `qs_hotword` VALUES ('32094','3D�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('32104','�ֻ���������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('32105','Ӫ������','37');
INSERT INTO `qs_hotword` VALUES ('32171','�鱦���ʦ','21');
INSERT INTO `qs_hotword` VALUES ('32183','�׶�Ӣ����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('32200','UI��ƹ���ʦ','42');
INSERT INTO `qs_hotword` VALUES ('32203','����ʦ','41');
INSERT INTO `qs_hotword` VALUES ('32208','���������ܼ�','18');
INSERT INTO `qs_hotword` VALUES ('32211','iPhone�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('32220','�������﷭��','15');
INSERT INTO `qs_hotword` VALUES ('32236','װ�ι�����Ŀ����','10');
INSERT INTO `qs_hotword` VALUES ('32244','������ѧ��ѯ����','13');
INSERT INTO `qs_hotword` VALUES ('32245','Ӣ����ѧ��ѯ����','10');
INSERT INTO `qs_hotword` VALUES ('32275','����Sales','10');
INSERT INTO `qs_hotword` VALUES ('32282','ũҵ����Ա','10');
INSERT INTO `qs_hotword` VALUES ('32332','��Ŀ����������','14');
INSERT INTO `qs_hotword` VALUES ('32339','װ����ƹ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('32343','�߼����ݿ⹤��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('32370','hadoop�з�����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('32397','�ͻ��˳���Ա','26');
INSERT INTO `qs_hotword` VALUES ('32410','����������ӪרԱ','13');
INSERT INTO `qs_hotword` VALUES ('32437','�м����Թ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('32440','��Ŀ������ʦ','41');
INSERT INTO `qs_hotword` VALUES ('32514','������Դ���ܼ�','12');
INSERT INTO `qs_hotword` VALUES ('32532','Ͷ���ʾ���','24');
INSERT INTO `qs_hotword` VALUES ('32545','�ؿ��߻�','14');
INSERT INTO `qs_hotword` VALUES ('32607','��۹���ʦ����','13');
INSERT INTO `qs_hotword` VALUES ('32614','���缼��Ա','21');
INSERT INTO `qs_hotword` VALUES ('32621','ҵ�����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('32643','IT����֧�ֹ���ʦ','22');
INSERT INTO `qs_hotword` VALUES ('32656','3D��ɫ���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('32672','�������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('32675','ERPʵʩ����ʦ','43');
INSERT INTO `qs_hotword` VALUES ('32677','ϵͳ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('32683','ϵͳ���Թ���ʦ','26');
INSERT INTO `qs_hotword` VALUES ('32714','��������','10');
INSERT INTO `qs_hotword` VALUES ('32733','��ѵ��','11');
INSERT INTO `qs_hotword` VALUES ('32753','J2EE��������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('32778','԰�־������ʦ','40');
INSERT INTO `qs_hotword` VALUES ('32804','������ƹ���ʦ','27');
INSERT INTO `qs_hotword` VALUES ('32811','����Ԥ�㹤��ʦ','43');
INSERT INTO `qs_hotword` VALUES ('32816','J2ME��������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('32830','�Ա���Ӫ����','20');
INSERT INTO `qs_hotword` VALUES ('32853','ʡ���ŵ��ܾ���','20');
INSERT INTO `qs_hotword` VALUES ('32891','�ص�ͻ�����','11');
INSERT INTO `qs_hotword` VALUES ('32896','���̼���������','18');
INSERT INTO `qs_hotword` VALUES ('32913','DSP����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('32915','C#�߼��������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('32925','����֧������','41');
INSERT INTO `qs_hotword` VALUES ('32948','ר���ױʦ','15');
INSERT INTO `qs_hotword` VALUES ('32963','�г�Ӫ��������','25');
INSERT INTO `qs_hotword` VALUES ('32995','UI�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('33015','�ͷ����','24');
INSERT INTO `qs_hotword` VALUES ('33026','�����Ʒ����','16');
INSERT INTO `qs_hotword` VALUES ('33029','ϵͳ��������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('33032','�ɱ�������','14');
INSERT INTO `qs_hotword` VALUES ('33041','��Ʒ�з�','12');
INSERT INTO `qs_hotword` VALUES ('33043','רҵ���繤��ʦ','13');
INSERT INTO `qs_hotword` VALUES ('33061','���Կ�������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('33086','��Ʒ��������ʦ','54');
INSERT INTO `qs_hotword` VALUES ('33096','����ͨ�Ź���ʦ','20');
INSERT INTO `qs_hotword` VALUES ('33101','����ͨ�Ź���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('33222','ҽѧ����','24');
INSERT INTO `qs_hotword` VALUES ('33242','��Ŀ��������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('33244','Flash����Ա','42');
INSERT INTO `qs_hotword` VALUES ('33277','���רԱ','12');
INSERT INTO `qs_hotword` VALUES ('33297','���ܽ�ͨ��Ŀ����','21');
INSERT INTO `qs_hotword` VALUES ('33298','�г���������','10');
INSERT INTO `qs_hotword` VALUES ('33306','��Ϸ��ֵ�߻�','32');
INSERT INTO `qs_hotword` VALUES ('33379','רְ��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('33384','�滮����ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('33389','��Ͷ������','15');
INSERT INTO `qs_hotword` VALUES ('33399','�������չ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('33411','��Ʒ����Ѻ���Ա','66');
INSERT INTO `qs_hotword` VALUES ('33417','�Ա�����','11');
INSERT INTO `qs_hotword` VALUES ('33433','JAVA������Ա','30');
INSERT INTO `qs_hotword` VALUES ('33472','�ۺ�����','16');
INSERT INTO `qs_hotword` VALUES ('33478','�����ܼ�','18');
INSERT INTO `qs_hotword` VALUES ('33489','������','18');
INSERT INTO `qs_hotword` VALUES ('33508','�Ҿ����','10');
INSERT INTO `qs_hotword` VALUES ('33534','ǰ��������','30');
INSERT INTO `qs_hotword` VALUES ('33551','ҵ���ܾ���','17');
INSERT INTO `qs_hotword` VALUES ('33564','����װ�����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('33569','��������','19');
INSERT INTO `qs_hotword` VALUES ('33575','Net�������ʦ','24');
INSERT INTO `qs_hotword` VALUES ('33590','��������','27');
INSERT INTO `qs_hotword` VALUES ('33600','��ҵ��ͻ�����','18');
INSERT INTO `qs_hotword` VALUES ('33608','����߼�����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('33660','ҵ����','28');
INSERT INTO `qs_hotword` VALUES ('33663','�����Ӵ�','12');
INSERT INTO `qs_hotword` VALUES ('33700','�����������','64');
INSERT INTO `qs_hotword` VALUES ('33720','�г���չ������','23');
INSERT INTO `qs_hotword` VALUES ('33721','��ͬ����רԱ','15');
INSERT INTO `qs_hotword` VALUES ('33822','��֯���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('33869','���ʦ','26');
INSERT INTO `qs_hotword` VALUES ('33965','������ѯʦ','18');
INSERT INTO `qs_hotword` VALUES ('33978','�߼�ҵ�����','28');
INSERT INTO `qs_hotword` VALUES ('33994','������Դ�߼�����','11');
INSERT INTO `qs_hotword` VALUES ('34036','��װ�������','49');
INSERT INTO `qs_hotword` VALUES ('34065','�������ʦʵϰ��','12');
INSERT INTO `qs_hotword` VALUES ('34102','�ͻ����񲿾���','19');
INSERT INTO `qs_hotword` VALUES ('34145','��ά�������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('34185','����Ա','24');
INSERT INTO `qs_hotword` VALUES ('34191','�ֿ⾭��','35');
INSERT INTO `qs_hotword` VALUES ('34202','���ز���������','10');
INSERT INTO `qs_hotword` VALUES ('34203','���ز���ҵ����','20');
INSERT INTO `qs_hotword` VALUES ('34205','����������Ա','11');
INSERT INTO `qs_hotword` VALUES ('34344','ʩ������','10');
INSERT INTO `qs_hotword` VALUES ('34354','��ҵ������','23');
INSERT INTO `qs_hotword` VALUES ('34361','�����ܾ�������','22');
INSERT INTO `qs_hotword` VALUES ('34379','����ӪҵԱ','19');
INSERT INTO `qs_hotword` VALUES ('34383','��Ӫ����','11');
INSERT INTO `qs_hotword` VALUES ('34395','���UI���ʦ','19');
INSERT INTO `qs_hotword` VALUES ('34475','php������Ա','10');
INSERT INTO `qs_hotword` VALUES ('34484','��Ϸ�߻�ʦ','15');
INSERT INTO `qs_hotword` VALUES ('34564','Ӣ����վ�༭','16');
INSERT INTO `qs_hotword` VALUES ('34609','ҩƷע��רԱ','10');
INSERT INTO `qs_hotword` VALUES ('34622','Ӫ������','11');
INSERT INTO `qs_hotword` VALUES ('34656','��Դ�з�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('34657','Ƕ��ʽ�з�����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('34671','WEBǰ�˿���','13');
INSERT INTO `qs_hotword` VALUES ('34685','��ҵ���ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('34697','�ֹ�˾��������','19');
INSERT INTO `qs_hotword` VALUES ('34719','��Ʒ�������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('34743','�����꾭��','21');
INSERT INTO `qs_hotword` VALUES ('34744','��ѧ��������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('34769','�ⷿ����','29');
INSERT INTO `qs_hotword` VALUES ('34778','�̻�ά��רԱ','12');
INSERT INTO `qs_hotword` VALUES ('34903','��Чʦ','16');
INSERT INTO `qs_hotword` VALUES ('34908','������������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('34943','��������','14');
INSERT INTO `qs_hotword` VALUES ('34953','linux��������ʦ','18');
INSERT INTO `qs_hotword` VALUES ('34964','����ά��','13');
INSERT INTO `qs_hotword` VALUES ('34995','��ͨ����','10');
INSERT INTO `qs_hotword` VALUES ('35013','¥�����','10');
INSERT INTO `qs_hotword` VALUES ('35015','¥�����','20');
INSERT INTO `qs_hotword` VALUES ('35050','ҽ���豸���۴���','11');
INSERT INTO `qs_hotword` VALUES ('35097','����רԱ','13');
INSERT INTO `qs_hotword` VALUES ('35102','���򿪷�����ʦ','28');
INSERT INTO `qs_hotword` VALUES ('35121','�������չ���ʦ','34');
INSERT INTO `qs_hotword` VALUES ('35156','����ҵ�����','18');
INSERT INTO `qs_hotword` VALUES ('35162','�г�����Ա','11');
INSERT INTO `qs_hotword` VALUES ('35180','ģ����ƹ���ʦ','37');
INSERT INTO `qs_hotword` VALUES ('35241','�߼����չ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('35263','����Ӫ������','25');
INSERT INTO `qs_hotword` VALUES ('35270','����������Ա','10');
INSERT INTO `qs_hotword` VALUES ('35276','�ն���ѵ��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('35287','��ѧ�������ɲ�','12');
INSERT INTO `qs_hotword` VALUES ('35306','���̾���','12');
INSERT INTO `qs_hotword` VALUES ('35331','�����з��ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('35360','Asp.net����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('35362','��վ�ܹ����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('35370','��Ӧ�̹���','13');
INSERT INTO `qs_hotword` VALUES ('35396','������Ӫ����','15');
INSERT INTO `qs_hotword` VALUES ('35415','J2EE�߼�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('35424','����������','18');
INSERT INTO `qs_hotword` VALUES ('35458','ҽ����е����֧��','10');
INSERT INTO `qs_hotword` VALUES ('35476','��Լ������','17');
INSERT INTO `qs_hotword` VALUES ('35489','����UI���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('35504','�ʲ�����Ա','16');
INSERT INTO `qs_hotword` VALUES ('35523','�ֳ�����','13');
INSERT INTO `qs_hotword` VALUES ('35541','�ӹ����Ĳ�����','15');
INSERT INTO `qs_hotword` VALUES ('35548','��ά����ģ��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('35651','������ӪרԱ','24');
INSERT INTO `qs_hotword` VALUES ('35657','������ƹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('35662','��Ϸԭ�����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('35761','��������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('35813','��������','26');
INSERT INTO `qs_hotword` VALUES ('35816','¥�㾭��','27');
INSERT INTO `qs_hotword` VALUES ('35817','���ܾ���','22');
INSERT INTO `qs_hotword` VALUES ('35853','ֱ������','20');
INSERT INTO `qs_hotword` VALUES ('35875','�������Թ���ʦ','19');
INSERT INTO `qs_hotword` VALUES ('35898','����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('35990','CNC����Ա','10');
INSERT INTO `qs_hotword` VALUES ('36025','�������Ա','10');
INSERT INTO `qs_hotword` VALUES ('36031','��ý�����','11');
INSERT INTO `qs_hotword` VALUES ('36047','ϸ����������Ա','22');
INSERT INTO `qs_hotword` VALUES ('36054','GIS���ݹ���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('36077','�������۹���ʦ','19');
INSERT INTO `qs_hotword` VALUES ('36082','��ó��֤','13');
INSERT INTO `qs_hotword` VALUES ('36107','�Զ����ƹ���ʦ','19');
INSERT INTO `qs_hotword` VALUES ('36128','¥�����','13');
INSERT INTO `qs_hotword` VALUES ('36135','���ϲɹ�Ա','13');
INSERT INTO `qs_hotword` VALUES ('36154','װ����Ŀ����','15');
INSERT INTO `qs_hotword` VALUES ('36184','�����������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('36197','����Ӫҵ����','10');
INSERT INTO `qs_hotword` VALUES ('36203','��װ����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('36205','MERCHANDISER','16');
INSERT INTO `qs_hotword` VALUES ('36267','����ʵϰ��','38');
INSERT INTO `qs_hotword` VALUES ('36269','������Ա','25');
INSERT INTO `qs_hotword` VALUES ('36311','��������','18');
INSERT INTO `qs_hotword` VALUES ('36373','Ӳ��ά������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('36420','�߼����۹���ʦ','92');
INSERT INTO `qs_hotword` VALUES ('36471','Ʒ��','10');
INSERT INTO `qs_hotword` VALUES ('36475','����ͷ�','17');
INSERT INTO `qs_hotword` VALUES ('36507','�л��ϳ��о�Ա','19');
INSERT INTO `qs_hotword` VALUES ('36517','ע����۹���ʦ','18');
INSERT INTO `qs_hotword` VALUES ('36548','������','12');
INSERT INTO `qs_hotword` VALUES ('36568','ƽ�����-��ְ','24');
INSERT INTO `qs_hotword` VALUES ('36578','�г���������','21');
INSERT INTO `qs_hotword` VALUES ('36583','����QC','11');
INSERT INTO `qs_hotword` VALUES ('36602','�Ա��̳ǵ곤','23');
INSERT INTO `qs_hotword` VALUES ('36661','���۹�����ѵ��','14');
INSERT INTO `qs_hotword` VALUES ('36664','�߼��������۾���','23');
INSERT INTO `qs_hotword` VALUES ('36665','�豸ά�޼���Ա','10');
INSERT INTO `qs_hotword` VALUES ('36676','���׹���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('36677','������ƹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('36682','��װ�繤','10');
INSERT INTO `qs_hotword` VALUES ('36726','��������','10');
INSERT INTO `qs_hotword` VALUES ('36728','����������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('36772','���������۹���ʦ','24');
INSERT INTO `qs_hotword` VALUES ('36796','ϳ����','12');
INSERT INTO `qs_hotword` VALUES ('36852','��Ӧ����������ʦ','37');
INSERT INTO `qs_hotword` VALUES ('36871','��ó�ɹ�Ա','12');
INSERT INTO `qs_hotword` VALUES ('36893','�������','20');
INSERT INTO `qs_hotword` VALUES ('36916','�ֳ�Ʒ��','30');
INSERT INTO `qs_hotword` VALUES ('36926','��Ϸ����','35');
INSERT INTO `qs_hotword` VALUES ('36928','AS3.0����Ա','24');
INSERT INTO `qs_hotword` VALUES ('36934','�������۹���ʦ','36');
INSERT INTO `qs_hotword` VALUES ('36945','FPGA��������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('36993','�����з�����ʦ','26');
INSERT INTO `qs_hotword` VALUES ('36999','������۹���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('37004','��ҵά����Ա','36');
INSERT INTO `qs_hotword` VALUES ('37061','��ҵ�ռ����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('37109','Ӫ���߻�������','33');
INSERT INTO `qs_hotword` VALUES ('37128','���۷������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('37129','����ʩ��ͼ���ʦ','21');
INSERT INTO `qs_hotword` VALUES ('37192','�������ʦ','37');
INSERT INTO `qs_hotword` VALUES ('37193','ˮ�ù���ʦ','25');
INSERT INTO `qs_hotword` VALUES ('37194','����ģ�߹���ʦ','24');
INSERT INTO `qs_hotword` VALUES ('37195','ˮ�ü���Ա','25');
INSERT INTO `qs_hotword` VALUES ('37196','�г��ƹ�����','41');
INSERT INTO `qs_hotword` VALUES ('37197','���б���','24');
INSERT INTO `qs_hotword` VALUES ('37218','����Ԥ����Ա','15');
INSERT INTO `qs_hotword` VALUES ('37226','����ҵ��','10');
INSERT INTO `qs_hotword` VALUES ('37228','������Ա','12');
INSERT INTO `qs_hotword` VALUES ('37229','�ܵ���','13');
INSERT INTO `qs_hotword` VALUES ('37238','���۴����Ϻ�','10');
INSERT INTO `qs_hotword` VALUES ('37258','��������','11');
INSERT INTO `qs_hotword` VALUES ('37290','���������ƹ�רԱ','10');
INSERT INTO `qs_hotword` VALUES ('37302','���������Ŀ����','26');
INSERT INTO `qs_hotword` VALUES ('37484','�ӹ����Ĳ���Ա','12');
INSERT INTO `qs_hotword` VALUES ('37510','KAҵ��Ա','23');
INSERT INTO `qs_hotword` VALUES ('37530','ҵ���������','61');
INSERT INTO `qs_hotword` VALUES ('37598','ƽ�����ʦ����','11');
INSERT INTO `qs_hotword` VALUES ('37610','��ҵ��������','25');
INSERT INTO `qs_hotword` VALUES ('37625','��Ʒ���۹���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('37640','�ɱ��ܼ�','12');
INSERT INTO `qs_hotword` VALUES ('37651','����γ̹���','31');
INSERT INTO `qs_hotword` VALUES ('37656','���������۴���','11');
INSERT INTO `qs_hotword` VALUES ('37668','��װ���ʦ����','18');
INSERT INTO `qs_hotword` VALUES ('37672','Ӫ������ʦ','44');
INSERT INTO `qs_hotword` VALUES ('37691','����רԱ','12');
INSERT INTO `qs_hotword` VALUES ('37739','�ɹ�����Ա','18');
INSERT INTO `qs_hotword` VALUES ('37740','��ҵ��˾�ܾ���','48');
INSERT INTO `qs_hotword` VALUES ('37775','�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('37790','н�ʸ���רԱ','27');
INSERT INTO `qs_hotword` VALUES ('37797','԰�־��۹���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('37818','�Ǵ���ҩҽԺ����','15');
INSERT INTO `qs_hotword` VALUES ('37865','�ֻ�ά�޹���ʦ','24');
INSERT INTO `qs_hotword` VALUES ('37894','��������','16');
INSERT INTO `qs_hotword` VALUES ('37908','��Ʒ����Ա','10');
INSERT INTO `qs_hotword` VALUES ('37934','SQE','28');
INSERT INTO `qs_hotword` VALUES ('37989','���Ÿ��ܲ�','10');
INSERT INTO `qs_hotword` VALUES ('38035','��е��ͼԱ','35');
INSERT INTO `qs_hotword` VALUES ('38038','Ʒ������','14');
INSERT INTO `qs_hotword` VALUES ('38039','������Ŀ����','11');
INSERT INTO `qs_hotword` VALUES ('38089','���ز����۹���','14');
INSERT INTO `qs_hotword` VALUES ('38104','��������','12');
INSERT INTO `qs_hotword` VALUES ('38128','Linux�������ʦ','20');
INSERT INTO `qs_hotword` VALUES ('38139','����ͻ�����','27');
INSERT INTO `qs_hotword` VALUES ('38140','COBOL�������ʦ','19');
INSERT INTO `qs_hotword` VALUES ('38197','ר�ó���е���ʦ','25');
INSERT INTO `qs_hotword` VALUES ('38231','�����з�����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('38271','�������۹���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('38299','�����༭','14');
INSERT INTO `qs_hotword` VALUES ('38337','��˼��ʦ','25');
INSERT INTO `qs_hotword` VALUES ('38365','CEO����','11');
INSERT INTO `qs_hotword` VALUES ('38373','����ҵ��Ա','10');
INSERT INTO `qs_hotword` VALUES ('38387','�ۺϰ칫������','38');
INSERT INTO `qs_hotword` VALUES ('38418','�г�����������','18');
INSERT INTO `qs_hotword` VALUES ('38419','�������Ͽ���','24');
INSERT INTO `qs_hotword` VALUES ('38420','ҵ��רԱ��ҵͨѶ','24');
INSERT INTO `qs_hotword` VALUES ('38421','��������ʦ����','25');
INSERT INTO `qs_hotword` VALUES ('38422','��Ʒ����Ԥ����','24');
INSERT INTO `qs_hotword` VALUES ('38472','Ӫ����','13');
INSERT INTO `qs_hotword` VALUES ('38474','���л�ѧ��ʦ','17');
INSERT INTO `qs_hotword` VALUES ('38511','Ͷ�ʷ���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('38528','��������Ա','12');
INSERT INTO `qs_hotword` VALUES ('38530','Ӧ���˿���','11');
INSERT INTO `qs_hotword` VALUES ('38533','����������','10');
INSERT INTO `qs_hotword` VALUES ('38539','2012��Ӧ����','14');
INSERT INTO `qs_hotword` VALUES ('38540','���������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('38563','���ۼ�������ʦ','23');
INSERT INTO `qs_hotword` VALUES ('38612','ע�ܹ���Ա','13');
INSERT INTO `qs_hotword` VALUES ('38622','���Ӽ���Ա','29');
INSERT INTO `qs_hotword` VALUES ('38632','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('38638','��Ϸ�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('38700','�ݳ�Ʒ����','14');
INSERT INTO `qs_hotword` VALUES ('38719','���Ͽ�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('38736','ҽҩ����רԱ','11');
INSERT INTO `qs_hotword` VALUES ('38742','�����������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('38767','��˾ǰ̨','16');
INSERT INTO `qs_hotword` VALUES ('38804','Ͷ��������ѯ����','16');
INSERT INTO `qs_hotword` VALUES ('38833','��ѹ����ƹ���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('38854','�豸������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('38940','����ͻ�����','23');
INSERT INTO `qs_hotword` VALUES ('38968','װ��װ�޹���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('38979','��������','16');
INSERT INTO `qs_hotword` VALUES ('39060','Accountant���','18');
INSERT INTO `qs_hotword` VALUES ('39070','�ֹ�˾���ܾ���','31');
INSERT INTO `qs_hotword` VALUES ('39091','ǰ�����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('39122','�����������','38');
INSERT INTO `qs_hotword` VALUES ('39126','ҵ���������','12');
INSERT INTO `qs_hotword` VALUES ('39161','Ӣ������','10');
INSERT INTO `qs_hotword` VALUES ('39186','����4S���ܾ���','12');
INSERT INTO `qs_hotword` VALUES ('39201','�����������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('39293','�豸ά�޹���ʦ','34');
INSERT INTO `qs_hotword` VALUES ('39300','��������ԱQC','10');
INSERT INTO `qs_hotword` VALUES ('39313','����ԱSALES','27');
INSERT INTO `qs_hotword` VALUES ('39366','�߼�����ָ��','22');
INSERT INTO `qs_hotword` VALUES ('39376','ϵͳʵʩ����ʦ','24');
INSERT INTO `qs_hotword` VALUES ('39430','�������²�����','36');
INSERT INTO `qs_hotword` VALUES ('39462','��������������','12');
INSERT INTO `qs_hotword` VALUES ('39476','��������','25');
INSERT INTO `qs_hotword` VALUES ('39478','��ҳ��������','25');
INSERT INTO `qs_hotword` VALUES ('39479','SPƽ̨��Ӫ����','24');
INSERT INTO `qs_hotword` VALUES ('39480','�����й�','24');
INSERT INTO `qs_hotword` VALUES ('39513','����Ա','29');
INSERT INTO `qs_hotword` VALUES ('39519','��ѧ����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('39665','����ά����Ա','17');
INSERT INTO `qs_hotword` VALUES ('39684','���̲�������','51');
INSERT INTO `qs_hotword` VALUES ('39748','�̱����̹���Ա','24');
INSERT INTO `qs_hotword` VALUES ('39765','�淿����','11');
INSERT INTO `qs_hotword` VALUES ('39836','Ϳװ���չ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('39842','������Ա��ǰ̨','10');
INSERT INTO `qs_hotword` VALUES ('39852','NET�߼�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('39904','ע�ܹ��չ���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('39932','��������','18');
INSERT INTO `qs_hotword` VALUES ('39947','��ϵרԱ','19');
INSERT INTO `qs_hotword` VALUES ('40025','���ͻ�Ա','12');
INSERT INTO `qs_hotword` VALUES ('40046','������Ӣ����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('40176','�񶯲���רԱ','24');
INSERT INTO `qs_hotword` VALUES ('40185','�г�����','24');
INSERT INTO `qs_hotword` VALUES ('40186','��Ŀ��������','12');
INSERT INTO `qs_hotword` VALUES ('40203','�߼�����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('40255','Ʒ������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('40256','���ݻ�ױ����','24');
INSERT INTO `qs_hotword` VALUES ('40285','��װ����QC','10');
INSERT INTO `qs_hotword` VALUES ('40374','�г��ͷ�','12');
INSERT INTO `qs_hotword` VALUES ('40489','���˶���','14');
INSERT INTO `qs_hotword` VALUES ('40498','B2B��ҵӪ���ܼ�','21');
INSERT INTO `qs_hotword` VALUES ('40539','��������','14');
INSERT INTO `qs_hotword` VALUES ('40549','������������','15');
INSERT INTO `qs_hotword` VALUES ('40561','���߼��������','12');
INSERT INTO `qs_hotword` VALUES ('40586','��������ѧ��ʦ','16');
INSERT INTO `qs_hotword` VALUES ('40595','�ŵ굼��','10');
INSERT INTO `qs_hotword` VALUES ('40651','��������רԱ','12');
INSERT INTO `qs_hotword` VALUES ('40688','���鹤��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('40747','������������','14');
INSERT INTO `qs_hotword` VALUES ('40756','��������Ա','10');
INSERT INTO `qs_hotword` VALUES ('40769','�߼��������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('40795','��ҵ��ƹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('40814','��Ʒ��������','52');
INSERT INTO `qs_hotword` VALUES ('40815','��������','56');
INSERT INTO `qs_hotword` VALUES ('40816','����ӪҵԱ','68');
INSERT INTO `qs_hotword` VALUES ('40817','����ͷ�����','54');
INSERT INTO `qs_hotword` VALUES ('40818','�̳��ƹ�����','48');
INSERT INTO `qs_hotword` VALUES ('40837','�߼����ӹ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('40854','��ѧ��ƹ���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('40881','����ά������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('40893','JAVA���Թ���ʦ','22');
INSERT INTO `qs_hotword` VALUES ('40898','���۹���ʦ������','10');
INSERT INTO `qs_hotword` VALUES ('40931','����������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('40939','��վ�Ż�����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('40960','��Ĥ����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('40971','���湤��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('41022','LED���۹���ʦ','34');
INSERT INTO `qs_hotword` VALUES ('41088','���۹���ʦ�Զ���','12');
INSERT INTO `qs_hotword` VALUES ('41089','���۹���ʦ����','14');
INSERT INTO `qs_hotword` VALUES ('41096','����ҵ��Ա','25');
INSERT INTO `qs_hotword` VALUES ('41097','����������Ա','12');
INSERT INTO `qs_hotword` VALUES ('41105','����ҵ��Ա','10');
INSERT INTO `qs_hotword` VALUES ('41109','��Ʒ���չ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('41110','��������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('41135','����ó�ײ�����','12');
INSERT INTO `qs_hotword` VALUES ('41175','�����Ӿ�����','25');
INSERT INTO `qs_hotword` VALUES ('41177','��������ԱLQC','25');
INSERT INTO `qs_hotword` VALUES ('41181','���Ӳ�Ʒ����ʦPE','25');
INSERT INTO `qs_hotword` VALUES ('41183','������Operator','26');
INSERT INTO `qs_hotword` VALUES ('41184','�����ĵ�����','25');
INSERT INTO `qs_hotword` VALUES ('41234','FPGA��ƹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('41263','����','13');
INSERT INTO `qs_hotword` VALUES ('41283','���ֳ�רԱ','14');
INSERT INTO `qs_hotword` VALUES ('41335','�������չ���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('41339','���տ���','10');
INSERT INTO `qs_hotword` VALUES ('41347','��װ��ƹ���ʦ','36');
INSERT INTO `qs_hotword` VALUES ('41419','SMT����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('41554','Purchaser','24');
INSERT INTO `qs_hotword` VALUES ('41647','ע�������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('41679','�������ʦ','72');
INSERT INTO `qs_hotword` VALUES ('41723','���幤','32');
INSERT INTO `qs_hotword` VALUES ('41734','�г��߻�����','26');
INSERT INTO `qs_hotword` VALUES ('41743','�豸ά��Ա','28');
INSERT INTO `qs_hotword` VALUES ('41758','���ӹ��չ���ʦ','13');
INSERT INTO `qs_hotword` VALUES ('41771','����ϸ�֤��ʦ','26');
INSERT INTO `qs_hotword` VALUES ('41773','ͼ��༭-����','24');
INSERT INTO `qs_hotword` VALUES ('41791','FLEX����Ա','12');
INSERT INTO `qs_hotword` VALUES ('41863','ԭ��ʦ','17');
INSERT INTO `qs_hotword` VALUES ('41883','ƽ�������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('41950','Ӧ���������ʦ','31');
INSERT INTO `qs_hotword` VALUES ('42070','���⡢�����ҽʦ','24');
INSERT INTO `qs_hotword` VALUES ('42071','����ά�޼���Ա','28');
INSERT INTO `qs_hotword` VALUES ('42072','�̻�������','28');
INSERT INTO `qs_hotword` VALUES ('42081','���ӹ����չ���ʦ','18');
INSERT INTO `qs_hotword` VALUES ('42096','��Ϣ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('42101','��˾�ܾ���','15');
INSERT INTO `qs_hotword` VALUES ('42105','��ƷӦ�ù���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('42144','linux��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('42182','��еά�޼���Ա','12');
INSERT INTO `qs_hotword` VALUES ('42188','����ͳ��רԱ','24');
INSERT INTO `qs_hotword` VALUES ('42189','�����װ���ʦ','31');
INSERT INTO `qs_hotword` VALUES ('42190','��������רԱ','24');
INSERT INTO `qs_hotword` VALUES ('42191','����������','25');
INSERT INTO `qs_hotword` VALUES ('42192','ֱӪ��������','24');
INSERT INTO `qs_hotword` VALUES ('42193','�����ŵ궽��','24');
INSERT INTO `qs_hotword` VALUES ('42194','����ƽ���������','24');
INSERT INTO `qs_hotword` VALUES ('42195','�г���������','27');
INSERT INTO `qs_hotword` VALUES ('42196','�г��߻��ܼ�','11');
INSERT INTO `qs_hotword` VALUES ('42266','��Ƽ���ԱSetter','24');
INSERT INTO `qs_hotword` VALUES ('42299','�������ɹ���Ա','32');
INSERT INTO `qs_hotword` VALUES ('42318','�����˲�','15');
INSERT INTO `qs_hotword` VALUES ('42366','�г�ý�幫��רԱ','24');
INSERT INTO `qs_hotword` VALUES ('42367','���ÿյ�ҵ��Ա','24');
INSERT INTO `qs_hotword` VALUES ('42368','�ۺ������ϢԱ','25');
INSERT INTO `qs_hotword` VALUES ('42369','���ÿյ�����Ա','24');
INSERT INTO `qs_hotword` VALUES ('42431','�ɱ��������','14');
INSERT INTO `qs_hotword` VALUES ('42457','������ƹ���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('42525','����ϳ��','12');
INSERT INTO `qs_hotword` VALUES ('42538','ֱ��Ա','14');
INSERT INTO `qs_hotword` VALUES ('42577','���۹�������','11');
INSERT INTO `qs_hotword` VALUES ('42607','�������','11');
INSERT INTO `qs_hotword` VALUES ('42696','�����ƽ�Intern','24');
INSERT INTO `qs_hotword` VALUES ('42697','ȫ���߼��ͻ�����','24');
INSERT INTO `qs_hotword` VALUES ('42726','�����ܲ�˰������','24');
INSERT INTO `qs_hotword` VALUES ('42727','���⼼��Ա','25');
INSERT INTO `qs_hotword` VALUES ('42728','������Ա','24');
INSERT INTO `qs_hotword` VALUES ('42729','�������Ա','27');
INSERT INTO `qs_hotword` VALUES ('42730','��ѹ���̲��γ�','24');
INSERT INTO `qs_hotword` VALUES ('42915','�г���ʵϰ��','13');
INSERT INTO `qs_hotword` VALUES ('42958','��װ��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('43095','�ۺ�ά�޹���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('43265','�ͻ������ն˲�','21');
INSERT INTO `qs_hotword` VALUES ('43310','��У��','38');
INSERT INTO `qs_hotword` VALUES ('43406','������Դ������','16');
INSERT INTO `qs_hotword` VALUES ('43425','�����ά������ʦ','21');
INSERT INTO `qs_hotword` VALUES ('43429','���缼��','10');
INSERT INTO `qs_hotword` VALUES ('43431','���ֳ����۹���','15');
INSERT INTO `qs_hotword` VALUES ('43433','�����������','10');
INSERT INTO `qs_hotword` VALUES ('43450','J2EE�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('43472','�Ź��ͻ�����','11');
INSERT INTO `qs_hotword` VALUES ('43480','�巿����','12');
INSERT INTO `qs_hotword` VALUES ('43526','QCרԱ','11');
INSERT INTO `qs_hotword` VALUES ('43548','�տ�רԱ','16');
INSERT INTO `qs_hotword` VALUES ('43688','���첿����','15');
INSERT INTO `qs_hotword` VALUES ('43734','�����չ�','17');
INSERT INTO `qs_hotword` VALUES ('43795','�ֳ�Ʒ��','13');
INSERT INTO `qs_hotword` VALUES ('43813','�з�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('43832','��ҵ�ͻ�����','15');
INSERT INTO `qs_hotword` VALUES ('43841','UI��ƹ���','10');
INSERT INTO `qs_hotword` VALUES ('43849','��ƱרԱ','48');
INSERT INTO `qs_hotword` VALUES ('43850','�ֿ��ʼ�Ա','50');
INSERT INTO `qs_hotword` VALUES ('43883','����Ա','46');
INSERT INTO `qs_hotword` VALUES ('43992','�����̳�����','21');
INSERT INTO `qs_hotword` VALUES ('44104','�ִ�����','13');
INSERT INTO `qs_hotword` VALUES ('44123','������ƹ���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('44225','QE����ʦ','34');
INSERT INTO `qs_hotword` VALUES ('44361','Apple��Ʒ������','12');
INSERT INTO `qs_hotword` VALUES ('44366','�г�����Ŀ����','10');
INSERT INTO `qs_hotword` VALUES ('44396','ǰ�ڿ���רԱ','10');
INSERT INTO `qs_hotword` VALUES ('44411','���۹���ʦ���','12');
INSERT INTO `qs_hotword` VALUES ('44413','���缼������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('44425','�г�����Ա','24');
INSERT INTO `qs_hotword` VALUES ('44452','PB��������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('44504','����ҵ��Ա','13');
INSERT INTO `qs_hotword` VALUES ('44521','�׽̽�ʦ','10');
INSERT INTO `qs_hotword` VALUES ('44561','��Լ����','11');
INSERT INTO `qs_hotword` VALUES ('44601','ʩ����Ա','12');
INSERT INTO `qs_hotword` VALUES ('44619','��������','10');
INSERT INTO `qs_hotword` VALUES ('44701','ѧ��ʦ','21');
INSERT INTO `qs_hotword` VALUES ('44728','���۴������','17');
INSERT INTO `qs_hotword` VALUES ('44732','c++�߼�����Ա','14');
INSERT INTO `qs_hotword` VALUES ('44778','Ʒ�Ʋ߻�����','25');
INSERT INTO `qs_hotword` VALUES ('44790','������Ʒ����','23');
INSERT INTO `qs_hotword` VALUES ('44804','ҽҩ��������ն�','31');
INSERT INTO `qs_hotword` VALUES ('44806','��ҵ���ʾͽ�����','17');
INSERT INTO `qs_hotword` VALUES ('44832','��꾭��','12');
INSERT INTO `qs_hotword` VALUES ('44834','�������','34');
INSERT INTO `qs_hotword` VALUES ('44852','�߼���ѵרԱ','10');
INSERT INTO `qs_hotword` VALUES ('44865','�鱦��곤','29');
INSERT INTO `qs_hotword` VALUES ('44870','������չ����','27');
INSERT INTO `qs_hotword` VALUES ('44878','�����������','46');
INSERT INTO `qs_hotword` VALUES ('44903','���̲�����','10');
INSERT INTO `qs_hotword` VALUES ('44919','�곤����Ա','15');
INSERT INTO `qs_hotword` VALUES ('44935','�ŵ��ܾ���','16');
INSERT INTO `qs_hotword` VALUES ('44940','���̹�������','31');
INSERT INTO `qs_hotword` VALUES ('44964','�ִ�о���ȫ��','20');
INSERT INTO `qs_hotword` VALUES ('44987','����Ӫҵ��������','15');
INSERT INTO `qs_hotword` VALUES ('45010','�ŵ���','11');
INSERT INTO `qs_hotword` VALUES ('45021','���ַ�����Ա','23');
INSERT INTO `qs_hotword` VALUES ('45049','OTC�����ܾ���','13');
INSERT INTO `qs_hotword` VALUES ('45057','�����Ӳ������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('45058','������������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('45079','����������','10');
INSERT INTO `qs_hotword` VALUES ('45139','����˾��','11');
INSERT INTO `qs_hotword` VALUES ('45155','ʳƷ�з�Ա','11');
INSERT INTO `qs_hotword` VALUES ('45175','С��ҵ���ƹ�','10');
INSERT INTO `qs_hotword` VALUES ('45176','��װ����','19');
INSERT INTO `qs_hotword` VALUES ('45222','�ۺ������Ա','11');
INSERT INTO `qs_hotword` VALUES ('45238','��Ӫ�����۾���','15');
INSERT INTO `qs_hotword` VALUES ('45239','���ܻ��ͻ�����','21');
INSERT INTO `qs_hotword` VALUES ('45297','ʩ������Ա','15');
INSERT INTO `qs_hotword` VALUES ('45359','����ͨ·����','12');
INSERT INTO `qs_hotword` VALUES ('45368','���۹���ʦ��ɽ','23');
INSERT INTO `qs_hotword` VALUES ('45373','���ز���Ŀ����','13');
INSERT INTO `qs_hotword` VALUES ('45376','Ԥ���㾭��','11');
INSERT INTO `qs_hotword` VALUES ('45377','���۴���ʵϰ��','42');
INSERT INTO `qs_hotword` VALUES ('45401','�������ܿյ�����','17');
INSERT INTO `qs_hotword` VALUES ('45407','�߼�����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('45449','�ɹ���������','14');
INSERT INTO `qs_hotword` VALUES ('45453','�г����ͻ�����','23');
INSERT INTO `qs_hotword` VALUES ('45460','��ͬ������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('45468','�������̴���','13');
INSERT INTO `qs_hotword` VALUES ('45475','ҽҩ�������','10');
INSERT INTO `qs_hotword` VALUES ('45493','��ӡ������','17');
INSERT INTO `qs_hotword` VALUES ('45534','���۹�����ѵ��','10');
INSERT INTO `qs_hotword` VALUES ('45562','���۴���ҽԺ����','21');
INSERT INTO `qs_hotword` VALUES ('45574','ƻ��ר�����Ա','10');
INSERT INTO `qs_hotword` VALUES ('45614','��ñRHCE��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('45620','������չרԱ','12');
INSERT INTO `qs_hotword` VALUES ('45633','C���Կ�������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('45642','��Ӫ���ܼ�','47');
INSERT INTO `qs_hotword` VALUES ('45643','�г���ר�δ���','26');
INSERT INTO `qs_hotword` VALUES ('45676','��ְ��������','19');
INSERT INTO `qs_hotword` VALUES ('45682','C++','12');
INSERT INTO `qs_hotword` VALUES ('45712','ֱ������','29');
INSERT INTO `qs_hotword` VALUES ('45713','KAҵ�����','34');
INSERT INTO `qs_hotword` VALUES ('45779','������������','10');
INSERT INTO `qs_hotword` VALUES ('45813','�������','11');
INSERT INTO `qs_hotword` VALUES ('45871','����ά�޹���ʦ','20');
INSERT INTO `qs_hotword` VALUES ('45874','ͨ·�������۴���','38');
INSERT INTO `qs_hotword` VALUES ('45906','�����������۵���','13');
INSERT INTO `qs_hotword` VALUES ('45912','Ȩ֤רԱ','19');
INSERT INTO `qs_hotword` VALUES ('45928','����������곤','28');
INSERT INTO `qs_hotword` VALUES ('45952','��ȫ����רԱ','25');
INSERT INTO `qs_hotword` VALUES ('45984','���������۾���','10');
INSERT INTO `qs_hotword` VALUES ('46034','�������������ɲ�','14');
INSERT INTO `qs_hotword` VALUES ('46097','�Ƶ��ܾ���','37');
INSERT INTO `qs_hotword` VALUES ('46118','Ӫҵ������','60');
INSERT INTO `qs_hotword` VALUES ('46152','Ʒ�Ƶ������','23');
INSERT INTO `qs_hotword` VALUES ('46153','�߶�Ʒ�Ƶ��ܾ���','23');
INSERT INTO `qs_hotword` VALUES ('46180','Chemist','23');
INSERT INTO `qs_hotword` VALUES ('46297','�������ʦ','11');
INSERT INTO `qs_hotword` VALUES ('46330','ʩ������','10');
INSERT INTO `qs_hotword` VALUES ('46368','����Ա','14');
INSERT INTO `qs_hotword` VALUES ('46369','�����ֲ�����','11');
INSERT INTO `qs_hotword` VALUES ('46387','Ӣ����óҵ��Ա','15');
INSERT INTO `qs_hotword` VALUES ('46409','�ֹ�˾���۾���','11');
INSERT INTO `qs_hotword` VALUES ('46455','��������','35');
INSERT INTO `qs_hotword` VALUES ('46469','�Ҿ���ƷӪҵԱ','14');
INSERT INTO `qs_hotword` VALUES ('46519','�������ƹ���ʦ','22');
INSERT INTO `qs_hotword` VALUES ('46602','Ӫ�����ܼ�','46');
INSERT INTO `qs_hotword` VALUES ('46606','У������','12');
INSERT INTO `qs_hotword` VALUES ('46628','���Ӷӳ�','10');
INSERT INTO `qs_hotword` VALUES ('46658','��ְװ�����ʦ','27');
INSERT INTO `qs_hotword` VALUES ('46692','���������ѯ����','26');
INSERT INTO `qs_hotword` VALUES ('46698','�ɱ�������','57');
INSERT INTO `qs_hotword` VALUES ('46774','�г���','15');
INSERT INTO `qs_hotword` VALUES ('46793','��ְ���طÿ�','44');
INSERT INTO `qs_hotword` VALUES ('46802','��ó��װҵ�����','11');
INSERT INTO `qs_hotword` VALUES ('46803','��óרԱ������','10');
INSERT INTO `qs_hotword` VALUES ('46822','��Ʋ�����','15');
INSERT INTO `qs_hotword` VALUES ('46860','�߶���ƾ���','10');
INSERT INTO `qs_hotword` VALUES ('46862','ҽԺ��Ӥ����','11');
INSERT INTO `qs_hotword` VALUES ('46863','Ӥ���ն��ƹ�Ա','29');
INSERT INTO `qs_hotword` VALUES ('46864','�ͷ�רԱĸӤ����','20');
INSERT INTO `qs_hotword` VALUES ('46865','ҽ���ƹ�Ա','31');
INSERT INTO `qs_hotword` VALUES ('46874','����Լ��ƹ�רԱ','11');
INSERT INTO `qs_hotword` VALUES ('46890','ISOרԱ','16');
INSERT INTO `qs_hotword` VALUES ('46896','ʡ��������','28');
INSERT INTO `qs_hotword` VALUES ('46897','�������۹���','10');
INSERT INTO `qs_hotword` VALUES ('46904','���������Ƴ�ʽ��','23');
INSERT INTO `qs_hotword` VALUES ('46905','�泵��ʻԱ�ֹ�','23');
INSERT INTO `qs_hotword` VALUES ('46906','��е������Ϳװ','23');
INSERT INTO `qs_hotword` VALUES ('46907','����������','23');
INSERT INTO `qs_hotword` VALUES ('46908','������������','25');
INSERT INTO `qs_hotword` VALUES ('46909','ϵͳ���','24');
INSERT INTO `qs_hotword` VALUES ('46910','����KAM','24');
INSERT INTO `qs_hotword` VALUES ('46911','��������','23');
INSERT INTO `qs_hotword` VALUES ('46918','����ӪҵԱ','11');
INSERT INTO `qs_hotword` VALUES ('46950','������ѵʦ','15');
INSERT INTO `qs_hotword` VALUES ('46951','�ն�����','15');
INSERT INTO `qs_hotword` VALUES ('46958','���������´�����','14');
INSERT INTO `qs_hotword` VALUES ('46962','����ҵ��ԱSales','15');
INSERT INTO `qs_hotword` VALUES ('46995','��������Ա','11');
INSERT INTO `qs_hotword` VALUES ('47025','������������','10');
INSERT INTO `qs_hotword` VALUES ('47058','ҽҩ����OTC����','16');
INSERT INTO `qs_hotword` VALUES ('47105','��ְ��ѵ��ʦ','36');
INSERT INTO `qs_hotword` VALUES ('47138','�г���ҵ����','11');
INSERT INTO `qs_hotword` VALUES ('47166','פ��ҵ��Ա','21');
INSERT INTO `qs_hotword` VALUES ('47175','������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('47286','����ܼ�','12');
INSERT INTO `qs_hotword` VALUES ('47293','Ʒ�ƹ���','18');
INSERT INTO `qs_hotword` VALUES ('47390','��ʩ����','17');
INSERT INTO `qs_hotword` VALUES ('47401','�������ܵ����ն�','17');
INSERT INTO `qs_hotword` VALUES ('47445','���۴���ơ���豸','12');
INSERT INTO `qs_hotword` VALUES ('47486','Ŵ����-�ɱ�','18');
INSERT INTO `qs_hotword` VALUES ('47570','������ϢԱ','10');
INSERT INTO `qs_hotword` VALUES ('47650','���۴���Ӫ��Ա','31');
INSERT INTO `qs_hotword` VALUES ('47659','����Ա','28');
INSERT INTO `qs_hotword` VALUES ('47670','��Ϊ��Ʒ���۾���','11');
INSERT INTO `qs_hotword` VALUES ('47711','��������������','45');
INSERT INTO `qs_hotword` VALUES ('47712','������ҵ','28');
INSERT INTO `qs_hotword` VALUES ('47713','SMT�豸����Ա','24');
INSERT INTO `qs_hotword` VALUES ('47730','���缼ʦ','29');
INSERT INTO `qs_hotword` VALUES ('47734','�ƹ��������','12');
INSERT INTO `qs_hotword` VALUES ('47740','�����ලԱ','25');
INSERT INTO `qs_hotword` VALUES ('47779','��ҵ���ڲ�����','16');
INSERT INTO `qs_hotword` VALUES ('47804','פ�����ʿͻ�����','18');
INSERT INTO `qs_hotword` VALUES ('47805','��ǻҽ��','12');
INSERT INTO `qs_hotword` VALUES ('47829','�г��ܾ�������','24');
INSERT INTO `qs_hotword` VALUES ('47839','���ｲʦ','13');
INSERT INTO `qs_hotword` VALUES ('47846','ҵ��','10');
INSERT INTO `qs_hotword` VALUES ('47865','�����ƻ�����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('47877','���۲�����','10');
INSERT INTO `qs_hotword` VALUES ('47889','��ְ����д��','11');
INSERT INTO `qs_hotword` VALUES ('47890','����д��','13');
INSERT INTO `qs_hotword` VALUES ('47918','�����տͻ�����','11');
INSERT INTO `qs_hotword` VALUES ('48010','ҽ�úĲ����۴���','17');
INSERT INTO `qs_hotword` VALUES ('48089','����','16');
INSERT INTO `qs_hotword` VALUES ('48114','��۹���ʦ�ҿ�','29');
INSERT INTO `qs_hotword` VALUES ('48115','һ������ʦ�ҿ�','37');
INSERT INTO `qs_hotword` VALUES ('48116','������ʦ�ҿ�','27');
INSERT INTO `qs_hotword` VALUES ('48165','Ʒ����ȨרԱ','23');
INSERT INTO `qs_hotword` VALUES ('48172','��������ά����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('48174','��������','14');
INSERT INTO `qs_hotword` VALUES ('48221','OTCҽҩ���۴���','16');
INSERT INTO `qs_hotword` VALUES ('48234','פ��ҩʦ','10');
INSERT INTO `qs_hotword` VALUES ('48248','װ����۹���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('48258','��װ�о߹���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('48264','�ʹ�Ա','22');
INSERT INTO `qs_hotword` VALUES ('48274','����פ��ͻ�����','10');
INSERT INTO `qs_hotword` VALUES ('48295','ǰ���Ӵ�Ա','12');
INSERT INTO `qs_hotword` VALUES ('48333','���Ա','11');
INSERT INTO `qs_hotword` VALUES ('48344','���۾�������','10');
INSERT INTO `qs_hotword` VALUES ('48372','��ѹ����ʦ','14');
INSERT INTO `qs_hotword` VALUES ('48430','�̳�����Ա','13');
INSERT INTO `qs_hotword` VALUES ('48468','��ҵ��˾���ܾ���','16');
INSERT INTO `qs_hotword` VALUES ('48473','��װ����','11');
INSERT INTO `qs_hotword` VALUES ('48479','ҽԺ���۾���','18');
INSERT INTO `qs_hotword` VALUES ('48493','��Ŀ�걨Ա','12');
INSERT INTO `qs_hotword` VALUES ('48496','���۴�������','10');
INSERT INTO `qs_hotword` VALUES ('48616','Ӫ����������','12');
INSERT INTO `qs_hotword` VALUES ('48639','ʡ������ȫ��','18');
INSERT INTO `qs_hotword` VALUES ('48668','�ŵ�רԱ','19');
INSERT INTO `qs_hotword` VALUES ('48669','�ֹ�˾������','10');
INSERT INTO `qs_hotword` VALUES ('48686','ˮ����ҵ���۾���','16');
INSERT INTO `qs_hotword` VALUES ('48757','��ְ���ع˿�','13');
INSERT INTO `qs_hotword` VALUES ('48771','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('48827','���˾���','12');
INSERT INTO `qs_hotword` VALUES ('48833','����ά������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('48834','��ѹ����','12');
INSERT INTO `qs_hotword` VALUES ('48835','�п�����','12');
INSERT INTO `qs_hotword` VALUES ('48836','��ѹֵ��Ա','13');
INSERT INTO `qs_hotword` VALUES ('48905','ˮ�簲װ����ʦ','50');
INSERT INTO `qs_hotword` VALUES ('48925','�ۺ�����','11');
INSERT INTO `qs_hotword` VALUES ('48938','�����������۾���','10');
INSERT INTO `qs_hotword` VALUES ('49009','�̻�ʩ��Ա','10');
INSERT INTO `qs_hotword` VALUES ('49016','�������','13');
INSERT INTO `qs_hotword` VALUES ('49018','���۹���ʦ����','14');
INSERT INTO `qs_hotword` VALUES ('49046','����������','17');
INSERT INTO `qs_hotword` VALUES ('49190','�ۺ���Ա','22');
INSERT INTO `qs_hotword` VALUES ('49201','�Ա�ֱͨ��רԱ','11');
INSERT INTO `qs_hotword` VALUES ('49214','�ŵ�����','10');
INSERT INTO `qs_hotword` VALUES ('49244','�赸','14');
INSERT INTO `qs_hotword` VALUES ('49245','������','12');
INSERT INTO `qs_hotword` VALUES ('49354','��Ŀ���۹���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('49378','������������רԱ','17');
INSERT INTO `qs_hotword` VALUES ('49379','�д���չ����','10');
INSERT INTO `qs_hotword` VALUES ('49383','�ն���ѵ����','11');
INSERT INTO `qs_hotword` VALUES ('49440','�·��༭','79');
INSERT INTO `qs_hotword` VALUES ('49454','��������Ա�߳�','15');
INSERT INTO `qs_hotword` VALUES ('49479','��������Ա','11');
INSERT INTO `qs_hotword` VALUES ('49680','��ӳԱ','11');
INSERT INTO `qs_hotword` VALUES ('49693','������֤����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('49746','��������','21');
INSERT INTO `qs_hotword` VALUES ('49779','װ�ι�˾ҵ��רԱ','22');
INSERT INTO `qs_hotword` VALUES ('49780','���մ�������','22');
INSERT INTO `qs_hotword` VALUES ('49781','ǽֽ���۵���','22');
INSERT INTO `qs_hotword` VALUES ('49783','������ҵ����','23');
INSERT INTO `qs_hotword` VALUES ('49784','���̾�������','22');
INSERT INTO `qs_hotword` VALUES ('49785','������������','22');
INSERT INTO `qs_hotword` VALUES ('49879','��ز�Ʒ���۾���','18');
INSERT INTO `qs_hotword` VALUES ('49897','�ֹ�˾������','20');
INSERT INTO `qs_hotword` VALUES ('49899','�ſ�����','10');
INSERT INTO `qs_hotword` VALUES ('49901','�߶����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('49918','�ſ�Ա','10');
INSERT INTO `qs_hotword` VALUES ('49919','�г�����','18');
INSERT INTO `qs_hotword` VALUES ('49945','�䵥Ա','13');
INSERT INTO `qs_hotword` VALUES ('49980','�Կع���ʦDCS','14');
INSERT INTO `qs_hotword` VALUES ('50008','���ز��ܾ���','14');
INSERT INTO `qs_hotword` VALUES ('50016','���ַ���ҵ����','12');
INSERT INTO `qs_hotword` VALUES ('50052','�����ά�޹���ʦ','11');
INSERT INTO `qs_hotword` VALUES ('50125','���Ա','11');
INSERT INTO `qs_hotword` VALUES ('50133','�߼�����','22');
INSERT INTO `qs_hotword` VALUES ('50137','��ĥ��','19');
INSERT INTO `qs_hotword` VALUES ('50163','�г�������','19');
INSERT INTO `qs_hotword` VALUES ('50164','Ӫҵ��Ӫ���ܼ�','14');
INSERT INTO `qs_hotword` VALUES ('50165','Ӫҵ���Ϲ��ܼ�','11');
INSERT INTO `qs_hotword` VALUES ('50205','��λ','12');
INSERT INTO `qs_hotword` VALUES ('50264','���������Ŀ����','10');
INSERT INTO `qs_hotword` VALUES ('50271','ҽ����','14');
INSERT INTO `qs_hotword` VALUES ('50290','��������������','10');
INSERT INTO `qs_hotword` VALUES ('50355','Ӫ����ѵ��','11');
INSERT INTO `qs_hotword` VALUES ('50371','ĸӤ�������۴���','38');
INSERT INTO `qs_hotword` VALUES ('50385','����ά������','11');
INSERT INTO `qs_hotword` VALUES ('50405','����רԱ','11');
INSERT INTO `qs_hotword` VALUES ('50423','��������Ա','10');
INSERT INTO `qs_hotword` VALUES ('50427','ע�ܻ�ҵ��Ա','17');
INSERT INTO `qs_hotword` VALUES ('50518','������������','10');
INSERT INTO `qs_hotword` VALUES ('50532','��ְ��Ա','15');
INSERT INTO `qs_hotword` VALUES ('50537','���Ǽ��Ƶ��ܾ���','10');
INSERT INTO `qs_hotword` VALUES ('50582','Ӫ���ƹ����','10');
INSERT INTO `qs_hotword` VALUES ('50642','KA�ն��ƹ�Ա','26');
INSERT INTO `qs_hotword` VALUES ('50823','ӪҵԱ������Ա','22');
INSERT INTO `qs_hotword` VALUES ('50829','�������Ա','12');
INSERT INTO `qs_hotword` VALUES ('50832','Ӫ������','12');
INSERT INTO `qs_hotword` VALUES ('50852','��վվ��','12');
INSERT INTO `qs_hotword` VALUES ('50881','��װ���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('50923','�����꾭��','16');
INSERT INTO `qs_hotword` VALUES ('50927','�����ܾ���','28');
INSERT INTO `qs_hotword` VALUES ('50948','�ۺ�ά������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('50969','��������','14');
INSERT INTO `qs_hotword` VALUES ('51105','������������','12');
INSERT INTO `qs_hotword` VALUES ('51139','��Ʒ���ܼ�','25');
INSERT INTO `qs_hotword` VALUES ('51159','��������ҽԺ','19');
INSERT INTO `qs_hotword` VALUES ('51240','��������','15');
INSERT INTO `qs_hotword` VALUES ('51243','԰��ˮ�繤��ʦ','25');
INSERT INTO `qs_hotword` VALUES ('51244','����೤','23');
INSERT INTO `qs_hotword` VALUES ('51270','����������','17');
INSERT INTO `qs_hotword` VALUES ('51287','�ʹܲ�����','10');
INSERT INTO `qs_hotword` VALUES ('51314','�ɱ����Ʋ�����','23');
INSERT INTO `qs_hotword` VALUES ('51430','����ʵϰ�꾭��','18');
INSERT INTO `qs_hotword` VALUES ('51634','ʡ����չ����','12');
INSERT INTO `qs_hotword` VALUES ('51715','������Դ������','18');
INSERT INTO `qs_hotword` VALUES ('51794','�������۹���ʦ','18');
INSERT INTO `qs_hotword` VALUES ('51824','ʵϰ����Ա','13');
INSERT INTO `qs_hotword` VALUES ('51826','Javaʵϰ��','11');
INSERT INTO `qs_hotword` VALUES ('51906','����������','33');
INSERT INTO `qs_hotword` VALUES ('51935','�ɹ�����','10');
INSERT INTO `qs_hotword` VALUES ('52012','ά��ѧͽ','10');
INSERT INTO `qs_hotword` VALUES ('52088','�������','10');
INSERT INTO `qs_hotword` VALUES ('52167','ֵ��繤','10');
INSERT INTO `qs_hotword` VALUES ('52170','�ն����۾���','16');
INSERT INTO `qs_hotword` VALUES ('52197','����꾭��','11');
INSERT INTO `qs_hotword` VALUES ('52215','פ��Ӫ����Ա','15');
INSERT INTO `qs_hotword` VALUES ('52230','�г��ƹ㲿����','13');
INSERT INTO `qs_hotword` VALUES ('52245','ҽҩ����ʵϰ��','10');
INSERT INTO `qs_hotword` VALUES ('52304','���պ˱���','10');
INSERT INTO `qs_hotword` VALUES ('52309','�ͷ��淿Դ����','13');
INSERT INTO `qs_hotword` VALUES ('52378','������','23');
INSERT INTO `qs_hotword` VALUES ('52394','����ҵ����','10');
INSERT INTO `qs_hotword` VALUES ('52408','��������ӱ�','10');
INSERT INTO `qs_hotword` VALUES ('52430','ҵ��������˲�','13');
INSERT INTO `qs_hotword` VALUES ('52441','������´�����','10');
INSERT INTO `qs_hotword` VALUES ('52485','��ֲʦ','10');
INSERT INTO `qs_hotword` VALUES ('52523','ҽҩ����ӱ�','11');
INSERT INTO `qs_hotword` VALUES ('52535','��������רԱ','18');
INSERT INTO `qs_hotword` VALUES ('52540','��������ʦ','17');
INSERT INTO `qs_hotword` VALUES ('52550','���۴���ʯ��ׯ','11');
INSERT INTO `qs_hotword` VALUES ('52556','��ѧ����������','16');
INSERT INTO `qs_hotword` VALUES ('52660','����רԱפ������','14');
INSERT INTO `qs_hotword` VALUES ('52695','ATM���񹤳�ʦ','11');
INSERT INTO `qs_hotword` VALUES ('52703','פ��רԱ','10');
INSERT INTO `qs_hotword` VALUES ('52729','������Ŀ����','13');
INSERT INTO `qs_hotword` VALUES ('52799','������ҵ������','10');
INSERT INTO `qs_hotword` VALUES ('52806','��������','14');
INSERT INTO `qs_hotword` VALUES ('52856','���������¼���','45');
INSERT INTO `qs_hotword` VALUES ('52887','�����ƹ�����','43');
INSERT INTO `qs_hotword` VALUES ('52888','�����ƹ㶽��','26');
INSERT INTO `qs_hotword` VALUES ('52961','������չ����','11');
INSERT INTO `qs_hotword` VALUES ('52964','���´�ҽ������','11');
INSERT INTO `qs_hotword` VALUES ('52982','��ְ������','11');
INSERT INTO `qs_hotword` VALUES ('52983','��Ƶ�����۹���ʦ','14');
INSERT INTO `qs_hotword` VALUES ('53015','��ѵ������У��','11');
INSERT INTO `qs_hotword` VALUES ('53024','�����ܾ���','11');
INSERT INTO `qs_hotword` VALUES ('53025','������Ա','15');
INSERT INTO `qs_hotword` VALUES ('53043','�����Ż�����ʦ','33');
INSERT INTO `qs_hotword` VALUES ('53083','���רԱ','14');
INSERT INTO `qs_hotword` VALUES ('53099','�����۾���','13');
INSERT INTO `qs_hotword` VALUES ('53169','ҵ��չ����BDR','25');
INSERT INTO `qs_hotword` VALUES ('53180','4S�������','20');
INSERT INTO `qs_hotword` VALUES ('53181','4S���ۺ���','16');
INSERT INTO `qs_hotword` VALUES ('53182','4S�����۾���','26');
INSERT INTO `qs_hotword` VALUES ('53222','����������곤','21');
INSERT INTO `qs_hotword` VALUES ('53223','��������','21');
INSERT INTO `qs_hotword` VALUES ('53224','��΢�츱����','21');
INSERT INTO `qs_hotword` VALUES ('53225','פ��ҵ�����','27');
INSERT INTO `qs_hotword` VALUES ('53226','�곤������','21');
INSERT INTO `qs_hotword` VALUES ('53227','Ӣ����̺ӱ�����','21');
INSERT INTO `qs_hotword` VALUES ('53228','�������κӱ��ȷ�','21');
INSERT INTO `qs_hotword` VALUES ('53229','Ӣ����ʦ�ӱ��ȷ�','21');
INSERT INTO `qs_hotword` VALUES ('53230','����רԱ','21');
INSERT INTO `qs_hotword` VALUES ('53247','��̥���۴���','11');
INSERT INTO `qs_hotword` VALUES ('53264','ҽҩ���۴���ӱ�','11');
INSERT INTO `qs_hotword` VALUES ('53290','����Ӧ���ҵ��','16');
INSERT INTO `qs_hotword` VALUES ('53335','���ֳ�����','10');
INSERT INTO `qs_hotword` VALUES ('53344','BC������Ա','14');
INSERT INTO `qs_hotword` VALUES ('53358','����ҵ�����','53');
INSERT INTO `qs_hotword` VALUES ('53359','ֱ��ҵ��Ա','14');
INSERT INTO `qs_hotword` VALUES ('53417','���˵�������','18');
INSERT INTO `qs_hotword` VALUES ('53445','����������Ա','14');
INSERT INTO `qs_hotword` VALUES ('53518','������������','10');
INSERT INTO `qs_hotword` VALUES ('53539','ʡ���̾���','10');
INSERT INTO `qs_hotword` VALUES ('53577','���۾���ȫ����Χ','26');
INSERT INTO `qs_hotword` VALUES ('53596','���۾�������','23');
INSERT INTO `qs_hotword` VALUES ('53598','��Ʒ��ʦ̫ԭ','20');
INSERT INTO `qs_hotword` VALUES ('53599','���۹���ʦ-OCS','20');
INSERT INTO `qs_hotword` VALUES ('53647','ҽѧ��Ϣ��ͨרԱ','17');
INSERT INTO `qs_hotword` VALUES ('53690','�Ƽ���Ʒ������','11');
INSERT INTO `qs_hotword` VALUES ('53906','�÷�','10');
INSERT INTO `qs_hotword` VALUES ('53914','��Ʒ����','11');
INSERT INTO `qs_hotword` VALUES ('53919','��ѧ������','10');
INSERT INTO `qs_hotword` VALUES ('53988','LED���۴���','10');
INSERT INTO `qs_hotword` VALUES ('54042','�������۴���','19');
INSERT INTO `qs_hotword` VALUES ('54082','���´����۾���','10');
INSERT INTO `qs_hotword` VALUES ('54102','��ְ����','20');
INSERT INTO `qs_hotword` VALUES ('54103','�ֹ�˾�ܾ�������','25');
INSERT INTO `qs_hotword` VALUES ('54112','�ӹ�˾�ܾ���','21');
INSERT INTO `qs_hotword` VALUES ('54119','����������Դ����','10');
INSERT INTO `qs_hotword` VALUES ('54131','������չ����','13');
INSERT INTO `qs_hotword` VALUES ('54234','��ý�ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('54326','�����ܼ�','19');
INSERT INTO `qs_hotword` VALUES ('54358','Ƭ�����۾���','13');
INSERT INTO `qs_hotword` VALUES ('54474','פ��˾��','10');
INSERT INTO `qs_hotword` VALUES ('54504','������ѵרԱ','11');
INSERT INTO `qs_hotword` VALUES ('54510','�ڳ�������߻�','11');
INSERT INTO `qs_hotword` VALUES ('54519','��Ƿ��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('54550','�ɱ�����Ա','20');
INSERT INTO `qs_hotword` VALUES ('54604','ҽ����е���۾���','34');
INSERT INTO `qs_hotword` VALUES ('54677','ҵ���˾��','12');
INSERT INTO `qs_hotword` VALUES ('54698','����Ա','12');
INSERT INTO `qs_hotword` VALUES ('54861','��ҩ�ƹ����','15');
INSERT INTO `qs_hotword` VALUES ('54912','���۴�������','12');
INSERT INTO `qs_hotword` VALUES ('54926','�ɱ�����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('55030','���˾��','10');
INSERT INTO `qs_hotword` VALUES ('55076','�ۺϹ���רԱ','21');
INSERT INTO `qs_hotword` VALUES ('55131','��������','29');
INSERT INTO `qs_hotword` VALUES ('55231','���۹���ʦ����','10');
INSERT INTO `qs_hotword` VALUES ('55543','Ӫ������','14');
INSERT INTO `qs_hotword` VALUES ('55567','����鿱�����','10');
INSERT INTO `qs_hotword` VALUES ('55577','Ӫ������','11');
INSERT INTO `qs_hotword` VALUES ('55695','��̳��������','14');
INSERT INTO `qs_hotword` VALUES ('55896','�ӹ�˾������','10');
INSERT INTO `qs_hotword` VALUES ('55956','�ֹ�˾����ҵ��Ա','18');
INSERT INTO `qs_hotword` VALUES ('55957','�ֹ�˾��óҵ��Ա','18');
INSERT INTO `qs_hotword` VALUES ('55958','���Ա����','18');
INSERT INTO `qs_hotword` VALUES ('56082','����ҵ��','18');
INSERT INTO `qs_hotword` VALUES ('56196','�ŵ�ӪҵԱ','17');
INSERT INTO `qs_hotword` VALUES ('56254','��ͻ����ؾ���','11');
INSERT INTO `qs_hotword` VALUES ('56287','�����ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('56385','SE','19');
INSERT INTO `qs_hotword` VALUES ('56411','������������','14');
INSERT INTO `qs_hotword` VALUES ('56471','ƽ����ƽ�ʦ','16');
INSERT INTO `qs_hotword` VALUES ('56629','���۷ֹ�˾����','14');
INSERT INTO `qs_hotword` VALUES ('56701','����곤','20');
INSERT INTO `qs_hotword` VALUES ('56728','����ͨ·רԱ','21');
INSERT INTO `qs_hotword` VALUES ('56809','��չ','10');
INSERT INTO `qs_hotword` VALUES ('56875','��������','10');
INSERT INTO `qs_hotword` VALUES ('56878','��ѧ������','12');
INSERT INTO `qs_hotword` VALUES ('57216','�绰ԤԼԱ','11');
INSERT INTO `qs_hotword` VALUES ('57301','������','14');
INSERT INTO `qs_hotword` VALUES ('57496','�绰���̾���','11');
INSERT INTO `qs_hotword` VALUES ('57551','�������۴���','23');
INSERT INTO `qs_hotword` VALUES ('57700','ǿ�����繤','19');
INSERT INTO `qs_hotword` VALUES ('57703','�����������۾���','21');
INSERT INTO `qs_hotword` VALUES ('57716','���̹�����Ա','20');
INSERT INTO `qs_hotword` VALUES ('57782','��Դ�����ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('57828','�������۹���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('57884','ҽҩ����LH-MR','34');
INSERT INTO `qs_hotword` VALUES ('57923','OTC���۴���','10');
INSERT INTO `qs_hotword` VALUES ('58001','�ά������','36');
INSERT INTO `qs_hotword` VALUES ('58002','����������ѯԱ','36');
INSERT INTO `qs_hotword` VALUES ('58003','����ǰ̨��ѯ','36');
INSERT INTO `qs_hotword` VALUES ('58081','����רԱ��','10');
INSERT INTO `qs_hotword` VALUES ('58091','���ϼƻ�Ա','14');
INSERT INTO `qs_hotword` VALUES ('58585','�ⷿ����Ա','11');
INSERT INTO `qs_hotword` VALUES ('58639','�ջ�Ա','16');
INSERT INTO `qs_hotword` VALUES ('58652','��Ϣ��������','13');
INSERT INTO `qs_hotword` VALUES ('58979','�������´�����','18');
INSERT INTO `qs_hotword` VALUES ('58980','����KA����','18');
INSERT INTO `qs_hotword` VALUES ('59416','��ѧ��ʦ','18');
INSERT INTO `qs_hotword` VALUES ('59480','��ҵ�ͷ�','14');
INSERT INTO `qs_hotword` VALUES ('59512','���ز��߻��ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('59583','���Ա','13');
INSERT INTO `qs_hotword` VALUES ('59781','�ۺϽ��ڿͻ�����','18');
INSERT INTO `qs_hotword` VALUES ('59852','��������ܼ�','17');
INSERT INTO `qs_hotword` VALUES ('59919','�����ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('60036','��ָ�ڻ�������','16');
INSERT INTO `qs_hotword` VALUES ('60153','��ѵ������','11');
INSERT INTO `qs_hotword` VALUES ('60173','����Ա','10');
INSERT INTO `qs_hotword` VALUES ('60331','���о���','11');
INSERT INTO `qs_hotword` VALUES ('60352','�����ƹ���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('60373','�ۺ����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('60416','���רԱ','10');
INSERT INTO `qs_hotword` VALUES ('60533','�豸ά�޾���','11');
INSERT INTO `qs_hotword` VALUES ('60834','�����ܲ�����','24');
INSERT INTO `qs_hotword` VALUES ('60926','����JAVA����ʦ','22');
INSERT INTO `qs_hotword` VALUES ('60992','����������ѧ��ʦ','11');
INSERT INTO `qs_hotword` VALUES ('61126','��Ѷ����','10');
INSERT INTO `qs_hotword` VALUES ('61292','���������ɲ�','14');
INSERT INTO `qs_hotword` VALUES ('61362','�ճ������������','18');
INSERT INTO `qs_hotword` VALUES ('61363','����������','19');
INSERT INTO `qs_hotword` VALUES ('61383','��װ����','11');
INSERT INTO `qs_hotword` VALUES ('61396','����רԱ','10');
INSERT INTO `qs_hotword` VALUES ('61399','�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('61403','�г������ܼ�','14');
INSERT INTO `qs_hotword` VALUES ('61415','������ѵʦ','18');
INSERT INTO `qs_hotword` VALUES ('61472','Java��������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('61675','ƻ��ר����곤','15');
INSERT INTO `qs_hotword` VALUES ('61814','����Ա','10');
INSERT INTO `qs_hotword` VALUES ('61843','Ͷ����רԱ','12');
INSERT INTO `qs_hotword` VALUES ('61871','�ǿ����۴���','22');
INSERT INTO `qs_hotword` VALUES ('61950','���Ա','10');
INSERT INTO `qs_hotword` VALUES ('61981','Rigger','11');
INSERT INTO `qs_hotword` VALUES ('62002','����������Ա','11');
INSERT INTO `qs_hotword` VALUES ('62175','����ά������','22');
INSERT INTO `qs_hotword` VALUES ('62241','������������','12');
INSERT INTO `qs_hotword` VALUES ('62245','�ͻ������ֻ���Ʒ','18');
INSERT INTO `qs_hotword` VALUES ('62521','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('62589','��չ�ܼ�','10');
INSERT INTO `qs_hotword` VALUES ('62766','��ֽ����','19');
INSERT INTO `qs_hotword` VALUES ('62820','ӡˢװ����','12');
INSERT INTO `qs_hotword` VALUES ('62922','��ѯ��ʦ','13');
INSERT INTO `qs_hotword` VALUES ('62938','������Ա','10');
INSERT INTO `qs_hotword` VALUES ('63129','��������̳����','10');
INSERT INTO `qs_hotword` VALUES ('63140','��Ʒ��װ���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('63249','������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('63685','�߼�ҽҩ���۴���','12');
INSERT INTO `qs_hotword` VALUES ('63696','���̸���-����','18');
INSERT INTO `qs_hotword` VALUES ('63819','GIS�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('63894','���༼��','10');
INSERT INTO `qs_hotword` VALUES ('63977','д��','10');
INSERT INTO `qs_hotword` VALUES ('64683','��ѧ����','19');
INSERT INTO `qs_hotword` VALUES ('64818','�⸷���۴���','13');
INSERT INTO `qs_hotword` VALUES ('64926','��ҵ��������','11');
INSERT INTO `qs_hotword` VALUES ('64953','���̲���Ŀ����','15');
INSERT INTO `qs_hotword` VALUES ('64956','otcҽҩ����','15');
INSERT INTO `qs_hotword` VALUES ('64992','ҽҩ���������','14');
INSERT INTO `qs_hotword` VALUES ('65039','פ��ҵ����','12');
INSERT INTO `qs_hotword` VALUES ('65127','���ʻ��','14');
INSERT INTO `qs_hotword` VALUES ('65238','����Ӣ���ʦ','16');
INSERT INTO `qs_hotword` VALUES ('65469','�Կع���ʦ������','16');
INSERT INTO `qs_hotword` VALUES ('65702','ҩ��곤','16');
INSERT INTO `qs_hotword` VALUES ('65712','��ױ��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('66571','����װ�似��','15');
INSERT INTO `qs_hotword` VALUES ('66582','�ֳ�Ӫ��','15');
INSERT INTO `qs_hotword` VALUES ('66583','�׽̽���Ա','15');
INSERT INTO `qs_hotword` VALUES ('66783','����רԱ','12');
INSERT INTO `qs_hotword` VALUES ('66790','���۴����Ͼ�','11');
INSERT INTO `qs_hotword` VALUES ('66909','��ҵ���������','15');
INSERT INTO `qs_hotword` VALUES ('66910','���ز�����Ա����','15');
INSERT INTO `qs_hotword` VALUES ('66911','���ز�Ͷ�ʹ���','16');
INSERT INTO `qs_hotword` VALUES ('66912','�����豸����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('66913','�ܷ⹤�չ���ʦ','15');
INSERT INTO `qs_hotword` VALUES ('66914','QFN����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('66915','�뵼��������ҵԱ','15');
INSERT INTO `qs_hotword` VALUES ('66996','��վ����','19');
INSERT INTO `qs_hotword` VALUES ('67028','�ۺ�����������','12');
INSERT INTO `qs_hotword` VALUES ('67105','�ֿ�����-̫��','15');
INSERT INTO `qs_hotword` VALUES ('67438','ѧ������','18');
INSERT INTO `qs_hotword` VALUES ('67580','����ҽҩ����','19');
INSERT INTO `qs_hotword` VALUES ('67947','ITʵϰ��','18');
INSERT INTO `qs_hotword` VALUES ('67948','����Ա--CT','15');
INSERT INTO `qs_hotword` VALUES ('67963','CAE��������Ա','15');
INSERT INTO `qs_hotword` VALUES ('67964','�����󻮵���','15');
INSERT INTO `qs_hotword` VALUES ('67965','��е�����','15');
INSERT INTO `qs_hotword` VALUES ('67966','������Ӫ��ʵϰ��','15');
INSERT INTO `qs_hotword` VALUES ('67967','ҽҩ��˾������Ա','15');
INSERT INTO `qs_hotword` VALUES ('67968','�����ؽӵ���','30');
INSERT INTO `qs_hotword` VALUES ('67969','���Ͽγ�','30');
INSERT INTO `qs_hotword` VALUES ('67970','�����������','30');
INSERT INTO `qs_hotword` VALUES ('68019','�������ܹ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('68025','פ������','18');
INSERT INTO `qs_hotword` VALUES ('68355','��֧�������ܾ���','12');
INSERT INTO `qs_hotword` VALUES ('68356','��֧�����ܾ���','12');
INSERT INTO `qs_hotword` VALUES ('68473','�������_�Ͼ�','15');
INSERT INTO `qs_hotword` VALUES ('68666','ѹ�����չ���ʦ','10');
INSERT INTO `qs_hotword` VALUES ('68733','�ֻ�����Ա','15');
INSERT INTO `qs_hotword` VALUES ('68734','LED�ƾ�������Ա','15');
INSERT INTO `qs_hotword` VALUES ('68735','LED�ƾ�������Ա','15');
INSERT INTO `qs_hotword` VALUES ('68736','SMT�������Ա','15');
INSERT INTO `qs_hotword` VALUES ('68737','OEM���۹���ʦ','19');
INSERT INTO `qs_hotword` VALUES ('68738','��ʦ�Ͼ��»���','15');
INSERT INTO `qs_hotword` VALUES ('68739','�İ��߻���ɽ','15');
INSERT INTO `qs_hotword` VALUES ('68785','�����Ʒ����֧��','16');
INSERT INTO `qs_hotword` VALUES ('68786','�����ݿ�ܹ�ʦ','16');
INSERT INTO `qs_hotword` VALUES ('68787','Ƕ��ʽ��Ŀ����','16');
INSERT INTO `qs_hotword` VALUES ('68795','��������','16');
INSERT INTO `qs_hotword` VALUES ('68796','��������','16');
INSERT INTO `qs_hotword` VALUES ('69249','���Ͽ���','10');
INSERT INTO `qs_hotword` VALUES ('69265','�ٶ�ƽ̨�����ܼ�','15');
INSERT INTO `qs_hotword` VALUES ('69266','���۾�������','15');
INSERT INTO `qs_hotword` VALUES ('69267','רԱ���ݡ�����','15');
INSERT INTO `qs_hotword` VALUES ('69312','�ֿⷢ��Ա','11');
INSERT INTO `qs_hotword` VALUES ('69332','��ͨרԱ','14');
INSERT INTO `qs_hotword` VALUES ('69338','�����ƹ�','12');
INSERT INTO `qs_hotword` VALUES ('69505','��ҳ��������ʦ','10');
INSERT INTO `qs_hotword` VALUES ('69651','android����Ա','10');
INSERT INTO `qs_hotword` VALUES ('69877','��ʦ','11');
INSERT INTO `qs_hotword` VALUES ('70050','ģ��ά��','17');
INSERT INTO `qs_hotword` VALUES ('70053','�ҳ�ָ��ʦ','22');
INSERT INTO `qs_hotword` VALUES ('70203','�и߼����Թ���ʦ','16');
INSERT INTO `qs_hotword` VALUES ('70204','����ϸ�֤��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('70205','��װ���Ա��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('70206','�������Ա��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('70207','����Ԥ��ʵ��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('70208','��װԤ��ʵ��ʦ','15');
INSERT INTO `qs_hotword` VALUES ('70210','flash��������ʦ','15');
INSERT INTO `qs_hotword` VALUES ('70211','Ƕ��ʽӲ������','19');
INSERT INTO `qs_hotword` VALUES ('70212','ģ�߼�⼼��Ա','16');
INSERT INTO `qs_hotword` VALUES ('70568','����������','10');
INSERT INTO `qs_hotword` VALUES ('70696','�������','13');
INSERT INTO `qs_hotword` VALUES ('70818','YCM�೤','15');
INSERT INTO `qs_hotword` VALUES ('70854','C++��������Ա','10');
INSERT INTO `qs_hotword` VALUES ('71023','��Ŀ��Ӫ����','19');
INSERT INTO `qs_hotword` VALUES ('71024','Draftman','15');
INSERT INTO `qs_hotword` VALUES ('71075','��ϷQA����ʦ','15');
INSERT INTO `qs_hotword` VALUES ('71171','�����豸������','16');
INSERT INTO `qs_hotword` VALUES ('71546','��ƾ�������','22');
INSERT INTO `qs_hotword` VALUES ('71680','���ϲ��Թ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('71688','��������ʦCF','15');
INSERT INTO `qs_hotword` VALUES ('71689','��װ����ʦCF','15');
INSERT INTO `qs_hotword` VALUES ('71690','������������','15');
INSERT INTO `qs_hotword` VALUES ('71721','AD�ͻ������Ͼ�','15');
INSERT INTO `qs_hotword` VALUES ('71722','�ֿ�����̫��','15');
INSERT INTO `qs_hotword` VALUES ('71723','�ֿ���Ա̫��','15');
INSERT INTO `qs_hotword` VALUES ('71724','�ֿ����Ա̫��','15');
INSERT INTO `qs_hotword` VALUES ('71725','AD��ѵ�����Ͼ�','15');
INSERT INTO `qs_hotword` VALUES ('71726','��๤̫��','15');
INSERT INTO `qs_hotword` VALUES ('71821','3D��������ԱCC','15');
INSERT INTO `qs_hotword` VALUES ('72130','����ҵ��Ա','15');
INSERT INTO `qs_hotword` VALUES ('72131','���۾�������M','15');
INSERT INTO `qs_hotword` VALUES ('72132','���۾����Ͼ�K','15');
INSERT INTO `qs_hotword` VALUES ('72133','�����������','15');
INSERT INTO `qs_hotword` VALUES ('72134','�����Ŀ��߻�','30');
INSERT INTO `qs_hotword` VALUES ('72135','��������ܼ�','15');
INSERT INTO `qs_hotword` VALUES ('72136','�����Ŀ����','15');
INSERT INTO `qs_hotword` VALUES ('72137','ý��༭','16');
INSERT INTO `qs_hotword` VALUES ('72138','����ҵ��Ա','15');
INSERT INTO `qs_hotword` VALUES ('72139','������װ���ʦ','17');
INSERT INTO `qs_hotword` VALUES ('72377','���۹���ʦ����','10');
INSERT INTO `qs_hotword` VALUES ('73155','Ӫҵ���ܾ������','15');
INSERT INTO `qs_hotword` VALUES ('73156','����ͨ�ſ�����Ա','15');
INSERT INTO `qs_hotword` VALUES ('73157','�ƶ�������Ա','15');
INSERT INTO `qs_hotword` VALUES ('73399','�������ʦ','13');
INSERT INTO `qs_hotword` VALUES ('73507','ҽԺ�������۴���','15');
INSERT INTO `qs_hotword` VALUES ('73508','IOS��ѵʦ','15');
INSERT INTO `qs_hotword` VALUES ('73526','��ҵ�ƹ㾭��','30');
INSERT INTO `qs_hotword` VALUES ('73527','סլ��Ŀ����','31');
INSERT INTO `qs_hotword` VALUES ('73868','���ʦ��ɴ���','16');
INSERT INTO `qs_hotword` VALUES ('73905','ҽҩ������','16');
INSERT INTO `qs_hotword` VALUES ('73913','���鳤����','15');
INSERT INTO `qs_hotword` VALUES ('73914','����������','15');
INSERT INTO `qs_hotword` VALUES ('73915','�з�����ʦ�߷���','15');
INSERT INTO `qs_hotword` VALUES ('73916','��������Ա','21');
INSERT INTO `qs_hotword` VALUES ('74030','���ͻ��ִ�Ա','12');
INSERT INTO `qs_hotword` VALUES ('74094','Opennebula','16');
INSERT INTO `qs_hotword` VALUES ('74095','�ִ�ũҵ��Ŀ����','16');
INSERT INTO `qs_hotword` VALUES ('74102','���ӹ�����ʦ','13');
INSERT INTO `qs_hotword` VALUES ('74109','�ô�����','12');
INSERT INTO `qs_hotword` VALUES ('74143','���߿ͷ�����','16');
INSERT INTO `qs_hotword` VALUES ('74144','Planner','18');
INSERT INTO `qs_hotword` VALUES ('74256','���ϵͳ����ʦ','17');
INSERT INTO `qs_hotword` VALUES ('74257','������ϵͳ�ܹ�ʦ','15');
INSERT INTO `qs_hotword` VALUES ('74258','CEP�߻�ʦ','15');
INSERT INTO `qs_hotword` VALUES ('74259','���ݼ�������VITM','15');
INSERT INTO `qs_hotword` VALUES ('74260','��ƽ̨ϵͳ�ܹ�ʦ','15');
INSERT INTO `qs_hotword` VALUES ('74470','�е�רԱ','16');
INSERT INTO `qs_hotword` VALUES ('74496','��ˮ���������','14');
INSERT INTO `qs_hotword` VALUES ('74497','��չ��ҵ������','14');
INSERT INTO `qs_hotword` VALUES ('74498','������������','14');
INSERT INTO `qs_hotword` VALUES ('74499','�ҷĻ������ʦ','14');
INSERT INTO `qs_hotword` VALUES ('74500','���̲���','14');
INSERT INTO `qs_hotword` VALUES ('74511','����ʦ','18');
INSERT INTO `qs_hotword` VALUES ('74576','ֽ��ʦ','59');
INSERT INTO `qs_hotword` VALUES ('74630','�������ʦ','12');
INSERT INTO `qs_hotword` VALUES ('74731','�ۺ�װ��ʦ','12');
INSERT INTO `qs_hotword` VALUES ('74789','���۹���ʦ����','11');
INSERT INTO `qs_hotword` VALUES ('75562','Ӧ���ҵʵϰ��','12');
INSERT INTO `qs_hotword` VALUES ('75762','Led�ṹ����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('75763','���п�ѧ��ʦ','10');
INSERT INTO `qs_hotword` VALUES ('76414','������','11');
INSERT INTO `qs_hotword` VALUES ('76424','�İ�Ӫ���߻�','14');
INSERT INTO `qs_hotword` VALUES ('76425','EC��ѵרԱ','14');
INSERT INTO `qs_hotword` VALUES ('76426','������������','14');
INSERT INTO `qs_hotword` VALUES ('76533','��ѧ��ѵ��','14');
INSERT INTO `qs_hotword` VALUES ('76534','���н�ʦ','28');
INSERT INTO `qs_hotword` VALUES ('76535','�߿���ѧ��ʦ','14');
INSERT INTO `qs_hotword` VALUES ('76536','�������ν�ʦ','15');
INSERT INTO `qs_hotword` VALUES ('76537','�г����˲�רԱ','14');
INSERT INTO `qs_hotword` VALUES ('76538','��ҵ�����ܾ���','18');
INSERT INTO `qs_hotword` VALUES ('77035','�Ա��İ�','10');
INSERT INTO `qs_hotword` VALUES ('77078','�ʰ�Ա','10');
INSERT INTO `qs_hotword` VALUES ('77081','����������Ӫ�ܼ�','13');
INSERT INTO `qs_hotword` VALUES ('80057','�ؼ�����','11');
INSERT INTO `qs_hotword` VALUES ('80165','������Ա','12');
INSERT INTO `qs_hotword` VALUES ('80633','IT���߷�����Ա','14');
INSERT INTO `qs_hotword` VALUES ('80635','���ֵ�๤��ʦ','14');
INSERT INTO `qs_hotword` VALUES ('80636','���̸��ܾ���','14');
INSERT INTO `qs_hotword` VALUES ('80637','����ó�׳�����','14');
INSERT INTO `qs_hotword` VALUES ('80913','ҽҩ�����㽭','11');
INSERT INTO `qs_hotword` VALUES ('82035','������������','12');
INSERT INTO `qs_hotword` VALUES ('82471','ҵ��Ա���վ�����','13');
INSERT INTO `qs_hotword` VALUES ('82481','��ζƷҵ�����','11');
INSERT INTO `qs_hotword` VALUES ('82542','��ϰ��������','13');
INSERT INTO `qs_hotword` VALUES ('83157','��������','13');
INSERT INTO `qs_hotword` VALUES ('83158','��������רԱ','13');
INSERT INTO `qs_hotword` VALUES ('83159','��������Ա','13');
INSERT INTO `qs_hotword` VALUES ('83331','ҽҩ������','12');
INSERT INTO `qs_hotword` VALUES ('83554','OTC������','21');
INSERT INTO `qs_hotword` VALUES ('83856','���̿ⷿ����Ա','16');
INSERT INTO `qs_hotword` VALUES ('84446','����ӪҵԱ','12');
INSERT INTO `qs_hotword` VALUES ('84635','�����ն����۴���','14');
INSERT INTO `qs_hotword` VALUES ('84678','ͨ����·����Ա','12');
INSERT INTO `qs_hotword` VALUES ('84679','ͨ����·���޶ӳ�','12');
INSERT INTO `qs_hotword` VALUES ('84697','�߼�Ӫ������','13');
INSERT INTO `qs_hotword` VALUES ('85145','��Ҷ�绰����רԱ','20');
INSERT INTO `qs_hotword` VALUES ('86350','�ֽṹ��������','12');
INSERT INTO `qs_hotword` VALUES ('86351','ר������Ӫ������','12');
INSERT INTO `qs_hotword` VALUES ('86352','ר��������Ӫ����','12');
INSERT INTO `qs_hotword` VALUES ('86353','��������','12');
INSERT INTO `qs_hotword` VALUES ('86354','���Ĺ���ʦ','12');
INSERT INTO `qs_hotword` VALUES ('86355','�ֽṹ���ܾ���','12');
INSERT INTO `qs_hotword` VALUES ('86356','ר������ҵ��Ա','12');
INSERT INTO `qs_hotword` VALUES ('87342','ִ��ͳ��','12');
INSERT INTO `qs_hotword` VALUES ('88514','��ְas����Ա','13');
INSERT INTO `qs_hotword` VALUES ('88718','ҽҩ������','13');
INSERT INTO `qs_hotword` VALUES ('88964','ǰ��������','13');
INSERT INTO `qs_hotword` VALUES ('89353','ҽҩ����ѧ��רԱ','11');
INSERT INTO `qs_hotword` VALUES ('89502','MA��ά����ʦ','11');
INSERT INTO `qs_hotword` VALUES ('89509','�пص繤','11');
INSERT INTO `qs_hotword` VALUES ('89511','58ͬ����ҳ���','11');
INSERT INTO `qs_hotword` VALUES ('89513','58ͬ�ǵ绰����','11');
INSERT INTO `qs_hotword` VALUES ('89514','��Ʒ�����ϲ�','11');
INSERT INTO `qs_hotword` VALUES ('89747','�ͻ��������','16');
INSERT INTO `qs_hotword` VALUES ('89820','���۲�--��ˮС��','10');
INSERT INTO `qs_hotword` VALUES ('90071','�������۾���ˮ','10');
INSERT INTO `qs_hotword` VALUES ('90171','������Ҿ�����','12');
INSERT INTO `qs_hotword` VALUES ('90212','ά�ޱ�������Ա','11');
INSERT INTO `qs_hotword` VALUES ('90246','�����ն���������','11');
INSERT INTO `qs_hotword` VALUES ('90269','���۴����ൺ','10');
INSERT INTO `qs_hotword` VALUES ('90301','¥������','10');
INSERT INTO `qs_hotword` VALUES ('90372','�����������ൺ','10');
INSERT INTO `qs_hotword` VALUES ('90373','��ĿӪ�˾������','10');
INSERT INTO `qs_hotword` VALUES ('90374','ERPά��','10');
INSERT INTO `qs_hotword` VALUES ('90375','�߼�����ó��רԱ','10');
INSERT INTO `qs_hotword` VALUES ('90376','��е��װ��','10');
INSERT INTO `qs_hotword` VALUES ('90377','�չ�0003','10');
INSERT INTO `qs_hotword` VALUES ('90378','����','11');
INSERT INTO `qs_hotword` VALUES ('90379','ӡˢ����','10');
INSERT INTO `qs_hotword` VALUES ('91035','��ҵ���۾���','10');
INSERT INTO `qs_hotword` VALUES ('91252','װ�ι���','14');
INSERT INTO `qs_hotword` VALUES ('91522','�������רԱ�Ҿ�','11');
INSERT INTO `qs_hotword` VALUES ('91523','�Ҿ߲ɹ�����','11');
INSERT INTO `qs_hotword` VALUES ('91524','ERPʵʩά��רԱ','11');
INSERT INTO `qs_hotword` VALUES ('91525','Ħ�г��ɹ�רԱ','20');
INSERT INTO `qs_hotword` VALUES ('91820','ҽҩ����ɽ��','14');
INSERT INTO `qs_hotword` VALUES ('92330','OTCҵ�����','15');
INSERT INTO `qs_hotword` VALUES ('93331','��еװ����ʦ','10');
INSERT INTO `qs_hotword` VALUES ('93332','�Զ���רҵӦ����','10');
INSERT INTO `qs_hotword` VALUES ('93801','����ҵ�����','12');
INSERT INTO `qs_hotword` VALUES ('94618','פ��ҵ������','18');
INSERT INTO `qs_hotword` VALUES ('94620','פ����Ա','17');
INSERT INTO `qs_hotword` VALUES ('94621','פ�ش����ϻ���','18');
INSERT INTO `qs_hotword` VALUES ('94767','web�����������','10');
INSERT INTO `qs_hotword` VALUES ('94768','פ�ؼ���','17');
INSERT INTO `qs_hotword` VALUES ('94796','CAD��Ա','10');
INSERT INTO `qs_hotword` VALUES ('94798','�ٴ�Ӧ��ҽ��','15');
INSERT INTO `qs_hotword` VALUES ('94962','�������Ա','10');
INSERT INTO `qs_hotword` VALUES ('94963','�������Ϸ���','10');
INSERT INTO `qs_hotword` VALUES ('94964','�ٴ�Ӧ���ҵ��','11');
INSERT INTO `qs_hotword` VALUES ('95940','���������Ա','16');
INSERT INTO `qs_hotword` VALUES ('96114','���۴���֣��','10');
INSERT INTO `qs_hotword` VALUES ('97411','����ҵ��','11');
INSERT INTO `qs_hotword` VALUES ('98766','����������Ա','15');
INSERT INTO `qs_hotword` VALUES ('98940','���۹���ʦ�人','19');
INSERT INTO `qs_hotword` VALUES ('100720','�Ʋ���ֱ������','13');
INSERT INTO `qs_hotword` VALUES ('100721','���г�������','14');
INSERT INTO `qs_hotword` VALUES ('100727','������Ӫ��ҵ��','13');
INSERT INTO `qs_hotword` VALUES ('100815','���۾����人','12');
INSERT INTO `qs_hotword` VALUES ('101160','���۴����人','12');
INSERT INTO `qs_hotword` VALUES ('101518','���۹���ʦ��ɳ','10');
INSERT INTO `qs_hotword` VALUES ('101548','������������','11');
INSERT INTO `qs_hotword` VALUES ('101551','��������ʦ','16');
INSERT INTO `qs_hotword` VALUES ('101898','ҽҩ�������','15');
INSERT INTO `qs_hotword` VALUES ('106142','�ؼ�OTCҵ����Ա','13');
INSERT INTO `qs_hotword` VALUES ('106318','ʵ���о�����ʦ','12');
INSERT INTO `qs_hotword` VALUES ('106399','�����ŵ�����','16');
INSERT INTO `qs_hotword` VALUES ('107133','ҽҩ�������','12');
INSERT INTO `qs_hotword` VALUES ('108116','����ʦ','21');
INSERT INTO `qs_hotword` VALUES ('108125','�ƽ���ѧԱ','10');
INSERT INTO `qs_hotword` VALUES ('108309','�е��Դ��֡���ְ','17');
INSERT INTO `qs_hotword` VALUES ('108325','����¼���ְ����','17');
INSERT INTO `qs_hotword` VALUES ('109078','�������۾�Ӣ','12');
INSERT INTO `qs_hotword` VALUES ('109436','��������','11');
INSERT INTO `qs_hotword` VALUES ('116421','��ƷӪ������','22');
INSERT INTO `qs_hotword` VALUES ('117162','���۹���ʦ�ɶ�','24');
INSERT INTO `qs_hotword` VALUES ('117559','���۴���ɶ�','11');
INSERT INTO `qs_hotword` VALUES ('121640','�����Ⲻ���ܾ���','13');
INSERT INTO `qs_hotword` VALUES ('122289','�ؼ��ն˳а�����','21');
INSERT INTO `qs_hotword` VALUES ('124097','ҽҩ��������','20');
INSERT INTO `qs_hotword` VALUES ('126529','ҽԺ����������','14');
INSERT INTO `qs_hotword` VALUES ('127200','ҽҩ��������','15');
INSERT INTO `qs_hotword` VALUES ('127775','����Ӫ��ҵ�����','14');
DROP TABLE IF EXISTS `qs_hrtools`;
CREATE TABLE `qs_hrtools` (
  `h_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `h_typeid` smallint(5) unsigned NOT NULL,
  `h_filename` varchar(200) NOT NULL,
  `h_fileurl` varchar(200) NOT NULL,
  `h_order` int(10) NOT NULL DEFAULT '0',
  `h_color` varchar(7) NOT NULL,
  `h_strong` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_hrtools` VALUES ('1','1','¼��֪ͨ��','data/hrtools/2008010802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('2','1','��Ƹ��Ա�ǼǱ�','data/hrtools/200210994843.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('3','1','¼�þ���','data/hrtools/2008010401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('4','1','��Ա����ְ�����嵥','data/hrtools/2008010202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('5','1','��������绰������¼��','data/hrtools/2008010201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('6','1','��Ƹ��������','data/hrtools/2007122702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('7','1','������Աרҵ֪ʶ�����Ծ�','data/hrtools/2007121801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('8','1','��Ƹͳ�Ʒ���','data/hrtools/2007110702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('9','1','��������Ҫ��','data/hrtools/2007110701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('10','1','�칫�������������۱�','data/hrtools/2007060601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('11','1','��Ա���ۺ���Ϣ�ǼǱ�','data/hrtools/2007041101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('12','1','��Ƹ��������','data/hrtools/2007040302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('13','1','���Բ��������','data/hrtools/2007030302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('14','1','�ִ���ҵн�ʸ��������������߱�','data/hrtools/2007010702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('15','1','�������ʲ�����','data/hrtools/2007010701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('16','1','��Ƹ���µ�д����ʽ������','data/hrtools/2006120901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('17','1','��Ա���������','data/hrtools/2006101502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('18','1','��ҵԱ����;¼�õ����','data/hrtools/2006100801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('19','1','ӦƸ��Ա�Ǽ�������','data/hrtools/2006082501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('20','1','��Ƹ�����걨��','data/hrtools/2006081802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('21','1','��Ա��ļ��ҵ�취','data/hrtools/2006081702.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('22','1','��Ա��ļ�����','data/hrtools/2006081201.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('23','1','��������','data/hrtools/2006080202.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('24','1','�߼����óɱ���Ƹ�λ�ֲ�','data/hrtools/2006072201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('25','1','��ְ�����嵥','data/hrtools/2006062902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('26','1','�������ۼ�¼��','data/hrtools/2006062901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('27','1','����������','data/hrtools/2006060102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('28','1','��Ƹ�����ۺϷ�������','data/hrtools/20060601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('29','1','ӦƸ���������','data/hrtools/20060530002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('30','1','��Ƹ����ִ�е�','data/hrtools/2006053001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('31','1','ĳ֪��������ҵ���Բ�����','data/hrtools/2006021001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('32','1','Ӧ����Ա�ǼǱ�','data/hrtools/2005091402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('33','1','ƸԼ��Ա���ú˶����','data/hrtools/2005082402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('34','1','��ҵƸ����Ա���ñ�','data/hrtools/2005062202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('35','1','��ְ����¼�ü���','data/hrtools/2005062201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('36','1','ί����Ƹ�����','data/hrtools/2005062002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('37','1','��ҵ��֤�����涨��','data/hrtools/2005062001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('38','1','ְλ������̸��','data/hrtools/2005052502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('39','1','�������ֱ�׼��','data/hrtools/2005052501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('40','1','��Ƹ��Աְλ������','data/hrtools/2005050901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('41','1','ģ��ӦƸ������','data/hrtools/2005030901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('42','1','��̸���ɱ�','data/hrtools/2002109110259.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('43','1','��̸�����ñ�','data/hrtools/2005022802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('44','1','������Ա����ӦƸ��','data/hrtools/2005022801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('45','1','����״��ȷ����','data/hrtools/2005011402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('46','1','��Ƹ¼��Ӧ���ҵ���ƶ�','data/hrtools/2005011102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('47','1','��Ƹ���Թ����ƶ�','data/hrtools/2005011101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('48','1','��Ա¼���ƶ�','data/hrtools/2005010601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('49','1','��Ƹ����������','data/hrtools/2004121302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('50','1','��ʱ����Ա�������ϱ�','data/hrtools/2004121301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('51','1','��˾����������֪ʶ����','data/hrtools/2004719155833.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('52','1','����ӦƸ������ĵ绰������¼','data/hrtools/2004719155817.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('53','1','Ա����ְ����','data/hrtools/200475142723.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('54','1','¼��֪ͨ��','data/hrtools/200475142700.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('55','1','��������','data/hrtools/2004519152847.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('56','1','������Ա������','data/hrtools/2004519152821.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('57','1','��ְͬ����','data/hrtools/2004412163545.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('58','1','��Ƹ��Ա������','data/hrtools/200447114507.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('59','1','��Ƹ���Լ�¼��','data/hrtools/200447114447.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('60','1','ӦƸ���������','data/hrtools/2004330152212.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('61','1','��Ƹ���̱�','data/hrtools/2004315164719.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('62','1','��Ƹ�����','data/hrtools/2004315164635.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('63','1','��Ա��ѡ¼�ù����ƶ�','data/hrtools/200439154804.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('64','1','Ա����ѡ�����ù���취','data/hrtools/200439154747.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('65','1','�ڲ���Ա��ְ�����','data/hrtools/2004216114805.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('66','1','�ⲿ��Ա��ְ�����','data/hrtools/2004216114623.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('67','1','¼��Ա������֪ͨ��','data/hrtools/2004131171319.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('68','1','���²������Ƹ�ƻ�������','data/hrtools/20031231151420.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('69','1','Ա��ÿ�¹���״�����˱�','data/hrtools/20031217151405.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('70','1','Ա������������','data/hrtools/20031217151047.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('71','1','��¼��֪ͨ','data/hrtools/2003126144701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('72','1','��Ա����ѡ�����','data/hrtools/20031124165523.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('73','1','����Լ��ʱ���','data/hrtools/20031113142415.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('74','1','��Ƹ�����','data/hrtools/20031110154612.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('76','1','ӦƸ��Ա���Ա�','data/hrtools/2002109110349.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('77','1','��Ա����������˶���','data/hrtools/2002109110635.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('78','1','��ְ�߻�������ǼǱ�','data/hrtools/2002109110701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('79','1','��̸��¼��','data/hrtools/2002109110309.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('80','1','��̸���ɱ�','data/hrtools/2002109110259.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('81','1','�������۱�','data/hrtools/2002109110247.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('82','1','���Ա�','data/hrtools/2002109110235.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('83','1','�����Ƹ�ƻ�������','data/hrtools/2002109110727.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('84','2','Ԥ�㲿ְ��˵��','data/hrtools/2007082702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('85','2','�Ͷ�����Ա��λְ��','data/hrtools/2007030301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('86','2','�ͻ����񲿾�����ְ��','data/hrtools/2007012902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('87','2','ְλ˵����Ӫ���ܼ�','data/hrtools/2007012901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('88','2','ϵͳ����Աְλ˵����','data/hrtools/2007011302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('89','2','ְλ˵����-ϵͳ��������ʦ','data/hrtools/2007071301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('90','2','ְλ˵����-�߼�����Ա','data/hrtools/2006120902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('91','2','��ҵ������ű�','data/hrtools/2006102402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('92','2','��ҵ�������ĵ�','data/hrtools/2006102401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('93','2','���������ܾ����λ�ֲ��','data/hrtools/2006082902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('94','2','ְ��˵����-QE','data/hrtools/2006072901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('95','2','��׼ְλ˵��������','data/hrtools/2006072602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('96','2','ְ������','data/hrtools/2006072601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('97','2','���ӹ�˾��λ������','data/hrtools/2006052701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('98','2','ҵ����ÿ�¹���������','data/hrtools/2006032402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('99','2','�󻮹�����ְȨ���ֱ�','data/hrtools/2006032401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('100','2','��ҵ�鵵�����¼��','data/hrtools/2006021303.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('101','2','�ܲð칫������ְλ˵����','data/hrtools/2005081702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('102','2','ĳ���ӹ�˾?λ?��?','data/hrtools/2005081701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('103','2','��ѵ���ܸ�λְ��˵��','data/hrtools/2005071102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('104','2','���²�������λְ��','data/hrtools/2005071101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('105','2','ְλ˵���飺���Ա','data/hrtools/2005061003.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('106','2','ְλ˵���飺������Դ����','data/hrtools/2005061002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('107','2','����Աְ��˵����','data/hrtools/2005061001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('108','2','��еά�����ܸ�λ����˵����','data/hrtools/2005060202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('109','2','Ʒ���������λ����˵����','data/hrtools/2005060201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('110','2','�����ܼ�ְ������','data/hrtools/2005051802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('111','2','������ְ��˵����','data/hrtools/2005051801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('112','2','��ҵ��Ա���Ʊ�������','data/hrtools/2005050902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('113','2','�ܾ�����ְ�ܱ�׼','data/hrtools/2005040601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('114','2','�������θ�λְ��˵����','data/hrtools/2005030103.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('115','2','����˵����-������Դ������','data/hrtools/2005030102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('116','2','����˵����--Ӫ������','data/hrtools/2005030101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('117','2','ְλ˵���飺�ͻ�����','data/hrtools/2005012203.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('118','2','ְλ˵���飺�����ܼ�','data/hrtools/2005012202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('119','2','ְλ˵���飺��Ч��������','data/hrtools/2005012201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('120','2','�ܾ��������λְ��','data/hrtools/2005010602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('121','2','Ա��������','data/hrtools/2004112902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('122','2','���������','data/hrtools/200434172045.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('123','2','�������۱�','data/hrtools/200434171743.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('124','2','���¹�����������Ȩ���ֱ�','data/hrtools/20031211152451.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('125','2','��ҵ��Ա�ǼǱ�','data/hrtools/20031016154618.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('126','2','�������������������','data/hrtools/2003829143438.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('127','2','������Ա��ϰ����������','data/hrtools/2003827143158.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('128','2','��Ա����˵����','data/hrtools/2003827142738.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('129','2','��Ա���������','data/hrtools/2003816110816.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('130','2','��Ա����������','data/hrtools/200388143424.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('131','2','Ա����ѵ�ƻ�','data/hrtools/2003619154206.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('132','2','Ա��ְλ�䶯֪ͨ��','data/hrtools/2003619154152.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('133','2','��Ƹ������','data/hrtools/2002109111910.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('134','2','������Ա������','data/hrtools/2002109111903.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('135','2','Ա����Ƹ������','data/hrtools/2002109111850.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('136','2','Ա���������Ͽ�','data/hrtools/2002109111840.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('137','2','Ա������','data/hrtools/2002109111830.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('138','2','��Ա���������','data/hrtools/2002109111817.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('139','2','������ҵ����','data/hrtools/2002109111806.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('140','2','�������ϼ�¼��','data/hrtools/2002109111752.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('141','2','�������ϱ�','data/hrtools/2002109111314.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('142','2','�����ձ���','data/hrtools/2002109111305.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('143','2','���������±���','data/hrtools/2002109111247.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('144','2','���¿����ƶ�','data/hrtools/2002109111229.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('145','2','���¹����ƶ�����','data/hrtools/2002109111211.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('146','2','���¹���ĳ��������','data/hrtools/2002109111201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('147','2','���¶�̬���������ϱ�','data/hrtools/2002109111148.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('148','2','���µǼǱ�','data/hrtools/2002109111133.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('149','2','���²����±���','data/hrtools/2002109111119.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('150','2','���±�����浥','data/hrtools/2002109111109.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('151','2','���±䶯�����','data/hrtools/2002109111059.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('152','2','������Ա��Ǩ�ƻ���','data/hrtools/2002109111046.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('153','2','�����˲Ŵ�����','data/hrtools/2002109111032.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('154','2','��λְ��˵����','data/hrtools/2002109111022.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('155','2','���µ��������ƶ�','data/hrtools/2002109110951.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('156','3','ְԱ��֤��','data/hrtools/2008100402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('157','3','��λ�ֻ��ƶ�','data/hrtools/2007121802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('158','3','�����ļ��ǼǱ�','data/hrtools/2007121202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('159','3','Ա���ֲᣨ�����ࣩ','data/hrtools/2007121201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('160','3','ĳ���ӹ�˾������Դ�������','data/hrtools/2007120402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('161','3','���������ƶȷ�������-���泧��','data/hrtools/2007120401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('162','3','��˾Ա���ݽ�����취','data/hrtools/2007112201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('163','3','���˱��浥','data/hrtools/2007112002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('164','3','����ֵ�ڹ����ƶ�','data/hrtools/2007112001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('165','3','������Դͳ�Ʒ���(�ձ�','data/hrtools/2007111302.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('166','3','�⽻�籣������','data/hrtools/2007111301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('167','3','ģ�߹���Ա����λ�ʸ�����','data/hrtools/2007103102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('168','3','������Դ�滮�����ֲ�','data/hrtools/2007103101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('169','3','Ա����Ϊ���ǹ淶�ı�','data/hrtools/2007102902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('170','3','��Ա����ְ��֪','data/hrtools/2007102901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('171','3','�����๤��Ա����λ�ʸ����1','data/hrtools/2007102602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('172','3','��λ��Ա����ͼ','data/hrtools/2007102601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('173','3','��ҵ�ۺϹ������������','data/hrtools/2007090602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('174','3','���¹���ĳ��������','data/hrtools/2007082701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('175','3','�칫�����ʹ���涨','data/hrtools/2007082001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('176','3','Ա�����������涨','data/hrtools/2007081602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('177','3','Ա�������ƶȷ���','data/hrtools/2007081601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('178','3','�绰����涨','data/hrtools/2007080602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('179','3','��ȫ�����ƶ�','data/hrtools/2007080601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('180','3','������ʱ��Ա����취','data/hrtools/2007080101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('181','3','��������','data/hrtools/2007051901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('182','3','Ա��ְλ�䶯֪ͨ��','data/hrtools/2007043002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('183','3','Ա����λƸ�ð취','data/hrtools/2007042902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('184','3','Ա����װ����涨','data/hrtools/2007042602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('185','3','Ա�����ù�������涨','data/hrtools/2007042601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('186','3','Ա��ʳ�ù���涨','data/hrtools/2007041902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('187','3','Ա������ݼٹ���涨','data/hrtools/2007041901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('188','3','Ա������ϸ��','data/hrtools/2007041702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('189','3','Ա����ְ����ϸ��','data/hrtools/2007041701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('190','3','�ڲ��ͻ�Ͷ�߹���취','data/hrtools/2007040502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('191','3','���ͽ������뵥','data/hrtools/2007040301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('192','3','���ʹ�������ֲ�','data/hrtools/2007032302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('193','3','5S������ҵָ����','data/hrtools/2007032301.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('194','3','��˾�칫�ҷ��Ĵ������','data/hrtools/2007022602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('195','3','������Ա��ְ����','data/hrtools/2007022601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('196','3','�����걨�涨','data/hrtools/2007020501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('197','3','�ļ��շ��涨','data/hrtools/2007010502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('198','3','ѯ֤��','data/hrtools/2007010501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('199','3','��Ա��Υ����Ϊ�Ĵ���ִ�м�¼','data/hrtools/2006122902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('200','3','��ҵԱ����������','data/hrtools/2006122901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('201','3','���²�������λְ��','data/hrtools/2006122602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('202','3','����������׼��ҵ���','data/hrtools/2006122601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('203','3','��˾ְ���ƻ���������취','data/hrtools/2006122301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('204','3','����Ȩ�޻��ֱ�','data/hrtools/2006120502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('205','3','���¾���Ȩһ����','data/hrtools/2006120501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('206','3','��˾���¹ʷ���������','data/hrtools/2006112702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('207','3','���¹������Ͽ�','data/hrtools/2006112701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('208','3','��ְ��Ա�ۺ��ձ���','data/hrtools/2006111601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('209','3','��;�÷������','data/hrtools/2006110902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('210','3','��ҵԱ���ճ����������','data/hrtools/2006110901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('211','3','��ǲ֪ͨ��','data/hrtools/2006110702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('212','3','�����߰쵥','data/hrtools/2006110701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('213','3','�ճ�������涨','data/hrtools/2006103102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('214','3','����֤ͳ�Ʊ�','data/hrtools/2006101501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('215','3','ʮ��Ա��������','data/hrtools/2006091801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('216','3','��������Э����','data/hrtools/2006091302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('217','3','���¶�̬�ͷ������ϱ�','data/hrtools/2006090701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('218','3','�����������������λ�ֲ��','data/hrtools/2006082602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('219','3','���Ź��������','data/hrtools/2006082601.rtf','0','','0');
INSERT INTO `qs_hrtools` VALUES ('220','3','�˾�Ȩ�޹���','data/hrtools/2006081202.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('221','3','��ʱ��Ա�����','data/hrtools/2006081002.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('222','3','��������','data/hrtools/2006081001.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('223','3','����Ǽǲ�','data/hrtools/2006080402.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('224','3','�������������','data/hrtools/2006072402.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('225','3','�����ֹ�Ͷ���ͬ������','data/hrtools/2006043002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('226','3','����ͨ����','data/hrtools/2006043001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('227','3','���͹���','data/hrtools/2006042801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('228','3','��ҵ�Ļ���ʶ������','data/hrtools/2006040402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('229','3','����Ա���ʺϲ��ű��','data/hrtools/2006040401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('230','3','���澯���¼����','data/hrtools/2006032903.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('231','3','��ͷ��������','data/hrtools/2006032902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('232','3','�������������Ͽ���','data/hrtools/2006032901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('233','3','ÿ�ܻ������','data/hrtools/2006031802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('234','3','����Ա��ָ��������','data/hrtools/206031801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('235','3','ְҵ���Ľ׶ν綨��','data/hrtools/2006031503.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('236','3','�������������','data/hrtools/2006031502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('237','3','���ӹ�˾��λ������','data/hrtools/2006031501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('238','3','���׳е��Ĺ����ɫ������','data/hrtools/2006030803.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('239','3','�Ŷӽ���ԭ���','data/hrtools/2006030802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('240','3','��Ȩ������','data/hrtools/2006030602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('241','3','��Ա���������ܱ�','data/hrtools/2006022102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('242','3','��˾�鿯����취','data/hrtools/2006022101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('243','3','��Ȩ�����嵥','data/hrtools/2006021802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('244','3','��˾���˰칫PC�ǼǱ�','data/hrtools/2006021501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('245','3','��˾�ж�������־��','data/hrtools/2006021302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('246','3','��ҵ�������ݵ����ձ���','data/hrtools/2006021301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('247','3','���볧�������','data/hrtools/2006020701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('248','3','��������������ĸ�ʽ','data/hrtools/2005092602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('249','3','Ա�������᰸ʵʩ��Ч��','data/hrtools/2005092102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('250','3','Ա�����ɴ���֪ͨ��','data/hrtools/2005092101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('251','3','������ȱ��ƽ���','data/hrtools/2005090502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('252','3','���¶�̬�����ÿ��Ʊ�','data/hrtools/2005090501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('253','3','��ʾ����','data/hrtools/2005081002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('254','3','��ҵ��֤�������涨��','data/hrtools/2005081001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('255','3','ְ��������־','data/hrtools/2005073001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('256','3','���½��ܺ�','data/hrtools/2005072302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('257','3','���������涨��','data/hrtools/2005072301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('258','3','��ҵ��Ա״����¼��','data/hrtools/2005071802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('259','3','��ҵ��������ͳ�Ʊ�','data/hrtools/2005071801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('260','3','��ҵԱ�����˱����','data/hrtools/2005051601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('261','3','Ա��ҽ�Ʋ����涨','data/hrtools/2005051102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('262','3','ֵ��ֵҹ���ͷѸ����취','data/hrtools/2005012803.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('263','3','Ա����װ����涨','data/hrtools/2005012802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('264','3','Ա���򿨹���涨','data/hrtools/2005012801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('265','3','Ա�����ݰ취','data/hrtools/2005012503.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('266','3','���ڷż�ϸ��','data/hrtools/2005012502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('267','3','ֵ��ϸ��','data/hrtools/2005012501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('268','3','Ա�����°�����ϸ��','data/hrtools/2005012003.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('269','3','Ա������ϸ��','data/hrtools/2005012002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('270','3','Ա������ʵʩϸ��','data/hrtools/2005012001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('271','3','����Ա�����ջʱ���¼','data/hrtools/2005011401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('272','3','�������ܸ�λ����˵����','data/hrtools/2005011202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('273','3','ͳ�ƹ滮����Ա����˵����','data/hrtools/2005011201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('274','3','���¹����ƶ�����','data/hrtools/2005010303.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('275','3','�������ƶ�','data/hrtools/2005010302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('276','3','���¹������','data/hrtools/20050103.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('277','3','������Ը��','data/hrtools/2004110502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('278','3','Ա����չ�滮��','data/hrtools/2004110302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('279','3','Ա�������ֻ��Ǽǿ�','data/hrtools/2004110301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('280','3','ҵ����Ƽ��ֱ�','data/hrtools/2004103001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('281','3','ְλ˵���飺���۴���','data/hrtools/2004621144311.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('282','3','ְλ˵���飺����ͳ��Ա','data/hrtools/2004621144042.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('283','3','ְλ˵���飺�绰���۴���','data/hrtools/2004621143843.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('284','3','���������ܽ��','data/hrtools/2004512150407.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('285','3','ְ����������','data/hrtools/2004512150349.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('286','3','��ְ�ƽ��嵥','data/hrtools/200441101848.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('287','3','�������ܸ�λְ��','data/hrtools/200441101822.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('288','3','Ա�����������¼��','data/hrtools/2004318162422.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('289','3','�Ƽ����ʷ��ȵ����','data/hrtools/2004318162406.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('290','3','�½�Ա�������ɹ�����','data/hrtools/2004223165223.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('291','3','�·�Ա��ͳ�Ʊ�','data/hrtools/2004223165154.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('292','3','�����걨��','data/hrtools/2004211160827.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('293','3','���������±���','data/hrtools/20042492933.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('294','3','��Ա������Ʊ�','data/hrtools/2004112150142.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('295','3','���ͽ������뵥','data/hrtools/2004112145837.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('296','3','ְԱͳһн��ȼ���','data/hrtools/200412154836.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('297','3','�¶��ò�ͳ�Ʊ�','data/hrtools/20031229104927.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('298','3','��ְѵ����ѵ����','data/hrtools/2003124155617.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('299','3','�½�ְԱ�����������','data/hrtools/2003124155316.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('300','3','Ա��ְ��ȼ����ֱ�','data/hrtools/2003111101156.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('301','3','��Ա��֤��¼��','data/hrtools/2003106155958.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('302','3','�������ڱ�','data/hrtools/2003106155642.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('303','3','��������˵����','data/hrtools/2003924140507.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('304','3','���Ź��������','data/hrtools/200399154008.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('305','3','���˱��浥','data/hrtools/200387111347.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('306','3','ֵ��ͷ����뵥','data/hrtools/200387111335.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('307','3','Ա����֤��','data/hrtools/20038295343.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('308','3','Ա�����ڼ�¼��','data/hrtools/2003717102531.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('309','3','�ۺϹ��������','data/hrtools/2002109112347.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('310','3','ְ������','data/hrtools/2002109112337.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('311','3','Ա������֪ͨ��','data/hrtools/2002109112323.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('312','3','Ա�������±���','data/hrtools/2002109112314.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('313','3','Ա�����ͽ��������','data/hrtools/2002109112302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('314','3','Ա�����͵ǼǱ�','data/hrtools/2002109112253.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('315','3','Ա�����ʱ䶯�����','data/hrtools/2002109112240.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('316','3','Ա����λ�䶯֪ͨ��','data/hrtools/2002109112232.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('317','3','Ա����ְ��','data/hrtools/2002109112222.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('318','3','Ա�������������ձ�','data/hrtools/2002109112211.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('319','3','����������','data/hrtools/2002109112204.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('320','3','ҵ��Ա�����ձ�','data/hrtools/2002109112153.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('321','3','��Ա��ְ������','data/hrtools/2002109112142.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('322','3','��Ա�������뵥','data/hrtools/2002109112132.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('323','3','�빺��','data/hrtools/2002109112120.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('324','3','���͵ǼǱ�','data/hrtools/2002109112104.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('325','3','���ɴ���֪ͨ��','data/hrtools/2002109112052.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('326','3','��˾��������һ����','data/hrtools/2002109112045.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('327','3','��˾���ɹ涨','data/hrtools/2002109112036.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('328','3','����˵����','data/hrtools/2002109112027.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('329','3','�������ݵ����ձ���','data/hrtools/2002109112018.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('330','3','��̸���ɱ�','data/hrtools/051019x.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('331','3','ְԱƷ��������','data/hrtools/1.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('332','3','ְԱƷ�п��˱�','data/hrtools/2.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('333','3','ְԱƷ�з�����','data/hrtools/3.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('334','3','Ա���������뽨����','data/hrtools/4.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('335','4','�����Ͷ���ͬ������2008��','data/hrtools/2007112408.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('336','4','�����һ����������Ϊ�����Ͷ���ͬ����','data/hrtools/2007112407.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('337','4','�޹̶������Ͷ���ͬ�������£�','data/hrtools/2007112406.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('338','4','������ǲ�Ͷ���ͬ�������£�','data/hrtools/2007112405.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('339','4','����ʡ�Ͷ���ͬ�������£�','data/hrtools/2007112404.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('340','4','�̶������Ͷ���ͬ�������£�','data/hrtools/2007112403.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('341','4','��ȫ���ƴ�ҵ��Աʹ���Ͷ���ͬ�������£�','data/hrtools/2007112402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('342','4','��ݸ��ְ���Ͷ���ͬ�������£�','data/hrtools/2007112401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('343','4','������ʾ�Ӫ��ͬ����Ӣ�ģ�','data/hrtools/2007031901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('344','4','�Ͷ���ͬ��Ӣ�İ棩','data/hrtools/2007031202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('345','4','���������ͬ','data/hrtools/2007031201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('346','4','���������ͬ','data/hrtools/2007030102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('347','4','�������ܺ�ͬ��','data/hrtools/2007030101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('348','4','�����Ͷ���ͬ','data/hrtools/2007020702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('349','4','�����Ÿ�ʽ����','data/hrtools/2007020701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('350','4','ʵϰ��Լ','data/hrtools/2007020502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('351','4','�����ͬ','data/hrtools/2007020202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('352','4','������Ա����Э��','data/hrtools/2007020201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('353','4','Ƹ���⼮������Ա��ͬ','data/hrtools/2007012502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('354','4','����ϵͳƸ�ú�ͬ','data/hrtools/2007011002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('355','4','������Э������','data/hrtools/2007011001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('356','4','��ҵԱ�����ܺ�ͬ','data/hrtools/2006120701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('357','4','��ҵԱ����ҵ���ƺ�ͬ','data/hrtools/2006120702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('358','4','��֤���Լ','data/hrtools/2006111402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('359','4','Ƹ��','data/hrtools/2006111401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('360','4','���Ժ˶���','data/hrtools/2006080802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('361','4','�½���Ա���ñ�','data/hrtools/2006080401.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('362','4','ǩԼ��׼��','data/hrtools/2006072101.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('363','4','��ѯ��¼��','data/hrtools/2006060602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('364','4','����Ͷ���֪ͬͨ��','data/hrtools/2006060601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('365','4','�Ͷ���ͬ˳��֪ͨ��','data/hrtools/2006041202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('366','4','����Ͷ���ͬЭ����','data/hrtools/2006041201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('367','4','��ֹ�Ͷ���֪ͬͨ��','data/hrtools/2006041003.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('368','4','�Ͷ���ͬ��ֹȷ����','data/hrtools/2006041002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('369','4','�Ͷ���ͬ���Э����','data/hrtools/200604101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('370','4','�Ͷ���ͬǩ����������','data/hrtools/2006040602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('371','4','AA��˾�Ͷ���ͬ������','data/hrtools/2006040601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('372','4','����Ͷ����ҵ�Ͷ���ͬ˵��','data/hrtools/2006031303.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('373','4','ȫԱ�Ͷ���ͬ��','data/hrtools/2006031302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('374','4','������ҵ�Ͷ���ͬ��','data/hrtools/2006031301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('375','4','�⼮������ԱƸ���ͬ','data/hrtools/2005080801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('376','4','���������ҵ�Ͷ���ͬ','data/hrtools/2005070102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('377','4','����Ͷ���֤ͬ����','data/hrtools/2005070101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('378','4','��Ӷ��ͬ�鷶��','data/hrtools/2005061401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('379','4','��Ӫ������Ա��֤��','data/hrtools/2005031602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('380','4','������ҵ����Э��','data/hrtools/2005031601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('381','4','����Ͷ����ҵ�Ͷ���ͬ','data/hrtools/2005031401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('382','4','��ְԱ��������Լ��','data/hrtools/2005011802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('383','4','�Ͷ���ͬǩ�ձ�����','data/hrtools/2004122002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('384','4','ѧ��ʵϰЭ��','data/hrtools/2004120903.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('385','4','�Ͷ��������Э����','data/hrtools/2004120603.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('386','4','�Ͷ��������������','data/hrtools/2004120602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('387','4','�����ֹ����Ͷ���ͬͨ��','data/hrtools/2004120601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('388','4','�Ͷ���ͬ˳�ӵǼǱ�','data/hrtools/2004714142636.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('389','4','�Ͷ���ͬ��ֹ��������������','data/hrtools/2004714142621.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('390','4','ְԱ����֪ͨ��','data/hrtools/2002109112727.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('391','4','��Ƹ��¼�ã�֪ͨ��','data/hrtools/2002109112719.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('392','4','Ա��Ƹ���ƶ�','data/hrtools/2002109112711.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('393','4','Ա����ְ��','data/hrtools/2002109112705.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('394','4','��Ա����ѡ�Ƚϱ�','data/hrtools/2002109112657.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('395','4','��Ա����ѡ�����','data/hrtools/2002109112649.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('396','4','��Ա�����ÿ����','data/hrtools/2002109112639.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('397','4','��Ա�����ñ�','data/hrtools/2002109112632.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('398','4','����Ա�����˱�','data/hrtools/2002109112624.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('399','4','���ú�ͬ��','data/hrtools/2002109112616.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('400','4','���ò쿴֪ͨ��','data/hrtools/2002109112603.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('401','4','���ò鿴֪ͨ','data/hrtools/2002109112556.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('402','4','���ñ�֤��','data/hrtools/2002109112546.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('403','4','��Ա���ñ�׼','data/hrtools/2002109112533.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('404','4','ƸԼ��Ա���ú˶���','data/hrtools/2002109112524.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('405','4','Ƹ����','data/hrtools/2002109112516.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('406','4','�Ͷ���ͬ����涨','data/hrtools/2002109112455.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('407','5','��˰�걨������дʹ��˵��','data/hrtools/2007112202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('408','5','2007�꼨Ч���˱�׼��','data/hrtools/2007110502.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('409','5','�����๤��Ա����λ�ʸ�����','data/hrtools/2007110501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('410','5','XX��˾ͣн��ְ�涨','data/hrtools/2007101602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('411','5','������ҵн���ƶ�','data/hrtools/2007101601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('412','5','��ҵ��������ƶ�','data/hrtools/2007101102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('413','5','����нˮ������','data/hrtools/2007101101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('414','5','н������³�','data/hrtools/2007100802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('415','5','���ʹ�����ǲ������ʾ��','data/hrtools/2007100801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('416','5','���ʱ��浥','data/hrtools/2007092802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('417','5','����פ����Ա�Ľ�������','data/hrtools/2007092801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('418','5','���ʵ������','data/hrtools/2007092602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('419','5','���ʱ�׼�����Ű취','data/hrtools/2007092601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('420','5','����Ԥ���','data/hrtools/2007092402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('421','5','��˾нˮ������','data/hrtools/2007092401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('422','5','�Ƽ����ʵ������浥','data/hrtools/2007091902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('423','5','��е����ҵн���ƶ�','data/hrtools/2007091901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('424','5','��ʱ���ʺ˶���','data/hrtools/2007091702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('425','5','�ҵ�����ҵн���ƶ�','data/hrtools/2007091701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('426','5','�����������ƶ�','data/hrtools/2007091302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('427','5','ĳ��ҵԱ�����ݽ���ȡ֤��','data/hrtools/2007091301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('428','5','�Ƽ����ʹ���취','data/hrtools/2007091102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('429','5','���ܹ��ʹ���涨','data/hrtools/2007091101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('430','5','н�ʵ����','data/hrtools/2007090802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('431','5','��͹����ʲ��㷽��','data/hrtools/2007090801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('432','5','�ƶ���͹���ȷ���취','data/hrtools/2007082902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('433','5','�����������涨','data/hrtools/2007082901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('434','5','н���븣������','data/hrtools/2007080102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('435','5','������Ա��Ч���𷢷Ű취','data/hrtools/2007051902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('436','5','Ա�����ʹ�����','data/hrtools/2007043001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('437','5','ĳ���ӹ�˾Ա��н���ƶ�','data/hrtools/2007040501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('438','5','н�ʸ�����Ʊ�','data/hrtools/2007033102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('439','5','н�ʵȼ����ɱ�','data/hrtools/2007033101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('440','5','�����Ŷ�н�꼤�������','data/hrtools/2007031602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('441','5','������Ա���ʹ���취','data/hrtools/2007031601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('442','5','Ա��������ȫ�����ƶ�','data/hrtools/2006121802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('443','5','Ա�������������֧���취','data/hrtools/2006121801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('444','5','Ա�����˲�����֧���취','data/hrtools/2006112102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('445','5','����Ԥ���','data/hrtools/2006090402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('446','5','�����������ľ������','data/hrtools/2006090401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('447','5','��ҵ����������Ŀ����������Ʊ�','data/hrtools/2006083102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('448','5','�����������Ա�׼����','data/hrtools/2006083101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('449','5','ְ��������н�ʼ����','data/hrtools/2006071702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('450','5','���ӷ������','data/hrtools/2006071701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('451','5','н�ʹ������������������','data/hrtools/2006070802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('452','5','�������ʵ������ͼ���','data/hrtools/2006070801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('453','5','н�ʵ�����ͨ���߱�','data/hrtools/2006062102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('454','5','���ʷ��Ź������','data/hrtools/2006062101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('455','5','��ҵԱ��������Ϣ��','data/hrtools/2006061602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('456','5','���ʸ����г����鷽�����','data/hrtools/2006061601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('457','5','���ʹ������߼���','data/hrtools/2006061402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('458','5','��Ŀ����滮��','data/hrtools/2006061401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('459','5','����ְλ���ʱ�׼��Ʊ�','data/hrtools/2006052702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('460','5','���ʽṹ������','data/hrtools/2006052402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('461','5','��ҵ�·ݸ��������ƻ�','data/hrtools/2006032703.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('462','5','���ʹ�����ǲ������','data/hrtools/2006032702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('463','5','��˾�����ƶȷ���','data/hrtools/2006032701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('464','5','Ա��Ӧ��Ӧ��н��','data/hrtools/2006082402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('465','5','�깤�ʻ���ƻ���','data/hrtools/2006082401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('466','5','��ҵԱ�����ռ�¼��','data/hrtools/2005092802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('467','5','����λ���ܹ��ʽṹ��','data/hrtools/2005092801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('468','5','��������֧Ԥ���','data/hrtools/2005080302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('469','5','Ա��ֵ��ͷ������','data/hrtools/2005080301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('470','5','ְ������ίԱ����ñ�����','data/hrtools/20050801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('471','5','��ҵԱ���ش��˲����������','data/hrtools/2005071502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('472','5','Ա����ɥϲ�첹�������','data/hrtools/2005071501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('473','5','�ṹ���ʱ�','data/hrtools/2005053001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('474','5','ĳ��˾н���ƶ�','data/hrtools/2005041101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('475','5','Ա������ְ����Ʊ�','data/hrtools/2005030902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('476','5','Ա��нˮ������','data/hrtools/2004311164334.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('477','5','�·ݹ���������','data/hrtools/2004226155146.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('478','5','�Ƽ�н�˶�֪ͨ��','data/hrtools/2004226155134.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('479','5','�ձ�Ա�����ʼ���','data/hrtools/200415154938.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('480','5','������Ա������ɼ���','data/hrtools/200415154926.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('481','5','����������Ա����˶���','data/hrtools/2003116145018.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('482','5','�Ǽ����ʷ��ȵ����','data/hrtools/20031013154737.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('483','5','�Ƽ�����ÿ�ձ���','data/hrtools/20031013154630.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('484','5','��Ա��ְ�񡢹��ʺ�׼��','data/hrtools/2003721155346.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('485','5','���ʵǼǱ�','data/hrtools/2003721155335.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('486','5','��������˶���','data/hrtools/2002109114740.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('487','5','����Ա��������','data/hrtools/2002109114726.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('488','5','�����Ա����˶�','data/hrtools/2002109114709.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('489','5','����������˶���','data/hrtools/2002109114651.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('490','5','��������˶���һ��','data/hrtools/2002109114629.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('491','5','��������˶�������','data/hrtools/2002109114614.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('492','5','�������Ľ�������','data/hrtools/2002109114541.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('493','5','Ա��н��','data/hrtools/2002109113720.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('494','5','Ա������ϼƱ�','data/hrtools/2002109113706.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('495','5','Ա������ְ���˶���','data/hrtools/2002109113649.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('496','5','Ա�����ʵ�����','data/hrtools/2002109113637.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('497','5','Ա�����ʵ�','data/hrtools/2002109113627.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('498','5','Ա�����ʱ�','data/hrtools/2002109113612.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('499','5','Ա�����������','data/hrtools/2002109113602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('500','5','Ա�����ڹ�н�����','data/hrtools/2002109113555.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('501','5','Ԥ֧����������','data/hrtools/2002109113538.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('502','5','н���ƶ�','data/hrtools/2002109113529.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('503','5','н���ƶ�','data/hrtools/2002109113517.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('504','5','��Ա��ְ���ʱ�׼��','data/hrtools/2002109113259.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('505','5','��Ա�����ʺ˶���','data/hrtools/2002109113241.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('506','5','������Ա������ɼ���','data/hrtools/2002109113233.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('507','5','������Ա������ɼ���','data/hrtools/2002109113219.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('508','5','�ձ�Ա�����ʼ����','data/hrtools/2002109113038.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('509','5','�깤�ʻ���ʹ�üƻ���','data/hrtools/2002109113029.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('510','5','�������뵥','data/hrtools/2002109113019.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('511','5','��н�����','data/hrtools/2002109113007.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('512','5','�����Ա����˶���','data/hrtools/2002109112954.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('513','5','�Ƽ����ʼ����','data/hrtools/2002109112946.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('514','5','��˾�Ͷ����ʽṹ','data/hrtools/2002109112937.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('515','5','��˾�����ƶȷ���','data/hrtools/2002109112929.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('516','5','����ͳ�Ʊ�','data/hrtools/2002109112920.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('517','5','���ʿ۽ɱ�','data/hrtools/2002109112912.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('518','5','���ʷ�����','data/hrtools/2002109112904.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('519','5','���ʵ�����','data/hrtools/2002109112854.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('520','5','���ʵǼǱ�','data/hrtools/2002109112848.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('521','5','���ʱ�׼��','data/hrtools/2002109112840.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('522','5','����������뵥','data/hrtools/2002109112833.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('523','5','������������','data/hrtools/2002109112826.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('524','5','���ʵ����','data/hrtools/5.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('525','5','�Ӱ�����뵥','data/hrtools/6.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('660','8','��˾н��������鷽��','data/hrtools/2007012302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('659','8','ҵ��������ѵ���ݹ���','data/hrtools/2007032701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('658','8','��ѵЭ��','data/hrtools/2007032702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('657','8','������ѵ��������ְ��','data/hrtools/2007061101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('656','8','��ְԱ����ѵ��������','data/hrtools/2007061402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('655','8','��ְԱ����ѵ����ɼ���','data/hrtools/2007062001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('654','8','��ѵ���ٱ�','data/hrtools/2007072602.ppt','0','','0');
INSERT INTO `qs_hrtools` VALUES ('653','8','����Ա��ְҵ��ʶ','data/hrtools/2007090301.ppt','0','','0');
INSERT INTO `qs_hrtools` VALUES ('651','8','���ѧϰ�������涨','data/hrtools/2007122401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('652','8','ҵ�������ѵ�̲�','data/hrtools/2007090302.ppt','0','','0');
INSERT INTO `qs_hrtools` VALUES ('650','8','�򹫳�������涨','data/hrtools/2007122402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('649','6','�Ӱ�����뵥','data/hrtools/2002109114909.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('648','6','�Ӱ�����ƶ�','data/hrtools/2002109114918.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('647','6','�Ӱ����뵥','data/hrtools/2002109114926.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('646','6','�����ƶ�','data/hrtools/2002109114936.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('645','6','��Ա���ڱ�','data/hrtools/2002109114945.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('644','6','Ա����ʱ��¼��','data/hrtools/2002109115031.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('643','6','Ա�����ڼ�¼��','data/hrtools/2002109115045.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('642','6','Ա��ǩ����','data/hrtools/2002109115058.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('641','6','Ա����ٵ�','data/hrtools/2002109115104.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('640','6','Ա����ٹ�����','data/hrtools/2002109115113.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('639','6','�¶ȿ���ͳ�Ʊ�','data/hrtools/2002109115119.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('638','6','ְԱǩ����','data/hrtools/2002109115126.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('637','6','ȱ�ڱ����','data/hrtools/200431160648.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('636','6','��˾ְԱǩ����','data/hrtools/200431160705.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('635','6','�ر��ݼ���ٵ�','data/hrtools/200467145255.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('634','6','��˾�������ݼ����ձ�','data/hrtools/200467145309.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('633','6','Ա�����ں��ݼٵĹ涨','data/hrtools/2005011902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('632','6','Ա�������ձ���','data/hrtools/2005030701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('631','6','ֵ��ʱ����֪ͨ��','data/hrtools/2005030702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('630','6','Ա�����ȱ���ۼƱ�','data/hrtools/2005030703.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('629','6','�����ֻ������','data/hrtools/2005032201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('628','6','Ա���Ӱ�ϸ��','data/hrtools/2005051103.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('627','6','Ա����ٹ�����','data/hrtools/2005083101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('626','6','ֵ���滻������','data/hrtools/2006021503.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('625','6','XX���繫˾���������','data/hrtools/2006030101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('624','6','�������Ƶ����۱�׼','data/hrtools/2006030102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('623','6','�ڲ���ѵ���ڱ�','data/hrtools/2006030103.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('622','6','���Լ�¼��','data/hrtools/2006030601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('621','6','ֵ�ల�ű�','data/hrtools/2006030801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('620','6','�ݼٳ���','data/hrtools/2006050801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('619','6','���ݼټ��㷽��','data/hrtools/2006080801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('618','6','�ٱ�涨��','data/hrtools/2006081501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('617','6','ְ����Ȩ����������ҵ�취','data/hrtools/2006081502.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('616','6','���ڹ���취','data/hrtools/2006081801.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('615','6','���ݼ������','data/hrtools/2006082502.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('614','6','��˾ְԱ�����¿������','data/hrtools/2006100802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('613','6','���ڹ����ƶ�','data/hrtools/2007073001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('612','6','������Ա¼���ƶ�','data/hrtools/2007073002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('588','7','�������涨2','data/hrtools/2007122102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('589','7','�������涨1','data/hrtools/2007122101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('590','7','�������취','data/hrtools/2007082002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('591','7','���ڳ�����ҵ����ͼ','data/hrtools/2006090702.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('592','7','�����÷ѱ�֧��','data/hrtools/2006082901.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('593','7','������������ҵ����ͼ','data/hrtools/2006072401.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('594','7','���������','data/hrtools/2005042903.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('595','7','�Ͷ���ͬ����','data/hrtools/2005042902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('596','7','���Խ�����۱�','data/hrtools/2005042901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('597','7','�̳̳���������쵥','data/hrtools/200418150456.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('598','7','Ԥ���÷����뵥','data/hrtools/20031215155232.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('599','7','��ȳ����������ݷô��������','data/hrtools/20031215155113.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('600','7','������ܿ��˼������','data/hrtools/2003128160724.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('601','7','�̳̳���ѱ�����','data/hrtools/2003128160545.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('602','7','����ҵ�񱨸���','data/hrtools/2003928154958.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('603','7','һ�ܳ���Ԥ�������','data/hrtools/2002109115549.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('604','7','ҵ����Ա�������','data/hrtools/2002109115540.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('605','7','�̳��÷������','data/hrtools/2002109115532.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('606','7','������Ʒ����ص�','data/hrtools/2002109115524.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('607','7','�������뵥','data/hrtools/2002109115515.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('608','7','�������뵥��һ��','data/hrtools/2002109115442.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('609','7','�������뵥������','data/hrtools/2002109115434.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('610','7','�����÷��嵥','data/hrtools/2002109115423.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('611','7','�����÷ѱ����嵥','data/hrtools/2002109115415.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('661','8','�½�Ա��ְǰ��ѵ��','data/hrtools/2007012301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('662','8','��ҵ��ѵ��ȫ����������','data/hrtools/2006123102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('663','8','��ҵ��ѵ�߻���','data/hrtools/2006123101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('664','8','��ѵЭ����','data/hrtools/2006092102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('665','8','Ա����ѵ������','data/hrtools/2006071302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('666','8','�ϸ�ǰ������ȫ������Ƭ','data/hrtools/2006052202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('667','8','��Ա��ѵ������','data/hrtools/2005090702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('668','8','�ڲ���ѵ���ڱ�','data/hrtools/2005090701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('669','8','�ⲿ��ѵʵʩ��¼','data/hrtools/2005082902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('670','8','ְҵ��ѵ���ò���������','data/hrtools/2005081601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('671','8','������ѵ�����','data/hrtools/2005032202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('672','8','��ѵ���','data/hrtools/2005030403.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('673','8','��ְ��������','data/hrtools/2005030402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('674','8','�½�����Աѵ���̲�','data/hrtools/2005030401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('675','8','ְԱ��ѵ�����','data/hrtools/2005013103.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('676','8','Ա����ѵ��¼��','data/hrtools/2005013102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('677','8','��ǰ��Ա��ѵ�ƶ�','data/hrtools/2005013101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('678','8','Ա����ѵ����취','data/hrtools/2004122702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('679','8','��Ա����ѵ����','data/hrtools/2004122701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('680','8','Ա����ǰ��ѵ�涨','data/hrtools/2004122201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('681','8','Ա��������ѵ�ƶ�','data/hrtools/2004121502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('682','8','Ա��������ѵЭ����','data/hrtools/2004121501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('683','8','��ѵ������','data/hrtools/2004628141911.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('684','8','��ѵ�滮��','data/hrtools/2004628141856.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('685','8','�󻮹�����ְȨ���ֱ�','data/hrtools/200457161048.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('686','8','����������ְȨ���ֱ�','data/hrtools/200457160859.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('687','8','Ա����ѵ������Ϣ','data/hrtools/200457160652.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('688','8','��ְ������ѵ�ƻ������','data/hrtools/2004414155416.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('689','8','��ҵ��Ա��ְѵ��������','data/hrtools/20031224111113.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('690','8','�½�Ա���������ݼ���','data/hrtools/20031222155220.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('691','8','����������Ϊ�ķ�����','data/hrtools/20031222155201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('692','8','�Ӱ��¼��','data/hrtools/20031117155124.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('693','8','��ѵ���������','data/hrtools/20031117155018.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('694','8','��ְѵ��ѧԱ��������','data/hrtools/20031112160127.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('695','8','��Ա���������뼰�˶���','data/hrtools/20031024151032.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('696','8','ѵ���ܽᱨ���','data/hrtools/200392113359.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('697','8','���ѵ���ƻ���Ԥ���','data/hrtools/200392113343.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('698','8','ѵ����������','data/hrtools/200389105630.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('699','8','����ѵ�������','data/hrtools/2003728144512.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('700','8','�½�Ա���������ݼ���','data/hrtools/2003611143101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('701','8','��ҵ��Ա��ְѵ��������','data/hrtools/2003611143030.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('702','8','��ְԱ����ѵ�������','data/hrtools/2002109120613.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('703','8','��ְԱ����ѵ����ɼ�','data/hrtools/2002109120604.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('704','8','��ְѵ��ѧԱ�������','data/hrtools/2002109120549.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('705','8','��ְѵ��ʵʩ�����','data/hrtools/2002109120533.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('706','8','��ְѵ�����������','data/hrtools/2002109120527.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('707','8','��ְѵ������ɼ���','data/hrtools/2002109120518.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('708','8','��ְ������ѵ�ƻ�����','data/hrtools/2002109120509.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('709','8','Ա����ְѵ���ƶ�','data/hrtools/2002109120455.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('710','8','Ա����ѵ��������','data/hrtools/2002109120443.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('711','8','Ա����ѵ���˱�','data/hrtools/2002109120435.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('712','8','Ա����ѵ�ƻ���','data/hrtools/2002109120405.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('713','8','Ա����ѵ����','data/hrtools/2002109120357.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('714','8','Ա����ѵ������','data/hrtools/2002109120346.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('715','8','Ա����ѵ�����','data/hrtools/2002109120341.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('716','8','ѵ����Ч�����','data/hrtools/2002109120318.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('717','8','��Ա����ѵ�ƻ���','data/hrtools/2002109120310.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('718','8','��Ա����ѵ�ɼ����˱�','data/hrtools/2002109120301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('719','8','�½�ְԱ�����ɹ����','data/hrtools/2002109120254.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('720','8','�½�ְԱ����','data/hrtools/2002109120241.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('721','8','������ѵ�����','data/hrtools/2002109120234.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('722','8','��������ĶԲ߱�','data/hrtools/2002109120218.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('723','8','��ѵ�����ƶ�','data/hrtools/2002109120149.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('724','8','�����ѵ�ƻ�','data/hrtools/2002109120033.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('725','8','��Ħ������','data/hrtools/2002109120018.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('726','8','������ѵ��������ְ��','data/hrtools/2002109120011.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('727','8','����ѵ����ѧ��¼��','data/hrtools/2002109120000.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('728','8','����ѵ��','data/hrtools/2002109115953.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('729','8','�����ⲿѵ�������','data/hrtools/2002109115944.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('730','8','�����ⲿ��ѵ�����','data/hrtools/2002109115934.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('731','8','��ҵ��Ա��ְ��ѵ����','data/hrtools/2002109115924.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('732','8','�������������','data/hrtools/7.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('733','9','��Ƹרҵ����������Ա��ȼ�Ч���۱�׼','data/hrtools/2007122701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('734','9','��˾��Ч�����ƶ�','data/hrtools/2007102202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('735','9','��Ч����ʵʩ�취','data/hrtools/2007102201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('736','9','���۲��ż�Ч����ָ��','data/hrtools/2007101702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('737','9','��Ʋ���Ч����ָ��','data/hrtools/2007101701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('738','9','��Ч��������ֲ�','data/hrtools/2007072601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('739','9','�ܹ������ο���ָ��','data/hrtools/2007072002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('740','9','���̺�ͬԤ���㿼��ָ��','data/hrtools/2007072001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('741','9','Ԥ���ͬ����������ָ��','data/hrtools/2007071802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('742','9','������˿���ָ��','data/hrtools/2007071801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('743','9','�滮����������ָ��','data/hrtools/2007071602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('744','9','�г�����������ָ��','data/hrtools/2007071601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('745','9','�ֹ�˾������ָ��','data/hrtools/2007071302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('746','9','�ܹ���ʦ����ָ��','data/hrtools/2007071301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('747','9','�ܽ���ʦ����ָ��','data/hrtools/2007070902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('748','9','�ܻ��ʦ����ָ��','data/hrtools/2007070901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('749','9','�ܾ���ʦ����ָ��','data/hrtools/2007070402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('750','9','���۸��ܾ�����ָ��','data/hrtools/2007070401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('751','9','���ܾ���(���ޡ���Ǩ)����ָ��','data/hrtools/2007080202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('752','9','�������ܾ�����ָ��','data/hrtools/2007070201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('753','9','�����ܾ�����ָ��','data/hrtools/2007062702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('754','9','�ֳ����˷�ֵ��','data/hrtools/2007062701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('755','9','��Ӧ�����˷�ֵ��','data/hrtools/2007062502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('756','9','Ʒ�ʹ������˷�ֵ��','data/hrtools/2007062501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('757','9','�������������˷�ֵ��','data/hrtools/2007062202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('758','9','�����ƻ������˷�ֵ��','data/hrtools/2007062201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('759','9','ְԱ���幤���������˱�','data/hrtools/2007061401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('760','9','��˾�����в��쵼��ȹ������˱�','data/hrtools/2007061102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('761','9','��������ָ��','data/hrtools/2007060802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('762','9','������ָ��','data/hrtools/2007060801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('763','9','500ǿ�����KPI��Ч��������ֲ�','data/hrtools/2007060602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('764','9','Ա����Ч�Ľ��ƻ���','data/hrtools/2007060402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('765','9','Ա����Ч���˽�������','data/hrtools/2007060401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('766','9','Ա������̬��������','data/hrtools/2007053102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('767','9','Ա����������������','data/hrtools/2007053101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('768','9','Ա������ҵ��������','data/hrtools/2007052902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('769','9','�ɲ���Ч���˰취','data/hrtools/2007052901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('770','9','�ֳ��¶ȼ�Ч���˹���취','data/hrtools/2007052602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('771','9','BOM���˹���취','data/hrtools/2007052601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('772','9','����������Ա���˰취','data/hrtools/2007052202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('773','9','���ż�Ч��������취','data/hrtools/2007052201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('774','9','ÿ�����Ҽ���','data/hrtools/2007051602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('775','9','��ҵ��Ա����ɼ����˱�','data/hrtools/2007051601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('776','9','Ա�����˹���취','data/hrtools/2007042901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('777','9','�ؼ���Ч����ָ��ֽ��','data/hrtools/2007042301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('778','9','�����������ܼ༨Ч������','data/hrtools/2007041402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('779','9','�ʽ�����ܼ༨Ч������','data/hrtools/2007041401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('780','9','���������ܼ༨Ч������','data/hrtools/2007041102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('781','9','�г�Ӫ�����ܼ༨Ч������','data/hrtools/2007040902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('782','9','�ܾ���Ч������','data/hrtools/2007040901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('783','9','���۹�˾KPI��ɱ�','data/hrtools/2007032202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('784','9','ϵͳ����ʦ���ȿ��˱�','data/hrtools/2007032201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('785','9','����ļ�Ч��׼','data/hrtools/2007030802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('786','9','��С��ҵ��ϱ�','data/hrtools/2007030801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('787','9','ְ�ȼӸ��뼨Ч���������','data/hrtools/2007030602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('788','9','ְ���λ����Ҫ�ر�','data/hrtools/2007030601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('789','9','���´�������Ա���ȿ��˱�','data/hrtools/2006122302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('790','9','��ְԱ����ѵ���Գɼ���','data/hrtools/2006112902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('791','9','������Դ����ָ��KPI��','data/hrtools/2006112901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('792','9','������ȿ��˱�','data/hrtools/2006112402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('793','9','�������ع�����Ա��ȿ�����','data/hrtools/2006112401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('794','9','�ؼ�ְ����Ʊ�׼','data/hrtools/2006102002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('795','9','�������鷴����Ϣ��','data/hrtools/2006102001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('796','9','��ҵԱ��ƽʱ������¼��','data/hrtools/2006092802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('797','9','��ҵԱ������������','data/hrtools/2006092801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('798','9','���۹�˾KPI��ɱ�','data/hrtools/2006092101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('799','9','ͨ��Ʒ�ܰ��λKPI���ɱ�','data/hrtools/2006062702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('800','9','���۹�˾�û��������Ŀ��˹�ϵ��','data/hrtools/2006062701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('801','9','Ա���ۺϿ�����','data/hrtools/2006060802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('802','9','Ӫ��Ա��ҵ��������','data/hrtools/2006042502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('803','9','ҵ��λ��˾ְԱ�����±�','data/hrtools/2006042501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('804','9','����ҵ�ɼ���Ч�������ʿ��˱�䷶','data/hrtools/2006042201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('805','9','Ӫҵ������Ա�����¿������','data/hrtools/2006042202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('806','9','�и߲㾭��Ч���۱�','data/hrtools/2006042002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('807','9','������Ա��Ч���۱�','data/hrtools/2006042001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('808','9','������ҵ������������','data/hrtools/2006041802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('809','9','��ҵԱ������','data/hrtools/2006041801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('810','9','Ŀ��ִ��׷�ٿ�','data/hrtools/2006032203.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('811','9','������ȼ�Ч���˱�','data/hrtools/2006032202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('812','9','��׼��ҵʱ��������','data/hrtools/2006032201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('813','9','����Ա�ɼ���','data/hrtools/2006030603.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('814','9','������Ҫ��������','data/hrtools/2006022403.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('815','9','����ʵ��ͳ�Ʊ�','data/hrtools/2006022103.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('816','9','ҵ��˵����','data/hrtools/2006021003.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('817','9','����Ա�ɼ���','data/hrtools/2006021002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('818','9','��Ʋ�������������','data/hrtools/2006020703.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('819','9','���뼯�ż�Ч�����ñ�(���ž�����)','data/hrtools/051205.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('820','9','HR��Ч�Ľ��ƻ���','data/hrtools/2005091902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('821','9','��˾������Ա���ֱ�','data/hrtools/2005091901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('822','9','δ�μӿ�����Ա���','data/hrtools/2005091202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('823','9','�·��Ͷ����ɼ�齱��֪ͨ��','data/hrtools/2005091201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('824','9','������Ϊ��ʶ�������','data/hrtools/2005082901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('825','9','��ͨԱ��������','data/hrtools/2005081202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('826','9','������λ���¿�����','data/hrtools/2005081201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('827','9','����Ա��Ч��������','data/hrtools/2005072602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('828','9','Ա��ר��������','data/hrtools/2005072601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('829','9','��˾��Ϊ���˱�','data/hrtools/2005072002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('830','9','ת������������','data/hrtools/2005072001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('831','9','���´���Ա���ȿ��˱�','data/hrtools/2005071302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('832','9','�ͻ����ʼƻ���ʵ���ձ�','data/hrtools/2005071301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('833','9','�г�������Ա����ʵ���ۺϼ�¼��','data/hrtools/2005070502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('834','9','Ա���������ֹ���������','data/hrtools/2005070501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('835','9','Ա�����λ���ò��������','data/hrtools/2005062802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('836','9','��Ч���˷������������','data/hrtools/2005062801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('837','9','��ҵ������Ա������','data/hrtools/2005062402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('838','9','��ҵ������Ա���ֱ�','data/hrtools/2005062401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('839','9','��λ��ְȷ����','data/hrtools/2005061702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('840','9','��ҵ���¿��������','data/hrtools/2005061701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('841','9','��ҵרҵ��Ա����ɼ����˱�','data/hrtools/2005060602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('842','9','�ɼ���Ч���������','data/hrtools/2005060601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('843','9','Ա�����ȼ�Ч�������ֱ�','data/hrtools/2005053002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('844','9','��Ƚ��������ƶ�','data/hrtools/2005031802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('845','9','��ְͨԱ���˱�','data/hrtools/2005022503.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('846','9','�߼�ְԱ���˱�','data/hrtools/2005022502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('847','9','ְԱ���˰��ű�','data/hrtools/2005022501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('848','9','ҵ����Աҵ�������±���','data/hrtools/2005012603.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('849','9','����Ա�ɼ���','data/hrtools/2005012602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('850','9','������Ա�����տ�����','data/hrtools/2005012601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('851','9','ְԱ���˵����','data/hrtools/2005011801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('852','9','��Ҫ�ɲ������¿������2��','data/hrtools/2005011702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('853','9','��Ҫ�ɲ������¿������','data/hrtools/2005011701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('854','9','ְԱ�����ܽ��','data/hrtools/2005011002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('855','9','��˾ְԱ�����¿������','data/hrtools/2004122902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('856','9','�ֿ����Ա���˱�','data/hrtools/2004112901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('857','9','��ְͬ��Ա�������۷�����','data/hrtools/2004111602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('858','9','ְԱ�ֽ׶ο�����','data/hrtools/2004111201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('859','9','��Ч��������ͼ��','data/hrtools/2004110901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('860','9','Ա��������','data/hrtools/Ա��������.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('861','9','��Ч����������','data/hrtools/��Ч����������.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('862','9','�½��С��߼���Ա��������','data/hrtools/200471142521.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('863','9','������λ�����¿������','data/hrtools/200471142325.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('864','9','ְ�����˵����','data/hrtools/2004325153045.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('865','9','ְԱ������','data/hrtools/2004325153001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('866','9','��������ҵ������������','data/hrtools/200429154910.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('867','9','Ӫҵ����ҵ������������','data/hrtools/200429154819.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('868','9','��ͨԱ������ɼ����˱�','data/hrtools/20031023163618.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('869','9','��ȿ�����','data/hrtools/20031021152124.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('870','9','�ɲ�ָ����������','data/hrtools/2003108152536.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('871','9','ҵ�������涨��','data/hrtools/2003912151804.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('872','9','ƽʱ�ɼ���¼��','data/hrtools/2003813170616.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('873','9','���¹���ҵ�����˱�','data/hrtools/2003729150234.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('874','9','ҵ����Ա���˱�����','data/hrtools/2003630151032.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('875','9','����Ա�����˱�(��)','data/hrtools/2003630150959.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('876','9','������ҵ����������','data/hrtools/2002109121933.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('877','9','�ۺ��������˱�','data/hrtools/2002109121921.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('878','9','���Ҽ�����','data/hrtools/2002109121913.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('879','9','���ұ�����','data/hrtools/2002109121905.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('880','9','������Ա���˱�','data/hrtools/2002109121852.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('881','9','������Ա����ɼ�����','data/hrtools/2002109121843.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('882','9','��Ҫ��������','data/hrtools/2002109121832.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('883','9','ְԱƷ��������','data/hrtools/2002109121824.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('884','9','ְԱƷ�п��˱�','data/hrtools/2002109121811.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('885','9','ְԱƷ�з�����','data/hrtools/2002109121804.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('886','9','ְԱ���˱�','data/hrtools/2002109121755.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('887','9','ְԱ���幤����������','data/hrtools/2002109121741.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('888','9','ְԱ�׶ο�����','data/hrtools/2002109121728.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('889','9','Ա�����Ҽ�����','data/hrtools/2002109121714.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('890','9','Ա��ר��˱�','data/hrtools/2002109121706.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('891','9','Ա��ͨ����Ŀ���˱�','data/hrtools/2002109121658.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('892','9','Ӫҵ����ҵ����������','data/hrtools/2002109121630.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('893','9','Ӫ����Ա�������˱�','data/hrtools/2002109121554.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('894','9','ҵ����Ա���˱�','data/hrtools/2002109121543.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('895','9','ѡ�θɲ���ѡ�����ֱ�','data/hrtools/2002109121532.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('896','9','�໥���۱�','data/hrtools/2002109121512.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('897','9','��������ҵ����������','data/hrtools/2002109121503.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('898','9','�������ʦ������','data/hrtools/2002109121450.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('899','9','���¿�����','data/hrtools/2002109121442.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('900','9','��ͨԱ�����˱�','data/hrtools/2002109121433.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('901','9','��ͨԱ������ɼ�����','data/hrtools/2002109121423.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('902','9','��ȿ�����','data/hrtools/2002109121349.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('903','9','�����ƶ�','data/hrtools/2002109121328.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('904','9','���˱���','data/hrtools/2002109121317.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('905','9','������Ա�ۺ����ʿ���','data/hrtools/2002109121135.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('906','9','������Ա�������˱�','data/hrtools/2002109121123.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('907','9','���Ա��������','data/hrtools/2002109121114.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('908','9','������Ա�������˱�','data/hrtools/2002109121106.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('909','9','��Ч�����ƶ�','data/hrtools/2002109121053.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('910','9','��Ч������̸��','data/hrtools/2002109121043.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('911','9','��Ʋ���ҵ����������','data/hrtools/2002109121035.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('912','9','����Ա�����˱�','data/hrtools/2002109121018.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('913','9','������ܿ��˱�','data/hrtools/2002109121007.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('914','9','�в��쵼��ȹ�������','data/hrtools/2002109120958.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('915','9','���ڿ������ܱ�','data/hrtools/2002109120928.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('916','9','������Ϊ��ʶ������','data/hrtools/2002109120917.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('917','9','���Ź����ۺϲ�����','data/hrtools/2002109120910.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('918','10','��˾��ѵ��¼��','data/hrtools/2007111502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('919','10','��Ա��ְ��','data/hrtools/2007111501.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('920','10','Ա����ְ�ʼ��㷽��','data/hrtools/2007090601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('921','10','ְ�������Ȩ��','data/hrtools/2006091802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('922','10','ְ������˱����','data/hrtools/2006081701.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('923','10','��ְ�������ӵ�','data/hrtools/2005082401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('924','10','��ְ�����ʽ','data/hrtools/2005080802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('925','10','Ա����ְ����ԭ��','data/hrtools/2005011901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('926','10','Ա����ְ����취','data/hrtools/2004122202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('927','10','Ա����λ�䶯֪ͨ','data/hrtools/2004120902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('928','10','Ա����λ�䶯��ִ','data/hrtools/2004120901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('929','10','ְ��������������','data/hrtools/2004110501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('930','10','Ա�����������','data/hrtools/20031119145648.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('931','10','��ְ֪ͨ��','data/hrtools/2002109122412.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('932','10','Ա����ְ����취','data/hrtools/2002109122312.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('933','10','Ա����ְ��','data/hrtools/2002109122305.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('934','10','�ƽ��嵥','data/hrtools/2002109122258.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('935','10','�ƽ���ᣨһ��','data/hrtools/2002109122249.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('936','10','�ƽ���ᣨ����','data/hrtools/2002109122243.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('937','10','��ְ������','data/hrtools/2002109122226.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('938','10','��ְ������','data/hrtools/2002109122216.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('939','10','��ְ�����','data/hrtools/2002109122155.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('940','10','��ְ������','data/hrtools/��ְ������.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('941','11','��С����ҵ��������','data/hrtools/2007082302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('942','11','��˾���������ƶ�','data/hrtools/2007082301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('943','11','Ա����ɥϲ��Ӧ��취','data/hrtools/2007081302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('944','11','��ȫ����������������','data/hrtools/2007081301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('945','11','����������','data/hrtools/2007081002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('946','11','�绰�����ƶ�','data/hrtools/2007081001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('947','11','��λ���������ʾ�','data/hrtools/2007072402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('948','11','������Դ�滮��','data/hrtools/2007072401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('949','11','ӡ�¹���취','data/hrtools/2007062002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('950','11','���ñ�����','data/hrtools/2007051402.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('951','11','�ͻ������ǼǱ�','data/hrtools/2007043002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('952','11','�ͻ����ٱ�-Ӫ����Ա','data/hrtools/2007051102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('953','11','���������','data/hrtools/2007051101.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('954','11','�ջ�ƾ֤','data/hrtools/2007050802.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('955','11','�ܼƻ���','data/hrtools/2007050801.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('956','11','�ؿ�ƻ�','data/hrtools/2007042302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('957','11','Ա�����ָ��ͳ�Ʊ�','data/hrtools/2007032902.xls','0','','0');
INSERT INTO `qs_hrtools` VALUES ('958','11','��ҵƸ����ʦί����','data/hrtools/2007032901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('959','11','�᰸��','data/hrtools/2007012702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('960','11','�ͻ�����Ԥ����ʵʩ��','data/hrtools/2007012701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('961','11','��ҵӦ���ƻ�����','data/hrtools/2007011901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('962','11','��Ⱦ�ӪĿ��Ԥ���','data/hrtools/2007011902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('963','11','��������ҵ���Ƚϱ�','data/hrtools/2007011702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('964','11','ÿ��Ѳ�ص���״��������','data/hrtools/2007011701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('965','11','������������','data/hrtools/2006121402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('966','11','���Ԥ���','data/hrtools/2006121401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('967','11','��Ʒ�ۼ۱�','data/hrtools/2006121202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('968','11','��Ʒ�г��Է�����','data/hrtools/2006121201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('969','11','����ͻ�Ӫҵ��ͳ�Ʊ�','data/hrtools/2006112101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('970','11','�����ӡ���뵥','data/hrtools/2006111702.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('971','11','�����뵥','data/hrtools/2006111701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('972','11','��Ʒ���������','data/hrtools/2006111602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('973','11','ÿ�����۱���','data/hrtools/2006111102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('974','11','ҵ�����ʹ������','data/hrtools/2006110302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('975','11','����Χ����ģ��','data/hrtools/2006110301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('976','11','��ӡ���뵥','data/hrtools/2006102802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('977','11','������ñ�����','data/hrtools/2006102801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('978','11','���õ�','data/hrtools/2006102602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('979','11','�����¼��ʽ','data/hrtools/2006102601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('980','11','���ʿͻ�Ԥ�������������','data/hrtools/2006101802.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('981','11','���ҵ�񱨸��ʽ','data/hrtools/2006101801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('982','11','ְԱ���ɴ���֪ͨ��','data/hrtools/2006101302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('983','11','�ͻ������䶯������','data/hrtools/2006101301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('984','11','�ջ����Զ������','data/hrtools/2006092602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('985','11','�г���������������Ʊ�','data/hrtools/2006092601.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('986','11','XX��˾�ó����뵥','data/hrtools/2006091301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('987','11','ͬҵ��Ʒ�г��۸�����','data/hrtools/2006091202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('988','11','�����ձ�','data/hrtools/2006091201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('989','11','��Ʒ���Ԥ����ʵʩ�����','data/hrtools/2006090902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('990','11','��Ʒ���۷�����','data/hrtools/2006090901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('991','11','��Թ��������','data/hrtools/2006082202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('992','11','���۵�','data/hrtools/2006082201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('993','11','��Ƭ���뵥','data/hrtools/2006080201.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('994','11','���۶���ն����һ����','data/hrtools/2006072902.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('995','11','�ɹ����յ�','data/hrtools/2006072102.DOC','0','','0');
INSERT INTO `qs_hrtools` VALUES ('996','11','���۶�ͳ�Ʊ�','data/hrtools/2006071902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('997','11','��ӡ���뵥','data/hrtools/2006071901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('998','11','���ۼƻ�������','data/hrtools/2006071301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('999','11','չ�������λ�ֲ�','data/hrtools/2006071102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1000','11','������ϸ��','data/hrtools/2006071101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1001','11','���ž���Ȩһ����','data/hrtools/2006070502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1002','11','����ίԱ��һ����','data/hrtools/2006070501.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1003','11','�����ձ���','data/hrtools/2006062302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1004','11','������Աҵ��Ԥ����ʵ�������','data/hrtools/2006062301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1005','11','����Ч�ʷ�����','data/hrtools/2006061202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1006','11','����ҵ��״��������','data/hrtools/2006061201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1007','11','����Ԥ���','data/hrtools/2006060801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1008','11','�ɱ�����','data/hrtools/2006052401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1009','11','�������','data/hrtools/2006052201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1010','11','�����±�','data/hrtools/2006051801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1011','11','�²�ƷǱ�ڿͻ�׷�ٱ�','data/hrtools/2006051602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1012','11','�¿����ͻ������','data/hrtools/2006051601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1013','11','����ҵ���ص������','data/hrtools/2006051302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1014','11','Ӫҵ�ձ�','data/hrtools/2006051301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1015','11','�·ݲ���ͳ�Ʊ�','data/hrtools/2006051002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1016','11','�·ݾ�Ӫ�����˱�','data/hrtools/2006051001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1017','11','��Ʒ�ۼ۱�','data/hrtools/2006050802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1018','11','��Ч��ɢ�����','data/hrtools/2006042802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1019','11','��ҵ�Ļ���ʶ������','data/hrtools/2006041402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1020','11','�����˵�Ӱ�����Ʒֱ�','data/hrtools/2006041401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1021','11','�߻���������ȹ����ܽ�','data/hrtools/�߻��������ܽ�.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1022','11','������Դ�������ܽ�','data/hrtools/051212.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1023','11','��������趨��','data/hrtools/2005092601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1024','11','���鿪����','data/hrtools/2005091401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1025','11','�Ͷ������ٲ����ߵǼǱ�','data/hrtools/2005083102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1026','11','��ҵ���ƺ��������۱�','data/hrtools/2005082202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1027','11','������ȷ�����۱�','data/hrtools/2005082201.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1028','11','����֪ͨ��','data/hrtools/2005072902.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1029','11','��˾���ż����������','data/hrtools/2005072901.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1030','11','�����߽��Ȱ��ű�','data/hrtools/2005061402.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1031','11','���ʱ�׼��','data/hrtools/2005060802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1032','11','�����ձ���','data/hrtools/2005060801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1033','11','�·�ʽ�ɱ������','data/hrtools/2005052303.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1034','11','�·�ʽ�⳥������','data/hrtools/2005052302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1035','11','������ϸ��','data/hrtools/2005052301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1036','11','ͣ�����浥','data/hrtools/2005051603.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1037','11','��������ͳ�Ʊ�','data/hrtools/2005051602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1038','11','��������ҵ�����һ����','data/hrtools/2005051101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1039','11','���ڶ���ԭ�������','data/hrtools/05041201.ppt','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1040','11','������Ա���˰취','data/hrtools/2005032802.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1041','11','����˾�ҵ�����','data/hrtools/2005032801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1042','11','�������۹����±���','data/hrtools/2005031801.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1043','11','Ա���ֲᣨ�����ࣩ','data/hrtools/2005031603.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1044','11','����Ч���ձ���','data/hrtools/2005022302.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1045','11','���������ܱ���','data/hrtools/2005022301.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1046','11','����������','data/hrtools/2005022103.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1047','11','�����±���','data/hrtools/2005022102.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1048','11','��ҵʱ����Ƽ����ʱ�׼��','data/hrtools/2005022101.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1049','11','�������乤�������','data/hrtools/2005021603.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1050','11','���۱���','data/hrtools/2005021602.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1051','11','����������','data/hrtools/2005021601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1052','11','Ա�����հ취','data/hrtools/2004122703.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1053','11','������ʩ���ļ���±���','data/hrtools/2004122001.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1054','11','������ʾ���','data/hrtools/2004111601.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1055','11','һ��ҵ�񱨱�','data/hrtools/2004111202.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1056','11','��Ӳ��Ż��Ի����ֱ�','data/hrtools/2004103002.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1057','11','���֪ͨ��','data/hrtools/���֪ͨ��.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1058','11','�ɹ���Ŀ���ɿ��˱�','data/hrtools/�ɹ���Ŀ���ɿ��˱�.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1059','11','������¼��','data/hrtools/������¼��.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1060','11','������ȹ���Ŀ�깵ͨ�����۱�','data/hrtools/������ȹ���Ŀ�깵ͨ�����۱�.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1061','11','����Υ�漰����ʽ','data/hrtools/2004728142112.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1062','11','������Դ�����Ŀ��','data/hrtools/2004728141630.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1063','11','Ա����ʧ��','data/hrtools/2004712141440.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1064','11','���ż��ȹ����ƻ����۱�','data/hrtools/2004712141401.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1065','11','�����������','data/hrtools/2004616145846.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1066','11','ǩ�ʱ��','data/hrtools/2004616145825.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1067','11','��׼��ָ���黮��Ȩ���','data/hrtools/2004510150837.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1068','11','�춯����ְ�����ݵ���ҵ����','data/hrtools/2004510150821.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1069','11','�����ɹ��ܱ���','data/hrtools/2003114111021.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1070','11','�ۺϳ��ڼƻ���','data/hrtools/2003911113341.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1071','11','���������','data/hrtools/2003723102954.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1072','11','�ݽ�����취','data/hrtools/2002109122804.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1073','11','Ա���ֲ�','data/hrtools/2002109122757.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1074','11','ӡ�¹���취','data/hrtools/2002109122749.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1075','11','ҽ�Ƽ����������˺����չ���취','data/hrtools/2002109122741.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1076','11','�ݼٳ���','data/hrtools/2002109122724.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1077','11','���ʹ���취','data/hrtools/2002109122717.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1078','11','�������취','data/hrtools/2002109122710.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1079','11','ͼ�顢��������취','data/hrtools/2002109122701.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1080','11','���ú�ͬ����취','data/hrtools/2002109122654.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1081','11','���������涨','data/hrtools/2002109122647.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1082','11','�������涨','data/hrtools/2002109122640.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1083','11','�淶������ʵʩ���','data/hrtools/2002109122629.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1084','11','���ÿ�֧����취','data/hrtools/2002109122623.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1085','11','���ñ����涨','data/hrtools/2002109122615.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1086','11','���ɹ����ƶ�','data/hrtools/2002109122607.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1087','11','��������涨','data/hrtools/2002109122559.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1088','11','����ҵ���¹������','data/hrtools/2002109122550.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1089','11','�������涨','data/hrtools/2002109122541.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1090','11','�����ƶ�','data/hrtools/2002109122510.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1091','11','�칫��Ϊ�淶','data/hrtools/2002109122502.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1092','11','�칫�����ʹ�������','data/hrtools/2002109122453.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1093','11','Ա����ٵ�','data/hrtools/8.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1094','11','�빺��','data/hrtools/9.doc','0','','0');
INSERT INTO `qs_hrtools` VALUES ('1095','11','�����ƶ�','data/hrtools/10.doc','0','','0');
DROP TABLE IF EXISTS `qs_hrtools_category`;
CREATE TABLE `qs_hrtools_category` (
  `c_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(80) NOT NULL,
  `c_order` int(11) NOT NULL DEFAULT '0',
  `c_adminset` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_hrtools_category` VALUES ('1','��Ƹ/����','0','1');
INSERT INTO `qs_hrtools_category` VALUES ('2','���µ���','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('3','Ա������','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('4','��ͬ/����','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('5','н���ƶ�','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('6','�Ӱ�/����','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('7','����','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('8','Ա����ѵ','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('9','��Ч����','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('10','����/�ƽ�','0','0');
INSERT INTO `qs_hrtools_category` VALUES ('11','����','0','0');
DROP TABLE IF EXISTS `qs_hunter_down_resume`;
CREATE TABLE `qs_hunter_down_resume` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `hunter_uid` int(10) unsigned NOT NULL,
  `hunter_name` varchar(60) NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `down_addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `resume_uid_rid` (`resume_uid`,`resume_id`),
  KEY `down_addtime` (`down_addtime`),
  KEY `hunter_uid_addtime` (`hunter_uid`,`down_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_hunter_interview`;
CREATE TABLE `qs_hunter_interview` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(30) NOT NULL,
  `resume_addtime` int(10) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `jobs_addtime` int(10) NOT NULL,
  `hunter_id` int(10) unsigned NOT NULL,
  `hunter_name` varchar(60) NOT NULL,
  `hunter_addtime` int(10) NOT NULL,
  `hunter_uid` int(10) unsigned NOT NULL,
  `interview_addtime` int(10) unsigned NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT '',
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `interview_time` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`did`),
  KEY `resume_uid_resumeid` (`resume_uid`,`resume_id`),
  KEY `hunter_uid_jobid` (`hunter_uid`,`jobs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_hunter_jobs`;
CREATE TABLE `qs_hunter_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `utype` tinyint(1) unsigned NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `companyname_note` varchar(50) NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `nature` smallint(5) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `company_desc` varchar(1800) NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(100) NOT NULL DEFAULT '',
  `department` varchar(15) NOT NULL,
  `reporter` varchar(15) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `wage` smallint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `wage_structure` varchar(100) NOT NULL,
  `socialbenefits` varchar(100) NOT NULL,
  `livebenefits` varchar(100) NOT NULL,
  `annualleave` varchar(100) NOT NULL,
  `contents` varchar(1800) NOT NULL,
  `age` smallint(5) unsigned NOT NULL,
  `age_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `tongzhao` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `tongzhao_cn` varchar(3) NOT NULL,
  `language` varchar(50) NOT NULL,
  `jobs_qualified` varchar(1800) NOT NULL,
  `hopetrade` varchar(50) NOT NULL,
  `hopetrade_cn` varchar(100) NOT NULL,
  `extra_message` varchar(500) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(60) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `likekey` varchar(60) NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `contact` varchar(80) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `telephone` varchar(80) NOT NULL,
  `address` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `contact_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qq_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `addtime` (`addtime`),
  KEY `deadline` (`deadline`),
  KEY `setmeal_deadline` (`setmeal_deadline`),
  KEY `subsite_id` (`subsite_id`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_hunter_profile`;
CREATE TABLE `qs_hunter_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `huntername` varchar(15) NOT NULL,
  `companyname` varchar(15) NOT NULL,
  `companytelephone` varchar(20) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL,
  `worktime_start` smallint(4) unsigned NOT NULL,
  `rank` smallint(5) unsigned NOT NULL,
  `rank_cn` varchar(30) NOT NULL,
  `goodtrade` varchar(50) NOT NULL,
  `goodtrade_cn` varchar(100) NOT NULL,
  `goodcategory` varchar(50) NOT NULL,
  `goodcategory_cn` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `cooperate_company` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `telephone` varchar(130) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `yellowpages` tinyint(1) NOT NULL DEFAULT '0',
  `audit` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `photo_img` varchar(80) NOT NULL,
  `photo_audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `key` text,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `audit` (`audit`),
  KEY `companyname` (`companyname`),
  KEY `huntername` (`huntername`),
  KEY `yellowpages` (`yellowpages`),
  KEY `addtime` (`addtime`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_hunter_setmeal`;
CREATE TABLE `qs_hunter_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `apply` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `expense` int(10) unsigned NOT NULL,
  `jobs_add` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `added` varchar(255) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hunter_refresh_jobs_space` int(10) unsigned NOT NULL DEFAULT '0',
  `hunter_refresh_jobs_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_hunter_setmeal` VALUES ('1','1','0','��ѻ�Ա','0','0','2','5','0','1','0','','0','0','0');
INSERT INTO `qs_hunter_setmeal` VALUES ('2','1','1','ͭ�ƻ�Ա','30','300','10','300','0','10','0','','0','0','0');
INSERT INTO `qs_hunter_setmeal` VALUES ('3','1','1','���ƻ�Ա','90','600','30','900','0','90','0','������ҳ���λ','0','0','0');
INSERT INTO `qs_hunter_setmeal` VALUES ('4','1','1','���ƻ�Ա','180','1000','60','1800','0','180','0','������ҳ���λ','0','0','0');
INSERT INTO `qs_hunter_setmeal` VALUES ('5','1','1','��ʯ��Ա','360','1600','120','3600','0','360','0','������ҳ���λ','0','0','0');
DROP TABLE IF EXISTS `qs_jobfair`;
CREATE TABLE `qs_jobfair` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `predetermined_status` tinyint(1) NOT NULL,
  `predetermined_web` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `predetermined_tel` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `predetermined_point` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `introduction` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `bus` varchar(200) NOT NULL,
  `holddate_start` int(10) unsigned NOT NULL,
  `holddate_end` int(10) unsigned NOT NULL,
  `predetermined_start` int(10) unsigned NOT NULL DEFAULT '0',
  `predetermined_end` int(10) unsigned NOT NULL DEFAULT '0',
  `number` varchar(200) NOT NULL,
  `addtime` int(10) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `service_setmeal` text,
  `price` text,
  `trade` varchar(255) NOT NULL,
  `trade_cn` varchar(255) NOT NULL,
  `map_x` varchar(50) NOT NULL,
  `map_y` varchar(50) NOT NULL,
  `map_zoom` int(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_jobfair_exhibitors`;
CREATE TABLE `qs_jobfair_exhibitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `etypr` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `companyname` varchar(200) NOT NULL,
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `company_addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `eaddtime` int(10) unsigned NOT NULL,
  `jobfairid` int(10) unsigned NOT NULL,
  `jobfair_title` varchar(200) NOT NULL,
  `jobfair_addtime` int(10) unsigned NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `etypr` (`etypr`),
  KEY `uid` (`uid`),
  KEY `jobfairid` (`jobfairid`),
  KEY `eaddtime` (`eaddtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_jobfair_section`;
CREATE TABLE `qs_jobfair_section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_singleness` tinyint(1) NOT NULL DEFAULT '1',
  `trade` varchar(50) NOT NULL,
  `trade_cn` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_jobfair_section_company`;
CREATE TABLE `qs_jobfair_section_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobfair_id` int(10) unsigned NOT NULL,
  `company_id` int(10) NOT NULL,
  `trade` int(10) NOT NULL,
  `company_signature` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_jobs`;
CREATE TABLE `qs_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_addtime` int(10) unsigned NOT NULL,
  `company_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `highlight` varchar(7) NOT NULL,
  `stick` tinyint(1) NOT NULL,
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `age` varchar(10) NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(100) NOT NULL DEFAULT '',
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL,
  `street` int(10) unsigned NOT NULL,
  `street_cn` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL,
  `tag_cn` varchar(100) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `negotiable` tinyint(1) unsigned NOT NULL,
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contents` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(60) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(60) NOT NULL,
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_entrust` tinyint(1) NOT NULL DEFAULT '0',
  `auto_refresh` tinyint(1) NOT NULL DEFAULT '0',
  `workstarttime` int(10) DEFAULT NULL,
  `bkqx` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `addtime` (`addtime`),
  KEY `company_id` (`company_id`),
  KEY `deadline` (`deadline`),
  KEY `audit` (`audit`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs` VALUES ('1','0','1','��Ŀ����','dfadfads','1','1462420723','1','0','0','','0','62','ȫְ','3','����','-','5','1','2','543','���۾���','1','��������/Ӳ��','80','20������','1','37','������/������','127','������·','','','68','��ר','76','1-3��','59','3000~5000Ԫ/��','0','0','ˮ������������<span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span><span>ˮ������������</span>','1462515868','1463811868','1462515868','0','0','','1','1','8','��Ŀ���� dfadfads  ��Ŀ00 ����00 ����00 ���۾��� ����00 ����00 ������0 ����00 ����00','1','0','','0.000000','0.000000','1','0','0','','');
INSERT INTO `qs_jobs` VALUES ('7','0','1','�߻��ܼ�','dfadfads','1','1462420723','1','0','0','','0','62','ȫְ','3','����','-','5','116','122','855','��ɴ/֯��/��֯','1','��������/Ӳ��','80','20������','2','55','�Ϻ���/�����','127','������·','','','70','����','77','3-5��','59','3000~5000Ԫ/��','0','0','��������<span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span>��������<span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span><span>��������</span>','1462603183','1463899183','1462603183','0','0','','1','1','5','�߻��ܼ� dfadfads  �߻�00 �ܼ�00 ��ɴ00 ֯��00 ��֯00 �Ϻ�00 �Ϻ���0 ���00 ����00','1','0','','0.000000','0.000000','1','0','0','','');
INSERT INTO `qs_jobs` VALUES ('3','0','1','���繤��ʦ','dfadfads','1','1462420723','1','0','0','','0','62','ȫְ','3','����','-','5','74','76','702','�������Ա','1','��������/Ӳ��','80','20������','11','203','����ʡ/������','127','������·','','','72','��ʿ','79','10������','60','5000~10000Ԫ/��','0','0','����ȷɵø���ͦ��<span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span><span>����ȷɵø���ͦ��</span>','1462516461','1463812461','1462516461','0','0','','1','1','4','���繤��ʦ dfadfads  ����00 ����00 ����ʦ0 ������� �������Ա ����00 ����Ա0 ��Ա00 ����00 ����ʡ0 ����00 ����00 ���00 �����0 ����00','1','0','','0.000000','0.000000','1','0','0','','');
INSERT INTO `qs_jobs` VALUES ('5','0','1','����','dfadfads','1','1462420723','1','0','0','','0','62','ȫְ','3','����','-','5','74','80','738','����ͨ�Ź���ʦ','1','��������/Ӳ��','80','20������','7','154','���ɹ�/�ں���','127','������·','','','70','����','77','3-5��','60','5000~10000Ԫ/��','0','0','��ά����ͬ<span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span><span>��ά����ͬ</span>','1462521005','1463817005','1462521005','0','0','','1','1','5','����00 dfadfads  ����00 ͨ��00 ͨ�Ź���ʦ ����00 ����ʦ0 ����00 ���ɹ�0 �ɹ�00 �ں�00 ά��00 ��ͬ00','1','0','','0.000000','0.000000','1','0','0','','');
INSERT INTO `qs_jobs` VALUES ('8','0','1','����','dfadfads','1','1462420723','1','0','0','','0','62','ȫְ','3','����','-','5','203','207','973','Ӣ�﷭��','1','��������/Ӳ��','80','20������','1','40','������/��̨��','127','������·','','','71','˶ʿ','79','10������','60','5000~10000Ԫ/��','0','0','���޷���ͬ<span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span><span>���޷���ͬ</span>','1462603230','1463899230','1462603230','0','0','','1','1','6','����00 dfadfads  Ӣ��00 Ӣ�﷭�� ����00 ������0 ��̨00 �޷�00 ��ͬ00','1','0','','0.000000','0.000000','1','0','0','','');
DROP TABLE IF EXISTS `qs_jobs_appointment_refresh`;
CREATE TABLE `qs_jobs_appointment_refresh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `jobs_id` int(10) NOT NULL,
  `appointment_time` int(10) NOT NULL,
  `appointment_time_available` int(10) NOT NULL,
  `points` int(10) NOT NULL,
  `execute_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_jobs_contact`;
CREATE TABLE `qs_jobs_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `contact` varchar(80) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `telephone` varchar(80) NOT NULL,
  `landline_tel` varchar(50) NOT NULL,
  `address` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `notify_mobile` tinyint(3) NOT NULL,
  `contact_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qq_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_contact` VALUES ('1','1','ererererer','','','0351-2222222-0','fdafadsfasdfasdadsfadsfasd','362392403@qq.com','1','0','1','1','0','1','0');
INSERT INTO `qs_jobs_contact` VALUES ('2','2','ererererer','','','0351-2222222-0','fdafadsfasdfasdadsfadsfasd','362392403@qq.com','1','0','1','1','0','1','0');
INSERT INTO `qs_jobs_contact` VALUES ('3','3','ererererer','','','0351-2222222-0','fdafadsfasdfasdadsfadsfasd','362392403@qq.com','1','0','1','1','0','1','0');
INSERT INTO `qs_jobs_contact` VALUES ('4','4','13566666666','','','0355-55555555555-0','�����ж�����','wudazui@sina.com','1','0','1','1','0','1','0');
INSERT INTO `qs_jobs_contact` VALUES ('5','5','ererererer','','','0351-2222222-0','fdafadsfasdfasdadsfadsfasd','362392403@qq.com','1','0','1','1','0','1','0');
INSERT INTO `qs_jobs_contact` VALUES ('6','6','13566666666','','','0355-55555555555-0','�����ж�����','wudazui@sina.com','1','0','1','1','0','1','0');
INSERT INTO `qs_jobs_contact` VALUES ('7','7','ererererer','','','0351-2222222-0','fdafadsfasdfasdadsfadsfasd','362392403@qq.com','1','0','1','1','0','1','0');
INSERT INTO `qs_jobs_contact` VALUES ('8','8','ererererer','','','0351-2222222-0','fdafadsfasdfasdadsfadsfasd','362392403@qq.com','1','0','1','1','0','1','0');
DROP TABLE IF EXISTS `qs_jobs_search_hot`;
CREATE TABLE `qs_jobs_search_hot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `click` (`click`),
  KEY `category_hot` (`category`,`click`),
  KEY `sdistrict_hot` (`sdistrict`,`click`),
  KEY `district_hot` (`district`,`click`),
  KEY `trade_hot` (`trade`,`click`),
  KEY `subclass_hot` (`subclass`,`click`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `street_hot` (`street`,`click`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_search_hot` VALUES ('1','0','1','0','0','62','3','1','2','543','1','1','37','127','68','76','59','80','0','1462515868','7','0');
INSERT INTO `qs_jobs_search_hot` VALUES ('2','0','1','0','0','62','3','74','79','734','1','2','55','127','69','77','58','80','0','1462516360','0','0');
INSERT INTO `qs_jobs_search_hot` VALUES ('3','0','1','0','0','62','3','74','76','702','1','11','203','127','72','79','60','80','0','1462516461','3','0');
INSERT INTO `qs_jobs_search_hot` VALUES ('4','0','5','0','0','62','3','1','5','578','9','2','55','0','70','77','60','83','0','1462519915','0','0');
INSERT INTO `qs_jobs_search_hot` VALUES ('5','0','1','0','0','62','3','74','80','738','1','7','154','127','70','77','60','80','0','1462521005','4','0');
INSERT INTO `qs_jobs_search_hot` VALUES ('6','0','5','0','0','62','3','1','2','542','9','1','35','0','69','77','58','83','0','1462521124','2','0');
INSERT INTO `qs_jobs_search_hot` VALUES ('7','0','1','0','0','62','3','116','122','855','1','2','55','127','70','77','59','80','0','1462603183','4','0');
INSERT INTO `qs_jobs_search_hot` VALUES ('8','0','1','0','0','62','3','203','207','973','1','1','40','127','71','79','60','80','0','1462603230','5','0');
DROP TABLE IF EXISTS `qs_jobs_search_key`;
CREATE TABLE `qs_jobs_search_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `key` text NOT NULL,
  `likekey` varchar(220) NOT NULL,
  `setmeal_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refreshtime` (`refreshtime`),
  KEY `uid` (`uid`),
  KEY `category` (`category`),
  KEY `subclass` (`subclass`),
  KEY `district` (`district`),
  KEY `sdistrict` (`sdistrict`),
  KEY `subsite_id` (`subsite_id`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_search_key` VALUES ('1','0','1','0','0','62','3','1','2','543','1','1','37','127','68','76','59','80','0','0.000000','0.000000','1462515868','��Ŀ���� dfadfads  ��Ŀ00 ����00 ����00 ���۾��� ����00 ����00 ������0 ����00 ����00','��Ŀ����,dfadfads','0');
INSERT INTO `qs_jobs_search_key` VALUES ('2','0','1','0','0','62','3','74','79','734','1','2','55','127','69','77','58','80','0','0.000000','0.000000','1462516360','����ʦ0 dfadfads  ����00 ���00 ������� ����00 �Ϻ�00 �Ϻ���0 ���00 ���00 �ط�00 �ȴ�00','����ʦ,dfadfads','0');
INSERT INTO `qs_jobs_search_key` VALUES ('3','0','1','0','0','62','3','74','76','702','1','11','203','127','72','79','60','80','0','0.000000','0.000000','1462516461','���繤��ʦ dfadfads  ����00 ����00 ����ʦ0 ������� �������Ա ����00 ����Ա0 ��Ա00 ����00 ����ʡ0 ����00 ����00 ���00 �����0 ����00','���繤��ʦ,dfadfads','0');
INSERT INTO `qs_jobs_search_key` VALUES ('4','0','5','0','0','62','3','1','5','578','9','2','55','0','70','77','60','83','0','0.000000','0.000000','1462519915','�г��ܼ� �ٶ�00  �г�00 �ܼ�00 �г����� ����00 ����00 �Ϻ�00 �Ϻ���0 ���00 ����00 �ܿ�00','�г��ܼ�,�ٶ�','0');
INSERT INTO `qs_jobs_search_key` VALUES ('5','0','1','0','0','62','3','74','80','738','1','7','154','127','70','77','60','80','0','0.000000','0.000000','1462521005','����00 dfadfads  ����00 ͨ��00 ͨ�Ź���ʦ ����00 ����ʦ0 ����00 ���ɹ�0 �ɹ�00 �ں�00 ά��00 ��ͬ00','����,dfadfads','0');
INSERT INTO `qs_jobs_search_key` VALUES ('6','0','5','0','0','62','3','1','2','542','9','1','35','0','69','77','58','83','0','0.000000','0.000000','1462521124','�����ܼ� �ٶ�00  ����00 �ܼ�00 ����00 ������0 ����00 ������0 ����00 �淶00 �淶��0 ��ͬ00 ��00','�����ܼ�,�ٶ�','0');
INSERT INTO `qs_jobs_search_key` VALUES ('7','0','1','0','0','62','3','116','122','855','1','2','55','127','70','77','59','80','0','0.000000','0.000000','1462603183','�߻��ܼ� dfadfads  �߻�00 �ܼ�00 ��ɴ00 ֯��00 ��֯00 �Ϻ�00 �Ϻ���0 ���00 ����00','�߻��ܼ�,dfadfads','0');
INSERT INTO `qs_jobs_search_key` VALUES ('8','0','1','0','0','62','3','203','207','973','1','1','40','127','71','79','60','80','0','0.000000','0.000000','1462603230','����00 dfadfads  Ӣ��00 Ӣ�﷭�� ����00 ������0 ��̨00 �޷�00 ��ͬ00','����,dfadfads','0');
DROP TABLE IF EXISTS `qs_jobs_search_rtime`;
CREATE TABLE `qs_jobs_search_rtime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_id` smallint(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refreshtime` (`refreshtime`),
  KEY `recommend_rtime` (`recommend`,`refreshtime`),
  KEY `emergency_rtime` (`emergency`,`refreshtime`),
  KEY `trade_rtime` (`trade`,`refreshtime`),
  KEY `sdistrict_rtime` (`sdistrict`,`refreshtime`),
  KEY `subclass_rtime` (`subclass`,`refreshtime`),
  KEY `district_rtime` (`district`,`refreshtime`),
  KEY `category_rtime` (`category`,`refreshtime`),
  KEY `uid` (`uid`),
  KEY `map` (`map_x`,`map_y`),
  KEY `street_rtime` (`street`,`refreshtime`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_search_rtime` VALUES ('1','0','1','0','0','62','3','1','2','543','1','1','37','127','68','76','59','80','0','0.000000','0.000000','1462515868','0');
INSERT INTO `qs_jobs_search_rtime` VALUES ('2','0','1','0','0','62','3','74','79','734','1','2','55','127','69','77','58','80','0','0.000000','0.000000','1462516360','0');
INSERT INTO `qs_jobs_search_rtime` VALUES ('3','0','1','0','0','62','3','74','76','702','1','11','203','127','72','79','60','80','0','0.000000','0.000000','1462516461','0');
INSERT INTO `qs_jobs_search_rtime` VALUES ('4','0','5','0','0','62','3','1','5','578','9','2','55','0','70','77','60','83','0','0.000000','0.000000','1462519915','0');
INSERT INTO `qs_jobs_search_rtime` VALUES ('5','0','1','0','0','62','3','74','80','738','1','7','154','127','70','77','60','80','0','0.000000','0.000000','1462521005','0');
INSERT INTO `qs_jobs_search_rtime` VALUES ('6','0','5','0','0','62','3','1','2','542','9','1','35','0','69','77','58','83','0','0.000000','0.000000','1462521124','0');
INSERT INTO `qs_jobs_search_rtime` VALUES ('7','0','1','0','0','62','3','116','122','855','1','2','55','127','70','77','59','80','0','0.000000','0.000000','1462603183','0');
INSERT INTO `qs_jobs_search_rtime` VALUES ('8','0','1','0','0','62','3','203','207','973','1','1','40','127','71','79','60','80','0','0.000000','0.000000','1462603230','0');
DROP TABLE IF EXISTS `qs_jobs_search_scale`;
CREATE TABLE `qs_jobs_search_scale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `category_scale` (`category`,`scale`,`refreshtime`),
  KEY `subclass_scale` (`subclass`,`scale`,`refreshtime`),
  KEY `trade_scale` (`trade`,`scale`,`refreshtime`),
  KEY `scale` (`scale`,`refreshtime`),
  KEY `district_scale` (`district`,`scale`,`refreshtime`),
  KEY `sdistrict_scale` (`sdistrict`,`scale`,`refreshtime`),
  KEY `street_scale` (`street`,`scale`,`refreshtime`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_search_scale` VALUES ('1','0','1','0','0','62','3','1','2','543','1','80','0','1','37','127','68','76','59','1462515868','0');
INSERT INTO `qs_jobs_search_scale` VALUES ('2','0','1','0','0','62','3','74','79','734','1','80','0','2','55','127','69','77','58','1462516360','0');
INSERT INTO `qs_jobs_search_scale` VALUES ('3','0','1','0','0','62','3','74','76','702','1','80','0','11','203','127','72','79','60','1462516461','0');
INSERT INTO `qs_jobs_search_scale` VALUES ('4','0','5','0','0','62','3','1','5','578','9','83','0','2','55','0','70','77','60','1462519915','0');
INSERT INTO `qs_jobs_search_scale` VALUES ('5','0','1','0','0','62','3','74','80','738','1','80','0','7','154','127','70','77','60','1462521005','0');
INSERT INTO `qs_jobs_search_scale` VALUES ('6','0','5','0','0','62','3','1','2','542','9','83','0','1','35','0','69','77','58','1462521124','0');
INSERT INTO `qs_jobs_search_scale` VALUES ('7','0','1','0','0','62','3','116','122','855','1','80','0','2','55','127','70','77','59','1462603183','0');
INSERT INTO `qs_jobs_search_scale` VALUES ('8','0','1','0','0','62','3','203','207','973','1','80','0','1','40','127','71','79','60','1462603230','0');
DROP TABLE IF EXISTS `qs_jobs_search_stickrtime`;
CREATE TABLE `qs_jobs_search_stickrtime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stick` tinyint(1) NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stick_rtime` (`stick`,`refreshtime`),
  KEY `subclass_rtime` (`subclass`,`stick`,`refreshtime`),
  KEY `trade_rtime` (`trade`,`stick`,`refreshtime`),
  KEY `district_rtime` (`district`,`stick`,`refreshtime`),
  KEY `sdistrict_rtime` (`sdistrict`,`stick`,`refreshtime`),
  KEY `uid` (`uid`),
  KEY `category_rtime` (`category`,`stick`,`refreshtime`),
  KEY `stick_street` (`street`,`stick`,`refreshtime`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('1','0','1','0','0','0','62','3','1','2','543','1','1','37','127','68','76','59','80','0','1462515868','0');
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('2','0','1','0','0','0','62','3','74','79','734','1','2','55','127','69','77','58','80','0','1462516360','0');
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('3','0','1','0','0','0','62','3','74','76','702','1','11','203','127','72','79','60','80','0','1462516461','0');
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('4','0','5','0','0','0','62','3','1','5','578','9','2','55','0','70','77','60','83','0','1462519915','0');
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('5','0','1','0','0','0','62','3','74','80','738','1','7','154','127','70','77','60','80','0','1462521005','0');
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('6','0','5','0','0','0','62','3','1','2','542','9','1','35','0','69','77','58','83','0','1462521124','0');
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('7','0','1','0','0','0','62','3','116','122','855','1','2','55','127','70','77','59','80','0','1462603183','0');
INSERT INTO `qs_jobs_search_stickrtime` VALUES ('8','0','1','0','0','0','62','3','203','207','973','1','1','40','127','71','79','60','80','0','1462603230','0');
DROP TABLE IF EXISTS `qs_jobs_search_wage`;
CREATE TABLE `qs_jobs_search_wage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `street` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rtime_wage` (`refreshtime`,`wage`),
  KEY `uid` (`uid`),
  KEY `sdistrict_wage` (`sdistrict`,`wage`,`refreshtime`),
  KEY `district_wage` (`district`,`wage`,`refreshtime`),
  KEY `trade_wage` (`trade`,`wage`,`refreshtime`),
  KEY `subclass_wage` (`subclass`,`wage`,`refreshtime`),
  KEY `category_wage` (`category`,`wage`,`refreshtime`),
  KEY `street_wage` (`street`,`wage`,`refreshtime`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_search_wage` VALUES ('1','0','1','0','0','62','3','1','2','543','1','1','37','127','68','76','59','80','0','1462515868','0');
INSERT INTO `qs_jobs_search_wage` VALUES ('2','0','1','0','0','62','3','74','79','734','1','2','55','127','69','77','58','80','0','1462516360','0');
INSERT INTO `qs_jobs_search_wage` VALUES ('3','0','1','0','0','62','3','74','76','702','1','11','203','127','72','79','60','80','0','1462516461','0');
INSERT INTO `qs_jobs_search_wage` VALUES ('4','0','5','0','0','62','3','1','5','578','9','2','55','0','70','77','60','83','0','1462519915','0');
INSERT INTO `qs_jobs_search_wage` VALUES ('5','0','1','0','0','62','3','74','80','738','1','7','154','127','70','77','60','80','0','1462521005','0');
INSERT INTO `qs_jobs_search_wage` VALUES ('6','0','5','0','0','62','3','1','2','542','9','1','35','0','69','77','58','83','0','1462521124','0');
INSERT INTO `qs_jobs_search_wage` VALUES ('7','0','1','0','0','62','3','116','122','855','1','2','55','127','70','77','59','80','0','1462603183','0');
INSERT INTO `qs_jobs_search_wage` VALUES ('8','0','1','0','0','62','3','203','207','973','1','1','40','127','71','79','60','80','0','1462603230','0');
DROP TABLE IF EXISTS `qs_jobs_subscribe`;
CREATE TABLE `qs_jobs_subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `search_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `district_cn` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `days` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addtime` (`district`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_jobs_tag`;
CREATE TABLE `qs_jobs_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_tag` VALUES ('1','1','1','0');
INSERT INTO `qs_jobs_tag` VALUES ('2','1','2','0');
INSERT INTO `qs_jobs_tag` VALUES ('3','1','3','0');
INSERT INTO `qs_jobs_tag` VALUES ('4','5','4','0');
INSERT INTO `qs_jobs_tag` VALUES ('5','1','5','0');
INSERT INTO `qs_jobs_tag` VALUES ('6','5','6','0');
INSERT INTO `qs_jobs_tag` VALUES ('7','1','7','0');
INSERT INTO `qs_jobs_tag` VALUES ('8','1','8','0');
DROP TABLE IF EXISTS `qs_jobs_templates`;
CREATE TABLE `qs_jobs_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `subsite_id` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(100) NOT NULL DEFAULT '',
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `tag` varchar(255) NOT NULL DEFAULT '',
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `negotiable` tinyint(1) unsigned NOT NULL,
  `minage` smallint(4) unsigned NOT NULL,
  `maxage` smallint(4) unsigned NOT NULL,
  `contents` varchar(1800) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_templates` VALUES ('1','1','1','���۾���I��ģ��','62','ȫְ','3','����','5','1','2','543','���۾���','6','141','/̫ԭ��','70','����','77','3-5��','58','2000~3000Ԫ/��','','0','0','0','0','�¹����ոշ�����������','1462501548');
DROP TABLE IF EXISTS `qs_jobs_tmp`;
CREATE TABLE `qs_jobs_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_addtime` int(10) unsigned NOT NULL,
  `company_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `highlight` varchar(7) NOT NULL,
  `stick` tinyint(1) NOT NULL,
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `age` varchar(10) NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(100) NOT NULL DEFAULT '',
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL,
  `street` int(10) unsigned NOT NULL,
  `street_cn` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL,
  `tag_cn` varchar(100) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `wage` smallint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `negotiable` tinyint(1) unsigned NOT NULL,
  `graduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contents` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(60) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(60) NOT NULL,
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_entrust` tinyint(1) NOT NULL DEFAULT '0',
  `auto_refresh` tinyint(1) NOT NULL DEFAULT '0',
  `workstarttime` int(10) DEFAULT NULL,
  `bkqx` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `addtime` (`addtime`),
  KEY `company_id` (`company_id`),
  KEY `deadline` (`deadline`),
  KEY `audit` (`audit`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_jobs_tmp` VALUES ('6','0','5','�����ܼ�','�ٶ�','2','1462519791','1','0','0','','0','62','ȫְ','3','����','-','5','1','2','542','�����ܼ�','9','����(Ͷ��/֤ȯ','83','500-999��','1','35','������/������','0','','','','69','��ר','77','3-5��','58','2000~3000Ԫ/��','0','0','�淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ�󺣹淶����ͬ��','1462521124','1463817125','1462521124','0','0','','3','1','4','�����ܼ� �ٶ�00 ����00 �ܼ�00 ����00 ������0 ����00 ������0 ����00 �淶00 �淶��0 ��ͬ00 ��00','1','0','','0.000000','0.000000','1','0','0','1','1');
DROP TABLE IF EXISTS `qs_link`;
CREATE TABLE `qs_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `type_id` tinyint(3) unsigned NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `alias` varchar(30) NOT NULL,
  `link_name` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `link_logo` varchar(255) NOT NULL,
  `show_order` smallint(5) unsigned NOT NULL DEFAULT '50',
  `Notes` varchar(255) DEFAULT NULL,
  `app_notes` varchar(300) NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_link` VALUES ('1','0','1','1','QS_index','��ʿcms�ٷ�վ','http://www.74cms.com','','100','','');
DROP TABLE IF EXISTS `qs_link_category`;
CREATE TABLE `qs_link_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `c_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `c_alias` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_link_category` VALUES ('1','��վ��ҳ','1','QS_index');
INSERT INTO `qs_link_category` VALUES ('2','��Ƹ��ҳ','1','QS_jobs');
INSERT INTO `qs_link_category` VALUES ('3','��ְ��ҳ','1','QS_resume');
INSERT INTO `qs_link_category` VALUES ('4','��Ѷ��ҳ','1','QS_news');
DROP TABLE IF EXISTS `qs_locoyspider`;
CREATE TABLE `qs_locoyspider` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_locoyspider` VALUES ('1','open','1');
INSERT INTO `qs_locoyspider` VALUES ('2','search_threshold','55');
INSERT INTO `qs_locoyspider` VALUES ('3','article_display','1');
INSERT INTO `qs_locoyspider` VALUES ('4','article_focos','1');
INSERT INTO `qs_locoyspider` VALUES ('5','company_audit','1');
INSERT INTO `qs_locoyspider` VALUES ('6','company_nature','2');
INSERT INTO `qs_locoyspider` VALUES ('7','company_trade','45');
INSERT INTO `qs_locoyspider` VALUES ('8','company_district','1,2');
INSERT INTO `qs_locoyspider` VALUES ('9','company_scale','85');
INSERT INTO `qs_locoyspider` VALUES ('10','company_registered','');
INSERT INTO `qs_locoyspider` VALUES ('11','company_currency','�����');
INSERT INTO `qs_locoyspider` VALUES ('12','jobs_display','1');
INSERT INTO `qs_locoyspider` VALUES ('13','jobs_audit','1');
INSERT INTO `qs_locoyspider` VALUES ('14','jobs_nature','62');
INSERT INTO `qs_locoyspider` VALUES ('15','jobs_days_min','20');
INSERT INTO `qs_locoyspider` VALUES ('16','jobs_days_max','60');
INSERT INTO `qs_locoyspider` VALUES ('17','jobs_topclass','');
INSERT INTO `qs_locoyspider` VALUES ('18','jobs_category','1');
INSERT INTO `qs_locoyspider` VALUES ('19','jobs_subclass','2');
INSERT INTO `qs_locoyspider` VALUES ('20','jobs_district','134');
INSERT INTO `qs_locoyspider` VALUES ('21','jobs_education','69');
INSERT INTO `qs_locoyspider` VALUES ('22','jobs_experience','76');
INSERT INTO `qs_locoyspider` VALUES ('23','jobs_wage','57');
INSERT INTO `qs_locoyspider` VALUES ('24','jobs_amount_min','5');
INSERT INTO `qs_locoyspider` VALUES ('25','jobs_amount_max','15');
INSERT INTO `qs_locoyspider` VALUES ('26','jobs_notify','0');
INSERT INTO `qs_locoyspider` VALUES ('27','jobs_sex','1');
INSERT INTO `qs_locoyspider` VALUES ('28','reg_usname','sp_');
INSERT INTO `qs_locoyspider` VALUES ('29','reg_password_tpye','1');
INSERT INTO `qs_locoyspider` VALUES ('30','reg_password','123456');
INSERT INTO `qs_locoyspider` VALUES ('31','reg_email','@126.com');
DROP TABLE IF EXISTS `qs_mail_templates`;
CREATE TABLE `qs_mail_templates` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_mail_templates` VALUES ('1','set_reg','��ϲ���Ϊ<strong><a href=\"{sitedomain}\" target=\"_blank\">{sitename}</a></strong>��{utype}��Ա<br />\r\n����û����ǣ�<strong>{username}</strong><br />\r\n��������ǣ�<strong>{password}</strong><br />\r\n���ʼ���ϵͳ�Զ�����������ظ���<br />');
INSERT INTO `qs_mail_templates` VALUES ('2','set_applyjobs','ӦƸְλ{jobsname}����ͨ�������еĵ绰���ʼ���ϵ�ң�����ֱ�ӻظ��ʼ�����');
INSERT INTO `qs_mail_templates` VALUES ('3','set_invite','�װ��Ļ�Ա��<br />\r\n<strong>{companyname}</strong>  ���㷢������������<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('4','set_order','�װ��Ļ�Ա��<br />\r\n��Ķ�������ӳɹ����뼰ʱ��������ţ�{oid}�����ʽΪ��{paymenttpye}��Ӧ�����Ϊ��{amount} Ԫ��<br />\r\n�����ϵͳ��Ϊ���Զ���ͨ��ط���<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('5','set_payment','�װ��Ļ�Ա��<br />\r\n���Ѿ�����ɹ���ϵͳ��Ϊ����ͨ����<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('6','set_editpwd','�װ��Ļ�Ա��<br />\r\n���Ѿ��ɹ��޸����룬������Ϊ��{newpassword}��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('7','set_jobsallow','�װ��Ļ�Ա��<br />\r\n��ϲ���㷢����ְλ({jobsname})�Ѿ�ͨ����ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('8','set_jobsnotallow','�װ��Ļ�Ա��<br />\r\n�ܱ�Ǹ���㷢����ְλ({jobsname})δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('9','set_licenseallow','�װ��Ļ�Ա��<br />\r\n��ϲ��������ҵ��������֤ͨ����<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('10','set_licensenotallow','�װ��Ļ�Ա��<br />\r\n�ܱ�Ǹ�������ҵ��֤δͨ�����������ϴ�Ӫҵִ�գ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('11','set_addmap','�װ��Ļ�Ա��<br />\r\n��ϲ�����ѳɹ���ͨ��ҵ���ӵ�ͼ��<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('12','set_resumeallow','�װ��Ļ�Ա��<br />\r\n��ϲ�����ļ�����ͨ����ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('13','set_resumenotallow','�װ��Ļ�Ա��<br />\r\n�ܱ�Ǹ�����ļ���δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('14','set_teaallow','�װ��Ļ�Ա��<br />\r\n��ϲ������ӵĽ�ʦ({teachername})��ͨ����ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('15','set_teanotallow','�װ��Ļ�Ա��<br />\r\n�ܱ�Ǹ������ӵĽ�ʦ({teachername})δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('16','set_couallow','�װ��Ļ�Ա��<br />\r\n��ϲ������ӵĿγ�({coursename})��ͨ����ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('17','set_counotallow','�װ��Ļ�Ա��<br />\r\n�ܱ�Ǹ������ӵĿγ�({coursename})δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('18','set_applycou','�װ��Ļ�Ա��<br />\r\n<strong>{personalfullname}</strong> �������������Ŀγ�:<strong>{coursename}</strong><br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('19','set_downapp','�װ��Ļ�Ա��<br />\r\n<strong>{trainname}</strong>  �������������߿γ�({coursename})����<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('20','set_hunallow','�װ��Ļ�Ա��<br />\r\n��ϲ��������ͷ������������֤ͨ����<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('21','set_hunnotallow','�װ��Ļ�Ա��<br />\r\n�ܱ�Ǹ�������ͷ����������֤δͨ������������д��ͷ�������ϣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('22','set_hunjobsallow','�װ��Ļ�Ա��<br />\r\n��ϲ���㷢����ְλ({jobsname})�Ѿ�ͨ����ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('23','set_hunjobsnotallow','�װ��Ļ�Ա��<br />\r\n�ܱ�Ǹ���㷢����ְλ({jobsname})δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ�<br />\r\n���¼<a href=\"{sitedomain}\" target=\"_blank\">��Ա����</a>��ϸ�鿴��<br />\r\n����Ϣ��ϵͳ�Զ����ͣ�����ظ���');
INSERT INTO `qs_mail_templates` VALUES ('24','set_reg_title','��ϲ���Ϊ{sitename}��{utype}��Ա');
INSERT INTO `qs_mail_templates` VALUES ('25','set_applyjobs_title','{personalfullname}��������������ְλ:{jobsname}');
INSERT INTO `qs_mail_templates` VALUES ('26','set_invite_title','{companyname}������μ�����');
INSERT INTO `qs_mail_templates` VALUES ('27','set_order_title','��ֵ������ӳɹ�');
INSERT INTO `qs_mail_templates` VALUES ('28','set_payment_title','��ֵ�ɹ���ϵͳ��Ϊ����ͨ����');
INSERT INTO `qs_mail_templates` VALUES ('29','set_editpwd_title','�����޸ĳɹ���');
INSERT INTO `qs_mail_templates` VALUES ('30','set_jobsallow_title','��ϲ����������ְλ({jobsname})�Ѿ�ͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('31','set_jobsnotallow_title','�ܱ�Ǹ���㷢����ְλ({jobsname})δͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('32','set_licenseallow_title','��ϲ�������ҵ��Ϣ����֤ͨ����');
INSERT INTO `qs_mail_templates` VALUES ('33','set_licensenotallow_title','�ܱ�Ǹ�������ҵ��Ϣδ��֤ͨ����');
INSERT INTO `qs_mail_templates` VALUES ('34','set_addmap_title','��ϲ�����ѳɹ���ͨ��ҵ���ӵ�ͼ��');
INSERT INTO `qs_mail_templates` VALUES ('35','set_resumeallow_title','��ϲ�����ļ�����ͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('36','set_resumenotallow_title','�ܱ�Ǹ����ļ���δͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('37','set_teaallow_title','��ϲ�����Ľ�ʦ({teachername})��ͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('38','set_teanotallow_title','�ܱ�Ǹ����Ľ�ʦ({teachername})δͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('39','set_couallow_title','��ϲ�����Ŀγ�({coursename})��ͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('40','set_counotallow_title','�ܱ�Ǹ����Ŀγ�({coursename})δͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('41','set_applycou_title','{personalfullname}�������������Ŀγ�:{coursename}');
INSERT INTO `qs_mail_templates` VALUES ('42','set_downapp_title','{trainname}�������������߿γ�({coursename})���룡');
INSERT INTO `qs_mail_templates` VALUES ('43','set_hunallow_title','��ϲ��������ͷ��������({huntername})��ͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('44','set_hunnotallow_title','�ܱ�Ǹ��������ͷ��������({huntername})δͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('45','set_hunjobsallow_title','��ϲ����������ְλ({jobsname})�Ѿ�ͨ����ˣ�');
INSERT INTO `qs_mail_templates` VALUES ('46','set_hunjobsnotallow_title','�ܱ�Ǹ����������ְλ({jobsname})δͨ����ˣ�');
DROP TABLE IF EXISTS `qs_mailconfig`;
CREATE TABLE `qs_mailconfig` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_mailconfig` VALUES ('1','method','1');
INSERT INTO `qs_mailconfig` VALUES ('2','smtpservers','');
INSERT INTO `qs_mailconfig` VALUES ('3','smtpusername','');
INSERT INTO `qs_mailconfig` VALUES ('4','smtppassword','');
INSERT INTO `qs_mailconfig` VALUES ('5','smtpfrom','');
INSERT INTO `qs_mailconfig` VALUES ('6','smtpport','25');
INSERT INTO `qs_mailconfig` VALUES ('7','set_reg','0');
INSERT INTO `qs_mailconfig` VALUES ('8','set_applyjobs','0');
INSERT INTO `qs_mailconfig` VALUES ('9','set_invite','0');
INSERT INTO `qs_mailconfig` VALUES ('10','set_order','0');
INSERT INTO `qs_mailconfig` VALUES ('11','set_payment','0');
INSERT INTO `qs_mailconfig` VALUES ('12','set_editpwd','0');
INSERT INTO `qs_mailconfig` VALUES ('13','set_jobsallow','0');
INSERT INTO `qs_mailconfig` VALUES ('14','set_jobsnotallow','0');
INSERT INTO `qs_mailconfig` VALUES ('15','set_licenseallow','0');
INSERT INTO `qs_mailconfig` VALUES ('16','set_licensenotallow','0');
INSERT INTO `qs_mailconfig` VALUES ('17','set_addmap','0');
INSERT INTO `qs_mailconfig` VALUES ('18','set_resumeallow','0');
INSERT INTO `qs_mailconfig` VALUES ('19','set_resumenotallow','0');
INSERT INTO `qs_mailconfig` VALUES ('20','set_teaallow','0');
INSERT INTO `qs_mailconfig` VALUES ('21','set_teanotallow','0');
INSERT INTO `qs_mailconfig` VALUES ('22','set_couallow','0');
INSERT INTO `qs_mailconfig` VALUES ('23','set_counotallow','0');
INSERT INTO `qs_mailconfig` VALUES ('24','set_applycou','0');
INSERT INTO `qs_mailconfig` VALUES ('25','set_downapp','0');
INSERT INTO `qs_mailconfig` VALUES ('26','set_hunallow','0');
INSERT INTO `qs_mailconfig` VALUES ('27','set_hunnotallow','0');
INSERT INTO `qs_mailconfig` VALUES ('28','set_hunjobsallow','0');
INSERT INTO `qs_mailconfig` VALUES ('29','set_hunjobsnotallow','0');
DROP TABLE IF EXISTS `qs_mailqueue`;
CREATE TABLE `qs_mailqueue` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_addtime` int(10) unsigned NOT NULL,
  `m_sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `m_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `m_mail` varchar(80) NOT NULL,
  `m_subject` varchar(200) NOT NULL,
  `m_body` text NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `m_uid` (`m_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_members`;
CREATE TABLE `qs_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `username` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL,
  `email_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(11) NOT NULL,
  `mobile_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `pwd_hash` varchar(30) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL,
  `reg_ip` varchar(15) NOT NULL,
  `last_login_time` int(10) unsigned NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  `qq_openid` varchar(50) NOT NULL,
  `sina_access_token` varchar(50) NOT NULL,
  `taobao_access_token` varchar(50) NOT NULL,
  `qq_nick` varchar(100) NOT NULL,
  `sina_nick` varchar(100) NOT NULL,
  `taobao_nick` varchar(100) NOT NULL,
  `weixin_nick` varchar(100) NOT NULL,
  `qq_binding_time` int(10) NOT NULL,
  `sina_binding_time` int(10) NOT NULL,
  `taobao_binding_time` int(10) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `avatars` varchar(32) NOT NULL,
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `consultant` smallint(5) unsigned NOT NULL,
  `weixin_openid` varchar(50) DEFAULT NULL,
  `bindingtime` int(10) unsigned NOT NULL,
  `remind_email_time` int(10) unsigned DEFAULT NULL,
  `imei` varchar(50) NOT NULL DEFAULT '',
  `sms_num` int(10) NOT NULL DEFAULT '0',
  `reg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`),
  KEY `qq_openid` (`qq_openid`),
  KEY `sina_access_token` (`sina_access_token`),
  KEY `taobao_access_token` (`taobao_access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members` VALUES ('1','1','362392403@qq.com','362392403@qq.com','0','','0','f98f3e4e2b0b4617400a3144c2065079','XDw?Q4','1462420652','110.177.50.44','1462589379','110.178.240.228','','','','','','','','0','0','0','1','','0','0','','0','0','','0','1');
INSERT INTO `qs_members` VALUES ('2','2','aaaaaa','11@163.com','0','','0','60969c9b7f149258a6ef6fc24682ed35','TAo8F7','1462435017','110.177.50.44','1462590912','110.178.240.228','','','','','','','','0','0','0','1','','0','0','','0','0','','0','0');
INSERT INTO `qs_members` VALUES ('3','2','826893464@qq.com','826893464@qq.com','0','','0','233ca6a9d1db3aec574681678ba5c35c','c4VisX','1462435431','110.177.50.44','1462435431','110.177.50.44','','','','','','','','0','0','0','1','','0','0','','0','0','','0','1');
INSERT INTO `qs_members` VALUES ('4','2','572bf77d20e601462499197','tyhyfei@163.com','0','13513541300','0','b2b60a5399199c04e4b1bcc677464ee0','Czud6i','1462499196','110.177.50.44','0','','','','','','','','','0','0','0','1','','0','0','','0','','','0','0');
INSERT INTO `qs_members` VALUES ('5','1','wudazui@sina.com','wudazui@sina.com','0','','0','dfe086f3d4a956dfa6d667eb16aca608','9dIiWT','1462503768','127.0.0.1','1462504013','127.0.0.1','','','','','','','','0','0','0','1','','0','0','','0','0','','0','1');
INSERT INTO `qs_members` VALUES ('6','1','qqqqqqqqqqq','111@163.com','0','','0','6de91c27e6762ee2b2b42894334ef13a','4rDn?p','1462518787','110.178.240.228','0','','','','','','','','','0','0','0','1','','0','0','','0','','','0','0');
INSERT INTO `qs_members` VALUES ('7','2','bbbb','bbb@bbbb.com','0','','0','398968fad7a2b23fa66fd569810fbe88','VCAit=','1462606803','114.111.167.234','1462760097','114.111.167.234','','','','','','','','0','0','0','1','','0','0','','0','0','','0','0');
DROP TABLE IF EXISTS `qs_members_charge_log`;
CREATE TABLE `qs_members_charge_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_uid` int(10) NOT NULL,
  `log_username` varchar(60) NOT NULL,
  `log_addtime` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_amount` decimal(10,2) NOT NULL,
  `log_ismoney` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_type` tinyint(1) unsigned NOT NULL,
  `log_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`),
  KEY `log_username` (`log_username`),
  KEY `log_addtime` (`log_addtime`),
  KEY `type_addtime` (`log_type`,`log_addtime`),
  KEY `uid_addtime` (`log_uid`,`log_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members_charge_log` VALUES ('1','1','','1462420652','ע���Աϵͳ�Զ����ͣ�(+100),(ʣ��:100)','0.00','1','1','1','1');
INSERT INTO `qs_members_charge_log` VALUES ('2','1','','1462420652','ע���Աϵͳ�Զ����ͣ���ѻ�Ա','0.00','1','1','2','1');
INSERT INTO `qs_members_charge_log` VALUES ('3','1','362392403@qq.com','1462442014','�����ˣ�admin,˵�����޸Ļ�Ա 362392403@qq.com ���� (+1000)����ȡ���ֽ�0 Ԫ����ע��1000','0.00','2','3','1','1');
INSERT INTO `qs_members_charge_log` VALUES ('4','5','','1462503769','ע���Աϵͳ�Զ����ͣ�(+100),(ʣ��:100)','0.00','1','1','1','1');
INSERT INTO `qs_members_charge_log` VALUES ('5','5','','1462503770','ע���Աϵͳ�Զ����ͣ���ѻ�Ա','0.00','1','1','2','1');
INSERT INTO `qs_members_charge_log` VALUES ('6','6','qqqqqqqqqqq','1462518787','�����ˣ�admin,˵������̨�����ҵ��Ա������(+100)���֣���ȡ���ã�0.00Ԫ','0.00','1','4','1','1');
DROP TABLE IF EXISTS `qs_members_gifts`;
CREATE TABLE `qs_members_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `usetime` int(10) unsigned NOT NULL DEFAULT '0',
  `account` varchar(180) NOT NULL,
  `giftsname` varchar(180) NOT NULL,
  `giftsamount` int(10) NOT NULL,
  `giftstid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `giftstid` (`giftstid`),
  KEY `uid` (`uid`),
  KEY `usetime` (`usetime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_members_handsel`;
CREATE TABLE `qs_members_handsel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `htype` varchar(60) NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`htype`,`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members_handsel` VALUES ('1','1','userlogin','0','1462420652');
INSERT INTO `qs_members_handsel` VALUES ('2','1','company_profile_points','0','1462420723');
INSERT INTO `qs_members_handsel` VALUES ('3','3','userlogin','0','1462435431');
INSERT INTO `qs_members_handsel` VALUES ('4','3','createresume','100','1462440426');
INSERT INTO `qs_members_handsel` VALUES ('5','3','createresume','100','1462441846');
INSERT INTO `qs_members_handsel` VALUES ('6','1','userlogin','0','1462503723');
INSERT INTO `qs_members_handsel` VALUES ('7','5','userlogin','0','1462503770');
INSERT INTO `qs_members_handsel` VALUES ('8','3','resumeapplyjobs','10','1462515971');
INSERT INTO `qs_members_handsel` VALUES ('9','1','companyauth','0','1462518911');
INSERT INTO `qs_members_handsel` VALUES ('10','5','company_profile_points','0','1462519791');
INSERT INTO `qs_members_handsel` VALUES ('11','5','company_logo_points','0','1462519816');
INSERT INTO `qs_members_handsel` VALUES ('12','4','resumeapplyjobs','10','1462521316');
INSERT INTO `qs_members_handsel` VALUES ('13','4','resumeapplyjobs','10','1462521483');
INSERT INTO `qs_members_handsel` VALUES ('14','1','userlogin','0','1462589379');
INSERT INTO `qs_members_handsel` VALUES ('15','2','userlogin','0','1462590092');
INSERT INTO `qs_members_handsel` VALUES ('16','4','resumeapplyjobs','10','1462603280');
INSERT INTO `qs_members_handsel` VALUES ('17','4','resumeapplyjobs','10','1462603304');
INSERT INTO `qs_members_handsel` VALUES ('18','7','userlogin','0','1462606814');
INSERT INTO `qs_members_handsel` VALUES ('19','7','userlogin','0','1462760098');
DROP TABLE IF EXISTS `qs_members_hunter_setmeal`;
CREATE TABLE `qs_members_hunter_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `effective` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `setmeal_id` int(10) unsigned NOT NULL,
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `expense` int(10) unsigned NOT NULL,
  `jobs_add` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `added` varchar(250) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `hunter_refresh_jobs_space` int(10) unsigned NOT NULL DEFAULT '0',
  `hunter_refresh_jobs_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `effective_setmealid` (`effective`,`setmeal_id`),
  KEY `effective_endtime` (`effective`,`endtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_members_info`;
CREATE TABLE `qs_members_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `realname` varchar(30) NOT NULL,
  `sex` smallint(1) unsigned NOT NULL,
  `sex_cn` varchar(10) NOT NULL,
  `birthday` varchar(30) NOT NULL,
  `residence` varchar(30) NOT NULL DEFAULT '',
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `major` smallint(5) NOT NULL,
  `major_cn` varchar(50) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `householdaddress` varchar(30) NOT NULL DEFAULT '',
  `marriage` smallint(5) unsigned NOT NULL,
  `marriage_cn` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members_info` VALUES ('1','3','�Ż�','1','��','1992','ɽ��̫ԭ','69','��ר','0','','77','3-5��','','826893464@qq.com','172','','1','δ��');
INSERT INTO `qs_members_info` VALUES ('2','4','�����','2','Ů','1996','��������','70','����','0','','77','3-5��','13513541300','tyhyfei@163.com','163','����','1','δ��');
DROP TABLE IF EXISTS `qs_members_log`;
CREATE TABLE `qs_members_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_uid` int(10) NOT NULL,
  `log_username` varchar(60) NOT NULL,
  `log_addtime` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_address` varchar(50) NOT NULL,
  `log_utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_type` smallint(5) unsigned NOT NULL DEFAULT '1',
  `log_mode` tinyint(1) unsigned NOT NULL,
  `log_op_type` smallint(5) unsigned NOT NULL,
  `log_op_type_cn` varchar(20) NOT NULL,
  `log_op_used` varchar(20) NOT NULL,
  `log_op_leave` varchar(20) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_username` (`log_username`),
  KEY `log_addtime` (`log_addtime`),
  KEY `type_addtime` (`log_type`,`log_addtime`),
  KEY `utype_addtime` (`log_utype`,`log_addtime`),
  KEY `uid_addtime` (`log_uid`,`log_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members_log` VALUES ('1','1','','1462420652','��ע���Ա,(+100),(ʣ��:100)','110.177.50.44','- ɽ��','1','9001','1','1010','ע���Աϵͳ�Զ����ͻ���','+100','100');
INSERT INTO `qs_members_log` VALUES ('2','1','','1462420652','ע���Աϵͳ�Զ����ͣ���ѻ�Ա','110.177.50.44','- ɽ��','1','9002','2','1011','��ͨ����(ϵͳ����)','-','-');
INSERT INTO `qs_members_log` VALUES ('3','1','','1462420652','ע���Ϊ��Ա','110.177.50.44','- ɽ��','1','1000','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('4','1','362392403@qq.com','1462420652','2016-05-05 ��һ�ε�¼��(+1)��(ʣ��:101)','110.177.50.44','- ɽ��','1','9001','1','1014','��Աÿ���һ�ε�¼','+1','101');
INSERT INTO `qs_members_log` VALUES ('5','1','362392403@qq.com','1462420652','�ɹ���¼','110.177.50.44','- ɽ��','1','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('6','1','362392403@qq.com','1462420723',' ������ҵ���ϣ�����(+20)��(ʣ��:121)','110.177.50.44','- ɽ��','1','9001','1','1016','������ҵ����','+20','121');
INSERT INTO `qs_members_log` VALUES ('7','1','362392403@qq.com','1462420723','������ҵ����','110.177.50.44','- ɽ��','1','8001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('8','1','362392403@qq.com','1462432095','��Ӷ��������R-160505-150815�����100Ԫ','110.177.50.44','- ɽ��','1','3001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('9','2','aaaaaa','1462435017','����Ա�ں�̨������Ա','110.177.50.44','- ɽ��','1','1000','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('10','3','','1462435431','��ע���Ա,(+100),(ʣ��:100)','110.177.50.44','- ɽ��','2','9001','2','1010','ע���Աϵͳ�Զ����ͻ���','+100','100');
INSERT INTO `qs_members_log` VALUES ('11','3','','1462435431','ע���Ϊ��Ա','110.177.50.44','- ɽ��','2','1000','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('12','3','826893464@qq.com','1462435431','2016-05-05 ��һ�ε�¼��(+2)��(ʣ��:102)','110.177.50.44','- ɽ��','2','9001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('13','3','826893464@qq.com','1462435431','�ɹ���¼','110.177.50.44','- ɽ��','2','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('14','3','826893464@qq.com','1462440426','�����˼�����<strong>11111</strong>��(+100)��(ʣ��:202)','110.177.50.44','- ɽ��','2','9001','2','1101','�����˼���','+100','202');
INSERT INTO `qs_members_log` VALUES ('15','1','362392403@qq.com','1462440610','������ 826893464@qq.com �����ļ���(-1),(ʣ��:120)','110.177.50.44','- ɽ��','1','9001','1','1004','������ͨ����','-1','120');
INSERT INTO `qs_members_log` VALUES ('16','1','362392403@qq.com','1462440610','������ 826893464@qq.com �����ļ���','110.177.50.44','- ɽ��','1','4001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('17','3','826893464@qq.com','1462441846','�����˼�����<strong>δ��������</strong>��(+100)��(ʣ��:302)','110.177.50.44','- ɽ��','2','9001','2','1101','�����˼���','+100','302');
INSERT INTO `qs_members_log` VALUES ('18','1','362392403@qq.com','1462442014',' ����Ա��������(+1000)��(ʣ��:1120)����ע��1000','110.177.50.44','- ɽ��','1','9001','1','1012','����Ա��������','+1000','1120');
INSERT INTO `qs_members_log` VALUES ('19','1','362392403@qq.com','1462442858','������ 826893464@qq.com �����ļ���(-1),(ʣ��:1119)','110.177.50.44','- ɽ��','1','9001','1','1004','������ͨ����','-1','1119');
INSERT INTO `qs_members_log` VALUES ('20','1','362392403@qq.com','1462442858','������ 826893464@qq.com �����ļ���','110.177.50.44','- ɽ��','1','4001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('21','1','362392403@qq.com','1462503723','2016-05-06 ��һ�ε�¼��(+1)��(ʣ��:1120)','127.0.0.1','- LAN','1','9001','1','1014','��Աÿ���һ�ε�¼','+1','1120');
INSERT INTO `qs_members_log` VALUES ('22','1','362392403@qq.com','1462503724','�ɹ���¼','127.0.0.1','- LAN','1','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('23','5','','1462503769','��ע���Ա,(+100),(ʣ��:100)','127.0.0.1','- LAN','1','9001','1','1010','ע���Աϵͳ�Զ����ͻ���','+100','100');
INSERT INTO `qs_members_log` VALUES ('24','5','','1462503770','ע���Աϵͳ�Զ����ͣ���ѻ�Ա','127.0.0.1','- LAN','1','9002','2','1011','��ͨ����(ϵͳ����)','-','-');
INSERT INTO `qs_members_log` VALUES ('25','5','','1462503770','ע���Ϊ��Ա','127.0.0.1','- LAN','1','1000','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('26','5','wudazui@sina.com','1462503771','2016-05-06 ��һ�ε�¼��(+1)��(ʣ��:101)','127.0.0.1','- LAN','1','9001','1','1014','��Աÿ���һ�ε�¼','+1','101');
INSERT INTO `qs_members_log` VALUES ('27','5','wudazui@sina.com','1462503771','�ɹ���¼','127.0.0.1','- LAN','1','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('28','5','wudazui@sina.com','1462503929','�ɹ���¼','127.0.0.1','- LAN','1','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('29','5','wudazui@sina.com','1462504014','�ɹ���¼','127.0.0.1','- LAN','1','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('30','1','362392403@qq.com','1462515868','������ְλ��<strong>��Ŀ����</strong>��(-15)��(ʣ��:1105)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','1105');
INSERT INTO `qs_members_log` VALUES ('31','1','362392403@qq.com','1462515868','������ְλ����Ŀ����','110.178.240.228','- ɽ��̫ԭ','1','2001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('32','3','826893464@qq.com','1462515971','Ͷ���˼�����ְλ:��Ŀ���ܣ�(+10)��(ʣ��:312)','110.178.240.228','- ɽ��̫ԭ','2','9001','2','1301','����ְλ','+10','312');
INSERT INTO `qs_members_log` VALUES ('33','1','362392403@qq.com','1462516024','���� 826893464@qq.com ����(-1),(ʣ��:1104)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1006','������ͨ�˲�����','-1','1104');
INSERT INTO `qs_members_log` VALUES ('34','1','362392403@qq.com','1462516024','���� 826893464@qq.com ����','110.178.240.228','- ɽ��̫ԭ','1','6001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('35','3','826893464@qq.com','1462516093','�鿴�� 362392403@qq.com ����������','110.178.240.228','- ɽ��̫ԭ','2','1108','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('36','1','362392403@qq.com','1462516360','������ְλ��<strong>����ʦ</strong>��(-15)��(ʣ��:1089)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','1089');
INSERT INTO `qs_members_log` VALUES ('37','1','362392403@qq.com','1462516360','������ְλ������ʦ','110.178.240.228','- ɽ��̫ԭ','1','2001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('38','1','362392403@qq.com','1462516461','������ְλ��<strong>���繤��ʦ</strong>��(-15)��(ʣ��:1074)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','1074');
INSERT INTO `qs_members_log` VALUES ('39','1','362392403@qq.com','1462516461','������ְλ�����繤��ʦ','110.178.240.228','- ɽ��̫ԭ','1','2001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('40','6','qqqqqqqqqqq','1462518787','<span style=color:#FF6600>ע���Աϵͳ�Զ�����!(+100)</span>','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1010','ע���Աϵͳ�Զ�����','+100','100');
INSERT INTO `qs_members_log` VALUES ('41','1','362392403@qq.com','1462518911',' ��Ϊ����֤��ҵ(+15)��(ʣ��:1089)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1013','��֤Ӫҵִ��','+15','1089');
INSERT INTO `qs_members_log` VALUES ('42','5','wudazui@sina.com','1462519791',' ������ҵ���ϣ�����(+20)��(ʣ��:121)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1016','������ҵ����','+20','121');
INSERT INTO `qs_members_log` VALUES ('43','5','wudazui@sina.com','1462519791','������ҵ����','110.178.240.228','- ɽ��̫ԭ','1','8001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('44','5','wudazui@sina.com','1462519816','�ϴ�����ҵLOGO','110.178.240.228','- ɽ��̫ԭ','1','8003','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('45','5','wudazui@sina.com','1462519816',' �ϴ���ҵlogo������(+10)��(ʣ��:131)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1016','�ϴ���ҵlogo','+10','131');
INSERT INTO `qs_members_log` VALUES ('46','5','wudazui@sina.com','1462519826','��ͨ�˵��ӵ�ͼ','110.178.240.228','- ɽ��̫ԭ','1','8005','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('47','5','wudazui@sina.com','1462519826','��ͨ�˵��ӵ�ͼ(+10)��(ʣ��:141)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1008','��ͨ���ӵ�ͼ','+10','141');
INSERT INTO `qs_members_log` VALUES ('48','5','wudazui@sina.com','1462519832','�޸���ҵ����','110.178.240.228','- ɽ��̫ԭ','1','8001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('49','5','wudazui@sina.com','1462519915','������ְλ��<strong>�г��ܼ�</strong>��(-15)��(ʣ��:126)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','126');
INSERT INTO `qs_members_log` VALUES ('50','5','wudazui@sina.com','1462519958','������ 826893464@qq.com �����ļ���(-1),(ʣ��:125)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1004','������ͨ����','-1','125');
INSERT INTO `qs_members_log` VALUES ('51','5','wudazui@sina.com','1462519958','������ 826893464@qq.com �����ļ���','110.178.240.228','- ɽ��̫ԭ','1','4001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('52','1','362392403@qq.com','1462521005','������ְλ��<strong>����</strong>��(-15)��(ʣ��:1074)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','1074');
INSERT INTO `qs_members_log` VALUES ('53','1','362392403@qq.com','1462521005','������ְλ������','110.178.240.228','- ɽ��̫ԭ','1','2001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('54','5','wudazui@sina.com','1462521125','������ְλ��<strong>�����ܼ�</strong>��(-15)��(ʣ��:110)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','110');
INSERT INTO `qs_members_log` VALUES ('55','5','wudazui@sina.com','1462521125','������ְλ�������ܼ�','110.178.240.228','- ɽ��̫ԭ','1','2001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('56','5','wudazui@sina.com','1462521252','������ 572bf77d20e601462499197 �����ļ���(-1),(ʣ��:109)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1004','������ͨ����','-1','109');
INSERT INTO `qs_members_log` VALUES ('57','5','wudazui@sina.com','1462521252','������ 572bf77d20e601462499197 �����ļ���','110.178.240.228','- ɽ��̫ԭ','1','4001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('58','5','wudazui@sina.com','1462521268','���� 572bf77d20e601462499197 ����(-1),(ʣ��:108)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1006','������ͨ�˲�����','-1','108');
INSERT INTO `qs_members_log` VALUES ('59','5','wudazui@sina.com','1462521268','���� 572bf77d20e601462499197 ����','110.178.240.228','- ɽ��̫ԭ','1','6001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('60','4','572bf77d20e601462499197','1462521316','Ͷ���˼�����ְλ:������(+10)��(ʣ��:)','110.178.240.228','- ɽ��̫ԭ','2','9001','2','1301','����ְλ','+10','');
INSERT INTO `qs_members_log` VALUES ('61','4','572bf77d20e601462499197','1462521483','Ͷ���˼�����ְλ:���繤��ʦ��(+10)��(ʣ��:)','110.178.240.228','- ɽ��̫ԭ','2','9001','2','1301','����ְλ','+10','');
INSERT INTO `qs_members_log` VALUES ('62','1','362392403@qq.com','1462521820','�鿴�� 572bf77d20e601462499197 ��ְλ����','110.178.240.228','- ɽ��̫ԭ','1','2006','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('63','1','362392403@qq.com','1462521820','�鿴�� 572bf77d20e601462499197 ��ְλ����','110.178.240.228','- ɽ��̫ԭ','1','2006','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('64','1','362392403@qq.com','1462521820','�鿴�� 826893464@qq.com ��ְλ����','110.178.240.228','- ɽ��̫ԭ','1','2006','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('65','4','572bf77d20e601462499197','1462526797','Ͷ���˼�����ְλ:��Ŀ����','110.178.240.228','- ɽ��̫ԭ','2','1301','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('66','1','362392403@qq.com','1462526903','���� 826893464@qq.com ����(-1),(ʣ��:1073)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1006','������ͨ�˲�����','-1','1073');
INSERT INTO `qs_members_log` VALUES ('67','1','362392403@qq.com','1462526903','���� 826893464@qq.com ����','110.178.240.228','- ɽ��̫ԭ','1','6001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('68','1','362392403@qq.com','1462526927','���� 572bf77d20e601462499197 ����(-1),(ʣ��:1072)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1006','������ͨ�˲�����','-1','1072');
INSERT INTO `qs_members_log` VALUES ('69','1','362392403@qq.com','1462526927','���� 572bf77d20e601462499197 ����','110.178.240.228','- ɽ��̫ԭ','1','6001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('70','1','362392403@qq.com','1462526939','���� 572bf77d20e601462499197 ����(-1),(ʣ��:1071)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1006','������ͨ�˲�����','-1','1071');
INSERT INTO `qs_members_log` VALUES ('71','1','362392403@qq.com','1462526939','���� 572bf77d20e601462499197 ����','110.178.240.228','- ɽ��̫ԭ','1','6001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('72','3','826893464@qq.com','1462531793','�鿴�� 362392403@qq.com ����������','110.178.240.228','- ɽ��̫ԭ','2','1108','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('73','1','362392403@qq.com','1462589379','2016-05-07 ��һ�ε�¼��(+1)��(ʣ��:1072)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1014','��Աÿ���һ�ε�¼','+1','1072');
INSERT INTO `qs_members_log` VALUES ('74','1','362392403@qq.com','1462589379','�ɹ���¼','110.178.240.228','- ɽ��̫ԭ','1','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('75','2','aaaaaa','1462590074','����Ա�ں�̨�޸ĵ�¼����','110.178.240.228','- ɽ��̫ԭ','1','1004','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('76','2','aaaaaa','1462590093','2016-05-07 ��һ�ε�¼��(+2)��(ʣ��:2)','110.178.240.228','- ɽ��̫ԭ','2','9001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('77','2','aaaaaa','1462590093','�ɹ���¼','110.178.240.228','- ɽ��̫ԭ','2','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('78','2','aaaaaa','1462590912','�ɹ���¼','110.178.240.228','- ɽ��̫ԭ','2','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('79','1','362392403@qq.com','1462603183','������ְλ��<strong>�߻��ܼ�</strong>��(-15)��(ʣ��:1057)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','1057');
INSERT INTO `qs_members_log` VALUES ('80','1','362392403@qq.com','1462603183','������ְλ���߻��ܼ�','110.178.240.228','- ɽ��̫ԭ','1','2001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('81','1','362392403@qq.com','1462603230','������ְλ��<strong>����</strong>��(-15)��(ʣ��:1042)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1001','����ְλ','-15','1042');
INSERT INTO `qs_members_log` VALUES ('82','1','362392403@qq.com','1462603230','������ְλ������','110.178.240.228','- ɽ��̫ԭ','1','2001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('83','4','572bf77d20e601462499197','1462603280','Ͷ���˼�����ְλ:���룬(+10)��(ʣ��:)','110.178.240.228','- ɽ��̫ԭ','2','9001','2','1301','����ְλ','+10','');
INSERT INTO `qs_members_log` VALUES ('84','4','572bf77d20e601462499197','1462603304','Ͷ���˼�����ְλ:�߻��ܼ࣬(+10)��(ʣ��:)','110.178.240.228','- ɽ��̫ԭ','2','9001','2','1301','����ְλ','+10','');
INSERT INTO `qs_members_log` VALUES ('85','1','362392403@qq.com','1462604732','ɾ�������ؼ���(2)','110.178.240.228','- ɽ��̫ԭ','1','4002','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('86','1','362392403@qq.com','1462604739','ɾ�������ؼ���(1)','110.178.240.228','- ɽ��̫ԭ','1','4002','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('87','7','bbbb','1462606803','����Ա�ں�̨������Ա','114.111.167.234','- �Ϻ�','1','1000','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('88','7','bbbb','1462606814','2016-05-07 ��һ�ε�¼��(+2)��(ʣ��:2)','114.111.167.234','- �Ϻ�','2','9001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('89','7','bbbb','1462606814','�ɹ���¼','114.111.167.234','- �Ϻ�','2','1001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('90','1','362392403@qq.com','1462608934','������ 826893464@qq.com �����ļ���(-1),(ʣ��:1041)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1004','������ͨ����','-1','1041');
INSERT INTO `qs_members_log` VALUES ('91','1','362392403@qq.com','1462608934','������ 826893464@qq.com �����ļ���','110.178.240.228','- ɽ��̫ԭ','1','4001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('92','3','826893464@qq.com','1462612227','ɾ������������(4)','110.178.240.228','- ɽ��̫ԭ','2','1502','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('93','1','362392403@qq.com','1462612381','���� 572bf77d20e601462499197 ����(-1),(ʣ��:1040)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1006','������ͨ�˲�����','-1','1040');
INSERT INTO `qs_members_log` VALUES ('94','1','362392403@qq.com','1462612381','���� 572bf77d20e601462499197 ����','110.178.240.228','- ɽ��̫ԭ','1','6001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('95','4','572bf77d20e601462499197','1462612425','�鿴�� 362392403@qq.com ����������','110.178.240.228','- ɽ��̫ԭ','2','1108','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('96','4','572bf77d20e601462499197','1462612858','ɾ����ְλ����(2)','110.178.240.228','- ɽ��̫ԭ','2','1302','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('97','1','362392403@qq.com','1462613038','���� 572bf77d20e601462499197 ����(-1),(ʣ��:1039)','110.178.240.228','- ɽ��̫ԭ','1','9001','1','1006','������ͨ�˲�����','-1','1039');
INSERT INTO `qs_members_log` VALUES ('98','1','362392403@qq.com','1462613038','���� 572bf77d20e601462499197 ����','110.178.240.228','- ɽ��̫ԭ','1','6001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('99','7','bbbb','1462760099','2016-05-09 ��һ�ε�¼��(+2)��(ʣ��:4)','114.111.167.234','- �Ϻ�','2','9001','0','0','','','');
INSERT INTO `qs_members_log` VALUES ('100','7','bbbb','1462760100','�ɹ���¼','114.111.167.234','- �Ϻ�','2','1001','0','0','','','');
DROP TABLE IF EXISTS `qs_members_points`;
CREATE TABLE `qs_members_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members_points` VALUES ('1','1','1039');
INSERT INTO `qs_members_points` VALUES ('2','2','2');
INSERT INTO `qs_members_points` VALUES ('3','3','312');
INSERT INTO `qs_members_points` VALUES ('4','5','108');
INSERT INTO `qs_members_points` VALUES ('5','6','100');
INSERT INTO `qs_members_points` VALUES ('6','7','4');
DROP TABLE IF EXISTS `qs_members_points_rule`;
CREATE TABLE `qs_members_points_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `utype` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `operation` tinyint(1) NOT NULL DEFAULT '2',
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members_points_rule` VALUES ('1','1','ˢ��ְλ','jobs_refresh','2','0');
INSERT INTO `qs_members_points_rule` VALUES ('2','1','����ְλ','jobs_add','2','15');
INSERT INTO `qs_members_points_rule` VALUES ('3','1','���ƻ�������','company_profile_points','1','20');
INSERT INTO `qs_members_points_rule` VALUES ('4','1','������ͨ����','resume_download','2','1');
INSERT INTO `qs_members_points_rule` VALUES ('5','1','���ظ߼��˲ż���','resume_download_advanced','2','2');
INSERT INTO `qs_members_points_rule` VALUES ('6','1','������ͨ�˲���������','interview_invite','2','1');
INSERT INTO `qs_members_points_rule` VALUES ('7','1','����߼��˲���������','interview_invite_advanced','2','2');
INSERT INTO `qs_members_points_rule` VALUES ('8','1','�޸���Ƹ��Ϣ','jobs_edit','2','3');
INSERT INTO `qs_members_points_rule` VALUES ('9','1','���ÿ�ͨ���ӵ�ͼ','company_map','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('10','1','�ϴ�Ӫҵִ�ղ���֤ͨ��','company_auth','1','15');
INSERT INTO `qs_members_points_rule` VALUES ('11','1','��ע���Ա����','reg_points','1','100');
INSERT INTO `qs_members_points_rule` VALUES ('12','1','��Աÿ���һ�ε�¼','userlogin','1','1');
INSERT INTO `qs_members_points_rule` VALUES ('13','1','��Ա������֤ͨ��','verifyemail','1','3');
INSERT INTO `qs_members_points_rule` VALUES ('14','1','��Ա�ֻ���֤ͨ��','verifymobile','1','3');
INSERT INTO `qs_members_points_rule` VALUES ('15','1','ԤԼˢ��ְλÿ�����Ļ���','job_auto_refresh','2','10');
INSERT INTO `qs_members_points_rule` VALUES ('16','1','�ϴ�logo','company_logo_points','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('17','1','΢����֤','company_wx_points','1','2');
INSERT INTO `qs_members_points_rule` VALUES ('18','1','�ϴ���ҵ���','company_img_points','1','20');
INSERT INTO `qs_members_points_rule` VALUES ('19','1','������ҵ��̬','company_news_points','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('20','1','�ٱ�����','company_report_resume_points','1','20');
INSERT INTO `qs_members_points_rule` VALUES ('21','1','ְλ���ٱ�','company_jobs_report_points','2','10');
INSERT INTO `qs_members_points_rule` VALUES ('22','2','ˢ�¼���','resume_refresh','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('23','2','��������','create_resume','1','100');
INSERT INTO `qs_members_points_rule` VALUES ('24','2','����ְλ','apply_jobs','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('25','2','ɾ������','delete_resume','2','10');
INSERT INTO `qs_members_points_rule` VALUES ('26','2','���Ƽ���','perfect_resume','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('27','2','������֤ͨ��','per_verifyemail','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('28','2','�ֻ���֤ͨ��','per_verifymobile','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('29','2','΢�Ű�','per_verifyweixin','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('30','2','�ٱ�ְλ','report_jobs','1','10');
INSERT INTO `qs_members_points_rule` VALUES ('31','2','�������ٱ�','resume_report','2','100');
INSERT INTO `qs_members_points_rule` VALUES ('32','2','��ע���Ա����','reg_per_points','1','100');
INSERT INTO `qs_members_points_rule` VALUES ('33','2','��Աÿ���һ�ε�¼','personaluserlogin','1','2');
INSERT INTO `qs_members_points_rule` VALUES ('34','3','������ͷְλ','hunter_hunterjobs_add','2','20');
INSERT INTO `qs_members_points_rule` VALUES ('35','3','��ͷְλ��Ч����ÿ��','hunter_hunterjobs_daily','2','3');
INSERT INTO `qs_members_points_rule` VALUES ('36','3','�޸���ͷְλ��Ϣ','hunter_hunterjobs_edit','2','5');
INSERT INTO `qs_members_points_rule` VALUES ('37','3','ˢ����ͷְλ','hunter_hunterjobs_refresh','2','5');
INSERT INTO `qs_members_points_rule` VALUES ('38','3','������ͨ�˲ż���','hunter_resume_download','2','2');
INSERT INTO `qs_members_points_rule` VALUES ('39','3','���ظ߼��˲ż���','hunter_resume_download_advanced','2','3');
INSERT INTO `qs_members_points_rule` VALUES ('40','3','������ͨ�˲���������','hunter_interview_invite','2','2');
INSERT INTO `qs_members_points_rule` VALUES ('41','3','����߼��˲���������','hunter_interview_invite_advanced','2','3');
INSERT INTO `qs_members_points_rule` VALUES ('42','3','�ϴ���ͷ��Ƭ����֤ͨ��','hunter_auth','1','15');
INSERT INTO `qs_members_points_rule` VALUES ('43','3','��ע���Ա����','hunterreg_points','1','60');
INSERT INTO `qs_members_points_rule` VALUES ('44','3','��Աÿ���һ�ε�¼','hunteruserlogin','1','1');
INSERT INTO `qs_members_points_rule` VALUES ('45','3','��Ա������֤ͨ��','hunter_verifyemail','1','3');
INSERT INTO `qs_members_points_rule` VALUES ('46','3','��Ա�ֻ���֤ͨ��','hunter_verifymobile','1','3');
INSERT INTO `qs_members_points_rule` VALUES ('47','4','ˢ�¿γ�','course_refresh','2','0');
INSERT INTO `qs_members_points_rule` VALUES ('48','4','�����γ�','course_add','2','15');
INSERT INTO `qs_members_points_rule` VALUES ('49','4','�γ���Ч����ÿ��','course_daily','2','1');
INSERT INTO `qs_members_points_rule` VALUES ('50','4','�޸Ŀγ���Ϣ','course_edit','2','3');
INSERT INTO `qs_members_points_rule` VALUES ('51','4','��ӽ�ʦ','teacher_add','2','3');
INSERT INTO `qs_members_points_rule` VALUES ('52','4','�鿴��������ϵ��ʽ','down_apply','2','3');
INSERT INTO `qs_members_points_rule` VALUES ('53','4','���ÿ�ͨ���ӵ�ͼ','train_map','2','10');
INSERT INTO `qs_members_points_rule` VALUES ('54','4','�ϴ�Ӫҵִ�ղ���֤ͨ��','train_auth','1','15');
INSERT INTO `qs_members_points_rule` VALUES ('55','4','��ע���Ա����','trainreg_points','1','60');
INSERT INTO `qs_members_points_rule` VALUES ('56','4','��Աÿ���һ�ε�¼','trainuserlogin','1','1');
INSERT INTO `qs_members_points_rule` VALUES ('57','4','��Ա������֤ͨ��','train_verifyemail','1','3');
INSERT INTO `qs_members_points_rule` VALUES ('58','4','��Ա�ֻ���֤ͨ��','train_verifymobile','1','3');
DROP TABLE IF EXISTS `qs_members_setmeal`;
CREATE TABLE `qs_members_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `effective` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `setmeal_id` int(10) unsigned NOT NULL,
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `expense` int(10) unsigned NOT NULL,
  `jobs_ordinary` int(10) unsigned NOT NULL,
  `download_resume_ordinary` int(10) unsigned NOT NULL,
  `download_resume_senior` int(10) unsigned NOT NULL,
  `interview_ordinary` int(10) unsigned NOT NULL,
  `interview_senior` int(10) unsigned NOT NULL,
  `talent_pool` int(10) unsigned NOT NULL,
  `recommend_num` int(10) unsigned NOT NULL,
  `recommend_days` int(10) unsigned NOT NULL,
  `stick_num` int(10) unsigned NOT NULL,
  `stick_days` int(10) unsigned NOT NULL,
  `emergency_num` int(10) unsigned NOT NULL,
  `emergency_days` int(10) unsigned NOT NULL,
  `highlight_num` int(10) unsigned NOT NULL,
  `highlight_days` int(10) unsigned NOT NULL,
  `jobsfair_num` int(10) unsigned NOT NULL,
  `change_templates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `added` varchar(250) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `refresh_jobs_space` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_jobs_time` int(10) unsigned NOT NULL DEFAULT '0',
  `set_sms` int(10) unsigned NOT NULL,
  `setmeal_img` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `effective_setmealid` (`effective`,`setmeal_id`),
  KEY `effective_endtime` (`effective`,`endtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_members_setmeal` VALUES ('1','1','1','1','��ѻ�Ա','0','0','2','5','1','5','1','15','10','20','10','20','10','20','10','20','1','1','0','','1462420652','0','0','2','0','');
INSERT INTO `qs_members_setmeal` VALUES ('2','1','5','1','��ѻ�Ա','0','0','2','5','1','5','1','15','10','20','10','20','10','20','10','20','1','1','0','','1462503768','0','0','2','0','');
INSERT INTO `qs_members_setmeal` VALUES ('3','0','6','0','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','0','0','0','0','');
DROP TABLE IF EXISTS `qs_members_setmeal_reserved`;
CREATE TABLE `qs_members_setmeal_reserved` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `download_resume_ordinary` int(10) unsigned NOT NULL,
  `download_resume_senior` int(10) unsigned NOT NULL,
  `interview_ordinary` int(10) unsigned NOT NULL,
  `interview_senior` int(10) unsigned NOT NULL,
  `talent_pool` int(10) unsigned NOT NULL,
  `recommend_num` int(10) unsigned NOT NULL,
  `recommend_days` int(10) unsigned NOT NULL,
  `stick_num` int(10) unsigned NOT NULL,
  `stick_days` int(10) unsigned NOT NULL,
  `emergency_num` int(10) unsigned NOT NULL,
  `emergency_days` int(10) unsigned NOT NULL,
  `highlight_num` int(10) unsigned NOT NULL,
  `highlight_days` int(10) unsigned NOT NULL,
  `jobsfair_num` int(10) unsigned NOT NULL,
  `change_templates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `added` varchar(250) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `refresh_jobs_space` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_jobs_time` int(10) unsigned NOT NULL DEFAULT '0',
  `reserved_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_members_train_setmeal`;
CREATE TABLE `qs_members_train_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `effective` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `setmeal_id` int(10) unsigned NOT NULL,
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `expense` int(10) unsigned NOT NULL,
  `teachers_num` int(10) unsigned NOT NULL DEFAULT '0',
  `course_num` int(10) unsigned NOT NULL DEFAULT '0',
  `down_apply` int(10) unsigned NOT NULL DEFAULT '0',
  `change_templates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `added` varchar(250) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `refresh_course_space` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_course_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `effective_setmealid` (`effective`,`setmeal_id`),
  KEY `effective_endtime` (`effective`,`endtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_navigation`;
CREATE TABLE `qs_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `urltype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `color` varchar(30) NOT NULL,
  `pagealias` varchar(100) NOT NULL,
  `list_id` varchar(30) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `target` varchar(100) NOT NULL,
  `navigationorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_navigation` VALUES ('1','QS_top','0','1','��  ҳ','','QS_index','','homepage','','_self','0');
INSERT INTO `qs_navigation` VALUES ('2','QS_top','0','1','��Ƹ��Ϣ','','QS_jobs','','jobs','','_blank','0');
INSERT INTO `qs_navigation` VALUES ('3','QS_top','0','1','΢��Ȧ','','QS_simplelist','','simple','','_self','0');
INSERT INTO `qs_navigation` VALUES ('4','QS_top','0','1','��ְ��Ϣ','','QS_resume','','resume','','_blank','0');
INSERT INTO `qs_navigation` VALUES ('5','QS_top','0','1','HR������','','QS_hrtoolsindex','','hrtools','','_self','0');
INSERT INTO `qs_navigation` VALUES ('6','QS_top','0','1','������Ƹ','','QS_companylist','','company','','_self','0');
INSERT INTO `qs_navigation` VALUES ('7','QS_top','0','1','��Ƹ��','','QS_jobfairlist','','jobfair','','_self','0');
INSERT INTO `qs_navigation` VALUES ('8','QS_top','0','1','������Ѷ','','QS_news','','news','','_self','0');
INSERT INTO `qs_navigation` VALUES ('9','QS_top','0','1','��Ա����','','QS_login','','user','','_self','0');
INSERT INTO `qs_navigation` VALUES ('10','QS_top','0','1','��ѵ��Ϣ','','QS_train','','train','','_self','0');
INSERT INTO `qs_navigation` VALUES ('11','QS_top','0','1','��Ƹר��','','QS_hunter','','hunter','','_self','0');
INSERT INTO `qs_navigation` VALUES ('12','QS_top','0','1','У԰��Ƹ','','QS_campus_index','','campus','','_blank','0');
INSERT INTO `qs_navigation` VALUES ('13','QS_hunter_top','0','1','��ͷ��ҳ','','QS_hunter','','hunter','','_self','10');
INSERT INTO `qs_navigation` VALUES ('14','QS_hunter_top','0','1','��нְλ','','QS_hunter_jobslist','','hunter_jobs','','_self','9');
INSERT INTO `qs_navigation` VALUES ('15','QS_hunter_top','0','1','��ͷ����','','QS_hunter_list','','hunter_list','','_self','7');
INSERT INTO `qs_navigation` VALUES ('16','QS_hunter_top','0','1','��ͷ��Ѷ','','QS_hunter_newslist','','hunter_news','','_self','6');
INSERT INTO `qs_navigation` VALUES ('17','QS_hunter_top','0','1','�߼��˲�','','QS_hunter_resumelist','','hunter_resume','','_self','8');
INSERT INTO `qs_navigation` VALUES ('18','QS_train_top','0','1','��ѵ��ҳ','','QS_train','','train','','_self','0');
INSERT INTO `qs_navigation` VALUES ('19','QS_train_top','0','1','��ѵ�γ�','','QS_train_curriculum','','train_curriculum_list','','_self','0');
INSERT INTO `qs_navigation` VALUES ('20','QS_train_top','0','1','��ѵ����','','QS_train_agency','','train_agency_list','','_self','0');
INSERT INTO `qs_navigation` VALUES ('21','QS_train_top','0','1','�Ƽ���ʦ','','QS_train_lecturer','','train_lecturer_list','','_self','0');
INSERT INTO `qs_navigation` VALUES ('22','QS_shop_top','0','1','��  ҳ','','QS_shop_index','','shop','','_self','0');
INSERT INTO `qs_navigation` VALUES ('23','QS_shop_top','0','1','ȫ����Ʒ','','QS_shop_list','','shop_list','','_self','0');
INSERT INTO `qs_navigation` VALUES ('24','QS_shop_top','0','1','���а�','','QS_shop_charts','','shop_charts','','_self','0');
INSERT INTO `qs_navigation` VALUES ('25','QS_campus_top','0','1','У԰��ҳ','','QS_campus_index','','campus','','_self','0');
INSERT INTO `qs_navigation` VALUES ('26','QS_campus_top','0','1','Ӧ����ְλ','','QS_graduatejob','','graduatejob','','_self','0');
INSERT INTO `qs_navigation` VALUES ('27','QS_campus_top','0','1','Ӧ��������','','QS_graduateresume','','graduateresume','','_self','0');
INSERT INTO `qs_navigation` VALUES ('28','QS_campus_top','0','1','����ԺУ','','QS_campuslist','','campuslist','','_self','0');
INSERT INTO `qs_navigation` VALUES ('29','QS_top','0','1','�˲Ų���','','QS_evaluation_index','','evaluation','','_blank','0');
INSERT INTO `qs_navigation` VALUES ('30','QS_evaluation_top','0','1','������ҳ','','QS_evaluation_index','','evaluation','','_self','0');
INSERT INTO `qs_navigation` VALUES ('31','QS_evaluation_top','0','1','������֪����','','QS_selfcognition','','selfcognition','','_self','0');
INSERT INTO `qs_navigation` VALUES ('32','QS_evaluation_top','0','1','ְҵ�������','','QS_occupation','','occupation','','_self','0');
INSERT INTO `qs_navigation` VALUES ('33','QS_evaluation_top','0','1','רҵ�˲Ų���','','QS_talents','','talents','','_self','0');
INSERT INTO `qs_navigation` VALUES ('34','QS_evaluation_top','0','1','�����˲Ų���','','QS_management','','management','','_self','0');
DROP TABLE IF EXISTS `qs_navigation_category`;
CREATE TABLE `qs_navigation_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `categoryname` varchar(30) NOT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_navigation_category` VALUES ('1','QS_top','��������','1');
INSERT INTO `qs_navigation_category` VALUES ('2','QS_hunter_top','��ͷ����','1');
INSERT INTO `qs_navigation_category` VALUES ('3','QS_train_top','��ѵ����','1');
INSERT INTO `qs_navigation_category` VALUES ('4','QS_campus_top','У�е���','1');
INSERT INTO `qs_navigation_category` VALUES ('5','QS_shop_top','�̳ǵ���','1');
INSERT INTO `qs_navigation_category` VALUES ('6','QS_evaluation_top','��������','1');
DROP TABLE IF EXISTS `qs_notice`;
CREATE TABLE `qs_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `type_id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) NOT NULL DEFAULT '0',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL,
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`sort`,`id`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_notice_category`;
CREATE TABLE `qs_notice_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_notice_category` VALUES ('1','��ҳ����','0','1');
INSERT INTO `qs_notice_category` VALUES ('2','��ѵ����','0','1');
DROP TABLE IF EXISTS `qs_order`;
CREATE TABLE `qs_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `utype` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `pay_type` int(1) unsigned NOT NULL,
  `is_paid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `oid` varchar(200) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_name` varchar(20) NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `payment_time` int(10) unsigned NOT NULL,
  `description` varchar(150) NOT NULL,
  `setmeal` int(10) unsigned NOT NULL,
  `notes` varchar(150) NOT NULL,
  `week` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `addtime` (`addtime`),
  KEY `payment_name` (`payment_name`),
  KEY `oid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_order` VALUES ('1','1','1','4','1','R-160505-150815','100.00','remittance','100','1462432095','0','��ֵ����:100','0','','0');
DROP TABLE IF EXISTS `qs_page`;
CREATE TABLE `qs_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `systemclass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pagetpye` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `alias` varchar(60) NOT NULL,
  `pname` varchar(12) NOT NULL,
  `file` varchar(100) NOT NULL,
  `tpl` varchar(100) NOT NULL,
  `rewrite` varchar(200) NOT NULL,
  `url` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `caching` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(60) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_page` VALUES ('1','1','1','QS_index','��վ��ҳ','index.php','index.htm','index.htm','0','0','homepage','��ʿPHP�߶��˲�ϵͳ(www.74cms.com)','','');
INSERT INTO `qs_page` VALUES ('2','1','1','QS_jobs','��Ƹ��ҳ','jobs/','jobs.htm','jobs/index.htm','0','0','jobs','��Ƹ��Ϣ','','');
INSERT INTO `qs_page` VALUES ('3','1','2','QS_jobslist','��Ƹ�б�','jobs/jobs-list.php','jobs-list.htm','jobs/jobs-list-(\$jobcategory)-(\$citycategory)-(\$settr)-(\$trade)-(\$wage)-(\$nature)-(\$education)-(\$experience)-(\$sort)-(\$key)-(\$page)-(\$jobtag).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('4','1','3','QS_jobsshow','��Ƹ��ϸҳ','jobs/jobs-show.php','jobs-show.htm','jobs/jobs-show-(\$id)-(\$style).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('5','1','2','QS_street','��·����','jobs/street-search.php','street-search.htm','jobs/street-search-(\$streetid)-(\$sort)-(\$page).htm','0','0','street','','','');
INSERT INTO `qs_page` VALUES ('6','1','2','QS_companylist','��ҵ�б�','company/index.php','company-list.htm','company/company-list-(\$key)-(\$trade)-(\$citycategory)-(\$nature)-(\$scale)-(\$page).htm','0','0','company','','','');
INSERT INTO `qs_page` VALUES ('7','1','3','QS_companyshow','��ҵ���ҳ','company/company-show.php','company-show.htm','company/company-show-(\$id)-(\$style).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('8','1','2','QS_companyjobs','��ҵְλ�б�ҳ','company/company-jobs.php','company-jobs-list.htm','company/company-jobs-(\$id)-(\$page)-(\$style).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('9','1','2','QS_companycomment','��ҵ�����б�ҳ','company/company-comment.php','company-comment.htm','company/company-comment-(\$id)-(\$page)-(\$style).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('10','1','2','QS_companynews','��ҵ�����б�ҳ','company/company-news.php','company-news.htm','company/company-news-(\$id)-(\$page)-(\$style).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('11','1','3','QS_companynewsshow','��ҵ������ϸҳ','company/company-news-show.php','company-news-show.htm','company/company-news-(\$id)-(\$style).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('12','1','1','QS_login','��Ա��¼','user/login.php','user/login.htm','','0','0','user','��Ա��¼','','');
INSERT INTO `qs_page` VALUES ('13','1','1','QS_resume','������ҳ','resume/','resume.htm','resume/index.htm','0','0','resume','�˲���Ϣ','','');
INSERT INTO `qs_page` VALUES ('14','1','2','QS_resumelist','�����б�','resume/resume-list.php','resume-list.htm','resume/resume-list-(\$jobcategory)-(\$citycategory)-(\$experience)-(\$education)-(\$photo)-(\$talent)-(\$trade)-(\$major)-(\$resumetag)-(\$sex)-(\$sort)-(\$key)-(\$page).htm','0','0','resume','','','');
INSERT INTO `qs_page` VALUES ('15','1','3','QS_resumeshow','������ϸҳ','resume/resume-show.php','resume-show.htm','resume/resume-show-(\$id).htm','0','0','resume','','','');
INSERT INTO `qs_page` VALUES ('16','1','2','QS_hrtoolslist','HR�������б�','hrtools/hrtools-list.php','hrtools-list.htm','hrtools/hrtools-list-(\$id).htm','0','0','hrtools','HR������','','');
INSERT INTO `qs_page` VALUES ('17','1','1','QS_news','��Ѷ��ҳ','news/','news.htm','news/index.htm','0','0','news','������Ѷ','','');
INSERT INTO `qs_page` VALUES ('18','1','2','QS_newslist','��Ѷ�б�','news/news-list.php','news-list.htm','news/news-list-(\$id)-(\$page).htm','0','0','news','','','');
INSERT INTO `qs_page` VALUES ('19','1','2','QS_newssearch','��Ѷ����ҳ','news/news-search.php','news-search.htm','news/news-search-(\$key)-(\$page).htm','0','0','news','','','');
INSERT INTO `qs_page` VALUES ('20','1','3','QS_newsshow','��Ѷ��ϸҳ','news/news-show.php','news-show.htm','news/news-show-(\$id).htm','0','0','news','','','');
INSERT INTO `qs_page` VALUES ('21','1','3','QS_explainshow','˵��ҳ��ϸҳ','explain/explain-show.php','explain-show.htm','explain/explain-show-(\$id).htm','0','0','explain','','','');
INSERT INTO `qs_page` VALUES ('22','1','2','QS_noticelist','�����б�','notice/notice-list.php','notice-list.htm','notice/notice-list-(\$id)-(\$page).htm','0','0','notice','','','');
INSERT INTO `qs_page` VALUES ('23','1','3','QS_noticeshow','������ϸҳ','notice/notice-show.php','notice-show.htm','notice/notice-show-(\$id).htm','0','0','notice','','','');
INSERT INTO `qs_page` VALUES ('24','1','2','QS_jobfairlist','��Ƹ���б�','jobfair/jobfair-list.php','jobfair-list.htm','jobfair/jobfair-list-(\$page).htm','0','0','jobfair','','','');
INSERT INTO `qs_page` VALUES ('25','1','3','QS_jobfairshow','��Ƹ����ϸҳ','jobfair/jobfair-show.php','jobfair-show.htm','jobfair/jobfair-show-(\$id).htm','0','0','jobfair','','','');
INSERT INTO `qs_page` VALUES ('26','1','2','QS_jobfairexhibitors','�λ���ҵ�б�','jobfair/jobfair-exhibitors.php','jobfair-exhibitors.htm','jobfair/jobfair-exhibitors-(\$id)-(\$page).htm','0','0','jobfair','','','');
INSERT INTO `qs_page` VALUES ('27','1','2','QS_simplelist','΢��Ƹ','simple/simple-list.php','simple/simple-list.htm','simple/simple-list-(\$key)-(\$keytype)-(\$citycategory)-(\$page).htm','0','0','simple','΢��Ȧ','','');
INSERT INTO `qs_page` VALUES ('28','1','2','QS_map','��ͼ����','jobs/map-search.php','map-search.htm','jobs/map-search-(\$id).htm','0','0','map','��ͼ����','','');
INSERT INTO `qs_page` VALUES ('29','1','1','QS_help','������ҳ','help/','help/index.htm','help/','0','0','help','����','','');
INSERT INTO `qs_page` VALUES ('30','1','2','QS_helplist','�����б�','help/help-list.php','help/help-list.htm','help/help-list-(\$id)-(\$page).htm','0','0','help','','','');
INSERT INTO `qs_page` VALUES ('31','1','3','QS_helpshow','������ϸҳ','help/help-show.php','help/help-show.htm','help/help-show-(\$id).htm','0','0','help','','','');
INSERT INTO `qs_page` VALUES ('32','1','2','QS_helpsearch','��������ҳ','help/help-search.php','help/help-search.htm','help/help-search-(\$key)-(\$page).htm','0','0','help','','','');
INSERT INTO `qs_page` VALUES ('33','1','1','QS_train','������ѵ��ҳ','train/','index.htm','train/train.htm','0','0','train','������ѵ��ҳ','','');
INSERT INTO `qs_page` VALUES ('34','1','2','QS_train_agency','��ѵ�����б�ҳ','train/train-agency-list.php','train-agency-list.htm','train/agency-list-(\$key)-(\$citycategory)-(\$sort)-(\$nature)-(\$page).htm','0','0','train_agency_list','','','');
INSERT INTO `qs_page` VALUES ('35','1','3','QS_train_agencyshow','��ѵ�������ҳ','train/train-agency-show.php','train-agencyshow.htm','train/train-agencyshow-(\$id).htm','0','0','train_agency_list','','','');
INSERT INTO `qs_page` VALUES ('36','1','2','QS_train_curriculum','�γ��б�ҳ','train/train-curriculum-list.php','train-curriculum-list.htm','train/train-curriculum-list-(\$category)-(\$citycategory)-(\$classtype)-(\$start)-(\$refre)-(\$sort)-(\$key)-(\$page).htm','0','0','train_curriculum_list','','','');
INSERT INTO `qs_page` VALUES ('37','1','2','QS_train_agency_curriculum','�����γ��б�ҳ','train/agency-curriculum.php','agency-curriculum-list.htm','train/agency-curriculum-(\$id)-(\$page).htm','0','0','train_agency_list','','','');
INSERT INTO `qs_page` VALUES ('38','1','3','QS_train_curriculumshow','�γ���ϸҳ','train/train-curriculum-show.php','curriculum-show.htm','train/train-curriculum-show-(\$id).htm','0','0','train_curriculum_list','','','');
INSERT INTO `qs_page` VALUES ('39','1','2','QS_train_lecturer','��ʦ�б�ҳ','train/train-lecturer-list.php','train-lecturer-list.htm','train/lecturer-list-(\$key)-(\$citycategory)-(\$sort)-(\$education)-(\$page).htm','0','0','train_lecturer_list','','','');
INSERT INTO `qs_page` VALUES ('40','1','2','QS_train_agency_lecturer','������ʦ�б�ҳ','train/agency-lecturer.php','agency-lecturer-list.htm','train/agency-lecturer-(\$id)-(\$page).htm','0','0','train_agency_list','','','');
INSERT INTO `qs_page` VALUES ('41','1','3','QS_train_lecturershow','��ʦ��ϸҳ','train/train-lecturer-show.php','lecturer-show.htm','train/train-lecturer-show-(\$id).htm','0','0','train_lecturer_list','','','');
INSERT INTO `qs_page` VALUES ('42','1','2','QS_train_news','��ѵ��Ѷҳ','train/train-news-list.php','train-news-list.htm','train/train-news-list-(\$page).htm','0','0','train','','','');
INSERT INTO `qs_page` VALUES ('43','1','2','QS_train_agency_news','������Ѷ�б�ҳ','train/agency-news.php','agency-news-list.htm','train/agency-news-(\$id)-(\$page).htm','0','0','train_agency_list','','','');
INSERT INTO `qs_page` VALUES ('44','1','3','QS_train_newsshow','������Ѷ��ϸҳ','train/agency-news-show.php','agency-news-show.htm','train/train-news-show-(\$id).htm','0','0','train_agency_list','','','');
INSERT INTO `qs_page` VALUES ('45','1','2','QS_train_agency_img','��ѵͼƬ�б�ҳ','train/agency-img.php','agency-img.htm','train/agency-img-(\$id)-(\$page).htm','0','0','train','','','');
INSERT INTO `qs_page` VALUES ('46','1','1','QS_hunter','��ͷ������ҳ','hunter/','index.htm','hunter/hunter.htm','0','0','hunter','��ͷ������ҳ','','');
INSERT INTO `qs_page` VALUES ('47','1','2','QS_hunter_jobslist','�߼�ְλ�б�','hunter/jobs-list.php','hunter-jobs-list.htm','hunter/hunter-jobs-list-(\$jobcategory)-(\$citycategory)-(\$settr)-(\$trade)-(\$wage)-(\$age)-(\$scale)-(\$education)-(\$experience)-(\$sort)-(\$key)-(\$page).htm','0','0','hunter_jobs','','','');
INSERT INTO `qs_page` VALUES ('48','1','3','QS_hunter_jobsshow','�߼�ְλ��ϸҳ','hunter/hunter-jobs-show.php','hunter-jobs-show.htm','hunter/hunter-jobs-show-(\$id).htm','0','0','hunter_jobs','','','');
INSERT INTO `qs_page` VALUES ('49','1','1','QS_subscribe','ְλ����','subscribe/','subscribe.htm','subscribe','0','0','subscribe','ְλ����','','');
INSERT INTO `qs_page` VALUES ('50','1','1','QS_salary','н��ͳ��','salary/','salary.htm','','0','0','salary','н��ͳ��','','');
INSERT INTO `qs_page` VALUES ('51','1','2','QS_simpleresumelist','΢����','simple/simple-resume-list.php','simple_resume/simple-list.htm','simple/simple-resume-list-(\$key)-(\$keytype)-(\$citycategory)-(\$page).htm','0','0','simple','΢��Ȧ','','');
INSERT INTO `qs_page` VALUES ('52','1','1','QS_hrtoolsindex','HR��������ҳ','hrtools/index.php','hrtools-index.htm','hrtools/index.htm','0','0','hrtools','HR������','','');
INSERT INTO `qs_page` VALUES ('53','1','3','QS_hunter_show','��ͷ������ϸҳ','hunter/hunter-show.php','hunter-show.htm','hunter/hunter-show-(\$id).htm','0','0','hunter_list','','','');
INSERT INTO `qs_page` VALUES ('54','1','2','QS_hunter_list','��ͷ�����б�ҳ','hunter/hunter-list.php','hunter-list.htm','hunter/hunter-list-(\$key)-(\$citycategory)-(\$page).htm','0','0','hunter_list','��ͷ����','','');
INSERT INTO `qs_page` VALUES ('55','1','1','QS_suggest','���/����','suggest/index.php','suggest.htm','suggest/index.htm','0','0','suggest','���/����','','');
INSERT INTO `qs_page` VALUES ('56','1','1','QS_shop_index','�����̳���ҳ','shop/index.php','index.htm','shop/index.htm','0','0','shop','�����̳���ҳ','','');
INSERT INTO `qs_page` VALUES ('57','1','2','QS_shop_list','�����̳��б�ҳ','shop/shop_list.php','shop_list.htm','','0','0','shop_list','�����̳�','','');
INSERT INTO `qs_page` VALUES ('58','1','3','QS_shop_show','�����̳���ϸҳ��','shop/shop_show.php','shop_show.htm','shop/shop_show-(\$id).htm','0','0','shop_list','�����̳�','','');
INSERT INTO `qs_page` VALUES ('59','1','2','QS_shop_charts','�����̳����а�','shop/shop_charts_list.php','shop_charts_list.htm','','0','0','shop_charts','�����̳�','','');
INSERT INTO `qs_page` VALUES ('60','1','1','QS_campus_index','У԰��Ƹ��ҳ','campus/index.php','index.htm','campus/index.htm','0','0','campus','У԰��Ƹ��ҳ','','');
INSERT INTO `qs_page` VALUES ('61','1','2','QS_campuslist','ԺУ�б�ҳ','campus/campus-list.php','campus-list.htm','campus/campus-list-(\$campusname)-(\$page).htm','0','0','campuslist','','','');
INSERT INTO `qs_page` VALUES ('62','1','3','QS_campusshow','ԺУ��ϸҳ','campus/campus-show.php','campus-show.htm','campus/campus-show-(\$id).htm','0','0','campuslist','','','');
INSERT INTO `qs_page` VALUES ('63','1','2','QS_campusresume','У�������б�ҳ','campus/campus-resume-list.php','campus-resume-list.htm','campus/campus-resume-list-(\$page).htm','0','0','campuslist','','','');
INSERT INTO `qs_page` VALUES ('64','1','2','QS_graduateresume','Ӧ���������б�ҳ','campus/graduate-resume-list.php','graduate-resume-list.htm','campus/graduate-resume-list-(\$key)-(\$jobcategory)-(\$trade)-(\$citycategory)-(\$experience)-(\$resumetag)-(\$education)-(\$sex)-(\$photo)-(\$talent)-(\$settr)-(\$page).htm','0','0','graduateresume','','','');
INSERT INTO `qs_page` VALUES ('65','1','2','QS_graduatejob','Ӧ����ְλ�б�ҳ','campus/graduate-job-list.php','graduate-job-list.htm','campus/graduate-job-list-(\$key)-(\$jobcategory)-(\$trade)-(\$citycategory)-(\$wage)-(\$jobtag)-(\$education)-(\$experience)-(\$settr)-(\$nature)-(\$scale)-(\$sort)-(\$page).htm','0','0','graduatejob','','','');
INSERT INTO `qs_page` VALUES ('66','1','2','QS_hunter_newslist','��ͷ��Ѷ','hunter/hunter-news-list.php','hunter-news-list.htm','hunter/hunter-news-list-(\$id)-(\$page).htm','0','0','hunter_news','��ͷ��Ѷ','','');
INSERT INTO `qs_page` VALUES ('67','1','3','QS_hunter_newsshow','��ͷ��Ѷ��ϸҳ','hunter/hunter-news-show.php','hunter-news-show.htm','hunter/hunter-news-show-(\$id).htm','0','0','hunter_news','��ͷ��Ѷ��ϸҳ','','');
INSERT INTO `qs_page` VALUES ('68','1','2','QS_hunter_newssearch','��ͷ��Ѷ����ҳ','hunter/hunter-news-search.php','hunter-news-search.htm','hunter/hunter-news-search-(\$key)-(\$page).htm','0','0','hunter_news','��ͷ��Ѷ����ҳ','','');
INSERT INTO `qs_page` VALUES ('69','1','3','QS_companyinfo','��ҵ����ҳ','company/company-info.php','company-info.htm','company/company-info-(\$id)-(\$style).htm','0','0','jobs','','','');
INSERT INTO `qs_page` VALUES ('70','1','2','QS_hunter_resumelist','�߼��˲��б�ҳ','hunter/resume-list.php','hunter-resume-list.htm','hunter/hunter-resume-list-(\$jobcategory)-(\$citycategory)-(\$experience)-(\$education)-(\$photo)-(\$trade)-(\$major)-(\$resumetag)-(\$sex)-(\$sort)-(\$key)-(\$page).htm','0','0','hunter_resume','�߼��˲��б�ҳ','','');
INSERT INTO `qs_page` VALUES ('71','1','2','QS_resumewatchedlist','������ļ����б�','resume/resume-watched-list.php','resume-watched.htm','resume/resume-watched.htm','0','0','resume','������ļ���',' ',' ');
INSERT INTO `qs_page` VALUES ('72','1','2','QS_view_jobs','�������ְλ','jobs/view-jobs.php','view-jobs.htm','jobs/view-jobs.htm','0','0','view_jobs','','','');
INSERT INTO `qs_page` VALUES ('73','1','1','QS_evaluation_index','�˲Ų�����ҳ','evaluation/index.php','index.htm','evaluation/index.htm','0','0','evaluation','�˲Ų�����ҳ','','');
INSERT INTO `qs_page` VALUES ('74','1','2','QS_selfcognition','������֪����ҳ��','evaluation/selfcognition.php','selfcognition.htm','evaluation/selfcognition.htm','0','0','selfcognition','','','');
INSERT INTO `qs_page` VALUES ('75','1','2','QS_occupation','ְҵ�������ҳ��','evaluation/occupation.php','occupation.htm','evaluation/occupation.htm','0','0','occupation','','','');
INSERT INTO `qs_page` VALUES ('76','1','2','QS_talents','רҵ�˲Ų���ҳ��','evaluation/talents.php','talents.htm','evaluation/talents.htm','0','0','talents','','','');
INSERT INTO `qs_page` VALUES ('77','1','2','QS_management','�����˲Ų���ҳ��','evaluation/management.php','management.htm','evaluation/management.htm','0','0','management','','','');
INSERT INTO `qs_page` VALUES ('78','1','2','QS_my_evaluation','�ҵĲ���','evaluation/my_evaluation.php','my_evaluation.htm','evaluation/my_evaluation.htm','0','0','my_evaluation','','','');
INSERT INTO `qs_page` VALUES ('79','1','3','QS_paper_result','�����������ҳ','evaluation/paper_result.php','paper_result.htm','evaluation/paper_result-(\$id).htm','0','0','paperresult','','','');
INSERT INTO `qs_page` VALUES ('80','1','3','QS_paper_answer','��������ҳ','evaluation/paper_answer.php','paper_answer.htm','evaluation/paper_answer-(\$id).htm','0','0','paperanswer','','','');
INSERT INTO `qs_page` VALUES ('81','1','3','QS_industry_jobfair','ר����Ƹ����ϸ','jobfair/industry-jobfair.php','industry-jobfair.htm','jobfair/industrys-jobfair-(\$id).htm','0','0','','ר����Ƹ��','','');
INSERT INTO `qs_page` VALUES ('82','1','3','QS_industrys_jobfair','ר����Ƹ�����ҵ','jobfair/industrys-jobfair.php','industrys-jobfair.htm','jobfair/industry-jobfair-(\$id).htm','0','0','','ר����Ƹ��','','');
INSERT INTO `qs_page` VALUES ('83','1','1','QS_substation','��վѡ��','substation/index.php','substation.htm','substation/index.htm','0','0','','','','');
DROP TABLE IF EXISTS `qs_payment`;
CREATE TABLE `qs_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` int(10) unsigned NOT NULL DEFAULT '50',
  `typename` varchar(15) NOT NULL,
  `byname` varchar(50) NOT NULL,
  `p_introduction` varchar(100) NOT NULL,
  `notes` text,
  `partnerid` varchar(80) DEFAULT NULL,
  `ytauthkey` varchar(100) DEFAULT NULL,
  `fee` varchar(6) NOT NULL DEFAULT '0',
  `parameter1` varchar(50) DEFAULT NULL,
  `parameter2` varchar(50) DEFAULT NULL,
  `parameter3` varchar(50) DEFAULT NULL,
  `p_install` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_payment` VALUES ('1','50','remittance','ת��/���','û�п�ͨ��������ѡ�����������ͷ�Ϊ���ֶ���ͨ','<br /><br />\r\n<div align=\"center\"><strong style=\" color:#FF6600; font-size:18px;\">�������֪ͨ���ǿͷ���Ϊ�㿪ͨ��ط���</strong></div>\r\n <br />\r\n<strong style=\"color:#FF0000\" >��ϵ�ͷ�</strong>\r\n  <br />\r\n�ͷ�QQ:000000000; �ͷ��绰��000-0000000\r\n<br />\r\n<br />\r\n<strong style=\"color:#FF0000\" >���ʽ</strong>\r\n<br />\r\n��������<br />\r\n  �˺ţ�000000000000000000000<br />\r\n������xxxxxxxxxxxxxxx<br />\r\n�����У�XXXXXXXXXXXXXX<br />\r\n---------------------------<br />\r\n  ��������<br />\r\n  �˺ţ�000000000000000000000<br />\r\n  ������xxxxxxxxxxxxxxx<br />\r\n�����У�XXXXXXXXXXXXXX\r\n<br />','remittance','','0','','','','2');
INSERT INTO `qs_payment` VALUES ('2','50','chinabank','��������','ȫ��֧��ȫ��19�����е����ÿ�����ǿ�ʵ������֧��','�����������й��������С��������С��й��������С�ũҵ���С��������е���ʮ�ҽ��ڻ������Э�顣ȫ��֧��ȫ��19�����е����ÿ�����ǿ�ʵ������֧��������ַ��http://www.chinabank.com.cn��','','','0','','','','1');
INSERT INTO `qs_payment` VALUES ('3','50','tenpay','�Ƹ�ͨ','�Ƹ�ͨ����Ѷ��˾������й����ȵ�����֧��ƽ̨','�Ƹ�֧ͨ��ȫ���������е�����֧�����û�Ҳ�����ȳ�ֵ���Ƹ�ͨ�����ܸ��ӱ�ݵĲƸ�ͨ���֧�����顣�Ƹ�ͨ�����֡��տ����������˻����ܣ����ʽ�ʹ�ø���','','','0','','','','2');
INSERT INTO `qs_payment` VALUES ('4','50','alipay','֧����','ȫ�����ȵĶ���������֧��ƽ̨','֧������ȫ�����ȵĶ���������֧��ƽ̨��������Ϊ����û��ṩ��ȫ���ٵĵ���֧��/����֧��/��ȫ֧��/�ֻ�֧�����飬��ת���տ�/ˮ��ú�ɷ�/���ÿ�����/AA�տ���������Ӧ��','','','1.5','','','','2');
INSERT INTO `qs_payment` VALUES ('5','50','weixinpay','΢��֧��','΢��֧���Ǽ�����΢�ſͻ��˵�֧�����ܣ��û�����ͨ���ֻ���ɿ��ٵ�֧�����̡�','΢��֧���Ǽ�����΢�ſͻ��˵�֧�����ܣ��û�����ͨ���ֻ���ɿ��ٵ�֧�����̡�΢��֧���԰����п��Ŀ��֧��Ϊ���������û��ṩ��ȫ����ݡ���Ч��֧������','','','0','','','','2');
DROP TABLE IF EXISTS `qs_personal_course_apply`;
CREATE TABLE `qs_personal_course_apply` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `realname` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(60) NOT NULL,
  `personal_uid` int(10) unsigned NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  `course_name` varchar(60) NOT NULL,
  `train_id` int(10) unsigned NOT NULL,
  `train_name` varchar(60) NOT NULL,
  `train_uid` int(10) unsigned NOT NULL,
  `apply_addtime` int(10) unsigned NOT NULL,
  `personal_look` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `download_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notes` varchar(200) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `personal_uid` (`personal_uid`),
  KEY `train_uid_couid` (`train_uid`,`course_id`),
  KEY `train_uid_look` (`train_uid`,`personal_look`),
  KEY `personal_uid_addtime` (`personal_uid`,`apply_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_personal_favorites`;
CREATE TABLE `qs_personal_favorites` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `personal_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(100) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `personal_uid` (`personal_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_personal_hunter_jobs_apply`;
CREATE TABLE `qs_personal_hunter_jobs_apply` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `personal_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `huntet_id` int(10) unsigned NOT NULL,
  `huntet_name` varchar(60) NOT NULL,
  `huntet_uid` int(10) unsigned NOT NULL,
  `apply_addtime` int(10) unsigned NOT NULL,
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(200) NOT NULL,
  `is_reply` tinyint(1) unsigned NOT NULL,
  `is_apply` tinyint(1) NOT NULL DEFAULT '0',
  `personal_interview` tinyint(1) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `personal_uid_id` (`personal_uid`,`resume_id`),
  KEY `huntet_uid_jobid` (`huntet_uid`,`jobs_id`),
  KEY `huntet_uid_look` (`huntet_uid`,`personal_look`),
  KEY `personal_uid_addtime` (`personal_uid`,`apply_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_personal_jobs_apply`;
CREATE TABLE `qs_personal_jobs_apply` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `personal_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `apply_addtime` int(10) unsigned NOT NULL,
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(200) NOT NULL,
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_apply` tinyint(1) NOT NULL DEFAULT '0',
  `personal_interview` tinyint(1) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `personal_uid_id` (`personal_uid`,`resume_id`),
  KEY `company_uid_jobid` (`company_uid`,`jobs_id`),
  KEY `company_uid_look` (`company_uid`,`personal_look`),
  KEY `personal_uid_addtime` (`personal_uid`,`apply_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_personal_jobs_apply` VALUES ('1','1','�Ż�','3','1','��Ŀ����','1','dfadfads','1','1462515971','2','','0','1','0');
INSERT INTO `qs_personal_jobs_apply` VALUES ('3','3','�����','4','3','���繤��ʦ','1','dfadfads','1','1462521483','2','','0','1','0');
INSERT INTO `qs_personal_jobs_apply` VALUES ('4','3','�����','4','1','��Ŀ����','1','dfadfads','1','1462526797','2','','0','1','0');
INSERT INTO `qs_personal_jobs_apply` VALUES ('5','3','�����','4','8','����','1','dfadfads','1','1462603280','1','','0','1','0');
INSERT INTO `qs_personal_jobs_apply` VALUES ('6','3','�����','4','7','�߻��ܼ�','1','dfadfads','1','1462603304','1','','0','1','0');
DROP TABLE IF EXISTS `qs_personal_shield_company`;
CREATE TABLE `qs_personal_shield_company` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL,
  `uid` smallint(5) unsigned NOT NULL,
  `comkeyword` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_plug`;
CREATE TABLE `qs_plug` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(15) NOT NULL,
  `plug_name` varchar(50) NOT NULL,
  `p_install` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_plug` VALUES ('1','hunter','��ͷ','2');
INSERT INTO `qs_plug` VALUES ('2','train','��ѵ','2');
INSERT INTO `qs_plug` VALUES ('3','simple','΢��Ȧ','2');
INSERT INTO `qs_plug` VALUES ('4','jobfair','��Ƹ��','2');
INSERT INTO `qs_plug` VALUES ('5','hrtools','hr������','2');
INSERT INTO `qs_plug` VALUES ('6','yellowpage','��ҳ','2');
INSERT INTO `qs_plug` VALUES ('7','subscribe','ְλ����','2');
INSERT INTO `qs_plug` VALUES ('8','salaryanalysis','н��ͳ��','2');
DROP TABLE IF EXISTS `qs_pms`;
CREATE TABLE `qs_pms` (
  `pmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msgtype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `msgfrom` varchar(30) NOT NULL,
  `msgfromuid` int(10) unsigned NOT NULL,
  `msgtouid` int(10) unsigned NOT NULL,
  `msgtoname` varchar(30) NOT NULL,
  `message` varchar(250) NOT NULL,
  `dateline` int(10) NOT NULL,
  `new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `replytime` int(10) NOT NULL,
  `replyuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `msgfromuid` (`msgfromuid`),
  KEY `msgtouid` (`msgtouid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_pms` VALUES ('1','1','','0','1','362392403@qq.com','��л��ʹ����ʿ�˲�ϵͳ\r\n\r\n��ʿ�˲�ϵͳ�ٷ���վ��http://www.74cms.com','1462420652','2','1462420652','0');
INSERT INTO `qs_pms` VALUES ('2','1','','0','3','826893464@qq.com','��л��ʹ����ʿ�˲�ϵͳ\r\n\r\n��ʿ�˲�ϵͳ�ٷ���վ��http://www.74cms.com','1462435431','2','1462435431','0');
INSERT INTO `qs_pms` VALUES ('3','1','','0','3','826893464@qq.com','362392403@qq.com�������������ļ�����<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=1\" target=\"_blank\">�Ż�</a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462440610','2','1462440610','0');
INSERT INTO `qs_pms` VALUES ('4','1','','0','3','826893464@qq.com','362392403@qq.com�������������ļ�����<a href=\"http://shanxi.test7.74lietou.com/resume/resume-show.php?id=2\" target=\"_blank\">�Ż�2</a>��<a href=\"http://shanxi.test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462442858','2','1462442858','0');
INSERT INTO `qs_pms` VALUES ('5','1','','0','5','wudazui@sina.com','��л��ʹ����ʿ�˲�ϵͳ\r\n\r\n��ʿ�˲�ϵͳ�ٷ���վ��http://www.74cms.com','1462503768','1','1462503768','0');
INSERT INTO `qs_pms` VALUES ('6','1','','0','1','362392403@qq.com','�Ż���������������ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=1\" target=\"_blank\">��Ŀ����</a>,<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=1\" target=\"_blank\">����鿴</a>','1462515971','1','1462515971','0');
INSERT INTO `qs_pms` VALUES ('7','1','','0','3','826893464@qq.com','dfadfads�������μӹ�˾���ԣ�����ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=1\" target=\"_blank\"> ��Ŀ���� </a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462516024','2','1462516024','0');
INSERT INTO `qs_pms` VALUES ('8','1','','0','1','362392403@qq.com','���Ĺ�˾��dfadfads,�ɹ�ͨ����վ����Ա���!����˵������','1462518911','1','1462518911','0');
INSERT INTO `qs_pms` VALUES ('9','1','','0','3','826893464@qq.com','wudazui@sina.com�������������ļ�����<a href=\"http://shanxi.test7.74lietou.com/resume/resume-show.php?id=2\" target=\"_blank\">�Ż�2</a>��<a href=\"http://shanxi.test7.74lietou.com/company/company-show.php?id=2\" target=\"_blank\">����鿴��˾����</a>','1462519958','2','1462519958','0');
INSERT INTO `qs_pms` VALUES ('10','1','','0','4','572bf77d20e601462499197','wudazui@sina.com�������������ļ�����<a href=\"http://shanxi.test7.74lietou.com/resume/resume-show.php?id=3\" target=\"_blank\">�����</a>��<a href=\"http://shanxi.test7.74lietou.com/company/company-show.php?id=2\" target=\"_blank\">����鿴��˾����</a>','1462521252','1','1462521252','0');
INSERT INTO `qs_pms` VALUES ('11','1','','0','4','572bf77d20e601462499197','�ٶ��������μӹ�˾���ԣ�����ְλ��<a href=\"http://shanxi.test7.74lietou.com/jobs/jobs-show.php?id=6\" target=\"_blank\"> �����ܼ� </a>��<a href=\"http://shanxi.test7.74lietou.com/company/company-show.php?id=2\" target=\"_blank\">����鿴��˾����</a>','1462521268','1','1462521268','0');
INSERT INTO `qs_pms` VALUES ('12','1','','0','1','362392403@qq.com','�������������������ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=5\" target=\"_blank\">����</a>,<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=3\" target=\"_blank\">����鿴</a>','1462521316','1','1462521316','0');
INSERT INTO `qs_pms` VALUES ('13','1','','0','1','362392403@qq.com','�������������������ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=3\" target=\"_blank\">���繤��ʦ</a>,<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=3\" target=\"_blank\">����鿴</a>','1462521483','1','1462521483','0');
INSERT INTO `qs_pms` VALUES ('14','1','','0','1','362392403@qq.com','�������������������ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=1\" target=\"_blank\">��Ŀ����</a>,<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=3\" target=\"_blank\">����鿴</a>','1462526797','1','1462526797','0');
INSERT INTO `qs_pms` VALUES ('15','1','','0','3','826893464@qq.com','dfadfads�������μӹ�˾���ԣ�����ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=3\" target=\"_blank\"> ���繤��ʦ </a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462526903','2','1462526903','0');
INSERT INTO `qs_pms` VALUES ('16','1','','0','4','572bf77d20e601462499197','dfadfads�������μӹ�˾���ԣ�����ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=3\" target=\"_blank\"> ���繤��ʦ </a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462526927','1','1462526927','0');
INSERT INTO `qs_pms` VALUES ('17','1','','0','4','572bf77d20e601462499197','dfadfads�������μӹ�˾���ԣ�����ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=5\" target=\"_blank\"> ���� </a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462526939','1','1462526939','0');
INSERT INTO `qs_pms` VALUES ('18','1','','0','2','aaaaaa','��л��ʹ����ʿ�˲�ϵͳ\r\n\r\n��ʿ�˲�ϵͳ�ٷ���վ��http://www.74cms.com','1462590092','1','1462590092','0');
INSERT INTO `qs_pms` VALUES ('19','1','','0','1','362392403@qq.com','�������������������ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=8\" target=\"_blank\">����</a>,<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=3\" target=\"_blank\">����鿴</a>','1462603280','1','1462603280','0');
INSERT INTO `qs_pms` VALUES ('20','1','','0','1','362392403@qq.com','�������������������ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=7\" target=\"_blank\">�߻��ܼ�</a>,<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=3\" target=\"_blank\">����鿴</a>','1462603304','1','1462603304','0');
INSERT INTO `qs_pms` VALUES ('21','1','','0','7','bbbb','��л��ʹ����ʿ�˲�ϵͳ\r\n\r\n��ʿ�˲�ϵͳ�ٷ���վ��http://www.74cms.com','1462606814','1','1462606814','0');
INSERT INTO `qs_pms` VALUES ('22','1','','0','3','826893464@qq.com','362392403@qq.com�������������ļ�����<a href=\"http://test7.74lietou.com/resume/resume-show.php?id=2\" target=\"_blank\">�Ż�2</a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462608934','2','1462608934','0');
INSERT INTO `qs_pms` VALUES ('23','1','','0','4','572bf77d20e601462499197','dfadfads�������μӹ�˾���ԣ�����ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=7\" target=\"_blank\"> �߻��ܼ� </a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462612381','1','1462612381','0');
INSERT INTO `qs_pms` VALUES ('24','1','','0','4','572bf77d20e601462499197','dfadfads�������μӹ�˾���ԣ�����ְλ��<a href=\"http://test7.74lietou.com/jobs/jobs-show.php?id=3\" target=\"_blank\"> ���繤��ʦ </a>��<a href=\"http://test7.74lietou.com/company/company-show.php?id=1\" target=\"_blank\">����鿴��˾����</a>','1462613038','1','1462613038','0');
DROP TABLE IF EXISTS `qs_pms_sys`;
CREATE TABLE `qs_pms_sys` (
  `spmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spms_usertype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `spms_type` tinyint(1) NOT NULL DEFAULT '1',
  `message` varchar(250) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`spmid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_pms_sys` VALUES ('1','0','1','��л��ʹ����ʿ�˲�ϵͳ\r\n\r\n��ʿ�˲�ϵͳ�ٷ���վ��http://www.74cms.com','1363941301');
DROP TABLE IF EXISTS `qs_pms_sys_log`;
CREATE TABLE `qs_pms_sys_log` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loguid` int(10) unsigned NOT NULL,
  `pmid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `loguid` (`loguid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_pms_sys_log` VALUES ('1','1','1');
INSERT INTO `qs_pms_sys_log` VALUES ('2','3','1');
INSERT INTO `qs_pms_sys_log` VALUES ('3','5','1');
INSERT INTO `qs_pms_sys_log` VALUES ('4','2','1');
INSERT INTO `qs_pms_sys_log` VALUES ('5','7','1');
DROP TABLE IF EXISTS `qs_promotion`;
CREATE TABLE `qs_promotion` (
  `cp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cp_available` tinyint(1) NOT NULL DEFAULT '1',
  `cp_promotionid` int(10) unsigned NOT NULL,
  `cp_uid` int(10) unsigned NOT NULL,
  `cp_jobid` int(10) unsigned NOT NULL,
  `cp_days` int(10) unsigned NOT NULL,
  `cp_starttime` int(10) unsigned NOT NULL,
  `cp_endtime` int(10) unsigned NOT NULL,
  `cp_val` varchar(160) NOT NULL,
  `cp_hour` tinyint(2) unsigned NOT NULL,
  `cp_hour_cn` varchar(30) NOT NULL,
  PRIMARY KEY (`cp_id`),
  KEY `cp_uid` (`cp_uid`),
  KEY `cp_endtime` (`cp_endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_promotion_category`;
CREATE TABLE `qs_promotion_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_available` tinyint(1) NOT NULL DEFAULT '1',
  `cat_name` varchar(30) NOT NULL,
  `cat_type` tinyint(3) unsigned NOT NULL,
  `cat_minday` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat_maxday` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_points` int(10) NOT NULL DEFAULT '0',
  `cat_notes` text NOT NULL,
  `cat_order` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_promotion_category` VALUES ('1','1','�Ƽ�ְλ','1','15','60','3','<p>ְλ�Ƽ�����վ��ҳ�Ƽ�ְλ��Ŀ������������Ƽ�ְλ���������Ժܴ�̶����������ƸЧ�ʡ�<br />\r\n�Ƽ�ְλ���ں��Զ�ȡ���Ƽ���</p>','0');
INSERT INTO `qs_promotion_category` VALUES ('2','1','������Ƹ','1','7','60','3','<p>���ý�����Ƹ��ְλ����������ҳ������Ƹ��Ŀ�У�������ְλ���ƺ����м�Ƹ������ͼƬ��</p>\r\n<p>������Ƹ�ǰ���Ʒѣ����ں��Զ�ȡ����</p>','0');
INSERT INTO `qs_promotion_category` VALUES ('3','1','ְλ�ö�','1','7','30','6','<p>�ö���Ƹ������ְλ�б���ҳ�ö���ʾ������Ч�����ƸЧ�ʡ�</p>\r\n<p>�ö���Ƹ�ǰ���Ʒѣ����ں��Զ�ȡ����</p>','0');
INSERT INTO `qs_promotion_category` VALUES ('4','1','ְλ��ɫ','1','7','0','2','<p>ͨ���˷�����������ְλ������ɫ����任������������Ŀ��</p>\r\n<p>ְλ��ɫ�ǰ���Ʒѣ����ں��Զ�ȡ����</p>','0');
DROP TABLE IF EXISTS `qs_refresh_log`;
CREATE TABLE `qs_refresh_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_report`;
CREATE TABLE `qs_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(150) NOT NULL,
  `jobs_addtime` int(10) unsigned NOT NULL,
  `report_type` int(10) NOT NULL,
  `audit` int(10) NOT NULL DEFAULT '1',
  `content` varchar(250) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_report_resume`;
CREATE TABLE `qs_report_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `resume_id` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `resume_addtime` int(10) unsigned NOT NULL,
  `report_type` int(10) NOT NULL,
  `audit` int(10) NOT NULL DEFAULT '1',
  `content` varchar(250) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume`;
CREATE TABLE `qs_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `display_name` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `audit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(80) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `sex_cn` varchar(3) NOT NULL,
  `nature` tinyint(3) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `trade` varchar(60) NOT NULL,
  `trade_cn` varchar(100) NOT NULL,
  `birthdate` smallint(4) unsigned NOT NULL,
  `residence` varchar(30) NOT NULL DEFAULT '',
  `height` tinyint(3) unsigned NOT NULL,
  `marriage` tinyint(3) unsigned NOT NULL,
  `marriage_cn` varchar(5) NOT NULL,
  `experience` smallint(5) NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `wage` tinyint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `householdaddress` varchar(30) NOT NULL DEFAULT '',
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `major` smallint(5) NOT NULL,
  `major_cn` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `tag_cn` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `email_notify` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intention_jobs` varchar(100) NOT NULL,
  `specialty` varchar(200) NOT NULL,
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `photo_img` varchar(80) NOT NULL,
  `photo_audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `photo_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `entrust` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `level` tinyint(1) unsigned NOT NULL,
  `complete_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `current` tinyint(5) unsigned NOT NULL,
  `current_cn` varchar(50) NOT NULL DEFAULT '',
  `word_resume` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `tpl` varchar(60) NOT NULL,
  `resume_from_pc` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sgshu` int(5) NOT NULL DEFAULT '0',
  `qxshu` int(5) NOT NULL DEFAULT '0',
  `fgzshu` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `addtime` (`addtime`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume` VALUES ('1','1','3','1','1','1','11111','�Ż�','1','��','62','ȫְ','1','��������/Ӳ��','1992','ɽ��̫ԭ','172','1','δ��','77','3-5��','6','142','ɽ��ʡ/��ͬ��','59','3000~5000Ԫ/��','','69','��ר','11','�ؿ���','','','','826893464@qq.com','1','�����ܼ�','','0','','1','1','1462440426','1462580932','0','1','1','35','242','��Ŀǰ��ְ�������ǻ����»���','','�����ܼ� �Ż�00 ����00 �ܼ�00 ��ר00','9','','1','0','0','0');
INSERT INTO `qs_resume` VALUES ('2','1','3','1','1','1','δ��������','�Ż�2','1','��','62','ȫְ','1','��������/Ӳ��','1992','ɽ��̫ԭ','172','1','δ��','77','3-5��','6','146','ɽ��ʡ/˷����','59','3000~5000Ԫ/��','','69','��ר','0','','','','18734824089','826893464@qq.com','1','�����ܼ�','','0','','1','1','1462441845','1462441853','0','1','1','35','241','��Ŀǰ����ְ���ɿ��ٵ���','','�����ܼ� �Ż�20 ����00 �ܼ�00 ��ר00','7','','1','0','0','0');
INSERT INTO `qs_resume` VALUES ('3','1','4','1','1','1','PHP����Ա','�����','2','Ů','62','ȫְ','1,5,9','��������/Ӳ��,������Ϸ,����(Ͷ��/֤ȯ','1996','��������','163','1','δ��','77','3-5��','0','0','','59','3000~5000Ԫ/��','����','70','����','0','','','','13513541300','tyhyfei@163.com','1','','��˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ��ﰢ˹�ٷ���','0','','1','1','1425744000','1444233600','0','1','0','60','0','','',' �����0 PHP00 ����00 ����Ա0 ��˹00 ��˹��0 ˹��00 ����00 ����00','30','','0','0','0','0');
DROP TABLE IF EXISTS `qs_resume_auto_refresh`;
CREATE TABLE `qs_resume_auto_refresh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) NOT NULL,
  `deadline_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_comment`;
CREATE TABLE `qs_resume_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jlid` int(11) NOT NULL,
  `title` varchar(1) NOT NULL DEFAULT '1',
  `content` varchar(80) NOT NULL DEFAULT '����',
  `realname` varchar(10) DEFAULT NULL,
  `comname` varchar(40) DEFAULT NULL,
  `comid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume_comment` VALUES ('1','3','1','����','�����','dfadfads','1');
INSERT INTO `qs_resume_comment` VALUES ('2','3','2','����','�����','�ٶ�','5');
INSERT INTO `qs_resume_comment` VALUES ('3','3','3','����','�����','dfadfads','1');
DROP TABLE IF EXISTS `qs_resume_credent`;
CREATE TABLE `qs_resume_credent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `images` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_education`;
CREATE TABLE `qs_resume_education` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `startyear` smallint(4) unsigned NOT NULL,
  `startmonth` smallint(2) unsigned NOT NULL,
  `endyear` smallint(4) unsigned NOT NULL,
  `endmonth` smallint(2) unsigned NOT NULL,
  `school` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL DEFAULT '',
  `todate` int(10) unsigned NOT NULL,
  `campus_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume_education` VALUES ('1','3','4','2009','10','2010','11','������ѧ','����','69','��ר','0','0');
INSERT INTO `qs_resume_education` VALUES ('2','3','4','2010','9','0','7','ʦ��ѧԺ','�������','70','����','1','0');
DROP TABLE IF EXISTS `qs_resume_entrust`;
CREATE TABLE `qs_resume_entrust` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `entrust` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `entrust_start` int(10) unsigned NOT NULL,
  `entrust_end` int(10) unsigned NOT NULL,
  `isshield` tinyint(1) unsigned NOT NULL,
  `resume_addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_img`;
CREATE TABLE `qs_resume_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `resume_id` int(10) unsigned NOT NULL,
  `img` varchar(50) CHARACTER SET sjis NOT NULL DEFAULT '',
  `title` varchar(20) CHARACTER SET sjis NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `resume_id` (`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_jobs`;
CREATE TABLE `qs_resume_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `topclass` int(10) unsigned NOT NULL,
  `category` int(10) unsigned NOT NULL,
  `subclass` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `category` (`category`,`subclass`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume_jobs` VALUES ('1','3','1','1','2','542');
INSERT INTO `qs_resume_jobs` VALUES ('2','3','2','1','2','542');
DROP TABLE IF EXISTS `qs_resume_language`;
CREATE TABLE `qs_resume_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `language` smallint(5) NOT NULL,
  `language_cn` varchar(50) NOT NULL,
  `level` smallint(5) unsigned NOT NULL,
  `level_cn` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_outward`;
CREATE TABLE `qs_resume_outward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_title` varchar(80) NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_search_key`;
CREATE TABLE `qs_resume_search_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `audit` tinyint(1) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `nature` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `marriage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `experience` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sdistrict` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wage` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `education` smallint(5) unsigned NOT NULL DEFAULT '0',
  `major` smallint(5) NOT NULL,
  `current` smallint(5) unsigned NOT NULL DEFAULT '0',
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `likekey` varchar(220) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `subsite_id` (`subsite_id`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume_search_key` VALUES ('1','1','1','1','3','1','62','1','77','6','142','59','69','11','242','0','1462580932','1','�����ܼ� �Ż�00 ����00 �ܼ�00 ��ר00','�����ܼ�,��������/Ӳ��,,�Ż�');
INSERT INTO `qs_resume_search_key` VALUES ('2','1','1','1','3','1','62','1','77','6','146','59','69','0','241','0','1462441853','1','�����ܼ� �Ż�20 ����00 �ܼ�00 ��ר00','�����ܼ�,��������/Ӳ��,,�Ż�2');
INSERT INTO `qs_resume_search_key` VALUES ('3','1','1','1','4','2','62','1','77','0','0','59','70','0','0','0','1444233600','1',' �����0 PHP00 ����00 ����Ա0 ��˹00 ��˹��0 ˹��00 ����00 ����00','��������/Ӳ��,������Ϸ,����(Ͷ��/֤ȯ,�����');
DROP TABLE IF EXISTS `qs_resume_search_rtime`;
CREATE TABLE `qs_resume_search_rtime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `audit` tinyint(1) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `nature` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `marriage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `experience` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sdistrict` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `education` smallint(5) unsigned NOT NULL DEFAULT '0',
  `major` smallint(5) NOT NULL,
  `current` smallint(5) unsigned NOT NULL DEFAULT '0',
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `refreshtime` int(10) unsigned NOT NULL,
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `district_rtime` (`district`,`refreshtime`),
  KEY `photo_rtime` (`photo`,`refreshtime`),
  KEY `sdistrict_rtime` (`sdistrict`,`refreshtime`),
  KEY `talent_rtime` (`talent`,`refreshtime`),
  KEY `subsite_id` (`subsite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume_search_rtime` VALUES ('1','1','1','1','3','1','62','1','77','6','142','59','69','11','242','0','1462580932','1');
INSERT INTO `qs_resume_search_rtime` VALUES ('2','1','1','1','3','1','62','1','77','6','146','59','69','0','241','0','1462441853','1');
INSERT INTO `qs_resume_search_rtime` VALUES ('3','1','1','1','4','2','62','1','77','0','0','59','70','0','0','0','1444233600','1');
DROP TABLE IF EXISTS `qs_resume_tag`;
CREATE TABLE `qs_resume_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_trade`;
CREATE TABLE `qs_resume_trade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `trade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `trade` (`trade`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume_trade` VALUES ('1','3','1','1');
INSERT INTO `qs_resume_trade` VALUES ('2','3','2','1');
DROP TABLE IF EXISTS `qs_resume_training`;
CREATE TABLE `qs_resume_training` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `startyear` smallint(4) unsigned NOT NULL,
  `startmonth` smallint(2) unsigned NOT NULL,
  `endyear` smallint(4) unsigned NOT NULL,
  `endmonth` smallint(2) unsigned NOT NULL,
  `agency` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `todate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_resume_work`;
CREATE TABLE `qs_resume_work` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `startyear` smallint(4) unsigned NOT NULL,
  `startmonth` smallint(2) unsigned NOT NULL,
  `endyear` smallint(4) unsigned NOT NULL,
  `endmonth` smallint(2) unsigned NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `jobs` varchar(30) NOT NULL,
  `achievements` varchar(255) NOT NULL,
  `todate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_resume_work` VALUES ('1','3','4','2009','7','2009','8','�����м�','���','','0');
INSERT INTO `qs_resume_work` VALUES ('2','3','4','2005','11','0','7','����㲥','ǰ̨','','1');
DROP TABLE IF EXISTS `qs_setmeal`;
CREATE TABLE `qs_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `apply` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `original_price` int(10) unsigned NOT NULL,
  `expense` int(10) unsigned NOT NULL,
  `jobs_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_ordinary` int(10) unsigned NOT NULL DEFAULT '0',
  `interview_senior` int(10) unsigned NOT NULL DEFAULT '0',
  `talent_pool` int(10) unsigned NOT NULL DEFAULT '0',
  `recommend_num` int(10) unsigned NOT NULL,
  `recommend_days` int(10) unsigned NOT NULL,
  `stick_num` int(10) unsigned NOT NULL,
  `stick_days` int(10) unsigned NOT NULL,
  `emergency_num` int(10) unsigned NOT NULL,
  `emergency_days` int(10) unsigned NOT NULL,
  `highlight_num` int(10) unsigned NOT NULL,
  `highlight_days` int(10) unsigned NOT NULL,
  `jobsfair_num` int(10) unsigned NOT NULL,
  `change_templates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `added` varchar(255) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_jobs_space` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_jobs_time` int(10) unsigned NOT NULL DEFAULT '0',
  `set_sms` int(10) unsigned NOT NULL,
  `setmeal_img` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_setmeal` VALUES ('1','1','0','��ѻ�Ա','0','0','0','2','5','1','5','1','15','10','20','10','20','10','20','10','20','1','1','0','','0','0','2','0','');
INSERT INTO `qs_setmeal` VALUES ('2','1','1','ͭ�ƻ�Ա','30','350','300','10','300','30','300','30','1','20','30','20','30','20','30','20','30','2','1','1','','0','0','0','0','');
INSERT INTO `qs_setmeal` VALUES ('3','1','1','���ƻ�Ա','90','700','600','30','900','90','900','90','9000','30','40','30','40','30','40','30','40','3','1','1','������ҳ���λ','0','0','0','0','');
INSERT INTO `qs_setmeal` VALUES ('4','1','1','���ƻ�Ա','180','1200','1000','60','1800','180','1800','180','18000','40','50','40','50','40','50','40','50','4','1','1','������ҳ���λ','0','0','0','0','');
INSERT INTO `qs_setmeal` VALUES ('5','1','1','��ʯ��Ա','360','2000','1600','120','3600','360','3600','360','36000','50','60','50','60','50','60','50','60','5','1','1','������ҳ���λ','0','0','0','50','');
DROP TABLE IF EXISTS `qs_shop_category`;
CREATE TABLE `qs_shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_shop_category` VALUES ('1','0','����Ҿ�','0');
INSERT INTO `qs_shop_category` VALUES ('2','0','ʱ������','0');
INSERT INTO `qs_shop_category` VALUES ('3','0','�ֻ���ֵ','0');
INSERT INTO `qs_shop_category` VALUES ('4','1','��װ����','0');
INSERT INTO `qs_shop_category` VALUES ('5','1','��໤��','0');
INSERT INTO `qs_shop_category` VALUES ('6','1','��������','0');
INSERT INTO `qs_shop_category` VALUES ('7','2','������Ʒ','0');
INSERT INTO `qs_shop_category` VALUES ('8','2','�ֻ����','0');
INSERT INTO `qs_shop_category` VALUES ('9','2','�������','0');
INSERT INTO `qs_shop_category` VALUES ('10','3','����ֱ��','0');
INSERT INTO `qs_shop_category` VALUES ('11','3','�������Ͱ�','0');
DROP TABLE IF EXISTS `qs_shop_exchange`;
CREATE TABLE `qs_shop_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `shop_title` varchar(255) NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `num` int(10) NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`),
  KEY `company_uid` (`company_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_shop_goods`;
CREATE TABLE `qs_shop_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` smallint(5) NOT NULL,
  `scategory` smallint(5) NOT NULL,
  `category_cn` varchar(50) NOT NULL,
  `shop_number` varchar(20) NOT NULL,
  `shop_title` varchar(255) NOT NULL,
  `shop_brand` varchar(50) NOT NULL,
  `shop_stock` int(10) NOT NULL,
  `shop_customer` int(10) NOT NULL,
  `shop_points` int(10) NOT NULL,
  `shop_img` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `recommend` smallint(2) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_points` (`shop_points`),
  KEY `click` (`click`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_shop_hotword`;
CREATE TABLE `qs_shop_hotword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_word` varchar(20) NOT NULL,
  `w_hot` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `s_hot` (`w_hot`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_shop_hotword` VALUES ('1','���ŵ��Ӱ�','1');
INSERT INTO `qs_shop_hotword` VALUES ('2','�ֻ���ֵ��','1');
INSERT INTO `qs_shop_hotword` VALUES ('3','�������','1');
DROP TABLE IF EXISTS `qs_shop_order`;
CREATE TABLE `qs_shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `shop_title` varchar(255) NOT NULL,
  `shop_points` int(10) NOT NULL,
  `shop_num` int(10) NOT NULL,
  `order_points` int(10) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` smallint(3) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_simple`;
CREATE TABLE `qs_simple` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pwd` varchar(60) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `jobname` varchar(100) NOT NULL,
  `amount` smallint(3) unsigned NOT NULL DEFAULT '0',
  `comname` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(20) NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `sdistrict_cn` varchar(20) NOT NULL,
  `detailed` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addip` varchar(80) NOT NULL,
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `key` text NOT NULL,
  `likekey` varchar(220) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tel` (`tel`),
  KEY `audit_refreshtime` (`audit`,`refreshtime`),
  KEY `audit_click` (`audit`,`click`),
  KEY `deadline` (`deadline`),
  KEY `subsite_id` (`subsite_id`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_simple_resume`;
CREATE TABLE `qs_simple_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pwd` varchar(60) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `age` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL,
  `sex_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(20) NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `sdistrict_cn` varchar(20) NOT NULL,
  `category` varchar(255) NOT NULL DEFAULT '',
  `experience` smallint(10) unsigned NOT NULL,
  `experience_cn` varchar(255) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `detailed` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addip` varchar(80) NOT NULL,
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `key` text NOT NULL,
  `likekey` varchar(220) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tel` (`tel`),
  KEY `audit_refreshtime` (`audit`,`refreshtime`),
  KEY `audit_click` (`audit`,`click`),
  KEY `deadline` (`deadline`),
  KEY `subsite_id` (`subsite_id`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_sms_config`;
CREATE TABLE `qs_sms_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_sms_config` VALUES ('1','open','1');
INSERT INTO `qs_sms_config` VALUES ('2','captcha_sms_name','');
INSERT INTO `qs_sms_config` VALUES ('3','captcha_sms_key','');
INSERT INTO `qs_sms_config` VALUES ('4','set_applyjobs','0');
INSERT INTO `qs_sms_config` VALUES ('5','set_invite','0');
INSERT INTO `qs_sms_config` VALUES ('6','set_order','0');
INSERT INTO `qs_sms_config` VALUES ('7','set_payment','0');
INSERT INTO `qs_sms_config` VALUES ('8','set_editpwd','0');
INSERT INTO `qs_sms_config` VALUES ('9','set_jobsallow','0');
INSERT INTO `qs_sms_config` VALUES ('10','set_jobsnotallow','0');
INSERT INTO `qs_sms_config` VALUES ('11','set_licenseallow','0');
INSERT INTO `qs_sms_config` VALUES ('12','set_licensenotallow','0');
INSERT INTO `qs_sms_config` VALUES ('13','set_addrecommend','0');
INSERT INTO `qs_sms_config` VALUES ('14','set_addmap','0');
INSERT INTO `qs_sms_config` VALUES ('15','set_resumeallow','0');
INSERT INTO `qs_sms_config` VALUES ('16','set_resumenotallow','0');
INSERT INTO `qs_sms_config` VALUES ('17','set_teaallow','0');
INSERT INTO `qs_sms_config` VALUES ('18','set_teanotallow','0');
INSERT INTO `qs_sms_config` VALUES ('19','set_couallow','0');
INSERT INTO `qs_sms_config` VALUES ('20','set_counotallow','0');
INSERT INTO `qs_sms_config` VALUES ('21','set_applycou','0');
INSERT INTO `qs_sms_config` VALUES ('22','set_downapp','0');
INSERT INTO `qs_sms_config` VALUES ('23','set_hunallow','0');
INSERT INTO `qs_sms_config` VALUES ('24','set_hunnotallow','0');
INSERT INTO `qs_sms_config` VALUES ('25','set_hunjobsallow','0');
INSERT INTO `qs_sms_config` VALUES ('26','set_hunjobsnotallow','0');
INSERT INTO `qs_sms_config` VALUES ('27','notice_sms_name','');
INSERT INTO `qs_sms_config` VALUES ('28','notice_sms_key','');
INSERT INTO `qs_sms_config` VALUES ('29','free_sms_name','');
INSERT INTO `qs_sms_config` VALUES ('30','free_sms_key','');
DROP TABLE IF EXISTS `qs_sms_setmeal`;
CREATE TABLE `qs_sms_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `apply` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `setmeal_name` varchar(200) NOT NULL,
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `expense` int(15) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_sms_setmeal` VALUES ('1','1','1','20Ԫ���ɰ�','200','20','0');
INSERT INTO `qs_sms_setmeal` VALUES ('2','1','1','50Ԫ�����','550','50','0');
INSERT INTO `qs_sms_setmeal` VALUES ('3','1','1','100Ԫ��ֵ��','1100','100','0');
INSERT INTO `qs_sms_setmeal` VALUES ('4','1','1','200Ԫ�ۻݰ�','2200','200','0');
DROP TABLE IF EXISTS `qs_sms_templates`;
CREATE TABLE `qs_sms_templates` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_sms_templates` VALUES ('1','set_applyjobs','{sitename}������:{personalfullname}��������������ְλ{jobsname}�����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('2','set_invite','{sitename}��������{companyname}�����������������룬���¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('3','set_order','{sitename}������������{oid}�Ѿ���ӳɹ������ʽΪ��{paymenttpye}��Ӧ�����{amount}�����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('4','set_payment','{sitename}����������ֵ�ɹ���ϵͳ��Ϊ����ͨ�������¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('5','set_editpwd','{sitename}�����������������޸ĳɹ���������Ϊ��{newpassword}');
INSERT INTO `qs_sms_templates` VALUES ('6','set_jobsallow','{sitename}��������ְλ({jobsname})�Ѿ�ͨ����ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('7','set_jobsnotallow','{sitename}��������ְλ({jobsname})δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('8','set_licenseallow','{sitename}��������������ҵ��������֤ͨ�������¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('9','set_licensenotallow','{sitename}�������������ҵ��֤δͨ�����������ϴ�Ӫҵִ�գ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('10','set_addrecommend','{sitename}������������ְλ�Ѿ��ɹ��Ƽ������¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('11','set_addmap','{sitename}�����������ѳɹ���ͨ��ҵ���ӵ�ͼ�����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('12','set_resumeallow','{sitename}�����������ļ�����ͨ����ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('13','set_resumenotallow','{sitename}�����������ļ���δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('14','set_teaallow','{sitename}�����������Ľ�ʦ({teachername})��ͨ����ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('15','set_teanotallow','{sitename}�����������Ľ�ʦ({teachername})δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('16','set_couallow','{sitename}�����������Ŀγ�({coursename})��ͨ����ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('17','set_counotallow','{sitename}�����������Ŀγ�({coursename})δͨ����ˣ����޸ĺ��ٴ��ύ��ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('18','set_applycou','{sitename}������:{personalfullname}�������������Ŀγ�({coursename})�����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('19','set_downapp','{sitename}��������{trainname}�������������߿γ�({coursename})���룬���¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('20','set_hunallow','{sitename}��������������ͷ��������({huntername})��ͨ����ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('21','set_hunnotallow','{sitename}��������������ͷ��������({huntername})δͨ����ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('22','set_hunjobsallow','{sitename}����������������ְλ({jobsname})�Ѿ�ͨ����ˣ����¼{sitedomain}�鿴');
INSERT INTO `qs_sms_templates` VALUES ('23','set_hunjobsnotallow','{sitename}����������������ְλ({jobsname})δͨ����ˣ����¼{sitedomain}�鿴');
DROP TABLE IF EXISTS `qs_smsqueue`;
CREATE TABLE `qs_smsqueue` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `s_addtime` int(10) unsigned NOT NULL,
  `s_sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `s_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `s_mobile` text,
  `s_body` varchar(100) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `s_uid` (`s_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_subsite`;
CREATE TABLE `qs_subsite` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_effective` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `s_domain` varchar(120) NOT NULL,
  `s_m_domain` varchar(120) NOT NULL,
  `s_sitename` varchar(100) NOT NULL,
  `s_district` int(10) unsigned NOT NULL,
  `s_districtname` varchar(100) NOT NULL,
  `s_tpl` varchar(100) NOT NULL,
  `s_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `s_logo` varchar(100) NOT NULL,
  `s_index` char(1) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_keywords` varchar(200) NOT NULL,
  `s_description` varchar(200) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_subsite` VALUES ('1','1','shanxi.test7.74lietou.com','','ɽ��','6','ɽ��ʡ','','0','','s','','','');
DROP TABLE IF EXISTS `qs_sys_email_log`;
CREATE TABLE `qs_sys_email_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_from` varchar(50) NOT NULL,
  `send_to` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` varchar(255) NOT NULL,
  `state` smallint(3) NOT NULL,
  `sendtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_syslog`;
CREATE TABLE `qs_syslog` (
  `l_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `l_type` tinyint(1) unsigned NOT NULL,
  `l_type_name` varchar(30) NOT NULL,
  `l_time` int(10) unsigned NOT NULL,
  `l_ip` varchar(20) NOT NULL,
  `l_address` varchar(50) NOT NULL,
  `l_page` text NOT NULL,
  `l_str` text NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_text`;
CREATE TABLE `qs_text` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_text` VALUES ('1','personal_talent_requirement','');
INSERT INTO `qs_text` VALUES ('2','agreement','������ע��Э��');
INSERT INTO `qs_text` VALUES ('3','link_application_txt','�����뱾վ�������ӵ�ͬ����ע�⣺<br />1������վΪ�˲������վ��<br />2����ҳ�������ӣ�Ҫ��pr&gt;=6��alexa &lt; 10000������ҳ�����Ӹ��ݾ���ҳ��������������ѯ����<br />3������վҪ�ڰٶ�google���м�¼��¼������վ�����ٶȲ���̫����');
DROP TABLE IF EXISTS `qs_tpl`;
CREATE TABLE `qs_tpl` (
  `tpl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_type` tinyint(1) NOT NULL,
  `tpl_name` varchar(80) NOT NULL,
  `tpl_display` tinyint(1) NOT NULL DEFAULT '1',
  `tpl_dir` varchar(80) NOT NULL,
  `tpl_val` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_tpl` VALUES ('1','2','Ĭ��ģ��','1','default','0');
INSERT INTO `qs_tpl` VALUES ('2','2','����','1','sunshine','0');
INSERT INTO `qs_tpl` VALUES ('3','2','����','1','dream','0');
INSERT INTO `qs_tpl` VALUES ('4','2','��Ȼ','1','nature','0');
INSERT INTO `qs_tpl` VALUES ('5','1','Ĭ��ģ��','1','default','0');
INSERT INTO `qs_tpl` VALUES ('6','1','blackstyle','1','blackstyle','0');
INSERT INTO `qs_tpl` VALUES ('7','1','graystyle','1','graystyle','0');
DROP TABLE IF EXISTS `qs_train_img`;
CREATE TABLE `qs_train_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `train_id` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(120) NOT NULL,
  `addtime` int(100) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `train_id` (`train_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_train_news`;
CREATE TABLE `qs_train_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `train_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `order` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `train_id` (`train_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_train_profile`;
CREATE TABLE `qs_train_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `tpl` varchar(60) NOT NULL,
  `trainname` varchar(60) NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `nature` smallint(5) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(250) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `license` varchar(120) NOT NULL,
  `certificate_img` varchar(80) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `contents` text NOT NULL,
  `teacherpower` text NOT NULL,
  `achievement` text NOT NULL,
  `audit` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `map_x` varchar(50) NOT NULL,
  `map_y` varchar(50) NOT NULL,
  `map_zoom` tinyint(3) unsigned NOT NULL,
  `founddate` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `yellowpages` tinyint(1) NOT NULL DEFAULT '0',
  `contact_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `audit` (`audit`),
  KEY `trainname` (`trainname`),
  KEY `yellowpages` (`yellowpages`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_train_setmeal`;
CREATE TABLE `qs_train_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `apply` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `expense` int(10) unsigned NOT NULL,
  `teachers_num` int(10) unsigned NOT NULL DEFAULT '0',
  `course_num` int(10) unsigned NOT NULL DEFAULT '0',
  `down_apply` int(10) unsigned NOT NULL DEFAULT '0',
  `change_templates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `added` varchar(255) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_course_space` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_course_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_train_setmeal` VALUES ('1','1','0','��ѻ�Ա','0','0','2','5','10','0','0','','0','0','0');
INSERT INTO `qs_train_setmeal` VALUES ('2','1','1','һ�ǻ�Ա','15','100','5','10','20','1','1','','0','0','0');
INSERT INTO `qs_train_setmeal` VALUES ('3','1','1','���ǻ�Ա','30','300','10','15','30','1','1','','0','0','0');
INSERT INTO `qs_train_setmeal` VALUES ('4','1','1','���ǻ�Ա','90','600','15','20','40','1','1','������ҳ���λ','0','0','0');
INSERT INTO `qs_train_setmeal` VALUES ('5','1','1','���ǻ�Ա','180','1000','20','25','50','1','1','������ҳ���λ','0','0','0');
DROP TABLE IF EXISTS `qs_train_teachers`;
CREATE TABLE `qs_train_teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `train_id` int(10) unsigned NOT NULL,
  `trainname` varchar(25) NOT NULL,
  `audit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `teachername` varchar(15) NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `sex` tinyint(3) unsigned NOT NULL,
  `sex_cn` varchar(3) NOT NULL,
  `birthdate` smallint(4) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `speciality` varchar(80) NOT NULL,
  `positionaltitles` varchar(25) NOT NULL,
  `graduated_school` varchar(25) NOT NULL,
  `work_unit` varchar(25) NOT NULL,
  `work_position` varchar(25) NOT NULL,
  `contents` text NOT NULL,
  `achievements` text NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `qq` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `photo_img` varchar(80) NOT NULL,
  `address_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qq_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `tpl` varchar(60) NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `train_id` (`train_id`),
  KEY `refreshtime` (`refreshtime`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS `qs_uc_config`;
CREATE TABLE `qs_uc_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_uc_config` VALUES ('1','uc_connect','');
INSERT INTO `qs_uc_config` VALUES ('2','uc_dbhost','');
INSERT INTO `qs_uc_config` VALUES ('3','uc_dbuser','');
INSERT INTO `qs_uc_config` VALUES ('4','uc_dbpw','');
INSERT INTO `qs_uc_config` VALUES ('5','uc_dbname','');
INSERT INTO `qs_uc_config` VALUES ('6','uc_dbcharset','');
INSERT INTO `qs_uc_config` VALUES ('7','uc_dbtablepre','');
INSERT INTO `qs_uc_config` VALUES ('8','uc_dbconnect','');
INSERT INTO `qs_uc_config` VALUES ('9','uc_key','');
INSERT INTO `qs_uc_config` VALUES ('10','uc_api','');
INSERT INTO `qs_uc_config` VALUES ('11','uc_charset','');
INSERT INTO `qs_uc_config` VALUES ('12','uc_ip','');
INSERT INTO `qs_uc_config` VALUES ('13','uc_appid','');
INSERT INTO `qs_uc_config` VALUES ('14','uc_ppp','');
DROP TABLE IF EXISTS `qs_view_jobs`;
CREATE TABLE `qs_view_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `jobsid` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_view_jobs` VALUES ('1','3','1','1462515965');
INSERT INTO `qs_view_jobs` VALUES ('2','4','5','1462521310');
INSERT INTO `qs_view_jobs` VALUES ('3','4','3','1462521478');
INSERT INTO `qs_view_jobs` VALUES ('4','4','6','1462521580');
INSERT INTO `qs_view_jobs` VALUES ('5','4','1','1462526794');
INSERT INTO `qs_view_jobs` VALUES ('6','2','5','1462581007');
INSERT INTO `qs_view_jobs` VALUES ('7','4','8','1462603274');
INSERT INTO `qs_view_jobs` VALUES ('8','4','7','1462603299');
INSERT INTO `qs_view_jobs` VALUES ('9','3','8','1462612350');
DROP TABLE IF EXISTS `qs_view_resume`;
CREATE TABLE `qs_view_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `resumeid` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_view_resume` VALUES ('1','1','2','1462442846');
INSERT INTO `qs_view_resume` VALUES ('2','5','3','1462521249');
INSERT INTO `qs_view_resume` VALUES ('3','1','3','1462591381');
DROP TABLE IF EXISTS `qs_weixin_config`;
CREATE TABLE `qs_weixin_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_weixin_config` VALUES ('1','set_invite','1');
INSERT INTO `qs_weixin_config` VALUES ('2','set_order','1');
INSERT INTO `qs_weixin_config` VALUES ('3','set_payment','1');
INSERT INTO `qs_weixin_config` VALUES ('4','set_editpwd','1');
INSERT INTO `qs_weixin_config` VALUES ('5','set_jobsallow','1');
INSERT INTO `qs_weixin_config` VALUES ('6','set_jobsnotallow','1');
INSERT INTO `qs_weixin_config` VALUES ('7','set_licenseallow','1');
INSERT INTO `qs_weixin_config` VALUES ('8','set_licensenotallow','1');
INSERT INTO `qs_weixin_config` VALUES ('9','set_addmap','1');
INSERT INTO `qs_weixin_config` VALUES ('10','set_resumeallow','1');
INSERT INTO `qs_weixin_config` VALUES ('11','set_resumenotallow','1');
INSERT INTO `qs_weixin_config` VALUES ('12','set_applyjobs','1');
DROP TABLE IF EXISTS `qs_weixin_menu`;
CREATE TABLE `qs_weixin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `key` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `url` varchar(255) NOT NULL,
  `menu_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO `qs_weixin_menu` VALUES ('1','0','���˷���','','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('2','1','ˢ�¼���','resume_refresh','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('3','1','��������','','view','http://test7.74lietou.com/m/personal/interview.php','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('4','1','Ͷ�ݷ���','','view','http://test7.74lietou.com/m/personal/apply.php','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('5','1','ְλ����','','view','http://test7.74lietou.com/m/jobs-list.php','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('6','0','��ҵ����','','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('7','6','ˢ��ְλ','jobs_refresh','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('8','6','ְλ����','','view','http://test7.74lietou.com/m/company/company_jobs.php','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('9','0','���ྫ��','','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('10','6','ӦƸ����','','view','http://test7.74lietou.com/m/company/company_get_reusme.php','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('11','1','�ܱ�ְλ','nearby_jobs','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('12','6','��������','','view','http://test7.74lietou.com/m/resume-list.php','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('13','9','ÿ��ǩ��','sign_day','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('14','9','�ʺŰ�','binding','click','','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('15','9','�����Ƹ��','','view','http://test7.74lietou.com/m/jobfair-list.php','0','1');
INSERT INTO `qs_weixin_menu` VALUES ('16','9','��ϵ����','','view','http://test7.74lietou.com/m/about.php','0','1');
