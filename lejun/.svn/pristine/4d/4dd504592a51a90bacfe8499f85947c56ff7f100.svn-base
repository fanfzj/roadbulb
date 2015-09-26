# Host: localhost  (Version: 5.5.34)
# Date: 2014-01-14 16:59:02
# Generator: MySQL-Front 5.3  (Build 4.43)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "achievement_name"
#

CREATE TABLE `achievement_name` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `achievement` varchar(255) NOT NULL DEFAULT '' COMMENT '成就',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='成就表';

#
# Data for table "achievement_name"
#


#
# Structure for table "authority_name"
#

CREATE TABLE `authority_name` (
  `authority_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `authority_name` varchar(255) NOT NULL DEFAULT '' COMMENT '权限名',
  PRIMARY KEY (`authority_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='权限表';

#
# Data for table "authority_name"
#

INSERT INTO `authority_name` VALUES (1,'普通用户'),(2,'会员'),(3,'管理员');

#
# Structure for table "cheats_repaly"
#

CREATE TABLE `cheats_repaly` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `repaly_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '回帖人id',
  `content` longtext NOT NULL COMMENT '回帖内容',
  `post_id` int(11) NOT NULL DEFAULT '0' COMMENT '贴id',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='游戏秘籍回复表';

#
# Data for table "cheats_repaly"
#


#
# Structure for table "db_game"
#

CREATE TABLE `db_game` (
  `gane_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(100) NOT NULL DEFAULT '' COMMENT '游戏名字',
  `company` varchar(255) NOT NULL DEFAULT '' COMMENT '游戏公司',
  `time_to_market` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发布时间',
  `recent_activity` longtext COMMENT '近期活动',
  `update_information` longtext NOT NULL COMMENT '更新信息',
  `list_id` int(11) NOT NULL DEFAULT '0' COMMENT '大类id',
  `list_small_id` int(11) NOT NULL DEFAULT '0' COMMENT '小类id',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  PRIMARY KEY (`gane_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='游戏表';

#
# Data for table "db_game"
#


#
# Structure for table "db_list"
#

CREATE TABLE `db_list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '大类名字id',
  `list_name` varchar(100) NOT NULL DEFAULT '' COMMENT '大类类名',
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='游戏大类表';

#
# Data for table "db_list"
#

INSERT INTO `db_list` VALUES (1,'单机游戏'),(2,'手机游戏'),(3,'网络游戏'),(4,'电子游戏'),(5,'其他');

#
# Structure for table "db_list_small"
#

CREATE TABLE `db_list_small` (
  `list_small_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_small_name` varchar(100) NOT NULL DEFAULT '' COMMENT '小类类名',
  PRIMARY KEY (`list_small_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='游戏小类表';

#
# Data for table "db_list_small"
#

INSERT INTO `db_list_small` VALUES (1,'射击飞行'),(2,'角色扮演'),(3,'休闲益智'),(4,'即时战略'),(5,'动作格斗'),(6,'体育竞速'),(7,'DOTA'),(8,'其他');

#
# Structure for table "game_cheats"
#

CREATE TABLE `game_cheats` (
  `cheats_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` varchar(255) NOT NULL DEFAULT '' COMMENT '游戏id',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `content` longtext NOT NULL COMMENT '内容',
  `datetime` datetime DEFAULT NULL COMMENT '上传时间',
  `clicks` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `praise` int(11) NOT NULL DEFAULT '0' COMMENT '点赞量',
  PRIMARY KEY (`cheats_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='游戏秘籍表';

#
# Data for table "game_cheats"
#


#
# Structure for table "grade_name"
#

CREATE TABLE `grade_name` (
  `garde_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '等级编号',
  `garde_name` varchar(255) DEFAULT NULL COMMENT '等级名字',
  PRIMARY KEY (`garde_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='等级称号表';

#
# Data for table "grade_name"
#

INSERT INTO `grade_name` VALUES (1,'新兵'),(2,'士兵'),(3,'弓兵'),(4,'重甲'),(5,'骑兵'),(6,'将领'),(7,'统帅'),(8,'男爵'),(9,'子爵'),(10,'伯爵'),(11,'侯爵'),(12,'公爵'),(13,'亲王'),(14,'王储'),(15,'国王');

#
# Structure for table "information_user"
#

CREATE TABLE `information_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(12) NOT NULL DEFAULT '' COMMENT '用户名',
  `information` longtext NOT NULL COMMENT '信息',
  `read_tf` varchar(1) DEFAULT 'f' COMMENT '是否阅读',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统发布信息表';

#
# Data for table "information_user"
#


#
# Structure for table "post_main"
#

CREATE TABLE `post_main` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '贴id',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '发帖人id',
  `datetime` date DEFAULT NULL COMMENT '发帖时间',
  `clicks` int(11) DEFAULT '0' COMMENT '点击量',
  `praise_number` int(11) DEFAULT '0' COMMENT '点赞数',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帖子表';

#
# Data for table "post_main"
#


#
# Structure for table "post_repaly"
#

CREATE TABLE `post_repaly` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `repaly_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '回帖人id',
  `content` longtext NOT NULL COMMENT '回帖内容',
  `post_id` int(11) NOT NULL DEFAULT '0' COMMENT '贴id',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='回帖表';

#
# Data for table "post_repaly"
#


#
# Structure for table "user_information"
#

CREATE TABLE `user_information` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(12) NOT NULL DEFAULT '' COMMENT '用户名',
  `photo` blob COMMENT '头像',
  `nickname` varchar(15) NOT NULL DEFAULT '' COMMENT '昵称',
  `sex` varchar(2) NOT NULL DEFAULT '' COMMENT '性别',
  `age` int(11) DEFAULT '0' COMMENT '年龄',
  `birthday` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '出生年月',
  `nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `ID_number` varchar(19) DEFAULT NULL COMMENT '身份证号',
  `e-mail` varchar(50) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `qq` varchar(12) DEFAULT NULL COMMENT 'QQ',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `signature` text COMMENT '个人签名',
  `integration` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `grade_id` int(11) NOT NULL DEFAULT '1' COMMENT '等级编号',
  `achievement` varchar(255) DEFAULT NULL COMMENT '成就（以*分割）',
  `IP` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `zhuce_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户信息表';

#
# Data for table "user_information"
#


#
# Structure for table "user_logn"
#

CREATE TABLE `user_logn` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(12) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '加密密码',
  `truepass` varchar(16) NOT NULL DEFAULT '' COMMENT '真实密码',
  `authority_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户登录表';

#
# Data for table "user_logn"
#

INSERT INTO `user_logn` VALUES (1,'test','123456','123456',3);

#
# Structure for table "word_antistop"
#

CREATE TABLE `word_antistop` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `antistop_name` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关键词表';

#
# Data for table "word_antistop"
#


#
# Structure for table "word_sensitive_word"
#

CREATE TABLE `word_sensitive_word` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sensitive word` varchar(255) NOT NULL DEFAULT '' COMMENT '敏感词',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='敏感词表';

#
# Data for table "word_sensitive_word"
#

INSERT INTO `word_sensitive_word` VALUES (1,'你妈');
