/*
SQLyog v10.2 
MySQL - 5.7.21-log : Database - guli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`guli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `guli`;

/*Table structure for table `acl_permission` */

DROP TABLE IF EXISTS `acl_permission`;

CREATE TABLE `acl_permission` (
  `id` char(19) NOT NULL DEFAULT '' COMMENT '编号',
  `pid` char(19) NOT NULL DEFAULT '' COMMENT '所属上级',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '类型(1:菜单,2:按钮)',
  `permission_value` varchar(50) DEFAULT NULL COMMENT '权限值',
  `path` varchar(100) DEFAULT NULL COMMENT '访问路径',
  `component` varchar(100) DEFAULT NULL COMMENT '组件路径',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限';

/*Data for the table `acl_permission` */

insert  into `acl_permission`(`id`,`pid`,`name`,`type`,`permission_value`,`path`,`component`,`icon`,`status`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1','0','全部数据',0,NULL,NULL,NULL,NULL,NULL,0,'2019-11-15 17:13:06','2019-11-15 17:13:06'),('1195268474480156673','1','权限管理',1,NULL,'/acl','Layout',NULL,NULL,0,'2019-11-15 17:13:06','2019-11-18 13:54:25'),('1195268616021139457','1195268474480156673','用户管理',1,NULL,'user/list','/acl/user/list',NULL,NULL,0,'2019-11-15 17:13:40','2019-11-18 13:53:12'),('1195268788138598401','1195268474480156673','角色管理',1,NULL,'role/list','/acl/role/list',NULL,NULL,0,'2019-11-15 17:14:21','2019-11-15 17:14:21'),('1195268893830864898','1195268474480156673','菜单管理',1,NULL,'menu/list','/acl/menu/list',NULL,NULL,0,'2019-11-15 17:14:46','2019-11-15 17:14:46'),('1195269143060602882','1195268616021139457','查看',2,'user.list','','',NULL,NULL,0,'2019-11-15 17:15:45','2019-11-17 21:57:16'),('1195269295926206466','1195268616021139457','添加',2,'user.add','user/add','/acl/user/form',NULL,NULL,0,'2019-11-15 17:16:22','2019-11-15 17:16:22'),('1195269473479483394','1195268616021139457','修改',2,'user.update','user/update/:id','/acl/user/form',NULL,NULL,0,'2019-11-15 17:17:04','2019-11-15 17:17:04'),('1195269547269873666','1195268616021139457','删除',2,'user.remove','','',NULL,NULL,0,'2019-11-15 17:17:22','2019-11-15 17:17:22'),('1195269821262782465','1195268788138598401','修改',2,'role.update','role/update/:id','/acl/role/form',NULL,NULL,0,'2019-11-15 17:18:27','2019-11-15 17:19:53'),('1195269903542444034','1195268788138598401','查看',2,'role.list','','',NULL,NULL,0,'2019-11-15 17:18:47','2019-11-15 17:18:47'),('1195270037005197313','1195268788138598401','添加',2,'role.add','role/add','/acl/role/form',NULL,NULL,0,'2019-11-15 17:19:19','2019-11-18 11:05:42'),('1195270442602782721','1195268788138598401','删除',2,'role.remove','','',NULL,NULL,0,'2019-11-15 17:20:55','2019-11-15 17:20:55'),('1195270621548568578','1195268788138598401','角色权限',2,'role.acl','role/distribution/:id','/acl/role/roleForm',NULL,NULL,0,'2019-11-15 17:21:38','2019-11-15 17:21:38'),('1195270744097742849','1195268893830864898','查看',2,'permission.list','','',NULL,NULL,0,'2019-11-15 17:22:07','2019-11-15 17:22:07'),('1195270810560684034','1195268893830864898','添加',2,'permission.add','','',NULL,NULL,0,'2019-11-15 17:22:23','2019-11-15 17:22:23'),('1195270862100291586','1195268893830864898','修改',2,'permission.update','','',NULL,NULL,0,'2019-11-15 17:22:35','2019-11-15 17:22:35'),('1195270887933009922','1195268893830864898','删除',2,'permission.remove','','',NULL,NULL,0,'2019-11-15 17:22:41','2019-11-15 17:22:41'),('1195349439240048642','1','讲师管理',1,NULL,'/edu/teacher','Layout',NULL,NULL,0,'2019-11-15 22:34:49','2019-11-15 22:34:49'),('1195349699995734017','1195349439240048642','讲师列表',1,NULL,'list','/edu/teacher/list',NULL,NULL,0,'2019-11-15 22:35:52','2019-11-15 22:35:52'),('1195349810561781761','1195349439240048642','添加讲师',1,NULL,'create','/edu/teacher/form',NULL,NULL,0,'2019-11-15 22:36:18','2019-11-15 22:36:18'),('1195349876252971010','1195349810561781761','添加',2,'teacher.add','','',NULL,NULL,0,'2019-11-15 22:36:34','2019-11-15 22:36:34'),('1195349979797753857','1195349699995734017','查看',2,'teacher.list','','',NULL,NULL,0,'2019-11-15 22:36:58','2019-11-15 22:36:58'),('1195350117270261762','1195349699995734017','修改',2,'teacher.update','edit/:id','/edu/teacher/form',NULL,NULL,0,'2019-11-15 22:37:31','2019-11-15 22:37:31'),('1195350188359520258','1195349699995734017','删除',2,'teacher.remove','','',NULL,NULL,0,'2019-11-15 22:37:48','2019-11-15 22:37:48'),('1195350299365969922','1','课程分类',1,NULL,'/edu/subject','Layout',NULL,NULL,0,'2019-11-15 22:38:15','2019-11-15 22:38:15'),('1195350397751758850','1195350299365969922','课程分类列表',1,NULL,'list','/edu/subject/list',NULL,NULL,0,'2019-11-15 22:38:38','2019-11-15 22:38:38'),('1195350500512206850','1195350299365969922','导入课程分类',1,NULL,'import','/edu/subject/import',NULL,NULL,0,'2019-11-15 22:39:03','2019-11-15 22:39:03'),('1195350612172967938','1195350397751758850','查看',2,'subject.list','','',NULL,NULL,0,'2019-11-15 22:39:29','2019-11-15 22:39:29'),('1195350687590748161','1195350500512206850','导入',2,'subject.import','','',NULL,NULL,0,'2019-11-15 22:39:47','2019-11-15 22:39:47'),('1195350831744782337','1','课程管理',1,NULL,'/edu/course','Layout',NULL,NULL,0,'2019-11-15 22:40:21','2019-11-15 22:40:21'),('1195350919074385921','1195350831744782337','课程列表',1,NULL,'list','/edu/course/list',NULL,NULL,0,'2019-11-15 22:40:42','2019-11-15 22:40:42'),('1195351020463296513','1195350831744782337','发布课程',1,NULL,'info','/edu/course/info',NULL,NULL,0,'2019-11-15 22:41:06','2019-11-15 22:41:06'),('1195351159672246274','1195350919074385921','完成发布',2,'course.publish','publish/:id','/edu/course/publish',NULL,NULL,0,'2019-11-15 22:41:40','2019-11-15 22:44:01'),('1195351326706208770','1195350919074385921','编辑课程',2,'course.update','info/:id','/edu/course/info',NULL,NULL,0,'2019-11-15 22:42:19','2019-11-15 22:42:19'),('1195351566221938690','1195350919074385921','编辑课程大纲',2,'chapter.update','chapter/:id','/edu/course/chapter',NULL,NULL,0,'2019-11-15 22:43:17','2019-11-15 22:43:17'),('1195351862889254913','1','统计分析',1,NULL,'/statistics/daily','Layout',NULL,NULL,0,'2019-11-15 22:44:27','2019-11-15 22:44:27'),('1195351968841568257','1195351862889254913','生成统计',1,NULL,'create','/statistics/daily/create',NULL,NULL,0,'2019-11-15 22:44:53','2019-11-15 22:44:53'),('1195352054917074946','1195351862889254913','统计图表',1,NULL,'chart','/statistics/daily/chart',NULL,NULL,0,'2019-11-15 22:45:13','2019-11-15 22:45:13'),('1195352127734386690','1195352054917074946','查看',2,'daily.list','','',NULL,NULL,0,'2019-11-15 22:45:30','2019-11-15 22:45:30'),('1195352215768633346','1195351968841568257','生成',2,'daily.add','','',NULL,NULL,0,'2019-11-15 22:45:51','2019-11-15 22:45:51'),('1195352547621965825','1','CMS管理',1,NULL,'/cms','Layout',NULL,NULL,0,'2019-11-15 22:47:11','2019-11-18 10:51:46'),('1195352856645701633','1195353513549205505','查看',2,'banner.list','',NULL,NULL,NULL,0,'2019-11-15 22:48:24','2019-11-15 22:48:24'),('1195352909401657346','1195353513549205505','添加',2,'banner.add','banner/add','/cms/banner/form',NULL,NULL,0,'2019-11-15 22:48:37','2019-11-18 10:52:10'),('1195353051395624961','1195353513549205505','修改',2,'banner.update','banner/update/:id','/cms/banner/form',NULL,NULL,0,'2019-11-15 22:49:11','2019-11-18 10:52:05'),('1195353513549205505','1195352547621965825','Bander列表',1,NULL,'banner/list','/cms/banner/list',NULL,NULL,0,'2019-11-15 22:51:01','2019-11-18 10:51:29'),('1195353672110673921','1195353513549205505','删除',2,'banner.remove','','',NULL,NULL,0,'2019-11-15 22:51:39','2019-11-15 22:51:39'),('1195354076890370050','1','订单管理',1,NULL,'/order','Layout',NULL,NULL,0,'2019-11-15 22:53:15','2019-11-15 22:53:15'),('1195354153482555393','1195354076890370050','订单列表',1,NULL,'list','/order/list',NULL,NULL,0,'2019-11-15 22:53:33','2019-11-15 22:53:58'),('1195354315093282817','1195354153482555393','查看',2,'order.list','','',NULL,NULL,0,'2019-11-15 22:54:12','2019-11-15 22:54:12'),('1196301740985311234','1195268616021139457','分配角色',2,'user.assgin','user/role/:id','/acl/user/roleForm',NULL,NULL,0,'2019-11-18 13:38:56','2019-11-18 13:38:56');

/*Table structure for table `acl_role` */

DROP TABLE IF EXISTS `acl_role`;

CREATE TABLE `acl_role` (
  `id` char(19) NOT NULL DEFAULT '' COMMENT '角色id',
  `role_name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_code` varchar(20) DEFAULT NULL COMMENT '角色编码',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `acl_role` */

insert  into `acl_role`(`id`,`role_name`,`role_code`,`remark`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1','普通管理员',NULL,NULL,0,'2019-11-11 13:09:32','2019-11-18 10:27:18'),('1193757683205607426','课程管理员',NULL,NULL,0,'2019-11-11 13:09:45','2019-11-18 10:25:44'),('1616400981255475202','讲师管理员',NULL,NULL,0,'2023-01-20 19:43:20','2023-01-20 19:43:20'),('1616401109945110530','统计管理员',NULL,NULL,0,'2023-01-20 19:43:51','2023-01-20 19:43:51');

/*Table structure for table `acl_role_permission` */

DROP TABLE IF EXISTS `acl_role_permission`;

CREATE TABLE `acl_role_permission` (
  `id` char(19) NOT NULL DEFAULT '',
  `role_id` char(19) NOT NULL DEFAULT '',
  `permission_id` char(19) NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限';

/*Data for the table `acl_role_permission` */

insert  into `acl_role_permission`(`id`,`role_id`,`permission_id`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1616400650106785794','1193757683205607426','1',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785795','1193757683205607426','1195350299365969922',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785796','1193757683205607426','1195350397751758850',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785797','1193757683205607426','1195350612172967938',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785798','1193757683205607426','1195350500512206850',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785799','1193757683205607426','1195350687590748161',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785800','1193757683205607426','1195350831744782337',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785801','1193757683205607426','1195350919074385921',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785802','1193757683205607426','1195351159672246274',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785803','1193757683205607426','1195351326706208770',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785804','1193757683205607426','1195351566221938690',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616400650106785805','1193757683205607426','1195351020463296513',0,'2023-01-20 19:42:01','2023-01-20 19:42:01'),('1616401025916424194','1616400981255475202','1',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401025916424195','1616400981255475202','1195349439240048642',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401025916424196','1616400981255475202','1195349699995734017',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401025916424197','1616400981255475202','1195349979797753857',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401025916424198','1616400981255475202','1195350117270261762',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401025916424199','1616400981255475202','1195350188359520258',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401025916424200','1616400981255475202','1195349810561781761',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401025916424201','1616400981255475202','1195349876252971010',0,'2023-01-20 19:43:31','2023-01-20 19:43:31'),('1616401153284853761','1616401109945110530','1',0,'2023-01-20 19:44:01','2023-01-20 19:44:01'),('1616401153284853762','1616401109945110530','1195351862889254913',0,'2023-01-20 19:44:01','2023-01-20 19:44:01'),('1616401153284853763','1616401109945110530','1195351968841568257',0,'2023-01-20 19:44:01','2023-01-20 19:44:01'),('1616401153284853764','1616401109945110530','1195352215768633346',0,'2023-01-20 19:44:01','2023-01-20 19:44:01'),('1616401153284853765','1616401109945110530','1195352054917074946',0,'2023-01-20 19:44:01','2023-01-20 19:44:01'),('1616401153284853766','1616401109945110530','1195352127734386690',0,'2023-01-20 19:44:01','2023-01-20 19:44:01');

/*Table structure for table `acl_user` */

DROP TABLE IF EXISTS `acl_user`;

CREATE TABLE `acl_user` (
  `id` char(19) NOT NULL COMMENT '会员id',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '微信openid',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `salt` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `token` varchar(100) DEFAULT NULL COMMENT '用户签名',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

/*Data for the table `acl_user` */

insert  into `acl_user`(`id`,`username`,`password`,`nick_name`,`salt`,`token`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1','admin','96e79218965eb72c92a549dd5a330112','admin','',NULL,0,'2019-11-01 10:39:47','2019-11-01 10:39:47'),('1616400486042390529','peng','111111','peng',NULL,NULL,0,'2023-01-20 19:41:22','2023-01-20 19:41:22');

/*Table structure for table `acl_user_role` */

DROP TABLE IF EXISTS `acl_user_role`;

CREATE TABLE `acl_user_role` (
  `id` char(19) NOT NULL DEFAULT '' COMMENT '主键id',
  `role_id` char(19) NOT NULL DEFAULT '0' COMMENT '角色id',
  `user_id` char(19) NOT NULL DEFAULT '0' COMMENT '用户id',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `acl_user_role` */

insert  into `acl_user_role`(`id`,`role_id`,`user_id`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1617393414642569218','1193757683205607426','1616400486042390529',0,'2023-01-23 13:26:54','2023-01-23 13:26:54'),('1626177770131521538','1','1',0,'2023-02-16 19:12:48','2023-02-16 19:12:48'),('1626177770131521539','1193757683205607426','1',0,'2023-02-16 19:12:48','2023-02-16 19:12:48'),('1626177770131521540','1616400981255475202','1',0,'2023-02-16 19:12:48','2023-02-16 19:12:48'),('1626177770131521541','1616401109945110530','1',0,'2023-02-16 19:12:48','2023-02-16 19:12:48');

/*Table structure for table `crm_banner` */

DROP TABLE IF EXISTS `crm_banner`;

CREATE TABLE `crm_banner` (
  `id` char(19) NOT NULL DEFAULT '' COMMENT 'ID',
  `title` varchar(20) DEFAULT '' COMMENT '标题',
  `image_url` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
  `link_url` varchar(500) DEFAULT '' COMMENT '链接地址',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首页banner表';

/*Data for the table `crm_banner` */

insert  into `crm_banner`(`id`,`title`,`image_url`,`link_url`,`sort`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1194556896025845762','test1','https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/31/1089e7c8a0904e29ada4aeedc72e6f0d1.jpg','/course',1,0,'2019-11-13 18:05:32','2019-11-18 10:28:22'),('1194607458461216769','test2','https://edu--peng.oss-cn-shanghai.aliyuncs.com/2023/01/01/91cce5ea6d9c4c61a7a85d7758880ba182012e67b9fbbd14c2cc9dd2341bd64d.jpeg','/teacher',2,0,'2019-11-13 21:26:27','2019-11-14 09:12:15');

/*Table structure for table `edu_chapter` */

DROP TABLE IF EXISTS `edu_chapter`;

CREATE TABLE `edu_chapter` (
  `id` char(19) NOT NULL COMMENT '章节ID',
  `course_id` char(19) NOT NULL COMMENT '课程ID',
  `title` varchar(50) NOT NULL COMMENT '章节名称',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '显示排序',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程';

/*Data for the table `edu_chapter` */

insert  into `edu_chapter`(`id`,`course_id`,`title`,`sort`,`gmt_create`,`gmt_modified`) values ('1610278192899411970','1610278179813183489','xcv',0,'2023-01-03 22:13:33','2023-01-03 22:13:33'),('1610627528057393153','1610627444905316353','MyBatis概述',1,'2023-01-04 21:21:41','2023-01-04 21:21:41'),('1610627732504547330','1610627444905316353','第一个Mybatis程序',1,'2023-01-04 21:22:30','2023-01-04 21:22:30'),('1610627848334446593','1610627444905316353','Mybatis的事务管理机制',1,'2023-01-04 21:22:58','2023-01-04 21:22:58'),('1610628137745616897','1610628074826862593','Servlet',1,'2023-01-04 21:24:07','2023-01-04 21:24:07');

/*Table structure for table `edu_comment` */

DROP TABLE IF EXISTS `edu_comment`;

CREATE TABLE `edu_comment` (
  `id` char(19) NOT NULL COMMENT '讲师ID',
  `course_id` varchar(19) NOT NULL DEFAULT '' COMMENT '课程id',
  `teacher_id` char(19) NOT NULL DEFAULT '' COMMENT '讲师id',
  `member_id` varchar(19) NOT NULL DEFAULT '' COMMENT '会员id',
  `nickname` varchar(50) DEFAULT NULL COMMENT '会员昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '会员头像',
  `content` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`),
  KEY `idx_teacher_id` (`teacher_id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论';

/*Data for the table `edu_comment` */

insert  into `edu_comment`(`id`,`course_id`,`teacher_id`,`member_id`,`nickname`,`avatar`,`content`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1611382724563808258','1610627444905316353','1607969985610887170','1611382724563808258','A鹏','https://thirdwx.qlogo.cn/mmopen/vi_32/UaquZpiaK8ia3U6m7ia8qz42CkXPKuIqGjgCHS8IrbKs3QhY7e3sMAwqCp6wJo0ZmFPicdVQnayicn5ffaJFick4b8pg/132','fjjbvxbx',0,'2023-01-09 14:10:27','2023-01-09 14:10:27'),('1612332826371547138','1610627444905316353','1607969985610887170','1611382724563808258','A鹏','https://thirdwx.qlogo.cn/mmopen/vi_32/UaquZpiaK8ia3U6m7ia8qz42CkXPKuIqGjgCHS8IrbKs3QhY7e3sMAwqCp6wJo0ZmFPicdVQnayicn5ffaJFick4b8pg/132','很好',0,'2023-01-09 14:17:56','2023-01-09 14:17:56'),('1612332868411056129','1610627444905316353','1607969985610887170','1611382724563808258','A鹏','https://thirdwx.qlogo.cn/mmopen/vi_32/UaquZpiaK8ia3U6m7ia8qz42CkXPKuIqGjgCHS8IrbKs3QhY7e3sMAwqCp6wJo0ZmFPicdVQnayicn5ffaJFick4b8pg/132','测试评论',0,'2023-01-09 14:18:06','2023-01-09 14:18:06'),('1613068200899223554','1610627444905316353','1607969985610887170','1611241647177441281','yin','https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg','ss',0,'2023-01-11 15:00:03','2023-01-11 15:00:03'),('1614508233631965185','1610628074826862593','1189426437876985857','1614500009268715521','peng','https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg','dsddd',0,'2023-01-15 14:22:14','2023-01-15 14:22:14'),('1614508275298181121','1610628074826862593','1189426437876985857','1614500009268715521','peng','https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg','dsfs',0,'2023-01-15 14:22:24','2023-01-15 14:22:24');

/*Table structure for table `edu_course` */

DROP TABLE IF EXISTS `edu_course`;

CREATE TABLE `edu_course` (
  `id` char(19) NOT NULL COMMENT '课程ID',
  `teacher_id` char(19) NOT NULL COMMENT '课程讲师ID',
  `subject_id` char(19) NOT NULL COMMENT '课程专业ID',
  `subject_parent_id` char(19) NOT NULL COMMENT '课程专业父级ID',
  `title` varchar(50) NOT NULL COMMENT '课程标题',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '课程销售价格，设置为0则可免费观看',
  `lesson_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总课时',
  `cover` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '课程封面图片路径',
  `buy_count` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `view_count` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数量',
  `version` bigint(20) unsigned NOT NULL DEFAULT '1' COMMENT '乐观锁',
  `status` varchar(10) NOT NULL DEFAULT 'Draft' COMMENT '课程状态 Draft未发布  Normal已发布',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`),
  KEY `idx_subject_id` (`subject_id`),
  KEY `idx_teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程';

/*Data for the table `edu_course` */

insert  into `edu_course`(`id`,`teacher_id`,`subject_id`,`subject_parent_id`,`title`,`price`,`lesson_num`,`cover`,`buy_count`,`view_count`,`version`,`status`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1610627444905316353','1607969985610887170','1608750044626010114','1608750044626010113','mybatis','0.01',111,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2023/01/04/24c449d7d44a4c829f4d4fe3d4772c0682012e67b9fbbd14c2cc9dd2341bd64d.jpeg',100,0,1,'Normal',0,'2023-01-04 21:21:22','2023-01-04 21:26:41'),('1610628074826862593','1189426437876985857','1608750044554706948','1608750044487598082','javaweb','0.00',87,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2023/01/04/24c449d7d44a4c829f4d4fe3d4772c0682012e67b9fbbd14c2cc9dd2341bd64d.jpeg',90,0,1,'Normal',0,'2023-01-04 21:23:52','2023-01-04 21:25:01');

/*Table structure for table `edu_course_collect` */

DROP TABLE IF EXISTS `edu_course_collect`;

CREATE TABLE `edu_course_collect` (
  `id` char(19) NOT NULL COMMENT '收藏ID',
  `course_id` char(19) NOT NULL COMMENT '课程讲师ID',
  `member_id` char(19) NOT NULL DEFAULT '' COMMENT '课程专业ID',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程收藏';

/*Data for the table `edu_course_collect` */

insert  into `edu_course_collect`(`id`,`course_id`,`member_id`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1196269345666019330','1192252213659774977','1',1,'2019-11-18 11:30:12','2019-11-18 11:30:12');

/*Table structure for table `edu_course_description` */

DROP TABLE IF EXISTS `edu_course_description`;

CREATE TABLE `edu_course_description` (
  `id` char(19) NOT NULL COMMENT '课程ID',
  `description` text COMMENT '课程简介',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='课程简介';

/*Data for the table `edu_course_description` */

insert  into `edu_course_description`(`id`,`description`,`gmt_create`,`gmt_modified`) values ('1610627444905316353','深入理解','2023-01-04 21:21:22','2023-01-04 21:21:22'),('1610628074826862593','新版javaweb','2023-01-04 21:23:52','2023-01-04 21:23:52');

/*Table structure for table `edu_subject` */

DROP TABLE IF EXISTS `edu_subject`;

CREATE TABLE `edu_subject` (
  `id` char(19) NOT NULL COMMENT '课程类别ID',
  `title` varchar(10) NOT NULL COMMENT '类别名称',
  `parent_id` char(19) NOT NULL DEFAULT '0' COMMENT '父ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序字段',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程科目';

/*Data for the table `edu_subject` */

insert  into `edu_subject`(`id`,`title`,`parent_id`,`sort`,`gmt_create`,`gmt_modified`) values ('1608750044487598082','前端开发','0',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044554706946','vue','1608750044487598082',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044554706947','JavaScript','1608750044487598082',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044554706948','jquery','1608750044487598082',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044626010113','后端开发','0',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044626010114','Java','1608750044626010113',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044626010115','c++','1608750044626010113',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044688924673','数据库开发','0',0,'2022-12-30 17:01:14','2022-12-30 17:01:14'),('1608750044697313282','mysql','1608750044688924673',0,'2022-12-30 17:01:14','2022-12-30 17:01:14');

/*Table structure for table `edu_teacher` */

DROP TABLE IF EXISTS `edu_teacher`;

CREATE TABLE `edu_teacher` (
  `id` char(19) NOT NULL COMMENT '讲师ID',
  `name` varchar(20) NOT NULL COMMENT '讲师姓名',
  `intro` varchar(500) NOT NULL DEFAULT '' COMMENT '讲师简介',
  `career` varchar(500) DEFAULT NULL COMMENT '讲师资历,一句话说明讲师',
  `level` int(10) unsigned NOT NULL COMMENT '头衔 1高级讲师 2首席讲师',
  `avatar` varchar(255) DEFAULT NULL COMMENT '讲师头像',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='讲师';

/*Data for the table `edu_teacher` */

insert  into `edu_teacher`(`id`,`name`,`intro`,`career`,`level`,`avatar`,`sort`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1','张三','近年主持国家自然科学基金（6项）、江苏省重大科技成果转化项目（5项）、江苏省产学研前瞻性联合研究项目（3项）、省工业科技支撑、省高技术、省自然科学基金等省部级及其企业的主要科研项目40多个，多个项目在企业成功转化，产生了较好的经济、社会和环境效益。积极开展产学研科技合作，并与省内16家企业建立了江苏省研究生工作站，其中6家为江苏省优秀研究生工作站','高级',1,'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg',0,0,'2019-10-30 14:18:46','2019-11-12 13:36:36'),('1189389726308478977','晴天','高级讲师简介','高级讲师资历',2,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',2,1,'2019-10-30 11:53:03','2022-12-28 14:01:36'),('1189390295668469762','李刚','高级讲师简介','高级讲师',2,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',2,0,'2019-10-30 11:55:19','2019-11-12 13:37:52'),('1189426437876985857','王二','高级讲师简介','高级讲师',1,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',0,0,'2019-10-30 14:18:56','2019-11-12 13:37:35'),('1189426464967995393','王五','高级讲师简介','高级讲师',1,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',0,0,'2019-10-30 14:19:02','2019-11-12 13:37:18'),('1192249914833055746','李四','高级讲师简介','高级讲师',1,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',0,1,'2019-11-07 09:18:25','2019-11-12 13:37:01'),('1192327476087115778','1222-12-12','1111','11',1,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',0,1,'2019-11-07 14:26:37','2019-11-11 16:26:26'),('1195337453429129218','test','sdfsdf','sdfdf',1,'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg',0,0,'2019-11-15 21:47:12','2019-11-15 21:47:27'),('1606895623776481282','string','string','string',0,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',0,1,'2022-12-25 14:12:26','2022-12-25 14:12:26'),('1606896245179400194','test010','string','string',1,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/30/1d32b59dd9d84a018f18b2a4b60929eafile.png',0,1,'2022-12-25 14:14:54','2022-12-28 14:00:52'),('1607969985610887170','石志鹏','博士后','博士后',2,'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg',1,0,'2022-12-28 13:21:34','2022-12-30 22:29:11'),('1608296842185117698','6','','6',2,'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg',1,1,'2022-12-29 11:00:23','2022-12-29 11:00:23'),('1608426753256214529','测试头像上传','ssss','博士sss',1,'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg',1,0,'2022-12-29 19:36:36','2022-12-31 21:02:28'),('1608829303830847489','ss','as','as',1,'https://image.baidu.com/search/detail?ct=503316480&z=undefined&tn=baiduimagedetail&ipn=d&word=%E8%80%81%E5%B8%88%E5%9B%BE%E7%89%87&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=undefined&hd=undefined&latest=undefined&copyright=undefined&cs=1830159509,427786675&os',1,1,'2022-12-30 22:16:11','2022-12-30 22:16:11'),('1608832527547736066','peng','博士后','博士后',2,'https://edu--peng.oss-cn-shanghai.aliyuncs.com/2022/12/31/155374895a134df1a7c478a8cba00b88file.png',1,0,'2022-12-30 22:29:00','2022-12-31 21:02:18');

/*Table structure for table `edu_video` */

DROP TABLE IF EXISTS `edu_video`;

CREATE TABLE `edu_video` (
  `id` char(19) NOT NULL COMMENT '视频ID',
  `course_id` char(19) NOT NULL COMMENT '课程ID',
  `chapter_id` char(19) NOT NULL COMMENT '章节ID',
  `title` varchar(50) NOT NULL COMMENT '节点名称',
  `video_source_id` varchar(100) DEFAULT NULL COMMENT '云端视频资源',
  `video_original_name` varchar(100) DEFAULT NULL COMMENT '原始文件名称',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序字段',
  `play_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '播放次数',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可以试听：0收费 1免费',
  `duration` float NOT NULL DEFAULT '0' COMMENT '视频时长（秒）',
  `status` varchar(20) NOT NULL DEFAULT 'Empty' COMMENT 'Empty未上传 Transcoding转码中  Normal正常',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '视频源文件大小（字节）',
  `version` bigint(20) unsigned NOT NULL DEFAULT '1' COMMENT '乐观锁',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`),
  KEY `idx_chapter_id` (`chapter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程视频';

/*Data for the table `edu_video` */

insert  into `edu_video`(`id`,`course_id`,`chapter_id`,`title`,`video_source_id`,`video_original_name`,`sort`,`play_count`,`is_free`,`duration`,`status`,`size`,`version`,`gmt_create`,`gmt_modified`) values ('1610627692587356162','1610627444905316353','1610627528057393153','了解MyBatis','5635ed408f4a71ed80000764a0fd0102','6 - What If I Want to Move Faster.mp4',2,0,0,0,'Empty',0,1,'2023-01-04 21:22:21','2023-01-04 21:22:21'),('1610627804290060289','1610627444905316353','1610627732504547330','步骤','5635ed408f4a71ed80000764a0fd0102','6 - What If I Want to Move Faster.mp4',1,0,0,0,'Empty',0,1,'2023-01-04 21:22:47','2023-01-04 21:22:47'),('1610627891661606913','1610627444905316353','1610627848334446593','事务回顾','62f2e6608c3371ed800f0764a3fc0102','6 - What If I Want to Move Faster.mp4',1,0,0,0,'Empty',0,1,'2023-01-04 21:23:08','2023-01-04 21:23:08'),('1610628249653841921','1610628074826862593','1610628137745616897','什么是Servlet','62f2e6608c3371ed800f0764a3fc0102','6 - What If I Want to Move Faster.mp4',0,0,0,0,'Empty',0,1,'2023-01-04 21:24:33','2023-01-04 21:24:33'),('1610628307686232065','1610628074826862593','1610628137745616897','Servlet与jsp的关系','62f2e6608c3371ed800f0764a3fc0102','6 - What If I Want to Move Faster.mp4',0,0,0,0,'Empty',0,1,'2023-01-04 21:24:47','2023-01-04 21:24:47'),('1610628350308749313','1610628074826862593','1610628137745616897','Servlet API','62f2e6608c3371ed800f0764a3fc0102','6 - What If I Want to Move Faster.mp4',3,0,0,0,'Empty',0,1,'2023-01-04 21:24:57','2023-01-04 21:24:57'),('1610628732061716481','1610627444905316353','1610627528057393153','框架(framework)','62f2e6608c3371ed800f0764a3fc0102','6 - What If I Want to Move Faster.mp4',0,0,0,0,'Empty',0,1,'2023-01-04 21:26:28','2023-01-04 21:26:28');

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `members` */

/*Table structure for table `statistics_daily` */

DROP TABLE IF EXISTS `statistics_daily`;

CREATE TABLE `statistics_daily` (
  `id` char(19) NOT NULL COMMENT '主键',
  `date_calculated` varchar(20) NOT NULL COMMENT '统计日期',
  `register_num` int(11) NOT NULL DEFAULT '0' COMMENT '注册人数',
  `login_num` int(11) NOT NULL DEFAULT '0' COMMENT '登录人数',
  `video_view_num` int(11) NOT NULL DEFAULT '0' COMMENT '每日播放视频数',
  `course_num` int(11) NOT NULL DEFAULT '0' COMMENT '每日新增课程数',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `statistics_day` (`date_calculated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站统计日数据';

/*Data for the table `statistics_daily` */

insert  into `statistics_daily`(`id`,`date_calculated`,`register_num`,`login_num`,`video_view_num`,`course_num`,`gmt_create`,`gmt_modified`) values ('','2023-01-15',111,111,1111,111,'0000-00-00 00:00:00','0000-00-00 00:00:00'),('1614631211266985986','2023-01-14',2,118,104,191,'2023-01-15 22:30:54','2023-01-15 22:30:54'),('1614650131222843394','2023-01-03',0,186,125,198,'2023-01-15 23:46:05','2023-01-15 23:46:05');

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `id` char(19) NOT NULL DEFAULT '',
  `order_no` varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
  `course_id` varchar(19) NOT NULL DEFAULT '' COMMENT '课程id',
  `course_title` varchar(100) DEFAULT NULL COMMENT '课程名称',
  `course_cover` varchar(255) DEFAULT NULL COMMENT '课程封面',
  `teacher_name` varchar(20) DEFAULT NULL COMMENT '讲师名称',
  `member_id` varchar(19) NOT NULL DEFAULT '' COMMENT '会员id',
  `nickname` varchar(50) DEFAULT NULL COMMENT '会员昵称',
  `mobile` varchar(11) DEFAULT NULL COMMENT '会员手机',
  `total_fee` decimal(10,2) DEFAULT '0.01' COMMENT '订单金额（分）',
  `pay_type` tinyint(3) DEFAULT NULL COMMENT '支付类型（1：微信 2：支付宝）',
  `status` tinyint(3) DEFAULT NULL COMMENT '订单状态（0：未支付 1：已支付）',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_order_no` (`order_no`),
  KEY `idx_course_id` (`course_id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单';

/*Data for the table `t_order` */

insert  into `t_order`(`id`,`order_no`,`course_id`,`course_title`,`course_cover`,`teacher_name`,`member_id`,`nickname`,`mobile`,`total_fee`,`pay_type`,`status`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1614502424571158529','20230115135908290','1610627444905316353','mybatis','https://edu--peng.oss-cn-shanghai.aliyuncs.com/2023/01/04/24c449d7d44a4c829f4d4fe3d4772c0682012e67b9fbbd14c2cc9dd2341bd64d.jpeg','石志鹏','1614500009268715521','peng','13007588701','0.01',1,1,0,'2023-01-15 13:59:09','2023-01-15 13:59:23'),('1614507000951185409','20230115141719427','1610628074826862593','javaweb','https://edu--peng.oss-cn-shanghai.aliyuncs.com/2023/01/04/24c449d7d44a4c829f4d4fe3d4772c0682012e67b9fbbd14c2cc9dd2341bd64d.jpeg','王二','1614500009268715521','peng','13007588701','0.00',1,1,0,'2023-01-15 14:17:20','2023-01-15 14:17:20'),('1614579518626004993','20230115190529183','1610627444905316353','mybatis','https://edu--peng.oss-cn-shanghai.aliyuncs.com/2023/01/04/24c449d7d44a4c829f4d4fe3d4772c0682012e67b9fbbd14c2cc9dd2341bd64d.jpeg','石志鹏','1614500009268715521','peng','13007588701','0.01',1,1,0,'2023-01-15 19:05:29','2023-01-15 19:05:29');

/*Table structure for table `t_pay_log` */

DROP TABLE IF EXISTS `t_pay_log`;

CREATE TABLE `t_pay_log` (
  `id` char(19) NOT NULL DEFAULT '',
  `order_no` varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
  `pay_time` datetime DEFAULT NULL COMMENT '支付完成时间',
  `total_fee` decimal(10,2) DEFAULT '0.01' COMMENT '支付金额（分）',
  `transaction_id` varchar(30) DEFAULT NULL COMMENT '交易流水号',
  `trade_state` char(20) DEFAULT NULL COMMENT '交易状态',
  `pay_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付类型（1：微信 2：支付宝）',
  `attr` text COMMENT '其他属性',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付日志表';

/*Data for the table `t_pay_log` */

insert  into `t_pay_log`(`id`,`order_no`,`pay_time`,`total_fee`,`transaction_id`,`trade_state`,`pay_type`,`attr`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1614502485652807681','20230115135908290','2023-01-15 13:59:23','0.01','4200001656202301153082377571','SUCCESS',1,'{\"transaction_id\":\"4200001656202301153082377571\",\"nonce_str\":\"yc3O9TrmmULdeQTm\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuDt5c4cR2po7AmWfsJyeJb0\",\"sign\":\"FD0C8EB40422916D193C3215DAC80401\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20230115135908290\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20230115135919\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',0,'2023-01-15 13:59:23','2023-01-15 13:59:23');

/*Table structure for table `ucenter_member` */

DROP TABLE IF EXISTS `ucenter_member`;

CREATE TABLE `ucenter_member` (
  `id` char(19) NOT NULL COMMENT '会员id',
  `openid` varchar(128) DEFAULT NULL COMMENT '微信openid',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(2) unsigned DEFAULT NULL COMMENT '性别 1 女，2 男',
  `age` tinyint(3) unsigned DEFAULT NULL COMMENT '年龄',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `sign` varchar(100) DEFAULT NULL COMMENT '用户签名',
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁用 1（true）已禁用，  0（false）未禁用',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员表';

/*Data for the table `ucenter_member` */

insert  into `ucenter_member`(`id`,`openid`,`mobile`,`password`,`nickname`,`sex`,`age`,`avatar`,`sign`,`is_disabled`,`is_deleted`,`gmt_create`,`gmt_modified`) values ('1614258535184666626','o3_SC5wXFE8EGmdDUW2Xm9P_e1Fs','',NULL,'A鹏',NULL,NULL,'https://thirdwx.qlogo.cn/mmopen/vi_32/UaquZpiaK8ia3U6m7ia8qz42CkXPKuIqGjgCHS8IrbKs3QhY7e3sMAwqCp6wJo0ZmFPicdVQnayicn5ffaJFick4b8pg/132',NULL,0,0,'2023-01-14 21:50:01','2023-01-14 21:50:01'),('1614500009268715521',NULL,'13007588701','ac801f62f19b8b81a50dd4854d8ae3a2','peng',NULL,NULL,'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/avatar/default.jpg',NULL,0,0,'2023-01-14 21:50:01','2023-01-15 13:49:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
