/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengxinxiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengxinxiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengxinxiguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-01 12:00:28'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-01 12:00:28'),(3,'yuanxi_types','院系',1,'院系1',NULL,NULL,'2023-03-01 12:00:28'),(4,'yuanxi_types','院系',2,'院系2',NULL,NULL,'2023-03-01 12:00:28'),(5,'banji_types','班级',1,'班级1',NULL,NULL,'2023-03-01 12:00:28'),(6,'banji_types','班级',2,'班级2',NULL,NULL,'2023-03-01 12:00:28'),(7,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-01 12:00:28'),(8,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-01 12:00:28'),(9,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-03-01 12:00:29'),(10,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-03-01 12:00:29'),(11,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-03-01 12:00:29'),(12,'kecheng_types','课程类型',4,'课程类型4',NULL,NULL,'2023-03-01 12:00:29'),(13,'xueshengxuanke_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-01 12:00:29'),(14,'xueshengxuanke_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-01 12:00:29'),(15,'xueshengxuanke_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-01 12:00:29'),(16,'xueshengxuanke_yesno_types','申请状态',4,'取消选课',NULL,NULL,'2023-03-01 12:00:29'),(17,'ziliaoku_types','资料类型',1,'资料类型1',NULL,NULL,'2023-03-01 12:00:29'),(18,'ziliaoku_types','资料类型',2,'资料类型2',NULL,NULL,'2023-03-01 12:00:29'),(19,'ziliaoku_types','资料类型',3,'资料类型3',NULL,NULL,'2023-03-01 12:00:29'),(20,'ziliaoku_types','资料类型',4,'资料类型4',NULL,NULL,'2023-03-01 12:00:29'),(21,'ziliaoku_types','资料类型',5,'资料类型5',NULL,'','2023-03-01 13:37:08');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-01 12:00:39','公告详情1','2023-03-01 12:00:39'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-01 12:00:39','公告详情2','2023-03-01 12:00:39'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-01 12:00:39','公告详情3','2023-03-01 12:00:39'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-01 12:00:39','公告详情4','2023-03-01 12:00:39'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-01 12:00:39','公告详情5','2023-03-01 12:00:39'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-01 12:00:39','公告详情6','2023-03-01 12:00:39'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-01 12:00:39','公告详情7','2023-03-01 12:00:39'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-01 12:00:39','公告详情8','2023-03-01 12:00:39'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-01 12:00:39','公告详情9','2023-03-01 12:00:39'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-01 12:00:39','公告详情10','2023-03-01 12:00:39'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-01 12:00:39','公告详情11','2023-03-01 12:00:39'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-01 12:00:39','公告详情12','2023-03-01 12:00:39'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-01 12:00:39','公告详情13','2023-03-01 12:00:39'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-01 12:00:39','公告详情14','2023-03-01 12:00:39');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_address` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课程附件',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '课程开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '课程结束时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '截止报名时间',
  `kecheng_content` text COMMENT '课程内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`laoshi_id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_address`,`kecheng_file`,`kecheng_types`,`kaishi_time`,`jieshu_time`,`jiezhi_time`,`kecheng_content`,`insert_time`,`create_time`) values (1,2,'1677643239216','课程名称1','上课地点1','upload/file.rar',4,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-01 12:00:39','课程内容1','2023-03-01 12:00:39','2023-03-01 12:00:39'),(2,3,'1677643239228','课程名称2','上课地点2','upload/file.rar',2,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-01 12:00:39','课程内容2','2023-03-01 12:00:39','2023-03-01 12:00:39'),(3,2,'1677643239233','课程名称3','上课地点3','upload/file.rar',1,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容3','2023-03-01 12:00:39','2023-03-01 12:00:39'),(4,2,'1677643239200','课程名称4','上课地点4','upload/file.rar',4,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容4','2023-03-01 12:00:39','2023-03-01 12:00:39'),(5,3,'1677643239239','课程名称5','上课地点5','upload/file.rar',2,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容5','2023-03-01 12:00:39','2023-03-01 12:00:39'),(6,3,'1677643239254','课程名称6','上课地点6','upload/file.rar',3,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容6','2023-03-01 12:00:39','2023-03-01 12:00:39'),(7,1,'1677643239231','课程名称7','上课地点7','upload/file.rar',2,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容7','2023-03-01 12:00:39','2023-03-01 12:00:39'),(8,3,'1677643239276','课程名称8','上课地点8','upload/file.rar',1,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容8','2023-03-01 12:00:39','2023-03-01 12:00:39'),(9,2,'1677643239196','课程名称9','上课地点9','upload/file.rar',2,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容9','2023-03-01 12:00:39','2023-03-01 12:00:39'),(10,1,'1677643239247','课程名称10','上课地点10','upload/file.rar',2,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容10','2023-03-01 12:00:39','2023-03-01 12:00:39'),(11,1,'1677643239217','课程名称11','上课地点11','upload/file.rar',3,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容11','2023-03-01 12:00:39','2023-03-01 12:00:39'),(12,3,'1677643239207','课程名称12','上课地点12','upload/file.rar',3,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容12','2023-03-01 12:00:39','2023-03-01 12:00:39'),(13,2,'1677643239264','课程名称13','上课地点13','upload/file.rar',3,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-08 12:00:39','课程内容13','2023-03-01 12:00:39','2023-03-01 12:00:39'),(14,3,'1677643239293','课程名称14','上课地点14','upload/file.rar',1,'2023-03-01 12:00:39','2023-03-08 12:00:39','2023-03-01 12:00:39','课程内容14','2023-03-01 12:00:39','2023-03-01 12:00:39');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',1,'1@qq.com','2023-03-01 12:00:39'),(2,'a2','123456','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',2,'2@qq.com','2023-03-01 12:00:39'),(3,'a3','123456','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',1,'3@qq.com','2023-03-01 12:00:39');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','9r3596lpwiq24oqflfaqe3vjgpksy0rz','2023-03-01 13:03:30','2023-03-01 14:40:30'),(2,1,'a1','yonghu','学生','bw8glkpywp8c9agayyxzyvj65ybetwf5','2023-03-01 13:19:08','2023-03-01 14:35:10'),(3,1,'a1','laoshi','老师','m9v6tocdrdtt5gfty7trguxiv0u58alw','2023-03-01 13:30:06','2023-03-01 14:35:21'),(4,4,'a5','yonghu','学生','o19k9kd5zhca0hwa7s0kou106p4f2u0n','2023-03-01 13:34:11','2023-03-01 14:34:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-01 12:00:28');

