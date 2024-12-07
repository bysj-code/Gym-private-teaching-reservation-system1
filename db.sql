/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmuj2tb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmuj2tb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmuj2tb`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmuj2tb/upload/1617328198634.jpg'),(2,'picture2','http://localhost:8080/ssmuj2tb/upload/1617328205056.jpg'),(3,'picture3','http://localhost:8080/ssmuj2tb/upload/1617329107056.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusssijiaokecheng` */

DROP TABLE IF EXISTS `discusssijiaokecheng`;

CREATE TABLE `discusssijiaokecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='私教课程评论表';

/*Data for the table `discusssijiaokecheng` */

insert  into `discusssijiaokecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-02 09:44:32',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-02 09:44:32',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-02 09:44:32',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-02 09:44:32',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-02 09:44:32',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-02 09:44:32',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoliangonghao` varchar(200) NOT NULL COMMENT '教练工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `gerenjianjie` varchar(200) DEFAULT NULL COMMENT '个人简介',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoliangonghao` (`jiaoliangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617329025767 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`xingbie`,`touxiang`,`nianling`,`dengji`,`gerenjianjie`,`lianxifangshi`,`shenfenzheng`) values (21,'2021-04-02 09:44:31','教练1','123456','教练姓名1','男','http://localhost:8080/ssmuj2tb/upload/jiaolian_touxiang1.jpg',1,'初级','个人简介1','13823888881','440300199101010001'),(22,'2021-04-02 09:44:31','教练2','123456','教练姓名2','男','http://localhost:8080/ssmuj2tb/upload/jiaolian_touxiang2.jpg',2,'初级','个人简介2','13823888882','440300199202020002'),(23,'2021-04-02 09:44:31','教练3','123456','教练姓名3','男','http://localhost:8080/ssmuj2tb/upload/jiaolian_touxiang3.jpg',3,'初级','个人简介3','13823888883','440300199303030003'),(24,'2021-04-02 09:44:31','教练4','123456','教练姓名4','男','http://localhost:8080/ssmuj2tb/upload/jiaolian_touxiang4.jpg',4,'初级','个人简介4','13823888884','440300199404040004'),(25,'2021-04-02 09:44:31','教练5','123456','教练姓名5','男','http://localhost:8080/ssmuj2tb/upload/jiaolian_touxiang5.jpg',5,'初级','个人简介5','13823888885','440300199505050005'),(26,'2021-04-02 09:44:31','教练6','123456','教练姓名6','男','http://localhost:8080/ssmuj2tb/upload/jiaolian_touxiang6.jpg',6,'初级','个人简介6','13823888886','440300199606060006'),(1617328070600,'2021-04-02 09:47:50','2','2','张悦','女','http://localhost:8080/ssmuj2tb/upload/1617328048309.jpg',30,'高级','从事瑜伽教学10余年','12312312312','123456789789456123'),(1617329025766,'2021-04-02 10:03:45','3','3','张明','男','http://localhost:8080/ssmuj2tb/upload/1617328989208.jpg',28,'中级','从事健身行业十余年','12345678978','123456789789456123');

/*Table structure for table `kechenggoumai` */

DROP TABLE IF EXISTS `kechenggoumai`;

CREATE TABLE `kechenggoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jieshu` varchar(200) DEFAULT NULL COMMENT '节数',
  `kechengjiage` varchar(200) DEFAULT NULL COMMENT '课程价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617328649531 DEFAULT CHARSET=utf8 COMMENT='课程购买';

/*Data for the table `kechenggoumai` */

insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`leixing`,`tupian`,`jieshu`,`kechengjiage`,`goumairiqi`,`jiaoliangonghao`,`jiaolianxingming`,`yonghuming`,`xingming`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-04-02 09:44:31','订单编号1','课程名称1','类型1','http://localhost:8080/ssmuj2tb/upload/kechenggoumai_tupian1.jpg','节数1','课程价格1','2021-04-02','教练工号1','教练姓名1','用户名1','姓名1','联系电话1','是','','未支付',1),(52,'2021-04-02 09:44:31','订单编号2','课程名称2','类型2','http://localhost:8080/ssmuj2tb/upload/kechenggoumai_tupian2.jpg','节数2','课程价格2','2021-04-02','教练工号2','教练姓名2','用户名2','姓名2','联系电话2','是','','未支付',2),(53,'2021-04-02 09:44:31','订单编号3','课程名称3','类型3','http://localhost:8080/ssmuj2tb/upload/kechenggoumai_tupian3.jpg','节数3','课程价格3','2021-04-02','教练工号3','教练姓名3','用户名3','姓名3','联系电话3','是','','未支付',3),(54,'2021-04-02 09:44:31','订单编号4','课程名称4','类型4','http://localhost:8080/ssmuj2tb/upload/kechenggoumai_tupian4.jpg','节数4','课程价格4','2021-04-02','教练工号4','教练姓名4','用户名4','姓名4','联系电话4','是','','未支付',4),(55,'2021-04-02 09:44:31','订单编号5','课程名称5','类型5','http://localhost:8080/ssmuj2tb/upload/kechenggoumai_tupian5.jpg','节数5','课程价格5','2021-04-02','教练工号5','教练姓名5','用户名5','姓名5','联系电话5','是','','未支付',5),(56,'2021-04-02 09:44:31','订单编号6','课程名称6','类型6','http://localhost:8080/ssmuj2tb/upload/kechenggoumai_tupian6.jpg','节数6','课程价格6','2021-04-02','教练工号6','教练姓名6','用户名6','姓名6','联系电话6','是','','未支付',6),(1617328649530,'2021-04-02 09:57:29','1617328645032','普拉提核心','核心','http://localhost:8080/ssmuj2tb/upload/1617328452759.jpg','10','1299','2021-04-02','2','张悦','1','陈一','12312312312','是','ok','已支付',1617328519247);

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1617329035700 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (31,'2021-04-02 09:44:31','减脂'),(32,'2021-04-02 09:44:31','增肌'),(33,'2021-04-02 09:44:31','塑形'),(34,'2021-04-02 09:44:31','理疗'),(35,'2021-04-02 09:44:31','核心'),(1617329035699,'2021-04-02 10:03:55','柔韧');

/*Table structure for table `kechengpingjia` */

DROP TABLE IF EXISTS `kechengpingjia`;

CREATE TABLE `kechengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `goumairiqi` varchar(200) DEFAULT NULL COMMENT '购买日期',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617328809993 DEFAULT CHARSET=utf8 COMMENT='课程评价';

/*Data for the table `kechengpingjia` */

insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`tupian`,`goumairiqi`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`jiaoliangonghao`,`jiaolianxingming`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (71,'2021-04-02 09:44:32','订单编号1','课程名称1','http://localhost:8080/ssmuj2tb/upload/kechengpingjia_tupian1.jpg','购买日期1','1','评价内容1','2021-04-02','教练工号1','教练姓名1','用户名1','联系电话1','是','',1),(72,'2021-04-02 09:44:32','订单编号2','课程名称2','http://localhost:8080/ssmuj2tb/upload/kechengpingjia_tupian2.jpg','购买日期2','1','评价内容2','2021-04-02','教练工号2','教练姓名2','用户名2','联系电话2','是','',2),(73,'2021-04-02 09:44:32','订单编号3','课程名称3','http://localhost:8080/ssmuj2tb/upload/kechengpingjia_tupian3.jpg','购买日期3','1','评价内容3','2021-04-02','教练工号3','教练姓名3','用户名3','联系电话3','是','',3),(74,'2021-04-02 09:44:32','订单编号4','课程名称4','http://localhost:8080/ssmuj2tb/upload/kechengpingjia_tupian4.jpg','购买日期4','1','评价内容4','2021-04-02','教练工号4','教练姓名4','用户名4','联系电话4','是','',4),(75,'2021-04-02 09:44:32','订单编号5','课程名称5','http://localhost:8080/ssmuj2tb/upload/kechengpingjia_tupian5.jpg','购买日期5','1','评价内容5','2021-04-02','教练工号5','教练姓名5','用户名5','联系电话5','是','',5),(76,'2021-04-02 09:44:32','订单编号6','课程名称6','http://localhost:8080/ssmuj2tb/upload/kechengpingjia_tupian6.jpg','购买日期6','1','评价内容6','2021-04-02','教练工号6','教练姓名6','用户名6','联系电话6','是','',6),(1617328809992,'2021-04-02 10:00:09','1617328645032','普拉提核心','http://localhost:8080/ssmuj2tb/upload/1617328452759.jpg','2021-04-02','5','很不错的课程','2021-04-03','2','张悦','1','12312312312','是','感谢支持',1617328519247);

/*Table structure for table `kechengyuyue` */

DROP TABLE IF EXISTS `kechengyuyue`;

CREATE TABLE `kechengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jieshu` varchar(200) DEFAULT NULL COMMENT '节数',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617328770697 DEFAULT CHARSET=utf8 COMMENT='课程预约';

/*Data for the table `kechengyuyue` */

insert  into `kechengyuyue`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`tupian`,`jieshu`,`yuyueshijian`,`jiaoliangonghao`,`jiaolianxingming`,`yonghuming`,`xingming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (61,'2021-04-02 09:44:31','订单编号1','课程名称1','http://localhost:8080/ssmuj2tb/upload/kechengyuyue_tupian1.jpg','节数1','2021-04-02 09:44:31','教练工号1','教练姓名1','用户名1','姓名1','联系电话1','是','',1),(62,'2021-04-02 09:44:31','订单编号2','课程名称2','http://localhost:8080/ssmuj2tb/upload/kechengyuyue_tupian2.jpg','节数2','2021-04-02 09:44:31','教练工号2','教练姓名2','用户名2','姓名2','联系电话2','是','',2),(63,'2021-04-02 09:44:31','订单编号3','课程名称3','http://localhost:8080/ssmuj2tb/upload/kechengyuyue_tupian3.jpg','节数3','2021-04-02 09:44:31','教练工号3','教练姓名3','用户名3','姓名3','联系电话3','是','',3),(64,'2021-04-02 09:44:31','订单编号4','课程名称4','http://localhost:8080/ssmuj2tb/upload/kechengyuyue_tupian4.jpg','节数4','2021-04-02 09:44:31','教练工号4','教练姓名4','用户名4','姓名4','联系电话4','是','',4),(65,'2021-04-02 09:44:31','订单编号5','课程名称5','http://localhost:8080/ssmuj2tb/upload/kechengyuyue_tupian5.jpg','节数5','2021-04-02 09:44:31','教练工号5','教练姓名5','用户名5','姓名5','联系电话5','是','',5),(66,'2021-04-02 09:44:31','订单编号6','课程名称6','http://localhost:8080/ssmuj2tb/upload/kechengyuyue_tupian6.jpg','节数6','2021-04-02 09:44:31','教练工号6','教练姓名6','用户名6','姓名6','联系电话6','是','',6),(1617328770696,'2021-04-02 09:59:30','1617328645032','普拉提核心','http://localhost:8080/ssmuj2tb/upload/1617328452759.jpg','10','2021-04-03 10:59:19','2','张悦','1','陈一','12312312312','是','可以',1617328519247);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617329079117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (101,'2021-04-02 09:44:32',1,'用户名1','留言内容1','回复内容1'),(102,'2021-04-02 09:44:32',2,'用户名2','留言内容2','回复内容2'),(103,'2021-04-02 09:44:32',3,'用户名3','留言内容3','回复内容3'),(104,'2021-04-02 09:44:32',4,'用户名4','留言内容4','回复内容4'),(105,'2021-04-02 09:44:32',5,'用户名5','留言内容5','回复内容5'),(106,'2021-04-02 09:44:32',6,'用户名6','留言内容6','回复内容6'),(1617328692398,'2021-04-02 09:58:12',1617328519247,'1','请问理疗类的课程有吗','有的，可按分类看'),(1617329079116,'2021-04-02 10:04:38',1617328519247,'1','RFYRTUT7YIUYI','GFDTYGTF');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617329149085 DEFAULT CHARSET=utf8 COMMENT='健身资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-02 09:44:32','标题1','简介1','http://localhost:8080/ssmuj2tb/upload/1617328233167.jpg','<p>内容1</p>'),(92,'2021-04-02 09:44:32','标题2','简介2','http://localhost:8080/ssmuj2tb/upload/1617328243061.png','<p>内容2</p>'),(93,'2021-04-02 09:44:32','标题3','简介3','http://localhost:8080/ssmuj2tb/upload/1617328250213.jpg','<p>内容3</p>'),(94,'2021-04-02 09:44:32','标题4','简介4','http://localhost:8080/ssmuj2tb/upload/1617328264220.jpg','<p>内容4</p>'),(95,'2021-04-02 09:44:32','标题5','简介5','http://localhost:8080/ssmuj2tb/upload/news_picture5.jpg','内容5'),(1617329149084,'2021-04-02 10:05:48','普拉提知识科普','普拉提','http://localhost:8080/ssmuj2tb/upload/1617329126521.jpeg','<p>普拉提的英文是Pilates（/Pilates Method），即“普拉提”（或称“普拉提技术”）。是以德国人约瑟夫·休伯特斯·普拉提（Joseph Hubertus Pilates）姓氏命名的一种运动方式和技能。普拉提生前对自创的这一套独特训练动作、运动的技能称为“控制术”（Contrology）。</p><p>狭义普拉提运动的范围：普拉提夫妇总共创造了超500个动作，大部分是拍成照片或记录片被保存下来的。它们包括了垫上操及普拉提先生所发明的工作室器械的动作，这就是狭义的普拉提运动的概念。</p><p>广义的普拉提运动概念：普拉提首先是一种运动。它主要是锻炼人体深层的小肌肉群，维持和改善外观正常活动姿势、达到身体平衡、创展躯干和肢体的活动范围和活动能力、强调对核心肌群的控制、加强人脑对肢体及骨骼肌肉组织的神经感应及支配，再配合正确的呼吸方法所进行的一项全身协调运动。</p><p><img src=\"http://localhost:8080/ssmuj2tb/upload/1617329147285.jpg\"></p>');

/*Table structure for table `sijiaokecheng` */

DROP TABLE IF EXISTS `sijiaokecheng`;

CREATE TABLE `sijiaokecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jieshu` int(11) DEFAULT NULL COMMENT '节数',
  `kechengjiage` int(11) DEFAULT NULL COMMENT '课程价格',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `gerenjianjie` varchar(200) DEFAULT NULL COMMENT '个人简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617328498554 DEFAULT CHARSET=utf8 COMMENT='私教课程';

/*Data for the table `sijiaokecheng` */

insert  into `sijiaokecheng`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`tupian`,`jieshu`,`kechengjiage`,`keyueshijian`,`kechengjieshao`,`jiaoliangonghao`,`jiaolianxingming`,`dengji`,`gerenjianjie`,`clicktime`,`clicknum`) values (41,'2021-04-02 09:44:31','课程名称1','减脂','http://localhost:8080/ssmuj2tb/upload/1617328131187.jpg',1,1,'可约时间1','课程介绍1','教练工号1','教练姓名1','等级1','个人简介1','2021-04-02 09:48:43',2),(42,'2021-04-02 09:44:31','课程名称2','塑形','http://localhost:8080/ssmuj2tb/upload/1617328142510.jpg',2,2,'可约时间2','课程介绍2','教练工号2','教练姓名2','等级2','个人简介2','2021-04-02 09:48:54',3),(43,'2021-04-02 09:44:31','课程名称3','增肌','http://localhost:8080/ssmuj2tb/upload/1617328155613.jpg',3,3,'可约时间3','课程介绍3','教练工号3','教练姓名3','等级3','个人简介3','2021-04-02 09:49:06',4),(45,'2021-04-02 09:44:31','课程名称5','理疗','http://localhost:8080/ssmuj2tb/upload/1617328176377.jpg',5,5,'可约时间5','课程介绍5','教练工号5','教练姓名5','等级5','个人简介5','2021-04-02 09:49:29',6),(46,'2021-04-02 09:44:31','课程名称6','增肌','http://localhost:8080/ssmuj2tb/upload/sijiaokecheng_tupian6.jpg',6,6,'可约时间6','课程介绍6','教练工号6','教练姓名6','等级6','个人简介6','2021-04-02 09:49:40',7),(1617328498553,'2021-04-02 09:54:58','普拉提核心','核心','http://localhost:8080/ssmuj2tb/upload/1617328452759.jpg',10,1299,'周一至周六','强调对核心肌群的控制、加强人脑对肢体及骨骼肌肉组织的神经感应及支配。','2','张悦','高级','从事瑜伽教学10余年','2021-04-02 10:04:00',3);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617328643224 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','j4g06horyarizfcxfv3mqh4tidoglrys','2021-04-02 09:46:58','2021-04-02 11:02:55'),(2,1617328070600,'2','jiaolian','教练','1ctlk9s2ra5frua5lrdo3o0mp3b8mm8b','2021-04-02 09:53:49','2021-04-02 11:00:48'),(3,1617328519247,'1','yonghu','用户','34x40b7ls84ecxpdu5b83lv8c6585amm','2021-04-02 09:55:58','2021-04-02 11:01:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-02 09:44:32');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617328519248 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (11,'2021-04-02 09:44:31','用户1','123456','姓名1','男','http://localhost:8080/ssmuj2tb/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-04-02 09:44:31','用户2','123456','姓名2','男','http://localhost:8080/ssmuj2tb/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-04-02 09:44:31','用户3','123456','姓名3','男','http://localhost:8080/ssmuj2tb/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-04-02 09:44:31','用户4','123456','姓名4','男','http://localhost:8080/ssmuj2tb/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-04-02 09:44:31','用户5','123456','姓名5','男','http://localhost:8080/ssmuj2tb/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-04-02 09:44:31','用户6','123456','姓名6','男','http://localhost:8080/ssmuj2tb/upload/yonghu_touxiang6.jpg','13823888886'),(1617328519247,'2021-04-02 09:55:19','1','1','陈一','女','http://localhost:8080/ssmuj2tb/upload/1617328568738.png','12312312312');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
