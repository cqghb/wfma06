/*
SQLyog Ultimate v8.32 
MySQL - 5.5.20 : Database - wfma
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wfma` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wfma`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `courseid` int(255) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `coursename` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `courseimg` varchar(100) DEFAULT NULL COMMENT '课程图片',
  `courseexplain` text COMMENT '课程说明',
  `coursedirectory` text COMMENT '课程安排',
  `coursestate` varchar(20) DEFAULT '非轮播' COMMENT '课程状态[轮播 非轮播]',
  `courseurl` varchar(100) DEFAULT '#' COMMENT '课程链接地址',
  `coursetypeid` int(255) NOT NULL COMMENT '课程类别编号',
  PRIMARY KEY (`courseid`),
  KEY `FK_course` (`coursetypeid`),
  CONSTRAINT `FK_course` FOREIGN KEY (`coursetypeid`) REFERENCES `coursetype` (`coursetypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`courseid`,`coursename`,`courseimg`,`courseexplain`,`coursedirectory`,`coursestate`,`courseurl`,`coursetypeid`) values (1,'双节棍','images/course/a.jpg','这是课程说明1','这是课程目录','轮播','#',1),(2,'双节棍','images/course/b.jpg','这是课程说明2','这是课程目录','轮播','#',2);

/*Table structure for table `coursetype` */

DROP TABLE IF EXISTS `coursetype`;

