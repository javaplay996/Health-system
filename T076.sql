/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t076`;
CREATE DATABASE IF NOT EXISTS `t076` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t076`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619232381255 DEFAULT CHARSET=utf8mb3 COMMENT='在线咨询';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(91, '2021-04-24 02:42:05', 1, 1, '提问1', '回复1', 1),
	(92, '2021-04-24 02:42:05', 2, 2, '提问2', '回复2', 2),
	(93, '2021-04-24 02:42:05', 3, 3, '提问3', '回复3', 3),
	(94, '2021-04-24 02:42:05', 4, 4, '提问4', '回复4', 4),
	(95, '2021-04-24 02:42:05', 5, 5, '提问5', '回复5', 5),
	(96, '2021-04-24 02:42:05', 6, 6, '提问6', '回复6', 6),
	(1619232313486, '2021-04-24 02:45:13', 1619232213697, NULL, '11111111111111', NULL, 0),
	(1619232381254, '2021-04-24 02:46:21', 1619232213697, 1, NULL, '222222222', NULL);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboots3cpm/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboots3cpm/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboots3cpm/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussjiankangshipin`;
CREATE TABLE IF NOT EXISTS `discussjiankangshipin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='健康视频评论表';

DELETE FROM `discussjiankangshipin`;
INSERT INTO `discussjiankangshipin` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(141, '2021-04-24 02:42:05', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(142, '2021-04-24 02:42:05', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(143, '2021-04-24 02:42:05', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(144, '2021-04-24 02:42:05', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(145, '2021-04-24 02:42:05', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(146, '2021-04-24 02:42:05', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='健康论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(101, '2021-04-24 02:42:05', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(102, '2021-04-24 02:42:05', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(103, '2021-04-24 02:42:05', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(104, '2021-04-24 02:42:05', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(105, '2021-04-24 02:42:05', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(106, '2021-04-24 02:42:05', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放');

DROP TABLE IF EXISTS `jiankangshipin`;
CREATE TABLE IF NOT EXISTS `jiankangshipin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) NOT NULL COMMENT '视频名称',
  `shipinleixing` varchar(200) NOT NULL COMMENT '视频类型',
  `shipinjianjie` longtext COMMENT '视频简介',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='健康视频';

DELETE FROM `jiankangshipin`;
INSERT INTO `jiankangshipin` (`id`, `addtime`, `shipinmingcheng`, `shipinleixing`, `shipinjianjie`, `shipin`, `tupian`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(21, '2021-04-24 02:42:05', '视频名称1', '视频类型1', '视频简介1', '', 'http://localhost:8080/springboots3cpm/upload/jiankangshipin_tupian1.jpg', 1, 1, '2024-02-09 08:25:42', 2),
	(22, '2021-04-24 02:42:05', '视频名称2', '视频类型2', '视频简介2', '', 'http://localhost:8080/springboots3cpm/upload/jiankangshipin_tupian2.jpg', 2, 2, '2024-02-09 08:38:13', 5),
	(23, '2021-04-24 02:42:05', '视频名称3', '视频类型3', '视频简介3', '', 'http://localhost:8080/springboots3cpm/upload/jiankangshipin_tupian3.jpg', 3, 3, '2021-04-24 10:42:05', 3),
	(24, '2021-04-24 02:42:05', '视频名称4', '视频类型4', '视频简介4', '', 'http://localhost:8080/springboots3cpm/upload/jiankangshipin_tupian4.jpg', 4, 4, '2021-04-24 10:42:05', 4),
	(25, '2021-04-24 02:42:05', '视频名称5', '视频类型5', '视频简介5', '', 'http://localhost:8080/springboots3cpm/upload/jiankangshipin_tupian5.jpg', 5, 5, '2021-04-24 10:42:05', 5),
	(26, '2021-04-24 02:42:05', '视频名称6', '视频类型6', '视频简介6', '', 'http://localhost:8080/springboots3cpm/upload/jiankangshipin_tupian6.jpg', 6, 6, '2021-04-24 10:42:05', 6);

DROP TABLE IF EXISTS `keshileixing`;
CREATE TABLE IF NOT EXISTS `keshileixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='科室类型';

DELETE FROM `keshileixing`;
INSERT INTO `keshileixing` (`id`, `addtime`, `keshileixing`) VALUES
	(41, '2021-04-24 02:42:05', '科室类型1'),
	(42, '2021-04-24 02:42:05', '科室类型2'),
	(43, '2021-04-24 02:42:05', '科室类型3'),
	(44, '2021-04-24 02:42:05', '科室类型4'),
	(45, '2021-04-24 02:42:05', '科室类型5'),
	(46, '2021-04-24 02:42:05', '科室类型6');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707439122410 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(131, '2021-04-24 02:42:05', 1, '用户名1', '留言内容1', '回复内容1'),
	(132, '2021-04-24 02:42:05', 2, '用户名2', '留言内容2', '回复内容2'),
	(133, '2021-04-24 02:42:05', 3, '用户名3', '留言内容3', '回复内容3'),
	(134, '2021-04-24 02:42:05', 4, '用户名4', '留言内容4', '回复内容4'),
	(135, '2021-04-24 02:42:05', 5, '用户名5', '留言内容5', '回复内容5'),
	(136, '2021-04-24 02:42:05', 6, '用户名6', '留言内容6', '回复内容6'),
	(1707439122409, '2024-02-09 00:38:41', 11, '用户1', '111', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='健康资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(121, '2021-04-24 02:42:05', '标题1', '简介1', 'http://localhost:8080/springboots3cpm/upload/news_picture1.jpg', '内容1'),
	(122, '2021-04-24 02:42:05', '标题2', '简介2', 'http://localhost:8080/springboots3cpm/upload/news_picture2.jpg', '内容2'),
	(123, '2021-04-24 02:42:05', '标题3', '简介3', 'http://localhost:8080/springboots3cpm/upload/news_picture3.jpg', '内容3'),
	(124, '2021-04-24 02:42:05', '标题4', '简介4', 'http://localhost:8080/springboots3cpm/upload/news_picture4.jpg', '内容4'),
	(125, '2021-04-24 02:42:05', '标题5', '简介5', 'http://localhost:8080/springboots3cpm/upload/news_picture5.jpg', '内容5'),
	(126, '2021-04-24 02:42:05', '标题6', '简介6', 'http://localhost:8080/springboots3cpm/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `shipinleixing`;
CREATE TABLE IF NOT EXISTS `shipinleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinleixing` varchar(200) DEFAULT NULL COMMENT '视频类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='视频类型';

DELETE FROM `shipinleixing`;
INSERT INTO `shipinleixing` (`id`, `addtime`, `shipinleixing`) VALUES
	(31, '2021-04-24 02:42:05', '视频类型1'),
	(32, '2021-04-24 02:42:05', '视频类型2'),
	(33, '2021-04-24 02:42:05', '视频类型3'),
	(34, '2021-04-24 02:42:05', '视频类型4'),
	(35, '2021-04-24 02:42:05', '视频类型5'),
	(36, '2021-04-24 02:42:05', '视频类型6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707439092028 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1707439092027, '2024-02-09 00:38:11', 11, 22, 'jiankangshipin', '视频名称2', 'http://localhost:8080/springboots3cpm/upload/jiankangshipin_tupian2.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1619232213697, '1', 'yonghu', '用户', 'q3ee39hy8ewqxuxr4a0r1lo62z0fxhxz', '2021-04-24 02:43:50', '2021-04-24 03:46:44'),
	(2, 1, 'abo', 'users', '管理员', 'cfrlrk8vc5b5jiubbfm1mm98lovu0ol7', '2021-04-24 02:45:37', '2024-02-09 01:36:50'),
	(3, 11, '用户1', 'yonghu', '用户', '0za6mx6dtq1kev83bh9eyu84ad603gb1', '2024-02-09 00:25:22', '2024-02-09 01:25:22');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-24 02:42:05');

DROP TABLE IF EXISTS `yaopinleixing`;
CREATE TABLE IF NOT EXISTS `yaopinleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='药品类型';

DELETE FROM `yaopinleixing`;
INSERT INTO `yaopinleixing` (`id`, `addtime`, `yaopinleixing`) VALUES
	(71, '2021-04-24 02:42:05', '药品类型1'),
	(72, '2021-04-24 02:42:05', '药品类型2'),
	(73, '2021-04-24 02:42:05', '药品类型3'),
	(74, '2021-04-24 02:42:05', '药品类型4'),
	(75, '2021-04-24 02:42:05', '药品类型5'),
	(76, '2021-04-24 02:42:05', '药品类型6');

DROP TABLE IF EXISTS `yaopinliebiao`;
CREATE TABLE IF NOT EXISTS `yaopinliebiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  `yaopinjianjie` longtext COMMENT '药品简介',
  `shiyongzhengzhuang` longtext COMMENT '适用症状',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='药品列表';

DELETE FROM `yaopinliebiao`;
INSERT INTO `yaopinliebiao` (`id`, `addtime`, `yaopinmingcheng`, `yaopinleixing`, `yaopinjianjie`, `shiyongzhengzhuang`, `jiage`, `tupian`, `ispay`) VALUES
	(81, '2021-04-24 02:42:05', '药品名称1', '药品类型1', '药品简介1', '适用症状1', '价格1', 'http://localhost:8080/springboots3cpm/upload/yaopinliebiao_tupian1.jpg', '未支付'),
	(82, '2021-04-24 02:42:05', '药品名称2', '药品类型2', '药品简介2', '适用症状2', '价格2', 'http://localhost:8080/springboots3cpm/upload/yaopinliebiao_tupian2.jpg', '未支付'),
	(83, '2021-04-24 02:42:05', '药品名称3', '药品类型3', '药品简介3', '适用症状3', '价格3', 'http://localhost:8080/springboots3cpm/upload/yaopinliebiao_tupian3.jpg', '未支付'),
	(84, '2021-04-24 02:42:05', '药品名称4', '药品类型4', '药品简介4', '适用症状4', '价格4', 'http://localhost:8080/springboots3cpm/upload/yaopinliebiao_tupian4.jpg', '未支付'),
	(85, '2021-04-24 02:42:05', '药品名称5', '药品类型5', '药品简介5', '适用症状5', '价格5', 'http://localhost:8080/springboots3cpm/upload/yaopinliebiao_tupian5.jpg', '未支付'),
	(86, '2021-04-24 02:42:05', '药品名称6', '药品类型6', '药品简介6', '适用症状6', '价格6', 'http://localhost:8080/springboots3cpm/upload/yaopinliebiao_tupian6.jpg', '未支付');

DROP TABLE IF EXISTS `yishengxinxi`;
CREATE TABLE IF NOT EXISTS `yishengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yishengjianjie` longtext COMMENT '医生简介',
  `chuzhenshijiancong` datetime DEFAULT NULL COMMENT '出诊时间从',
  `dao` datetime DEFAULT NULL COMMENT '到',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='医生信息';

DELETE FROM `yishengxinxi`;
INSERT INTO `yishengxinxi` (`id`, `addtime`, `yishengxingming`, `yiyuanmingcheng`, `yishengjianjie`, `chuzhenshijiancong`, `dao`, `keshileixing`, `tupian`, `clicktime`, `clicknum`) VALUES
	(51, '2021-04-24 02:42:05', '医生姓名1', '医院名称1', '医生简介1', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '科室类型1', 'http://localhost:8080/springboots3cpm/upload/yishengxinxi_tupian1.jpg', '2024-02-09 08:37:19', 2),
	(52, '2021-04-24 02:42:05', '医生姓名2', '医院名称2', '医生简介2', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '科室类型2', 'http://localhost:8080/springboots3cpm/upload/yishengxinxi_tupian2.jpg', '2024-02-09 08:25:23', 4),
	(53, '2021-04-24 02:42:05', '医生姓名3', '医院名称3', '医生简介3', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '科室类型3', 'http://localhost:8080/springboots3cpm/upload/yishengxinxi_tupian3.jpg', '2021-04-24 10:42:05', 3),
	(54, '2021-04-24 02:42:05', '医生姓名4', '医院名称4', '医生简介4', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '科室类型4', 'http://localhost:8080/springboots3cpm/upload/yishengxinxi_tupian4.jpg', '2021-04-24 10:42:05', 4),
	(55, '2021-04-24 02:42:05', '医生姓名5', '医院名称5', '医生简介5', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '科室类型5', 'http://localhost:8080/springboots3cpm/upload/yishengxinxi_tupian5.jpg', '2021-04-24 10:42:05', 5),
	(56, '2021-04-24 02:42:05', '医生姓名6', '医院名称6', '医生简介6', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '科室类型6', 'http://localhost:8080/springboots3cpm/upload/yishengxinxi_tupian6.jpg', '2021-04-24 10:42:05', 6);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619232213698 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `touxiang`) VALUES
	(11, '2021-04-24 02:42:05', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springboots3cpm/upload/yonghu_touxiang1.jpg'),
	(12, '2021-04-24 02:42:05', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springboots3cpm/upload/yonghu_touxiang2.jpg'),
	(13, '2021-04-24 02:42:05', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springboots3cpm/upload/yonghu_touxiang3.jpg'),
	(14, '2021-04-24 02:42:05', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springboots3cpm/upload/yonghu_touxiang4.jpg'),
	(15, '2021-04-24 02:42:05', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springboots3cpm/upload/yonghu_touxiang5.jpg'),
	(16, '2021-04-24 02:42:05', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springboots3cpm/upload/yonghu_touxiang6.jpg'),
	(1619232213697, '2021-04-24 02:43:33', '1', '1', '1', NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `zaixianyuyue`;
CREATE TABLE IF NOT EXISTS `zaixianyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `keshileixing` varchar(200) NOT NULL COMMENT '科室类型',
  `chuzhenshijiancong` datetime NOT NULL COMMENT '出诊时间从',
  `dao` datetime NOT NULL COMMENT '到',
  `yishengjianjie` longtext COMMENT '医生简介',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='在线预约';

DELETE FROM `zaixianyuyue`;
INSERT INTO `zaixianyuyue` (`id`, `addtime`, `zhanghao`, `xingming`, `yishengxingming`, `yiyuanmingcheng`, `keshileixing`, `chuzhenshijiancong`, `dao`, `yishengjianjie`, `tupian`, `yuyueshijian`, `clicknum`) VALUES
	(61, '2021-04-24 02:42:05', '账号1', '姓名1', '医生姓名1', '医院名称1', '科室类型1', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '医生简介1', 'http://localhost:8080/springboots3cpm/upload/zaixianyuyue_tupian1.jpg', '2021-04-24 10:42:05', 2),
	(62, '2021-04-24 02:42:05', '账号2', '姓名2', '医生姓名2', '医院名称2', '科室类型2', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '医生简介2', 'http://localhost:8080/springboots3cpm/upload/zaixianyuyue_tupian2.jpg', '2021-04-24 10:42:05', 2),
	(63, '2021-04-24 02:42:05', '账号3', '姓名3', '医生姓名3', '医院名称3', '科室类型3', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '医生简介3', 'http://localhost:8080/springboots3cpm/upload/zaixianyuyue_tupian3.jpg', '2021-04-24 10:42:05', 3),
	(64, '2021-04-24 02:42:05', '账号4', '姓名4', '医生姓名4', '医院名称4', '科室类型4', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '医生简介4', 'http://localhost:8080/springboots3cpm/upload/zaixianyuyue_tupian4.jpg', '2021-04-24 10:42:05', 4),
	(65, '2021-04-24 02:42:05', '账号5', '姓名5', '医生姓名5', '医院名称5', '科室类型5', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '医生简介5', 'http://localhost:8080/springboots3cpm/upload/zaixianyuyue_tupian5.jpg', '2021-04-24 10:42:05', 5),
	(66, '2021-04-24 02:42:05', '账号6', '姓名6', '医生姓名6', '医院名称6', '科室类型6', '2021-04-24 10:42:05', '2021-04-24 10:42:05', '医生简介6', 'http://localhost:8080/springboots3cpm/upload/zaixianyuyue_tupian6.jpg', '2021-04-24 10:42:05', 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
