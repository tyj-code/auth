/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.10 : Database - auth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`auth` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `auth`;

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `name` varchar(100) NOT NULL COMMENT '菜单名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单备注',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单ID',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单URL',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图片',
  `system_id` int(11) NOT NULL COMMENT '系统ID',
  `level` tinyint(3) NOT NULL DEFAULT '1' COMMENT '菜单类型:1:菜单,2:按钮',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态,1:可用,2:不可用',
  `create_id` int(11) NOT NULL COMMENT '操作人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Data for the table `tb_menu` */

insert  into `tb_menu`(`Id`,`name`,`remark`,`parent_id`,`url`,`icon`,`system_id`,`level`,`status`,`create_id`,`create_time`) values (1,'人员管理','人员管理',0,'user/init','',1,1,1,1,'2016-05-22 17:56:52'),(2,'菜单管理','菜单管理',0,'menu/init','',1,1,1,1,'2016-05-22 17:56:52'),(3,'角色管理','角色管理',0,'role/init','',1,1,1,1,'2016-05-22 17:56:52'),(4,'菜单查询','菜单查询',2,'menu/listMenu','',1,2,1,1,'2016-05-22 17:56:52'),(5,'菜单新增','菜单新增',2,'menu/addMenu','',1,2,1,1,'2016-05-22 17:56:52'),(6,'菜单修改','修改按钮',2,'menu/modMenu','',1,2,1,1,'2016-05-22 17:56:52'),(7,'菜单删除','删除按钮',2,'menu/delMenu','',1,2,1,1,'2016-05-22 17:56:52'),(8,'人员查询','查询按钮',1,'user/listUser','',1,2,1,1,'2016-05-22 17:56:52'),(9,'人员新增','新增按钮',1,'user/addUser','',1,2,1,1,'2016-05-22 17:56:52'),(10,'人员修改','修改按钮',1,'user/modUser','',1,2,1,1,'2016-05-22 17:56:52'),(11,'人员删除','删除按钮',1,'user/delUser','',1,2,1,1,'2016-05-22 17:56:52'),(12,'人员权限','分配用户权限',1,'user/Auth','',1,2,1,1,'2016-05-22 17:56:52'),(13,'人员权限确定','用户权限确定按钮',12,'user/userAuth/sure','',1,2,1,1,'2016-05-22 17:56:52'),(14,'人员权限取消','用户权限取消按钮',12,'user/userAuth/cancel','',1,2,1,1,'2016-05-22 17:56:52'),(15,'角色查询','查询按钮',3,'role/listRole','',1,2,1,1,'2016-05-22 17:56:52'),(16,'角色新增','新增按钮',3,'role/addRole','',1,2,1,1,'2016-05-22 17:56:52'),(17,'角色修改','修改按钮',3,'role/modRole','',1,2,1,1,'2016-05-22 17:56:52'),(18,'角色删除','删除按钮',3,'role/delRole','',1,2,1,1,'2016-05-22 17:56:52'),(19,'角色权限','分配角色权限',3,'role/Auth','',1,2,1,1,'2016-05-22 17:56:52'),(20,'角色权限确定','角色权限确定',19,'role/roleAuth/sure','',1,2,1,1,'2016-05-22 17:56:52'),(21,'角色权限取消','角色权限取消按钮',19,'role/roleAuth/cancel','',1,2,1,1,'2016-05-22 17:56:52'),(22,'修改密码','修改密码',0,'user/modPassword/init','',1,1,1,1,'2016-05-22 17:56:52'),(23,'重置密码','重置密码',1,'user/resetPassword','',1,2,1,1,'2016-05-22 17:56:52'),(24,'个人管理','个人管理',0,'','',2,1,1,1,'2016-05-22 17:56:52'),(25,'个人信息','个人信息',24,'user/init','',2,1,1,1,'2016-05-22 17:56:52'),(26,'修改密码','OA系统修改密码',24,'user/modPassword/init','',2,1,1,1,'2016-05-22 17:56:52'),(27,'签到签退','签到签退',24,'sign/init','',2,1,1,1,'2016-05-22 17:56:52'),(28,'签到','签到',27,'sign/in','',2,2,1,1,'2016-05-22 17:56:52'),(29,'签退','签退',27,'sign/out','',2,2,1,1,'2016-05-22 17:56:52'),(30,'查询','个人签到签退查询',27,'sign/listSign','',2,2,1,1,'2016-05-22 17:56:52'),(31,'账户管理','tyj系统',0,'general/user_init','',3,1,1,1,'2016-05-23 09:07:41'),(32,'用户数据','',0,'','',3,1,1,1,'2016-05-23 09:14:22'),(33,'车辆列表','',32,'deviceInfo/device_info','',3,1,1,1,'2016-05-23 09:14:54'),(34,'团队列表','',32,'team/team_init','',3,1,1,1,'2016-05-23 09:15:08'),(35,'路线列表','',32,'route/route_init','',3,1,1,1,'2016-05-23 09:15:25'),(36,'数据统计','',0,'','',3,1,1,1,'2016-05-23 09:15:40'),(37,'个人用户','',36,'','',3,1,1,1,'2016-05-23 09:16:16'),(38,'团队用户','',36,'','',3,1,1,1,'2016-05-23 09:16:35'),(39,'每天预警','',37,'alarm/day_alarm','',3,1,1,1,'2016-05-23 09:17:00'),(40,'时段预警','',37,'alarm/alarm_interval','',3,1,1,1,'2016-05-23 09:17:24'),(41,'每日车速','',37,'daySpeed/day_speed','',3,1,1,1,'2016-05-23 09:17:47'),(42,'驾车时长','',37,'driverTime/drive_time','',3,1,1,1,'2016-05-23 09:18:13'),(43,'用户评分','',37,'userScore/user_score','',3,1,1,1,'2016-05-23 09:18:37'),(44,'基础信息查询','',38,'general/base_init','',3,1,1,1,'2016-05-23 09:19:02'),(45,'单车统计','',38,'one/one_alarm','',3,1,1,1,'2016-05-23 09:19:18'),(46,'对比统计','',38,'more/more_alarm','',3,1,1,1,'2016-05-23 09:19:45'),(47,'地图统计','',38,'map/message_map','',3,1,1,1,'2016-05-23 09:20:06'),(48,'团队用户评分','',38,'userScore/user_score','',3,1,1,1,'2016-05-23 09:20:23'),(49,'报表打印','',38,'alarm/init_total_alarm','',3,1,1,1,'2016-05-23 09:20:40'),(50,'账户新增','',31,'user/add_user','',3,2,1,1,'2016-05-23 09:21:31'),(51,'账户编辑','',31,'user/edit_user','',3,2,1,1,'2016-05-23 09:23:35'),(52,'团队新增','',34,'team/add_team','',3,2,1,1,'2016-05-23 09:25:35'),(53,'团队编辑','',38,'team/edit_team','',3,2,1,1,'2016-05-23 09:25:55'),(54,'路线新增','',35,'route/add_route','',3,2,1,1,'2016-05-23 09:26:17'),(55,'路线编辑','',35,'route/edit_route','',3,2,1,1,'2016-05-23 09:26:33'),(56,'账户删除','',31,'user/remove_user','',3,2,1,1,'2016-06-13 08:51:28'),(57,'用户信息管理','',0,'','',4,1,1,1,'2016-07-03 15:09:18'),(58,'录入用户列表','',57,'device_info/device_info','',4,1,1,1,'2016-07-03 15:10:04'),(59,'用户付费管理','',0,'','',4,1,1,1,'2016-07-03 15:10:19'),(60,'确认付费用户','',59,'pay/customer_list','',4,1,1,1,'2016-07-03 15:10:44'),(61,'用户付费记录','',59,'pay/record_list','',4,1,1,1,'2016-07-03 15:11:03'),(62,'设备管理','',0,'','',4,1,1,1,'2016-07-03 15:11:13'),(63,'待激活设备','',62,'device_info/to_activate_list','',4,1,1,1,'2016-07-03 15:11:32'),(64,'所有设备','',62,'device_info/all_list','',4,1,1,1,'2016-07-03 15:11:51'),(65,'设备配置','',62,'device_info/config_list','',4,1,1,1,'2016-07-03 15:12:09'),(66,'设备告警信息','',62,'device_info/msg_list','',4,1,1,1,'2016-07-03 15:12:24'),(67,'账户管理','',0,'','',4,1,1,1,'2016-07-03 15:12:39'),(68,'账户列表','',67,'user/user_list','',4,1,1,1,'2016-07-03 15:13:32'),(69,'地理位置','',37,'map/location','',3,1,1,1,'2016-07-16 09:06:10'),(70,'账户新增按钮','',68,'user/add_user','',4,2,1,1,'2016-08-27 14:13:46'),(71,'账户编辑按钮','',68,'user/edit_user','',4,2,1,1,'2016-08-27 14:40:44'),(72,'用户新增按钮','',58,'device/add_device','',4,2,1,1,'2016-08-27 14:43:59'),(73,'用户编辑按钮','',58,'device/edit_device','',4,2,1,1,'2016-08-27 14:44:36'),(74,'确认付费按钮','',60,'customer/confirm_pay','',4,2,1,1,'2016-08-27 14:47:29'),(75,'激活按钮','',63,'to_activate/activate','',4,2,1,1,'2016-08-27 14:49:56'),(76,'调试按钮','',63,'to_activate/debug','',4,2,1,1,'2016-08-27 14:50:47'),(77,'激活记录按钮','',64,'all/activate_record','',4,2,1,1,'2016-08-27 14:52:08'),(78,'配置按钮','',65,'config/one_config','',4,2,1,1,'2016-08-27 14:54:04'),(79,'批量配置按钮','',65,'config/more_config','',4,2,1,1,'2016-08-27 14:54:42'),(80,'告警信息下载按钮','',66,'msg/download','',4,2,1,1,'2016-08-27 14:55:51'),(81,'车辆实时信息','',62,'device_info/real_time','',4,1,1,1,'2017-12-24 15:44:57'),(82,'平台参数设置指令','',58,'setting/one_config','',4,2,1,1,'2017-12-24 18:23:01'),(83,'平台参数设置指令批量','',58,'setting/more_config','',4,2,1,1,'2017-12-24 18:23:55'),(84,'平台车载终端控制指令','',58,'terminal_setting/one_config','',4,2,1,1,'2017-12-24 18:25:22'),(85,'平台车载终端控制指令批量','',58,'terminal_setting/more_config','',4,2,1,1,'2017-12-24 18:25:45');

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(100) NOT NULL COMMENT '角色名',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `system_id` int(11) NOT NULL COMMENT '系统ID',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态:1:可用,2:不可用',
  `create_id` int(11) NOT NULL COMMENT '操作人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `tb_role` */