CREATE TABLE `coursetype` (
  `coursetypeid` int(255) NOT NULL AUTO_INCREMENT COMMENT '课程类别编号',
  `coursetypename` varchar(50) DEFAULT NULL COMMENT '课程类别名称',
  PRIMARY KEY (`coursetypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `coursetype` */

insert  into `coursetype`(`coursetypeid`,`coursetypename`) values (1,'跆拳道'),(2,'双节棍'),(3,'刀法'),(4,'腿法'),(5,'棍法');

/*Table structure for table `dynamic` */

DROP TABLE IF EXISTS `dynamic`;

CREATE TABLE `dynamic` (
  `dyid` int(255) NOT NULL AUTO_INCREMENT COMMENT '新闻编号',
  `dyname` varchar(100) DEFAULT NULL COMMENT '新闻标题',
  `dyimgurl` varchar(100) DEFAULT NULL COMMENT '新闻图片',
  `dydetails` text COMMENT '新闻内容',
  `dytime` datetime DEFAULT NULL COMMENT '发稿时间',
  PRIMARY KEY (`dyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `dynamic` */

insert  into `dynamic`(`dyid`,`dyname`,`dyimgurl`,`dydetails`,`dytime`) values (1,'这是新闻标题','配图地址','这是新闻内容','2016-10-22 00:00:00'),(2,'这是新闻标题2','配图地址2','这是新闻内容2','2016-09-19 00:00:00'),(3,'这是新闻标题3','配图地址3','这是新闻内容3','2016-10-01 00:00:00');

/*Table structure for table `logo` */

DROP TABLE IF EXISTS `logo`;

CREATE TABLE `logo` (
  `logoid` int(255) NOT NULL AUTO_INCREMENT COMMENT 'logo编号',
  `logoname` varchar(50) DEFAULT NULL COMMENT '名称',
  `logourl` varchar(100) DEFAULT '#' COMMENT '图片地址',
  `logotarget` varchar(100) DEFAULT '#' COMMENT '链接地址',
  `logostate` varchar(10) DEFAULT '启用' COMMENT '状态[启用|弃用]',
  `naid` int(255) NOT NULL COMMENT '导航编号',
  PRIMARY KEY (`logoid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `logo` */

insert  into `logo`(`logoid`,`logoname`,`logourl`,`logotarget`,`logostate`,`naid`) values (1,'logo1','images/logo.jpg','#','启用',1),(2,'logo2','images/logo.jpg','#','弃用',2),(3,'logo3','images/logo.jpg','#','弃用',3),(4,'logo4','images/logo.jpg','#','弃用',4),(5,'logo5','images/logo.jpg','#','弃用',5),(6,'logo6','images/logo.jpg','#','弃用',6),(7,'7','#','#','启用',7);

/*Table structure for table `navigation` */

DROP TABLE IF EXISTS `navigation`;

CREATE TABLE `navigation` (
  `naid` int(255) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `naname` varchar(50) DEFAULT NULL COMMENT '名称',
  `naurl` varchar(100) DEFAULT '#' COMMENT '链接地址',
  `nastate` varchar(20) NOT NULL DEFAULT '启用' COMMENT '是否启用 [启用|弃用]',
  `pid` int(255) DEFAULT NULL COMMENT '父节点编号',
  PRIMARY KEY (`naid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `navigation` */

insert  into `navigation`(`naid`,`naname`,`naurl`,`nastate`,`pid`) values (1,'首页','navigation.action','启用',0),(2,'走进万府','wfinformation/zjwf.action','启用',0),(3,'万府动态','wfDynamic/wfdt.action?actionName=wfDynamic/newList.action','启用',0),(4,'课程','course/kc.action?actionName=course/kc.action','启用',0),(5,'教练','user/jl.action?actionName=user/jl.action','启用',0),(6,'联系我们','user/loginAction.action','启用',0),(10,'1','1','启用',1);

/*Table structure for table `photo` */

DROP TABLE IF EXISTS `photo`;

CREATE TABLE `photo` (
  `photoid` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户图片编号',
  `photourl` varchar(100) DEFAULT NULL COMMENT '图片地址',
  `phototype` varchar(20) DEFAULT '头像' COMMENT '图片说明{头像|非头像}',
  `id` int(255) DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY (`photoid`),
  KEY `FK_photo` (`id`),
  CONSTRAINT `FK_photo` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `photo` */

insert  into `photo`(`photoid`,`photourl`,`phototype`,`id`) values (1,'images/photo/ply_a.jpg','头像',NULL),(2,'images/photo/ply_b.jpg','非头像',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `age` int(50) DEFAULT NULL COMMENT '年龄',
  `brithday` date DEFAULT NULL COMMENT '出生日期',
  `address` varchar(100) DEFAULT NULL COMMENT '住址',
  `tell` varchar(20) DEFAULT NULL COMMENT '电话',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq',
  `email` varchar(20) DEFAULT '@qq.com' COMMENT '邮箱',
  `type` varchar(10) DEFAULT '学员' COMMENT '用户类别[管理员|教练|学员]',
  `briefintroduction` text COMMENT '个人简介',
  `head` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`nickname`,`password`,`name`,`sex`,`age`,`brithday`,`address`,`tell`,`qq`,`email`,`type`,`briefintroduction`,`head`) values (1,'蒲兰杨的昵称','111111','蒲兰杨','男',25,'1991-06-20','四川省达州市万源市罗文镇','18781990207','495486417','495486417@qq.com','管理员','万府武术CEO，创始人，教练，获得过多项国家级认证。','images/head/plytouxiang.jpeg'),(2,'王胜的昵称','222222','王胜','男',24,'1992-03-03','四川省达州市万源市曾家乡覃家坝村11社','13564823248','1689841661','1689841661@qq.com','管理员','这是个人简介','images/head/gly.jpg'),(3,'小张的昵称','333333','张杰','女',10,'2006-02-02','四川省成都市双流区','22222222222','222222222','222222222@qq.com','学员','这是个人简介','images/head/xueyuannv.jpg'),(4,'小李的昵称','123456','小李','男',22,'1996-01-01','上海市','1212121212121','1111111111','1111111111@qq.com','教练','这是小李的个人简介，\r\n这是小李的个人简介，\r\n这是小李的个人简介，\r\n这是小李的个人简介！','images/head/commonTimg.jpg'),(5,'小高的昵称','123456','小高','男',22,'1996-02-02','江苏','1212121212121','1111111111','1111111111@qq.com','教练','这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，这是小高的个人简介，！','images/head/commonTimg.jpg'),(6,'小明的昵称','123456','小明','男',15,'2007-01-01','四川','121212121212','1212121212','1212121212@qq.com','学员','这是小明的个人简介，这是小明的个人简介，这是小明的个人简介，这是小明的个人简介，这是小明的个人简介！','images/head/xueyuannan.jpg');

/*Table structure for table `wfinformation` */

DROP TABLE IF EXISTS `wfinformation`;

CREATE TABLE `wfinformation` (
  `wfid` int(255) NOT NULL AUTO_INCREMENT COMMENT '万府信息编号',
  `wfimgurl` varchar(100) DEFAULT NULL COMMENT '信息图片',
  `wfexplain` text COMMENT '文字说明',
  `wfstate` varchar(10) DEFAULT '不显示' COMMENT '是否显示在首页[显示|不显示]',
  PRIMARY KEY (`wfid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `wfinformation` */

insert  into `wfinformation`(`wfid`,`wfimgurl`,`wfexplain`,`wfstate`) values (1,'images/wfinformation/certificate.jpg','万府武术是经体委，武协批准的一所武术、散打、硬气功训练基地。专业的散打、气功等教练专项任教。短时间练出好的功夫，打出优秀水平，培训内容如下： \r\n 一、特警散打班：主要学习军警擒拿格斗、一招致敌，拳击、散打、自由搏击、女子防身术、空手夺兵器、各种进攻拳法、腿法、防守反击及快摔法。\r\n 二、女子防身班：该班吸取各门派及特警搏击的优点，融合踢打擒拿之精华、全开放、无限制的全接触、专练一拳一腿打击歹徒要害，一招制敌、及夜战、巷战等特警必学的搏杀、练出超强的斗志、激发人体实战的本能，练出面对持刀歹徒时的霸道气势。\r\n 三、泰拳自由搏击班：世界上号称八条腿的泰拳、简捷、实战、凌厉无比的拳腿肘膝运动，如上碰膝、侧碰膝、前顶膝、单跳膝、单飞膝、腾空飞膝、腾空侧碰、双飞膝、腾空下砸横扫肘等，以灵活多变的自由式搏击合理结合训练、高效实用、练成台上台下真正的泰拳搏击实战高手，\r\n 四、硬气功班：（分低档功、中档功、高档功）全身抗棒、掌劈砖、头断砖、、铁砂掌、铁头功、金刚指。\r\n 五、二节棍班：学习二节棍法，步法、主动攻击、防守反击，单人对多人拿兵器实战对抗及多种套路等。\r\n 六、少林传统武术班：主要学习少林寺各种拳法，自选套路，少林十八般兵器，各种腿法.步法.空翻等\r\n 七、一对一私教班：综合学习以上一至七班的主要内容：主要传授硬气功、自由式散打、搏击、泰拳、擒拿及反擒拿、各种快摔法、街头搏击、空手夺各种兵器、跟踪、保护单人对付多人等格斗技击之精华。采用军事化、科学化、超强度的特殊训练，教学内容以军警实战技击为主，有特强的实用性。\r\n万府武术教育训练基地特为在校学生开设了假期短训班：主要学习散打、擒拿格斗、武术基本功、拳法、腿法、套路、拳术等 地址：四川省成都市双流区东升镇棠湖南路二段131号附2　　　　　\r\n　 总教练：<h1 style=\"color:red;\">蒲 兰杨</h1>\r\n','显示'),(2,'images/wfinformation/certificate2.jpg','武术国际教练员一级证书2','不显示');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