/*Table structure for table `xueshengchengji` */

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `xueshengchengji_defen` decimal(10,2) DEFAULT NULL COMMENT '得分',
  `xueshengchengji_content` text COMMENT '评分缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `xueshengchengji` */

insert  into `xueshengchengji`(`id`,`yonghu_id`,`kecheng_id`,`xueshengchengji_defen`,`xueshengchengji_content`,`insert_time`,`create_time`) values (1,1,1,'915.93','评分缘由1','2023-03-01 12:00:39','2023-03-01 12:00:39'),(2,1,2,'301.19','评分缘由2','2023-03-01 12:00:39','2023-03-01 12:00:39'),(3,3,3,'898.22','评分缘由3','2023-03-01 12:00:39','2023-03-01 12:00:39'),(4,2,4,'584.02','评分缘由4','2023-03-01 12:00:39','2023-03-01 12:00:39'),(5,1,5,'160.37','评分缘由5','2023-03-01 12:00:39','2023-03-01 12:00:39'),(6,3,6,'517.65','评分缘由6','2023-03-01 12:00:39','2023-03-01 12:00:39'),(7,2,7,'212.06','评分缘由7','2023-03-01 12:00:39','2023-03-01 12:00:39'),(8,1,8,'808.45','评分缘由8','2023-03-01 12:00:39','2023-03-01 12:00:39'),(9,3,9,'912.80','评分缘由9','2023-03-01 12:00:39','2023-03-01 12:00:39'),(10,1,10,'761.00','评分缘由10','2023-03-01 12:00:39','2023-03-01 12:00:39'),(11,3,11,'816.85','评分缘由11','2023-03-01 12:00:39','2023-03-01 12:00:39'),(12,1,12,'907.60','评分缘由12','2023-03-01 12:00:39','2023-03-01 12:00:39'),(13,3,13,'619.63','评分缘由13','2023-03-01 12:00:39','2023-03-01 12:00:39'),(14,1,14,'59.72','评分缘由14','2023-03-01 12:00:39','2023-03-01 12:00:39'),(15,4,11,'11.00','<p>房东说个事</p>','2023-03-01 13:35:45','2023-03-01 13:35:45'),(16,2,11,'55.00','<p>更汗的是更待何时</p>','2023-03-01 13:36:19','2023-03-01 13:36:19');

/*Table structure for table `xueshengxuanke` */

DROP TABLE IF EXISTS `xueshengxuanke`;