insert  into `tb_role`(`Id`,`name`,`remark`,`system_id`,`status`,`create_id`,`create_time`) values (1,'管理员','管理员',1,1,1,'2016-05-22 17:56:54'),(2,'测试12本地','测试',1,1,1,'2016-05-22 17:56:54'),(3,'oa管理员','oa管理员',2,1,1,'2016-05-22 17:56:54'),(4,'系统管理员','',3,1,1,'2016-05-23 09:11:18'),(5,'操作员','',3,1,1,'2016-05-24 09:11:23'),(6,'系统管理员','',4,1,1,'2016-07-03 15:27:39'),(7,'陪练','',3,1,1,'2016-07-18 10:41:39'),(8,'peilian1','',3,2,1,'2016-07-18 19:09:39'),(9,'查看','',4,1,1,'2016-08-29 13:10:55');

/*Table structure for table `tb_role_menu` */

DROP TABLE IF EXISTS `tb_role_menu`;

CREATE TABLE `tb_role_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色-菜单ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8 COMMENT='角色-菜单表';

/*Data for the table `tb_role_menu` */

insert  into `tb_role_menu`(`Id`,`role_id`,`menu_id`) values (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,2,2),(25,2,4),(26,2,22),(27,3,24),(28,3,25),(29,3,26),(30,3,27),(31,3,28),(32,3,29),(33,3,30),(34,4,31),(35,4,32),(36,4,33),(37,4,34),(38,4,35),(39,4,36),(40,4,37),(41,4,38),(42,4,39),(43,4,40),(44,4,41),(45,4,42),(46,4,43),(47,4,44),(48,4,45),(49,4,46),(50,4,47),(51,4,48),(52,4,49),(53,4,50),(54,4,51),(55,4,52),(56,4,53),(57,4,54),(58,4,55),(78,4,56),(91,4,69),(103,7,33),(104,7,39),(105,7,40),(106,7,41),(107,7,42),(108,7,47),(109,7,69),(110,7,32),(111,7,36),(112,7,37),(113,7,38),(124,7,45),(161,8,32),(162,8,33),(163,8,36),(164,8,37),(165,8,39),(166,8,40),(167,8,41),(168,8,42),(169,9,57),(170,9,58),(171,9,59),(172,9,60),(173,9,62),(174,9,64),(175,9,66),(176,9,80),(196,5,32),(197,5,33),(198,5,34),(199,5,35),(200,5,36),(201,5,37),(202,5,39),(203,5,40),(204,5,41),(205,5,42),(206,5,43),(207,5,38),(208,5,44),(209,5,45),(210,5,46),(211,5,47),(212,5,48),(213,5,49),(238,6,57),(239,6,58),(240,6,72),(241,6,73),(242,6,82),(243,6,83),(244,6,84),(245,6,85),(246,6,59),(247,6,60),(248,6,74),(249,6,61),(250,6,62),(251,6,63),(252,6,75),(253,6,76),(254,6,64),(255,6,77),(256,6,65),(257,6,78),(258,6,79),(259,6,66),(260,6,80),(261,6,81),(262,6,67),(263,6,68),(264,6,70),(265,6,71);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(1000) NOT NULL COMMENT '用户密码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `sex` tinyint(3) NOT NULL DEFAULT '1' COMMENT '性别，1:男,2:女',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `system_id` int(11) NOT NULL COMMENT '系统ID',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态:1:可用,2:不可用',
  `create_id` int(11) NOT NULL COMMENT '操作人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `tb_user` */

insert  into `tb_user`(`Id`,`name`,`password`,`email`,`phone`,`sex`,`role_id`,`system_id`,`status`,`create_id`,`create_time`) values (1,'ck','-1ef523c6b645a65441a91fa80df077c2','yuqiang.cui@gmail.com','18611714795',1,1,1,1,1,'2016-05-22 17:56:58'),(2,'test','b59c67bf196a4758191e42f76670ceba','214722930@qq.com','18611714795',1,2,1,1,1,'2016-05-22 17:56:58'),(3,'oa','b59c67bf196a4758191e42f76670ceba','214722930@qq.com','18611714795',1,3,2,1,1,'2016-05-22 17:56:58'),(4,'admin','21232f297a57a5a743894a0e4a801fc3','','',1,4,3,1,1,'2016-05-23 09:09:02'),(5,'tyj','e10adc3949ba59abbe56e057f20f883e','','',1,5,3,1,1,'2016-05-24 09:39:37'),(6,'admin','b59c67bf196a4758191e42f76670ceba','','',1,6,4,1,1,'2016-07-03 15:33:34'),(7,'daijia','-1fc2515ab6fd3031cbb5ec790500cc44','','',1,8,3,2,1,'2016-07-18 10:37:11'),(9,'peilian','45fb9e478b4f02d0f039841df8fd60ea','','',1,7,3,1,1,'2016-07-18 13:45:36'),(10,'tyj','4f2aa2afc218a9f3bfd2358bb4f441e0','','',1,9,4,1,1,'2016-08-29 13:11:56');

/*Table structure for table `tb_user_menu` */

DROP TABLE IF EXISTS `tb_user_menu`;

CREATE TABLE `tb_user_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户-菜单ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户-菜单表';

/*Data for the table `tb_user_menu` */

insert  into `tb_user_menu`(`Id`,`user_id`,`menu_id`) values (1,2,1),(2,2,8);

/*Table structure for table `td_composite_dictionary` */

DROP TABLE IF EXISTS `td_composite_dictionary`;

CREATE TABLE `td_composite_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键标识',
  `dic_id` int(11) NOT NULL COMMENT '字典ID',
  `dic_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dic_type` int(11) NOT NULL COMMENT '类型',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '字典状态:1:启用,0:禁用',
  `dic_desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '字典描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `td_composite_dictionary` */

insert  into `td_composite_dictionary`(`id`,`dic_id`,`dic_name`,`dic_type`,`status`,`dic_desc`) values (1,1,'男',1,1,'性别'),(2,2,'女',1,1,'性别'),(3,1,'可用',2,1,'状态'),(4,2,'禁用',2,1,'状态'),(5,1,'权限系统',3,1,'系统ID'),(6,2,'oa系统',3,1,'系统ID'),(7,3,'tyj系统',3,1,'系统ID'),(8,4,'jhpt系统',3,1,'系统ID'),(9,1,'菜单',4,1,'菜单类型'),(10,2,'按钮',4,1,'菜单类型');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
