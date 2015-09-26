-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 02 月 18 日 21:43
-- 服务器版本: 5.5.35
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `lejun`
--

-- --------------------------------------------------------

--
-- 表的结构 `Images`
--

CREATE TABLE IF NOT EXISTS `Images` (
  `PicNum` int(11) NOT NULL AUTO_INCREMENT,
  `Image` blob,
  PRIMARY KEY (`PicNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `Images`
--


-- --------------------------------------------------------

--
-- 表的结构 `li_advertisement_grade`
--

CREATE TABLE IF NOT EXISTS `li_advertisement_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `explain` varchar(255) NOT NULL DEFAULT '' COMMENT '等级说明',
  `day` int(11) DEFAULT '1' COMMENT '展播时间(按天)',
  `adpositionid` varchar(255) DEFAULT NULL COMMENT '广告位',
  `comment` varchar(255) DEFAULT '无' COMMENT '备注',
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  PRIMARY KEY (`grade_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='广告等级' AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `li_advertisement_grade`
--

INSERT INTO `li_advertisement_grade` (`grade_id`, `explain`, `day`, `adpositionid`, `comment`, `money`) VALUES
(1, '首页图片轮番广播，时间30天', 30, '首页图片轮番广播', '无', 10),
(2, '首页图片轮番广播，时间90天', 90, '首页图片轮番广播', '无', 20),
(3, '首页图片轮番广播，时间180天', 180, '首页图片轮番广播', '无', 30),
(4, '首页图片轮番广播，时间365天', 365, '首页图片轮番广播', '无', 50),
(5, '首页上发文字广告位，30天', 30, '首页上发文字广告位', '无', 20),
(6, '首页上发文字广告位，90天', 90, '首页上发文字广告位', '无', 30),
(7, '首页上发文字广告位，180天', 180, '首页上发文字广告位', '无', 50),
(8, '首页上发文字广告位，3650天', 365, '首页上发文字广告位', '无', 90),
(9, '首页中部格子广告，30天', 30, '首页中部格子广告', '无', 5),
(10, '首页中部格子广告，90天', 90, '首页中部格子广告', '无', 10),
(11, '首页中部格子广告，180天', 180, '首页中部格子广告', '无', 20),
(12, '首页中部格子广告，365天', 365, '首页中部格子广告', '无', 40),
(13, '首页对联广告，30天', 30, '首页对联广告', '无', 15),
(14, '首页对联广告，90天', 90, '首页对联广告', '无', 25),
(15, '首页对联广告，180天', 180, '首页对联广告', '无', 45),
(16, '首页对联广告，365天', 365, '首页对联广告', '无', 85);

-- --------------------------------------------------------

--
-- 表的结构 `lj_achievement_name`
--

CREATE TABLE IF NOT EXISTS `lj_achievement_name` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `achievement` varchar(255) NOT NULL DEFAULT '' COMMENT '成就',
  `post_number` int(11) NOT NULL DEFAULT '0' COMMENT '贴的数量',
  `cheats_number` int(11) NOT NULL DEFAULT '0' COMMENT '攻略数量',
  `replay_number` int(11) NOT NULL DEFAULT '0' COMMENT '回复数量',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='成就表' AUTO_INCREMENT=11 ;

--
-- 导出表中的数据 `lj_achievement_name`
--

INSERT INTO `lj_achievement_name` (`Id`, `achievement`, `post_number`, `cheats_number`, `replay_number`) VALUES
(1, '发帖新手', 10, 0, 0),
(2, '发帖老手', 50, 0, 0),
(3, '发帖至尊', 100, 0, 0),
(4, '攻略菜鸟', 0, 10, 0),
(5, '攻略高手', 1, 50, 0),
(6, '攻略大神', 0, 100, 0),
(7, '回复新人', 0, 0, 10),
(8, '回复常客', 0, 0, 50),
(9, '回复老人', 0, 0, 100),
(10, '发帖神人', 200, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lj_admin`
--

CREATE TABLE IF NOT EXISTS `lj_admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用戶名',
  `password` varchar(255) DEFAULT NULL COMMENT '密碼',
  `superpwd` varchar(255) DEFAULT NULL COMMENT '超級密碼',
  `qq` varchar(255) DEFAULT NULL COMMENT 'QQ',
  `e_mail` varchar(255) DEFAULT NULL COMMENT '郵箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '手機',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `ip` varchar(255) DEFAULT NULL COMMENT 'IP',
  `last_logn_time` datetime DEFAULT NULL COMMENT '上次登錄時間',
  `authority_id` int(11) DEFAULT '1' COMMENT '權限',
  `ip_address` varchar(255) DEFAULT NULL COMMENT 'ip所在城市',
  `truepwd` varchar(255) DEFAULT NULL COMMENT '真實密碼',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='管理員表' AUTO_INCREMENT=16 ;

--
-- 导出表中的数据 `lj_admin`
--

INSERT INTO `lj_admin` (`Id`, `username`, `password`, `superpwd`, `qq`, `e_mail`, `phone`, `name`, `ip`, `last_logn_time`, `authority_id`, `ip_address`, `truepwd`) VALUES
(1, 'fanfzj', 'ef67b20497a84d1ef307d7c4475fd741', 'you123123', '1009137312', '1009137312@qq.com', '18845299765', '范志俊', '101.228.84.79', '2014-02-18 13:25:00', 4, 'IP data file not exists or access denied', 'FanRan879'),
(13, 'lejun', 'cfcd208495d565ef66e7dff9f98764da', 'lejun2014', '2701305387', '2701305387@qq.com', '13391305387', '乐俊', '180.172.25.63', '2014-02-01 21:08:00', 3, '', 'lejun2014'),
(12, 'nele', '0bf658d28295de9a97766845b7151dbc', 'you123123', '1041094502', '1041094502@qq.com', '18845299765', '聶樂', '101.228.87.220', '2014-02-17 20:52:00', 4, 'IP data file not exists or access denied', 'apple19920716'),
(15, 'lejun1234', '9102f3aaf7b6ad6d7730e7274fa7d3ac', '123456', '1', '2', '3', '官方', '101.228.84.79', '2014-02-18 13:14:00', 3, 'IP Address Invalid', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `lj_advertisement`
--

CREATE TABLE IF NOT EXISTS `lj_advertisement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始展播时间',
  `end_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '结束展播时间',
  `chaining` varchar(255) DEFAULT '暂无' COMMENT '网站链接',
  `linkman_name` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `linkman_qq` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人qq',
  `linkman_e-mail` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人电子邮箱',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '显示状态（1为正常，0为停止）',
  `ad_category_id` int(11) DEFAULT '1' COMMENT '广告类别',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='广告表' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `lj_advertisement`
--

INSERT INTO `lj_advertisement` (`Id`, `title`, `start_time`, `end_time`, `chaining`, `linkman_name`, `linkman_qq`, `linkman_e-mail`, `sort`, `state`, `ad_category_id`) VALUES
(1, '乐俊游戏攻略论坛', '2014-01-15 00:00:00', '2100-12-31 00:00:00', '暂无', '聂乐', '1941973283', '1941973283@qq.com', 1000, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `lj_ad_category`
--

CREATE TABLE IF NOT EXISTS `lj_ad_category` (
  `ad_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_category` varchar(255) DEFAULT '其他' COMMENT '类别',
  PRIMARY KEY (`ad_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='广告类别' AUTO_INCREMENT=14 ;

--
-- 导出表中的数据 `lj_ad_category`
--

INSERT INTO `lj_ad_category` (`ad_category_id`, `ad_category`) VALUES
(1, '图书、音像、数字商品'),
(2, '家用电器'),
(3, '手机、数码'),
(4, '电脑、办公'),
(5, '厨具、家居、家装、家具'),
(6, '服饰内衣'),
(7, '鞋靴、箱包'),
(8, '钟表、珠宝'),
(9, '运动健康'),
(10, '汽车用品'),
(11, '母婴、玩具乐器'),
(12, '食品饮料、保健食品'),
(13, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `lj_agreement`
--

CREATE TABLE IF NOT EXISTS `lj_agreement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement` longtext NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `lj_agreement`
--

INSERT INTO `lj_agreement` (`Id`, `agreement`) VALUES
(1, '<h2>尊敬的客户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：</h2>\r\n\r\n<p>本服务协议双方为本网站与本网站客户，本服务协议具有合同效力。您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。 无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的&quot;注册&quot;按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。</p>\r\n\r\n<p><strong>协议细则</strong></p>\r\n\r\n<p>1、本网站服务条款的确认和接纳</p>\r\n\r\n<p>本网站各项服务的所有权和运作权归本网站拥有。</p>\r\n\r\n<p><strong>2、用户必须：</strong></p>\r\n\r\n<p>(1)自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。<br />\r\n(2)自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。</p>\r\n\r\n<p><strong>3、用户在本网站交易平台上不得发布下列违法信息：</strong></p>\r\n\r\n<p>(1)反对宪法所确定的基本原则的；<br />\r\n(2)危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br />\r\n(3)损害国家荣誉和利益的；<br />\r\n(4)煽动民族仇恨、民族歧视，破坏民族团结的；<br />\r\n(5)破坏国家宗教政策，宣扬邪教和封建迷信的；<br />\r\n(6)散布谣言，扰乱社会秩序，破坏社会稳定的；<br />\r\n(7)散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br />\r\n(8)侮辱或者诽谤他人，侵害他人合法权益的；<br />\r\n(9)含有法律、行政法规禁止的其他内容的。</p>\r\n\r\n<p><strong>4、有关个人资料</strong></p>\r\n\r\n<p>用户同意：</p>\r\n\r\n<p>(1) 提供及时、详尽及准确的个人资料。<br />\r\n(2).同意接收来自本网站的信息。<br />\r\n(3) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。</p>\r\n\r\n<p><strong>5、电子邮件</strong></p>\r\n\r\n<p>用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读本网站发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要本网站成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。</p>\r\n\r\n<p><strong>6、服务条款的修改</strong></p>\r\n\r\n<p>本网站有权在必要时修改服务条款，本网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。本网站保留随时修改或中断服务而不需通知用户的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。</p>\r\n\r\n<p><strong>7、用户的帐号、密码和安全性</strong></p>\r\n\r\n<p>你一旦注册成功成为用户，你将得到一个密码和帐号。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，请立即通知本网站。</p>\r\n\r\n<p><strong>8、拒绝提供担保</strong></p>\r\n\r\n<p>用户明确同意信息服务的使用由用户个人承担风险。本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</p>\r\n\r\n<p><strong>9、有限责任</strong></p>\r\n\r\n<p>本网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用本网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致本网站形象受损，所以本网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。</p>\r\n\r\n<p><strong>10、信息的储存及限制</strong></p>\r\n\r\n<p>本网站有判定用户的行为是否符合本网站服务条款的要求和精神的权利，如果用户违背本网站服务条款的规定，本网站有权中断其服务的帐号。</p>\r\n\r\n<p><strong>11、用户管理</strong></p>\r\n\r\n<p>用户必须遵循：</p>\r\n\r\n<p>(1) 使用信息服务不作非法用途。<br />\r\n(2) 不干扰或混乱网络服务。<br />\r\n(3) 遵守所有使用服务的网络协议、规定、程序和惯例。用户的行为准则是以因特网法规，政策、程序和惯例为根据的。</p>\r\n\r\n<p><strong>12、保障</strong></p>\r\n\r\n<p>用户同意保障和维护本网站全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。</p>\r\n\r\n<p><strong>13、结束服务</strong></p>\r\n\r\n<p>用户或本网站可随时根据实际情况中断一项或多项服务。本网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对本网站服务不满，用户可以行使如下权利：</p>\r\n\r\n<p>(1) 不再使用本网站信息服务。<br />\r\n(2) 通知本网站停止对该用户的服务。</p>\r\n\r\n<p>结束用户服务后，用户使用本网站服务的权利马上中止。从那时起，用户没有权利，本网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。</p>\r\n\r\n<p><strong>14、通告</strong></p>\r\n\r\n<p>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p>\r\n\r\n<p><strong>15、信息内容的所有权</strong></p>\r\n\r\n<p>本网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。</p>\r\n\r\n<p><strong>16、法律</strong></p>\r\n\r\n<p>本网站信息服务条款要与中华人民共和国的法律解释一致。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。</p>\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `lj_authority_name`
--

CREATE TABLE IF NOT EXISTS `lj_authority_name` (
  `authority_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `authority_name` varchar(255) NOT NULL DEFAULT '' COMMENT '权限名',
  PRIMARY KEY (`authority_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='权限表' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `lj_authority_name`
--

INSERT INTO `lj_authority_name` (`authority_id`, `authority_name`) VALUES
(1, '普通用户'),
(2, '会员'),
(3, '管理员'),
(4, '超级管理员');

-- --------------------------------------------------------

--
-- 表的结构 `lj_board`
--

CREATE TABLE IF NOT EXISTS `lj_board` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  `time` datetime NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 导出表中的数据 `lj_board`
--

INSERT INTO `lj_board` (`Id`, `info`, `time`, `theme`, `data`) VALUES
(1, '<h3>玩在乐俊，了在乐俊，我相信乐俊&mdash;&mdash;&mdash;&mdash;乐俊与你同在~</h3>\r\n', '2014-02-15 19:42:01', '乐俊开篇', '2014-02-15'),
(2, '<h3>上线前100名注册用户，会有意想不到的优惠哦~~想要吗？就赶快动动手指，注册吧~~</h3>\r\n', '2014-02-15 19:45:36', '乐俊上线优惠活动', '2014-02-15'),
(3, '<h3>等级：1 &nbsp;名称：新兵 升级积分：10</h3>\r\n\r\n<h3>等级：2 &nbsp;名称：士兵 升级积分：20</h3>\r\n\r\n<h3>等级：3 &nbsp;名称：弓兵&nbsp;升级积分：50</h3>\r\n\r\n<h3>等级：4 &nbsp;名称：重甲&nbsp;升级积分：100</h3>\r\n\r\n<h3>等级：5 &nbsp;名称：骑兵&nbsp;升级积分：200</h3>\r\n\r\n<h3>等级：6 &nbsp;名称：将领&nbsp;升级积分：500</h3>\r\n\r\n<h3>等级：7 &nbsp;名称：统帅&nbsp;升级积分：1000</h3>\r\n\r\n<h3>等级：8 &nbsp;名称：男爵&nbsp;升级积分：2000</h3>\r\n\r\n<h3>等级：9 &nbsp;名称：子爵&nbsp;升级积分：5000</h3>\r\n\r\n<h3>等级：10 &nbsp;名称：伯爵&nbsp;升级积分：10000</h3>\r\n\r\n<h3>等级：11 &nbsp;名称：侯爵&nbsp;升级积分：20000</h3>\r\n\r\n<h3>等级：12 &nbsp;名称：公爵&nbsp;升级积分：50000</h3>\r\n\r\n<h3>等级：13 &nbsp;名称：亲王&nbsp;升级积分：100000</h3>\r\n\r\n<h3>等级：14 &nbsp;名称：王储&nbsp;升级积分：200000</h3>\r\n\r\n<h3>等级：15 &nbsp;名称：国王&nbsp;升级积分：500000</h3>\r\n\r\n<h3>等级：16 &nbsp;名称：界主&nbsp;升级积分：1000000</h3>\r\n\r\n<h3>（未完待续，我们会不断更新的哦）</h3>\r\n', '2014-02-15 22:52:19', '乐俊游戏攻略网 等级详解 ', '2014-02-15'),
(4, '<p>名称:发帖新手 &nbsp;发帖数量：10 &nbsp; &nbsp; 名称:发帖老手 &nbsp;发帖数量：50 &nbsp; &nbsp;&nbsp;名称:发帖至尊&nbsp; 发帖数量：100</p>\r\n\r\n<p>名称:发帖神人&nbsp; 发帖数量：200 &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>名称:攻略菜鸟 &nbsp;攻略数量：10 &nbsp; &nbsp; 名称:攻略高手 &nbsp;攻略数量：50 &nbsp; &nbsp;&nbsp;名称:攻略大神 &nbsp;攻略数量：100</p>\r\n\r\n<p>名称:回复新人 &nbsp;回复数量：10 &nbsp; &nbsp;&nbsp;名称:回复常客 &nbsp;回复数量：50 &nbsp; &nbsp;&nbsp;名称:回复老人 &nbsp;回复数量：100</p>\r\n\r\n<p>（未完待续，我们会不断更新的哦）</p>\r\n', '2014-02-16 12:59:01', '乐俊游戏攻略网 成就详解 ', '2014-02-16'),
(5, '<h3>发帖，获得一个积分~~</h3>\r\n', '2014-02-15 23:27:16', '乐俊游戏攻略网 积分获取详解', '2014-02-15');

-- --------------------------------------------------------

--
-- 表的结构 `lj_cheats`
--

CREATE TABLE IF NOT EXISTS `lj_cheats` (
  `cheats_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` varchar(255) DEFAULT '' COMMENT '游戏id',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `content` longtext NOT NULL COMMENT '内容',
  `datetime` datetime NOT NULL COMMENT '上传时间',
  `clicks` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `praise` int(11) NOT NULL DEFAULT '0' COMMENT '点赞量',
  `parameter` float NOT NULL COMMENT '参考值',
  `game_name` varchar(255) NOT NULL DEFAULT '' COMMENT '游戏名',
  `game_list_large_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏大类',
  `game_list_small_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏小类',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `tf` int(11) NOT NULL DEFAULT '0' COMMENT '是否阅读',
  `new` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cheats_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='游戏秘籍表' AUTO_INCREMENT=20 ;

--
-- 导出表中的数据 `lj_cheats`
--

INSERT INTO `lj_cheats` (`cheats_id`, `game_id`, `theme`, `content`, `datetime`, `clicks`, `praise`, `parameter`, `game_name`, `game_list_large_id`, `game_list_small_id`, `user_id`, `tf`, `new`) VALUES
(1, '1', 'LOL游戏介绍', '经典之作的完美传承<br/>\r\n　　《英雄联盟》（简称lol）是由美国Riot Games开发，腾讯游戏运营的全新英雄对战网游。《英雄联盟》传承经典英雄对战游戏模式，拥有海量特色个性英雄，并加入便捷天梯匹配机制、创新天赋树、符文等系统养成要素。<br/>\r\n　　LOL自09年在欧美上市以来，迅速在中国、韩国、美国、欧洲大陆等全球范围掀起了全民英雄对战的狂潮，来自145个不同国家，数以千万计的玩家每天通过《英雄联盟》享受着在线电子竞技的快乐。《英雄联盟》一直致力于打造完善丰富的竞技体系，带给玩家专业的竞技体验，由《英雄联盟》主办的全球冠军赛Season2总奖金池高达500万美金，问鼎世界级顶尖赛事。据2013年3月官方最新数据统计，《英雄联盟》全球日常最高同时在线玩家数突破500万，全球注册玩家总数超过7000万，全球每月活跃玩家数3200万，LOL正以其席卷全球的竞技魅力引领着MOBA对战类网游细分市场，《英雄联盟》已经成为全球最受欢迎的电子竞技游戏。', '2014-02-10 00:00:00', 90, 24, 26.7, 'LOL', 3, 4, 6, 1, 0),
(12, '1', 'TSM队员Salce中单吸血鬼攻略', '<p><strong>作者前言</strong></p>\r\n\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>原作者：TSM.EVO.Salce　　翻译：RN_夏空</p>\r\n\r\n			<p>　　<strong>前言</strong></p>\r\n\r\n			<p>　　大家好，我是Salce，现在在TSM.EVO打APC的位置。在S1的时候我因为<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2284378.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/20.jpg" style="height:40px" /></a><a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2284378.html" target="_blank">吸血鬼</a>而被大家熟知，在我46场吸血鬼的游戏里取得了97.8%的胜率。S1的时候我是TOP100并且效力于EG，现在我也取得了2500 的ELO了。</p>\r\n\r\n			<p>　　我感觉我应该写一篇中单吸血鬼的攻略了，因为现在到处都是上单吸血鬼攻略，系统的中单攻略却少的可怜。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>技能加点分析</strong></p>\r\n\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>　血色契约</p>\r\n\r\n			<p>英雄技能</p>\r\n			冷却：无<br />\r\n			射程：无<br />\r\n			耗蓝：无<br />\r\n			技能类别： 被动技能<br />\r\n			每40点生命值会增加弗拉基米尔1点法术强度，每1点法术强度会增加弗拉基米尔1.4点生命值。（该效果不会循环叠加）&nbsp;<br />\r\n			分析：让弗拉基米尔在劣势期即使撑血也会有不错的法伤。&nbsp;&gt;<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/5.gif" style="height:40px" />血色契约：【被动技能，无快捷键。】\r\n			<p>&nbsp;</p>\r\n\r\n			<p>　　每40点额外生命值会增加<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2284378.html" target="_blank">弗拉基米尔</a>1点法术强度，每1点法术强度会增加弗拉基米尔1.4点额外生命值。(该效果不会循环叠加)</p>\r\n\r\n			<p>　　用成长的AP/生命值符文来最大化这个被动的效果。就算有一点削弱也任然是很不错的被动技能。</p>\r\n\r\n			<p>　　<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/1.gif" style="height:40px" />鲜血转换：【快键键：Q】</p>\r\n\r\n			<p>　　弗拉基米尔吸取他目标敌人的生命，造成90/125/160/195/230( 0.6*法术强度)的魔法伤害，并回复自己15/25/35/45/55( )的生命。</p>\r\n\r\n			<p>　　这是你补刀、骚扰以及对单个目标的伤害技能。对线阶段在你需要回复而敌人英雄不在足够距离的时候用它来补刀。无论何时，只要敌人英雄在距离之内，就去Q敌人的英雄，但是要注意自己的走位，有经验的玩家会故意卖个魔战让你Q然后对你输出一</p>\r\n\r\n			<p>　　轮超高的伤害。</p>\r\n\r\n			<p>　　<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/2.gif" style="height:40px" />血红之池：【快键键：W】</p>\r\n\r\n			<p>　　弗拉基米尔潜入血泊之中，不能被选为目标，持续2秒。血泊上的敌人被减速，同时弗拉基米尔吸取他们的生命。</p>\r\n\r\n			<p>　　血池前期大部分时候用来减速敌人、躲避技能/大招、躲避gank。随着游戏进程的深入，之后你用这个技能更大的作用在于躲避伤害。</p>\r\n\r\n			<p>　　<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/3.gif" style="height:40px" />血之潮汐：【快键键：E】</p>\r\n\r\n			<p>　　弗拉基米尔释放了一股血流，伤害周围敌人。此外，短时间内释放多重血之潮汐可以消耗额外的生命值，造成额外伤害，并使增加自己8%的治疗和回复效果。</p>\r\n\r\n			<p>　　随着游戏的发展，这会是你主要的AOE输出技能并且CD时间只有3-4秒。在团战之前把这个技能叠到4层并且持续保持相当相当重要。能否控制这个技能的层数决定了你是否是一个好的<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2284378.html" target="_blank">吸血鬼</a>。请记住你可以通过你的Q技能来弥补这个技能消耗的生命</p>\r\n\r\n			<p>　　值。</p>\r\n\r\n			<p>　　<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/4.gif" style="height:40px" />血之瘟疫：【快键键：R】</p>\r\n\r\n			<p>　　弗拉基米尔令一片区域感染上剧毒瘟疫，增加受感染敌人所受的伤害。血之瘟疫在几秒后给受感染的敌人造成额外的魔法伤害。</p>\r\n\r\n			<p>　　这是一个在团战里你想要命中到尽量多的敌人的技能。通过闪现大招 E可以最大化这个技能的效果。在早期，大概6-7级的时候，大招也是一个能很好用于单杀的技能。尽管你在早期所有能输出伤害的技能只有Q E R 点燃但是真的很少有脆皮中单AP能抗住这一套爆发。</p>\r\n\r\n			<p>　　<strong>加点</strong></p>\r\n\r\n			<p>　　优先升级大招<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/4.gif" style="height:40px" />。获得高等级的大招越快越好。这是一个团战型大招同时兼备很强的单杀能力。能大招的人越多越好，在给一个目标上点燃，能造成成吨的伤害。</p>\r\n\r\n			<p>　　首先加满吸血<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/1.gif" style="height:40px" />，这是你最主要的赖线技能并且5级之后只有很短的CD时间。它同时也是你对线阶段主要的骚扰以及伤害输出技能。为了对线的骚扰以及续航，吸血是你必须主升的技能。</p>\r\n\r\n			<p>　　接着升满E<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/3.gif" style="height:40px" />，尽管这是你游戏后期主要的伤害输出技能，但是你仍然应该第二个才升满它。在中路由于这个技能的短距离，你很难用它伤害到敌人，更多的时候你会用它叠满4层来补刀或者打4人帮。由于最近的一些削弱，它的耗血量已经不能被无视了，因此请记住吸</p>\r\n\r\n			<p>　　血鬼早期并不能一直用E技能来AOE。另外，通过我推荐给你的符文配置，你会随着游戏的进程越来越肉。</p>\r\n\r\n			<p>　　最后再升血池<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Vladimir/2.gif" style="height:40px" />。前期我只点1级并且只有在其他技能升无可升的时候才会开始加它。中路距离非常短，如果我不得不用血池来躲避一次gank的话，直到我回家之前我都会一直玩的很猥琐。这个技能只需要1级你就可以躲避大招、技能以及安全逃离了。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>出装思路</strong></p>\r\n\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2284378.html" target="_blank">吸血鬼</a>的出装很大程度上取决于敌人队伍的组成。举个例子，我喜欢出<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/54.jpg" style="height:40px" />法穿鞋但是如果敌人有许多强力的控制/沉默的话我就会出<a href="http://db.pcgames.com.cn/lol/product_69.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/19.jpg" style="height:40px" /></a>水银鞋。</p>\r\n\r\n			<p>　　我发现我从来都不需要<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/44.jpg" style="height:40px" />忍者鞋。由于大部分ADC都很脆他们根本不能站着对你输出伤害因为你的E技能实在太疼了。</p>\r\n\r\n			<p>　　敌人有强势的AP：深渊<img alt="深渊权杖" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/107.jpg" style="height:40px; width:40px" />水银<a href="http://db.pcgames.com.cn/lol/product_69.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/19.jpg" style="height:40px" /></a>&nbsp;or 水银饰带<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/11.jpg" style="height:40px" /></p>\r\n\r\n			<p>　　在正确的符文/天赋配置下，此时你应该有了不错的魔抗并且应该不会连招都没放出来就被秒了。</p>\r\n\r\n			<p>　　对抗强势AD：&nbsp;<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/90.jpg" style="height:40px" />沙漏&nbsp;<a href="http://db.pcgames.com.cn/lol/product_56.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/8.jpg" style="height:40px" /></a>兰顿&nbsp;<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/44.jpg" style="height:40px" />忍者鞋 。 通常来说<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/90.jpg" style="height:40px" />沙漏才是你需要的，但有时候光一个沙漏可能会稍显不足。那么下一件护甲装我就喜欢出兰顿，减CD对吸血鬼总是好的。另外生命值回复，减速也都很不错。</p>\r\n\r\n			<p>同时请记住，虽然我说过中单速出<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/101.jpg" style="height:40px" />帽子，但是你也可能需要一个<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/78.jpg" style="height:40px" />护甲或者<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/67.jpg" style="height:40px" />魔抗，因此你的<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/101.jpg" style="height:40px" />帽子就会延后。有时候在帽子之前先补充一些防御装是聪明并且必须的。慢慢的你就会明白什么时候把护甲合成沙漏<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/90.jpg" style="height:47px" />是你需要做的，或者你也会知晓出个魔抗来防止被AP爆发并且后续合成<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/11.jpg" style="height:40px" />水银或者<img alt="深渊权杖" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/107.jpg" style="height:40px; width:40px" />深渊。<img alt="深渊权杖" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/107.jpg" style="height:40px; width:40px" />深渊是一件不错但是我不会推荐的装备。我只在双AP并且另外一个AP没有出的时候出它。由于吸血鬼的输出距离很近因此可以完全触发它的光环效果，但是对于吸血鬼来说还有更好的选择，真要出它的话尽量在游戏后期出。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>克制它的英雄</strong></p>\r\n\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Match-Ups</strong></p>\r\n\r\n			<p>　　<strong>不要和他们对线!</strong></p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2282905.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/10.jpg" style="height:40px" /></a>蛇女 - 带着蓝buff远距离骚扰可以打的你生活不能自理，同水平对线你真的打不过蛇女。我从来不会在我的排位/练习赛/比赛里用<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2284378.html" target="_blank">吸血鬼</a>和蛇女对线，风险真的太高了。</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1107/2266674.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/46.jpg" style="height:40px" /></a><a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1107/2266674.html" target="_blank">瑞兹</a>&nbsp;- 带着蓝buff同样能打爆你，瑞兹爸爸的伤害实在是太高了...</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2308637.html" target="_blank"><img alt="width=" src="http://img0.pcgames.com.cn/pcgames/1107/06/2258212_Oriana_Square_0.png" style="height:40px" /></a>发条 - 一个好的发条能够全方位压制你</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2309548.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/15.jpg" style="height:40px" /></a>乌鸦 - 比上面几个要稍微好点，但是对线的续航以及伤害都比你高。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>它克制的英雄</strong></p>\r\n\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>吸血鬼没有压力，但是一旦犯错很容易跪的线!</strong></p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1112/2412428.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/Ahri/Ahri.png" style="height:40px" /></a><a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1112/2412428.html" target="_blank">阿狸</a>&nbsp;- 血池躲魅惑，不要打的太有侵略性!如果推线推的过深，就算你有血池她也能够用大招追杀你。</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2303106.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/62.jpg" style="height:40px" /></a><a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2303106.html" target="_blank">酒桶</a>&nbsp;- 血池躲大招</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2302314.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/58.jpg" style="height:40px" /></a><a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2302314.html" target="_blank">死歌</a>&nbsp;- 同样不要太有侵略性，被墙减速后被gank=死，对线阶段吸血鬼&gt;死歌，你只需要玩的小心一点聪明一点。</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2292713.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/52.jpg" style="height:40px" /></a><a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2292713.html" target="_blank">莫甘娜</a>&nbsp;- 躲好她的禁锢。不要让她成功闪现大招，否则接个禁锢你就死顶了</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2307300.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/43.jpg" style="height:40px" /></a>塞恩 - 躲了他的眩晕就是一条相当简单的线了，他甚至都不能好好的farm因为你的Q E能很轻松打破他的护盾。</p>\r\n\r\n			<p>　　<a href="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/1108/2307894.html" target="_blank"><img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/hero/36.jpg" style="height:40px" /></a>卡牌 - 躲好他的黄牌，然后就变得很简单了。你可以小心的把线推到他的塔前，限制他的大招支援。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>对线技巧</strong></p>\r\n\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>早期游戏</strong></p>\r\n\r\n			<p>　　1-5级对于吸血鬼来说相当困难，你需要更聪明的作战。不要在敌人技能CD好的时候去骚扰他们，尽量在他们补刀之后回头的时候再用技能。同样的，用血池躲一切威胁到你生命的东西。</p>\r\n\r\n			<p>　　6级之后吸血鬼就开始变得有威胁了。开始尝试着骚扰并且霸道一点。需要记住的是在没视野的时候尽量不要脸探草丛，莫甘娜/蛇女这种英雄能够让你付出巨大的代价。</p>\r\n\r\n			<p>　　<strong>中期游戏/后期游戏 团战</strong></p>\r\n\r\n			<p>　　中后期的游戏主题无外乎都是团战。你想要用你的大招命中最多的敌人，这需要闪现。保持E技能的层数。如果你有时间/操作的空间的话，用上Q/点燃。很多时候你都没有时间，因为你必须要立即用血池来躲避危险情况，血池结束之后你才能E以及Q。另外，不要忘记用</p>\r\n\r\n			<p>　　<img alt="width=" src="http://wangyou.pcgames.com.cn/zhuanti/lol/items/90.jpg" style="height:47px" />沙漏，用沙漏的时间要精髓，这需要持之以恒的练习带给你的经验。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2014-02-05 22:00:13', 28, 15, 10.6, 'LOL', 3, 4, 1, 1, 0),
(13, '3', '《魔法门10:传承》简单修改方法', '<p>注意备份源文件，以备还原时用。</p>\r\n\r\n<p>游戏自带的config可以修改不少东西，本人英盲只能认得记得简单的，希望对大家有帮助</p>\r\n\r\n<p>文件在D:Might and Magic X LegacyMight and Magic X LegacyMight and Magic X Legacy_DataStreamingAssets里面config.txt</p>\r\n\r\n<p>attributePointsPerLevelUp：升级获得的属性点</p>\r\n\r\n<p>skillPointsPerLevelUp：升级获得的技能点数</p>\r\n\r\n<p>requiredSkillLevelNovice：新手技能升级所需点数</p>\r\n\r\n<p>requiredSkillLevelExpert ：专家技能升满所需点数</p>\r\n\r\n<p>requiredSkillLevelMaster ：大师技能升满所需点数</p>\r\n\r\n<p>requiredSkillLevelGrandMaster：宗师技能升满所需点数</p>\r\n\r\n<p>skillExpertPrice</p>\r\n\r\n<p>skillMasterPrice</p>\r\n\r\n<p>skillGrandmasterPrice</p>\r\n\r\n<p>这3个是升级费用</p>\r\n\r\n<p>itemResellMultiplicator这个应该是卖东西给商店的倍数</p>\r\n\r\n<p>更多相关资讯请关注：<a href="http://www.ali213.net/zt/MMXL/" target="_blank">魔法门10：传承</a>专题</p>\r\n', '2014-02-08 16:52:00', 12, 1, 2.7, '魔法门10：传承', 1, 2, 1, 1, 0),
(14, '2', '【掉寶】地獄三頭犬巢穴掉落物彙整：戒指', '<p>【掉寶】地獄三頭犬巢穴掉落物彙整：戒指類</p>\r\n\r\n<p>又到了一年一度的開心碰碰跳跳的掉落物調查啦！！這一次的委託是前往地獄犬深淵巢穴調查！由於有次將裡面的掉落物大更動，就連物品裝備也更改了，如果想要打地獄犬套裝材料的孩子就別到深淵模式了，現在深淵是沒有材料，當然連能力紋章也沒看到，主要在地獄犬深淵模式只能打到飾品，跟專屬的地獄犬飾品、技能紋章，在最早期的時代，地獄犬時代會掉落32等的飾品，但是現在掉落的飾品都是32等以下的飾品，但得到的機率比以前還要高，總之缺飾品的孩子還是可以去打的！<br />\r\nBOSS掉落物《地獄犬》</p>\r\n\r\n<p>傳說中的地獄犬到底會掉什麼呢！！天啊！！好緊張！！！！！答案是錢&hellip;沒錯！！你沒看錯！就只有錢（眼神死）現在已經改為打完最後BOSS後的最後寶箱才會掉落重要物品<br />\r\n打了一連串的關卡！終於看到了最後的寶箱！！深淵模式的寶箱最主要的是飾品，其他就沒什麼好拿的，甚至地獄犬的專屬技能戒指也只是普通而已，假使想打出來做做紀念或許還不錯。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>飾品《戒指》</p>\r\n\r\n<p>此為實測紀錄的掉落物，因物品遺漏請見諒，此外很多裝備都是隨機屬性，數值方面僅供參考。</p>\r\n\r\n<p>想要衝屬傷的話，戒指拿燦爛是最好的！其餘的想要衝物攻就拿破壞，想衝魔攻就拿魔力。</p>\r\n', '2014-02-08 17:28:18', 8, 0, 1.6, '', 3, 2, 1, 1, 0),
(19, '22', 'QQ三国逃犯坐标', '<p>9527 巴郡,野猪岭,绝龙谷,风桥,成都子成,巴郡东郊<br />\n9551 枫桥,古驿道关驿,成都子城,建业皇城,石滩<br />\n9528 巴郡西郊,泽林驿站,跑马,野岭,吴君东<br />\n9552 江夏,东乡水寨,建业皇城,巴郡西郊,吴君<br />\n9529 魏郡东，东香水寨，巴郡东郊，玄武<br />\n9553 古绎道关溢,江夏,吴郡,青龙<br />\n9530 巴郡,东乡水寨,魏都,洛阳白虎区,古驿道关驿,成都罗城,轩辕,吴郡东,枫桥<br />\n9554 吴郡,石滩,白马坡,巴郡西郊,古道关驿,江陵,东乡水寨<br />\n9531 吴郡西郊,成都罗城,古驿道前段,牧业神龙<br />\n9548 吴郡西郊,成都子城,枫桥,白马坡,巴郡,吴君东郊<br />\n9537 成都子城,枫桥,玄武,巴郡,古驿道关驿,神亭岭,石滩,巴君西郊,甘棠湖军驿,古道前<br />\n9549 成都罗城,吴郡,泽林驿站,古驿道前段,野岭<br />\n9564 成都罗城,东乡水寨,轩辕驿站,巴郡东郊<br />\n9550 临江,成都子城,巴君西郊<br />\n9536 江陵,吴郡东郊,魏都东郊,神亭岭,疾风岗,成都&middot;子城,牧业<br />\n9566 巴郡西郊,吴郡东郊,洛阳青龙区,成都&middot;子城,野猪林<br />\n9567 巴郡东郊,野猪岭,神亭岭,跑马<br />\n9532 野猪岭,枫桥,巴郡东郊,北固山关绎,古道<br />\n9533 疾风岗,野猪岭,襄阳,古道关驿,巴君东郊,古道前<br />\n9571 疾风岗,吴郡,石滩,青龙<br />\n9558 襄阳,吴郡东郊,临江,古驿道前段,吴郡西郊<br />\n9570 建业皇城,吴郡东郊,魏郡东郊,野猪岭,巴西<br />\n9572 吴郡,疾风岗,巴郡西郊,成都罗城,巴君东郊<br />\n9565 巴郡,石摊,古绎道关溢,巴君西郊<br />\n9534 吴郡,东乡水寨,吴郡西郊,野猪岭,巴郡西郊<br />\n9574 魏都西郊,吴郡东郊,石滩,巴郡,泽林驿站,江陵<br />\n9542 魏都东郊,吴郡西郊,疾风岗,巴郡东郊,巴郡西郊<br />\n9539 枫桥,襄阳,吴郡,石滩,古驿道关隘,古驿道前段,巴郡东郊,巴郡西郊,临江<br />\n9545 魏郡,绝龙谷,吴郡,石滩,甘棠湖军驿,成都子城,临江<br />\n9541 魏郡,古道关驿<br />\n9547 东乡水寨,石滩,野猪岭,古道关驿,成都罗城,江陵,建业商,卫河滩<br />\n9573 吴郡西郊,建业皇城<br />\n9552 江夏,吴郡,建业商<br />\n9538 神亭岭,吴郡西郊,白虎,野猪岭,古驿道前段,巴郡西郊.成都罗城,建业商<br />\n9556 枫桥,白虎,古驿道关隘<br />\n9576 神亭岭,东乡水寨,吴郡东郊,吴郡西郊,跑马关驿,古驿道前段,成都罗城<br />\n9543 神亭岭,魏都西郊,吴郡,吴郡西郊,野猪岭,巴郡东郊<br />\n9575 枫桥,魏都西郊,玄武,疾风岗,巴郡东郊<br />\n9568 吴郡,吴郡东郊,吴郡西郊,古道关驿,古驿道关隘,甘棠湖军驿<br />\n9544 白马坡,吴郡东郊,吴郡西郊,青龙,野猪岭,成都子城,江陵<br />\n9555 江夏,白马坡,青龙,巴郡西郊<br />\n9563 东乡水寨,吴郡东郊,跑马关驿,疾风岗,野猪岭,巴郡西郊,泽林驿站<br />\n9567 青龙,神亭岭,巴郡东郊,野猪岭,跑马<br />\n9540 东乡水寨,疾风岗,巴郡东郊<br />\n9569 江夏,吴郡西郊,古驿道前段,巴郡西郊,临江<br />\n9561 跑马关驿,疾风岗<br />\n9559 江夏,古道关驿,古驿道前段,临江,泽林驿站<br />\n9553 古绎道关溢,江夏,吴郡,洛阳青龙<br />\n9560 吴郡,吴郡西郊,巴郡东郊,成都子城,泽林驿站,北固山关驿<br />\n9562 吴郡,玄武,玄武,古道关驿,甘棠湖军驿,北固山关驿<br />\n9557 玄武,巴郡东郊,牧野神农草场,泽林驿站<br />\n9546 玄武,古驿道前段,牧野神农草场<br />\n9535 吴郡西郊,古道关驿</p>\n\n<p>9527 4线巴郡<br />\n9551 1线枫桥<br />\n9528 4线巴郡西郊<br />\n9529 4线魏郡东郊5线东香水寨<br />\n9553 4线古绎道关溢<br />\n9530 4线巴郡<br />\n9554 3线吴郡5线石滩<br />\n9531 4线古绎道前段<br />\n9555 4线白马坡<br />\n9532 4线野猪岭5线北固山关绎<br />\n9556 4线洛阳白虎区5线枫桥<br />\n9533 4线疾风岗<br />\n9557 4线洛阳玄武区<br />\n9534 4线吴郡1线东乡水寨<br />\n9558 1线吴郡西郊<br />\n9535 4线吴郡西郊2线神亭岭<br />\n9536 4线吴郡东郊<br />\n9537 4线神亭岭2线石滩3线枫桥<br />\n9538 2线吴郡西郊5线神亭岭<br />\n9562 4线疾风岗<br />\n9539 2线枫桥<br />\n9563 3线东乡水寨<br />\n9540 1线东乡水寨<br />\n9541 4线魏郡<br />\n9565 4线古绎道关溢<br />\n9542 4线巴郡东郊<br />\n9566 4线巴郡西郊<br />\n9543 2线吴郡西郊<br />\n9567 4线神亭岭<br />\n9544 4线洛阳青龙<br />\n9568 1线西郊<br />\n9545 4线绝龙谷3线石滩<br />\n9569 4线古绎道前段<br />\n9546 4线神龙草场<br />\n9570 4线野猪岭<br />\n9547 4线卫河滩<br />\n9571 4线石滩<br />\n9548 4线成都子城<br />\n9572 1线2线如同4线吴郡<br />\n9549 4线成都罗城<br />\n9573 4线吴郡西郊3线如同<br />\n9574 4线魏郡西郊1、2线吴郡东<br />\n9575 4线巴郡东郊1、2、3线枫桥<br />\n9576 4线东乡水寨1、2、3线神亭岭<br />\n巴郡：9565 9556 9576 9571 9552 9527 9564 9532<br />\n古道：9554 9559 9543 9545<br />\n泽林：9560 9539 9546 9529&nbsp;<br />\n罗城：9546 9549 9563 9570 9574 9528<br />\n子城：9548 9541 9567 9535 9563 9544<br />\n建业皇城：9569<br />\n临江：9538 9564 9537 9559</p>\n', '2014-02-16 08:04:59', 22, 1, 5.2, '', 3, 2, 1, 1, 0),
(16, '2', '龙之谷弓箭手加点', '<pre>\n我建议你用<a href="http://zhidao.baidu.com/search?word=%E9%95%BF%E5%BC%93&amp;fr=qb_search_exp&amp;ie=utf8" target="_blank">长弓</a>，一是狠，二是远。看见网上有SB箭神近身打，拿自己当游侠。箭神近身就是个P，必死。加点建议走物理流。魔法流的G不见得比物理的高多少。关键是物理流的招几乎都带击退，对于一个远程职业，你应该明白这意味着什么。。。衣服我的建议是有的穿就行。。。只要你把闪避加满，你不会被打到几下（被打很多的话你还是换职业吧）武器建议你自己去做，到武器商人那里做蓝的（极低时还是做得好，极高就不解释了）。要箭袋和<a href="http://zhidao.baidu.com/search?word=%E9%95%BF%E5%BC%93&amp;fr=qb_search_exp&amp;ie=utf8" target="_blank">长弓</a>，还有套装效果~~\n\n至于加点。我看就这么一种，我这种加点要求你懂得啥叫闪避（这个对箭神的重要性不解释）\n二连+1  就是为了击退\n穿刺+满 主要输出之一，用了就明白\n翻滚+满 就是我说的闪避。和后续技能结合用你就明白啥叫箭&ldquo;神&rdquo;了。\n急闪+1  够了，就是以防万一。\n多段+1  技能成长太低，价高就是浪费，主要是要他的效果。\n鹰眼+1  说加满和不加的都是SB。\n回旋 扫堂 起身  各+1 够了。\n浮空调整+1 会用就是神技。怪那你根本没办法。僵直就急闪，浮空就调整。\n<a href="http://zhidao.baidu.com/search?word=%E8%81%9A%E8%83%BD&amp;fr=qb_search_exp&amp;ie=utf8" target="_blank">聚能</a>+满 强力输出。但是注意怪和你的距离，一位吟唱很长。不然。。。\n飞空 加满 自己体会，感觉不好用就别玩箭神了。\n包围 +满 神技，用过你就明白了。很霸气，根本不留脸。\n箭雨 箭神就为了这个。和瞄准&middot;鹰眼一起用，你就明白什么叫除了你之外，别人就是摆设了。\n瞄准 +满\n虚晃 +2 闪避的技能。+2为了前置。自己也很好用。\n三角 +1 PK和刷图都好用。\n\n这么加完，你还有60SP。（以后还可能加20SP的任务）爱加点啥就加啥。基本上面的练好了，你就是神了。</pre>\n', '2014-02-12 19:46:40', 9, 1, 2.1, '', 3, 2, 6, 1, 0),
(17, '21', '战地1942 通关攻略 ', '<p>　　于2002年9月发行的《战地1942》，由来自瑞典的开发商Digital Illusions制作。他们擅长于3D技术，为各种游戏平台提供产品。早期作品多为竞速赛车游戏，《瑞典赛车巡回锦标赛》系列是其代表作。这些为他们从今年起转向动作射击领域打下了坚实基础。发行商电子艺界则是鼎鼎有名的业界大腕，制作和发行的佳作不胜枚举。《战地1942》是一部基于多人配合的动作射击游戏，玩家分为红、蓝两方在16幅场景地图上对抗。该作在画面上和物理特性上都表现出极高的水准，海陆空三军齐备，给人一种真实的参战感。&nbsp;<br />\n　　&nbsp;<br />\n　　入门篇&nbsp;<br />\n　　&nbsp;<br />\n独特的胜负判断&nbsp;<br />\n　　参与者分为盟军（蓝色）和轴心国（红色）两方，每方各几人或十几人。系统限定一个总复生数，比如90代表总共90次复生机会。各人在阵亡后，可于基地或据点里复生（Spawn）。当一方的总复生数耗光时，即判该方失败。玩家进入战场前，需先在地图上选择一个复生点，然后从侦察兵（即狙击兵）、突击兵、反坦克兵、医疗兵和工程兵中选择一种，最后点屏幕右下角的确定，等20秒的复生间隙期完毕，即进入战场。战斗中争夺的核心是那些插着旗帜的据点。插哪一方的旗，哪一方的人就可在那复生，灰色的则表示双方都不能在此复生。处在双方交火前线的据点往往比后方的重要，因为玩家能够从这快速投入战斗。此外，据点还通常备有自动机枪、弹药箱（站在旁边即可补充弹药）、医疗柜，甚至复生坦克、火箭车、飞机等重要装备，从而为投入战斗的人员提供有力的支援。更重要的是，控制据点少的那一方，总复生数将会自动缓慢地减少。因此，游戏并不专门强调射击的精确，对据点的争夺更为重要。当玩家逼近敌方据点并坚持5秒钟，该据点的旗帜会变为灰色。在周围没有敌人并守住5-10秒钟后，该旗帜才变为己方的，也即代表占领了该据点。唯一的例外是，双方的基地不会改变旗帜。&nbsp;<br />\n　　&nbsp;<br />\n各具特色的五个兵种&nbsp;<br />\n　　也许大家认为兵种的区分，就如名称那样直观&mdash;&mdash;侦察兵的狙击枪适合对付中远程的敌兵，突击兵的冲锋枪适合近战，反坦克兵的火箭筒自然是对付坦克车辆的首选，医疗兵加血，工程兵则维修所有装甲设施，还能安放炸药、地雷。然而，它们在很多方面都是相同的：都配备有匕首、手枪、手雷，按数字1-6进行调用（主武器为3号枪）；都能驾驶坦克、舰船和飞机，并操作其攻击火力点，而不必考虑是否经历过专门的训练；在端着主武器时，点鼠标右键均可拉近视野，便于瞄准射击；当按G键捡地上的其它兵种的装备时，就切换为该兵种而失去原兵种的身份。&nbsp;<br />\n　　&nbsp;<br />\n设备的操作&nbsp;<br />\n　　对坦克、车辆、飞机、舰船的操作，遵循着相同的原则，即：按E键进出；按数字1-6变换在设备里的具体位置，而位置1都是默认的驾驶室。在驾驶室，按WASD移动该设备。大部分设备，包括中轻型坦克、吉普车、登陆艇（持续按&uarr;放下挡板）、APC，有1、2两个位置，而重型坦克和部分飞机只有一个位置，舰船、航母则有多个操作位置。各个操作位的具体作用，需视情形而定，即便同为坦克，有的位置1包括驾驶、主炮和机枪，位置2还有一挺可对空的机枪；有的位置1就只包括驾驶和主炮。需注意的是，驱逐舰、战列舰的主炮和副炮的作用是不同的&mdash;&mdash;远程轰击、鱼雷反潜、中程轰击、防空等等；另外，关于APC，只有从车头附近按E键才是进入驾驶室，在车尾附近则是进入车厢里加血、加弹药。&nbsp;<br />\n　　&nbsp;<br />\n飞机&nbsp;<br />\n　　难以掌握操作的设备是飞机，这儿简单介绍一下：W加速，S减速，A、D是往左侧飞和往右侧飞，&uarr;压低机头，&darr;抬高机头，&larr;、&rarr;是机身往左翻和往右翻，空格是机枪扫射，数字小键盘区的0则代表投下炸弹。起飞时，按W加速，等有了一定速度后再按&darr;抬高机头；飞机急剧侧飞时，机身可能严重倾斜，需辅以&larr;、&rarr;进行调整；默认的机舱模式不便于观察飞机状态，按F9去掉驾驶舱或者按F10以尾追模式观察。若想跳伞，需连按E、9两键，以迅速打开降落伞。建议别用鼠标操作飞行，而只用键盘；若有操纵杆，则更好。&nbsp;<br />\n　　&nbsp;<br />\n操作列表&nbsp;<br />\n　　由于兵种的多样性，游戏的操作难免复杂点，不过它们基本上都遵循着相同的原则。从表一中不难发现这一点。需特别强调的是与队友交流的无线电讯号，通过连按两次F1-F8功能键的方式，可快速实现沟通，它们基本上涵盖了最常用的作战交流需要。比如按F2、F2代表请求增援，那么队友就会在稍后赶来。这些交流方式，对作战有着意想不到的重要性，牢记它们吧。&nbsp;<br />\n　　&nbsp;<br />\n　　表一：常用操作键&nbsp;<br />\n　　适用兵种　　　用途　　　　　　　　　键位　&nbsp;<br />\n　　&nbsp;<br />\n　　所有　　　　　开火　　　　　　　　　鼠标左键　&nbsp;<br />\n　　步兵　　　　　跳跃　　　　　　　　　空格　&nbsp;<br />\n　　步兵　　　　　步行　　　　　　　　　左shift　&nbsp;<br />\n　　步兵　　　　　扔/捡物品　　　　　　　G　&nbsp;<br />\n　　步兵　　　　　拉近视野/第二开火　　鼠标右键　&nbsp;<br />\n　　步兵　　　　　填弹　　　　　　　　　R　&nbsp;<br />\n　　步兵　　　　　武器1-6　　　　　　　数字1-6　&nbsp;<br />\n　　步兵　　　　　蹲下　　　　　　　　　左ctrl　&nbsp;<br />\n　　步兵　　　　　趴下　　　　　　　　　Z　&nbsp;<br />\n　　飞机　　　　　开关鼠标观察　　　　　左shift　&nbsp;<br />\n　　所有　　　　　进出设备　　　　　　　E　&nbsp;<br />\n　　步兵　　　　　打开降落伞　　　　　　9　&nbsp;<br />\n　　所有　　　　　与所有人聊天　　　　　K　&nbsp;<br />\n　　所有　　　　　与本方聊天　　　　　　L　&nbsp;<br />\n　　所有　　　　　查看得分　　　　　　　Tab　&nbsp;<br />\n　　所有　　　　　复生界面　　　　　　　回车　&nbsp;<br />\n　　所有　　　　　地图　　　　　　　　　M　&nbsp;<br />\n　　所有　　　　　正常视角　　　　　　　F9　&nbsp;<br />\n　　所有　　　　　尾追视角　　　　　　　F10　&nbsp;<br />\n　　所有　　　　　前置视角　　　　　　　F11　&nbsp;<br />\n　　所有　　　　　不同视角的切换　　　　C　&nbsp;<br />\n　　所有　　　　　暂停游戏　　　　　　　P　&nbsp;<br />\n　　所有　　　　　无线电1-8　　　　　　F1-F8　&nbsp;<br />\n<br />\n　　表二：默认联络信号　&nbsp;<br />\n　　F8代表取消，它与F1至F7的所有组合，也都代表取消，故下表不再列出。　&nbsp;<br />\n　　两次按键　无线电信息　&nbsp;<br />\n　　F1-F1　　　是　&nbsp;<br />\n　　F1-F2　　　不　&nbsp;<br />\n　　F2-F1　　　要求搭乘　&nbsp;<br />\n　　F2-F2　　　请求增援　&nbsp;<br />\n　　F2-F3　　　请求反坦克支援　&nbsp;<br />\n　　F2-F4　　　请求海军支援　&nbsp;<br />\n　　F2-F5　　　请求空军支援　&nbsp;<br />\n　　F2-F6　　　请求火炮支援　&nbsp;<br />\n　　F2-F7　　　请求APC支援　&nbsp;<br />\n　　F3-F1　　　发现敌坦克　&nbsp;<br />\n　　F3-F2　　　发现敌士兵　&nbsp;<br />\n　　F3-F3　　　发现敌部队　&nbsp;<br />\n　　F3-F4　　　发现敌舰船　&nbsp;<br />\n　　F3-F5　　　发现敌潜艇　&nbsp;<br />\n　　F3-F6　　　发现敌机　&nbsp;<br />\n　　F3-F7　　　发现敌侦察兵　&nbsp;<br />\n　　F5-F3　　　&ldquo;防守！&rdquo;　&nbsp;<br />\n　　F5-F4　　　&ldquo;进攻！&rdquo;　&nbsp;<br />\n　　F5-F5　　　是　&nbsp;<br />\n　　F5-F6　　　不　&nbsp;<br />\n　　F6-F1　　　&ldquo;等等！&rdquo;　&nbsp;<br />\n　　F6-F2　　　&ldquo;开火！&rdquo;　&nbsp;<br />\n　　F6-F3　　　&ldquo;别开火！&rdquo;　&nbsp;<br />\n　　F6-F5　　　&ldquo;医疗兵！&rdquo;　&nbsp;<br />\n　　F6-F6　　　&ldquo;躲起来！&rdquo;　&nbsp;<br />\n　　F7-F1　　　&ldquo;掩护我！&rdquo;　&nbsp;<br />\n　　F7-F2　　　&ldquo;坚守岗位！&rdquo;　&nbsp;<br />\n　　F7-F3　　　&ldquo;去夺旗！&rdquo;　&nbsp;<br />\n　　F7-F4　　　&ldquo;撤退！&rdquo;　&nbsp;<br />\n　　F7-F5　　　&ldquo;集结！&rdquo;　&nbsp;<br />\n　　F7-F6　　　&ldquo;随我来！&rdquo;　&nbsp;<br />\n　　F7-F7　　　&ldquo;冲啊！&rdquo;　&nbsp;<br />\n　　&nbsp;<br />\n　　&nbsp;<br />\n　　进阶篇&nbsp;<br />\n　　&nbsp;<br />\n　　射击校正　&nbsp;<br />\n　　FPS里一个常用的术语是提前量，但那通常指用枪打移动的目标。《战地1942》的射击，不仅需考虑这一点，还需考虑弹道轨迹。常用的火箭筒、坦克炮、手雷、飞机的投弹等等，不仅存在着对移动目标的提前量因素，也存在着弹道的问题，即它们的飞行轨迹是一条抛物线。因此，当目标距离为中程以上时，必须将准星抬高少许，才有可能命中目标。至于抬高多少，这就纯粹是个人经验问题了。即便同为坦克一族、不同坦克的弹道轨迹也不相同。只有通过不断的操练，方可找到感觉。　&nbsp;<br />\n　　&nbsp;<br />\n　　步兵的射击&nbsp;<br />\n　　准星宜越小、越紧凑才好，通常的优先顺序是趴下&gt;蹲立&gt;站立&gt;跑动。相互对射时，要么跑动，要么趴下。侦察兵的要点是找高地，躲在隐蔽处，或蹲或趴，不可离前线太近，否则容易被发现。因此，它并不适合打移动的目标。当狙击开火后，按住鼠标左键，保持在了望模式，可查看是否击毙了目标，然后再松开进行填弹。突击兵可用边跑动边射击的战术，近战对付其他步兵占很大优势，用2-3发的短束射击比持续连发更容易命中目标，射击前将准星稍微压低，因为冲锋枪的后座里较强。子弹打完后，躲到壕沟或碉堡里，在障碍物的掩护下换弹夹。工程兵的枪不象人们所想象的那么菜，甚至在高手眼里作用比狙击枪和冲锋枪还好用，因为它的准星几乎不扩大。在中远程，用它打移动的目标，最容易把握提前量；在中近程，则可冲上前去对付趴着的敌兵。工程兵的炸药和地雷不仅是对付坦克的好手段，也可用来设置陷阱，炸死追击的敌人。若是乘上了坦克，可随时跳下来修理，从而大大延长坦克的作战时间。步兵在扔手雷时，若想扔得更远，可先跳起，在半空中将手雷扔出去。&nbsp;<br />\n　　&nbsp;<br />\n　　步兵对坦克&nbsp;<br />\n　　反坦克兵对付坦克有两种方式，一是围着坦克跑，边跑边发射，距离在10米左右，太远不易击中，太近则可能先倒下；二是当距离中远时，趴在地上轰击，准星就要抬得稍微高点。坦克防护最好的部位是前部，侧翼次之，背后最差，因此绕到坦克背后发动攻击是最理想的情况，2发火箭筒就可能击毁一部中型坦克，若从正面打，则可能要消耗点全部5发。由于坦克的视野有限，若有躲藏在岩石、建筑物后面的机会，不妨放过逼近的坦克，然后出现在它身后&hellip;&hellip;。其它兵种在对付坦克时比较吃力，主要手段是手雷（工程兵用地雷、炸药）。遇上坦克，不必惊慌，连跑带跳，靠近坦克，贴在它旁边；若敌出来，就钻入夺之；若敌不出来，则紧贴着坦克跑，避开其炮口，间隙中扔手雷（近扔方式是Alt+鼠标左键），转到另一侧等爆炸过后再继续跟坦克玩贴面舞。另外还有2个办法：一是乘吉普车，高速冲向坦克，在接触前跳下车，跑到坦克另一侧，吉普车稍后会发生爆炸；二，防空枪塔打坦克的效果也很不错，留意这样的机会。&nbsp;<br />\n　　&nbsp;<br />\n　　坦克&nbsp;<br />\n　　对提前量和弹道偏差的把握，只有通过多练习方能找到感觉，这儿不赘叙，仅介绍几条通用的技巧。由于坦克各部分防护度上的差异，应尽量以正面对着敌坦克，而尽可能打击到对方的侧面甚至尾部。因此，象转弯的路口、侧面有山坡挡着的桥口这样的地方，就是防守的好位置。当敌人出现时，总是将侧面暴露了出来，而且它还要经过一个转身的动作才能看到你和反击。在战斗中应尽量发现并利用这样的位置。第二，由于坦克的视野宽度较窄，容易漏过侧翼的敌人。当你发现敌坦克并判断它没发现你时，不必急于开火，设法绕到它的后面并靠近之&hellip;&hellip;。第三，偶尔用C键来观察身后的情况；若道路不好走，则按F10以尾追视角来操作坦克（车辆也是如此）的行驶。第四，开炮要冷静，一炮轰出去不要动鼠标，视击中目标与否来调节弹道偏差，即使受敌攻击也是如此，更不可被四处乱炮的敌兵所分神，要专心对付前方的敌坦克。第五，坦克呆在维修平台上，几乎就是金刚不坏，在一些场景中有着特别重要的战术意义。最后，熟练地在1号位置的主炮和2号位置的机枪之间切换，其主要用途是消灭身后的反坦克兵，而不是打击前方的敌兵。&nbsp;<br />\n<br />\n　　飞机&nbsp;<br />\n　　在学会了驾机后，飞机的作用很大。其主要用途是轰炸敌坦克和扫射敌兵，然后进行空降，夺取据点。在实施时，常用的战术是在离地面大约5米的高度上水平低空飞行，把握好提前量，扔下炸弹。对付防空火力，不宜从开阔空间逼近之，而是从它们身后的高坡飞过，突然出现其顶部并炸之。注意扔下炸弹后需抬起机头，避免被爆炸波所伤。飞机的另一个用途是直接撞向地面的坦克，这可能是对付维修平台上的坦克的唯一一招。第三，在战场刚开始时，可利用飞机去抢关键的据点，即开飞机到据点上空，然后空降下去，如果场景够大够复杂，可先于敌吉普车抵达。在中期，则可大胆空降到敌人基地里，乘上空坦克，从而增强己方作战力。&nbsp;<br />\n　　&nbsp;<br />\n　　其它设备&nbsp;<br />\n　　除了坦克、步兵的稳步推进和飞机的空降外，利用吉普车的快速度也是抢据点的一个战术。这表现在两个方面：一是在战局初期快速出动，和飞机的空降是异曲同工；二是在中盘阶段从敌人的炮火中冲过去，抢占敌人后方的据点，然后乘上那儿的坦克，从敌人背后反戈一击。舰船方面，战列舰主要是和侦察兵配合，轰击岛屿上的目标；潜艇用来偷袭敌舰，由于在水下航行得较慢，所以在长距离航行时，不妨露出水面，若发现目标，再沉下去；驱逐舰是对付潜艇的唯一手段，让它们保护航母这样的重要目标。对付舰船，由于普通的打击对它们效果不好，而只有鱼雷的杀伤效果才特别强，因而在此用途上需倚重潜艇和鱼雷轰炸机。&nbsp;<br />\n　　&nbsp;<br />\n　　战术高于枪法&nbsp;<br />\n　　《战地1942》不是通常意义的FPS，射击精确与否固然重要，但不是全部。多用脑子，重视团队配合，也能赢取胜利。最常遇到的考验是，复生时选择哪一个复生地、选择哪个兵种，这些都应视战局而定，而不能过于执着于自己的喜好。是在基地里复生以乘上坦克去增援，还是就近复生以尽快重新投入战斗？是坚持用突击兵还是改用反坦克兵？如果刚刚被敌坦克击毙，那么就应该选择反坦克兵，力争干掉敌坦克，而不能固执地用突击兵；反之，如果是当反坦克兵时被敌突击兵干掉，则应</p>\n', '2014-02-15 22:19:11', 18, 1, 3.9, '', 1, 1, 6, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lj_cheats_hot`
--

CREATE TABLE IF NOT EXISTS `lj_cheats_hot` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '排名',
  `cheats_id` int(11) NOT NULL COMMENT '攻略id',
  `game_list_large_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='热门攻略表' AUTO_INCREMENT=14 ;

--
-- 导出表中的数据 `lj_cheats_hot`
--

INSERT INTO `lj_cheats_hot` (`Id`, `cheats_id`, `game_list_large_id`) VALUES
(1, 1, 3),
(2, 12, 3),
(5, 13, 1),
(7, 14, 3),
(3, 19, 3),
(6, 16, 3),
(4, 17, 1);

-- --------------------------------------------------------

--
-- 表的结构 `lj_cheats_replay`
--

CREATE TABLE IF NOT EXISTS `lj_cheats_replay` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `replay_user_id` int(255) NOT NULL COMMENT '回复人id',
  `content` longtext NOT NULL COMMENT '回复内容',
  `cheats_id` int(11) NOT NULL DEFAULT '0' COMMENT '攻略id',
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '回复时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='游戏秘籍回复表' AUTO_INCREMENT=61 ;

--
-- 导出表中的数据 `lj_cheats_replay`
--

INSERT INTO `lj_cheats_replay` (`Id`, `replay_user_id`, `content`, `cheats_id`, `datetime`) VALUES
(1, 1, '攻略回复测试', 1, '0000-00-00 00:00:00'),
(49, 5, '<p>撒旦法士大夫</p>\n', 4, '2014-01-20 17:38:41'),
(50, 2, '<p>zxdc zx csd fsd没得咖啡色的圣达菲是的是的</p>\n', 5, '2014-01-20 17:42:54'),
(51, 2, '<p>哈市的国防生的圣达菲是的圣是地v达菲是的 &nbsp;山东省地方</p>\n', 5, '2014-01-20 17:43:23'),
(52, 5, '<p>zczxc双方各电饭锅的方法 是的 圣达菲是的大飞飞</p>\n', 5, '2014-01-20 17:43:59'),
(53, 0, '<p>撒旦法士大夫adf</p>\n', 8, '2014-01-29 22:52:59'),
(54, 0, '<p>士大夫似的</p>\n', 10, '2014-01-30 03:16:37'),
(55, 6, '<p>飯飯回復</p>\n', 1, '2014-01-30 23:23:41'),
(56, 2, '<p>撒旦法士大夫</p>\n', 4, '2014-01-31 20:01:37'),
(57, 1, '<p>顶~~~~赞，超赞</p>\n', 12, '2014-02-05 22:33:14'),
(58, 0, '<p>asdasd</p>\n', 1, '2014-02-07 22:16:23'),
(59, 0, '<p>sdsa</p>\n', 5, '2014-02-07 22:18:27'),
(60, 2, '<p>牛逼呀</p>\n', 19, '2014-02-16 23:33:20');

-- --------------------------------------------------------

--
-- 表的结构 `lj_cheats_z`
--

CREATE TABLE IF NOT EXISTS `lj_cheats_z` (
  `cheats_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `lj_cheats_z`
--


-- --------------------------------------------------------

--
-- 表的结构 `lj_feedback`
--

CREATE TABLE IF NOT EXISTS `lj_feedback` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '内容',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `reply` longtext NOT NULL COMMENT '回复',
  `read_tf` int(1) DEFAULT '0' COMMENT '是否阅读',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户反馈表' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `lj_feedback`
--

INSERT INTO `lj_feedback` (`Id`, `user_id`, `content`, `time`, `reply`, `read_tf`) VALUES
(1, 1, '用户反馈测试', '2014-01-15 00:00:00', '尊敬的用户：\r\n      本网站已接受你的反馈信息，我们会尽快结合的意见，修改相应的内容~\r\n      ', 1);

-- --------------------------------------------------------

--
-- 表的结构 `lj_friend`
--

CREATE TABLE IF NOT EXISTS `lj_friend` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户名',
  `friend_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '朋友用户名',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='好友表' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `lj_friend`
--

INSERT INTO `lj_friend` (`Id`, `user_id`, `friend_user_id`) VALUES
(1, 1, 2),
(2, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `lj_game`
--

CREATE TABLE IF NOT EXISTS `lj_game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `img` blob COMMENT '游戏图片',
  `game_name` varchar(100) NOT NULL COMMENT '游戏名字',
  `company` varchar(255) DEFAULT NULL COMMENT '游戏公司',
  `time_to_market` date DEFAULT '0000-00-00' COMMENT '发布时间',
  `recent_activity` longtext COMMENT '近期活动',
  `update_information` longtext COMMENT '更新信息',
  `list_id` int(11) NOT NULL DEFAULT '0' COMMENT '大类id',
  `list_small_id` int(11) NOT NULL DEFAULT '0' COMMENT '小类id',
  `grade` float DEFAULT '0' COMMENT '积分',
  `new` int(11) NOT NULL DEFAULT '0' COMMENT '是否用户自定义',
  PRIMARY KEY (`game_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='游戏表' AUTO_INCREMENT=24 ;

--
-- 导出表中的数据 `lj_game`
--

INSERT INTO `lj_game` (`game_id`, `img`, `game_name`, `company`, `time_to_market`, `recent_activity`, `update_information`, `list_id`, `list_small_id`, `grade`, `new`) VALUES
(1, '', '英雄联盟（LOL）', 'Riot Games公司', '2011-09-22', '   马年头像的票选已经接近尾声，但是有些玩家担心没有得到他们最喜爱的头像，RiotZephyreal打消了大家的顾虑： “好消息是在活动结束后，头像可以靠游戏内金币或者点券购买。票选获胜的头像会有一个特殊的边框。” 关于雷恩加尔的重做的更新内容 RiotScruffy今天就雷恩加尔的重做发表了一些更新内容: “只是不想让大家等的太久。来告诉大家一下我们每天都在对雷恩加尔做调整和测试。 *我们调整了很多技能数值，让他在线上，gank和后期的能力处于一个合理的水平 *我们还让他的专属也具有红色，黄色和蓝色饰品一样的主动效果” 关于雷恩加尔被动的持续时间，他继续说道： “在经过一些测试之后我们发现十秒可能有些改的太过了。现在被动的效果是脱离战斗十二秒而不是获得残暴值后的十二秒。随着这个改动，只要你处于战斗状态你就可以保持你的残暴值。” 他还提到了更多关于骨齿项链的改动： “我更倾向于更具杀人数来让它升级。拿六个人头可以有第一次外观升级，九个或者十四个有第二次的外观升级。” 更多关于重做的讨论 当被问到维克托的时候，RiotScruffy说： “老实说我们想对很多英雄进行升级(包括维克托)，但是现在这个项目没有在进行中。很显然许多玩家期待着维克托的改动。” 他还简单的说了一下船长未来的改动： “船长是我们现在正在处理的英雄，没错，我们开始研究船长了，他还在前期的工作当中。” 至于卡萨丁，ZenonTheStoic说Statikk正在积极的对他进行改动(从最近测试服对卡萨丁的改动中我们可以看出来) “我们有了改动卡萨丁的方案，目前Statikk正在处理。现在对卡萨丁没有一个确定的时间表。但是我非常希望，简单来说如果卡萨丁想造成更高的伤害他需要靠近战攻击。我已经看见卡萨丁内部测试的效果了，改动的方向非常的合理。” ZenonTheStoic还回复了关于泽拉斯重做后的大招的问题，用拉克丝的远距离大招进行了比较： “拉克丝技能的问题她有点要么打死要么打不掉血的感觉。这意味着如果拉克丝真的有问题那么我们没有太多办法来解决。她的技能要么伤害很高要么一点伤害都没有。当然她的大招也是一个特点，但是我认为拉克丝大招在远距离使用的时候很好玩。 我希望泽拉斯技能的距离和伤害让他的大招更吸引人。但最重要的是，即使在他正式上线以后距离和伤害没有什么问题，我们也设计了一个让我们可以随时调整的技能。我们让泽拉斯的把泽拉斯的大招伤害和普通技能分离开，让他的大招更容易调整。我并不是说当泽拉斯上线的时候一切都调整的很好了，但是我们有了调整技能的手段。” 关于召唤师峡谷的反馈内容 RiotForSciene来到了关于召唤师峡谷反馈的帖子中强调了一些观点： “根据一些精华反馈内容来改进是我们接下来要做的。 *小兵需要外观的升级 *我们需要调整一下石头人让他们面向另外的一个方向 *像嚎哭深渊一样有更多互动的内容 *召唤师峡谷应该更符合网站的背景插图 *草丛应该更有动态效果 *增加防御塔的伤害形式 *更多树木的品种 *地形和地形直接应该有更清晰(不是更清洁)的界限 *河道需要更具河道的感觉 *不同的地图位置应该有略微不同的主题 *走过水面和草丛的时候应该有一些特效 *随着游戏的进行，地面应该有一定的磨损 *树林里的房屋真的很反常，雕塑也没有太多的意义 *召唤师峡谷需要看起来真是个峡谷 *当你的技能打到树的时候树应该摇晃起来 先说一下石头人朝向的问题。石头兄弟的作用是当你下路的线推过去之后让你有地方可以补刀。然后这明显对于双人下路更具有优势。我们为什么在上路加了那个大怪就是为了弥补这一点。希望我们这么做解决了这个问题，虽然不是你们想的解决的办法。 关于论坛背景的插画的问题我已经说了很多了。那个图片创造的时候并没有考虑游戏内容，所以那并不是最好的新地图改动的基础。让低于更加明朗和易于接受非常重要。那个图片很漂亮，但是并不是我们想要的。 在走过草丛和水面的时候需要有一些特效，没错，这是肯定要的，最终也会来。我在论坛上看到，大家就这个一个简单的技术问题我们花了这么长的时候非常失望。答案很简单，就是我们需要先解决堆积下来的技术问题，才能有能力给游戏增加新的内容。这是一个比较无脑的工作，当我们有时间的时候会优先做的。 地形可以随着游戏的进行增加一些磨损，很棒的想法。我非常喜欢这个主意，可以帮助我们讲述游戏是如何进行的。此外这也是一个游戏交互系统，需要彻底的测试一下。我们还需要做一些技术上的优化，这可能会比较麻烦。 树木在被技能攻击的时候应该摇晃起来，这个改动明显没有让树木有一个更好的外观优先级别高。但是我认为这是一个非常有趣的改动。同时你姑且可以认为挂你的技能打到其他的东西上，比如石头和建筑物也有什么效果。”            ', '我们将于2014年1月9日2点-12点进行全区停机维护，届时您将暂时无法登录游戏。 　　\r\n1月9日维护时间：1月9日2点至12点(开机时间会因工作进度推迟或者提前) 　　\r\n停机大区：所有大区 　　\r\n1月9日维护原因：版本更新 　　欢迎来到新版本!我们普遍对新改动的发展表示高兴，因此我们在这个版本的目标不是继续引入大量全新改动，而是去修理一些让游戏变得单调的地方，好让我们能够真实地看到季前赛的发展趋势。 　　我们仍然会密切关注游戏的状况——尤其是辅助英雄——并且由衷地希望你们能够享受季前赛的乐趣。那么我们回到正题，来看看本次的更新日志吧!” 　　匹配系统更新 　　-在3.13里，我们做了一些改动，让我们更加动态地开启“不记战绩的失败”模式，来应对服务器遇到的硬件/网络连接问题。不幸的是，曾经有一个BUG，导致“不记战绩”的对局会显示为失败。开启“不记战绩的失败”模式是一个手动进程，我们会在未来持续进行改进(包括可能的自动开启模式)。如有不便敬请谅解! 　　-修复了一个BUG，该BUG曾导致“不记战绩的失败”会在结算界面和比赛记录中显示为“失败”。在比赛记录中已被记录为“失败”，但实际上是“不记战绩的失败”的对局，将会被重新记录为“不记战绩的失败”。 　　-对于新玩家而言，在系统尝试计算出该玩家的技术水平时，就让玩家体验到不平衡的对局可不怎么有趣。我们已经做了很多工作，好在改善新玩家的匹配体验的同时，提升我们对新玩家的鉴别能力。 　　-匹配系统现在会更快鉴别出新玩家的游戏水平。 　　在这里解释一下：如果你已经匹配了一段时间，那么匹配系统对双方实力平衡的要求就没有那么严格了。也就是说，在玩家匹配了非常久的时间后，就会出现一个罕见的BUG，导致匹配系统里出现真空，并将其它正在匹配的所有玩家立即吸入，导致不平衡对局的出现。对真空里的玩家而言，如果很快就找到一场对局，那么我们的系统会保证这场对局的高品质。但有的时候，就不会这样了(由于匹配范围的扩大)，并且还会导致一场体验很糟糕的对局——所幸，我们已经将这个BUG修复了。” 　　-修复了一个罕见的BUG，该BUG曾导致在玩家匹配了非常长的一段时间时，匹配系统会创建不平衡的对局。 　　综合 　　“长话短说，拥有攻速增益的英雄将更快感觉到增益效果的生效了。” 　　-临时的攻击速度增益现在会立刻影响英雄的攻击速度，而不是在第一次攻击之后。 　　-伤害增幅的技能不再对真实伤害生效 　　-受影响的技能： 　　-波比(【R外交豁免】) 　　-斯维因(【E苦难折磨】) 　　-泰隆(【E割喉之战】) 　　-神秘赠礼功能 　　由于神秘赠礼功能得到广大玩家们的热烈欢迎，在这个版本里我们将取消收取礼物的3次限制，您每日将可收到更多好友的赠礼;但每日赠送次数限制3次未变。 　　增强的英雄 　　疾风剑豪 亚索加入了英雄联盟。新英雄专题入口>>>点击进入 　　同时，我们每有一位新英雄的加入，就会调整一位就英雄的价格。本次，我们调整了“扭曲树精-茂凯”的价格。 　　原价：3500点券，6300金币;现价：3000点券，4800金币。 　　九尾妖狐 阿狸 　　阿狸在前期逆风时的对线体验非常艰难。这些改动是为了让她第一次回城购物或拿到蓝BUFF前，拥有更多的喘息空间。 　　综合 　　· 基础法力值提升至250(以前是230) 　　· 基础法力回复提升至7法力回复/5秒(以前是6.25法力回复/5秒) 　　风暴之怒 迦娜 　　延续我们近期的辅助改动，迦娜大招的法力消耗也应该调低，就和其它我们已经调低过法力消耗的大招一样。我们仍在持续关注着这位飘逸女郎，因此请期待更多改动吧。 　　【R复苏季风】 　　· 法力消耗降低至全等级100(以前是100/150/200))        ', 3, 4, 116, 0);
INSERT INTO `lj_game` (`game_id`, `img`, `game_name`, `company`, `time_to_market`, `recent_activity`, `update_information`, `list_id`, `list_small_id`, `grade`, `new`) VALUES
(2, 0x89504e470d0a1a0a0000000d49484452000000ba0000005e08020000001bb9993200000006624b474400ff00ff00ffa0bda793000000097048597300000ec400000ec401952b0e1b0000200049444154789c74bd679064d9751e78ce35cfa5afcc2cd7d565bbdaf7d81eef3198196006031020684082240840a46801524b51b1daa5b80c8aa11fbb11ab90448952802e08010b12038f71c0388ce969df5d5d6dabcbbb2c93de3e73cffe7826b307544e477755e6cbf7debdf7bbdff9ce77cf7d83ff707a95800080100030f85921011180ffabff19112a2222202222f04011902204428f00083c020252c4894001113102024205400008a0401121210022020200817f3d2022ff2614295008004af967430504e4ff0a0080c0889048f9770280fe57958700a0180085a7f48f4724220224e5ffad1421817f8b000040447e0bfd1f818810809422ff2ce1e7cabf3c00011222f8ef2032085e88c119180029570140f736836b81420a2f0400404a010091426000e4b72bb8674561b7f8f7a640218102404044e400808c87570e0e4345f0c117050300613b0110101802f8770b88c09001fa1d0680809c010012062707000011dc8ddf4540c0fc4ec4e842e00f09102920ec6d38920a7b135151f08e0a7a8108140110f8e38d8444c0c2be23603e3451851de777ac52c11515f9500b01410088c1d80583a0281a45007f00a361883a087a3011e1323861b7e7ba3d02448848008841d3d06f6c70ac0f752220440ce614f482cd1fd1608cc2eec52e3e20bacf101c8c0332ff50f23ccfb195e7784e27f836210122638c6b8c4b649c88c8f33ce520203204e4800c1183bfbb0d03a09e9f83ebfae8eaa2107d3c201204f80900e2230b213c2301800870127e99286c69d8bb61c37b0781fc36f863487ea7010bbe02dd2121f4cfe823ce3fdebf02034580a082a187701e03052c12cebaa067c32e46542a4077c473b7744d34eed83329425450cf87140c5c8895a0ef50459d8341e75370744fd7016308041e3216f60d866deef62e5140263e3f05cc0c1e290588c8380227b7d32caf358aab4eb5209cb2706b029a021c868a73649c11a0e791ed60cb630dcff464cee81b33fbf6482bc53543792e291b1003242132887003702b783ed01d40d4cb1cc137fc567fb0f38297f8e9b7822014b6bb3b39211c517ffc08801851ef57000246f55f5d7c10f54c2aff4e314046748688abbae7f407380a5518f099cf3714c51bb865fa769bfecff61262005cc45b7825c00ca142a2e01342429fdb109130a4b0e08a88fc163a23004220527e38503ed31011911f97944b04c81870ee342be5e54b54bcda879b234967a00fb37b58dc02061e972805530a95524c802eb8a7a0d5b66d47956be58dad85f5e2e9dd75dcb153b6b9373e7430961b639ae9b93622432e0597c8180122e300d46d6010edc1e7460c49d1170c082191fe2f5f0840229c11e1ac52e1e00513f8163e0b434084866e4c0f87197d94852c144109fd1bf4e35230c0e09f8bf9bf2af2350a42cf008481cf174a2a98c421708158f7fe086e1dfa6e9cfee00c0b70a2fc7bc4308af5448b4030f97300c3ae0efb3c647c4244f4693098c8be3c0a6e5a01b010d644ca43c6015479ed6a67e9dd61bc7974100e3c1a1fdc93e182d54a2d0048a4d3ba91f6c817490c81a3609aa6791e76ecb6726b8d5a697070775fb5693bacd1b2b7cb575637cf2f5cd5bdd491ccf85d7a3c0b6803134c48c60530e1e3867cc6b82518fabd10d26a801d2242605163822ebc259efdddc965bf0fbc886efd7819cdde404e22f91326e800f40089942246c1b8a2a780487980e44b10404222852a603d164c35445f9a0454a544a42982eb06ddede309234a53d168872782209262a813bae106309c57184099203a0f86f4e91f88a1a02420204f7583a352612f20917b0be4c299a8948ade03d59d20be3209c8452964bcbeb9d0bcfc9dbb0697ef3f3ea4e98c90cc844e4a95779b4220d7cd95cdcc4ed9f654cb079beb7a88c08466c612966524627a3e9f4e2685844abbbeb3bbb35d2ed5ec8ed771bcd542e3ecd5764d1ec94cde6324724c688c4b2675c625220364618c09129af037bf8b10fce00ac81822b2a061e1bfbe92f35fff4c30fa675fc1d9a977387c4a23442040201528447f7a05b0fca0f6f2bf1a4a5708025600080c3903bba952c0253e3f1100829fb5858a2952611f7c75e3deadd70e27176130e44198a328c65210ec6e3d5bef5901a02bf96e094601e848056986529e2f6337cf7cef10be7decb8e8b8b2d16c799e34625abbdaf114e9a666c5b5a595da2baf5faa5615e74c68c2f3c0b51d4d638c1163d2f394dd696b9a168b2747c6474687726323fba70fb07a75bdb0551002a6f62637b797de9fbdb6c58f64a6eed7ac94f21c2e75c675e43ecdb05b834dc02e2c8005fa8841fc694ee9f9cedf9d5c8ef4598f6ac4281885c38144e8f9f1025410e2fd1c40a10200051e0211797e224d144913159c39629788a2410129cf57904130f2e571c81f40884418e0090000940a3fef1d2b607e70a19e0ee96d71372a02a8907efd4ef33f8e041778ea7f91487b91e48fb0d2858f0ac593ea1e449e0b809eebacbdfd371f1abe72fbb1fe66abb3be52f56c4fd7c5e0686a60342535ad56efd8b6671a5abd61af6d3476769bd59abdb5ddacd41c26f5765ba5737d9edd89a7e340d06a746ae54aad5ed5a575e0c0d46d4747c7c72c80ca5661d1b51dd3302fcd145ebf14d7c69e88e7c77d8ee1d2604222324406820305f442e8a7532c1471e8a75afe78a840f9fa394a0897bf39b91c341003de862043a630d16100a0fc4c587559dcefbc504e30157e4111a8d02621600a88949f06b148fffa13df0b7ec5ae1822a228690f340d2815449900498ac0d74be180fb63a7406198eaf44c87c0860806980880a95e090f10c6c1b0c90a89883c05511f04a4c700baa95f9406fa6c175cadc7f3f05cd76fc6ca1b7ff9fcf4f2de914c69b7ecbaae11cb6aba96cf6b43a371c5bcedad8a632bd3d43847292567e03a5ebbe354abad4acd592f34d6b7eccd1db75675846e64b249cd90b5dd5d00d5a8d9adb6e7ba6adfd4c8a38f1c39b03f56dd595e595849a5e2a5b2f3c3b78b1bec5876df0342685c33b911e34243211191710e51ac460426fc8eeada610408e0b323f5644984c43ff1c52f47313e9c6aaccbe1a10745bd59643812147e2fb225c22e0ccf852c54b918eaf028530215e2239cc401345185091104390585592f85f610f5cced88273e08178c54e72d08ea9268f7070a04907ff71f0c45b71edc83955b8e0be01cca15d7654cacbdfb771f199f9b18cd150ae5742a79e0ee27cb8eb554a8d56dcef5ccde91f1e1a1bc63371cc7d6355d29b26d65771ca7d3d0a44ac6b03f2bc746628339198f63b3dedcdeae2b42c394aeebeaba1e4fa4b8a0c2d6ee95cb0b85cde6c8c8c4607f6e69b12019bbfb48ceab2e5cbfbaa4250680312042ce1119f3a509fa9c82880801b90458c1d05b428c8691fc1f1001fffafd6560619721f84e5c574f4028fac2642162170581c90b215c7c1fd6e70c15742857d495ab4af9a689cf49e805d92f064e0a45a2042012cb40a4028b80c278e907878008437c04d88de40804d322bc438818c23f5fe8ee852a58856cea0591884261157ca47aa0190af29eb7821c2a008b6b2393eb177ef058fc8ddb0e0e6e6eecc42d3975e7d3ffe3ebef9e3a7bade3b8002038f625e5338f1ff895cfdce7da5bab2bcb8c09cf539d8e6325f7814c30061aaf75eaabf56aa5d974da1d585eab9db9b0dd52bae09c81408640ae6d2bd7f5ec4e5b17e2b1478e3d70dfbef5a539b755d32df3e672e53bef75aca9678c545e18096925856e302e03b0708600c07cb209c46f9421f82fdf42f6652f21f18f7ff1cb3e3151380b430a0ea73e000539913fbb298c0b1f609448a32021fae97277a8fc24264a7600895075f30e1f52d86b7685fc11dc58c8343e4a7cf7b887f97a8d59c49ec01a013ac08a4fc114466a0008bc2200204600e827ede14c8952c1a8ad11f584c760086305444a29a51ce4a2b2766564e71f9f383e5cabdbe964fcf6079efcf6abb3df7df5ac6212b8c68449c2683ae2c2d5ed1fbc74617a72fcbee30777b6374191abf88b6f6cbcf9ce8d1bf31beb5bb6d4f383f9bca9718194cb58fb46d25252b1d2aed73a882838e752eaba814ab98e7dedc6eae676f3b63b8f66337aab5acc67ccc94176f1ecaca7e799a603103206888c71f4d985b1903902573c32ebc29843416f011002fff817ffc06f7aa836fc1e8dba0043c1d103ba4815fbb33c7c2f9a75e8134698a4f9b889fe2085ead59fe9bed7a282b413081420055319213812892210f82862b7a8730485e8678cdd2606cda51013d1ab7b50207a8950851c15899da0fd016ac31646d93900616f1211e5cf80e0d9adceb9bffaec73fb49ebab38e68d4df5ad97cebffcd60cd3e25c1ad24c482b298d8430e25cb33a4a7ff5f5cb86667ee4c3f7ec14d641a94a65676975a752ad6f6ceeccceccef949d786aa0bf7f80791e2a35908cf567cc46bb59a93bb6ad04438e4c4a2e25e79cadad154f9fb9363032323c3cb0552809c12687d8ecf91957e6b866000232ce1847c6193200602c4a9910315c310260088840887e7a0d08c0d0874bc813e100872f16f402f4c0e596a08ec1ea08745113820c42a541416e1c0947e5c726542ab07380485190530419b2f2498085900c479f583888917002f2bd81884cbba0f67506bb857bc26ff5883580ae39433e824339d3e5c8a8615184f3c9305c9c0c314304c8ca2b33b1f6fc9555f5f2fb85374fae9ebfbebd5976b916e79aa9c5d37a22a7c5fbb4589f66a5a499e052e746e2c49985be98f6d0838776b6b726c7b20727d37193154b8d4acd713c7eed46e1fa423191c9f6f7671828f0d4703ea96954aab5db6d8fa1e29c7baed28c98a14bd7b6cf9f9b23a14dee1b69d49b714b4c8de8972f5c72658e4b1d1118138c73c61843c63822806fb8300ca08388fed40b989a053e1fffd8e7ff20983981cb0911a3f48666ffa770790700c3501e889ca00f295cf1a33069262205402acc98888050291f2ee0cb1c05d152510820e88947ddb98b91b6a45e6477555938d2dda91f2d0e44070733418531c78f582ac8eb3182770f4cba4bab5d290f3df2253c0e7d11a43c04d664f92a656cd28871262413921b313d9ed513393d91d513592d9e91b19434135cb718d3849138f1fee587ef991acceba572356e1a63c3a989e1b8e0b45b69d90eda1deffd33733bd5ced8d478be2f6eb7db7183f5f569c562bd5a75745d139aa188217a9ac638e2b5ab2bf5a673ecd894a9a361b0f10179f1ec2cc50699d0182272ee6749c858f007438f0ec10f5581a4e9ca19e2cf7fe10f224afea9f9d7335af0538e57c4d27e58bbe50c48448a205cba0522f082d5038cfa5f51080aea012660576e8717a0ae90f02f47b7c285dd4a8a3df718394741d618106df41105793ef9e5018ae8832d078048d2ffd469e1d63ef14338792e1021174eabe6d92d649ceb9666a5f558468bf7e9f13e2d9ed162696126a491105a4c18312e756402646cf6dcf99f7bfefef2ce966d7b8eeb998618df931cc81ac5526565a314333405fab94bcb4aeafba646382ae5b4c6f6261a1da7b0d5761dd73405226bb73aae52baae2d2f6dae6f94c62746748da512da48569d3d7b9dc7068171868c09ceb8603ce05ec642a7d7e715d65d38e8c2e5639fff526fc3c3cf294a6814b01e2d19665a7e16eccf614040ec71e84991478a48a152a0147a1e900252480ac16344a0fc9f7d73a5072be10a9e6f9321f4165b5050eaa0fcb813643d3d8cd28b98aeff1cac9820f0c0880a718d91b94c51c8f157087daef15729944f8e1068ad50faff5486d9ed31728994f26c65b748b928a4d04c6958428f49232e8cb83013428f71cde49a29a4c1a5c1a4c685ceb86042aeadef1e1a8d0f6665adda4002a5c8752966ca917c52726f63bbe6ba4ad7cd9b0b3bf34bbb53d32383b954a35acf66cc66a759a976b8909ee7ba8ec31853cad324ae2e6faeac97a7a646e3164b278dbcd53c7f7e4e2407912167c838e39c73c159c02edd60eea7dc819be70f04017feef35f2664415f4150cae477b50a653f442cd2e36611a00a7d5b5f93aaeef2232a9feb952f50fc30e4f7a8eff4f9fc1fa204ba0413c420d58d2de1db18ea630c2b31fce29d104d61434361d265c3ee025b60032080efda4277c1340a887e940dea0d3e181429fa27e22d0a3c6c0402f282d8468448c804f7976f8426cd38d72da99b5cb7b8660acde4c26042430460021947264029ae995b4bd79e7e64b2b45b88a5c665ea3685aee48e64343694c926f5d542a9ed8065e8e5727be6ca727e60606a62b0556f0de4e2ae72d6d64ba615e7923306088a71d00d5929d596577727a7f6264c9ecf5ac2d99dbdbc646646903126a490c2972dbe3e61a12113668e61f9062100f0e73ef725028a8273371253988752980e44871000804741ad93f2c33e2952a01429c5480128541e2815942544fdee3bbc7e480aec168832f32ecb11742f454451b15b24967a4300f57c2d10e651f40a1bd38b1f0a85550f5202bba46bed44c12aba91108d41ec0e12748540c838000229afd36a9537ea851b8df52bded6b5f6c62c561773b4a10a179aeb9769f71a2b5fd71a0ba23aefeece39a5e566711df484d04dbf244f29071957a5f9c7efcab61aadddd6c0575f78f3dadc72263b94cfa6a9eda42c7db43fbe5b2aad6c1463f118a2b87069d12376e7ed5376ab95894bd7f3d6d64aa83cc7f13807e5da9aa633c64ac5cae676737a6ac494bc3f9f84c6e695eb5b5676041970ce84944248c68071ce58a07901959f2785cb734404c2af9f23456102d543e34167abde7cb87b0011120f3c2c05fe8a12050c83fe3a80f2fd3a9f5a020d10943585031c5873fe3a3100807f3fc148f778ff000a10104885e389dda1f59dc81036615a46bdef87d023f0eb0a20d0dda042e7987ab824c4d1adc0091baffc790000c808a053dd6e97365a1b97f2ac7cdb804ae8d5e9dbf6e77349d446d34929a158d9d5091897662c994ea4b3d5169b5f2e2fad96de79f7d2c2cda6911de15c175642e866abbc3e10ab6d170a8ec367ae5cd9dedeb04cf19d97ceed9bea7ff8cef154cc0552cf3e30f9767cf5fc5c239ec85896f9f2abe76ab5e6f34f1fdd5e5fbf6d3fd8b6ba7a635b938c1457ae835c48a92793b4b6baf5f26bb3cf7df870cc301e7be0e056f1c2cdf9d383071f709b4c08c11908dd624880c07c678e202c752415e4c624a86b298433ef56d9d8850802f8541d2cbab0200c29bf0a370af7a808c354c8870e05ce988a500261490e742b9b427f9f803028d88d461e22a98de1740f7425de7aa3fefa7868e901857009ed1a02ba25a9bb858120c28b4f5221c702f55c492945caf313cdc6ee6a6bf9e430df3d666ddcf5d8a18943f70fe6c0866ca772b358679e53614e59c4b2a93d0717d71ad7ae97175657d63767360b5bd469e9d21de8331f1dbec1e072a1ecce2e0dc6c6ee83d5379ffaf9bdaee32a90bba5aaaea96c3ec1b9b87c79696965ebc9870e1f1e192c6eac3f7474d8d0b7dfbf52d2b8eccb664ebc7f9d147dece9a396296231cd753a576fee6a9ae9dfbeae9b6daf938869674e5fcbe5cc271f1847c0078f8f6ebf72a1b296eddb3bed0a213947a931c61813e4979fa2bf900ca8400178004c81e8a1930f4224804d58d11c840de52b157f151282904f008a402152881b5f9804d5dd140cb462aaa79295bac2c71fe268e4ba6131a4220c6566c84c9152515de7ace7d6814545bcaaa73151e80b611005a6deef461fe1ad3d13c42ee5fa7574eba75eb82d76e3677fe6fe91e171cbe40e1fa2c6cc4ea54f17ab9de64ea7332cb856688eacdd2c9fbff0ce8599f99d62b5da684974c787ac3b0e0e4c8f0f0c0c245bb6b7ba595d5adbdd5ddccdc0e61ffffabe4cd26c365b89dc415b153db7a3693120eccba68bbbd5af7df3bda71e3f7aff91a1ceeacab1b1aced7a67ae560c3d99ef976fbd75a9d968fdf2cf1d8fc7c5e30f4c561a6eb9dc72db8e11678aa0d37119c3fefebe1327e626265219434fc6e3cf3e3ef6cdd7de6bc5e39c314d934a0ac111097c2b86282c0e40a0c01525feccaffd7e57cc057c10d176378124df52532c50b8beec54e4292245bee60d5cd970299f08292a820252c48814787e8e8de135302c728a4606bb7410dd6f04087f7d21341429820104191a44422b92ad114ea2110f30a742bd12c5ae30f0844e3284b408e08b7445ca45c65dbb517aff2b7ffc9cfadc679f8f65064cbeb6534f276441702a94654a6e753c39bf59552e140b2bccd9ca58eddb0f669f7878ec43f78d3e7adff83d778c0e0fa753e978c786cb370a97ae6f964aadc7ee19fad7bf713c666abbc5f29e3d535b8dc11fbff5faf0c880692600a1dd7635c993f1d4cce585baa38e1d9b6cd7ebf994652b6771a988cad575b1ba566cb6bdb191344366686c69a3ec7a2034cd734170ce1019639eed2eae6c1f3e3aa0da3434908a89c6c5ab9b46ba9f7121a4e45c72cec2b5a49eb2280856fdf833bffaa570b2fbecde75a07c4d8a7ed009924ddfa5f0577c28482d22a0815f23151afca008981f7314117918a61a08bee40d62018f263645e5800461954bef1ddf62a042048dc8a8eb1edb3d2a9a09d04374bd9ab9474af55c0e21a87bf63bcddfeaa05ce4d269d7dc0b7ffdfffecec4a38fdd796d950bb565e9eec9d3b3234346b5c594e7a5b243656faf6aac25f4ca60bf39984f0e0d660707d2998469694230225749ce32092b9588f5a5acc307069f7ae4c003c747ed8ebdbe5ecef4e58cbebbfee97b2f394ecbee28cf23bbe3d89d66263b686ad46eb5676717b6cb8dbbefde67d71b7d49b358adec169ba954c2d0b5a5a59d66b3363d3520054754d5b610dc22cf418e462cd669370d432f6c965b8e7b78bacf6d7af9fef8e6f2e24e5dd3630921a490920bc91867c8010818f3674cc41bfc99cffe3e06819a07161974273080ef8e40500113e28894a7142705441c141231000e8a4503132a84c056098bbc957f69bf1cd31f0e451e8002f4694685b9929f3e01760b2bbb01a10b2950a1ff41c11219508489f00bdd1fc3aa39159888bd68a4de4b74df0918938094074c28bba52efecd7ffb37b71d3a3a51a9b66f2eac69a23338982d379231d365d0be74a3d4a114352ef7c5dc642a6d597100ae142023ce814b8e52ebcba50607738984e5ba6ebdd6149c691ab75d65db0a11127de3df7dedc2cdf9ebe95452d744add6f05c271eef93cca9d5eaad66c7d0c4e2fc9a4378c76d135ebb3d904faceed4da1d3766680c6171792b1167e363fd71436bb69be53a243259865eab56654888923151d8aa6572563a2e5b4d672067cc5c5a948941c185949a26a5e04c72c619700016957b2101107ffa977e3760e3a02b7b44858af20908437cb85d23a2f7b0ac21588eee1ee317da45270015543175cba3a0cb1f1826621894aaf7924af851a86ebbac716beddcadc66e58ec421f78878238d34549483710189021c146b14e11298580a4dce6d9bffbaf7f7470df91f17aad499ed7eee88ca30283717328e7a27508790a9b17fab3a695485996c91090a19408408552fbfd8b9b5717cb3b75d869289b69a8e9b1a4d5df9f89c72c4d687eb734db8d4bd7e6e617376bf5b626657e30ef390eb9ed76abd9a8b748290f50d3d8cd9b6bb144fcd081218331c7f336ca044e83a84da86f6cec4e4ff5a712b1b821d63637cbe51602b61a552984267560cc7355b1d29a9c487b0e495d306aceaf76cc649f90926bbae092711e142d00faca41011221fff0677e1b7d06b9a5ef31d431d4e3916058fc164946d6553710314aa42642011ba887d0e6f3c78645a9500017ec0917a10f07818ec0de5011662eb78425800fc0a527406114c9141001ebd1b5d1fd50887608748c82d0faf31c1b8894ebd467befd5ffe70f4d09dc754abc938359b6aaba44f8ec5daadca9973a7737beead352dd3bd383098e65293123967a43c4dc2c64ef1a5b7ae7cfd9b274e5daaad6fd70bebeb3bdb8de5f5eaea4e6b75abb95d6d2bc6a5e096213dcf25db3e389ecdf7c777ca8d4aa5e3b4ed6c7fc6538a0b53d32d4f2952361131c9179676a6a6fa731953002daeef94cb6dd3445dd78ba556b55a3d30d99f48c43401576faedb1d659a66bbd5d2246f369b045eabe525d3d6507fac5a6aa492dadcdc1a8b0f484dd3745d681a17129031400ac625e848fed42ffe7650e6d88def51119aff6214da2781e4819e0a8400678126a5d02aa1d0c9ea9dc6be64841e0b3d726043c2f3bf89dd73078bbefeb7c33db9f0cfbd6edd24f381637a1111859b0fa48411568088c843c6ab8b172a975fe58941ae19ade2fa50e3cd673f7ac0d050c6625c8a46ad7361e6eac8506ccfded4f9d9ddba9dcdca2b864e000c1184e0e4d99ca90bd757ffc757df79edb5eb353834fec897b2030776b7d6ec7685336648d16cba4b2bbb1b3b8dad52cd459e4a25c8715bcdd6c4deec50ceac345a2beb65d776774bb56a5db46dc698d025f940541e6d6c168f1edd6b30f2943dbf529592bb2e092e9656cbe904df3b904825ad7ab335bfb01b33630a1479aed0249257abd6768aad03d379e6bac881dcd6e26a239e191042084de342f8e5bdddc51f0022e21ffa85df010050a0c08340b3f845a910841585a1f91625447e9c8a80e20f74b04b0fc2d45551a813a35cd5cfe8c3a1ec96920062d77d09b11a8d5fc810d433a8e19ebb68ada0bb212fcaed200aa4d4e58e6ed40959af67c128d8ce44ca655c96e74edee9bd5cd95e77fb8e28cf56aeb7516167dff8d191495368ba158ba3722f5dbea9c89bd83f164fdd81cdcb9924798a11295dd7045786955adab2befa8f6f2cccef8ab19f9dfa993fa1d1bbacfedb1399036b0b73aa36974ca5345da6d3b14ecb1582adac6e6f97db89be542c261b955a32664c8d6608bd13a7e7ae5edf5e2fec6c16760a3b95adad4aa7edc42c619afad2d29621f881c92143f042b9bebe51b52c13913326d70be5e9c9be8429737db185b562b9ece81af75c3b91eecf0d8e2653898df56d2e60ff54bfe378f97ce2c6f57530f352ea42ea424ac6053286c8fde2217ffcf9139ffe4d8a56eb23c20ff447187d0295185249d4d99130e9e6dee85739053bc92958fbedead5d02489367e84e7f70550576ef8e65e9020752b176ea18df02d0a75c9073ef6cfdadd6212545c46fc17363942251191e72297e5a58b8f583f3e36997ce51293a961b7dd04e4aded9bcfddc16e3b3ababb5b54b6d3974919baf6e63b179aed41d33092c62682f4d30baee995766c7e33feea1b1735e13a2da73cf649fbe03d2babb05907c71bacdd38ad3917e2893843b06286614ad7b6b7b6aaab2bdbabeb3b436323b95cb2b8b5ebbaeef4e49061c8cb73058506930630cd657aad0dc5624d97c805db2d360e4f0ea5e302d1bbb650f45c306296c6b1546d552af523fbf2a994e578dea5abebc9645a18d985959d4acdc9ef39307de0e8dccde57c8619520d8135690000200049444154c60cc353cefc6a239eeee742086970a1732e28ca73899402fed8a77f93804805438518a94e0600087e394a50541b96e2871a35d01aa1af4fbeb91ea437b6ddbef1d6377657ae989921640c80f9d1240a3d014031ac78eaaeea44767ec81fc1e806b98f7f08760f84ee6a640f543e082b1f7f1fc89b20b40e7c96522e01b42b5b835bdff8bfbef4d84b3f9a39bd40c24c7876ab3effdebf78a8f9b99f3bae38cf65fb16165713b1c4f050df507ff2fc6c913ac5a11c228a96a72d6c7a2fbd71e39557cfbcf7f6db0ed942f09ded5a3d7d9f397cb05a055781e79233ffaea966d27da9583c6e773a95e2ceec95cd1d3ad2f6ccd2d6e2d2d2066ae6be7d23ad6aad516d8d0f668606e3976eac834c09c312bac58d18c9f84ea9854e1b38e433b1d1a19821a8506917cbaeae4904cf30f4c24eb32fa5ef1d485ba6d8d8ad972a6a657dbbed41c771b7b6b7b7b6b75d87d56af5e98974bdda8927f4b9854d66e4846e4aa973a9332e18e30a5994ebf0c73ef51bfe8c672cd85f8808480c1081a2e2d6600207c40014048090dd6f19fe50012c9e7ef913c3efcf5f7af7e66a3dde37c4a586611531f9ff054416495a0a06b40b81801b8802771f22afb647ab8457fc80d48d201339495d310b0080ec83872b459e878c55cffec3fff3a563e94ceaadb7672f5c2f2abb3e82d7fff4d7469e7de6d8a9ebf5b9c5dda9bd29cf56562c2604cfe6938cd4a5cb0b5ce2a585da775e3c3f7b7e7634cb9f7860e2de3b478ba5d2c666a9506c940af0f0d0e8e4707ab58f75548daebe9de10bf981acf254a150ba598835fb3f953cfaf944fff1464bd62bebcb0bcb5cd3f64f8f789d66a3d19a1acbc513f2fce50d2dd12fad94d04c2e746e241a1de5b42a82f163fb874d9d08d48dd59626ad7832c7b8648cadaeefdc766030111328f0dd5337da9e2e0d4bd32da99b28b4b66dafad6d1ddd97e7489a81d5467d63c7b352392e0d21752634c60520f31fafa188f8e39ffc8da0ca8d824d04818d8908a81453a882caef5e15e2f94f5309156b2040fc398f4008ca73cb67fefee3cf1df8de8f679796778d44ca48668566845b29a3088600ca5fd705a4e0b93041186304e4c7360cab621484800a445137f5f9004a7a28c44fea0236c2ee7d2b0c635520ca3c9733565cb8f8f387161fb8ff60a7dd9918cd4ee4e0e30f657eef73f7a67389afbfde7e6ffbe113e7ddb3274ede752437b427ab3ca53cd265677ba7f4d6e9cad9533377ed8bfffa671f7be2c93b8786f3fd037d470f0ed99dd6ccec5261fef4f28df3dc731a559067be76646065cf9ebc2641d3b1d174d7063e977ef0b3dbd584c8e4e2d97bb616665362b554aa172b8dd1b19cc63ce4b87fbc0fa9bd5bd8e69c299192560a917323d6eea89dc2faed874673194da0b758a87b72b05ca3e5b5ad66ab55ad35e3263f34d11733f58b37b66b1d4db712463c6d26d29a6999898c72bda91cd774c60493269f9bdbd112fd423384d485148c8b40be102845fcb14f7cd11f393fab0daadf820715447e5da00221f0ec4905ae1876f52f066c4f444ad195d7bffac9bb9d16c71f7efb64a50d562a97cc0eeb56823116ee6b0e045310e6a2f4b94b1c2cb82d8c2c19a268d34284088a6ae4c2f7a235829e3f7e4555e0bb00831e8f4e0515158136ab5ffcc6973f7b389130091497fcbe7b27f71fd8cb35797666f5851fe7c70e3cdfb227df7df7da871e50e31379bbe374da55a9c53203c74c2dfee8f1f4879fbe3b968a379b76a3d9aed7aa007078fff0a1fd831dc75e59beba3e7fb6bf7a6eaa6f6b6cd4320d4f6ab2556f968a4d7be2396f78746b012a36781e6fdd7c25813707fbb34bcb3bc572ebe8e111bbd90050e363595387bbc634ea54b72a9e88e510911bf16aad2954eb9e63630cdd6acb7de9f52b859dadb6ed346d6a349d9dadd2d1fd0383b9b44275f17ad948e5cd58ca4866cc64c688a73cbb717c3ace2598569273d8d8d8addb966e25b8a673a92397c0040173151029fec827be10d41d05e216297c184e50d4e857d8fb4b287e3d2f05c129b258a2a94c044aa9abaf7ff599e1cb7b0e0cbf7fe2fa8d6b6be50e4fe6f664f7ec93569c3101c831f059baf4101684defa3744c12462320a9324ec42e296ad6a21a174cbbf83aff73844b724e4fe8ea6d2caa5caf225e0e2a03cfdf0dd7bcf5f9cff876fcd7ce7c7ebc54aad2fc5fa73f1b9f9edf7dfad643da7555e5b593c79ff1d303a9c751d5b9ac3bbed6337e616c7fa0b6363e976c769359aed56db975baea79c8e3b3a9cbdfbf6b178dc2a6c6f27132c9ed4ead59a90ba52502f57aa6dd564478f6433120c2fcb7406adabdfb3683116334d535b59dde938343a92dedaaec6e39aebd8db3b8dc7ee1cda93eccc2d14949e43446124e66e2cdc7f64249bd1ea8dda7be716412498d0846ec958bade720e8ca5c786fa12317de6fa86c332463c6926b36622ad5b09044ac5e1c891f16aa59e4cc46da739bfdc309359a91b42b39834800b40e127c7fc918f7fc14f8a832d6351aae36f960d6aaba24ec6a8b83f14aac1d1014328b8f4f2579e1db93c3c3d74e2cc42abd6bab150a83b3233342e846c2f9f282e9dafac5fdd5d9d43cd12ba85c089411000a3ac28c44ecf7e95409ea850a72af28af3a73a2b3f69af9f6fef5cad6dde6c56ca428f31a153444f3dafd0e1ed15b9fefb81da6aac9c611b3f29969b770e37197207f456a75dd8d87cf7fd6be766d619a7f1d1bee5c5d9bdfd9bc70faf26c4427977f7c2b96b172e2c5eb86a9f7cffc258fff6fee97e00e6381d22d77559b3ed369a76c7f15a6db75c6b9b9a3cb2af7fffbefebe9466695abdde2a14769badf6c8e8e0d64671e9d209bdb43234106f5776767ef21f61f7c4e0404a72c775bc56db5b5e29ed1dcb8f0ec5c8b5f3197365b35eab750e4e648fec95d76f2c3731c9b8b46dfbc14399beb490925f9b2f165b9ab492c2884b23ae69f2b1c3d95c5f1c006aeddadc9a63a5f27a2c69265252378d58e2da8dd5f191745f42b49a8d542a76617655c67242b3846e71a9019384cc035484fce1e7bf10ed9c4745e1aec020c433608cb3e0314a14461b7f7686cb81be67e1296fe1fc6bee85bf7e667f353f3174e6d2bad3760c5d5cbfbe5173b5ecc8346c9dfbf5a78da9bec6b13d9d44e76af1e24b5be75f5c5b5a90a921a999fe8e050a6901bb7711adf441c02c0844505eb8f85cee8ddffac5d1478ff1278eaafba62afb93973b4baf5e99b9c962835c377fcae405a21e091385b2608393b22b1b07acb985f99584a17eedd73e323ddd7f702afbc8fde9bb6fd3a5689c3879796db53890d34c7d7b6a5feeb6c37bb2695393a09cf6f6daccdac27b172f5d7bffcccd52b96959a6d0d2c40c868e265113a86b1c11b74b2da5684f7f72726ff6e8fefce1e9dce4de3e22f7c2e5150495369a8bf39776d7afb56fbc82c5774606f56c5a9a56dc71115121c0d64e637adf00781e633cdd9758582d0141be2f79c754ecf2d5f926a598db7efea121044fb9deca4e7d61c3d11359cd4a68564a539d8fdd9b173a6fdab6658913e7d7ccd4b03463463cad1916e35cb352274f9c79fce1431200016f2e6eb6545c9a31a119428b3126894920e629e20f3ffff9eed28b8f955b7207bf0c2830b4fcc10ba54a94ada0d36ede7cfdbf3f3974fdf6a37d5b0dfbca8d4de578c9846559c68df942b14e99a18966adca6ad71e7ae276cbb44647f377dd3672efc144bc76f5c46b3fea88b499cc322ea29d8581e712822424038ad4717573718ade79e8f17b0786a79389bec1a191a9c9c947efdf7bcfd4d2abdf79b1e1e5b5588a71e95355208f02af88c22d6ae1b657cf25805669eb586eab53ddfef99ffdd0edb7e70beb9bed26792eb78cccfe7d7befba63c8f5b65e7b73e69d13eb6fbc79797eb9baffc09ea1a16c2299181ace4fef9be8cfa54ae59df74e5ff8d11b336b6bbb7d2999cd58714b23459eeb71045d60b9d624e5353a46cb76633a0de592771d1d3b3295af34da5ba5fa602ec6a86a8ac6c8de4c266dbaaed36c949b8ed5a678abbe6bb7da28e5e1e9c1dddd56269528d7ed4ebbc39052c9e4d189f8fbe717e286f689c7865cc726453ba5daa5a5869ec80b23a6c5d2e836ee3f1833e2bce32843b0996b6b36ebd3acb86ec5a56e71290140817eeed499673e7ca7e7b437b7b7d776c08865841e635267520726158022c61f7aee0b1179f7d69d50f4884a1605050a538be067ffdd5a716bf5f5fff20b0fa0914b9e383db7b559969c699a105268925fb9beb15ba34476303b7edbd99317c7d29df1e949a7e31a312b91ef3f70db7e43d55ffedecb5a7a448fa5b8d45494be60b86c10a025fa1980884be3b51f9db4b74e1e3e3aaa083bada6ebb99eb286f7ecd5bccbdfffde792db947c6528c710acda40875bd8510fe5a3300d8ad7a75fee41ffdeef38f3e31b93cbf60378931a614204acfd518269b35ef073f3cd9762c21e5cd9b9bcbaba544d2da33dcaf6b26214fa5b3fb26268f1e98eacbe8672f5cfcd6f74e5d9d2b6a863134902402d7b61bd5c6a5eb3bb56aa33f3ff4ce85f6ced6cac860c2b13b83f9d403b74f3006b3f35be313c303b984aef376db69b6dcd51d9d0d7c86a7ee6b36b63db7bcbbdbd8b72f3f988d2bc7d50d56ad7bc329a3d36e58962ea955abb7efbebddfee5475a939ae7bf6da2e1a596924a46e31237deed2cddb0fe55231c3739dc24e71798b8c444633629a6109a903e38c8962b9b5b174f3f1876f2b14b62e5d2f9aa97ea1195cf3bd41a9507804fce18f7d3e9cb60cfc45b5e021170408c802630d90f9d33d0af90a10008bebf39d99bffbc5a772855aebcad5b54ed38e59ba945cf8d5361cafded8d8aeb8a9febde9c1716666576767eebc63c2b4a4e7b940ca8a997dfd7ddffaf65bcd0ec4b3437a3c038c852a381ad280eb829aaae0ea8a44fcc4eb276e9f9613d307144944868c197af2fca595ef7dfb84b0b256768fdbd876da75612629a01980088ed10a0311029697af3c7c40feea2f3f52d8d8ea34391712007453731cbb5a2adcbcf1d65ffee577afceb58687076e3b3a71e8d0c8f2cace8baf9e2e55b7f74d0dc70ca3566b743a6d04dc33b0e7c8817d08ed577f7ceac557ae4c4e0cee1d49376ab55357ed1f9daecc5c5a383a953837bb7b61e6e6f123f9fee1e999856abb53397e78386ee9afbd774db95e22156bb6edadda70eac01f26879f4ea6fb137d07ca15afba7b0dc03d323db0b9b11d3765b1e9664cc334c056cef860eaeafce6bb3385a307065af59a6e98a72f6fda2c238d84d02d6158364f9e3f7df1b17bc6354ecd76f3ecd5622c332875431a31a19b9ceb002875ebc68de5fe341b1d4ebf7d6ac1480d0add127a8c4903b8062814217fe8b95f0fe76fb41acb900090a162e41172adebdf310046040a982260a4d4f9effec7c3b9ddd397165f7df9b46bdba9548c7126381792eb9a90925fbebab65d76d30363e981b1547eef95abd7c7b3b5e9fd639c31c390baaebff2dac56fffe0bc1e4b5ae97eab6f88090d9007e64db0264ca1871ca8253f01e3bad968d3cefcfbcf7ff46e2eb2445c4a231e4bbdf4e2c9377e72434fe4f4e6e2cfdeddeaa7b3372e9caab5752dd1d783420aabe908108bf3673e32b9f927fffae33bdbbbb5920de0714942d0e53333abd72e7a9d1d17cba64977deb13766b81aef2493d6d0d080a95b3f7977e6ec852bfba7f764fb929db6e3b86ea3d920a5c6f60c4e8ca54f9e9969d4dde9c9dcfc6ae3c686948c56d7b71bd5d2c8205b5a2bdd76686ca39afdcad75e5e5e5f352c76f7f4006370faca06ba848c5ce3c1fd77fe6a71f55ab1b0954c4e743a7a75e387407478df902e84632b57b92d9b4d0c67ad94954e59d32399bffff6e542b1fdf8dd13aedbb9b654de6dea3296e286854c322e1bb6589ebbfae8dde38e679f3cbf2693434233b911e75267420386a49466a54fbd77eaf107c62f5c5e55fa20d7634c8ba3349119805211080a65820f160500e401320445020038788a01b35bf5b9932fe88d79608248a94e0788148331b3b85b05c7f6f6ef1fd937b5b7dd6995cb0db48831504a00f091011d859d90d7bda5558fc923e34d00fbdca9f772fd93846c79f1ca2b2ffee4d1fb1246721777bedd38f92608c355506d59c9c31fef1b3950b8f29659ba88e0fa5bf15172ff699488283c6f9097f70ce7b60a85745f967343d3e4e2d2c2eafa85c3fbd35363ce9ffdef0f1f38b84fa9e2af6f5efbdab75efec79fbc9338fcbc991e6448c878b43050bdfefae71f549ffbccb35b85f5d2768971324db1bdbef1edafbffaa3974ffef227268f3ef728a4ee9bdedf04f2caa5e2c6fac6f2fad6ea4ac325f6e4e30f9c3d77f5fffe4fdff8adcf3fb767a0bfddee789eeab86d4fd1d8f0c8fd771f3a3fb3f0c6db23b63eb8bb5b78f2fe7da5e2f2a9cb45cf53cf3e3e6198f8f56f7ea35e29ced7b0d59a77efb39f79786a69bb7ae2d4a2a5eb468e65b051f04a955ab953cb0822cf71b636776766969f78707aa754ee33c59575fbd22b8b8bab9b9e62523010c6b9eb8df3b3bbf7df95cbf7e9d7766c7f6630a90129b36f7866b9f8dabb376f3f904dc494eb745cd7715d5b2945c8b91697a6d23dd2068efced3f9e725cc9b8f02d1552ca531e2aa500bbcfa60b6d098cf81e95ff604722f01a956db372ea990747b64b6dcf75a8dd21f2500810390f1010386304bcdd69718e00444a79ae6bdb70d79dd3cf0ea6faf271ce8033a6ebc2b6ddedc28ee3dac8b5a13d435ffabdcf0c0df71ba6850c84d4b88c7924fff4dffdcdc577bfc31ff974a2f0e3fff0e5e3666ac0715c57b565cce45243f2f37c46804446abdd765c47d334d7f59472bff8f99fc9f78fe7b27b35ddd8d96d0018a9f45dbfff9bfb9e79fccc9fffe7af2cac3e9c9b3ece750b19773b4dfbda0ffffde7a7ee3b3eb4343fdbaa3775c36835da6f7cff9def7ef38dd74eafdd75c7e423cf7e2c3739bab9de705d4b799e15d327a6fa87f7348e1caa7efd5b3f79e7fdd983d3e3ef9c98fdabbffdfeef7df1139964a2d1f410198012922b121bdbcdb7cf6e9251b22bcde79e386cc5f476c7be30576bd85cd7cc644c359aedbe74626dadf1d2dbf3f9fed8279f38707d7e7b73bd8ead73f5f8dfdc968a15870fa5c7a7def9ce39dd88e9269b5f2e3f703bd92dd7d444adbaf9b5efce7223ce84e49ac9b48410da37de587cf0cee1b1c1f8bbd75bc1f20917fe939e537b0e7dfdf5b7a6f726f764ad9bad0e1178aee77a8a2be0423023ce5c2796dbbbbba928dd41ae21d70890882945aee7120ad15bde744bea8908be39478a147ab6edb63b1b85f2fa4e93f91e1d22804d2a78b8b4e751ab630b8686a171c6b9e08c334d722b9526c51b552f954a19ba2504b34cb177640a111429c6986e185237a426a5e48c4bc348214320adb87c65ebc6d911b7951cc8a606f7791e22324286c4822d1de02970c9f552413e6713413e3f90cf0f3146b6ed349a6d3fc5aa3a882886f71cffafff61e0bffdf59b5f3f5118befbd9e6f6d23163f6dffdc523bad69e3d77c1e9d89eeb5e3a73e5a5efbe7bfefa66c5d5ef7be0f0bfffb79f1a39b47f7969bbddac2bcf755dc7f3142280a2a5e5ddb3e70a37161b8b1b042273f15ae96fbff6ca734f3dd09f4d03806074faec8dd7dfbaec11bf39bffce0bd8ffcc22ffdcbb5e565e1de39359e595cb97463b9e8a09e4e0ff4e579b3d970dbb5b54dfbececce471e9cfcf083fbfefe9be79cfaa557dfba7264f2de7d77dd73fee5ef3bed574727a63b95a59da6bd5d6ac57459a937077349a1239306938634e34cea4c1a65b7f5dac9957d2379a4b970541913061312018c3d777eefadd943938357cf3409b952a43cf2080018725d1849e97a898171bbd52000aec590eb7e61ac5240a84420f898efe5477e9c9f72320ccba95ce5edec762e5c5cd92a354c4322c34edb2320531714e045c52d3132da8f8c73065230293900dab6974cc6354d203222e282d7ebcd13a7ae4b29fbfae2b138da6edb716d60daea6a6b656567fff4682a955adfdcb55b4eb35c20adbd787db936b36118a6d02c21a41533b9d000c0f5da9eb2b9944b8b1b1b1b45d3320d531f9fc8e7b2492e4c210c86c26f86222250cad563f1639ffe68e3eb5ffb4ad1d9fe3f7ff3bee79ef974adbe7e7366ee3ffff95f2dae97db1d777eb5b96b637e20f9c8dde37ff4e58fed3b32b1b2b2eb743a00e4ba2e43e0926def54130943d7f4a121abaf5fbb3edf76785ac6d2ef9c5f3b7fe907e3237d424a4db08bb3eb2d0772f9bea71f7df6cfffecffa86eed7df5854b9ab9e7897b2657460f9dbffaeecaea66a96ca53309c3d4b60aac5cddb934bb7bc7e4c03d8707de3c9529ed34cb95faccf2e98df67fca0e783a5b761b6d5dd777b64af38b9bc78f0d716824349e4d5b15d7104642c6d2dc8831a131643f995dfc9dc38396ce8171640c90312105b70099c1f0e262a1e154999600e04aa1ab802b42e4c80035939b4a3001d20442943a0a8350f3fc9d7c08a25bb1a4ba163b85cf68f0cd792214466207f79c78ed0ddbb5c17f922c63becb050084a891f7b9670f1c393a31bf501008a6a95b31bd5eef146bed8347c69bd5a6108c313274f1fa5b37ffe42fbe99cdb0dff9170f7ee8994776b7dcf3b333afbd76f1ddf7aa5233910b2225383332c3aed3b959d3fee597fe7e6b7357d31800ea925996818c11a222f20009b15028171bc1f2e6effee67dbffb3bcf18f109214ccf5308a0e99aae0960d8a8d53756565efeee854f3e35f1affeedafc4f5d8f58b67af5fbafefd7f7ae9ff7b7dd333e2c80d9ec80bbbf5c83d7bfff4df7c323d985f5e2e79b6138fc70154a7ddb0dbcd577e3cf3c2f7cfffdeef3e75e4d0c8ff36f8894ab37661f6c6dba796e6d63825b39d8e757e765381ea4bc7f20379cbca7ce4a9e77ef5977e31d319fef637d65c5740a7bfb8bd7560726228bff7fdf3ef64b285db8e1c7aeddd6b773e7cff8bfff097973defeadce0bd77e727f7a64eed76a626466a4d07c5a2d7b005741c8f14b90458aedb1e718518334432a1d52a42183169a58495e242e74216761b3fb9dc11464a71098c332e904b109ae41c881223c756eb4533ad08183049283ce2a8c0d773a8c5384a1416298528800b640290fb3b3d4558e6183cbb25207c40208e9c21637e0aa11989e97b3f4ac84b8565d7e90001b068ab3a2132d52e1f3e3cd472dc7aa591ca58449e8fbb76c7630c585026e5b94e7b6e7e5d9ab1e97d894f7eeade5c6e747c68ecf85dc71fbe6ffee4c9cb274edf3837bbdab4139a95d06229a1195adf3d3bb6d1b1971b4e2750584d45b7fc4f35088c58326970cd88b3c6473efa64fff031c73689903154a4b677b7c9f3b6b68bdffcda77ce9cbc726379f7e98fde73e6ad177ff8c2fb67cfdfbc3257283926c6fbcc644e8b65b853f9dcf3777de9b79ff298585f2ba152a4bcebd7966fceafe532c6bb27e7befa4fa7db1ebef0c299dffa8dc7348d2729f1c83d771dda377e6d7ee9e2e5f59b2bed8a34eb0d5718c69ebd438fed7df267867e7174eed0ea461d0b0b0793c8996c6fc87796671a156f6034f3733ffb91f9e58dcc9093e84b9367a3e0d7972a470f640e4fe54e9c5d5780ba64f5f27a8771cd8cb99e270075d32ad66cc1b1e9b18401e9a4b556634ce8dc884933c9750b11b5fcf48bb34ba00de85c32a1a390c838700920850904c88454aec3359d6926a1df4a6280849c10803344e13fe9941857c850a1424224ffff38e21b2bddd53e4400eeaf2df2c049652c9ee9df73e0783c3be4b41b4a294062fe93404871298b2bd71ae59288a5fc94ccf33c525ea7ddf6dc8e108271ee790e43e63818373ac7a6f9e77ee5814cdf58bde622138610f7dd7fe7ddc7eff8d4e6d6d90ba7fff61fdebcb2aaa586f7c5f37bb5583ac7b991ca399d56f8cc04e59b6b61424c5c1a0064ba853ffbc3a73ff4e17b4b6505ca610c01585f3af5e61b6ffec55ffccf52a5bdb6d990468cebfd2fbcbaf2e24b972b2d6242e3c61e2d691aa97e69264652f61f7fe1a9a79fba7dabd42c6e943cd701f034e9bdfcbdb7befac299442a56a8d8c24c9889f8ebefad19dadb9ff9b97b25c376c74918c9bb0e1f39303ebe5d2a2faf1596d78aab9be59dedc5aabe7bf3e2c2dc85b5526dd9e26aaa6f0f725eedc0cc42e37a695dc0c4a5ef267f70f39f068f4ecfcd5ceccbc5327dc9d5cd62b53a3c988b591a6bb53a88506d7bc9bebd1d8f6cb5d36ab69a6dbb95490800d3e466cc4c270cfff1f18c6b5cb7841e678c716108c3723b0d0414bac9b88e5c2213c8fce7ff7057e88c3c44cea5855c2344153dbe040039f777bd52b08ac8fc124aa548f80fd080e829a3fe9222970c3910531e024305404c58c9dcc0f891647ed8e9b494ebfafb67fd8548448cd7af0d663325e524d371f01c29856618e5e23c6183710644408a7341c40e4e9977de7efb879f79b2d366c84008cd53d4a8b752a9f8e4d4a8ed523675ae395318d87f8f194feba99c99c8c4f37b9d7653799ebf65d27f8c1df8f99190edeacea439ffa7ffead3070feeaf543ce5ba001e112612f173e72efef5575e98b9b2a5c533667a40c6527a3cc3754bb94eb25903206925b558063ae59f7f22f37b5f78289e4c2dad979ad59a723b4a29cef1dadcc6ec8db516335d376666b2d24a19a93c93fa2ba72e2f2c7fe7531f3b7668ff78abd52102c18da1ec403e9d3d3cd9ae36ea1bdbbbdb3befbc695e27a252a3d4aeaaf4e6c423034f0efeffa5bd77946de75527b8f7fec28937567e3927655b922d27c9724e34c818139a669a3834433330b09a69a6e9699a9e7637434333300463c060b06c59b6e420db92655b7af2537a0a4f4fe9e5aa57f55ee5aa5b379ff07dbbff38e7dcba25db0c6bcdd15aa5aafbce3de9db67efdf4ebf5d1abf6d6c72395a7ae3e49b77d25e41dc6cb496e62e5546ca44d0ea761343555f952bdee24adf5a133adb6fdefee185eecad9b9e3115fedf63bed6eb76fb8e43171e428c536ced42c9114d221ad04b34994500ea090da13ca25d2191f1d32a046129aad118448825102a9ace514810044165431b859713f680f92830c11e7a8168a1c110ee2ee088044423b5ea92a1d274d1336290363ce73c7cb3367de75ada376ef5a7af98aa795e3b99eef0921e7e7e7b76d770011c016f925debbffc8c8f868bf6b8c49a4d240d6f7dd34319ff89bafdc77ff89b367af345ab12e8d761bcbf59dec7865544a978c496293a639493f70d6c6c4961b33cffed86ddd5ffa991f51ce58ab65d9d2a094fd9993a7fed75ffd6fa75f6db8e5511554bdea84579bf4aa13e4fa6c529b248098b4d70fd71bffe617de7efdb57b365af1952beb51bf6d4c9424711c379f3af9fc27fef6a9d9aba9763c2185f2021594a4eb9374fcb13d0bcd57afacad87f3e589914a92a4699a58cbc6586011ba95033bcb3b262326b696b74d942fcd5df9d257bf1a6fc8b71f78d3a8d03f7efd19f1475400002000494441549b3e78dbdb5ebab0d8ebb76cdb8de38e76241b4e531bf513df2b6ddbb1f395f32727dd3d1fb8e11746fd6dd87dca4eddda5c9f7db579bcd78fd2d4f6814aae9d9ca898641998d91ab60610496814929403d600029214a450aa0cf30202910322eb9c02a28c0435736e0645b159221761f34f66b68824ed66c2088033867862a0413d49d1d58a44526a8f84926cd9daac763183c2bdf957f6bf636a7ab9630d6b477b9e530abd85a58d471fbff4831f3aea28e13a2e92954210e1f8e40ea974dcef39aeab2486815e5959ffd8fffdd9bfbbfb31c72b09ed39d5ba1354941b08e908e590e32b078c656bd3824e1c2c586eafa5330ffec5af1db8f1753736dbaadf34520acf7585c0d9d92b9ffe87fb3ff1d7f7cdaf08a734e284b570624f38bed7ad4d2aaf44da4514716bd9d978e9577e7ee707def1de6e1fd637a25eb797c45d6b2293a6ad76e3d2a5937177e147ffd9eefae876244a93248ead61cbbc0e80d6daeac86d870e1d682d37fabd28af0e6436c6a6c658c3165080e214922839796ae6c9672fc40dbde4cc5e5d7ee5c6c963efbef1dd3547db284dd2c81342098f6d070580e5248e00e5d8c8bed6c6b78fd64bdbdc7469e6c9b0b37ef3c8e1d5d29e939d2f13555d47ae358d22b8e6e0b623db2fcf463d36291b03c02888a402d4794d7546f3432a138b3c44c216c916897eb49935ca332379d3200f65e8327fc85a9679013d82058b448cc05494d2657d8d99d810b2654422a5720b571053f53b1b136a4556f7b62f4fbb8e264412a4b4fcce1367579ba2325a161295a3a51452092184948aa4705cc70f3d29e523c74f7fecf73efbfc8bf341757cb4e612265dac5726f756a6f6eaa04c24a490200431da9c230ea3ce7a77fac9771d5cfd57fffd76a1ababebe06af2ca9e35e9ececcc030f3cf2b77ff7a5d32faf2bafe4964b4e69249cdc5f9adaefd5a6945f964e60927eb27ce623afebfecacffda0567279b1dded76961716fa9d76582d67375c0eaad75d7ba7b81eb4929c0d2733264d8db5d61a6bacb19653c3bdb5a631564a690ca06234ecb902007afd388e2d22c671fab5079f7de2c48549af76b83251d7cab5fda9b17db5d20e88c161635224a5dd702c5abb129b74a45c721c911a54ba662c6ae562b40049034d7b873b12f757fa49ecbada7184b51845ba5eafbde78e5d9fb87fc19a2963226b129b1a1240528328a222b648ef2315bc6848248aa2eb6c272cda26061ec4a03001a0607a918362042e4831214b28024246f1312866c482b2379340cacb65a71ffffcff74c78eb58d7e1ca5ae23ad35aea647bff3f283df7e99fc5aca644c9c26091133e79456d54a697a76e5f31f7fb0d9ecdc7bdf89be51a5d1ed9590ffdbc73e74f6ece93ffcf8a25f190b2ae3daf589085120084b4800368dd72f3eb5479df9d82f1d3d72cdcd9d9e65568197ae37ae9c7b6efa916f3ff3c52f3dfec28bebd20dbdeaa4f442b73c168eef09c6f778b549e557945feaaf5db979e4e26ffedaeb2627c7e7a6a72f5e989bbe78e5f967cf9d7af6c51fbeebc8fbeefaa1f5d5985082caf8b0acb56c6d6a5293263649d23849adb159816914a50ca01dd71a16868d65c785f5f5eeea5a6b6c24f43c15c7c903df7cfef889f387c3b1fdb5b129bfb2af34b6bf327568f75b2181583437269e66586bac2cfb6e65a36f0c1225a956563a3e8001a4a595852be9e365151ed8f6ee92537968f10b4c4e25f4b427a746fd28d528c2eb0fd7f64e2ecd741a2aa89ab82f1d3febc54021739441b916297edacce1cdf9cb61b820a1502a45df61a12df2a23899d7d832000e484a73f1b159f95c9606e682b5b0706233976a75f6cc2d53ab617dc79993af0a04000c7c7dfed2d2dd5f789adccab6717968ff649a1a632263ac306052f65c3932e2fde95f3ef5477ffa15a95de58661a5aefdd29b6ff5deff81b7b55afdcefaf3fdf63a3393728954764549afd59e7e6a5cccfcfafbc6def1ce7f2644354a7aed8d950b175e7ceae433df39f1c2d3cfcece2f80747caf3ea5dc52866dfd91ed6e6dca298da8a022dd92705cdd7cfe3ffdcef54f3efec25f9c38f5ccb333e72fae5c9d5fef241249bc27765c0792b86f5303849eab2f5c5cfaf43d279aad2e5b4e929898919028a368346f79eb8177dcf1faa5f97500b0d6b0b5af9c5ff8f4bd4faeadb78f1c1edf39595b5e6b3ff1f8c5d7efdcb17b7464aae76fd715ee3777eedd57deada1b9fcc2e9e34f94bef6e6b7ef7eeeb9ae573ac4e4b28d274643a1c0f7c62e5f3a5172d4c5f5f37fbf78fecec9dd323cfc37e7ef79b97fbe1254766dab5924d7158ac2bef58481db6e9ab8f8d06a1a8d9ba4674c426c09734b34282c03a2412d5b51f24a03f77250fd5a54d216e5fa03ba2e000490833f382b51c88ab7981119986c4e6c3accec954b1f5becb556d2f3f7ddf6c1ed67cecea671aa94087c6d0cdefba5e75a5d7bdb2da57ff1a337beeea6eb5b1b89ebfada51424ad775fa91f9dd8fddf3e77ff50d37ac3a61c5f12be5b11d64da1ff8c075085aa24ed37eafb99a441d4404419c46ab2f3f72edd8fc873fbafbfaebee74fc7a73f5ea630f7ee1f1475f3d337df9d485b585d59e0157e8aa5ff3a457d241d52d8f7ab549b73ae18435e195a45b925e48ca45a28edaf3aebbfee2c22b975a6dcb429354e44e049500005a5d1bc7bd24e9a5718a88be836b6b1b0f3c743ab6420928877e29d04158be38331f5bb46972ddebc794522631801cc70921cccc2e9d39bf08422d3f79598a9934b155e58d2ae7ad07764f45c1dab9958eef1cbef6687fe9d9afbd78e2132f3e3acb2b3b765450ef9edc76f0d5139da0e41c3e5c0f2b7ecca3a74f9fae56aa16d285d5c6bd0bd34f385f5aeeb76cb7637bddc9b152a76f7afd7ea9b6276adab8995c776467f0ad9371bf99466599f4294d483a454164512c690784a1c582c366255c96998702b96c1aa4c1d03100d81c7fb5a58b7d20160c7937e1f03fe5652249bfb3f8e4dd3ff3eed1cb579657979b8ea3b4124a89d32f9ff3dcb55ffef91bdeffde37847ebddd3060d1f15d29a552caf7bdbffcdb877fef8fbeea0455b75409eb93233b0e6bafbc3778f5cd6f3cda6a7477edaadf708d9a696cd83401e6e6dccb3bccb3bffa2fae397aec1a217db6dc6af77addb5334f3ffcad47a64f2d0542fbaa3ce27925e5863aa83aa5ba531e754aa3ca0ba51308d7272794da43a95048002eedbc7e7e6d85c69ff6c326009072a4e3eba0664dda8d5acca41d5f08c39685d444a252764647aa870fefa8d50229ab4f9f9ac5920d9c20ed359696d78f9f78fec0ee1d51b797a646102a2910a95cf2b5e344b1499238267ea1d5da37bb7ca84274d38ec3a53d972e4dfff58b0f3fb27e3e9510ea72b301e5513c75fc1f5aadf6d1fd633b26c4d4aeebee7bf8f96ed4a8546acb0b4b5557271a5a715bf73b9da85fa997a726cb71d44f7a36dc5debb5179b7d1e1ff1f66fabbcb0d8d441d7c47d99466c1c160a8bd0fce6b26e964a16b188a16661181695a2d876e88b284dd127c20c0404280144c6f693b7780c10336c5aaab8db5a79f22ffef9dbab2badd6cca505c751aee7b69a8dc79f7964637dedb69bb7bfe3ce9b7d67bcd78a849452090400b6886c8c6934564928b7540947b68dec3814d6b7f3daf3bffcab37bbbad46e7577efde7b60dfd4b9c75abd8d95e5535ffee81de14f7ce43da4743f8a31e97dfd735fee75d67ee0273efa63bff6ebb7ffc8f47d0f4c5fbed29a5b6c2eac9b84421996955f516e804200a105036964d2346ead803536ed73d4e6eef218cd1dbedebf70295a37136e6554f9151dd6e3f67a625e94a2ea05268d7a264da47410284d1221786cc4dbb5fbf0d71fbd746935762b13427b84bc67877be3f507d7979ac60ed1b44a9d8a52b5e41d1a7591606ea9d3eec75f5a5d787161fedffc9b5f3dbfd8ff8d7bfe9f8e0bdba6761ddb573b76a0da68c243df7ce2eac2d2ce3d93b7bd7edbc4c4c8d939faf2571f4084b58d5602e4b95a33a7fdb690828418adf9f58a0fd08abb89e778c2b6aae5d134e243fb779e9a9b3149cfc67d4e0d58836c1068d0c6978d6cceadd0a019e77bd4c0e7edec582016d8d416595477a04e38eb21caab18061c727653f53030a4493c7bf24b3ffdf6ea4abb7dfeec95c0731d47773bed8b3367034fbfe9e63bafbdeefa4096da1b9da59586d2b467d7649a46003235e4a073f3eb763c7bfa792f1029b643757e5f6dfe233f75edc103d72411021a22f9e1bbde7c69ee2b49e3b93ffebd1f3f7cf4d046ab6fa2c4f1686d6df54ffeeca152d8fdd04fbca9347264a75bfbdf7ff34d52a9288a9bcddefa5a6b656da3d3ed359bddc4aca41624a154426b510eb0142acfd3a5921f0647aad5372899fce2bffefdaf3cd9d2db0f7bf56dd20b0029366cad61935a933283b1e83a74cbf5a589a9c0938d9585e7264aabf5632044df30fa2e5e7b789b4d6d1c27d943b700a3f5b296169da0a327ceaef68f4ea5efbefdd0b9e98df397979f8b9a2f365bcfcf9c8b7c3c76e8a6ebf789375e07e01dfecb4f3db8b8b21e86feedafdf7ed335e3af5e6afce5dd7fb8b8de54323c3475204a5b8b51c3d792fb9d34e56e0f0fed9b2c857a69b91b94c238a62836a323e38935fbf656e85b176c9a58135b1b5b6bad651a703b150aa5586bdef251ced396eb13802d65b8c32a4732db7cded5e6de45b73332c12681697692b8df5a78faee0f5edb6f476aeef25239f0b443fd7ebfd1583d7c64dfb1834701686e766d76fed5175ebc7afad573bff88b6fbaf1a603cbf36be40844485273dd7547fef0bfeeacd64aa9b18ee3866105a994461218a4f499cd1b6ebdf3777f5b3df2add3cb4b2fefdcbf1dc915125dd77bfcb1c79e3bbbe0964a77df7dff0f7f84b5dab7d16c311822e13862d7eeeabefd234208212422208aa2ec8bd33435699a246914f54d6a9a6bf15ffdcd973ff7b997b07c30ee348289bd3aa8c79d8d918a0b006c0d002171af174d4e8efcab5ffcc16aa564534e9248488940cc3635d6181b45d8edc4cad16cb3881585a54029ca78319dd15dcf5e78b95659bfebfd471e3eaebef374fce92f7cc571fc9b5effaef15234e2cfbadede33f3e69533973ccf7fdb8d536fba6974b9157deeeb2f5f596c8cb9a55b46b6bf65cfae4bebcdc7e7a3ab1b4dd72f41daf43c7de391ed29db76b7b7ffc0d1ffeb0fef5e9c9f79f7edd77ef03d6f9d8c2d40c6ea65ac356c0d17a992019a2864605316d8e665ee9b1e0f143dc4b0c53641ae5d2c643487596271c8503130dbc1c031004068aecc26e7bef8936ff3bab1b8343d1ff593d9959538edb55b7d299d761f4f3ef3cd2b571b4b2beda5b53e0a17402e2f2d1aee55aa9538c9de421ea98f6967a72d585be20880631429914210ae1b94cae1c1436fffcd7ffb85871e7cfa4ffe38dd7de07dcc5ebf977ce39bcf5bd4a06a1ffba39997cffef57ff8ed9f0ec383bd5e5ac8431e634434c098114303b39414c7b13506000094ebbadf7cf889fff4b17bad53f548b04d4948526eb272eeda3796e2288efa1d638cb5c6181b86def66dc752636c6a18204dad35c61893a6696a4c1277d3b84b280c18224124caa5b05276d753966e0824ab218ed7c3d49837ddb23df0e5d3cf4d4f1d3abaaddeaa04f54e849d4ecbd5bdc307f71cdbaddefcba5a79fcc0173ef7ccccec861b846ff22a1fb9668f595f8e561a3fb7fd96872fbdfca488babdfec458f5dac3635757d6019d56143efad4690b74e6538f3ffacc92d4aea5e1560a1e02ad5c4804f0262f6ddeca65b33e501e08d69084bd565c4066531eb2d36046ffbfd9ee8e908765d8025f7efe1bfbc48b6f7b6bedead2eae9d397ae5c5dbd30b332bfdc06444299186406442221a5f2fd4a4db93e4975df57668f1d7df2d61bdf5af14292025008490c6976422202002184544a29d7d1fe46b3b3b0b0f899cf7ee5d9536bcaaffffbfff8f9dffc0d73c3cd1fba3cb3f1e8f117941b3861d5a98c7df15bcbedcea77eed973fb06fdfb58835a5dc34b5c61866606bac4dad3524404bb1de684829a5e2384a88308ed5dfdffdcd041cd72f3be511a73c2a1caf79f9f48ee8194fdfdcefc5691a27496c8dd58e5c5c5ab9f7be13bd5e2ca5cce3de164c6ad23435d6ecd95bbbe6d0fe6e27c28c6082200c1c2d65d2dc88d72fdd7078f2b7fedd4ff59a2bc79f7c5548baedd69d845029c7db46f5f98beb53b51e12d7ddcbfffc0776856e549db8e1b153f0f473b38ec47e27aa0720d636d64f5fd29cbc65e7bb67f5fcc39db3cc70e3911d6375776ee1f28e6dfbbef9f425c32094164ef0ca428fa4957e99b447222b76ce4b2201d00e01141c702064a193627587ec07e7ce7241f9f91a63c49873116cd646e5f2958f7387b8df597be6ef3e704dca08f73d70e28597a617163b9d1849fad21f97ca41228fb2f66b2422a15dedfa3aa8682f6cad4dfc87fffc9deb0e9c7de73b6f39b06f5b10fa5209a46c4c25a1108414c769b3d56b757a8b8b2b5ffdeaf1b92b6b17a79bd2ad3a7ee5f80ba2f17f7efdc73fd27efa99d5f9c5865bdbe155c62bdb0e9889bd8fbef0eaa95fb8fb43ef1e3f72e4c8ae5dc7766cdb552afb448c60010c11c471fcf0c34f3dfec4777ee97fb90b7b234a8a30f0ce9c9d3ef9ecabc2f175500dc676b9d589b8bd3eb1fed0758702a0584ae1795a2b0460dfd5df78f8f41ffee9d7b3266a632d020061e07bae23fb51ef873f7cec0daf3b16f7e3d470c2a6db884e3cf5eaca6aeba6a37bdffbceeb3ff8813722c1d957566be5204ee28da65d5c8bc7ebbea3cbf3579f1d2bb392caf63a95c061f7c8171e9cffda57bfea38205db703e58af6c46a030478e494cd06a7add870d577eeb8ede0fcf28627a15cdbf5e5073f25b52f9c407aa17443a97de186daab08c7a3ac6221d70f0506e74dd70707b01406366848625ea354b6880b0040ae906cd6c60e5c10f04246d3d0ef6e34678f3fb4cc4f3c33bbdeb6d209a4ae7b9ea3dc50b9be24d0415d6b4f082548a012caf11d2f547e493a5e6572f7d2a5d2775e3cf5adc7ef5794382e0a8984202565138c8920894da707718c890106259423e4a8ef97fcda8457199dded8f8cddf7dacbbd1105e550765bf36198eed442427a836e66a7ff9d9b3d0ff72d9bfb75ef56bf5d0731da59424991a6e36d74fbd38a71df7dcc53f5d5bb2fbf64f69a5a667e656d663b73eee94c7dcdaa47003b8f4f5f7dd31796966f6b3f77e2df9876fd746eab56a182570f1d2f29327cfd76ba5ddbb26cbd5d0759c6ebbbbde6a37d65aad4e6f7ca276e2898be75efd3400359bfd6e14b79abdf58d5ead5a9202ae2c2c3ff0b5c7c6462a87f6ef3873614e06c79e7dfed2e54b0bb75e7b34eaad24266db66cbf9724e89ebd903e74fca1d9cb972b655f28d1ef466ccd03b3b31381beb13e16a8cabd67bff199d52b50aaddf5aeebc747dd972f5c39b867c7d3a7976617d74979ca2fabb0aedc927003e184d22b091da0d0808207bcb8593cc40ee4a6d02c00c44360a348020c7ff05a6394b7dee4ec6f5ca49032fb660188d92a37e88ebef7d4530fa462b434ea08a5a5761dbf128e4cd97e43450b6a72af5faa0b064152fa8ed4aed21e390e091d9a54695f7ba5c6d274afb916c7fd9ce63b2ece9a9d5fa3728526495209e5682f74836a38b2cd298fa471cf2d8fb456ae98240eea53c1c894723ce5571cbfaabc92531a692f5f6e6e2caf5c6d98e93edb0e5b33b84d92e384ce8953644d72fac274d6b0a84b633aa8bad509a73cd65b9e79ffe19e9041a7ef3cf24427eace134da7968d252145a5ecd76b61adaaa6a6824a392c97a6caa1efbaceccecf20b2f5f3e7be1cae9338b4aa22029a5ac56cba36375a9280835098cfb499af0732f5df0aad7cf2fab174ebd50afbb7d632fcdce54ca5687a527cf749e39357beaa539477b61e876fab16b480a5912dd5795fdedb5b51f8ae38e58fa9a897b08378dd35b6fdd7d757e5143e295f67cfafe2f1a20e504d2abe8a0a682aa744bc20d48baa85d521a48403154a7a000dd141e1cf4fc7dffad50325b4446e6d946000016b9fb9c85f23200945a60461cdb7b5dd46f37e62f32b31354bc523d18994cda1b6e72ae07b149e3248954b9aeddc00903a91ce538a43449c78295a54097c37061a2b3be18755b364d333299ec82286b432581422229a1b4727de595b45f71828ad03e30bae5b17074671af5fcfa54b231d7bbb2e41ebd53babef0031d56ddda44bfb1dc6fadc5bda689fbd61a28466220a250aed01eb335712f893a9ca624b5579ff2eadba4579273df1eb92e9c5fec5ebcb0bc677b757c727737c14e27ea7422242401d58ab77bf7c49e3da34a62af9bf4931e527ac375bbdef4c643cf9dbaf4b5879f5b6fb6a726ab95d063cb81e78e8f95c7c72b23b5a0b9d1393b3d57a98db2e7de73f79f129add3beb716a526394e6134fce2dae74d75bdd3d7e78fbe4c84c92bcd0e935fb514d27aeebec7275db77feb6d9f39470508d95d28fbcffe046a7d38f7b3bb78f1d7feacacb17ae0ae549d7977e49f815e955955f12ca23a59188a40414c859d0c5e6941a451f67eed9e4250830e0591ac46a0be9fa6e479aa5e582d325c34590d1720c72d8cc0848d2295547771df5caa36c8d747c27a8f4d6aee8d567a46d4a605a792a5ed33d6fe7e491db8572a51f2aed9214699a6a37cc2a74fcf2787b7d29897b88225b516036494c68a5e32229244492264da5eb09a14938a43d921a10951f7a9511b69044bdfdf0cccc8697467db28c4239615dbaa578645bd46ea4713f8d7a26eea1d4ccd61a4352917292c6ecf6b0d3efd9abdd71d2ae50ae531a71ab1326eeef0c9a9da83237dfeb77dbb7bd710fbaf5279f993977b9d36cf59084d2ca5934b38bc9deabad9b6f98981cadb4bb49bb1b6f5cb8e2ba6aefeefa477ff0d613272f4ccfadd7eaeac0eebaefbb9ea39594ab8d4ea3d5d38e46b651f3ccb631c7f1dc3d3bcba12b3a7df9fcb92bab1b3120be3dd41fd95fdb5fd5c72ff5c6245c50e5f572d9b4160541e8bb87cae5b5d50dc2f8aef71ddb36112e37225788b076f4be87bf92306aed0a27946e59ba25e997845b12cacd67e491c8ea16b6d8964df787113647fe0c5ba32262fffd8d11e405240c0c6c0b5ec1add9004074fc4a6d6abf5f9d30690c00cdf9f3b4f4b8e4469218570bd76180b8d93b3b7f56b997a514525726d89ab4b5203061e9a1f4d1ab97a70e2289d6d597386a030393e34f1d7603bfbd3403cd59066b74bdbce3dadeda2cf5d7327102361cec2a6d3fe2045593243cf3ad63d7ca8bcf25ddb579d57c65cf249e5b2e1b5ddd152c4f6c93b30bd174547647777273fad84e335e5517e656cf2eb9fb46ec3d7ff09ecb736b3ffdef9edcf0b62bafac828a0a6a9da54b159f3a5d5e5f8d829218dfb5fbf193579f7b79797cc47ffbdbae5f5e6d3f73fa8a714acb5dbbf44aefc50be76f3d5a79cb1b76b77b0c6c7b5172767a31f0dddbdf72f8d852ebe4a9d9c79fbd7af8d0f8fe7de320954d532945bf9ff67bed92c7efbaf358b3d545885dcf9b998f1a8d8e5f2a7556db37949d6b7c8ccece1c6ac6778c96bfd14f3f852e00987eaa5cd1ed2742c007dfbee7c66b0fc6fd1e248dc91dd7b6c5d1cb573f29b427b42fdd927443e90422eb7d973aab1ac858040ae77610c5b7b019f2e7a2cae07bc8c43fb2c93c8938348c652b9ace798148690d2594dada94ad35e9ee16bfb571f1d1c9a0d3e8f42f2df5768e2a25845d7bd52d614903477ab58d8a60b4c69d66ec282d7af26a7b9de2f583c155ab5341a45d7d6a7abd5fd97e8d77aeb48d01c040f3d9f34b06e41d073add5e628c9552ac36672f5c41af3221e61fbb79573b35ca31ede5e5e937ed6cbeff2dbb7eef93176ebf65fbfff6b337acaeb6761edafe071f7feed35f3ff56f7ff69ab7bf65e7673e77e2bffcd647fecb7fffd253273b04e0b972a21cafb6dadaaf927285e373da47cd714ced4e6772aadaebea679e9f1baf79bff13fdf59aa86b58af7f4b3e7fefc332f19b7020009c0f1573aadf6f977ddb177bd6dd3d430dbb58d6ebb1b5543fdaedb0f5e9a69bcf8eac2a9d34b5353d503fbc646eae5fa18c5bd7ebb1f2942c4d4717ce91dbb70f141dfd3bd6e27eef73b5567f9cc556fad39e1e9a3143fc614c5893080008df576e0d18fffc0819bafdf9142294dd76a557fef8d1ffed2b72fb6db2d0a46841b48c727ed9176496a921ab27ab9cc0f462abca0ef5ef4cd780c7f0f59f95e9f155b96d466cea7ccc160b47751e398f95948204939ca0db457914e291cdd158cee4552520bcbb2d9e5d88092441cb1b540e42848930421350c736baa1dc14845f7175e96bdf9d0571717edc2068fd74bbabf182fbc72605738bdd03b7da13b351aeeaf36facdd5d1915237c253d37da1d4f671bf3d7fb6b97c79b54da72ff6d8c278296d2f5f596fc6e767d66dd47eddd1d2fc62e397ff8faf9a6ef4c13b77ef0e568f1c1cedf6d37ff8fc2bbff53bf77ce7e9b98b738d85a5d65aa3f7c2b976d26d9b3446148004a8fa891142584e2be5caf26aa7179bf56ef2d0a3a75757178f3ffeecae9db5b7dcb21d5148b7acbc8a2e4fbe34ddb934bd166aeef5ba5164d162bfd75f58de586e74766c2ffdc07b8ebce72d7b2b8a9f38fed23d9f39f195074ebdf8eaf2469b7b56283fd8b1ff2dcfbd7885a1afa4e4d458b7447d53b6500b1cc751e7dbfdb3ad2e1b63d3b4db8f47ebc18f7ef0c8ebafdb9924d86d2d0b4153d7dcb56eb7bff2e2730903292d94478e27942b94269219014236d22faf75a281a33b1cd8cd6becb8a017c8c3bd3c442cc798b3ce412e1dc596f548636e91367fc53c69c4391b4ac6624a4802800522db1498098148002280712491c85855ade739e7af76175bca53a667cd681947ca9e054e7bcdb0e42be5763b91a79db0e420c71025e5f26492da5e2faed50335d7885a6bd5da5e29377aedae178c2bc4dec612797555ddd5585ab4c66e1f77a2e7173acd7212a79d4eabd1e85853fd891f3a7afedce20b67965f39b7f0e0b79efdd99f7cdf7d7fff93bff15b5f78f6f4ca544d684d8810f57bc2edd934c9e2e5c20dbb6bc6f328f0dd3835259f111174e5e1a757fb5174cbcdc75e78e9eabbdef1ae93afdc9f6a97a4a3bb73ef7ff7ce8d0e2c2cc793a3de52a36f395552005212f3f25a5b29f27dfdbaebb7dd7ce3ce8d46efd2dcfae272fbcccb73519254aa15a5e7afce5d199ba85b933ada6927e6d3abedaee20f55bccb4972cf72ef7925e4ca154f26371e1c79e75bf7eddc3369aceef7679413d677dcb9daa9b9b87ee9f225a13d920e692fc7b642a39090055a188662f3df4fa900b085cd78fd6bc32cb9686d8d09679be4415926e58234c4b10e6c19c460b85e9e8762402029b48fc2513a4ed88e9675b9e4a4967b7d53af0aa5c5ca7a3f65ac96f8e06490184b82b4d690c6849ee76bc244296764a424c9a2b513e3555701703232528465e74c00001793494441546a77e2a4dfad55837a3d009b9403cfd194f4e7a24ed3326bb4716aea656faa661aad4ee0c9924f44d06cf57eff4fbebd7f4f5d29d96e457ff1578f5f3837f7933ff6c6bffbf8cffdc7ff7ccfe7ef3fdd6e47963352070bd6305b9b263aac2f5f165ae3c4c448636df90d6f383436e22e348570fc8d6604e0b69a73b5faa8afa94902106abe29552646c6fcb56677bdd519af05ad6ed4ed5aed282d1998d850ab93aeaf77498820d0c78e4ddee47ad6d85edfa6a9ec763acf507765bd6b2c2260d585163a9f8ccd898d78234a2f1a59a1fe8131ff9d6f3b76f4c024c938b59a38a9d477b8a36fbb7cfe3bba64fdea9e4b172f9072506a522e2a07a5834231222132120cfbc743d91bd80253b84889661f8801bcc9816a9e502eeaa486cc99b4d61211e42323908b819c30481ee4a31fb8e0aa446081a48472a412884ca0f74d49d7558beb9d76975d29310f10d9ed639e72e5f32f2cef180f764c558d49194cbd16bced8dbbc3d02d973d66ab5d3c74642a2cbf22563a3b768ebceec65d275f58a8d6fd6ad543b461e8684dc6a6268d14078898a6dcee46ef7df38e474ece2d2c6f540242e438328b4baddfffdd1fdcb1a3fe133fffa98f7ee4b634eafee4bffcabb3277febf6db0e3cf4e02bbd7e12c7d6d862a813033093d42be9781ac7bbf68c7ef94b677aed8d9ff9895b1ef8c674afb97cdbcdbbda9d18200e7d856c394dc80d16d3bdfff0ad150f66c9f67bbd7ed9e7b7bf61a25c7156d65b84e46a4f0acb6c49aad4248bab8d7e94186b7d4f57cb5e29f04ba13d76b87c75819656fa8d36f77bac995d639eeb59cf51b7eeabbcf9d6ddafbf6ea252751328f59a5744ba826a7caeb15b354eb6964edf70ecbd972fbf34bfbc264be342b94239f91859cac6fa66c1b7efc21e034647deeabe148a04bf877ed922675b1c6900640b4c8cc632221b06c29c1a9918088b8442a6bbb28a3b0612a931c4e9e26aec282a979d384d2fcef588d448cd0b4347282d31eca5e9ee9277607775bcee57ca4110ead3e71bdab95c2f7b5393e57add2f97fc57a7d77b71faaf7fe18eabf38db1b1d213cf5cdebeadfae6371e5a586cb98edeb5b3ee7bda9124b230305a81f0d8c9b96b8f4edc79dbae6f3f71f9e25c6fcf8b7387f78ffdf6afbf63f7f6da67ee7b7e61cdecda51fae80fbd6deff6b2e99be3c72f5c5eeacc5c5d3b7270dbce3167892591444024b269a2c68fbe7ce65b3ff0a19d3b774ddc7fffc98f7ef42dbff2f36f5b989b995db217ceceecde11b63bdc8b2d6b0bcc4e6984c37aa7d388dbeb863a8d5674cf430bef7ff3c8ae5df54bb3ebbdb8e948a184cb08719c08e90103a751bbd96b377b523600586bb56da23c3e16ae6ff4a7e7da9dae181929dfb1b3f6869bf71d3d58295782567b3d8a80210e03bdb898dcfff0b3279effe2fbdf5a7ddf3b8ed54747ffe8cffe0c7548ca11da93da252933e6c0222b68798b7a190c77d8541d03117aad380ca466330bb059473788d9886beef8b17c6f1440849875a36ce61837650537550e5b6b6cd2b87aa1aadb2335ddea46a7cf3723f0a5a2d4da85b5a8dd77a45f6b76b1d3e9a5092faf762fce6dac6cc413757f72dcfffaf14bd6c087de7bddc917e64e9f6b1f7f72da9a74e64af3e39f7cfac997d695c4731796bffdf8ccf4d5cedc42ebc55797aeae5a559a50aeaf9395833bfc274faf9c3ed70c3cdc3115ce2f45a7ceb44ebf7c2549f9eefb5e7ce0f89c5595279e9ef9f6f1339d7ef2ff7ef2a9071eb9dc35eee327e71e3f7979bd9d266a4497477458978ecfcc24c4f48599ddf5f6ed6f3ddaeb268f1e7fe9c2ccfce26ad4dbe838b8b67ddf354f3f3bffc2d939e1f8d22b09eda3c8e3ce241549c7c8e0d58b4dd369df706c1c08d7d6bbc61806e3e81231c6518fd968e5797e394d62935ac7f1a328751d79eda19183bb83fd7baa77bdeffa3bdfb67fc7766dc17453176cdb51b8b6d27ae89199bfb9f7cc33671653e12c2e753efcc137bc74bef7e77ffb79724bd2afe870440565e59585ce42730232d6eae145db1296e52d466568a7d77c3eb4c390780d5ce51ff9f75fcc9925a58b4208a98044212e43e4b9391a26c0ac44de2cbefc5865e51b64bab34bfd2beb29a316ca918e2fb5660b24a5541e296d925ed2efa4518f3905805b0ec81f7aefe1e74e5fd9bb6be4d6d7effdb5dff9daf40a49e5e6b3b780f234358ac1847812d2f5cbc1e876a91daff9e2c14973fcb9b556ec02a7a187aee6e50d49cacd8630a3d0249550aeb5691af5b3840092a06c408fd44e65d41fd9e98dee905e954d1a75d63a4bd370e9ebfff2c3fb76efdcd6584d37369afda4df6cacfae5baa55d9fbce7d1bef07479d4ab6dd3619db40bcc368d4ddc4ba3ae893a69bf9bb4562a72ed8ed755c7c6fca5d54e125942c190826121dd6a6d7ca3311ff5bb95ea68dc8fbabdf69e9d13db47b13e1a942a75d35f734a53fdee0a9b48b963ed4e72e2c4f907be7de16a8341b8a4340a05ccd7ec726696d23e06c20d9cca84ae8c3b615d8775e18442bb030664ce402800a0058681dddd541f88009b23497940509bd913cb83505d41943e88f22100e00ffff617f32a11725008120a84c8f9f229cb1ee591612600a6ac9fbd71f9344f7fa3d1e366d746bdb6892394caf142e58542b9888828486b129aad4da38e49fad626c06ca3e654b9bb6d44763bf6e25c73ad277550d54145489db535211249855905ba650010526ad777c2aa546ed46d74d696faed8635868444a1335ea042be098510da43a1d85a93c6d624008842a2905927a6f042b732ee9447c9090138ee34fa1bcbed85f3b0f0f46dd7badbb7d59512719c58106b6bea1b8f9d6f5badfc8a531977ebdb9cd288744b28245b63d3d8443d1375e26e33ed6e249d46dc5cdc56eefed45d875bdd7865a5d5eda7d602b0701d91a61ddf2b0954cb2bcbb57a75cf8ebae2d5ed7b0e690d517bbe1b39aeeb287fead1c7a7ef7fe09985b51e695f2897b44bca15ca295a400085525e4597475558577e597a15e1f894bb4585f247dab44000c0b69087216d910f868681a33354b19bef4f8380deb0675448186701160bbc550b159163c86b7d19c09a5497c7e3fd1f749bcbf1fc0520c5be95dad34149b9a1900e922012a43449c5964d1259933227d6c42689d7fbedf9b9f5b4df0131eed7b453aa39614d393e0ac9cc98b5f266e5c3d622022229ed2a2f2012ca0b84f49ca06aadcd7928480230a2cc41bdd02854762893c66cf32446ce2e8624b42fbc406817856004e9f8ca0bbdea44cfbefea15367bce7e74a1e21da8d56bcdeb22a284bd7537e59f965e586d20da51b668aca9a84bd248dbbc22b258e4fca118ebfb6fc0ab4da13255ddd3b1559dfb28da26eafd326708de156ab532e0700dc6a35eb6577f6f22c910494095776d66f3a7566f5939f792a4629b328a21b4837144e76a9327f1a4249b724fdb2f042d21e0985398bd6f036f08feda684206f4260c4a1bdf2ad28e01fb26479e3c8d614e3401c2c5b024b6c9905e62d4a4576a01045069bcdd1956e984411a0744b2319e7b1908ef27ca93da15d22894291902824e6c766e6d4a6711a7593ee86740293f498593a9e1b549db026dd80a4cac344c57f45b3364aa132fa5799f4a5e339fd1a33532e2b59131d011010224a9b0f6d626b2cb3c97a2ff3378a10489074503a202532b076a55fd6696cd228c0c3497b6db9d7b649c4c23a5520a9955fd6e551551a117e59b801391e298d40c4d65a438e279c90b4478e1fad5cfaf07b260f1c9c9a5eb4515a538e17f57bf38bad57ce2cb0314ae92435c060d3b417455363cebbdfbc57022fb5ecc4ae238d0df8d4a73f1ba314da136ea8bc92f0cad22b4b3720ed224a2402002449d2118e47da13d2cd983818206b57cf4d0e6e51125cacde104571eef8e60cc99bd1171e98292c0aa3b6ba593961477e10b6d6122317e3aa866d579ec4442c267c0ae53a614d2a99c611031009a994500e29978442924094a919c82b8c2d9bd4a69109aa4eb96dd33e339054da0b951b08ed0ae9e4069807da306798270014020185e32a2fd0690a8c44c828387f48948f81440440931dc702b3359bcf0321e7f49448c220013349a55c1fb80e08241d925a382d93446c0d12099d1333a9a0aabcb2d0bed02e4a85281880d8da549174484ae90462e1e9c307a6ce2caaf9e5747171fad2ccc2ecdcfa7abb4fda4522c07840960fa0d6379a77dd0152e164f9881f54fee08f3fbeb0d1138eafbcb20a6a32a8aaa02adc503a014a454267f9c24cf592d42014c98c834300c2d666a0e1451b146f0fb572145c4f5b1a4386bf88f05d9f0f6917286c0d6713f298b316a661abb55972c59c915709ed6904ab958c636b2d200a414208940e9240142044f65a901480c4965131b0cf6ea04d856d0259abaed4a4b4101a04215061f520cf5d1122a2c848679004686093450a91b30e3acae4c19adcaadaa29e236383c9b4e4a0b1374b6960c6fa8a4ca0a0e8b622a9a51b26fd964d62b6060849a8ec75974e20dc80b44352a3904580838422a6342337486b87ffebbdd3516b3deeb5fafd98019142a75a861c8d09208145898fb5d4ed77c7460f373ad58fffc927ce5f59976e49ba812e8fa9525dfa55e595851be6a57128a0203980acae820412652a07b696346df97d687ee1d0526eb6b90c7d678088ffb1321899d7122130196b11ac05b459bf7c7e54caebe9870ec30424b44344061180d0c48880a44008161a1101335634012498f371147941b054c41eb065300839410d914041f99db06506645134bc002320121022330b3160f617451d7b1143ccbec16831abf260b6086673a23a6e8ed9c9bbcb111035e6de93239c40c5659b26432e9526a587957f1e6b1860cb4c08ac09b61febfbb5747956b4569da8c36c20371f9aa4469239626506226ce17a1c5e7861e3deaf3dd68c8cf2cbc2f1755857a5ba2e8d48af2cbdb2707c921a85ca693e0b5943187423e61197cd56c5e24d1b5e2c18288d611fb710b462a8130c72d49b41daef123fb9199ac94ae798812d221525c0b419e32d4231b9fa670040c68c6446327211b3a1a2bbb230a4191d44a63633108e84600bad4198279e0089981940e43372107893601e81b351390c804c4059f43a6fdf264260e65c348009d0580616f943dcaa6109c9e6b58384c4281d81224bbc93f2d8a6d968f21c779340a98854f67b16972a1e2022009164a14968e104ba3c8a42c8246236804442654b4e422189bc41c3a431c2271e98eec74b5655b402924e5e4619d65550155e49387ec11326118a614c450fe1d032e2e09dca57a7f09a87eef7b5d9a1213c3bec2917a38786050587f60694b9a4652e90b540162d305840422a2469f359e77984ec5b16a198308d00580ca21aec0a8380fba0893baf04cca4066546c70a500cb1ca7ee4b38007f7b54599e6ef1793cdf80232539c15790042369194c05a868c758d09116c16edccde032e9e4a117c42020621c861a1502ae04cf0b21d08898004c2208609009bfa9cb3388452c2f535d71085704b36891832254d39ea2789243207c79a981c2f0d46b8b56aa20e9220ed492fcce808a5572227c88054f62265330d08000633e3a120bcdf84a5dfa513f245283ee2216119d2389bdf1ab8c05b8e904de0cc3f9143708731af90cac8d5b3cfed9082195eb1ec4b96b3194380799f41d1219be7993823dbe65ce48a9437203170eeff714662941d18877cbae2640c900f9f66c04cf316b75db84e85470559aa2dbb5eb64c943f61ca47db6e721f65da0831672ea15c29921032e3becb4d5b2ec139e0864db11e5a02242449ca9180485ab87d364916994046cc26ec92201239ba4a63a13c129a84b669041980737ce178d209851382d2240648b6508dd93d0f01151c3830df77fb5efff47d76e741e4772bd0e5a18870c68a9bbdf08c6cd0221321136e05b75b970f33b4c6d6e6f3eab2e6b6e1fefec1950d504f4eaf9a1f640b3ccbce3578d7b364e91694565844a6fc08c059e342dede9de9b5c115e4432fd87226289099279b97a90eb1ae6588376b86c84408f275d8926acd5450a11687af3d578644441215020a520e5b93fba4991b4f8848193b3db0b5c641e19074a557b22601001282a446a94879241d900a332b3fc8c66c7a555b1fefffffed7b1e845f7baa6c2b48941980d9228265b48c6880012d210e2863068fada88dc9fc54280698590404c34039f3036caa126600b66011116d26a958cc0766b239c73f22660d30b9121dd6693c7858cc060adccc790b300e29cce20f1290098c0524ced5450677b998cc0403948748805933f86096e3e03529ac4e6116865ee7a15c1d0249402150b0549c4dec83c20032e78a8f99ad451402054a49da656bb27047167a26a14048209921bc2236929d3f9b1934842207b67a18ad6ebe61836b2f7edd22198522197288728c87c5d137cd52be7b865d30d3106c0110d158440260a2cc15a52da760c83575d6b5cd9cb3626771c35cd9f0a62db59c39bc9b77cc04c045b6146c0e7e32c7a9108dfc36a890814dea91bc45d3321260064c08b2f73b53318581caa492303b45be7c9b76148ba7945d6c616e320af9fca43c24b19b65405b7f1fec094898df9740661cccd84204b605e341767691017c963a8b5ce7408204926014398f1ce2d0d4edcde7ff9ab37fcfed9fa077b62810dee24c7ddfdd33d7aea05828d406daacdaaa8014592e3b7f9f39dfc0f2e05f0a0395ed8d989927cabd795bdc33661290f5c00db8597950a691bd3d399cb30c6830470c03f89c4936624640810546ce65050b4483904dc66600c622599b21956c304df6677656dc5c85e288839016c0a68c150dc2b99529ee28db11d13220822d007f5e0492dd213115d24788cc48cc94f1c70e4de3cab9e39029d37258c0c15cb4070a2183955b004d8e543731c4a656cc3b9907a67a304271b31f60f32b43f2f95a68c4204d764f0c05b7b1c92e234b422109248b48cc6072cc8336131503d6b0cd8af5b32e4ab008649173cb52e05ccce89f73afcd66755f2888f3eec98c02224f1502001b93b348e7e1fb6cd969203285d644ca6244b6d062b9fe26a2e2ce1111982c3258b4d97b91f14d14a53cf90874cc81290f23fb81ace49ce3c593ddac36cc9e6e915ec9bebe09719821e700e49cd3388b34e7134811324c937b234334d8c07608210d2dd7a614705e59cb39f8cc4bae8b772fdf7d335a8640f9a20e1719e43a7bc82ee5b29ecd83d8fc28df06036a86ae8c335c628133e48240f9850c74562ec8836d20b3859b9a2b2fce9ba09833235630e52143f18217f638872d45bc09adcd27bd10e130c71ac330b8285e032ed6930bcb50c06ec44c1e101188c05ac8201222021569382c9e73ae668b44c420f8f5ffd5f3373857f14b66df38ff991d30b3da5c085626f0f939b7f0807d77d4f51fdf36d1cc6b7fd9b253fefe14f63a2712c3d73abe5058ffef3e86e462ff4268993983a3293103024136606f333a9c278dd8320f48448684a41091e2aa736d608b8ff2bf73d1e52c889763edac62d8e6c761ca42fa98731941f1be6677b459f795df74f650ac45cc300b0cde5740a2426be4dd54f9fd643a2e5fe00ca4e73f06b7b0856eed7b2d44b1fcaf410376f3adca1a2bf31bcf0f968b3f7d0f29f9eef5fb47b7e16b7aad9c6dbac108c859db1a10518e27eca073f19f7446c99ce7218bf9d099ab63f28c37594695fbc822b7c35c381ad9286ac84e4934d03e438fb750955997646e5268889926b3f58591016bac6536602d80458b4cd63253b11283c29e622d0bcf982c663acb02924140b06210381cc217905953c803209ce18a8159292076b6f403680083940a6cae4c51f7b125c53f402285bf62b35856d65461b3d7001091293710b9522b8c4a71a9434299ab75d8d4e1d9f1f3feb05c31e6dec6e03a8a1518544266701e0189b24a706bf362f0c2a814ce1c6f9e77f8860138179722f9900b4366648bd52724cce47133fa9c6b170b5ba4125f23ddc378fb35e2cb45a2ab581c2a2c99cdf8cab3094b046c91800091180714223044423314634660b064093256e92ced859b519ddc132d1c0e22b4960b33c7398c2902d758483ee6880d0a09df7ac7835ff215e2ad8fb930d76c397b69f2dd6c166f442808d0bfcf561c0d07819c42ba07e7cdb5ed1609fbaea37c3f6bca0388fc4fd806392306c0accf9af33f3355458082b008f6526ebaf2bbcfab2a7253915be5ec2e8aab1fa410f2dbcaf6e53c495728995c9d17362e2bbbb499830c6c3807cad977313f7e51f3439b27e06ce0050213e7d0b8d018053641c8a67a65af24a2c8d8880106c66d380cf75d71964dedb6f9226cfe6fc8d3c8b575a618ac85bc177df34dcfb37408f904cca1f5c4d7bc77b9840dec63e1b1e401c7a11aa6420f210ebd9f391e2baa0d2c03e5634bad1d42bb3c7c379bf7312c2eff03c96e4ac560037c0e0000000049454e44ae426082, '龙之谷', '上海盛大网络发展有限公司', '2010-08-05', '今天是一年一度的除夕，你是否已经迫不及待的为身边的朋友送上了新年的祝福。在马年到来之际，龙之谷的运营团队也为谷迷们送上了新年贺词，语言虽然简单，但是却包含着发自内心的祝福。今天来送祝福的可不单单是我们的运营团队，下面将有在龙之谷中陪伴着我们的神秘角色为大家送上不一样的新年祝福，让我们期待他们的登场吧。\r\n新年贺词\r\n \r\n　　杰兰特\r\n \r\n　　好久不见，我亲爱的朋友们，你们是否还平安。愿你们在新的一年能够笑容长存，自由随风。请握紧你们手中的剑，大陆的未来已经交付到你们的手中，我会一直在灵魂中陪伴你们，和你们一起战斗，向邪恶的源头亮出利剑，守护神圣天堂。愿新的一年，所有的战士们都能够一展英姿，荣耀大陆。你们都是无尽的强者，未来是属于你们的！\r\n \r\n\r\n杰兰特\r\n \r\n　　贝斯柯德\r\n \r\n　　尔等勇士，祝新年快乐。宿命虽然已经将我禁锢，但愿仍有无尽未来的你们新的一年，能够掌握命运的纹路，留欢乐常在。也希望所有思念着和被思念的人能够长久相伴，永不分离。新的一年等待你们的还有诸多重任，请诸君共勉。也祝我永不再见的友人，能够，微笑如初。\r\n \r\n\r\n贝思柯德\r\n \r\n　　阿尔杰塔\r\n \r\n　　呵，小家伙们，据说你们人类的新年到了，那么就新年快乐吧。希望你们人类能在新的一年改掉那些乱七八糟的恶习，活的简单一点，开心一点。要吃更多的食物才有力气对抗来临的黑暗，要学会更多的本领才能够活的更久一点。愿上天赐给你们无数的运气，庇护你们脆弱的生命。\r\n \r\n\r\n阿尔杰塔\r\n \r\n　　艾琳\r\n \r\n　　你们讨厌啦！都不要看着人家，人家会害羞的！新年已经到了呢？大家有没有好好准备年夜饭呢！希望大家在马年里，都能够笑的开开心心，玩的开开心心，吃的开开心心，做任务开开心心，打黑龙开开心心，总之一切开开心心就对了。新的一年大家也还要一样的喜欢艾琳哦，也要一样的喜欢《龙之谷》，艾琳在这里等着你们呢！爱你们，亲亲。\r\n \r\n\r\n艾琳\r\n \r\n　　看完大家的新年贺词，是不是很感动呢。这些可爱的角色们陪着我们走过了《龙之谷》的春夏秋冬，陪着我们从稚嫩走到成熟，是我们最忠诚的伙伴。让我们在这里也祝他们新年快乐，在未来能够和我们一起打造更多新经典记忆。\r\n', '版本号: Ver.193\r\n文件大小: 4.92 GB\r\n更新时间: 2014.01.17', 3, 2, 8, 0);
INSERT INTO `lj_game` (`game_id`, `img`, `game_name`, `company`, `time_to_market`, `recent_activity`, `update_information`, `list_id`, `list_small_id`, `grade`, `new`) VALUES
(3, '', '魔法门10：传承', '育碧软件公司', '2014-01-23', '游戏简介\r\n\r\n\r\n该作品由Limbic Entertainment开发，小组成员都是魔法门系列的死忠粉，承诺将此系列开启新的篇章。游戏将结合独有的核心机制，搭配全新修缮过的新功能。\r\n该作品的剧情将延续《魔法门之英雄无敌6》，发生于亚山大陆，与前作《魔法门9》的剧情无直接联系。\r\n在《魔法门10：传承》中，你将会控制四人冒险小队，卷入亚山大陆上的城市Karthal中纷繁复杂的政治党派斗争中，这座城市已经处在崩溃的边缘，成为了各派竞争的牺牲品。你的行动将会决定它的命运。\r\n\r\n该作品中玩家将会创建并率领自己的小队进入这个动荡的世界，与强力的神话生物战斗，掠取远古遗留下来的财宝。据称游戏将会带来经典的第一人称RPG单机游戏体验。\r\n不必说，游戏将会使用回合制与即时制交替的战斗系统，玩家通过打败怪物或者Boss来完成任务，满是陷阱的在地城，城市和迷宫中探险。\r\n游戏的副标题“Legacy”暂无任何官方中文名称，港台非官方译“遗产”，大陆非官方译“传承”或“遗产”。', '  魔法门10：传承是[1]一款角色扮演游戏又称“魔法门10：遗产”，该游戏是魔法门系列的第十部作品，英雄无敌系列游戏以策略著称而魔法门系列以角色扮演为主，这部是真正的第十代作品。\r\n玩家在游戏中扮演控制一支冒险小队前去平息这片大陆上由于各个种族上层领导的阴谋而发生的战争，并且这些国家的高层通过自己的权利使用活人去研究魔法让自己变得更强大，游戏使用半回合版即时战略的方式进行并提供了大约12个职业跟4大种族。游戏的画面每一代都有着很大的进步这一代也毫不例外，整体上看这部游戏属于高质量作品不会让玩家失望，魔法门的游戏谜这下有福了。[2]', 1, 2, 12, 0),
(8, 0xffd8ffe000104a46494600010101006000600000ffdb004300030202020202030202020303030304060404040404080606050609080a0a090809090a0c0f0c0a0b0e0b09090d110d0e0f101011100a0c12131210130f101010ffdb00430103030304030408040408100b090b1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010ffc0001108005b007903011100021101031101ffc4001d000002020301010100000000000000000005060407020308090001ffc4004b10000102040305020907080807000000000203040001050607111213142122323142081523415152617181162433627291d11734548292a1a2c109255356637395c218435557b1d3e1ffc4001b01000203010101000000000000000000000205000304060107ffc400421100020102020703080608070100000000000203040512130106142223323311214215243441516292f031435253818207717291b1d1d2f2164461a1a2b2e1f1ffda000c03010002110311003f00f32531d45f547b61c6200cbbdabd68843f62027e8f6c12b1091b4d08887adcd058c86c4cb960b190dc116a90943f429fda2ff6c452129ba9dc288ca0b8491280095824997497ac23fba216e2093570430618c949a927bbec150da6cf99297fb6018250b269b7d24aa07ca996a248bd59f09e53800c289d59e2ac59d2379321624a0a322e9d45a6529fdd38f5a2df3dc64dd53fd0db7edce2603c39205c1243a0d1454f4ea0fc3285f9599e3d2024ff00789a18949ad4d22f9d534c47d28ada7f74f54468aabeadfe2d06b8a7a2ff00310fc3a420de97417e220d6b068abe85834fe3285f2d656d3f521dd1d535a2d170e1d3d4f637bfa30931c61edc4923bd336dbe25eb23d5f77e10106b1d148f9723e062daed42bbd3a6653a662fbbf3fc05f702492c492a069927cb3020d24397b21fc4d9899919c7323c6f972773188f241806e4ca3dc64c24ade930145223012e62cbe306ac1610933675074d547ed69af166a9ea13709b7334872edcce52ca51335098490ddd0990ebf845984af00611539532f58757f140e1262cb2622a7a9cd1309662093771b2213e9289843c4333124dd6c7773e65879d2ea1d528ab34b3a84c6e240b0eb3012e5eaf5a0f350f30b9336a9ffd491fd8ff00e44c4162395c3cd18cce6e4ff9c1a82ca6ed9845a40e5bb7557ad7505d52df9e812fa0539d22f87e10a6e166a2ba279c27e61fda3596e7637f379b77ecfa8bb2d16f8798ead4a9d5ba59d2ebc98e90551e522ce453f2673fa5eccf41718f9add7cafa913e653be6c3f3f4ff33ea9495965d7fa6cbb8265d47cf2ff002d25717f60a5eb62579ad194a62f524ea2a68a5b866899efa73ec4c425996d3fc38ee757f5aa8b5921cca7e75e64f67fe1f36bf6aad4eafcf9726f27db3b0f0e7fa3028b4bb3e9b7a7848e307c9555f0a6e3c474d440d714a639cd13514ce7b7f5a4099698633dc123412c103c9c38d0e98b49af82bd8d688d8762e0230af52c534d15dcd4296d8c9d90cc480dc2ea819a85ab8f30fc210cbac28385b1ce3b33c4ab5d85156b352c346747a1b84946aad1d10445aec96d59c8d0d003313967dde318e2bfa48feb2ff21be0e194fe27613f819db965d515a8e1a59f6fb5ab112682dbbb9deb7dd994d2140123dbe7e7d925970879e509fa82ad872cf3c6f2c15c56b0e8a375dcd67bf6346d49a60bad909e92e835129cf68948beb88c7434d5c9270fc42c9e0cb03daf49ac5cce375a5b6d423f4ab29ca09fbe71a679529ca160cc2f2b270e708ed724eb38c5752dba8f30b26e73025feaca439a93f842896e0f274cd4b06583f123c2030dd7fea6c37b27c534b6e3a408801222197a7b4a7f19c6166793a85c20b3b894ace9744009875483f186f43027524299652678dd9ff6cdbf6e50c336333e139dc7542f2190916a898b2c12522447c811a02253545c3f788b0608ed95588514121ea2299652fbe7012ca94e8f249ca85b040f50e94f4fdeda4b9af6b5df5b8d6c7c34b0d9bc7d72ace4aa0674f099385dece629a7a32e3c0b5e51f3dd5aab7d60adacb85674b4ee22fbbf3d87d4b5b6de9aa745476fa3eae8df76f7be7b4f4cb0a30defcb5d6a4bab818535d5d7416cd9e54116ba554b6a68f979a67965d9350350feac7c664b7dc356f58e692d7dfa21dec3ed8d86d5978a5bc59523b8776678bded012c5ea7d412b86a0bd0ede3a92af0b6cddcaca8e826f24769a732e9d3e8cb2cfd58fa35d6a79f2f97b9be2394b672711f78a16dfb81374dd171b16dab6a8686cb23325d5d9aba9524f294f965d31cadc277c69f4f79d5454685d547b75474f9c30a7367ecd21437879f384cc8529ea92699865312e1cd97ab056a9de49b8625acc11a660b7785cd63e1cbe4ead7f56e95435dba4a950d350ccde34334c4a620da5a94d92a32ca45cda7568e5e68ed2d553f07cffc58ccd6f7b87a3efbfcff00d4e67c64f082a2e25da6e2d7a1b0ada22e151155ca9b148544a7f488e82d47917a784e1935e529df87cc37a3fd1dd554279e6e148b8ba0ad26fe234811a3aa888f9326e64b8e72ebc8a5dbf6a51b16e174b874e130d4ead6af59fd22b3f2ff006f688f507d4f7aa2ce153ac3e554fa570a188917be739c695a6bbc9ecd02b9e5d558fa798e2f8b3f18d4370a753749f511acb16911f6e516b67d3fa4398228296e0f97470f67e23f31b26ac0c5156a97230a7d348752ce5b989888f9f933d539c135ea7c19718f20d4e863f38ac7ec4247c9bc0cfefb5d5fe9c5f8465cdad18ec7aa5f7c51a9a7fe31c75784f90e20922e1e35476496eca0ff008888917df1a626cb4cb21922b3822d0668a65e8d11e0458d84743519548ae37a01b64795986897294f84d5fe528f9feb9dc3321f27c7f9cfb1fe8cb57131f972b13e8e4fea3b27c13aaace9146bdf1caa34302a9d49c8d06de73d4a1344a59182529e5a75ad3e279f3f67760a8604b3dbe1a791fde6fc4457caa92f1777ac8f9346eafe05bec71aea96ad45d21bfef0ba6826d5eac99f5104bca653f30eb9cc65f5463e2d79bad4c9779ab28fc7b9f94fa25bf5552a2d90c751cdcc43c42f090a7b8629d069af565859b26cd647ca282ebc8476aa9f0d5312e894a5dde687135deab4a253d3f222685fd7a4b6d5a929e91589ccfa5bded1a3c2abfc4877138b76cdc2f4f107c6ad9656e41db5059a6af3b95672d33256523ce49a45d5fe569ea288d4b3e66d1274bb04b4d4d3dc2e0f6fc1d2d3bedf67ffa56678c77360ae10ce4c1d03fc41c47722f5bbd503595068c9a7b049c4c38cb6aa64a4d312ec1e7f7f554d4d0474b992277f61a6b2cc978ba6547dd4d16eb7bcfccdfb8aaf0930a9ae29d79d55af7c51a55ab48de47c675bae54d327af5529f4a09a8a48d52e399194f40fee8d54d0edbc4a87ec51bdd6ea9ab69b351d36977d3f3bc590faeac0bc3945f35c2c7944de18a6be97eb3b0795172404729795cb24b5e52fa21187715352c6fc33e6375bbeb05e3d23160fb3cba0e6f7ce6d2c427550bfef9bedb5beb382112a622dd579505880465ae539ca4194fd39c75d432c193c49b068d1f11c835b6e18fa3a7f795cb16b56b96b4a522d56d55782a2a5bb209a525dc699f0cce49f09464da67a87f3737456f8234ccac7c0594cfc1f716a9cdf5b7b6d64cdc108cd891fcf1cfbf2cc47ef8b1acb5b2266485e97ea2a77f37e52cac3bf065ba2e3ae37b7aae6c29b70bc122f1428725498300219a8e9d9a739e9ce730104e5cc538674dabcf1a6d1582cb9eb2ed1c38f94e82ff0080ca7ffdcb73fe932ffd90eb6383ee7fdce636ef7cf2cc531d3ac7a6129b4c935140efc5a809398909a826bf40f37da8c370aed9d32e3e71e58ed9e509f324e451c1bdd83b1dcb5ec5b908a2aecfac52ec9e5d9c728e3a9ad8951539951fb47d52e7ac2f4f6fd9e8fbbc3f94ec8bb31b16bf99d16d2c00c31b80a9ac92405bd456a7eea936d2032004b5649cb4e5c5532ede32977a28bab3c88fbe28b2c14b4f824a8f8471a5783a5c945c3da85d17bd499bcb9dc136a7d06de62b4d76e83c70b8240abc5c7814835eb9a61cba44b9a38e8a9ad94f365c9bee3dacd72ad91d23a34dcf9fa0278d98124c30059d230769552ae54a975bf193b77b1d0e2b1c8682ba339f120cc0a494bcdaf29469a5968aa21f627b7d464a3d65ada7bbed158feac387d853b87de0fb7f832ab5f38b6b23675bd6dd09dd5a6daa4b797764004492069a7322440d4d1abbde53965a8e37c14f4b5126cf8f10c2bf5be48fd0d379df98ae7c1ff0b2f8f098c44716c5b4fd9d31835405d55ab0f80b77603a7209ce529cb350ca5a44253fdc31b92df0469e70f8543b8eb8f93fa698d8e8aa8ff47732b7142755ec685ab724d34f5a34fa0880aa6a74232335f84f294ce7f5609969a37cb8fd822ff1c5c254e411ef8f079b16d966a78ba9b5e70bf30eb59c4c3683ee91ce2c898cb59ac35b59d4ec2aac35f05b4716ab0e95677cd368b4f45cecc186f00e2a8412ebf279cb297a23b8b2d8f6c449247ec538eb9eb03d3f0e34ef3b2f0df02f0ef0a85c05b541045cac424a2ce3995e03965c7b23bda3b7d2d1fa3a1c4d65ceaab3a8313e70f9d3c2654445b6fa29091aeb07926813e123532e253f5539731fbb54e35cf3a47d3ef62a8a21c30ee928db4d5c3061e50ea0aef0fde2c8813a7aacf4e64a29296797206498f2cb4e51867a5dfcc939f415cb3be0cb1d35a9ebc0e6988f02d1d43cd1cc1d3623712625cc97eb0c1210c911d65cdd3019092750be2a99a3e9b8f584e9da7f946b57e5beedf27bc72d3c69b6cf46ebb51da6bd3cda72ed8aea6248e1e1a0ce9a5791f32473d4ec40518dc765d3ee3a1bfdf196942a8cc9ba25a0999071d984e59e7b33d52972f4e51c05d60da11e3f11db5b2a72dc72b15d38f158dc14d59614a9a2993a451303325c832039a72cc88549e594704d46f1bbd47d8e6c3e16fe9636d660f4793c7cbfb243bf2b0d418b5b7c1fb974e29e9128cd26a1216e2a4b528a6d2739e44a7a652cc7cdcd1916def51829e37dd4f87fb8947c391eb244ecc671c7877e345457b6e9586f4b305ab37b2c8d41e8355855116491694104e63dd55cca65ed9374e7de8ee355ed091e3ac93d823bd576cee94f1a72167e02d2e9381963b1b677960f934504ea9555394921aa186535175252f29cb3d092522d5290f4f3114154e3ba4fc9bba3934787f5b7fafba6a583634e23efe9e66f169fd5ec5f78b41ad7be57a7bed6cff351216e938c84b4976aca6594b6a72e1f54787a61e534091a086a67fbb3857c29aeea8567169c510cce9348a4a429d34073f9c810e6a2fc3873972feac35a68124ea0ba5ac71569ecdab84d1559f5a3a744cb9484bd6039659475903a468918a998b12ddc6ac60b6534dad2f116aaa374f9776a8183d487e0bc8a72fd528d914b97d333344858968f85255a864a056ec3a5541370b93a72ab176b3355456623299ce4a6d93ec94b84b48c5f154cd1f101960cc2f2b27c2cb08ea8b26954bc77433211fcf1a0aa96aff3113297df2945fb4a482e9685e32cefcb7e0fff007fe95fb67f844326439e1fa6231cd0f4d9e50084c60cf5586ab26c5aa5e0f0775d0d597fcd72a06a11f64a5de9c52d3a465eab985f56fb1c2bc23145e5451dfaa83cc1b4092ae94f6c83a53942c9ea5ea0674d8233b3b0f317f0caf7b2ad1a2dbd71b06ef6bd4d54c298b3b96f7b5467f390ca5e7139f2ca5d43c46154f10de0aacbe249cc6b635a75693c279466cb2cd5a92828b96e600e1319f139067ca52cfcdd9abb250867b62544c9247b9d9e21f6d8990fb477f6fabd4288e2053dbd71f566e5072e1b2c4a38585d53263b21cc94339e9e5997d6f54630f929e49fda6a6b82469eb4fc4e3bb4abee314b1e6b98c158a38bea752d424696d5639a003b30d93691e9ce7c803ae7294fabbd1d43c094f4bb19c9534ef2553d67c25fd43af1545d22fee57e8b5614f12290884926ac87cf304e5c25f6cb514fd3116048c196a9e47cc905bac784a22deb4548a35b6f1d352409349644cb6ab9cbd097980bf6bd917e5b98e59c4bb830f6f0ab2df941c520f17ef1a7766ab729884f8825294fb3dd1ba089e4e1991985751c12eb0a4dd1d9a43ca011d0534094e850dc40b224a2a3b27ed961f42c413e5f7fb22fc40e1376ee4910897c27dd283c453843cc58d2d86cdd2a60e1c17302699f497b62ac4f239705bc635efd1bf82346f99ce33447542f05c7cb4ec127a2354ae7936fd40874917bfd128c53d497c707d60c954bebc488952eda0044931d3b610e54fec4bf9c63c3986b11d41ab55dd10eb350d4f28a1287a88beb19c1e43e0e203136639319aad6d7b8296ab072b541d337683c7536a7a053d06253003f5b2ef461946f4d01d897f786361dbaa2d25d591473aa3870a29e3066464dc980ca43971c88549ce73e1a67a632e56674cd98b2df882adc57e37baf09dd5d54460e533a96a62d9b29a4fe71af4c929ce5ede79fd483c878df8866a9a9491386565675e2f2d1a70d8d6bd988d48e9a449d4dd2cb6a270b6bcd431cb4ecf9b5e9cca2cc2f23942365c19630dd1880e09abeb6adca3988ba124d65df6492480cc7299679f1cbcd04b03c8e61cd0b5a38d16ae155245c5b36f33ac5c2490a2b3e2cf642ae9e25ae7cd3967dd1ca1b416c793a854d288f726265dd7fd60ab376d48df1172825d09203eaa612e030d56048fa6519a7dba92ad45ea07b66be79f7d02f3e7ec89883087f586cc4173db249f4aa89cf508cfb3e104b808144d44d26e20e8368d54e9588f984bf97ba200cc7d4b7cf29752d4000496ae1a835090fb2713166038f2c6cf95cc7f473fd881ca2ccd393edf6b4d604352aa2c0203cc01d445f08c32b395c4a9d40c55afa79524f70a4b6dddbf494cbacbf089151fde11a7018aca09692d6b197480f56a8b25961a740a081ea1cdca6d924f64bb9d47fa3a3ddfb738512cf3563f0c78b47051a711c82a0f93255e2c08a03dc1e51f8c6c8ad9f59502f9eeafd38c9f41a9d9550116b59bb5cd1cb69b313f14cdc20984fbf3d2a48bee128b33e08fa6864795e42662350ee0c22bae768dc326ae4e4d9b549ab864e36ad5eb474802cddc2539c867a0d2504a598ca72f3cb38f25a986a1f888788d9644a45c373d55db4a65b36e551c2f5773bbb26ecd223376b4b4cb669c8653999711e031e2cf047e00da57907bbb70fef1b326b37bd14a3a1586e2535e829d6d17b5344a5da0ab76fb4d897374a93128d2970823f0156f83a9ae14f14d42a2e2dbaf274e67e4dd3c2a4ac48345e53e02a29294c47e316edd0804ca6d4692e534c9abc456158b484c7bc5db1b15924e982365baf93a75413deb999ade4d697d59f7be1013aee16ab0ed52b7c998a6ea828ef080f36c44fca88971cd39faa5eac64597ef0b585fa9334c935156467b997e78d140f2ad0e5d93cbd5f6c5bc40194316c90ba4fe4cbf3058961f9a2c27cdabcd94074f887aa12f90375fe8705b621ee51c828a64bf4777a8beac50cc9199955e40a0b3249aed75ec50fed0ba8bec4bcf1865aefab8c7505a32d332a08a9f217201a21fc65ef9c1c542f51d42a9eb929f871931bac2910e90e5187314094fd3144b2bc9d432a8366cb89355d2da265a487f941b459899655d332c35a0db949bda9b5dbd5fb69d0a92e537ce9b294f27a4f930319cdb490e51299f4f3980fb613cb6f78cd1985a35cc7caabfa05ed43a35b0d9d39bfaa883c7d5ab80d378f5a30432dde9eda6212d29a7a025af3e900d29a5a62793279099a58345c5aaee02596c6ecb053614fbf2ad4b4d8da80f12075f24edcd653379a4c26337efd69a8a4cb4f04b9ba554e056def21ee2112dbf09bf084a3541c3f1b8adc51c3821d67e226890106d24a2a99a682298a82ae8113d5cdeae98bfc9539e6682ef8c47c61c5ca432b22eabc9837a037722b0b5a6b416a9116cc520da2696912d032e1abd62815b63fdb26683a874e2b7d9f8a4dface8913d39a9ddcb86997b21ac1065a00e1227c43d1cda6098f064531191a4d25bef955f178a2a08a2b177827c7465c73ca31b2a46fc43466059f5e14dadb11174008bf4c7526e53e5d59cbb27e7e3e88f03c407a4bc23d3a4f66e9896d1121ead12ed1fd58f50061b3f2815afedbf8e0f6780988e69a1a092ef0525824401cd21f367e9cbd3096b0796d55f618be5d55de14d53994c0721f64bd916db5571fd005e59bda471ed8e810e6fc66e18f484a53f3744bcfb2edfd68f1033142525be92529f30c5a8546c1fa3282082ee2a2faaae1c3fa8b9370e154f41287c67a40404252f44844465294bb25294a5d900190838170e11680136245b444b39e7b51e3f18adc08b9c275129caaceb29ce5e5d4ecf7c57e02f73e4d65351737ee8f1cf0c3101b20e2dca692e909cf7b4e59cfd1a0a16d77510b57901d6eb95ce834a54d52239b64e5329f19ce59e5ff008e1054dd00586e40cc164c80c867b5cb394f2e1945810660c87fffd9, '地下城与勇士（DNF）', '腾讯国服官网', '2008-06-19', '月21日-2月25日，lv5以下（包括lv5）的角色，可以在本页面领取一张【2014天马赐灵礼包9折优惠券】。\r\n【2014天马赐灵礼包9折优惠券】\r\n点击领取使用【2014天马赐灵礼包9折优惠券】，可用于购买2014天马赐灵礼包，并且优惠10%。 \r\n（该道具只能在2014年春节礼包销售期间使用，销售期结束后将会删除）\r\n【2014天马赐灵礼包9折优惠券】仅限于lv5及以下等级的角色领取。本券不可交易，无法放入账号仓库。\r\n账号下的任意符合等级条件的角色都可以领取优惠券，每个角色只能领取一张。\r\n【2014天马赐灵礼包9折优惠券】仅限于购买2014年春节礼包中天马赐灵礼包。\r\n使用【2014天马赐灵礼包9折优惠券】同样可以参与2014春节礼包的各种活动。            ', '  DNF数字解密活动,2月9日解密数字暗号为79\r\n        ', 3, 5, 0, 0),
(10, '', '穿越火线（CF）', '腾讯国服官网', '2008-07-25', '相对于其他的挑战模式，末路狂飚显得十分休闲，轻轻松松5分钟就能结束一局。从其放弃玩家自主控制W键可以看出，本图的确非常适合大家闲暇之余，亦或者是打战服等等需要精神大幅度集中的模式之余的另外一种娱乐体验。大家在滑动的过程中，控制着自己手中的机枪，扫射向周围树立的靶子，亦或者开启冲刺，冲撞前方挡住去路的小怪们，都是不错的娱乐。那么需要如何才能在休闲的同时，又能够拿到好的成绩呢，一起一探究竟!\r\n\r\n　　在进入游戏之后，首先看到的就是白狼从直升飞机上带着滑板跳下的动画，之后READY，GO。按一下W键，就开始本次的战斗了。首先看到的是一个类似于门洞的通道，击打上方的岩石，岩石破裂就会露出4个随机的星星(有金银铜三种，分数从上往下递减)。\r\n\r\n　　在通过这个通道后进入一个转弯处，在转弯的地方尽量选择走直线，这样能缩短时间，为后面抢占先机夺得机会。\r\n\r\n　　在通过弯道后就能看到一块有标记的岩石，打掉就出现一个秘密通道，进入秘密通道就能获得一些额外的星星的奖励。\r\n      ', '    虽然”炽天使”之战极为艰难，但是GRX精英队员们依然完成了任务。Blitz看到他们最强的生化武器‘炽天使’也被击败时，决定搭乘直升机返回他们沙漠峡谷之中的秘密实验室。可是Blitz却不知道GRX精英队员们一直隐蔽的在后方追踪，正当Blitz准备使用‘极速滑板’返回实验室时，GRX队员突然从天而降。队员们对这次的伏击势在必得胜负在此一举。这也许是将Blitz一网打尽的最好时机。GRX精英队员们要将Blitz和他们的生化兵器一起埋葬在沙漠峡谷之中。    ', 3, 1, 0, 0),
(9, '', '永恒之塔', '上海盛大网络发展有限公司', '2008-12-12', '马年坐骑亮相 韩服《永恒之塔》加入青色天马\r\n韩服《永恒之塔》近日加入了马年特色坐骑——青色天马，该坐骑可以通过购买90日点卡来免费获得，其属性为移动速度12.6，飞行速度16.0，战略疾走15.0.   ', '  韩式网游对中国玩家最大的作用，就是提升了我们对画面的要求。《传奇》所在的2D时代自不必说，自《奇迹》始，中国玩家明白了什么叫绚烂。而后的3D网游，基本是韩式网游在引领潮流，骑士、凯旋、A3，一直到2004年，《天堂2》的横空出世，中国玩家开始追求“电影级画面”，韩式网游就此达到在中国市场上的顶点。从此峰回路转，在星际、EQ2和国产网游的围追堵截下节节败退，2005年《魔兽世界》这种惊世巨作，更是将韩式游戏压得死死，似乎再无翻身之日。\r\n　　玩《帝国时代》的人都知道，韩国的特色兵种高丽战车几乎是一个完美的兵种，攻击高射程远威力大，用韩国你连马厩都可以不出，用战车就扫平天下。如今，卧薪多年的韩国网游终于生产出了他们的战车。\r\n　　这就是AION，这就是《永恒之塔》。  ', 3, 2, 0, 0),
(11, '', '大闹天宫ol', '百度游戏', '2014-02-01', '   《大闹天宫OL》是根据2014年同名贺岁电影独家授权改编，为百度游戏马年开篇重磅之作。游戏对传统72变、八十一难、四大战役等经典剧情进行了全新演绎，更增加七大圣、四大职业、跨服战等新玩法，今日神魔现世，决战苍穹！开启奇幻公测新篇章。等待诸位玩家前来勇闯天宫！   ', '  入驻的玩家将有机会扮演西游巨著中的角色，体验全新的经典剧情  ', 5, 5, 0, 0),
(12, '', '全球使命2', '上海臻游网络科技有限公司', '2011-09-27', '   展示玩家风采的每周之星活动以及GM挑战赛一直是《全球使命2》的传统活动，为了感谢大家对我们的厚爱，在马年伊始特活动奖励将大幅度提升：\r\n\r\n一、每周之星\r\n\r\n成功报名并当选每周之星的玩家可以获得商城时装一件（任选永久）！\r\n\r\n每周之星报名地址>>>>>>>>>>>>>>\r\n\r\n二、GM挑战赛\r\n\r\nGM挑战赛活动中所有黄金子弹均提升为白金子弹！\r\n\r\n以下为大家简单列举下GM挑战赛活动的几大特点：\r\n\r\n1. 形式多样：共有7种截然不同的活动形式，战斗目标和获胜条件也各不相同。\r\n\r\n2. 报名便捷：活动面向所有玩家，没有等级要求也无需豪华装备，只要进到比赛房间就算报名成功。\r\n\r\n3. 奖励丰厚：包括各种破军退魔点券武器、实用装置和超炫时装，同时最少可获得的参与奖也有白金子弹。\r\n\r\n最后再告诉大家一个小技巧，提前添加GM为好友后，等到GM创建了比赛房间后立刻追踪能帮助您更快抢到参加活动的机会。看到这里，还等什么？赶紧进入游戏与神秘的GM一起并肩作战吧！', '   《全球使命2》全区将于2月11日8：00~10：00停机更新维护，维护更新期间您将无法登陆进行游戏，给您带来不便敬请谅解。\r\n     充满爱意的情人节再一次如期到来，一生一世是对情侣最为真挚的祝愿。与心中的ta在茫茫人海之中相遇，最终携手度过一生，这是大多数人梦寐以求的事情。而经历战地考验的战友之情，或许也是一种延续了万年的缘分。别犹豫了！快与你的ta一起加入这场全球热恋吧！\r\n     本次维护更新内容\r\n1.  新武器：破军BTMP9（冲锋枪）\r\n2.  新道具：破军BTMP9以小搏大包、破军影袭特惠包\r\n3.  限时靶场：猎心者（永久）进入黄金靶场、合金战刃（永久）进入白银靶场\r\n4.  限时补给箱：神行QBU88（永久）、无尽Vector（永久）进入军需补给箱\r\n5.  本周免费：AWP、感光护镜、STG44（VIP专属）、SVD轻便型（VIP专属）\r\n6.  新任务：情人节限时特别任务、极限挑战系列任务、全球热恋系列任务\r\n7.  其他：\r\n-   巨龙猎手特惠包、破军RX4以小搏大包、ID识别卡特惠包、战灵-狂野打桩机、永久限时特卖武器装置下架；\r\n-   退魔UMP（永久）、宝宝兔/宝宝熊（永久）、雷明登MSR（永久）、春花水暖辞旧岁（名片）（永久）退出幸运靶场；\r\n-   鹰眼HK416（永久）退出军需补给箱，“末日救世主”全散件概率还原；\r\n-   其他功能性优化及BUG修复；\r\n8.  新活动：\r\n-   超值礼包 限时特卖\r\n-   首次充值送豪礼\r\n-   登陆有惊喜 点券武器任你爽\r\n-   智多星答题赢好礼\r\n-   GM全面挑战系列赛', 3, 1, 0, 0),
(13, '', 'CF穿越火线:反恐精英PK版', '百度应用', '2014-01-17', '   不一样的穿越火线，不一样的反恐精英，GOOGLE PLAY热门射击枪战游戏登陆多酷平台。这一个创新玩法的枪战游戏，游戏中不但有30多种世界名枪荟萃，沙漠之鹰，AK47,火箭筒，AWP狙击等，还有10种造型可爱的反恐精英角色，逼真的枪械音效，华丽的游戏场景，必定让你热血沸腾。游戏有蓝牙对战和在线对战多种模式，让你体验与人斗其乐无穷，来，联机挑一把？？ 【DK】...', '  ★不一样的穿越火线，不一样的反恐精英', 2, 1, 0, 0),
(14, '', '魔兽世界', '暴雪娱乐股份有限公司', '2004-03-18', '　本周末，魔兽首席内容设计师 Cory "Mumper" Stockton在推特上向玩家们透露了更多关于德拉诺之王要塞系统的消息。这些信息包括要塞的驻军，和一些要塞建筑相关的提示。\r\n\r\n　　我们曾经讨论过如何让要塞更有家的感觉，有人建议如果玩家能在要塞中向他人展示自己过去所获得的成就，就会给这个系统带来更多的归属感。Mumper 提到要塞系统将会包含里程碑，通过成就获得，玩家可以把它们竖立在自己的要塞中。然而他也说了要塞系统的核心是游戏体验，而不是让玩家摆放家具或是装扮。毕竟，这不是“魔兽物语”或是“模拟版魔兽人生”。\r\n\r\n\r\n\r\n　　要塞包含许多很酷的建筑，法师塔专精“城镇传送”将允许玩家打开通往各大主城的传送门\r\n\r\n　　在讨论中，Mumper 提到了一个建筑，法师塔可以选择一个名为主城传送门的专精，选择专精的玩家可以在要塞中开启通过各个主城的传送门。他之后的话似乎表明这个魔法塔将不会是法师专享，就像其他建筑一样，魔法塔也可以进行升级并选择建筑专精。他的另一条推特提到玩家可以从怪物、任务奖励和商贩处获得这些建筑图纸，同时再次暗示这个建筑将会对所有职业开放。\r\n\r\n\r\n\r\n　　要塞的存在并非为了装饰，我们关注的是其游戏性，建筑解锁并升级后才能选择专精，法师塔也不例外\r\n\r\n　　这意味着要塞的确可以成为玩家的大本营，玩家不再需要将炉石设置在主城之中来方便传送。主城可以提供的任何便利的服务似乎都可以在要塞中实现，例如银行、拍卖行、虚空仓库等等。现在还不好说要塞系统会对魔兽城市的玩家数量产生怎样的影响，热闹的都城能给人繁华的感受，而属于自己的要塞则给玩家带来更多成就感。\r\n\r\n\r\n\r\n　　我现在想知道的是，既然魔兽的开发者们打算将所有城市的服务搬进要塞，那么是否会在要塞中开放交易和综合聊天频道呢?既然魔兽已经有了便利的跨服组团功能，那么我想这么做应该也不会是什么太大的问题。那么亲爱的玩家，你会如何选择呢?你会像现在这样把家设定在主城，把要塞作为自己的度假胜地?还是把家直接设定在要塞，细心经营，成为真正的要塞之主?请在下面留下评论。\r\n', '  职业\r\n\r\n德鲁伊\r\n天赋\r\n现在，玩家在激活野性之心后，可从PvP强度中获得下列增益：\r\n恢复德鲁伊在激活该技能后，其伤害将获得50%PvP强度的加成（原为100%）。\r\n野性和平衡德鲁伊在激活该技能后，其治疗量将获得100%PvP强度的加成（原为120%）。\r\n潜行者\r\n天赋\r\n神经打击现在还可使肾击或偷袭在击中玩家目标后使其伤害值降低25%（原为50%）。该天赋对非玩家目标的效果不变。\r\n术士\r\n恶魔学识\r\n恶魔卫士的军团打击和愤怒卫士的致死顺劈现在可使受到的任何治疗效果降低，持续6秒（原为5秒），从而使宠物可以在没有急速的情况下保持该效果。\r\n战士\r\n综合\r\n现在，使用瓦解怒吼或拳击后，这两个技能将共享15秒冷却时间。瓦解怒吼的40秒冷却时间保持不变，但在使用了拳击后的15秒内将无法使用瓦解怒吼。\r\n怪物\r\n\r\n至尊天神的掉落由14赛季恶孽角斗士装备更新为15赛季骄矜角斗士装备。\r\n现在，卡桑琅丛林的稀有怪物只在每天首次被击败时奖励荣誉点数了。\r\n \r\nPvP\r\n\r\n第15赛季的骄矜角斗士装备和武器现已开放购买。\r\n现在，第14赛季的恶孽角斗士装备和武器可以使用荣誉点数（取代征服点数）来购买了。\r\n90级角色的基础韧性值调整为77%（原为72%）。不到90级的玩家，基础韧性值仍为40%。\r\n调整了韧性的收益递减曲线以适应新的基础韧性值，使其与原先每个韧性点的数值保持一致。\r\n现在，战斗疲劳将使角色在PvP战斗中受到的治疗量降低60%（原为55%）。\r\n角斗士的荣耀，PvP饰品2件套奖励现在将提供5280点韧性（原为2600点）。\r\n[仅限测试服务器]弗拉斯卡萨又带着供大家测试用的15赛季的装备归来了。快去你所属阵营在锦绣谷的圣殿拜访他吧。\r\n战场与竞技场\r\n\r\n竞技场\r\n在竞技场的2v2比赛中，抑制现在将在比赛开始5分钟后生效（原为10分钟）。\r\n竞技场的3v3和5v5比赛不做调整，抑制仍将在比赛开始10分钟后生效。\r\n奥特兰克山谷\r\n提高了下列NPC的生命值和伤害值。\r\n联盟：范达尔·雷矛、巴琳达·斯通赫尔斯、雷矛防御者、联盟弓箭手以及所有的统帅。\r\n部落：加尔范上尉、德雷克塔尔、霜狼守卫者、霜狼弓箭手以及所有的将领。\r\n下列NPC现在将免疫缴械、眩晕和死亡之握效果。\r\n联盟：范达尔·雷矛、巴琳达·斯通赫尔斯。\r\n部落：加尔范上尉、德雷克塔尔。\r\n \r\n物品\r\n\r\n[仅限测试服务器]砮皂寺的弗拉斯卡萨正在出售测试用的T15普通装备。\r\n[仅限测试服务器]锦绣谷的阵营圣殿中的格里法塔尔正在出售测试用的职业雕文。\r\n永恒岛上的织雾者艾莉出售的下列物品等级提升至489（原为476）。这一改动将追溯影响所有玩家之前购买的物品。\r\n燎云重杖\r\n少昊的冥想\r\n破晓守护者\r\n羽绘长弓\r\n猢狲开罐器\r\n斡耳朵献祭之匕\r\n熊猫人和平之礼\r\n精选熊猫人匕首\r\n永昼之盾\r\n牦牛倌的长杖', 3, 4, 0, 0),
(15, '', '热血战纪', '百度游戏', '0000-00-00', '', '  ', 5, 2, 0, 0),
(16, '', '弹弹堂', '第7大道', '2013-07-03', '《弹弹堂》是一款无需下载的国产Q版射击类竞技游戏，被誉为人型疯狂坦克+冒险岛的结合版，赶快一起来加入吧！\r\n在游戏里中您可以和不同的玩家进行竞技对抗，简易的键盘操作，让您在整个竞技对抗过程中更容易与玩家互动和竞技，从而体验到刺激、欢乐、愉快的游戏乐趣。使用不同的武器，还会拥有不同的炮弹效果，或者你会是一个喜欢石器时代的“石斧”，也有可能是现代的“大炮”，甚至是超现代的“电光枪”！商城多式多样的服装道具，不仅能够展现个人的个性魅力，更让人其乐无穷。', '  ', 5, 1, 0, 0),
(17, '', '宠物大战僵尸', '', '0000-00-00', '', '  ', 5, 3, 0, 0),
(18, '', '合金装备崛起：复仇', 'KONAMI', '2010-07-22', '《合金装备崛起：复仇》讲述的是《合金装备》系列中人气角色“雷电”的故事。\r\n　　原先，这部游戏是由小岛工作室直接负责，游戏专注于隐秘行动，在格斗场面的设计上也巧妙地运用了一些技巧。而自白金工作室接手负责后，《合金装备崛起：复仇》就更专注于动作元素。该作使用的是最新研发的“FOX引擎”。\r\n　　本作原本计划是讲述雷电在《合金装备2》和《合金装备4》之间的一段时间内发生的事情，但是白金工作室参与进来之后，为了有更广阔的开发空间，将本作的故事时间移动到《合金装备4》结束的几年之后：强化骨骼（Cyborgs）在世界上飞速发展，产生大量超人类，影响了整个世界。', '  系统：Win XP/VISTA/Win7/Win8\r\nCPU：Intel Core i5-2400/AMD同性能CPU\r\n内存：2GB以上\r\n显卡：nVidia GTS450/ATI同性能显卡\r\n硬盘：25GB以上空间\r\n声卡：Direct Sound 兼容声卡\r\n', 1, 5, 0, 0),
(19, '', '信长之野望14：创造', 'KOEI', '2003-03-19', '作为30周年纪念作品以及系列最新作的《信长之野望14：创造》，将预定在2013年内在PC和PS3同时发售。PC版对应的操作的系统为Windows XP/Vista/7/8。\r\n　　本作的介绍，由制作人小笠原贤一进行。游戏类型自然依旧是历史模拟类，本作口号为“新时代的创造”。织田信长最终未能建立的新世界，将通过玩家之手予以实现。而关键字则是“真实感”（Reality）、“动态感”（Dynamic）、“戏剧感”（Dramatic）。\r\n　　为追求图像质量，采用全3D的一张地图，从城下町到日本全国，可以进行无缝式的情报确认。当然，领国和城下町，随着玩家的“创造”也会发生真实的变化。\r\n　　同时，合战可以将多个城池出击的军队陷入混战，从而展现动态化的一面。为此还准备了系列最多的300座以上的城池，可使合战形成多面作战。而且，合战中的视点变更也将无缝化进行。\r\n　　与历史相关的事件将以任务的形式出现，各式各样的历史剧像将由玩家来“创造”。\r\n　　在发售后，预定提供地区、武将、势力等要素的追加下载内容。', '  系统：Win XP/VISTA/Win7/Win8\r\nCPU：Intel Pentium 4/AMD同性能CPU\r\n内存：512MB以上\r\n显卡：nVidia GeForce 6800GT/ATI同性能显卡\r\n硬盘：5GB以上空间\r\n声卡：Direct Sound 兼容声卡\r\n', 1, 4, 0, 0),
(20, '', '实况足球2014', 'KONAMI', '2013-03-08', '《实况足球2014》中西甲、法甲以及荷甲联赛将获得全部授权，意甲联赛除个别球员外也获得全部授权。而大部分英超球队还是使用假名与假球衣（这是由于EA对英超拥有独占授权），但可能会有其他球队像曼联一样获得完全授权，这不包括那些与EA有单独合作关系的球队(阿森纳、切尔西、阿斯顿维拉、埃弗顿、富勒姆、纽卡斯尔、曼城、热刺)。德甲球队除2只获得授权的队伍外将全部缺席。拜仁已获得授权，另一只可能是除多特蒙德外的强队（多特与EA也有单独合作）。\r\n　　由于Konami在拉丁美洲拥有巨大的受众，因此可能会有新增的联赛出现。从逻辑上讲，第一选择是阿根廷足球甲级联赛。该联赛曾传言在PES 2013就会出现，但当时Konami未能购买到其联赛全部球队的授权。\r\n　　另外据传西乙联赛也有可能获得全部授权。巴西的一些球场将添加入游戏中， 包括新格雷米奥竞技场。 Konami希望能够获得除西甲，法甲以及荷甲外的其他联赛的球场授权。\r\n', '系统：Win XP/VISTA/Win7/Win8\r\nCPU：Intel Pentium 4/AMD同性能CPU\r\n内存：1GB以上\r\n显卡：nVidia GeForce 6800GT/ATI同性能显卡\r\n硬盘：5GB以上空间\r\n声卡：Direct Sound 兼容声卡\r\n', 1, 6, 0, 0),
(21, '', '战地1947', 'DICE ', '2002-09-01', 'CS无疑是现时最受欢迎的FPS GAME，很多新作品都借鉴了CS的成功之处，并力图超越它。由CS开始Fps game的定位由单人混战模式转换成多人团队合作模式，fps game不再是简单的杀人比赛，CS也将电子竞技运动推到一个历史高峰，其它作品始终难以撼动CS的地位，那继CS之后第一人称视角动作射击游戏还会有些什么变化？还有些什么元素可以进一步提高Fps game的乐趣呢？ \r\n\r\n《战地1942（BATTLEFIELD 1942）》是唯一支持64人游戏的团队FPS动作游戏。 \r\n在《战地1942》里，你可以去体验你仰慕已久、如火如荼惨烈的诺曼底海滩、驾着坦克穿越北非森林、在战斗机上飞越中途岛、在瓜达尔卡那尔岛指挥战舰、或者在菜园上面空降。它们都是精选自二战时期发生在亚洲、欧洲、非洲的着名且具有关键性的战役。玩家可以体验到非洲沙漠里阿拉曼战役的火热，苏联在哈尔科夫的脚步，阿登森林吹出布拉格战役的寒风，硫磺岛快被融化的沙滩。 \r\n\r\n《战地1942》的一大特点就是车辆。《战地1942》并不只是一个“二战游戏”。它更象一个全新的游戏，给予玩家许多移动的方法，而不仅仅是靠双腿。它是唯一拥有可以操作的35种“战争机器”的团队第一人称射击游戏。在《战地1942》移动，除了又腿，你还可以依靠：谢尔曼坦克、野马战斗机、M3A1半履带式装甲运兵车、威尔士亲王号、坦克、飞机、登陆艇、驱逐舰、潜艇、高射炮、装甲运兵车、潜艇、吉普、炮兵、战列舰。是否正确地使用和管理这些车辆，决定着每个战争胜利或者失败的结局。 \r\n\r\n驾驶飞机、驱动坦克、控制船只！由此产生了一个非常奇妙并且多样的玩法。有一些大型的器具，例如轰炸机和战列舰，在游戏里玩家可以选择他们擅长的角色——飞行员、炮手、船长、投弹手……。任何你可以选择的东西！你要果断地进行选择！ \r\n\r\n《战地1942》是最好的可在线游戏的多人游戏。《战地1942》支持最多64人同时在一张地图上游戏，但这不能埋没《战地1942》在单人游戏方面的不俗的表现。为了要获得胜利，《战地1942》更注重团队协作。例如在轰炸机里，一个玩家将扮演飞行员角色，另外两个队友则承担机枪手和投弹手的工作。这叁个玩家的配合将决定玩家是否获得胜利、是否可能生还。 \r\n\r\n《战地1942》让玩家自由地充分体会WWII。《战地1942》的另一特点就是真正巨大并且真实的地图。玩家们必须研究它们，这给游戏增加了策略性的一面。它提供16个真实战役场景，玩家可以选择成为步兵团长，他可以操作几乎所有轴心国和同盟国的手持或者装备武器，还可以指挥各种陆地车辆、船只、飞行器。在某些场景里，玩家还可以指挥其他的部队。 \r\n\r\n“石头、剪子、布！”，游戏里的每个武器都有他们的长处和弱点，通过游戏你可以慢慢探索。战舰在向你慢慢靠近，潜艇可以克制他们；轰炸机却是潜艇的天敌，比轰炸机强的是战斗机，战斗机飞过来，你的希望则是高射炮，接下来上场的是机枪手，再后面是吉普车，等等等等，不一而足。游戏会经常性地强迫你经常更新打击敌人的策略。 \r\n\r\n《战地1942》里面，玩家可以扮演更多的角色，可以成为飞行医护兵、坦克驾驶工程师或者是战舰驾驶狙击手。虽然是单人游戏模式，但你并不是孤军奋战。游戏里设计了命令AI，他决定扮演哪个角色、进入哪些车辆、行进的路线。一但他的士兵在行进路上遇到敌军，他们会策略地接管或者解决敌人。 \r\n\r\n在《战地1942》里，你尽可以在游戏里面去实施你的策略与战术。同时《战地1942》也提供游戏内的载图工具，玩家可以利用这个工具把宏大的场面、惨烈的战争保存下来，让朋友们看看自己最得意的战略。 \r\n\r\n至于图像与音像，更是有可圈可点之处。当你在《战地1942》里驾着坦克缓缓开在乾涸龟裂的大地上，周围寥寥两棵小草，而毒辣的太阳正散发着耀眼的光芒，就该知道什么是亲临其境了。 \r\n\r\n你要参加二战里那些些关键性的战役，你要谨慎选择武器武装自己，你要利用各种车辆做掩护，你用舰船飞机在海陆空战斗。不要犹豫，勇往直前，你后面的战士都唯你马首是瞻！', '  【安装说明】\r\n\r\n1.加载原版镜像安装，安装序列号：2500-4452014-7035829-2611 \r\n安装完成后先运行“1.6升级补丁”，再运行“1.6修正补丁”（需要手动选择游戏目录，点“Update”修正），最后运行“1.6-1.61b升级补丁”！\r\n\r\n2.安装资料片《进军罗马》，安装序列号：2500-3163776-1447565-2563 \r\n\r\n3.安装资料片《秘密武器》，安装序列号：2GYY-3WLK-8BTF-WJUR-G277 \r\n\r\n4.解压“破解补丁”到游戏目录下覆盖，开始游戏即可！ \r\n\r\n“战地1942.bat”战地1942原版 \r\n“进军罗马.bat”资料片《进军罗马》 \r\n“秘密武器.bat”资料片《秘密武器》 ', 1, 1, 17, 0),
(22, '', 'QQ三国', '腾讯游戏', '2007-06-29', '   岁末将至，三国世界大街小巷一副热闹满满的景象。《QQ三国》为了让新老玩家在新的一年里享受到更为欢乐的游戏体验，于1月16日12点整开启双线新服“貂蝉闭月”。同时，贴心的《QQ三国》还为国民们精心准备了七大活动，助你称霸新服。\r\n\r\n\r\n　　新服瞬间飙红 场面火爆\r\n\r\n　　盼望着，盼望着，《QQ三国》在2014年1月16日再次为玩家送上新年贺礼，开启双线新服“貂蝉闭月”。当天12点整，《QQ三国》双线新服“貂蝉闭月”准时开启，热情的国民们便蜂拥而入，“貂蝉闭月”服务器内人潮涌动热闹非凡，造就了新服开启瞬间飙红的火爆场景。\r\n\r\nQQ三国最新图片\r\n\r\n　　七大活动助力 称霸新服近在咫尺\r\n\r\n　　此次对双线新服“貂蝉闭月”，《QQ三国》可谓是考虑周全堪称完美，为国民们准备了“亲，你的IPHONE5S掉了”、“来就送688QB礼包”、“升级就送”、“4倍返利秒升70级”、“绝版美炫、新服独享”、“新手特惠礼包全面升级”以及“新服专享双倍经验”的七大新服活动，称霸新服近在咫尺。\r\n\r\n\r\n　　来就送 秒升70不是问题\r\n\r\n　　细数本次新服的七大活动，个个都是实惠之至。不得不提的是“不想称霸新服的屌丝不是好屌丝”新手助长礼包，能够快速帮助玩家升级。同时，双倍经验、商场优惠等福利的好处更是不言而喻。不管你是新手玩家，还是是三国的骨灰级玩家，此次新服秒升70级不是问题，《QQ三国》助你成就霸业。\r\n\r\n　　1月16日，双线新服“貂蝉闭月”火爆开启，三国国民秒升70级不是梦。\r\n\r\n本文来自: 17173.com 中国游戏第一门户站 详细出处参考：http://news.17173.com/content/2014-01-17/20140117120216668.shtml', '  《QQ三国》双线新服 “江东二乔”于1月1日准时开启，跨年资料片预热版本也将随之而来。无论是师徒、情侣或结拜兄弟，1413三国活动爱意满满，新服专属七大活动更助力勇士称霸新服。在兄弟姐妹的陪伴下和多重好礼的支持下，玩家们必定能够演绎出不同的三国情缘。\r\n\r\nQQ三国最新图片\r\n\r\n　　喜迎新服 七大活动助阵\r\n\r\n　　“江东二乔”在元旦佳节与众人见面，《QQ三国》不忘为大家送上新年礼物，推出七大活动让玩家分享乐趣收获好礼。新服升级送Q币，第一名更有iPhone5S等你拿；绝版美炫仅在新服上架，QQ会员独享九折优惠；连续七天半的双倍经验，冲级不是难题！不仅如此，《QQ三国》还将派发出上千万的三国点，鼓励每一位在新服中奋战的玩家。\r\n\r\nQQ三国最新图片\r\n\r\n　　真爱不变 爱你一世一生\r\n\r\n　　2014年1月3日代表爱你一世一生，相信每一位三国玩家都有想表达爱意的对象。《QQ三国》将江陵场景华丽变装为玩家提供绝佳的约会地点，向情谊深重的玩家颁发专属绝版称号以示鼓励，还推出免费符鬼和绝版情侣美炫。珍贵的友情、浪漫的爱情和感恩的师徒情在这里尽情升华，爱他就大胆的说出口!\r\n\r\nQQ三国最新图片\r\n\r\n　　精彩连连 资料片预热版来袭\r\n\r\n　　增开新服、推出活动，《QQ三国》在新年带给玩家的惊喜不只这些，跨年资料片预热版本还将带来系统优化和商城特惠等内容。日常活动经验奖励大幅增加，使用神游丸获得的经验值也较以往多，商城特惠则主打折扣无极限，用最低的价格回报玩家一年来的支持。借新资料片的东风，在新服中拼搏的玩家们更会游刃有余。\r\n\r\nQQ三国最新图片\r\n\r\n　　兄弟们摩拳擦掌早已准备就绪，《QQ三国》双线新服 “江东二乔”等你来战！\r\n', 3, 2, 19, 0),
(23, NULL, '星球探险家', 'Pathea Games', '2014-01-26', NULL, NULL, 3, 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lj_game_hot`
--

CREATE TABLE IF NOT EXISTS `lj_game_hot` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `game_id` int(11) NOT NULL COMMENT '游戏id',
  `list_id` int(11) NOT NULL,
  `list_small_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `game_id` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='热门游戏表';

--
-- 导出表中的数据 `lj_game_hot`
--

INSERT INTO `lj_game_hot` (`Id`, `game_id`, `list_id`, `list_small_id`) VALUES
(1, 1, 3, 4),
(2, 2, 1, 2),
(3, 3, 1, 2),
(6, 9, 3, 2),
(4, 13, 2, 1),
(5, 11, 5, 5);

-- --------------------------------------------------------

--
-- 表的结构 `lj_game_list`
--

CREATE TABLE IF NOT EXISTS `lj_game_list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '大类名字id',
  `list_name` varchar(100) NOT NULL DEFAULT '' COMMENT '大类类名',
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='游戏大类表' AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `lj_game_list`
--

INSERT INTO `lj_game_list` (`list_id`, `list_name`) VALUES
(1, '单机游戏'),
(2, '手机游戏'),
(3, '网络游戏'),
(4, '电子游戏'),
(5, '网页游戏'),
(6, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `lj_game_list_small`
--

CREATE TABLE IF NOT EXISTS `lj_game_list_small` (
  `list_small_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_small_name` varchar(100) NOT NULL DEFAULT '' COMMENT '小类类名',
  PRIMARY KEY (`list_small_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='游戏小类表' AUTO_INCREMENT=9 ;

--
-- 导出表中的数据 `lj_game_list_small`
--

INSERT INTO `lj_game_list_small` (`list_small_id`, `list_small_name`) VALUES
(1, '射击飞行'),
(2, '角色扮演'),
(3, '休闲益智'),
(4, '即时战略'),
(5, '动作格斗'),
(6, '体育竞速'),
(7, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `lj_grade_name`
--

CREATE TABLE IF NOT EXISTS `lj_grade_name` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '等级编号',
  `grade_name` varchar(255) DEFAULT NULL COMMENT '等级名字',
  `integration` int(11) DEFAULT NULL COMMENT '積分',
  PRIMARY KEY (`grade_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='等级称号表' AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `lj_grade_name`
--

INSERT INTO `lj_grade_name` (`grade_id`, `grade_name`, `integration`) VALUES
(1, '新兵', 10),
(2, '士兵', 20),
(3, '弓兵', 50),
(4, '重甲', 100),
(5, '骑兵', 200),
(6, '将领', 500),
(7, '统帅', 1000),
(8, '男爵', 2000),
(9, '子爵', 5000),
(10, '伯爵', 10000),
(11, '侯爵', 20000),
(12, '公爵', 50000),
(13, '亲王', 100000),
(14, '王储', 200000),
(15, '国王', 500000),
(16, '界主', 1000000);

-- --------------------------------------------------------

--
-- 表的结构 `lj_information_user`
--

CREATE TABLE IF NOT EXISTS `lj_information_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户名',
  `information` longtext NOT NULL COMMENT '信息',
  `read_tf` int(1) DEFAULT '0' COMMENT '是否阅读',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='系统发布信息表' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `lj_information_user`
--

INSERT INTO `lj_information_user` (`Id`, `user_id`, `information`, `read_tf`) VALUES
(1, 1, '欢迎来到乐俊游戏攻略论坛，你可以和其他玩家分享，交流你的游戏心得！~\r\n玩在乐俊，了在乐俊，我相信乐俊\r\n————乐俊，与你同在~', 0);

-- --------------------------------------------------------

--
-- 表的结构 `lj_post_hot`
--

CREATE TABLE IF NOT EXISTS `lj_post_hot` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '排名',
  `post_id` int(11) NOT NULL COMMENT '贴id',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `lj_post_hot`
--

INSERT INTO `lj_post_hot` (`Id`, `post_id`) VALUES
(3, 9),
(4, 1),
(2, 8),
(1, 11),
(5, 10);

-- --------------------------------------------------------

--
-- 表的结构 `lj_post_list`
--

CREATE TABLE IF NOT EXISTS `lj_post_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类id',
  `list_name` varchar(50) NOT NULL COMMENT '类名',
  `integration` int(11) NOT NULL COMMENT '积分',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `lj_post_list`
--


-- --------------------------------------------------------

--
-- 表的结构 `lj_post_main`
--

CREATE TABLE IF NOT EXISTS `lj_post_main` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '贴id',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `content` longtext NOT NULL COMMENT '内容',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '发帖人id',
  `datetime` datetime NOT NULL COMMENT '发帖时间',
  `clicks` int(11) DEFAULT '0' COMMENT '点击量',
  `praise_number` int(11) DEFAULT '0' COMMENT '点赞数',
  `parameter` float NOT NULL COMMENT '参考值',
  `tf` int(11) NOT NULL DEFAULT '0' COMMENT '是否阅读',
  `list_id` int(11) NOT NULL COMMENT '类别id',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='帖子表' AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `lj_post_main`
--

INSERT INTO `lj_post_main` (`post_id`, `theme`, `content`, `user_id`, `datetime`, `clicks`, `praise_number`, `parameter`, `tf`, `list_id`) VALUES
(1, 'test', '贴吧测试', 1, '2014-01-15 00:00:00', 47, 3, 47, 1, 0),
(8, 'woshi nele ', '<p>我在测试我是nele &nbsp;这是帖子的测试</p>\n\n<p>&nbsp;</p>\n', 1, '2014-01-29 19:45:48', 99, 3, 99, 1, 0),
(9, '这是tzdelta 的测试', '<p>哈哈哈这是 tzdelta的测试</p>\n', 1, '2014-01-29 20:03:13', 24, 0, 24, 1, 0),
(10, '这是帖子的再次测试', '<p>哈哈哈</p>\n', 1, '2014-01-29 20:26:32', 10, 0, 10, 1, 0),
(11, '官方发帖', '<p>欢迎大家来到乐俊游戏攻略论坛，相信了乐俊。</p>\n\n<p>玩在乐俊，了在乐俊，我相信乐俊&mdash;&mdash;乐俊与你同在</p>\n\n<p><img src="http://a2.qpic.cn/psb?/906014da-be31-4bea-a214-c05e2a8fdd3c/36PZ96xD0Qu5eRClbkPMEuiDbObiRK1O0*AYhIsA7O0!/c/dBh4g8aXBQAA&amp;bo=RAIDAgAAAAABAGA!&amp;rf=0-18" /></p>\n', 1, '2014-02-05 22:39:14', 113, 100, 113, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lj_post_replay`
--

CREATE TABLE IF NOT EXISTS `lj_post_replay` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `replay_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '回帖人id',
  `content` longtext NOT NULL COMMENT '回帖内容',
  `post_id` int(11) NOT NULL DEFAULT '0' COMMENT '贴id',
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '回复时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='回帖表' AUTO_INCREMENT=20 ;

--
-- 导出表中的数据 `lj_post_replay`
--

INSERT INTO `lj_post_replay` (`Id`, `replay_user_id`, `content`, `post_id`, `datetime`) VALUES
(1, 1, '贴吧回复测试', 1, '0000-00-00 00:00:00'),
(9, 2, '<p>撒大声地阿斯达</p>\n', 7, '2014-01-20 17:05:10'),
(10, 2, '<p>zxczxczxcsdfsd第三方斯蒂芬</p>\n', 7, '2014-01-20 17:08:03'),
(11, 5, '<p>我是apple在测试评论</p>\n', 7, '2014-01-20 17:24:54'),
(12, 5, '<p>我是apple 我在做测试</p>\n', 7, '2014-01-20 17:26:34'),
(13, 0, '<p>士大夫似的</p>\n', 1, '2014-01-30 03:03:27'),
(14, 0, '<p>爱上大声地测试</p>\n', 8, '2014-01-30 03:09:01'),
(15, 6, '<p>飯飯回復~</p>\n', 1, '2014-01-30 23:26:12'),
(16, 2, '<p>圣达菲</p>\n', 7, '2014-01-30 23:26:33'),
(17, 0, '<p>学生非常第三方v</p>\n', 8, '2014-01-31 20:01:58'),
(18, 0, '<p>asd</p>\n', 8, '2014-02-07 22:17:09'),
(19, 2, '<p>暂时没有字数限制</p>\n', 15, '2014-02-16 18:27:46');

-- --------------------------------------------------------

--
-- 表的结构 `lj_post_z`
--

CREATE TABLE IF NOT EXISTS `lj_post_z` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `lj_post_z`
--


-- --------------------------------------------------------

--
-- 表的结构 `lj_report_cheats`
--

CREATE TABLE IF NOT EXISTS `lj_report_cheats` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cheats_id` int(11) NOT NULL DEFAULT '0' COMMENT '攻略id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '举报的用户名',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '举报时间',
  `report_reason` longtext NOT NULL COMMENT '举报原因',
  `tf` int(11) NOT NULL DEFAULT '0' COMMENT '是否阅读',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='举报攻略表' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `lj_report_cheats`
--

INSERT INTO `lj_report_cheats` (`Id`, `cheats_id`, `user_id`, `time`, `report_reason`, `tf`) VALUES
(1, 1, 1, '2014-01-15', '举报攻略测试', 1);

-- --------------------------------------------------------

--
-- 表的结构 `lj_report_post`
--

CREATE TABLE IF NOT EXISTS `lj_report_post` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0' COMMENT '贴id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '举报的用户名',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '举报时间',
  `report_reason` longtext NOT NULL COMMENT '举报原因',
  `tf` int(11) NOT NULL DEFAULT '0' COMMENT '是否阅读',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='举报贴表' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `lj_report_post`
--

INSERT INTO `lj_report_post` (`Id`, `post_id`, `user_id`, `time`, `report_reason`, `tf`) VALUES
(1, 1, 1, '2014-01-15', '举报贴吧测试', 1);

-- --------------------------------------------------------

--
-- 表的结构 `lj_user_board`
--

CREATE TABLE IF NOT EXISTS `lj_user_board` (
  `user_id` int(11) NOT NULL,
  `user_id_lose` int(11) NOT NULL,
  `info` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `lj_user_board`
--


-- --------------------------------------------------------

--
-- 表的结构 `lj_user_information`
--

CREATE TABLE IF NOT EXISTS `lj_user_information` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL DEFAULT '' COMMENT '用户名',
  `photo` blob COMMENT '头像',
  `nickname` varchar(15) DEFAULT '' COMMENT '昵称',
  `sex` varchar(2) DEFAULT '' COMMENT '性别',
  `age` int(11) DEFAULT '0' COMMENT '年龄',
  `birthday` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '出生年月',
  `nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `ID_number` varchar(19) DEFAULT NULL COMMENT '身份证号',
  `e-mail` varchar(50) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `qq` varchar(12) DEFAULT NULL COMMENT 'QQ',
  `phone` varchar(12) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `signature` text COMMENT '个人签名',
  `integration` int(11) DEFAULT '0' COMMENT '积分',
  `grade_id` int(11) DEFAULT '1' COMMENT '等级编号',
  `achievement` varchar(255) DEFAULT NULL COMMENT '成就（以*分割）',
  `IP` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `login_ip` varchar(100) NOT NULL COMMENT '登录ip',
  `zhuce_time` date DEFAULT '0000-00-00' COMMENT '注册时间',
  `phone_tf` int(1) DEFAULT '0' COMMENT '电话验证（0为没有，1为有）',
  `e_mail_tf` int(1) DEFAULT '0' COMMENT '邮箱验证（0为没有，1为有）',
  `last_logn_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '上一次登录时间',
  `post_number` int(11) DEFAULT '0' COMMENT '贴数量',
  `cheats_number` int(11) DEFAULT '0' COMMENT '攻略数量',
  `friend_number` int(11) DEFAULT '0' COMMENT '好友数量',
  `replay_number` int(11) DEFAULT '0' COMMENT '回贴数量',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `authority_id` int(1) NOT NULL DEFAULT '1' COMMENT '权限',
  `gold` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=25 ;

--
-- 导出表中的数据 `lj_user_information`
--

INSERT INTO `lj_user_information` (`Id`, `username`, `photo`, `nickname`, `sex`, `age`, `birthday`, `nation`, `ID_number`, `e-mail`, `qq`, `phone`, `address`, `signature`, `integration`, `grade_id`, `achievement`, `IP`, `login_ip`, `zhuce_time`, `phone_tf`, `e_mail_tf`, `last_logn_time`, `post_number`, `cheats_number`, `friend_number`, `replay_number`, `password`, `authority_id`, `gold`) VALUES
(8, '公子不爱财', NULL, '', '', 0, '0000-00-00 00:00:00', NULL, NULL, '1920249670@qq.com', NULL, NULL, NULL, NULL, 0, 1, NULL, '221.210.100.208', '', '2014-02-14', 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'e2840559d68c558099ac982c2e28f1d8', 1, 0),
(1, 'lejun2014', 0xffd8ffe000104a46494600010100000100010000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc000110800aa00aa03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f61a2968aea38c4a2968a004a2968a004a2969aee9146d248caa8a32c58e001ef40c5a2b91d4bc7f616c4a58c2d78c38dff7533ec7a9158171e3ed6256fddadbc23b0085bf99fe958bad046aa84d9e9b457948f19ebc5bfe3f53fefc27f85685b78cf5707e792093d9a3c7f2c54fd66057d5a67a3515cad9f8ce36e2f2d8c43fbf19dc3f11d47eb5d25ade5bdec425b7952443dd4e45690a919eccca74e50dd13514b4568409452d14009452d14009452d1400b8a31451400628c51450018a4c52d140c4af34f1debb25cea4fa5c5262dadf1e6007efbe39cfd33d2a7f13fc40996e64b1d11954212af76464e7b84ff1af3f5631b1249218e49273cfa9f7ae4ad56eb951d7428ebcd22deee693754609a7107ad729d63f77356239b154b38a037bd1603505c9c7dea96cb5abad32e84f6b2156cfcca4fcaff51fd6b2379c75a696cf5a6bddd503b4b467b4683aedb6b9642588ed9070f19eaa7fcf7ad7c5788e89ac4ba36a71dd21253204a83f896bda2dae12eadd268d8323a8607d6bbe8d4e7479d5a9f23d09b14628a2b5310c518a28a00314628a280168a5a290c4a2968a004ae73c75aa3e95e16b86898acd7044087b8ddd4ffdf20d7495c17c540dfd91a791f745cb03f5d9c7f5a8a8ed165d3579a3cc93017d29e0348cb1a217772155475627a0a883715e8be13f0c8b08d350bc406f1c6638cffcb153ff00b37f2e95e5ce6a2ae7ab18b93b185a8f84eeb4eb28278b74c5631e7a0ea1bb91ebff00d6ac885d5c60d7b0ac41860ff2ef581abf832d6fd8cd6c4dbce79250707ea2b3a755bd19aca9db63807b524656ab3c2e87906b72eb42d634d3f35b99907f145cfe9d6b39ee00e2442a7fda18ad935d0cac5121bd0d3791569a68cf4c7e155e465ec31544d866ee7ad7a7fc3ad50dce9af6521cb5bb6179fe13d3fafe55e58cc3bd7aaf80bc3f3e9903dd5cae259b076fa0ec3ebd6b6a37e6b98621a70d4ed68a5a2bb4f3d6c2514b4503128a5a28017146297146281898a314b8a3140098ae67c7fa79bff07ddec5cbdb62e1703fbbd7f42d5d3e29245431b8906e8ca90ebea31c8fcb8a992bab15176773c13c316ab7fe21b28586503f98c3d9467fc2bd81013c9ef5e75e14d30e9de39bbb56076dbc2fe5e7ba36369fc88af488c578759de48f6e92b449957a54ea94c4156516924824d91342ac30ca0fd6aa5c69567700f9b0237fbc01ad4db51b2d56ab626e7333f84f4993ef59c3ff007cd553e11d213245a443fe035d4b8e6aac82a2527dcb8a4790f8874c86cfc52f6902002631945c703771c7e20d7ba796a84aa8c007005795df5b9bcf8af6784dd15a4515c4bec14923f5c57ab6315ea60dde079b8c56921b8a314b8a315d871898a314b8a3140098a314b8a31400ec518a5c518a402628c52e28c5002629aebbd197d46053f146293571aee7202c22fed75d44713791f67907a80d907ebd47d2b523a9efb4dccc6ea27dbc12e8475fa5558db815e1d78384f53dba13538685d4ab0a6a9a354eae2926368b5918a8dcd3378a6b38ab6c9486495564ef53bb55591bad6326691450b5d3628751bebb1f35c5eba2e4ff000aaa80aa3f1c9fc6babc0edd2b3ac2c4ac82e653938f91076f735a58af5b094dc21767958ba8a53b2e82628c52e28c5759ca2628c52e28c5002628c52e28c5002d14b8a314862514b8a314009452e28c5002100e73d0f5ae7e54304ef19cfca78fa57438acdd56dcb289d072a30dee2b8f1b49ce175ba3af075792767b329a3d4cb2552048e7a8a7892bca523d5712e799485eab7994864a39839491dea34532cca83a9351b3935a1a4c1b8b4ec38e8b5a5183a9348ceb4d53836698014003a0e052d2e28c57bbe8786fcc4a297146280128a5c518a004a2971462801dc51c52e28c5002714714b8a314009c51c52e28c0a004e2919559483c822978ef81f5a9a18b38761c0e82a64d5b52a29b671f31fb24ac1c1316783e94f50245dd1b020fa559b801ddf382a49fe75912da6c62f0c8636f6af026b567bd0d522f6c7a4652a09760a0773599e65f038fb431a923b6795834f2b3fb66a7429dcb2ac6e5f6459f2c7de73debaa82358e144518000ac18515102a8c0ae9962df02328e768e3d78af430368b670636ed223e28e28e870783e869715e99e6d84e28e297028c502138a38a5c518a004e28e297146280171462968e3f0a4313140193c027e82a48e20d82fd3d3d6ac0c018e9ed52e45a8dd6a5610b9eb803dea45b75eec4fe952f1466a5b6cb51484088a30140a89c170e9bcab9040f6fa54d9a460ac3047152d5c7b1cd5e5a4d6a09917727691471f8fa5654bd3806bb72197afcebfaff00f5eb1efb448ae0192d1844fdd7f84fe1dab86b615ef03b68e27a48e58fdeab1150f6378972216b693cc3d02ae41f7cf4c56cd8e80e543ddbec039f2d0ff335cb0a3393b58ea9d68455db2a42acec1110bb7f7579fcfd2ba3b413456aa2665561c0039a7c11450a6cb788227f7ba7ff00aea65403924b37a9eb5e8d1a3c9adcf3eb56e7d2c387cebf32f3ef4c3021e995fa549c0e94d6951480cea09f535d061a75213030e8dbbd8f5a8cab2fde522ae7d28c8c53e6689e5452a5c54f244181650377a7ad403919ab4ee438d831462968a648b8a00dce07f08196a5ef4b0e3696fef1c8fa0e2a5b2e289b34669b4541a0ecd19a6d1400ecd19a6d1400ecd319413b870dea3fcf34b450200ec060a64fa8e949b771cbe0fa0ec3fc6968a2c03b3e9505ccc618fe5fbc4f5a96b265c895c367393d7eb571499339348996ea54704c848ee0d452b6e9598faf14dda48ce0e2938ee71569246576c9d6ea55da037006315a48fb90363a8cd65288b3f3b123d96b463911d06c39038c7a544d17064a4f150ca0070debc1fad494d75dc857b91c7d6922c8f14628539507d79a5ab331246f90b0eb8c0a914050147618a89f05e35ec4eefcbffaf8a93352cb43a8a6e68cd4943a8a6e68cd003a8a6e68cd003a8a6e68cd003a8a6e68cd003aaade4db0a80a371ef8e82ac66a0b880cd86046e03bf7a6b7265b140b16392493ea680320f7a5910c6fb5bafb53ed86e9c0c6460e6b531b11f538157ed2178b71718dd8c0a44b48d5c364903a035601e6a24cb8c2da8ea0d373466a4d062f0eebe8d91f8f34ec8f5a6371329fef291f88e47f5a9362d344b4447fe3e1c75daa17f3e7fc29d9a17fd7c9f415250323cd2e69f4bfe3401046db933ee453b34db5e8ff00ef9a9bb50323cd19a928a008f3466a4a28023cd19a928a008f3466a4a28b010bc6920c3ae684448c6117153514c4464e0669b1b6e8d4fa8cd492ff00aa6ff74d360ff8f78ffdda430cd19a928a00864276ab7f7581e9f9d4fb7de90f4fc454393eb412cfffd9, '乐俊官方', '男', 0, '2014-01-30 00:00:00', '汉族', '11111111111111', 'lejunok@163.com', '2701305387', '18845299765', '上海市乐俊工作室', '玩在乐俊 ，了在乐俊，乐俊与你同在！~', 10000000, 15, '3*6*9', '101.228.87.220', '127.0.0.1', '2014-02-17', 1, 1, '2014-02-17 16:01:16', 0, 0, 0, 0, '8e1b5cce9eace945eadb9886a521ae70', 2, 1000000),
(6, 'fanfzj', NULL, '俊俊', '男', 21, '1992-11-28 00:00:00', '汉族', '310102199211284413', '1009137312@qq.com', '1009137312', '13391305387', '上海市', '你永远不会明白，我那些假装的无所谓。', 10000, 15, '3*6*9', '101.228.86.133', '101.228.87.220', '2014-01-30', 1, 1, '2014-02-17 15:51:43', 0, 0, 2, 0, 'a72f533c3f1d8d937a74463ad53a086c', 2, 1000000),
(22, 'nele', NULL, '', '', 0, '2014-02-06 00:00:00', NULL, NULL, '123456@qq.com', '', '', '', NULL, 0, 1, NULL, '116.208.254.53', '116.208.254.53', '2014-02-17', 0, 0, '2014-02-17 15:48:09', 0, 0, 0, 0, 'ec376c558693fb9bf1a416bf65d3021f', 1, 0),
(23, '丫丫', NULL, '', '', 0, '0000-00-00 00:00:00', NULL, NULL, '1049363290@qq.com', NULL, NULL, NULL, NULL, 0, 1, NULL, '42.184.202.119', '42.184.202.119', '2014-02-17', 0, 0, '2014-02-17 15:55:56', 0, 0, 0, 0, '72fd4d4f158304b1785b6cf789ac2df1', 1, 0),
(24, 'yuno', NULL, '', '', 0, '0000-00-00 00:00:00', NULL, NULL, '1231231321@123123.cn', NULL, NULL, NULL, NULL, 0, 1, NULL, '42.184.202.119', '42.184.202.119', '2014-02-17', 0, 0, '2014-02-17 16:01:47', 0, 0, 0, 0, 'e0e0d9ac9a60a5ec02dde7e5e9829995', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lj_word_antistop`
--

CREATE TABLE IF NOT EXISTS `lj_word_antistop` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `antistop_name` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `antistop_name` (`antistop_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='关键词表' AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `lj_word_antistop`
--

INSERT INTO `lj_word_antistop` (`Id`, `antistop_name`) VALUES
(1, 'DOTA'),
(2, '符文'),
(3, '英雄'),
(4, '塔防'),
(5, '跑酷'),
(6, 'LOL');

-- --------------------------------------------------------

--
-- 表的结构 `lj_word_sensitive_word`
--

CREATE TABLE IF NOT EXISTS `lj_word_sensitive_word` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sensitive_word` varchar(255) NOT NULL DEFAULT '' COMMENT '敏感词',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `sensitive_word` (`sensitive_word`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='敏感词表' AUTO_INCREMENT=1305 ;

--
-- 导出表中的数据 `lj_word_sensitive_word`
--

INSERT INTO `lj_word_sensitive_word` (`Id`, `sensitive_word`) VALUES
(1, '﻿法轮'),
(2, 'Falun Dafa'),
(3, 'Li Hongzhi'),
(4, '马嘉爵'),
(5, 'falun'),
(6, 'falundafa'),
(7, 'zhuanfalu'),
(8, 'Nine commentaries'),
(9, 'self-immolation'),
(10, '六四'),
(1303, ''),
(1304, '操你妈'),
(12, '民运'),
(13, '苏家屯'),
(14, 'dafa'),
(15, '唐人电视台'),
(16, '新唐人电视台'),
(17, '李洪志'),
(18, '转法轮'),
(19, '共铲党'),
(21, '九评'),
(22, '九评共产党'),
(23, '人民报'),
(24, '退党'),
(25, '明慧'),
(26, '明慧网'),
(27, '大纪元'),
(28, '大 纪元'),
(31, '天安门事件'),
(32, '自由亚州'),
(33, '无界浏览'),
(34, '极景'),
(35, '无界'),
(36, '无网界浏览'),
(37, '无网界'),
(38, '美国之音'),
(39, '自由亚洲'),
(40, '色情网站'),
(41, '李志绥'),
(42, '交大高考招生黑幕'),
(43, '唐子'),
(44, '傅怡彬'),
(46, '自由亚洲电台'),
(47, '博讯'),
(50, '新唐人'),
(51, '江戏子'),
(52, '江主席'),
(53, '僵贼民'),
(54, '江贼民'),
(55, '江猪媳'),
(56, '江绵恒'),
(57, '江泽慧  '),
(58, '太石村'),
(59, '东洲'),
(60, '高智晟'),
(61, 'faluninfo'),
(62, 'rfa.org '),
(63, 'minghui.ca'),
(64, 'minghui.cc '),
(65, 'epochtimes.com'),
(66, 'dajiyuan.com '),
(67, 'kanzhongguo.com'),
(68, 'secretchina.com'),
(69, 'voa.gov'),
(70, 'renminbao.com'),
(71, 'peacehall.com'),
(72, 'bbc.co.uk'),
(73, 'libertytimes.com.tw '),
(74, 'hrichina.org '),
(75, 'hrw.org'),
(76, 'falundafa.org'),
(77, 'chinese.faluninfo.net'),
(78, 'epochtimes'),
(79, '1989天安门'),
(80, '六四天网'),
(81, '活体器官移植'),
(82, '明心网'),
(83, '明思网'),
(84, '何山'),
(87, '黑瞎子岛 '),
(88, '银龙岛'),
(89, 'Yinlong Island'),
(90, '魏京生 '),
(91, '王丹 '),
(92, '吾尔开希 '),
(93, '柴玲 '),
(94, '封从德 '),
(95, '丁子霖 '),
(96, '王若望 '),
(97, '刘宾雁 '),
(98, '吴弘达 '),
(99, '司徒华 '),
(100, '方舟子 '),
(101, '张戎'),
(102, '性交'),
(103, '乱交'),
(104, '兽交'),
(105, 'FUCK'),
(106, '性免费电影'),
(107, '小电影'),
(108, '黄色电影'),
(109, '情色'),
(110, '口交'),
(111, '阴茎'),
(112, '阴毛'),
(113, '性虐待'),
(114, '黄色网站'),
(115, '成人网站'),
(116, '成人小说'),
(117, '成人文学'),
(118, '成人电影'),
(119, '成人影视'),
(121, '黄色影视'),
(122, '黄色小说'),
(123, '黄色文学'),
(124, '成人图片'),
(125, '黄色图片'),
(126, '黄色漫画'),
(127, '成人漫画'),
(129, '三级片'),
(130, '成人论坛'),
(131, '六合彩'),
(132, '六合采'),
(133, '鸡巴'),
(134, '激情电影'),
(135, '虐杀'),
(136, '乱伦'),
(137, '花花公子'),
(138, '迷药'),
(139, '迷幻药'),
(140, '三唑'),
(142, '迷奸'),
(143, '换妻'),
(144, '淫水 '),
(145, '手机铃声下载'),
(146, '铃声下载'),
(147, '手机铃声'),
(148, '和弦'),
(149, '手机游戏'),
(150, '应招'),
(151, '新语丝'),
(152, '留园网'),
(153, '江泽民'),
(154, '共产党'),
(155, '腐败'),
(156, '民主'),
(157, '文化大革命'),
(158, '文革'),
(159, '中国国家防火墙'),
(160, '林海'),
(161, '黄琦'),
(162, '蒋世华'),
(163, '綦彦臣'),
(164, '刘荻'),
(165, '吴一然'),
(166, '李毅斌'),
(167, '欧阳懿'),
(168, '陶海东'),
(169, '蔡陆军'),
(170, '罗永忠'),
(171, '杜导斌'),
(172, '罗长福'),
(173, '颜均'),
(174, '李志'),
(175, '王小宁'),
(176, '马亚莲'),
(177, '赵岩'),
(178, '郑贻春'),
(179, '师涛'),
(180, '张林'),
(181, '李建平'),
(182, '许万平'),
(183, '任自元'),
(184, '李元龙'),
(185, '郭起真'),
(186, '昝爱宗'),
(188, '陈秋兰'),
(189, '白秀华'),
(192, '人权 '),
(193, '独裁 '),
(194, '专政 '),
(195, '专制 '),
(196, '反共 '),
(197, '共匪'),
(198, '卖国 '),
(199, '屠杀 '),
(200, '群体灭绝 '),
(201, '镇压'),
(202, 'oppression '),
(203, '封锁 '),
(204, '劳改 '),
(205, '劳教 '),
(206, '红色恐怖 '),
(207, '邪恶 '),
(208, '汕尾东洲'),
(210, '赵紫阳 '),
(211, '鲍彤 '),
(212, '黄菊 '),
(213, '邓力群'),
(214, '李小鹏'),
(216, '迷魂药 '),
(217, '推油 '),
(218, '代开发票'),
(219, '胡锦涛 '),
(220, '温家宝 '),
(221, '胡耀邦 '),
(222, '华国锋 '),
(223, '邓小平 '),
(224, '毛泽东 '),
(225, '周恩来 '),
(226, '刘少奇 '),
(227, '林彪 '),
(228, '宋庆龄 '),
(229, '孙中山 '),
(230, '彭德怀 '),
(231, '朱德 '),
(232, '董必武 '),
(233, '万里 '),
(234, '乔石 '),
(235, '李鹏 '),
(236, '朱镕基 '),
(237, '李瑞环 '),
(238, '曾庆红 '),
(239, '李先念 '),
(240, '陈独秀 '),
(241, '瞿秋白 '),
(242, '向忠发 '),
(243, '杨尚昆 '),
(244, '蒋介石 '),
(245, '台湾团结联盟 '),
(246, '泛绿 '),
(247, '中华民国 '),
(248, '台独 '),
(249, '国民党 '),
(250, '泛蓝 '),
(251, '吕秀莲 '),
(252, '李登辉 '),
(253, '宋美龄 '),
(254, '蒋经国 '),
(255, '蒋方良 '),
(256, '马英九 '),
(257, '藏独 '),
(258, '西藏流亡政府'),
(259, '达赖喇嘛'),
(260, '根敦·确吉尼玛'),
(261, '根敦·确吉、确吉尼玛 '),
(262, 'tibetalk'),
(263, 'www.tibetalk.com'),
(264, 'PX '),
(267, '自由 '),
(268, '《新京报》'),
(269, '激流中国'),
(270, '双轨'),
(271, '毛泽东复活'),
(272, '假币'),
(273, '地下先烈们'),
(274, '活人器官'),
(275, '性爱'),
(276, '身份证号码生成器'),
(277, '一码中特'),
(278, '成人区'),
(279, '地下的先烈们'),
(280, '颠覆国家政权'),
(281, '窃听器'),
(282, 'bitch'),
(283, 'shit'),
(285, 'tianwang'),
(286, 'cdjp'),
(287, 'bignews'),
(288, 'boxun'),
(289, 'chinaliberal'),
(290, 'chinamz'),
(291, 'chinesenewsnet'),
(292, 'cnd'),
(293, 'creaders'),
(295, 'dajiyuan'),
(296, 'dfdz'),
(297, 'dpp'),
(298, 'falu'),
(301, 'flg'),
(302, 'freechina'),
(303, 'freenet'),
(305, 'GCD'),
(307, 'hongzhi'),
(308, 'hrichina'),
(309, 'huanet'),
(310, 'hypermart'),
(311, 'incest'),
(312, 'jiangdongriji'),
(313, 'lihongzhi'),
(314, 'making'),
(315, 'minghui'),
(316, 'minghuinews'),
(317, 'nacb'),
(318, 'naive'),
(319, 'nmis'),
(320, 'paper'),
(321, 'peacehall'),
(322, 'playboy'),
(323, 'renminbao'),
(324, 'renmingbao'),
(325, 'rfa'),
(326, 'safeweb'),
(327, 'sex'),
(328, 'simple'),
(329, 'svdc'),
(330, 'taip'),
(332, 'triangle'),
(333, 'triangleboy'),
(334, 'UltraSurf'),
(335, 'unixbox'),
(336, 'ustibet'),
(337, 'voa'),
(338, 'wangce'),
(339, 'wstaiji'),
(340, 'xinsheng'),
(341, 'yuming'),
(342, 'zhengjian'),
(343, 'zhengjianwang'),
(344, 'zhenshanren'),
(345, 'zhuanfalun'),
(346, 'xxx'),
(347, 'anime'),
(348, 'censor'),
(349, 'hentai'),
(350, '[hz]'),
(351, '(hz)'),
(352, '[av]'),
(353, '(av)'),
(354, '[sm]'),
(355, '(sm)'),
(356, 'porn'),
(357, '码'),
(358, '淫'),
(359, '操'),
(360, '乳'),
(361, '阴'),
(362, '奸'),
(363, '性'),
(365, '裸'),
(366, '骚'),
(368, '顶级 '),
(369, '女优 '),
(370, '小泽玛莉亚 '),
(371, '强歼'),
(373, '色友'),
(374, '婊子'),
(375, '蒲团 '),
(376, '美女 '),
(377, '女女 '),
(378, '喷尿'),
(379, '绝版 '),
(380, '三级 '),
(381, '武腾兰'),
(382, '穴 '),
(383, '凌辱'),
(384, '暴干'),
(385, '诱惑'),
(386, '阴唇'),
(387, '小泽圆'),
(388, '插插 '),
(389, '坐交'),
(390, '长濑爱'),
(391, '川岛和津实'),
(392, '草莓牛奶'),
(393, '小泽园'),
(394, '饭岛爱'),
(395, '星崎未来'),
(396, '及川奈央'),
(397, '朝河兰'),
(398, '夕树舞子'),
(399, '大泽惠'),
(400, '金泽文子'),
(401, '三浦爱佳'),
(402, '伊东'),
(403, '慰安妇'),
(404, '女教师'),
(405, '武藤兰'),
(406, '学生妹'),
(407, '无毛'),
(408, '猛插 '),
(409, '护士'),
(410, '自拍'),
(411, '嫂'),
(412, 'A片 '),
(413, 'A级'),
(414, '喷精'),
(415, '偷窥'),
(416, '小穴'),
(417, '大片'),
(418, '被虐'),
(419, '黄色'),
(420, '被迫'),
(421, '被逼'),
(422, '强暴 '),
(423, '口技'),
(424, '破处'),
(425, '精液'),
(426, '幼交'),
(427, '狂干'),
(429, '群交'),
(430, '叶子楣'),
(431, '舒淇'),
(432, '翁虹'),
(433, '大陆'),
(434, '露点'),
(435, '露毛'),
(438, '波霸'),
(439, '少儿不宜'),
(440, '成人'),
(441, '偷情'),
(442, '叫床'),
(443, '上床'),
(444, '制服'),
(445, '亚热'),
(446, '援交'),
(447, '走光'),
(449, '肉欲'),
(450, '美腿'),
(451, '自摸'),
(452, '18禁'),
(453, '捆绑'),
(454, '丝袜'),
(455, '潮吹'),
(457, '肛交'),
(458, '群射'),
(459, '内射'),
(460, '少妇'),
(461, '卡通'),
(462, '臭作'),
(463, '薄格'),
(464, '调教'),
(465, '近亲'),
(466, '连发'),
(467, '限制'),
(469, '母子'),
(470, '偷拍'),
(471, '更衣'),
(472, '无修正'),
(473, '一本道'),
(474, '1Pondo'),
(475, '樱井'),
(476, '风花'),
(477, '夜勤病栋'),
(478, '菱恝'),
(480, '虐待'),
(481, '激情'),
(482, '麻衣'),
(484, '吐血'),
(485, '三个代表'),
(486, '一党'),
(487, '多党'),
(490, '行房'),
(491, '自慰'),
(492, '吹萧'),
(493, '色狼'),
(494, '胸罩'),
(495, '内裤'),
(496, '底裤'),
(497, '私处'),
(498, '爽死'),
(499, '变态'),
(500, '妹疼'),
(501, '妹痛'),
(502, '弟疼'),
(503, '弟痛'),
(504, '姐疼'),
(505, '姐痛'),
(506, '哥疼'),
(507, '哥痛'),
(508, '同房'),
(509, '打炮'),
(510, '造爱'),
(511, '作爱'),
(512, '做爱'),
(515, '阳具'),
(516, '开苞'),
(517, '肛门'),
(518, '阴道'),
(519, '阴蒂'),
(520, '肉棍'),
(521, '肉棒'),
(522, '肉洞'),
(523, '荡妇'),
(524, '阴囊'),
(525, '睾丸'),
(526, '捅你'),
(527, '捅我'),
(528, '插我'),
(529, '插你'),
(530, '插她'),
(531, '插他'),
(532, '干你'),
(533, '干她'),
(534, '干他'),
(535, '射精'),
(537, '屁眼'),
(538, '阴户'),
(539, '阴门'),
(540, '下体'),
(541, '龟头'),
(543, '避孕套'),
(544, '你妈逼'),
(545, '大鸡巴'),
(546, '高潮'),
(551, '政治'),
(553, '大法'),
(554, '弟子'),
(556, '真善忍'),
(559, '洪志'),
(560, '红志'),
(561, '洪智'),
(562, '红智'),
(563, '法轮'),
(564, '法论'),
(565, '法沦'),
(566, '法伦'),
(567, '发轮'),
(568, '发论'),
(569, '发沦'),
(570, '发伦'),
(571, '轮功'),
(572, '轮公'),
(573, '轮攻'),
(574, '沦功'),
(575, '沦公'),
(576, '沦攻'),
(577, '论攻'),
(578, '论功'),
(579, '论公'),
(580, '伦攻'),
(581, '伦功'),
(582, '伦公'),
(583, '打倒'),
(590, '天安门'),
(592, '朱容基'),
(594, '李长春'),
(598, '台湾独立'),
(600, '西藏独立'),
(601, '疆独'),
(602, '新疆独立'),
(603, '警察'),
(604, '民警'),
(605, '公安'),
(607, '嫖'),
(608, '大盖帽'),
(609, '革命'),
(610, '武警'),
(611, '黑社会'),
(612, '交警'),
(613, '消防队'),
(614, '刑警'),
(615, '夜总会'),
(616, '妈个'),
(617, '公款'),
(618, '首长'),
(619, '书记'),
(620, '坐台'),
(622, '城管'),
(623, '暴动'),
(624, '暴乱'),
(625, '李远哲'),
(626, '司法警官'),
(627, '高干'),
(628, '人大'),
(629, '尉健行'),
(630, '李岚清'),
(631, '黄丽满'),
(632, '于幼军'),
(633, '文字狱'),
(634, '宋祖英'),
(636, '自焚'),
(637, '骗局'),
(638, '猫肉'),
(639, '吸储'),
(640, '张五常'),
(641, '张丕林'),
(642, '空难'),
(644, '吴邦国'),
(647, '罗干'),
(648, '吴官正'),
(649, '贾庆林'),
(696, '朱鎔基'),
(734, '於幼军'),
(751, '八九'),
(752, '八老'),
(753, '巴赫'),
(754, '白立朴'),
(755, '白梦'),
(756, '白皮书'),
(757, '保钓'),
(758, '鲍戈'),
(761, '暴政'),
(762, '北大三角地论坛'),
(763, '北韩'),
(764, '北京当局'),
(765, '北京之春'),
(766, '北美自由论坛'),
(768, '蔡崇国'),
(770, '曹长青'),
(771, '曹刚川'),
(773, '常劲'),
(774, '陈炳基'),
(775, '陈军'),
(776, '陈蒙'),
(777, '陈破空'),
(778, '陈希同'),
(779, '陈小同'),
(780, '陈宣良'),
(781, '陈一谘'),
(782, '陈总统'),
(783, '程凯'),
(784, '程铁军'),
(785, '程真'),
(786, '迟浩田'),
(787, '持不同政见'),
(788, '赤匪'),
(789, '赤化'),
(790, '春夏自由论坛'),
(791, '达赖'),
(792, '大参考'),
(795, '大纪元新闻网'),
(796, '大纪园'),
(797, '大家论坛'),
(798, '大史'),
(799, '大史记'),
(800, '大史纪'),
(801, '大中国论坛'),
(802, '大中华论坛'),
(803, '大众真人真事'),
(804, '戴相龙'),
(805, '弹劾'),
(806, '登辉'),
(807, '邓笑贫'),
(808, '迪里夏提'),
(809, '地下教会'),
(810, '地下刊物'),
(812, '第四代'),
(813, '电视流氓'),
(814, '钓鱼岛'),
(815, '丁关根'),
(816, '丁元'),
(818, '东北独立'),
(819, '东方红时空'),
(820, '东方时空'),
(821, '东南西北论谈'),
(822, '东社'),
(823, '东土耳其斯坦'),
(824, '东西南北论坛'),
(825, '动乱'),
(827, '独夫'),
(828, '独立台湾会'),
(829, '杜智富'),
(830, '多维'),
(831, '屙民'),
(832, '俄国'),
(833, '发愣'),
(835, '发正念'),
(836, '反封锁技术'),
(837, '反腐败论坛'),
(838, '反攻'),
(840, '反人类'),
(841, '反社会'),
(842, '方励之'),
(844, '飞扬论坛'),
(845, '斐得勒'),
(846, '费良勇'),
(847, '分家在'),
(848, '分裂'),
(849, '粉饰太平'),
(850, '风雨神州'),
(851, '风雨神州论坛'),
(853, '封杀'),
(854, '冯东海'),
(855, '冯素英'),
(856, '佛展千手法'),
(857, '付申奇'),
(858, '傅申奇'),
(859, '傅志寰'),
(860, '高官'),
(861, '高文谦'),
(862, '高薪养廉'),
(863, '高瞻'),
(864, '高自联'),
(865, '戈扬'),
(866, '鸽派'),
(867, '歌功颂德'),
(868, '蛤蟆'),
(869, '个人崇拜'),
(870, '工自联'),
(871, '功法'),
(872, '共产'),
(873, '共党'),
(875, '共狗'),
(876, '共军'),
(877, '关卓中'),
(878, '贯通两极法'),
(879, '广闻'),
(880, '郭伯雄'),
(881, '郭罗基'),
(882, '郭平'),
(883, '郭岩华'),
(884, '国家安全'),
(885, '国家机密'),
(886, '国军'),
(887, '国贼'),
(888, '韩东方'),
(889, '韩联潮'),
(890, '何德普'),
(891, '何勇'),
(892, '河殇'),
(893, '红灯区'),
(895, '宏法'),
(896, '洪传'),
(897, '洪吟'),
(898, '洪哲胜'),
(900, '胡紧掏'),
(902, '胡锦滔'),
(903, '胡锦淘'),
(904, '胡景涛'),
(905, '胡平'),
(906, '胡总书记'),
(907, '护法'),
(909, '华建敏'),
(910, '华通时事论坛'),
(911, '华夏文摘'),
(912, '华语世界论坛'),
(913, '华岳时事论坛'),
(914, '黄慈萍'),
(915, '黄祸'),
(917, '黄菊　'),
(918, '黄翔'),
(919, '回民暴动'),
(920, '悔过书'),
(921, '鸡毛信文汇'),
(922, '姬胜德'),
(923, '积克馆'),
(924, '基督'),
(926, '贾廷安'),
(927, '贾育台'),
(928, '建国党'),
(929, '江core'),
(930, '江八点'),
(931, '江流氓'),
(932, '江罗'),
(934, '江青'),
(936, '江则民'),
(940, '江贼'),
(942, '江折民'),
(943, '江猪'),
(946, '姜春云'),
(947, '将则民'),
(948, '僵贼'),
(951, '讲法'),
(952, '酱猪媳'),
(953, '交班'),
(954, '教养院'),
(955, '接班'),
(956, '揭批书'),
(957, '金尧如'),
(958, '锦涛'),
(959, '禁看'),
(960, '经文'),
(961, '开放杂志'),
(962, '看中国'),
(963, '抗议'),
(964, '邝锦文'),
(965, '劳动教养所'),
(968, '老江'),
(969, '老毛'),
(970, '黎安友'),
(972, '李大师'),
(974, '李红痔'),
(975, '李宏志'),
(976, '李洪宽'),
(977, '李继耐'),
(978, '李兰菊'),
(980, '李老师'),
(981, '李录'),
(982, '李禄'),
(985, '李少民'),
(986, '李淑娴'),
(987, '李旺阳'),
(988, '李文斌'),
(989, '李小朋'),
(991, '李月月鸟'),
(993, '李总理'),
(994, '李总统'),
(995, '连胜德'),
(996, '联总'),
(997, '廉政大论坛'),
(998, '炼功'),
(999, '梁光烈'),
(1000, '梁擎墩'),
(1001, '两岸关系'),
(1002, '两岸三地论坛'),
(1003, '两个中国'),
(1004, '两会'),
(1005, '两会报道'),
(1006, '两会新闻'),
(1007, '廖锡龙'),
(1008, '林保华'),
(1009, '林长盛'),
(1010, '林樵清'),
(1011, '林慎立'),
(1012, '凌锋'),
(1013, '刘宾深'),
(1015, '刘刚'),
(1016, '刘国凯'),
(1017, '刘华清'),
(1018, '刘俊国'),
(1019, '刘凯中'),
(1020, '刘千石'),
(1021, '刘青'),
(1022, '刘山青'),
(1023, '刘士贤'),
(1024, '刘文胜'),
(1025, '刘晓波'),
(1026, '刘晓竹'),
(1027, '刘永川'),
(1028, '流亡'),
(1030, '龙虎豹'),
(1031, '陆委会'),
(1032, '吕京花'),
(1034, '抡功'),
(1036, '轮大'),
(1039, '罗礼诗'),
(1040, '马大维'),
(1041, '马良骏'),
(1042, '马三家'),
(1043, '马时敏'),
(1045, '毛厕洞'),
(1046, '毛贼东'),
(1047, '美国参考'),
(1049, '蒙独'),
(1050, '蒙古独立'),
(1051, '密穴'),
(1052, '绵恒'),
(1053, '民国'),
(1054, '民进党'),
(1055, '民联'),
(1056, '民意'),
(1057, '民意论坛'),
(1059, '民阵'),
(1060, '民猪'),
(1062, '民主墙'),
(1063, '民族矛盾'),
(1065, '莫伟强'),
(1066, '木犀地'),
(1067, '木子论坛'),
(1068, '南大自由论坛'),
(1069, '闹事'),
(1070, '倪育贤'),
(1071, '你说我说论坛'),
(1072, '潘国平'),
(1073, '泡沫经济'),
(1074, '迫害'),
(1075, '祁建'),
(1076, '齐墨'),
(1077, '钱达'),
(1078, '钱国梁'),
(1079, '钱其琛'),
(1080, '抢粮记'),
(1082, '亲美'),
(1083, '钦本立'),
(1084, '秦晋'),
(1085, '轻舟快讯'),
(1086, '情妇'),
(1087, '庆红'),
(1088, '全国两会'),
(1089, '热比娅'),
(1090, '热站政论网'),
(1092, '人民内情真相'),
(1093, '人民真实'),
(1094, '人民之声论坛'),
(1096, '瑞士金融大学'),
(1097, '善恶有报'),
(1098, '上海帮'),
(1099, '上海孤儿院'),
(1100, '邵家健'),
(1102, '神通加持法'),
(1103, '沈彤'),
(1104, '升天'),
(1105, '盛华仁'),
(1106, '盛雪'),
(1107, '师父'),
(1108, '石戈'),
(1109, '时代论坛'),
(1110, '时事论坛'),
(1111, '世界经济导报'),
(1112, '事实独立'),
(1113, '双十节'),
(1114, '水扁'),
(1115, '税力'),
(1116, '司马晋'),
(1117, '司马璐'),
(1119, '斯诺'),
(1120, '四川独立'),
(1121, '宋平'),
(1122, '宋书元'),
(1124, '苏绍智'),
(1125, '苏晓康'),
(1127, '台盟'),
(1129, '台湾狗'),
(1130, '台湾建国运动组织'),
(1131, '台湾青年独立联盟'),
(1132, '台湾政论区'),
(1133, '台湾自由联盟'),
(1134, '太子党'),
(1135, '汤光中'),
(1136, '唐柏桥'),
(1137, '唐捷'),
(1138, '滕文生'),
(1140, '天怒'),
(1141, '天葬'),
(1142, '童屹'),
(1143, '统独'),
(1144, '统独论坛'),
(1145, '统战'),
(1147, '外交论坛'),
(1148, '外交与方略'),
(1149, '万润南'),
(1150, '万维读者论坛'),
(1151, '万晓东'),
(1152, '汪岷'),
(1153, '王宝森'),
(1154, '王炳章'),
(1155, '王策'),
(1156, '王超华'),
(1158, '王辅臣'),
(1159, '王刚'),
(1160, '王涵万'),
(1161, '王沪宁'),
(1162, '王军涛'),
(1163, '王力雄'),
(1164, '王瑞林'),
(1165, '王润生'),
(1167, '王希哲'),
(1168, '王秀丽'),
(1169, '王冶坪'),
(1170, '网特'),
(1173, '魏新生'),
(1175, '温元凯'),
(1177, '无界浏览器'),
(1178, '吴百益'),
(1180, '吴方城'),
(1183, '吴宏达'),
(1184, '吴仁华'),
(1185, '吴学灿'),
(1186, '吴学璨'),
(1188, '五不'),
(1189, '伍凡'),
(1190, '西藏'),
(1192, '洗脑'),
(1194, '项怀诚'),
(1195, '项小吉'),
(1196, '小参考'),
(1197, '肖强'),
(1199, '谢长廷'),
(1200, '谢选骏'),
(1201, '谢中之'),
(1202, '辛灏年'),
(1203, '新观察论坛'),
(1204, '新华举报'),
(1205, '新华内情'),
(1206, '新华通论坛'),
(1208, '新生网'),
(1209, '新闻封锁'),
(1211, '信用危机'),
(1212, '邢铮'),
(1213, '熊炎'),
(1214, '熊焱'),
(1215, '修炼'),
(1216, '徐邦秦'),
(1217, '徐才厚'),
(1218, '徐匡迪'),
(1219, '徐水良'),
(1220, '许家屯'),
(1221, '薛伟'),
(1222, '学潮'),
(1223, '学联'),
(1224, '学习班'),
(1225, '学运'),
(1226, '学自联'),
(1227, '雪山狮子'),
(1228, '严家其'),
(1229, '严家祺'),
(1230, '阎明复'),
(1231, '颜射'),
(1232, '央视内部晚会'),
(1233, '杨怀安'),
(1234, '杨建利'),
(1235, '杨巍'),
(1236, '杨月清'),
(1237, '杨周'),
(1238, '姚月谦'),
(1239, '夜话紫禁城'),
(1240, '一中一台'),
(1241, '义解'),
(1242, '亦凡'),
(1243, '异见人士'),
(1244, '异议人士'),
(1245, '易丹轩'),
(1246, '易志熹'),
(1247, '尹庆民'),
(1248, '由喜贵'),
(1249, '游行'),
(1250, '幼齿'),
(1251, '于大海'),
(1252, '于浩成'),
(1253, '余英时'),
(1254, '舆论'),
(1255, '舆论反制'),
(1256, '宇明网'),
(1257, '圆满'),
(1258, '远志明'),
(1259, '岳武'),
(1260, '在十月'),
(1261, '则民'),
(1262, '择民'),
(1263, '泽民'),
(1264, '贼民'),
(1265, '曾培炎'),
(1267, '张伯笠'),
(1268, '张钢'),
(1269, '张宏堡'),
(1270, '张健'),
(1272, '张万年'),
(1273, '张伟国'),
(1274, '张昭富'),
(1275, '张志清'),
(1276, '赵海青'),
(1277, '赵南'),
(1278, '赵品潞'),
(1279, '赵晓微'),
(1281, '哲民'),
(1283, '真相'),
(1284, '真象'),
(1286, '争鸣论坛'),
(1287, '正见网'),
(1288, '正义党论坛'),
(1289, '郑义'),
(1290, '公安局'),
(1291, '公安部'),
(1292, '司法部'),
(1293, '公检法'),
(1294, '检察院'),
(1295, '司法部门'),
(1296, '执法犯法'),
(1297, '流氓警察'),
(1298, '强盗警察'),
(1299, '土匪政府'),
(1300, '信产局'),
(1301, '信息产业部'),
(1302, '国家信息');

-- --------------------------------------------------------

--
-- 表的结构 `sph_cheats_counter`
--

CREATE TABLE IF NOT EXISTS `sph_cheats_counter` (
  `count_id` int(11) NOT NULL AUTO_INCREMENT,
  `max_doc_id` int(11) NOT NULL,
  PRIMARY KEY (`count_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='攻略表的计数器' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `sph_cheats_counter`
--

INSERT INTO `sph_cheats_counter` (`count_id`, `max_doc_id`) VALUES
(1, 19);

-- --------------------------------------------------------

--
-- 表的结构 `sph_posts_counter`
--

CREATE TABLE IF NOT EXISTS `sph_posts_counter` (
  `count_id` int(11) NOT NULL AUTO_INCREMENT,
  `max_doc_id` int(11) NOT NULL,
  PRIMARY KEY (`count_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `sph_posts_counter`
--

INSERT INTO `sph_posts_counter` (`count_id`, `max_doc_id`) VALUES
(1, 11);