CREATE TABLE `xueshengxuanke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '选课时间',
  `xueshengxuanke_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `xueshengxuanke_yesno_text` text COMMENT '审核意见',
  `xueshengxuanke_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='学生选课';

/*Data for the table `xueshengxuanke` */

insert  into `xueshengxuanke`(`id`,`yonghu_id`,`kecheng_id`,`insert_time`,`xueshengxuanke_yesno_types`,`xueshengxuanke_yesno_text`,`xueshengxuanke_shenhe_time`,`create_time`) values (1,2,1,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(2,2,2,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(3,1,3,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(4,1,4,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(5,2,5,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(6,2,6,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(7,1,7,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(8,3,8,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(9,1,9,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(10,3,10,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(11,2,11,'2023-03-01 12:00:39',2,'光和热通过复','2023-03-01 13:36:39','2023-03-01 12:00:39'),(12,3,12,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(13,2,13,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(14,3,14,'2023-03-01 12:00:39',1,NULL,NULL,'2023-03-01 12:00:39'),(15,1,14,'2023-03-01 13:19:35',4,NULL,NULL,'2023-03-01 13:19:35'),(18,4,13,'2023-03-01 13:34:36',4,NULL,NULL,'2023-03-01 13:34:36'),(19,4,13,'2023-03-01 13:34:55',1,NULL,NULL,'2023-03-01 13:34:55'),(20,4,12,'2023-03-01 13:34:58',1,NULL,NULL,'2023-03-01 13:34:58'),(21,4,11,'2023-03-01 13:35:02',2,'固定死割发代首','2023-03-01 13:36:33','2023-03-01 13:35:02');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuanxi_types` int(11) DEFAULT NULL COMMENT '院系',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yuanxi_types`,`banji_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,2,2,'1@qq.com','2023-03-01 12:00:39'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,1,1,'2@qq.com','2023-03-01 12:00:39'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,2,2,'3@qq.com','2023-03-01 12:00:39'),(4,'a5','123456','张5','17703789905','410224199610232005','/upload/1677648864777.jpg',1,2,1,'5@qq.com','2023-03-01 13:34:06');

/*Table structure for table `ziliaoku` */

DROP TABLE IF EXISTS `ziliaoku`;

CREATE TABLE `ziliaoku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `ziliaoku_uuid_number` varchar(200) DEFAULT NULL COMMENT '资料编号',
  `ziliaoku_name` varchar(200) DEFAULT NULL COMMENT '资料名称  Search111 ',
  `ziliaoku_file` varchar(200) DEFAULT NULL COMMENT '资料文件',
  `ziliaoku_types` int(11) DEFAULT NULL COMMENT '资料类型 Search111',
  `ziliaoku_content` text COMMENT '资料内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='资料库';

/*Data for the table `ziliaoku` */

insert  into `ziliaoku`(`id`,`ziliaoku_uuid_number`,`ziliaoku_name`,`ziliaoku_file`,`ziliaoku_types`,`ziliaoku_content`,`insert_time`,`create_time`) values (1,'1677643239251','资料名称1','upload/file.rar',1,'资料内容1','2023-03-01 12:00:39','2023-03-01 12:00:39'),(2,'1677643239227','资料名称2','upload/file.rar',2,'资料内容2','2023-03-01 12:00:39','2023-03-01 12:00:39'),(3,'1677643239231','资料名称3','upload/file.rar',4,'资料内容3','2023-03-01 12:00:39','2023-03-01 12:00:39'),(4,'1677643239223','资料名称4','upload/file.rar',1,'资料内容4','2023-03-01 12:00:39','2023-03-01 12:00:39'),(5,'1677643239277','资料名称5','upload/file.rar',2,'资料内容5','2023-03-01 12:00:39','2023-03-01 12:00:39'),(6,'1677643239216','资料名称6','upload/file.rar',1,'资料内容6','2023-03-01 12:00:39','2023-03-01 12:00:39'),(7,'1677643239247','资料名称7','upload/file.rar',1,'资料内容7','2023-03-01 12:00:39','2023-03-01 12:00:39'),(8,'1677643239217','资料名称8','upload/file.rar',3,'资料内容8','2023-03-01 12:00:39','2023-03-01 12:00:39'),(9,'1677643239285','资料名称9','upload/file.rar',3,'资料内容9','2023-03-01 12:00:39','2023-03-01 12:00:39'),(10,'1677643239281','资料名称10','upload/file.rar',4,'资料内容10','2023-03-01 12:00:39','2023-03-01 12:00:39'),(11,'1677643239283','资料名称11','upload/file.rar',2,'资料内容11','2023-03-01 12:00:39','2023-03-01 12:00:39'),(12,'1677643239250','资料名称12','upload/file.rar',1,'资料内容12','2023-03-01 12:00:39','2023-03-01 12:00:39'),(13,'1677643239289','资料名称13','upload/file.rar',3,'资料内容13','2023-03-01 12:00:39','2023-03-01 12:00:39'),(14,'1677643239282','资料名称14','upload/file.rar',2,'资料内容14','2023-03-01 12:00:39','2023-03-01 12:00:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
