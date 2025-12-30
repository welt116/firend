/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ershouwupinjiaoyipingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0  */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ershouwupinjiaoyipingtai` /*!40100 DEFAULT CHARACTER SET utf32 */;

USE `ershouwupinjiaoyipingtai`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(2,1,'收货人2','17703786902','地址2',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(3,3,'收货人3','17703786903','地址3',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(4,1,'收货人4','17703786904','地址4',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(5,3,'收货人5','17703786905','地址5',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(6,1,'收货人6','17703786906','地址6',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(7,3,'收货人7','17703786907','地址7',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(8,1,'收货人8','17703786908','地址8',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(9,3,'收货人9','17703786909','地址9',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(10,1,'收货人10','17703786910','地址10',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(11,3,'收货人11','17703786911','地址11',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(12,2,'收货人12','17703786912','地址12',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(13,1,'收货人13','17703786913','地址13',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36'),(14,3,'收货人14','17703786914','地址14',1,'2023-03-23 16:07:36','2023-03-23 16:07:36','2023-03-23 16:07:36');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-23 16:06:57'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-23 16:06:57'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-23 16:06:57'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-23 16:06:57'),(5,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-03-23 16:06:57'),(6,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-03-23 16:06:57'),(7,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-03-23 16:06:57'),(8,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-23 16:06:57'),(9,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-23 16:06:57'),(10,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-23 16:06:57'),(11,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-03-23 16:06:57'),(12,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-23 16:06:57'),(13,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-23 16:06:57'),(14,'shangpin_chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-23 16:06:57'),(15,'shangpin_chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-23 16:06:57'),(16,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-23 16:06:57'),(17,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-23 16:06:57'),(18,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-23 16:06:57'),(19,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-23 16:06:57'),(20,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-23 16:06:57'),(21,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-23 16:06:57'),(22,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-23 16:06:57'),(23,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-23 16:06:57');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-23 16:07:36','公告详情1','2023-03-23 16:07:36'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-23 16:07:36','公告详情2','2023-03-23 16:07:36'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-23 16:07:36','公告详情3','2023-03-23 16:07:36'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-23 16:07:36','公告详情4','2023-03-23 16:07:36'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-23 16:07:36','公告详情5','2023-03-23 16:07:36'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-23 16:07:36','公告详情6','2023-03-23 16:07:36'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-23 16:07:36','公告详情7','2023-03-23 16:07:36'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-23 16:07:36','公告详情8','2023-03-23 16:07:36'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-23 16:07:36','公告详情9','2023-03-23 16:07:36'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-23 16:07:36','公告详情10','2023-03-23 16:07:36'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-23 16:07:36','公告详情11','2023-03-23 16:07:36'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-23 16:07:36','公告详情12','2023-03-23 16:07:36'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-23 16:07:36','公告详情13','2023-03-23 16:07:36'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-23 16:07:36','公告详情14','2023-03-23 16:07:36');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','e10adc3949ba59abbe56e057f20f883e','商家名称1','17703786901','1@qq.com','/upload/1679623999099.jpg',1,'221.63','<p>商家介绍1</p>',1,'2023-03-23 16:07:36'),(2,'a2','e10adc3949ba59abbe56e057f20f883e','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',2,'558.21','商家介绍2',1,'2023-03-23 16:07:36'),(3,'a3','e10adc3949ba59abbe56e057f20f883e','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',2,'348.17','商家介绍3',1,'2023-03-23 16:07:36');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,2,'商品名称1','1679558856753','upload/shangpin1.jpg',1,101,'475.63',104,'商品介绍1',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(2,2,'商品名称2','1679558856727','upload/shangpin2.jpg',1,102,'321.34',181,'商品介绍2',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(3,3,'商品名称3','1679558856799','upload/shangpin3.jpg',4,103,'36.08',392,'商品介绍3',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(4,3,'商品名称4','1679558856784','upload/shangpin4.jpg',2,104,'136.40',479,'商品介绍4',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(5,3,'商品名称5','1679558856762','upload/shangpin5.jpg',3,105,'357.65',357,'商品介绍5',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(6,3,'商品名称6','1679558856787','upload/shangpin6.jpg',4,106,'191.31',278,'商品介绍6',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(7,1,'商品名称7','1679558856775','upload/shangpin7.jpg',3,107,'434.11',266,'商品介绍7',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(8,2,'商品名称8','1679558856806','upload/shangpin8.jpg',4,108,'145.20',403,'商品介绍8',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(9,1,'商品名称9','1679558856769','upload/shangpin9.jpg',3,107,'87.04',264,'商品介绍9',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(10,2,'商品名称10','1679558856756','upload/shangpin10.jpg',2,1010,'257.70',53,'商品介绍10',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(11,2,'商品名称11','1679558856797','upload/shangpin11.jpg',4,1011,'52.89',177,'商品介绍11',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(12,2,'商品名称12','1679558856773','upload/shangpin12.jpg',2,1012,'71.55',317,'商品介绍12',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(13,3,'商品名称13','1679558856730','upload/shangpin13.jpg',3,1013,'473.88',278,'商品介绍13',1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(14,1,'商品名称14','1679558856783','upload/shangpin14.jpg',3,1014,'338.87',103,'商品介绍14',1,'2023-03-23 16:07:36','2023-03-23 16:07:36');

/*Table structure for table `shangpin_chat` */

DROP TABLE IF EXISTS `shangpin_chat`;

CREATE TABLE `shangpin_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '回答人',
  `shangpin_chat_issue_text` longtext COMMENT '问题',
  `shangpin_chat_issue_photo` varchar(200) DEFAULT NULL COMMENT '问题图片 ',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `shangpin_chat_reply_text` longtext COMMENT '回复',
  `shangpin_chat_reply_photo` varchar(200) DEFAULT NULL COMMENT '回复图片 ',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `shangpin_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `shangpin_chat` */

insert  into `shangpin_chat`(`id`,`yonghu_id`,`shangjia_id`,`shangpin_chat_issue_text`,`shangpin_chat_issue_photo`,`issue_time`,`shangpin_chat_reply_text`,`shangpin_chat_reply_photo`,`reply_time`,`zhuangtai_types`,`shangpin_chat_types`,`insert_time`,`create_time`) values (1,2,3,'问题1','upload/shangpin_chat_issue1.jpg','2023-03-23 16:07:36','回复1','upload/shangpin_chat_reply1.jpg','2023-03-23 16:07:36',2,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(2,1,1,'问题2','upload/shangpin_chat_issue2.jpg','2023-03-23 16:07:36','回复2','upload/shangpin_chat_reply2.jpg','2023-03-23 16:07:36',2,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(3,3,2,'问题3','upload/shangpin_chat_issue3.jpg','2023-03-23 16:07:36','回复3','upload/shangpin_chat_reply3.jpg','2023-03-23 16:07:36',2,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(4,1,2,'问题4','upload/shangpin_chat_issue4.jpg','2023-03-23 16:07:36','回复4','upload/shangpin_chat_reply4.jpg','2023-03-23 16:07:36',1,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(5,1,1,'问题5','upload/shangpin_chat_issue5.jpg','2023-03-23 16:07:36','回复5','upload/shangpin_chat_reply5.jpg','2023-03-23 16:07:36',2,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(6,1,1,'问题6','upload/shangpin_chat_issue6.jpg','2023-03-23 16:07:36','回复6','upload/shangpin_chat_reply6.jpg','2023-03-23 16:07:36',1,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(7,2,1,'问题7','upload/shangpin_chat_issue7.jpg','2023-03-23 16:07:36','回复7','upload/shangpin_chat_reply7.jpg','2023-03-23 16:07:36',1,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(8,3,3,'问题8','upload/shangpin_chat_issue8.jpg','2023-03-23 16:07:36','回复8','upload/shangpin_chat_reply8.jpg','2023-03-23 16:07:36',1,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(9,2,3,'问题9','upload/shangpin_chat_issue9.jpg','2023-03-23 16:07:36','回复9','upload/shangpin_chat_reply9.jpg','2023-03-23 16:07:36',1,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(10,2,1,'问题10','upload/shangpin_chat_issue10.jpg','2023-03-23 16:07:36','回复10','upload/shangpin_chat_reply10.jpg','2023-03-23 16:07:36',2,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(11,2,1,'问题11','upload/shangpin_chat_issue11.jpg','2023-03-23 16:07:36','回复11','upload/shangpin_chat_reply11.jpg','2023-03-23 16:07:36',1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(12,3,1,'问题12','upload/shangpin_chat_issue12.jpg','2023-03-23 16:07:36','回复12','upload/shangpin_chat_reply12.jpg','2023-03-23 16:07:36',1,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(13,1,2,'问题13','upload/shangpin_chat_issue13.jpg','2023-03-23 16:07:36','回复13','upload/shangpin_chat_reply13.jpg','2023-03-23 16:07:36',1,2,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(14,2,2,'问题14','upload/shangpin_chat_issue14.jpg','2023-03-23 16:07:36','回复14','upload/shangpin_chat_reply14.jpg','2023-03-23 16:07:36',1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(15,1,1,'126156',NULL,'2023-03-23 16:17:12',NULL,NULL,NULL,2,1,'2023-03-23 16:17:13','2023-03-23 16:17:13'),(16,1,1,NULL,NULL,NULL,'666',NULL,'2023-03-23 16:17:24',NULL,2,'2023-03-23 16:17:24','2023-03-23 16:17:24'),(17,1,1,'亚压实度',NULL,'2023-03-24 10:12:16',NULL,NULL,NULL,2,1,'2023-03-24 10:12:17','2023-03-24 10:12:17'),(18,1,1,NULL,NULL,NULL,'不算大大',NULL,'2023-03-24 10:14:27',NULL,2,'2023-03-24 10:14:27','2023-03-24 10:14:27');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(2,2,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(3,3,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(4,4,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(5,5,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(6,6,3,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(7,7,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(8,8,2,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(9,9,2,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(10,10,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(11,11,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(12,12,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(13,13,3,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(14,14,1,1,'2023-03-23 16:07:36','2023-03-23 16:07:36'),(15,9,1,1,'2023-03-24 10:11:56','2023-03-24 10:11:56');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-03-23 16:07:36','回复信息1','2023-03-23 16:07:36','2023-03-23 16:07:36'),(2,2,1,'评价内容2','2023-03-23 16:07:36','回复信息2','2023-03-23 16:07:36','2023-03-23 16:07:36'),(3,3,3,'评价内容3','2023-03-23 16:07:36','回复信息3','2023-03-23 16:07:36','2023-03-23 16:07:36'),(4,4,1,'评价内容4','2023-03-23 16:07:36','回复信息4','2023-03-23 16:07:36','2023-03-23 16:07:36'),(5,5,3,'评价内容5','2023-03-23 16:07:36','回复信息5','2023-03-23 16:07:36','2023-03-23 16:07:36'),(6,6,1,'评价内容6','2023-03-23 16:07:36','回复信息6','2023-03-23 16:07:36','2023-03-23 16:07:36'),(7,7,1,'评价内容7','2023-03-23 16:07:36','回复信息7','2023-03-23 16:07:36','2023-03-23 16:07:36'),(8,8,3,'评价内容8','2023-03-23 16:07:36','回复信息8','2023-03-23 16:07:36','2023-03-23 16:07:36'),(9,9,2,'评价内容9','2023-03-23 16:07:36','回复信息9','2023-03-23 16:07:36','2023-03-23 16:07:36'),(10,10,2,'评价内容10','2023-03-23 16:07:36','回复信息10','2023-03-23 16:07:36','2023-03-23 16:07:36'),(11,11,3,'评价内容11','2023-03-23 16:07:36','回复信息11','2023-03-23 16:07:36','2023-03-23 16:07:36'),(12,12,3,'评价内容12','2023-03-23 16:07:36','回复信息12','2023-03-23 16:07:36','2023-03-23 16:07:36'),(13,13,2,'评价内容13','2023-03-23 16:07:36','回复信息13','2023-03-23 16:07:36','2023-03-23 16:07:36'),(14,14,3,'评价内容14','2023-03-23 16:07:36','回复信息14','2023-03-23 16:07:36','2023-03-23 16:07:36'),(15,9,1,'不是','2023-03-24 10:14:09','好的','2023-03-24 10:14:17','2023-03-24 10:14:09');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`insert_time`,`create_time`) values (1,'1679623947195',1,9,1,1,'87.04',NULL,NULL,102,'2023-03-24 10:12:27','2023-03-24 10:12:27'),(2,'1679623970357',1,9,1,2,'174.08','321','1032132231',105,'2023-03-24 10:12:50','2023-03-24 10:12:50');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','oeyl26x0cz8mk02mnaayoh1fi5tgckwp','2023-03-23 16:10:14','2023-03-24 11:10:29'),(2,1,'admin','users','管理员','xl4jvuk12cetsdb250zsbtrzeehz4dbh','2023-03-23 16:14:10','2023-03-24 11:14:57'),(3,1,'a1','shangjia','商家','n58palo16a6pnjn57xa417bu23bpqyxr','2023-03-23 16:16:34','2023-03-24 11:13:06');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','管理员','2023-03-23 16:06:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`yonghu_email`,`create_time`) values (1,'a1','e10adc3949ba59abbe56e057f20f883e','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'633.14','1@qq.com','2023-03-23 16:07:36'),(2,'a2','e10adc3949ba59abbe56e057f20f883e','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'219.76','2@qq.com','2023-03-23 16:07:36'),(3,'a3','e10adc3949ba59abbe56e057f20f883e','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'761.45','3@qq.com','2023-03-23 16:07:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
