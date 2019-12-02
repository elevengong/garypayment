-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-10-16 16:58:42
-- 服务器版本： 5.6.44-log
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_1704`
--

-- --------------------------------------------------------

--
-- 表的结构 `pay_admin`
--

CREATE TABLE `pay_admin` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '管理员ID',
  `username` varchar(50) NOT NULL COMMENT '后台用户名',
  `password` varchar(32) NOT NULL COMMENT '后台用户密码',
  `groupid` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '用户组',
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `google_secret_key` varchar(128) NOT NULL DEFAULT '' COMMENT '谷歌令牌密钥',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号码',
  `session_random` varchar(50) NOT NULL DEFAULT '' COMMENT 'session随机字符串'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_admin`
--

INSERT INTO `pay_admin` (`id`, `username`, `password`, `groupid`, `createtime`, `google_secret_key`, `mobile`, `session_random`) VALUES
(1, 'admin', '2d39bbd2b7f1929655ab5fc99385f8c8', 1, 0, '', '', 'kGeTtGFPSgOrkIFrsuUhLilFW4L2032d'),
(10, '123456', '7aa5e695be95cdd64a88410a64dfe2c1', 2, 1544212411, '', '', 'Aqg5aM2R79DBaTkJpQ7O5UGAXr2ocpUc');

-- --------------------------------------------------------

--
-- 表的结构 `pay_apimoney`
--

CREATE TABLE `pay_apimoney` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `payapiid` int(11) DEFAULT NULL,
  `money` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `freezemoney` decimal(15,3) NOT NULL DEFAULT '0.000' COMMENT '冻结金额',
  `status` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_apimoney`
--

INSERT INTO `pay_apimoney` (`id`, `userid`, `payapiid`, `money`, `freezemoney`, `status`) VALUES
(10, 6, 207, '18000.0000', '0.000', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pay_article`
--

CREATE TABLE `pay_article` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类ID',
  `groupid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分组  0：所有 1：商户 2：代理',
  `title` varchar(300) NOT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1显示 0 不显示',
  `updatetime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_article`
--

INSERT INTO `pay_article` (`id`, `catid`, `groupid`, `title`, `content`, `createtime`, `description`, `status`, `updatetime`) VALUES
(16, 3, 0, '客户告知书', '<p></p><p>尊敬的商户朋友：  </p><p>           <br /></p><p>    本公司是一家正规的网络公司，是各大游戏充值卡发卡商，电商平台等中小型企业长期的合作伙伴；</p><p><br /></p><p>      本公司郑重告知，请各客户加强业务自审勿与违法违规的业务发生关联，比如涉黄、涉赌、涉及网络诈骗等；我公司一经发现有涉及违法违规的业务，我公司将把相关信息上报公安机关派驻我公司的网安警务室处理。        </p><p><br /></p><p style=\"text-align:right;\">请合作的客户知晓并认真审查业务 特此告知！  </p><p><br /></p><p><br /></p><p><br /></p><p><br /></p><p></p><p style=\"text-align:right;\">                                                                                                                              <br />                                                                                                                2018/1/12 8:41:07</p>', 1515717667, '', 1, 1537723684);

-- --------------------------------------------------------

--
-- 表的结构 `pay_attachment`
--

CREATE TABLE `pay_attachment` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户编号',
  `filename` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_attachment`
--

INSERT INTO `pay_attachment` (`id`, `userid`, `filename`, `path`) VALUES
(48, 2, '242dd42a2834349b88359f1eccea15ce36d3be7e.jpg', 'Uploads/verifyinfo/59a2b65d0816c.jpg'),
(46, 2, '6-140F316125V44.jpg', 'Uploads/verifyinfo/59a2b65cd9877.jpg'),
(47, 2, '6-140F316132J02.jpg', 'Uploads/verifyinfo/59a2b65cea2ec.jpg'),
(49, 180768718, '20180628155233_54225.jpg', 'Uploads/verifyinfo/5b969d7b3b32d.jpg'),
(50, 180768718, '20180628155327_47820.png', 'Uploads/verifyinfo/5b969d8a76e7e.png'),
(51, 180768718, '20180628155147_55535.png', 'Uploads/verifyinfo/5b969d8ab6a07.png'),
(52, 180768718, '20180628155430_18014.png', 'Uploads/verifyinfo/5b969d8b08fd5.png'),
(53, 25, '595358e9d0ff3.jpg', 'Uploads/verifyinfo/5c00b6f61dd31.jpg'),
(54, 22, 'ree.jpg', 'Uploads/verifyinfo/5c043d1d63394.jpg'),
(55, 22, 'ree.jpg', 'Uploads/verifyinfo/5c043d252cdc1.jpg'),
(56, 22, 'ree.png', 'Uploads/verifyinfo/5c043d3e5910a.png'),
(57, 22, 'ree.png', 'Uploads/verifyinfo/5c043d4c801bb.png'),
(58, 22, 'ree.png', 'Uploads/verifyinfo/5c043d8b12d8d.png'),
(59, 22, 'ree.jpg', 'Uploads/verifyinfo/5c043db746145.jpg'),
(60, 22, 'ree.jpg', 'Uploads/verifyinfo/5c043dd2683d9.jpg'),
(61, 22, 'ree.png', 'Uploads/verifyinfo/5c043e0fd733d.png'),
(62, 25, 'ree.jpg', 'Uploads/verifyinfo/5c05258a7ac30.jpg'),
(63, 25, 'ree.jpg', 'Uploads/verifyinfo/5c0525925c074.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pay_auth_error_log`
--

CREATE TABLE `pay_auth_error_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `auth_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：商户登录 1：后台登录 2：商户短信验证 3：后台短信验证 4：谷歌令牌验证 5：支付密码验证 ',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_auth_error_log`
--

INSERT INTO `pay_auth_error_log` (`id`, `auth_type`, `uid`, `ctime`) VALUES
(123, 0, 15, 1541187760),
(124, 0, 15, 1541187849),
(129, 0, 9, 1541489160),
(133, 0, 16, 1543083712),
(134, 0, 16, 1543083722),
(135, 0, 16, 1543083733),
(136, 0, 16, 1543083740),
(137, 0, 16, 1543083750),
(138, 2, 4, 1543647922),
(143, 6, 43, 1544551065),
(144, 6, 43, 1544551066),
(147, 2, 39, 1545577470),
(148, 6, 52, 1546385255),
(178, 0, 62, 1570970008),
(179, 0, 62, 1570970034),
(180, 0, 62, 1570970046),
(181, 0, 55, 1570970369),
(182, 0, 55, 1570970375),
(183, 0, 55, 1570970583),
(184, 0, 55, 1570970723),
(185, 0, 61, 1570970897),
(186, 0, 61, 1570970909);

-- --------------------------------------------------------

--
-- 表的结构 `pay_auth_group`
--

CREATE TABLE `pay_auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_manager` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1需要验证权限 0 不需要验证权限',
  `rules` varchar(500) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_auth_group`
--

INSERT INTO `pay_auth_group` (`id`, `title`, `status`, `is_manager`, `rules`) VALUES
(1, '超级管理员', 1, 0, '1,133,2,3,51,4,57,5,55,56,58,59,6,44,52,53,48,70,54,126,7,8,60,61,62,9,63,64,65,66,10,67,68,69,11,12,79,80,81,82,83,84,85,86,87,88,89,90,91,93,94,95,96,97,98,99,100,101,120,13,14,15,92,16,73,76,77,78,17,46,121,18,19,71,75,20,72,74,22,21,23,114,115,24,25,26,125,127,130,27,28,108,129,29,102,30,103,106,107,119,104,105,109,110,111,128,31,32,33,34,35,36,37,38,39,113,40,112,41,42,45,47,116,122,117,123,118,124'),
(2, '运营管理员', 1, 0, '1,133,3,51,4,57,5,55,56,59,6,44,52,70,54,7,60,61,62,63,65,66,67,68,69,12,79,80,81,82,83,84,85,86,87,93,94,98,99,13,14,15,92,73,76,77,78,46,18,19,71,22,23,24,33,34,35,36,37,38,39,40,41,42,45,47'),
(3, '财务管理员', 1, 1, '1,133,5,6,70,65,66,67,68,69,13,73,76,77,71,75,72,74,23,24,25,26'),
(4, '普通商户', 1, 1, '22,24'),
(5, '普通代理商', 1, 1, '114,115');

-- --------------------------------------------------------

--
-- 表的结构 `pay_auth_group_access`
--

CREATE TABLE `pay_auth_group_access` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_auth_group_access`
--

INSERT INTO `pay_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(3, 1),
(9, 1),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- 表的结构 `pay_auth_rule`
--

CREATE TABLE `pay_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `icon` varchar(100) DEFAULT '' COMMENT '图标',
  `menu_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一标识Controller/action',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `pid` tinyint(5) NOT NULL DEFAULT '0' COMMENT '菜单ID ',
  `is_menu` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '1:是主菜单 0否',
  `is_race_menu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1:是 0:不是',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `pay_auth_rule`
--

INSERT INTO `pay_auth_rule` (`id`, `icon`, `menu_name`, `title`, `pid`, `is_menu`, `is_race_menu`, `type`, `status`, `condition`) VALUES
(1, 'fa fa-home', 'Index/index', '管理首页', 0, 1, 0, 1, 1, ''),
(2, 'fa fa-cogs', 'System/#', '系统设置', 0, 1, 0, 1, 1, ''),
(3, 'fa fa-cogs', 'System/base', '基本设置', 2, 1, 0, 1, 1, ''),
(4, 'fa fa-envelope-o', 'System/email', '邮件设置', 2, 1, 0, 1, 1, ''),
(5, 'fa fa-send', 'System/smssz', '短信设置', 2, 1, 0, 1, 1, ''),
(6, 'fa fa-pencil-square-o', 'System/planning', '计划任务', 2, 1, 0, 1, 1, ''),
(7, 'fa fa-user-circle', 'Admin/#', '管理员管理', 0, 1, 0, 1, 1, ''),
(8, 'fa fa-vcard ', 'Admin/index', '管理员信息', 7, 1, 0, 1, 1, ''),
(9, 'fa fa-life-ring', 'Auth/index', '角色配置', 7, 1, 0, 1, 1, ''),
(10, 'fa fa-universal-access', 'Menu/index', '权限配置', 7, 1, 0, 1, 1, ''),
(11, 'fa fa-users', 'User/#', '用户管理', 0, 1, 0, 1, 1, ''),
(12, 'fa fa-user', 'User/index?status=1&authorized=1', '已认证用户', 11, 1, 0, 1, 1, ''),
(13, 'fa fa-user-o', 'User/index?status=1&authorized=2', '待认证用户', 11, 1, 0, 1, 1, ''),
(14, 'fa fa-user-plus', 'User/index?status=1&authorized=0', '未认证用户', 11, 1, 0, 1, 1, ''),
(15, 'fa fa-user-times', 'User/index?status=0', '冻结用户', 11, 1, 0, 1, 1, ''),
(16, 'fa fa-gift', 'User/invitecode', '邀请码', 11, 1, 0, 1, 1, ''),
(17, 'fa fa-address-book', 'User/loginrecord', '登录记录', 11, 1, 0, 1, 1, ''),
(18, 'fa fa-user-circle', 'Agent/#', '代理管理', 0, 1, 0, 1, 1, ''),
(19, 'fa fa-signing', 'User/agentList', '代理列表', 18, 1, 0, 1, 1, ''),
(20, 'fa fa-signing', 'Order/changeRecord?bank=9', '佣金记录', 18, 1, 0, 1, 1, ''),
(21, 'fa fa-sellsy', 'Order/dfApiOrderList', '代付Api订单', 22, 1, 0, 1, 1, ''),
(22, 'fa fa-reorder', 'User/#', '订单管理', 0, 1, 0, 1, 1, ''),
(23, 'fa fa-indent', 'Order/changeRecord', '流水记录', 22, 1, 0, 1, 1, ''),
(24, 'fa fa-thumbs-up', 'Order/index?status=1or2', '成功订单', 22, 1, 0, 1, 1, ''),
(25, 'fa fa-thumbs-down', 'Order/index?status=0', '未支付订单', 22, 1, 0, 1, 1, ''),
(26, 'fa fa-hand-o-right', 'Order/index?status=1', '通知异常订单', 22, 1, 0, 1, 1, ''),
(27, 'fa fa-user-secret', 'Withdrawal', '提款管理', 0, 1, 0, 1, 1, ''),
(28, 'fa fa-wrench', 'Withdrawal/setting', '提款设置', 27, 1, 0, 1, 1, ''),
(29, 'fa fa-asl-interpreting', 'Withdrawal/index', '手动结算', 27, 1, 0, 1, 1, ''),
(30, 'fa fa-window-restore', 'Withdrawal/payment', '代付结算', 27, 1, 0, 1, 1, ''),
(31, 'fa fa-bank', 'Channel/#', '通道管理', 0, 1, 0, 1, 1, ''),
(32, 'fa fa-product-hunt', 'Channel/index', '入金渠道设置', 31, 1, 0, 1, 1, ''),
(33, 'fa fa-sitemap', 'Channel/product', '支付产品设置', 31, 1, 0, 1, 1, ''),
(34, 'fa fa-sliders', 'PayForAnother/index', '代付渠道设置', 31, 1, 0, 1, 1, ''),
(35, 'fa fa-book', 'Content/#', '文章管理', 0, 1, 0, 1, 1, ''),
(36, 'fa fa-tags', 'Content/category', '栏目列表', 35, 1, 0, 1, 1, ''),
(37, 'fa fa-list-alt', 'Content/article', '文章列表', 35, 1, 0, 1, 1, ''),
(38, 'fa fa-line-chart', 'Statistics/#', '财务分析', 0, 1, 0, 1, 1, ''),
(39, 'fa fa-bar-chart-o', 'Statistics/index', '交易统计', 38, 1, 0, 1, 1, ''),
(40, 'fa fa-area-chart', 'Statistics/userFinance', '商户交易统计', 38, 1, 0, 1, 1, ''),
(41, 'fa fa-industry', 'Statistics/userFinance?groupid=agent', '代理商交易统计', 38, 1, 0, 1, 1, ''),
(42, 'fa fa-pie-chart', 'Statistics/channelFinance', '接口交易统计', 38, 1, 0, 1, 1, ''),
(43, 'fa fa-cubes', 'Template/index', '模板设置', 2, 1, 0, 1, 0, ''),
(44, 'fa fa-qq', 'System/mobile', '手机设置', 2, 1, 0, 1, 1, ''),
(45, 'fa fa-signal', 'Statistics/chargeRank', '充值排行榜', 38, 1, 0, 1, 1, ''),
(46, 'fa fa-first-order', 'Deposit/index', '投诉保证金设置', 11, 1, 0, 1, 1, ''),
(47, 'fa fa-asterisk', 'Statistics/complaintsDeposit', '投诉保证金统计', 38, 1, 0, 1, 1, ''),
(48, 'fa fa-magnet', 'System/clearData', '数据清理', 2, 1, 0, 1, 1, ''),
(51, '', 'System/SaveBase', '保存设置', 3, 0, 0, 1, 1, ''),
(52, '', 'System/BindMobileShow', '绑定手机号码', 44, 0, 0, 1, 1, ''),
(53, '', 'System/editMobileShow', '手机修改', 44, 0, 0, 1, 1, ''),
(54, 'fa fa-wrench', 'System/editPassword', '修改密码', 2, 1, 0, 1, 1, ''),
(55, '', 'System/editSmstemplate', '短信模板', 5, 0, 0, 1, 1, ''),
(56, '', 'System/saveSmstemplate', '保存短信模板', 5, 0, 0, 1, 1, ''),
(57, '', 'System/saveEmail', '邮件保存', 4, 0, 0, 1, 1, ''),
(58, '', 'System/testMobile', '测试短信', 5, 0, 0, 1, 1, ''),
(59, '', 'System/deleteAdmin', '删除短信模板', 5, 0, 0, 1, 1, ''),
(60, '', 'Admin/addAdmin', '管理员添加', 8, 0, 0, 1, 1, ''),
(61, '', 'Admin/editAdmin', '管理员修改', 8, 0, 0, 1, 1, ''),
(62, '', 'Admin/deleteAdmin', '管理员删除', 8, 0, 0, 1, 1, ''),
(63, '', 'Auth/addGroup', '添加角色', 9, 0, 0, 1, 1, ''),
(64, '', 'Auth/editGroup', '修改角色', 9, 0, 0, 1, 1, ''),
(65, '', 'Auth/giveRole', '选择角色', 9, 0, 0, 1, 1, ''),
(66, '', 'Auth/ruleGroup', '分配权限', 9, 0, 0, 1, 1, ''),
(67, '', 'Menu/addMenu', '添加菜单', 10, 0, 0, 1, 1, ''),
(68, '', 'Menu/editMenu', '修改菜单', 10, 0, 0, 1, 1, ''),
(69, '', 'Menu/delMenu', '删除菜单', 10, 0, 0, 1, 1, ''),
(70, '', 'System/clearDataSend', '数据清理提交', 48, 0, 0, 1, 1, ''),
(71, '', 'User/addAgentCate', '代理级别', 19, 0, 0, 1, 1, ''),
(72, '', 'User/saveAgentCate', '保存代理级别', 18, 0, 0, 1, 1, ''),
(73, '', 'User/addInvitecode', '添加激活码', 16, 0, 0, 1, 1, ''),
(74, '', 'User/EditAgentCate', '修改代理分类', 18, 0, 0, 1, 1, ''),
(75, '', 'User/deleteAgentCate', '删除代理分类', 19, 0, 0, 1, 1, ''),
(76, '', 'User/setInvite', '邀请码设置', 16, 0, 0, 1, 1, ''),
(77, '', 'User/addInvite', '创建邀请码', 16, 0, 0, 1, 1, ''),
(78, '', 'User/delInvitecode', '删除邀请码', 16, 0, 0, 1, 1, ''),
(79, '', 'User/editUser', '用户编辑', 12, 0, 0, 1, 1, ''),
(80, '', 'User/changeuser', '修改状态', 12, 0, 0, 1, 1, ''),
(81, '', 'User/authorize', '用户认证', 12, 0, 0, 1, 1, ''),
(82, '', 'User/usermoney', '用户资金管理', 12, 0, 0, 1, 1, ''),
(83, '', 'User/userWithdrawal', '用户提现设置', 12, 0, 0, 1, 1, ''),
(84, '', 'User/userRateEdit', '用户费率设置', 12, 0, 0, 1, 1, ''),
(85, '', 'User/editPassword', '用户密码修改', 12, 0, 0, 1, 1, ''),
(86, '', 'User/editStatus', '用户状态修改', 12, 0, 0, 1, 1, ''),
(87, '', 'User/delUser', '用户删除', 12, 0, 0, 1, 1, ''),
(88, '', 'User/thawingFunds', 'T1解冻任务管理', 12, 0, 0, 1, 1, ''),
(89, '', 'User/exportuser', '导出用户', 12, 0, 0, 1, 1, ''),
(90, '', 'User/editAuthoize', '修改用户认证', 12, 0, 0, 1, 1, ''),
(91, '', 'User/getRandstr', '切换商户密钥', 12, 0, 0, 1, 1, ''),
(92, '', 'User/suoding', '用户锁定', 15, 0, 0, 1, 1, ''),
(93, '', 'User/editbankcard', '银行卡管理', 12, 0, 0, 1, 1, ''),
(94, '', 'User/saveUser', '添加用户', 12, 0, 0, 1, 1, ''),
(95, '', 'User/saveUserProduct', '保存用户产品', 12, 0, 0, 1, 1, ''),
(96, '', 'User/saveUserRate', '保存用户费率', 12, 0, 0, 1, 1, ''),
(97, '', 'User/edittongdao', '编辑通道', 12, 0, 0, 1, 1, ''),
(98, '', 'User/frozenMoney', '用户资金冻结', 12, 0, 0, 1, 1, ''),
(99, '', 'User/unfrozenHandles', 'T1资金解冻', 12, 0, 0, 1, 1, ''),
(100, '', 'User/frozenOrder', '冻结订单列表', 12, 0, 0, 1, 1, ''),
(101, '', 'User/frozenHandles', 'T1订单解冻展示', 12, 0, 0, 1, 1, ''),
(102, '', 'Withdrawal/editStatus', '操作状态', 29, 0, 0, 1, 1, ''),
(103, '', 'Withdrawal/editwtStatus', '操作订单状态', 30, 0, 0, 1, 1, ''),
(104, '', 'Withdrawal/exportorder', '导出数据', 27, 0, 0, 1, 1, ''),
(105, '', 'Withdrawal/editwtAllStatus', '批量修改提款状态', 27, 0, 0, 1, 1, ''),
(106, '', 'Withdrawal/exportweituo', '导出委托提现', 30, 0, 0, 1, 1, ''),
(107, '', 'Payment/index', '提交上游', 30, 0, 0, 1, 1, ''),
(108, '', 'Withdrawal/saveWithdrawal', '保存设置', 28, 0, 0, 1, 1, ''),
(109, '', 'Withdrawal/AddHoliday', '添加假日', 27, 0, 0, 1, 1, ''),
(110, '', 'Withdrawal/settimeEdit', '编辑提款时间', 27, 0, 0, 1, 1, ''),
(111, '', 'Withdrawal/delHoliday', '删除节假日', 27, 0, 0, 1, 1, ''),
(112, '', 'Statistics/exportorder', '订单数据导出', 40, 0, 0, 1, 1, ''),
(113, '', 'Statistics/details', '查看详情', 39, 0, 0, 1, 1, ''),
(114, '', 'Order/exportorder', '订单导出', 23, 0, 0, 1, 1, ''),
(115, '', 'Order/exceldownload', '记录导出', 23, 0, 0, 1, 1, ''),
(116, 'fa fa-area-chart', 'Statistics/platformReport', '平台报表', 38, 1, 0, 1, 1, ''),
(117, 'fa fa-area-chart', 'Statistics/merchantReport', '商户报表', 38, 1, 0, 1, 1, ''),
(118, 'fa fa-area-chart', 'Statistics/agentReport', '代理报表', 38, 1, 0, 1, 1, ''),
(119, '', 'Withdrawal/submitDf', '代付提交', 30, 0, 0, 1, 1, ''),
(120, '', 'User/editUserProduct', '分配用户通道', 12, 0, 0, 1, 1, ''),
(121, 'fa fa-wrench', 'Transaction/index', '风控设置', 11, 1, 0, 1, 1, ''),
(122, '', 'Statistics/exportPlatform', '导出平台报表', 116, 0, 0, 1, 1, ''),
(123, '', 'Statistics/exportMerchant', '导出商户报表', 117, 0, 0, 1, 1, ''),
(124, '', 'Statistics/exportAgent', '导出代理报表', 118, 0, 0, 1, 1, ''),
(125, '', 'Order/show', '查看订单', 22, 0, 0, 1, 1, ''),
(126, 'fa fa-cog', 'Withdrawal/checkNotice', '提现申请声音提示', 2, 0, 0, 1, 1, ''),
(127, 'fa fa-smile-o', 'Order/index', '全部订单', 22, 1, 0, 1, 1, ''),
(128, '', 'Withdrawal/rejectAllDf', '批量驳回代付', 27, 0, 0, 1, 1, ''),
(129, '', 'User/saveWithdrawal', '保存用户提款设置', 28, 0, 0, 1, 1, ''),
(130, 'fa fa-snowflake-o', 'Order/frozenOrder', '冻结订单', 22, 1, 0, 1, 1, ''),
(133, 'fa fa-home', 'Index/main', '管理首页', 1, 1, 0, 1, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `pay_auto_df_log`
--

CREATE TABLE `pay_auto_df_log` (
  `id` int(11) NOT NULL,
  `df_id` int(11) NOT NULL DEFAULT '0' COMMENT '代付ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型：1提交 2查询',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '结果 0：提交失败 1：提交成功 2：代付成功 3：代付失败',
  `msg` varchar(255) DEFAULT '' COMMENT '描述',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '提交时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_auto_df_log`
--

INSERT INTO `pay_auto_df_log` (`id`, `df_id`, `type`, `status`, `msg`, `ctime`) VALUES
(1, 19, 2, 0, '代付通道文件不存在', 1537373341),
(2, 19, 2, 1, NULL, 1537373522),
(3, 19, 2, 1, NULL, 1537373701),
(4, 19, 2, 2, NULL, 1537373881);

-- --------------------------------------------------------

--
-- 表的结构 `pay_auto_unfrozen_order`
--

CREATE TABLE `pay_auto_unfrozen_order` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户ID',
  `freeze_money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '冻结金额',
  `unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '计划解冻时间',
  `real_unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '实际解冻时间',
  `is_pause` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否暂停解冻 0正常解冻 1暂停解冻',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '解冻状态 0未解冻 1已解冻',
  `create_at` int(11) NOT NULL COMMENT '记录创建时间',
  `update_at` int(11) NOT NULL COMMENT '记录更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉保证金余额';

--
-- 转存表中的数据 `pay_auto_unfrozen_order`
--

INSERT INTO `pay_auto_unfrozen_order` (`id`, `user_id`, `freeze_money`, `unfreeze_time`, `real_unfreeze_time`, `is_pause`, `status`, `create_at`, `update_at`) VALUES
(1, 180751041, '89.0000', 0, 0, 0, 0, 1534428974, 1534428974),
(2, 5, '1000.0000', 1547111100, 0, 0, 0, 1547110860, 1547110860);

-- --------------------------------------------------------

--
-- 表的结构 `pay_bankcard`
--

CREATE TABLE `pay_bankcard` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户编号',
  `bankname` varchar(100) NOT NULL COMMENT '银行名称',
  `subbranch` varchar(100) NOT NULL COMMENT '支行名称',
  `accountname` varchar(100) NOT NULL COMMENT '开户名',
  `cardnumber` varchar(100) NOT NULL COMMENT '银行卡号',
  `province` varchar(100) NOT NULL COMMENT '所属省',
  `city` varchar(100) NOT NULL COMMENT '所属市',
  `ip` varchar(100) DEFAULT NULL COMMENT '上次修改IP',
  `ipaddress` varchar(300) DEFAULT NULL COMMENT 'IP地址',
  `alias` varchar(255) DEFAULT '' COMMENT '备注',
  `isdefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否默认 1是 0 否',
  `updatetime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_bankcard`
--

INSERT INTO `pay_bankcard` (`id`, `userid`, `bankname`, `subbranch`, `accountname`, `cardnumber`, `province`, `city`, `ip`, `ipaddress`, `alias`, `isdefault`, `updatetime`) VALUES
(1, 5, '中国工商银行', '工商银行北京北京南锣鼓巷支行', '张三', '1233456', '北京', '北京', NULL, NULL, '北京', 1, 0),
(2, 55, '北京银行', '北京支行', '张杰', '6222120081828128', '北京', '北京', NULL, NULL, '123', 0, 0),
(3, 62, '北京银行', 'cfqc', '1111', '213213', '12312', '321312', NULL, NULL, '213123', 0, 0),
(4, 5, '北京银行', '1', '1', '1', '1', '1', NULL, NULL, '1', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_blockedlog`
--

CREATE TABLE `pay_blockedlog` (
  `id` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL COMMENT '订单号',
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户编号',
  `amount` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '冻结金额',
  `thawtime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '解冻时间',
  `pid` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户支付通道',
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态 1 解冻 0 冻结'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金冻结待解冻记录';

--
-- 转存表中的数据 `pay_blockedlog`
--

INSERT INTO `pay_blockedlog` (`id`, `orderid`, `userid`, `amount`, `thawtime`, `pid`, `createtime`, `status`) VALUES
(1, '20181205193204525254', 31, '0.9997', 1544026681, 902, 1544009548, 1),
(2, '20181215143252524952', 36, '93.0000', 1544894873, 902, 1544855588, 0),
(3, '20181215143611985151', 36, '93.0000', 1544894671, 902, 1544855787, 0),
(4, '20181215143549534899', 36, '46.5000', 1544891062, 902, 1544855795, 0),
(5, '20181215143921575610', 39, '28.0000', 1544894261, 902, 1544855998, 0),
(6, '20181226153939981005', 5, '1.0000', 1545843314, 903, 1545811168, 0),
(7, '20181226161033575410', 5, '1.0000', 1545841045, 903, 1545811862, 0),
(8, '20181226161522979756', 5, '1.0000', 1545841231, 903, 1545812139, 0),
(9, '20181226183612995598', 5, '1.0000', 1545846948, 903, 1545820635, 0),
(10, '20190105205346975551', 5, '8000.0000', 1546705950, 903, 1546692866, 0),
(11, '20190105195044521011', 5, '0.8000', 1546790835, 903, 1546718751, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_browserecord`
--

CREATE TABLE `pay_browserecord` (
  `id` int(10) UNSIGNED NOT NULL,
  `articleid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pay_category`
--

CREATE TABLE `pay_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级ID',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章栏目';

--
-- 转存表中的数据 `pay_category`
--

INSERT INTO `pay_category` (`id`, `name`, `pid`, `status`) VALUES
(1, '最新资讯', 0, 1),
(2, '公司新闻', 0, 1),
(3, '公告通知', 1, 1),
(4, '站内公告', 3, 1),
(5, '公司新闻', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pay_channel`
--

CREATE TABLE `pay_channel` (
  `id` smallint(6) UNSIGNED NOT NULL COMMENT '供应商通道ID',
  `code` varchar(200) DEFAULT NULL COMMENT '供应商通道英文编码',
  `title` varchar(200) DEFAULT NULL COMMENT '供应商通道名称',
  `mch_id` varchar(100) DEFAULT NULL COMMENT '商户号',
  `signkey` varchar(500) DEFAULT NULL COMMENT '签文密钥',
  `appid` varchar(100) DEFAULT NULL COMMENT '应用APPID',
  `appsecret` varchar(100) DEFAULT NULL COMMENT '安全密钥',
  `gateway` varchar(300) DEFAULT NULL COMMENT '网关地址',
  `pagereturn` varchar(255) DEFAULT NULL COMMENT '页面跳转网址',
  `serverreturn` varchar(255) DEFAULT NULL COMMENT '服务器通知网址',
  `defaultrate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '下家费率',
  `fengding` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '封顶手续费',
  `rate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '银行费率',
  `updatetime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上次更改时间',
  `unlockdomain` varchar(100) NOT NULL COMMENT '防封域名',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭',
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '渠道类型: 1 微信扫码 2 微信H5 3 支付宝扫码 4 支付宝H5 5网银跳转 6网银直连 7百度钱包 8 QQ钱包 9 京东钱包',
  `start_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '结束时间',
  `paying_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '当天交易金额',
  `all_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '当天上游可交易量',
  `last_paying_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后交易时间',
  `min_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔最小交易额',
  `max_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔最大交易额',
  `control_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '风控状态:0否1是',
  `offline_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '通道上线状态:0已下线，1上线',
  `t0defaultrate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0运营费率',
  `t0fengding` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0封顶手续费',
  `t0rate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0成本费率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商列表';

--
-- 转存表中的数据 `pay_channel`
--

INSERT INTO `pay_channel` (`id`, `code`, `title`, `mch_id`, `signkey`, `appid`, `appsecret`, `gateway`, `pagereturn`, `serverreturn`, `defaultrate`, `fengding`, `rate`, `updatetime`, `unlockdomain`, `status`, `paytype`, `start_time`, `end_time`, `paying_money`, `all_money`, `last_paying_time`, `min_money`, `max_money`, `control_status`, `offline_status`, `t0defaultrate`, `t0fengding`, `t0rate`) VALUES
(215, 'Alipage', '官方支付宝扫码', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1541522670, '', 1, 3, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(216, 'Wjaliwap', '万家支付宝H5', '', '', '', '', 'https://pay.1yuanbg.com/pay?format=json', '', '', '0.0000', '0.0000', '0.0000', 1544582051, '', 1, 4, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(217, 'WxSm', '企业微信扫码', '', '', '', '', '', '', '', '0.0300', '0.0500', '0.0200', 1553863726, '', 1, 1, 2, 3, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0300', '0.0500', '0.0200'),
(218, '微信H5', '微信H5', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1537721096, '', 1, 2, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(221, '在线网银', '在线网银', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1537721143, '', 1, 10, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(222, '网关支付', '网关支付', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1537721164, '', 1, 9, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(223, 'YibaoKj', '快捷支付PC', '', '', '', '', '', '', '', '0.0300', '0.0000', '0.0400', 1541521177, '', 1, 7, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0100', '0.0000', '0.0200'),
(224, 'QQpay', 'QQ钱包扫码', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1541520973, '', 1, 5, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(225, 'Wjalipay', '万家支付宝扫码', '', '', '', '', 'https://pay.1yuanbg.com/pay?format=json', '', '', '0.0160', '0.0030', '0.0120', 1544915102, '', 1, 3, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0160', '0.0030', '0.0120'),
(226, 'Jmalipay', 'huohuo8支付宝扫码', '', '', '', '', '', '', '', '0.0001', '0.0000', '0.0003', 1545807010, '', 1, 3, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0001', '0.0000', '0.0003'),
(227, 'Jmaliwap', 'huohuo8支付宝H5', '', '', '', '', '', '', '', '0.0180', '0.0000', '0.0180', 1545807001, '', 1, 4, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0180', '0.0000', '0.0180'),
(228, 'Jmwxsm', 'paysapi微信扫码', '', '', '', '', '', '', '', '0.2000', '0.0000', '0.0020', 1543000195, '', 1, 1, 12, 18, '150.00', '10000.00', 1544855795, '0.00', '0.00', 0, 1, '0.1000', '0.0000', '0.0010'),
(229, 'Rzfwxscan', '睿支付微信扫码', '', '', '', '', '', '', '', '0.6000', '0.0000', '0.0060', 1544638450, '', 1, 1, 0, 0, '70.00', '10000.00', 1544855998, '0.00', '0.00', 0, 1, '0.5000', '0.0000', '0.0050'),
(230, 'Rzfaliscan', '睿支付支付宝扫码', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1543334886, '', 1, 3, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(231, 'Rzfbank', '睿支付网银支付', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1543335049, '', 1, 9, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(233, 'Aliwap', '官方支付宝H5', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1543668207, '', 1, 4, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(234, 'WftAliH5', '威富通支付宝H5', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1544583091, '', 1, 4, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000'),
(235, 'WftAliSm', '威富通支付宝扫码', '', '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 1544583248, '', 1, 3, 0, 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- 表的结构 `pay_channel_account`
--

CREATE TABLE `pay_channel_account` (
  `id` smallint(6) UNSIGNED NOT NULL COMMENT '供应商通道账号ID',
  `channel_id` smallint(6) UNSIGNED NOT NULL COMMENT '通道id',
  `mch_id` varchar(100) DEFAULT NULL COMMENT '商户号',
  `signkey` varchar(500) DEFAULT NULL COMMENT '签文密钥',
  `appid` varchar(100) DEFAULT NULL COMMENT '应用APPID',
  `appsecret` varchar(2500) DEFAULT NULL COMMENT '安全密钥',
  `defaultrate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '下家费率',
  `fengding` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '封顶手续费',
  `rate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '银行费率',
  `updatetime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上次更改时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭',
  `title` varchar(100) DEFAULT NULL COMMENT '账户标题',
  `weight` tinyint(2) DEFAULT NULL COMMENT '轮询权重',
  `custom_rate` tinyint(1) DEFAULT NULL COMMENT '是否自定义费率',
  `start_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '开始交易时间',
  `end_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '结束时间',
  `last_paying_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后一笔交易时间',
  `paying_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '当天交易金额',
  `all_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单日可交易金额',
  `max_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔交易最大金额',
  `min_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔交易最小金额',
  `offline_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上线状态-1上线,0下线',
  `control_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '风控状态-0不风控,1风控中',
  `is_defined` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否自定义:1-是,0-否',
  `unit_frist_paying_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间第一笔交易时间',
  `unit_paying_number` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单时间交易笔数',
  `unit_paying_amount` decimal(11,0) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间交易金额',
  `unit_interval` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间数值',
  `time_unit` char(1) NOT NULL DEFAULT 's' COMMENT '限制时间单位',
  `unit_number` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间次数',
  `unit_all_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单位时间金额',
  `t0defaultrate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0运营费率',
  `t0fengding` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0封顶手续费',
  `t0rate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0成本费率',
  `unlockdomain` varchar(255) NOT NULL COMMENT '防封域名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='供应商账号列表';

--
-- 转存表中的数据 `pay_channel_account`
--

INSERT INTO `pay_channel_account` (`id`, `channel_id`, `mch_id`, `signkey`, `appid`, `appsecret`, `defaultrate`, `fengding`, `rate`, `updatetime`, `status`, `title`, `weight`, `custom_rate`, `start_time`, `end_time`, `last_paying_time`, `paying_money`, `all_money`, `max_money`, `min_money`, `offline_status`, `control_status`, `is_defined`, `unit_frist_paying_time`, `unit_paying_number`, `unit_paying_amount`, `unit_interval`, `time_unit`, `unit_number`, `unit_all_money`, `t0defaultrate`, `t0fengding`, `t0rate`, `unlockdomain`) VALUES
(59, 215, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 'MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDHWNYJFrbkiGFcfv3VrtJ2DowrfE+XzMNqUpD9sRLGtRyBpCvEOLoi4ySYrXu0u5UJKFOhb2JmuT36ls6+dfw3Ltm4nZl5uoNBJMmWUBRjTjFXgh2i/SCZl2F9hBsEZymhnUznYAR0P4vwWI3G7b6dO4upc9BzVxdlXeiuiraGk+u9czjxVd6Hl9jLmr316ApSLT3JKfWBFRucjlMZHFziZpo6aFDY7FLQVxcwkVTGnszCwBTRiERUySLvWYagxDUDaxUT7o08wlMk+riXtzCiOMmVIeuhLFIkJ8r4cXs3Pe2R3b9lLgkpslXl12jpDb1Dwtz/xGiYrrXaCP+ssKkHAgMBAAECggEBALMweYTF9DTNGqdoR4dylCAmx3y3S1xqZSYHfels6DHRzwQBrI2/aCHAB79uAgrdqwQGSdaNJuirjrjYIpM1vzdjV7YJhFHVg/JkvQfuh8UUHmpIvZcq7cjiOHH488gra1Ko8N3yg05zaLjtANRWFMeFJO92+WMUYCVwGp36dkPU0Nw0iLj7d29lh8CVBwN1//89tW3604s60bOOvicHCEFeMGW2WeV3m7vD35wVIIrfkwTuTh31Exw0cJyoHYzfbk8/Z0AbSshp9d6CyLfuFYc+ka4BC4ExV3suxNTXRwdax+kWLaxDl9j0lZmbYQNWqCaAYHLek9Y/yo76C4ZTTCECgYEA6u5HU4YqeLFSFaLxwXiDFot0bK5RzmFFLvrs9YLEeXfE57YZyYa6Slt2whkiqz4pEZPCEHGLUiteowg59vgHNJuKVgOcl0DgJSLWKWUXn1fGrH/42kBnSbfA29C+cHvqLJqnbw4NBImHKhRfj7V4g0KbCL2vVvCcam9TtL2AOU8CgYEA2TmZH5mLic5k4XBFu/kFySPx/lOffPVjhfpJnsf5R19f4250Kc3mWDox4oYlhdsGqGZOXyConECN023uAL67RFMiGiiZ4HutEQDzA5ig86k25XKYvB/wKh32c8slZJZqlrxPtM8Y3X7Ri3tRBaUyLwFNESBE2+OXMEeMr2UDNskCgYEArVwh5B+oLaHkCbVRIsx0J2nHAv/rvBiJPe7Kdy0FIQFhmv8ErnKt+3rc+sQjkivvkFnxpcKz5XG9hx7l7zn9zzNL9Mb7gZ3NCXpYgPlpYhsar2ZL03oc/ggL1+mE7mpyVnHVRh0fPA7kYAfisKBgCrRWxS98OPKa6eu24DPKb/8CgYEAidaktYqHItDW7r6BYX/pDfNDMXD6uR41IuTpJloachGxFO4XxBclXULAOM+Kq9+J3/3bKT3eABhuZoVRCyP8TKS79QFiczHHZgzGJ7gIGdV8QihvhqB1kyQkKOH1Pli8Fh40LbVkP9ijOvDrPrvOlkkrD/z79NP8MeSU/w8H9RECgYA6j+DfTooicJ4cc358yK8om0B9sOmjEiCR3+7FEoCEo98J48uLq8dFoEtG68QzvNcafplYtfHyBS9TQV+Aq+RqSGu0RxD0GMTjZd+8mLIM81acy/HSC+XZECJ4nBS6hDL60JUuNvVKa40UJaYbO+SYd8+C1px4+bagVZqadbveJg==', '0.0000', '0.0000', '0.0000', 1543670921, 1, '支付宝扫码', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(60, 217, '1349825902', 'schaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'wx422126b0b6bbfcf3', '45843e705995a12103155f4c26f716d5', '0.0000', '0.0000', '0.0000', 1570692409, 1, '懒人', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(61, 224, '', '', '', '', '0.0000', '0.0000', '0.0000', 1541520982, 1, 'QQ钱包扫码', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(62, 223, '', '', '', '', '0.0000', '0.0000', '0.0000', 1541521183, 1, '快捷支付PC', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(63, 216, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', '', '0.0000', '0.0000', '0.0000', 1544534066, 1, '万家支付宝H5', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(64, 225, '1317', '38bcbbdf45d4nddf5n4d5', '', '', '0.0000', '0.0000', '0.0000', 1544915213, 1, '万家支付宝扫码', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(65, 226, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', '', '0.0000', '0.0000', '0.0000', 1545807120, 1, 'qq123456', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(66, 227, '', '', '', '', '0.0000', '0.0000', '0.0000', 1543055618, 1, 'qq123456', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(68, 228, '456', '124355454', '', '', '0.0000', '0.0000', '0.0000', 1543000075, 1, 'qq56789', 1, 0, 0, 0, 1544855787, '100.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(69, 229, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', '', '0.8000', '0.0000', '0.0000', 1543834355, 1, '100000057', 1, 0, 19, 20, 1544855998, '70.01', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.9000', '0.0000', '0.0000', ''),
(70, 230, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', '', '0.0000', '0.0000', '0.0000', 1543856376, 1, '100000057', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(71, 231, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', '', '0.0000', '0.0000', '0.0000', 1543476958, 1, '100000057', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(72, 233, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 'mn7cnmf7xuepreaggkwzv7le057yk4vv', '0.0000', '0.0000', '0.0000', 1543669098, 1, '官方H5', 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', ''),
(74, 228, '', '', '', '', '0.0000', '0.0000', '0.0000', 1544032180, 1, '3213', 1, 0, 0, 0, 1544855795, '51.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, 0, '0', 0, 's', 0, '0.00', '0.0000', '0.0000', '0.0000', '');

-- --------------------------------------------------------

--
-- 表的结构 `pay_complaints_deposit`
--

CREATE TABLE `pay_complaints_deposit` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户ID',
  `pay_orderid` varchar(100) NOT NULL DEFAULT '0' COMMENT '系统订单号',
  `out_trade_id` varchar(50) NOT NULL DEFAULT '' COMMENT '下游订单号',
  `freeze_money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '冻结保证金额',
  `unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '计划解冻时间',
  `real_unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '实际解冻时间',
  `is_pause` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否暂停解冻 0正常解冻 1暂停解冻',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '解冻状态 0未解冻 1已解冻',
  `create_at` int(11) NOT NULL COMMENT '记录创建时间',
  `update_at` int(11) NOT NULL COMMENT '记录更新时间',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉保证金余额';

--
-- 转存表中的数据 `pay_complaints_deposit`
--

INSERT INTO `pay_complaints_deposit` (`id`, `user_id`, `pay_orderid`, `out_trade_id`, `freeze_money`, `unfreeze_time`, `real_unfreeze_time`, `is_pause`, `status`, `create_at`, `update_at`, `username`) VALUES
(1, 5, '20190105205346975551', 'E2019010520525717425', '2000.0000', 1546736066, 0, 0, 0, 1546692866, 1546692866, NULL),
(2, 5, '20190105205737495056', 'E2019010520573353289', '19.8000', 1546736300, 0, 0, 0, 1546693100, 1546693100, NULL),
(3, 5, '20190105214235989999', 'E2019010521423219709', '19.8000', 1546761926, 0, 0, 0, 1546718726, 1546718726, NULL),
(4, 5, '20190105195044521011', 'E2019010519503767174', '0.2000', 1546761951, 0, 0, 0, 1546718751, 1546718751, NULL),
(5, 5, '20190108142116991015', 'E2019010814211118603', '198.0000', 1546971700, 0, 0, 0, 1546928500, 1546928500, NULL),
(6, 5, '20190108142645539797', 'E2019010814264123449', '1980.0000', 1546972020, 0, 0, 0, 1546928820, 1546928820, NULL),
(7, 5, '20191016165317100974', 'E2019101616531539913', '0.2000', 1571259343, 0, 0, 0, 1571216143, 1571216143, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pay_complaints_deposit_rule`
--

CREATE TABLE `pay_complaints_deposit_rule` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '主键',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `is_system` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否系统规则 1是 0否',
  `ratio` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '投诉保证金比例（百分比）',
  `freeze_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '冻结时间（秒）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '规则是否开启 1开启 0关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉保证金规则表';

--
-- 转存表中的数据 `pay_complaints_deposit_rule`
--

INSERT INTO `pay_complaints_deposit_rule` (`id`, `user_id`, `is_system`, `ratio`, `freeze_time`, `status`) VALUES
(1, 180586943, 1, '0.00', 0, 1),
(2, 1, 0, '0.00', 0, 0),
(3, 17, 0, '0.00', 0, 0),
(4, 5, 0, '20.00', 43200, 1),
(5, 36, 0, '30.00', 86400, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pay_df_api_order`
--

CREATE TABLE `pay_df_api_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户编号',
  `trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '平台订单号',
  `out_trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '商户订单号',
  `money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '金额',
  `bankname` varchar(100) NOT NULL DEFAULT '' COMMENT '银行名称',
  `subbranch` varchar(100) NOT NULL DEFAULT '' COMMENT '支行名称',
  `accountname` varchar(100) NOT NULL DEFAULT '' COMMENT '开户名',
  `cardnumber` varchar(100) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `province` varchar(100) NOT NULL DEFAULT '' COMMENT '所属省',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '所属市',
  `ip` varchar(100) DEFAULT '' COMMENT 'IP地址',
  `check_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：待审核 1：已提交后台审核 2：审核驳回',
  `extends` text COMMENT '扩展字段',
  `df_id` int(11) NOT NULL DEFAULT '0' COMMENT '代付ID',
  `notifyurl` varchar(255) DEFAULT '' COMMENT '异步通知地址',
  `reject_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '驳回原因',
  `check_time` int(11) NOT NULL DEFAULT '0' COMMENT '审核时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `df_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pay_email`
--

CREATE TABLE `pay_email` (
  `id` int(11) UNSIGNED NOT NULL,
  `smtp_host` varchar(300) DEFAULT NULL,
  `smtp_port` varchar(300) DEFAULT NULL,
  `smtp_user` varchar(300) DEFAULT NULL,
  `smtp_pass` varchar(300) DEFAULT NULL,
  `smtp_email` varchar(300) DEFAULT NULL,
  `smtp_name` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_email`
--

INSERT INTO `pay_email` (`id`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `smtp_email`, `smtp_name`) VALUES
(1, 'smtp.163.com', '465', '123@163.com', 'xa811121', '123@163.com', '聚合支付客服');

-- --------------------------------------------------------

--
-- 表的结构 `pay_industry_log`
--

CREATE TABLE `pay_industry_log` (
  `id` int(11) NOT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_industry_log`
--

INSERT INTO `pay_industry_log` (`id`, `data`) VALUES
(1, '3932$1$3632$1$3130302E30303030$1$31302E30303030$1$39302E30303030$1$323031392D31302D31362030323A31393A3535'),
(2, '3931$1$35$1$383030302E35333030$1$3530332E30303030$1$383530332E35333030$1$323031392D30312D31332032313A30313A3335'),
(3, '3930$1$35$1$383530332E35333030$1$3530332E30303030$1$383030302E35333030$1$323031392D30312D31332032303A35383A3539'),
(4, '3839$1$3632$1$3131312E30303030$1$31312E30303030$1$3130302E30303030$1$323031392D30312D31322032313A35383A3131'),
(5, '3838$1$3632$1$302E30303030$1$3131312E30303030$1$3131312E30303030$1$323031392D30312D31322032313A35363A3333'),
(6, '3837$1$35$1$393430342E35333030$1$313030302E30303030$1$31303430342E35333030$1$323031392D30312D31302031373A30313A3030'),
(7, '3836$1$35$1$313438342E35333030$1$373932302E30303030$1$393430342E35333030$1$323031392D30312D30382031343A32373A3030'),
(8, '3835$1$35$1$3639322E35333030$1$3739322E30303030$1$313438342E35333030$1$323031392D30312D30382031343A32313A3430'),
(9, '3834$1$35$1$383030342E30303030$1$302E38303030$1$383030342E38303030$1$323031392D30312D30362030343A30353A3531'),
(10, '3833$1$35$1$3731322E33333030$1$37392E32303030$1$3739312E35333030$1$323031392D30312D30362030343A30353A3236'),
(11, '3832$1$35$1$3633332E31333030$1$37392E32303030$1$3731322E33333030$1$323031392D30312D30352032303A35383A3230'),
(12, '3831$1$35$1$342E30303030$1$383030302E30303030$1$383030342E30303030$1$323031392D30312D30352032303A35343A3236'),
(13, '3830$1$3535$1$393930302E30303030$1$3130302E30303030$1$393830302E30303030$1$323031392D30312D30352031353A32333A3134'),
(14, '3739$1$3535$1$31303030302E30303030$1$3130302E30303030$1$393930302E30303030$1$323031392D30312D30352031353A32313A3431'),
(15, '3738$1$3535$1$302E30303030$1$31303030302E30303030$1$31303030302E30303030$1$323031392D30312D30352031353A32313A3132'),
(16, '3737$1$35$1$332E30303030$1$312E30303030$1$342E30303030$1$323031382D31322D32362031383A33373A3135'),
(17, '3736$1$35$1$322E30303030$1$312E30303030$1$332E30303030$1$323031382D31322D32362031363A31353A3339'),
(18, '3735$1$35$1$312E30303030$1$312E30303030$1$322E30303030$1$323031382D31322D32362031363A31313A3032'),
(19, '3734$1$35$1$302E30303030$1$312E30303030$1$312E30303030$1$323031382D31322D32362031353A35393A3238'),
(20, '3733$1$3339$1$302E30303030$1$32382E30303030$1$32382E30303030$1$323031382D31322D31352031343A33393A3538'),
(21, '3732$1$39$1$36312E30303030$1$322E35303030$1$36332E35303030$1$323031382D31322D31352031343A33363A3335'),
(22, '3731$1$3336$1$3138362E30303030$1$34362E35303030$1$3233322E35303030$1$323031382D31322D31352031343A33363A3335'),
(23, '3730$1$39$1$35362E30303030$1$352E30303030$1$36312E30303030$1$323031382D31322D31352031343A33363A3237'),
(24, '3639$1$3336$1$39332E30303030$1$39332E30303030$1$3138362E30303030$1$323031382D31322D31352031343A33363A3237'),
(25, '3638$1$39$1$35312E30303030$1$352E30303030$1$35362E30303030$1$323031382D31322D31352031343A33333A3038'),
(26, '3637$1$3336$1$302E30303030$1$39332E30303030$1$39332E30303030$1$323031382D31322D31352031343A33333A3038'),
(27, '3636$1$3336$1$3738322E30303030$1$352E30303030$1$3738372E30303030$1$323031382D31322D31342032333A35373A3238'),
(28, '3635$1$35$1$3633332E31323030$1$302E30313030$1$3633332E31333030$1$323031382D31322D31332030353A33393A3031'),
(29, '3634$1$3438$1$302E30303530$1$302E39303030$1$302E39303030$1$323031382D31322D31332030323A30303A3439'),
(30, '3633$1$3438$1$302E30303030$1$302E30303530$1$302E30303030$1$323031382D31322D31332030313A35353A3030'),
(31, '3632$1$34$1$312E30303030$1$302E30353030$1$312E30353030$1$323031382D31322D30382031333A30343A3335'),
(32, '3631$1$3133$1$322E32303030$1$392E39343030$1$31322E31343030$1$323031382D31322D30382031333A30343A3335'),
(33, '3630$1$35$1$3633332E31313030$1$302E30313030$1$3633332E31323030$1$323031382D31322D30382031333A30343A3236'),
(34, '3539$1$35$1$3633332E31303030$1$302E30313030$1$3633332E31313030$1$323031382D31322D30382031333A30333A3335'),
(35, '3538$1$35$1$3633332E30393030$1$302E30313030$1$3633332E31303030$1$323031382D31322D30382031333A30333A3139'),
(36, '3537$1$35$1$3633332E30383030$1$302E30313030$1$3633332E30393030$1$323031382D31322D30382031333A30333A3132'),
(37, '3536$1$35$1$3633332E30373030$1$302E30313030$1$3633332E30383030$1$323031382D31322D30382030323A33363A3439'),
(38, '3535$1$35$1$3633332E30363030$1$302E30313030$1$3633332E30373030$1$323031382D31322D30372031343A30343A3538'),
(39, '3534$1$39$1$34362E30303030$1$352E30303030$1$35312E30303030$1$323031382D31322D30362030303A30383A3132'),
(40, '3533$1$3336$1$3638382E30303030$1$39342E30303030$1$3738322E30303030$1$323031382D31322D30362030303A30383A3132');

-- --------------------------------------------------------

--
-- 表的结构 `pay_invitecode`
--

CREATE TABLE `pay_invitecode` (
  `id` int(10) UNSIGNED NOT NULL,
  `invitecode` varchar(32) NOT NULL,
  `fmusernameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `syusernameid` int(11) NOT NULL DEFAULT '0',
  `regtype` tinyint(1) UNSIGNED NOT NULL DEFAULT '4' COMMENT '用户组 4 普通用户 5 代理商',
  `fbdatetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `yxdatetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sydatetime` int(11) UNSIGNED DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '邀请码状态 0 禁用 1 未使用 2 已使用',
  `is_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否管理员添加'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_invitecode`
--

INSERT INTO `pay_invitecode` (`id`, `invitecode`, `fmusernameid`, `syusernameid`, `regtype`, `fbdatetime`, `yxdatetime`, `sydatetime`, `status`, `is_admin`) VALUES
(2, 'o2rf9t', 1, 180768704, 4, 1534917410, 1535003805, 1534917416, 2, 1),
(3, 'wttye8', 1, 180768705, 4, 1534917489, 1535003888, 1534917496, 2, 1),
(4, 'ktn792', 1, 180768706, 5, 1534951096, 1535037485, 1534951110, 2, 1),
(6, 'wz0a94', 1, 180768716, 4, 1536592819, 1536679216, 1536592827, 2, 1),
(7, 'vx27sh', 1, 180768717, 4, 1536595154, 1536681551, 1536595158, 2, 1),
(8, 'wwnnph', 1, 180768718, 4, 1536596894, 1536683292, 1536596915, 2, 1),
(9, 'ojxy', 1, 19, 4, 1543080463, 1543166861, 1543080470, 2, 1),
(10, 'jgs0', 9, 24, 4, 1543144229, 1543230620, 1543144237, 2, 1),
(11, 'naf9', 1, 34, 4, 1544011753, 1544098146, 1544011765, 2, 1),
(12, 'ccwz', 1, 35, 4, 1544012858, 1544099255, 1544012883, 2, 1),
(13, '8j4t', 1, 0, 4, 1545111862, 1545198260, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pay_inviteconfig`
--

CREATE TABLE `pay_inviteconfig` (
  `id` int(10) UNSIGNED NOT NULL,
  `invitezt` tinyint(1) UNSIGNED DEFAULT '1',
  `invitetype2number` int(11) NOT NULL DEFAULT '20',
  `invitetype2ff` smallint(6) NOT NULL DEFAULT '1',
  `invitetype5number` int(11) NOT NULL DEFAULT '20',
  `invitetype5ff` smallint(6) NOT NULL DEFAULT '1',
  `invitetype6number` int(11) NOT NULL DEFAULT '20',
  `invitetype6ff` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_inviteconfig`
--

INSERT INTO `pay_inviteconfig` (`id`, `invitezt`, `invitetype2number`, `invitetype2ff`, `invitetype5number`, `invitetype5ff`, `invitetype6number`, `invitetype6ff`) VALUES
(1, 0, 0, 0, 10, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_loginrecord`
--

CREATE TABLE `pay_loginrecord` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `logindatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginip` varchar(100) NOT NULL,
  `loginaddress` varchar(300) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型：0：前台用户 1：后台用户'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_loginrecord`
--

INSERT INTO `pay_loginrecord` (`id`, `userid`, `logindatetime`, `loginip`, `loginaddress`, `type`) VALUES
(1, 1, '2018-11-24 18:50:30', '110.83.187.210', '福建省福州市', 1),
(2, 9, '2018-11-25 08:21:57', '117.61.151.52', '江苏省连云港市', 1),
(3, 19, '2018-11-25 08:23:18', '117.61.151.52', '江苏-', 0),
(4, 9, '2018-11-25 08:28:49', '36.113.32.87', '浙江省', 1),
(5, 19, '2018-11-25 08:31:48', '36.113.32.87', '浙江-', 0),
(6, 9, '2018-11-25 08:52:10', '59.35.84.122', '广东省汕头市', 1),
(7, 1, '2018-11-25 09:22:28', '117.61.2.20', '江苏省泰州市', 1),
(8, 1, '2018-11-25 10:31:29', '124.236.190.3', '河北省石家庄市', 1),
(9, 9, '2018-11-25 10:41:58', '117.61.23.138', '江苏省泰州市', 1),
(10, 9, '2018-11-25 10:46:10', '117.61.23.138', '江苏省泰州市', 1),
(11, 1, '2018-11-25 10:48:41', '61.157.235.10', '四川省广安市岳池县', 1),
(12, 1, '2018-11-25 11:14:07', '101.207.224.47', '四川省', 1),
(13, 1, '2018-11-25 13:08:09', '101.207.224.47', '四川省', 1),
(14, 1, '2018-11-26 07:53:35', '124.236.190.3', '河北省石家庄市', 1),
(15, 1, '2018-11-26 12:37:10', '117.61.2.20', '江苏省泰州市', 1),
(16, 1, '2018-11-26 12:54:00', '115.231.231.16', '浙江省杭州市', 1),
(17, 1, '2018-11-26 15:57:01', '124.236.190.3', '河北省石家庄市', 1),
(18, 1, '2018-11-27 08:44:29', '115.231.231.16', '浙江省杭州市', 1),
(19, 1, '2018-11-27 09:07:45', '124.236.223.177', '河北省石家庄市', 1),
(20, 19, '2018-11-27 09:08:28', '124.236.223.177', '河北-石家庄', 0),
(21, 1, '2018-11-27 09:56:42', '223.104.6.48', '中国', 1),
(22, 1, '2018-11-27 14:05:09', '115.231.231.16', '浙江省杭州市', 1),
(23, 1, '2018-11-27 16:55:45', '146.88.200.80', '美国', 1),
(24, 1, '2018-11-28 09:06:55', '117.22.244.72', '陕西省西安市', 1),
(25, 1, '2018-11-28 11:45:15', '117.22.244.72', '陕西省西安市', 1),
(26, 27, '2018-11-28 12:39:24', '1.198.7.36', '河南-郑州', 0),
(27, 1, '2018-11-28 16:14:00', '120.33.105.238', '福建省泉州市', 1),
(28, 1, '2018-11-29 07:30:22', '219.145.45.199', '陕西省西安市', 1),
(29, 1, '2018-11-29 07:31:50', '103.78.130.13', '亚太地区', 1),
(30, 1, '2018-11-29 12:52:20', '120.37.167.42', '福建省泉州市', 1),
(31, 1, '2018-11-29 13:16:01', '219.145.45.199', '陕西省西安市', 1),
(32, 1, '2018-11-29 13:31:23', '120.37.167.42', '福建省泉州市', 1),
(33, 1, '2018-11-29 15:25:01', '183.211.163.123', '江苏省', 1),
(34, 1, '2018-11-29 15:27:04', '182.97.56.228', '江西省南昌市', 1),
(35, 28, '2018-11-30 03:02:34', '180.175.68.181', '上海-上海', 0),
(36, 1, '2018-11-30 03:03:21', '120.37.167.42', '福建省泉州市', 1),
(37, 29, '2018-11-30 04:01:09', '120.37.167.42', '福建-泉州', 0),
(38, 1, '2018-11-30 05:04:25', '120.37.167.42', '福建省泉州市', 1),
(39, 1, '2018-11-30 06:44:09', '59.55.43.215', '江西省赣州市', 1),
(40, 1, '2018-11-30 06:44:35', '223.104.6.13', '中国', 1),
(41, 1, '2018-11-30 06:45:36', '121.207.129.227', '福建省厦门市', 1),
(42, 1, '2018-11-30 08:33:03', '180.159.23.174', '上海市', 1),
(43, 1, '2018-11-30 08:52:37', '117.61.2.20', '江苏省泰州市', 1),
(44, 1, '2018-11-30 11:00:22', '120.37.167.42', '福建省泉州市', 1),
(45, 1, '2018-11-30 11:56:19', '59.63.225.102', '贵州省', 1),
(46, 1, '2018-11-30 12:06:27', '112.64.119.50', '上海市', 1),
(47, 1, '2018-11-30 12:39:53', '125.120.13.237', '浙江省杭州市', 1),
(48, 1, '2018-11-30 14:16:07', '183.211.164.51', '江苏省', 1),
(49, 1, '2018-11-30 15:14:21', '222.214.218.29', '四川省乐山市', 1),
(50, 1, '2018-11-30 16:00:35', '112.5.202.46', '福建省福州市', 1),
(51, 1, '2018-12-01 06:58:29', '117.61.2.20', '江苏省泰州市', 1),
(52, 1, '2018-12-01 11:42:04', '222.214.218.29', '四川省乐山市', 1),
(53, 31, '2018-12-02 07:06:32', '39.181.158.233', '浙江-台州', 0),
(54, 1, '2018-12-02 08:44:51', '39.181.158.233', '中国', 1),
(55, 1, '2018-12-02 10:22:31', '175.42.163.203', '福建省三明市', 1),
(56, 1, '2018-12-02 13:13:36', '117.22.86.188', '陕西省西安市', 1),
(57, 1, '2018-12-02 16:52:11', '223.104.248.13', '中国', 1),
(58, 1, '2018-12-02 16:53:21', '106.92.98.83', '重庆市', 1),
(59, 1, '2018-12-02 17:33:04', '106.92.98.83', '重庆市', 1),
(60, 1, '2018-12-02 20:10:11', '223.104.248.13', '中国', 1),
(61, 1, '2018-12-02 20:51:45', '223.104.248.13', '中国', 1),
(62, 1, '2018-12-02 20:52:15', '223.104.248.13', '中国', 1),
(63, 1, '2018-12-02 20:53:23', '223.104.248.13', '中国', 1),
(64, 1, '2018-12-02 21:14:41', '223.104.248.13', '中国', 1),
(65, 1, '2018-12-03 02:24:43', '202.109.166.232', '江西省吉安市', 1),
(66, 1, '2018-12-03 02:24:43', '223.104.248.13', '中国', 1),
(67, 1, '2018-12-03 03:11:31', '123.144.114.166', '重庆市', 1),
(68, 1, '2018-12-03 03:16:26', '183.60.228.69', '广东省深圳市', 1),
(69, 1, '2018-12-03 04:17:49', '183.134.50.69', '浙江省宁波市', 1),
(70, 1, '2018-12-03 06:55:07', '117.22.86.188', '陕西省西安市', 1),
(71, 1, '2018-12-03 09:16:44', '117.61.2.66', '江苏省泰州市', 1),
(72, 1, '2018-12-03 10:09:09', '146.88.200.80', '美国', 1),
(73, 33, '2018-12-03 10:12:26', '146.88.200.80', '柬埔寨-', 0),
(74, 1, '2018-12-03 10:57:39', '120.37.167.42', '福建省泉州市', 1),
(75, 1, '2018-12-03 14:07:28', '117.22.86.188', '陕西省西安市', 1),
(76, 1, '2018-12-03 15:48:26', '221.130.50.2', '江苏省南京市', 1),
(77, 1, '2018-12-04 03:12:50', '117.61.2.66', '江苏省泰州市', 1),
(78, 1, '2018-12-04 05:16:42', '36.113.11.98', '浙江省', 1),
(79, 1, '2018-12-04 05:56:15', '1.197.135.22', '河南省南阳市', 1),
(80, 1, '2018-12-04 07:40:24', '106.114.68.237', '河北省石家庄市', 1),
(81, 1, '2018-12-04 08:44:41', '120.37.166.244', '福建省泉州市', 1),
(82, 1, '2018-12-04 09:03:19', '146.88.200.80', '美国', 1),
(83, 1, '2018-12-04 09:28:31', '117.61.2.66', '江苏省泰州市', 1),
(84, 1, '2018-12-05 06:14:43', '175.158.202.128', '菲律宾', 1),
(85, 1, '2018-12-05 10:05:16', '120.37.166.244', '福建省泉州市', 1),
(86, 1, '2018-12-05 10:07:54', '1.80.79.129', '陕西省西安市', 1),
(87, 34, '2018-12-05 12:09:42', '120.37.166.244', '福建-泉州', 0),
(88, 35, '2018-12-05 12:29:03', '120.37.166.244', '福建-泉州', 0),
(89, 36, '2018-12-05 12:58:39', '120.37.166.244', '福建-泉州', 0),
(90, 37, '2018-12-05 13:58:03', '120.37.166.244', '福建-泉州', 0),
(91, 1, '2018-12-05 14:12:04', '117.61.15.171', '江苏省泰州市', 1),
(92, 38, '2018-12-05 14:41:38', '120.37.166.244', '福建-泉州', 0),
(93, 1, '2018-12-05 16:04:16', '120.37.166.244', '福建省泉州市', 1),
(94, 1, '2018-12-05 16:53:44', '120.37.166.244', '福建省泉州市', 1),
(95, 1, '2018-12-05 17:27:30', '120.37.166.244', '福建省泉州市', 1),
(96, 1, '2018-12-05 18:13:36', '120.37.166.244', '福建省泉州市', 1),
(97, 1, '2018-12-05 18:23:15', '175.158.202.128', '菲律宾', 1),
(98, 41, '2018-12-05 21:12:49', '175.158.202.128', '菲律宾-', 0),
(99, 39, '2018-12-05 21:14:37', '175.158.202.128', '菲律宾-', 0),
(100, 1, '2018-12-05 21:37:44', '175.158.200.101', '菲律宾', 1),
(101, 1, '2018-12-06 03:37:42', '120.37.166.244', '福建省泉州市', 1),
(102, 42, '2018-12-06 06:15:06', '117.61.5.142', '江苏-', 0),
(103, 1, '2018-12-06 10:10:15', '112.74.176.226', '广东省佛山市', 1),
(104, 1, '2018-12-06 10:52:26', '221.13.63.69', '贵州省', 1),
(105, 1, '2018-12-06 10:55:01', '223.167.152.126', '上海市', 1),
(106, 43, '2018-12-06 12:32:36', '60.172.30.132', '安徽-阜阳', 0),
(107, 43, '2018-12-06 12:36:07', '60.172.30.132', '安徽-阜阳', 0),
(108, 43, '2018-12-06 12:38:30', '60.172.30.132', '安徽-阜阳', 0),
(109, 1, '2018-12-06 12:55:52', '60.172.30.132', '安徽省阜阳市', 1),
(110, 1, '2018-12-06 13:07:40', '219.144.157.167', '陕西省西安市', 1),
(111, 1, '2018-12-06 14:55:15', '36.113.11.98', '浙江省', 1),
(112, 1, '2018-12-07 05:54:37', '36.62.28.70', '安徽省', 1),
(113, 1, '2018-12-07 10:16:30', '112.74.176.226', '广东省佛山市', 1),
(114, 1, '2018-12-07 13:12:43', '219.145.45.194', '陕西省西安市', 1),
(115, 1, '2018-12-07 13:49:57', '60.172.30.132', '安徽省阜阳市', 1),
(116, 1, '2018-12-07 14:04:32', '60.172.30.132', '安徽省阜阳市', 1),
(117, 1, '2018-12-07 14:18:54', '60.172.30.132', '安徽省阜阳市', 1),
(118, 1, '2018-12-07 14:31:16', '60.172.30.132', '安徽省阜阳市', 1),
(119, 1, '2018-12-07 14:33:20', '117.61.15.171', '江苏省泰州市', 1),
(120, 45, '2018-12-07 14:38:01', '117.61.15.171', '江苏-', 0),
(121, 1, '2018-12-07 17:26:56', '110.54.227.47', '菲律宾', 1),
(122, 39, '2018-12-08 00:58:27', '175.158.203.141', '菲律宾-', 0),
(123, 1, '2018-12-08 05:02:16', '117.61.2.66', '江苏省泰州市', 1),
(124, 46, '2018-12-08 08:00:11', '113.85.99.183', '广东-潮州', 0),
(125, 1, '2018-12-08 11:53:46', '117.61.150.107', '江苏省连云港市', 1),
(126, 1, '2018-12-08 15:32:05', '120.37.166.244', '福建省泉州市', 1),
(127, 1, '2018-12-08 18:55:12', '120.37.166.244', '福建省泉州市', 1),
(128, 1, '2018-12-08 19:04:15', '120.37.166.244', '福建省泉州市', 1),
(129, 1, '2018-12-09 11:42:49', '123.147.246.150', '重庆市', 1),
(130, 1, '2018-12-09 15:03:16', '117.22.244.170', '陕西省西安市', 1),
(131, 1, '2018-12-11 07:44:42', '117.24.106.231', '福建省泉州市', 1),
(132, 1, '2018-12-11 08:10:29', '117.24.106.231', '福建省泉州市', 1),
(133, 1, '2018-12-11 09:59:08', '219.144.156.109', '陕西省西安市', 1),
(134, 1, '2018-12-11 11:16:03', '219.144.156.109', '陕西省西安市', 1),
(135, 1, '2018-12-11 11:16:08', '119.163.86.145', '山东省济南市', 1),
(136, 1, '2018-12-11 13:19:36', '36.40.28.252', '陕西省西安市', 1),
(137, 1, '2018-12-11 13:45:31', '36.40.16.237', '陕西省西安市', 1),
(138, 43, '2018-12-11 17:57:04', '117.136.44.248', '河南-', 0),
(139, 1, '2018-12-11 22:30:25', '117.24.106.231', '福建省泉州市', 1),
(140, 1, '2018-12-12 02:25:47', '1.80.78.248', '陕西省西安市', 1),
(141, 1, '2018-12-12 07:37:37', '47.74.177.216', '加拿大', 1),
(142, 1, '2018-12-12 13:08:24', '117.24.106.231', '福建省泉州市', 1),
(143, 1, '2018-12-12 14:45:14', '119.163.86.145', '山东省济南市', 1),
(144, 1, '2018-12-12 14:45:14', '119.163.86.145', '山东省济南市', 1),
(145, 1, '2018-12-12 15:20:46', '117.24.106.231', '福建省泉州市', 1),
(146, 48, '2018-12-12 15:51:56', '121.206.116.64', '福建-龙岩', 0),
(147, 1, '2018-12-12 15:53:38', '119.163.86.145', '山东省济南市', 1),
(148, 1, '2018-12-12 21:30:49', '175.158.200.124', '菲律宾', 1),
(149, 1, '2018-12-14 04:49:09', '117.24.106.231', '福建省泉州市', 1),
(150, 1, '2018-12-14 04:53:14', '36.108.170.205', '浙江省', 1),
(151, 1, '2018-12-14 12:43:51', '119.163.86.145', '山东省济南市', 1),
(152, 1, '2018-12-14 15:50:39', '117.24.106.231', '福建省泉州市', 1),
(153, 1, '2018-12-15 06:31:44', '117.24.106.231', '福建省泉州市', 1),
(154, 1, '2018-12-15 07:09:50', '117.61.2.66', '江苏省泰州市', 1),
(155, 1, '2018-12-15 08:04:26', '117.61.2.66', '江苏省泰州市', 1),
(156, 1, '2018-12-15 08:20:41', '117.61.2.66', '江苏省泰州市', 1),
(157, 1, '2018-12-15 15:30:13', '36.108.170.205', '浙江省', 1),
(158, 1, '2018-12-15 16:41:03', '117.24.106.231', '福建省泉州市', 1),
(159, 1, '2018-12-15 23:03:25', '112.230.220.248', '山东省济南市', 1),
(160, 1, '2018-12-16 01:47:06', '117.22.86.151', '陕西省西安市', 1),
(161, 1, '2018-12-16 06:34:52', '117.24.106.231', '福建省泉州市', 1),
(162, 1, '2018-12-16 08:18:21', '117.24.106.231', '福建省泉州市', 1),
(163, 1, '2018-12-16 12:44:37', '117.24.106.231', '福建省泉州市', 1),
(164, 1, '2018-12-16 15:55:00', '117.24.106.231', '福建省泉州市', 1),
(165, 1, '2018-12-17 11:10:45', '117.61.2.66', '江苏省泰州市', 1),
(166, 1, '2018-12-17 12:38:44', '117.61.2.66', '江苏省泰州市', 1),
(167, 1, '2018-12-17 13:55:23', '219.145.45.53', '陕西省西安市', 1),
(168, 1, '2018-12-17 14:28:27', '117.61.2.66', '江苏省泰州市', 1),
(169, 1, '2018-12-17 14:57:25', '110.81.176.14', '福建省泉州市', 1),
(170, 5, '2018-12-17 14:58:08', '110.81.176.14', '福建-泉州', 0),
(171, 1, '2018-12-17 14:59:28', '112.230.220.248', '山东省济南市', 1),
(172, 1, '2018-12-18 03:11:10', '113.118.90.157', '广东省深圳市', 1),
(173, 1, '2018-12-18 06:34:40', '113.118.90.157', '广东省深圳市', 1),
(174, 1, '2018-12-18 11:50:42', '101.70.210.3', '浙江省', 1),
(175, 1, '2018-12-18 12:29:18', '112.230.220.248', '山东省济南市', 1),
(176, 1, '2018-12-18 15:05:04', '114.24.48.187', '台湾省', 1),
(177, 1, '2018-12-18 15:21:30', '112.230.220.248', '山东省济南市', 1),
(178, 1, '2018-12-19 12:21:32', '101.70.210.3', '浙江省', 1),
(179, 1, '2018-12-19 14:10:59', '112.230.220.248', '山东省济南市', 1),
(180, 1, '2018-12-19 19:01:15', '110.81.176.14', '福建省泉州市', 1),
(181, 10, '2018-12-19 19:02:21', '110.81.176.14', '福建省泉州市', 1),
(182, 10, '2018-12-19 19:02:43', '110.81.176.14', '福建省泉州市', 1),
(183, 1, '2018-12-20 11:12:36', '101.70.210.3', '浙江省', 1),
(184, 1, '2018-12-20 11:58:52', '36.113.33.255', '浙江省', 1),
(185, 1, '2018-12-20 12:33:32', '117.30.218.16', '福建省', 1),
(186, 1, '2018-12-20 12:37:01', '106.122.183.135', '广东省', 1),
(187, 1, '2018-12-20 12:40:19', '106.122.183.135', '广东省', 1),
(188, 1, '2018-12-20 14:02:15', '14.210.128.28', '广东省湛江市', 1),
(189, 36, '2018-12-20 14:05:28', '14.210.128.28', '广东-湛江', 0),
(190, 1, '2018-12-21 01:57:32', '112.230.220.248', '山东省济南市', 1),
(191, 1, '2018-12-21 01:58:14', '112.230.220.248', '山东省济南市', 1),
(192, 1, '2018-12-21 09:16:31', '103.244.249.46', '亚太地区', 1),
(193, 1, '2018-12-21 10:28:05', '103.244.249.46', '亚太地区', 1),
(194, 1, '2018-12-21 13:04:30', '103.244.249.46', '亚太地区', 1),
(195, 49, '2018-12-21 13:39:04', '122.238.168.12', '浙江-温州', 0),
(196, 1, '2018-12-21 16:51:22', '36.113.33.255', '浙江省', 1),
(197, 36, '2018-12-23 04:25:40', '183.18.32.240', '广东-湛江', 0),
(198, 1, '2018-12-23 13:30:48', '117.61.66.18', '江苏省扬州市', 1),
(199, 1, '2018-12-25 08:54:09', '211.157.178.165', '北京市', 1),
(200, 1, '2018-12-26 04:38:14', '36.113.32.56', '浙江省', 1),
(201, 1, '2018-12-26 05:06:27', '110.87.108.89', '福建省厦门市', 1),
(202, 1, '2018-12-26 06:49:26', '113.113.120.177', '广东省东莞市', 1),
(203, 1, '2018-12-26 07:50:46', '185.239.226.77', '欧洲和中东地区', 1),
(204, 1, '2018-12-26 08:13:07', '185.239.226.77', '欧洲和中东地区', 1),
(205, 1, '2018-12-27 03:22:56', '110.87.108.89', '福建省厦门市', 1),
(206, 1, '2018-12-28 07:45:46', '113.118.89.175', '广东省深圳市', 1),
(207, 1, '2018-12-28 07:50:49', '171.109.254.60', '广西', 1),
(208, 1, '2018-12-28 08:04:21', '113.118.89.175', '广东省深圳市', 1),
(209, 1, '2018-12-28 10:58:25', '115.84.84.163', '老挝', 1),
(210, 1, '2018-12-28 11:11:10', '116.211.145.12', '湖北省', 1),
(211, 1, '2018-12-30 10:33:54', '106.121.135.231', '广东省', 1),
(212, 1, '2018-12-30 10:39:23', '1.203.182.4', '北京市', 1),
(213, 1, '2018-12-30 10:40:09', '1.203.182.4', '北京市', 1),
(214, 1, '2018-12-31 14:25:26', '117.136.39.239', '中国', 1),
(215, 13, '2018-12-31 18:46:20', '14.220.123.55', '广东-东莞', 0),
(216, 52, '2019-01-01 23:27:07', '117.181.180.170', '广西-百色', 0),
(217, 1, '2019-01-02 06:56:02', '1.180.156.93', '内蒙古', 1),
(218, 1, '2019-01-02 08:27:26', '123.235.217.129', '山东省青岛市', 1),
(219, 1, '2019-01-02 08:40:54', '123.235.217.129', '山东省青岛市', 1),
(220, 53, '2019-01-02 09:34:49', '1.180.156.93', '内蒙古-巴彦淖尔', 0),
(221, 1, '2019-01-02 10:21:26', '45.64.121.183', '美国', 1),
(222, 1, '2019-01-02 12:07:00', '101.70.210.47', '浙江省', 1),
(223, 1, '2019-01-03 06:02:52', '1.180.156.90', '内蒙古', 1),
(224, 1, '2019-01-03 12:28:50', '101.70.210.44', '浙江省', 1),
(225, 1, '2019-01-03 13:52:36', '223.11.149.203', '山西省', 1),
(226, 1, '2019-01-04 04:37:17', '222.214.218.29', '四川省乐山市', 1),
(227, 1, '2019-01-04 05:20:07', '1.180.156.90', '内蒙古', 1),
(228, 1, '2019-01-04 06:02:35', '183.17.52.96', '广东省深圳市', 1),
(229, 1, '2019-01-04 06:33:51', '183.200.12.214', '山西省', 1),
(230, 1, '2019-01-04 07:21:59', '123.160.134.68', '河南省郑州市', 1),
(231, 1, '2019-01-05 06:59:57', '1.180.156.91', '内蒙古', 1),
(232, 1, '2019-01-05 07:19:22', '36.46.86.151', '陕西省', 1),
(233, 1, '2019-01-05 16:47:05', '175.158.202.166', '菲律宾', 1),
(234, 1, '2019-01-06 04:18:11', '1.180.156.91', '内蒙古', 1),
(235, 1, '2019-01-06 11:21:16', '222.214.218.29', '四川省乐山市', 1),
(236, 1, '2019-01-06 12:30:13', '101.70.210.44', '浙江省', 1),
(237, 1, '2019-01-07 01:52:21', '117.61.194.174', '江苏省淮安市', 1),
(238, 1, '2019-01-07 05:46:12', '183.200.12.59', '山西省', 1),
(239, 1, '2019-01-07 17:09:10', '115.215.79.9', '浙江省宁波市', 1),
(240, 1, '2019-01-07 17:10:29', '115.215.79.9', '浙江省宁波市', 1),
(241, 1, '2019-01-08 06:19:24', '1.180.156.90', '内蒙古', 1),
(242, 1, '2019-01-08 09:26:45', '115.150.70.155', '江西省赣州市', 1),
(243, 1, '2019-01-08 09:27:16', '171.15.167.101', '河南省', 1),
(244, 1, '2019-01-08 10:35:08', '183.17.55.220', '广东省深圳市', 1),
(245, 1, '2019-01-08 12:16:59', '171.15.167.101', '河南省', 1),
(246, 1, '2019-01-09 03:04:42', '183.17.55.220', '广东省深圳市', 1),
(247, 1, '2019-01-09 08:45:50', '36.113.10.117', '浙江省', 1),
(248, 1, '2019-01-09 15:32:47', '1.180.156.93', '内蒙古', 1),
(249, 1, '2019-01-09 15:48:28', '1.180.156.93', '内蒙古', 1),
(250, 1, '2019-01-10 02:31:38', '36.113.10.117', '浙江省', 1),
(251, 1, '2019-01-10 07:33:24', '1.180.156.90', '内蒙古', 1),
(252, 1, '2019-01-10 09:55:41', '183.200.12.126', '山西省', 1),
(253, 1, '2019-01-10 13:35:30', '175.158.203.85', '菲律宾', 1),
(254, 1, '2019-01-10 14:00:24', '112.96.198.11', '广东省佛山市', 1),
(255, 1, '2019-01-10 14:29:07', '123.139.18.6', '陕西省西安市', 1),
(256, 1, '2019-01-10 15:22:52', '175.158.203.85', '菲律宾', 1),
(257, 5, '2019-01-11 00:50:07', '175.158.202.228', '菲律宾-', 0),
(258, 5, '2019-01-11 03:03:46', '175.158.202.68', '菲律宾-', 0),
(259, 1, '2019-01-11 06:46:21', '183.17.54.58', '广东省深圳市', 1),
(260, 1, '2019-01-11 06:59:18', '116.22.1.219', '广东省广州市', 1),
(261, 5, '2019-01-11 07:01:35', '116.22.1.219', '广东-广州', 0),
(262, 1, '2019-01-11 07:37:52', '115.239.205.118', '浙江省绍兴市', 1),
(263, 1, '2019-01-11 08:16:39', '222.78.89.71', '福建省龙岩市', 1),
(264, 1, '2019-01-12 05:55:13', '222.214.218.29', '四川省乐山市', 1),
(265, 1, '2019-01-12 07:08:51', '113.248.156.20', '重庆市', 1),
(266, 1, '2019-01-12 09:27:06', '107.151.99.74', '北美地区', 1),
(267, 1, '2019-01-12 10:04:51', '113.93.107.213', '广东省江门市', 1),
(268, 1, '2019-01-12 13:55:06', '113.93.108.53', '广东省江门市', 1),
(269, 65, '2019-01-13 01:25:29', '180.141.195.233', '广西-崇左', 0),
(270, 65, '2019-01-13 01:26:48', '180.141.195.233', '广西-崇左', 0),
(271, 65, '2019-01-13 01:34:02', '180.141.195.233', '广西-崇左', 0),
(272, 1, '2019-01-13 12:49:21', '222.214.218.29', '四川省乐山市', 1),
(273, 1, '2019-01-24 05:43:59', '36.248.163.114', '福建省福州市', 1),
(274, 1, '2019-01-24 06:03:43', '36.248.163.114', '福建省福州市', 1),
(275, 1, '2019-01-24 06:15:13', '36.248.163.114', '福建省福州市', 1),
(276, 1, '2019-01-24 06:17:56', '36.248.163.114', '福建省福州市', 1),
(277, 1, '2019-01-24 06:19:03', '36.248.163.114', '福建省福州市', 1),
(278, 1, '2019-01-24 06:27:39', '36.248.163.114', '福建省福州市', 1),
(279, 1, '2019-01-24 06:58:42', '115.60.128.42', '河南省郑州市', 1),
(280, 1, '2019-01-26 03:03:43', '115.60.132.46', '河南省郑州市', 1),
(281, 1, '2019-01-26 13:09:57', '117.136.73.145', '中国', 1),
(282, 1, '2019-01-26 13:58:38', '222.220.14.41', '云南省西双版纳州景洪市', 1),
(283, 61, '2019-01-26 14:01:28', '222.220.14.41', '云南-西双版纳傣族自治州', 0),
(284, 1, '2019-01-26 15:09:34', '27.153.173.236', '福建省莆田市', 1),
(285, 1, '2019-01-26 15:10:41', '27.153.173.236', '福建省莆田市', 1),
(286, 61, '2019-01-26 15:11:15', '27.153.173.236', '福建-莆田', 0),
(287, 1, '2019-01-27 14:33:20', '222.220.14.41', '云南省西双版纳州景洪市', 1),
(288, 61, '2019-01-27 14:37:42', '222.220.14.41', '云南-西双版纳傣族自治州', 0),
(289, 9, '2019-01-27 14:46:15', '222.220.14.41', '云南-西双版纳傣族自治州', 0),
(290, 61, '2019-01-27 14:46:43', '222.220.14.41', '云南-西双版纳傣族自治州', 0),
(291, 1, '2019-01-28 05:07:27', '123.233.143.29', '山东省济南市', 1),
(292, 1, '2019-01-28 11:16:40', '117.136.73.174', '中国', 1),
(293, 1, '2019-02-13 01:45:11', '36.250.174.174', '福建省', 1),
(294, 1, '2019-02-13 01:48:32', '221.192.179.28', '河北省石家庄市', 1),
(295, 1, '2019-02-13 01:54:42', '36.250.174.174', '福建省', 1),
(296, 1, '2019-10-10 07:26:03', '127.0.0.1', '本机地址', 1),
(297, 1, '2019-10-12 15:27:27', '112.47.36.199', '江苏省', 1),
(298, 62, '2019-10-12 16:14:59', '112.47.36.199', '福建-泉州', 0),
(299, 1, '2019-10-13 01:25:55', '112.47.36.199', '江苏省', 1),
(300, 53, '2019-10-13 12:57:09', '112.47.36.199', '福建-泉州', 0),
(301, 53, '2019-10-13 12:57:13', '112.47.36.199', '福建-泉州', 0),
(302, 62, '2019-10-14 03:42:08', '1.80.112.164', '陕西-西安', 0),
(303, 62, '2019-10-14 03:50:08', '113.118.90.184', '广东-深圳', 0),
(304, 62, '2019-10-14 14:18:14', '113.87.130.200', '广东-深圳', 0),
(305, 62, '2019-10-14 14:19:28', '113.87.130.200', '广东-深圳', 0),
(306, 62, '2019-10-15 13:04:04', '27.38.29.7', '广东-深圳', 0),
(307, 62, '2019-10-15 17:52:39', '39.128.253.152', '云南-昭通', 0),
(308, 62, '2019-10-15 18:02:06', '39.128.253.152', '云南-昭通', 0),
(309, 62, '2019-10-15 18:11:10', '39.128.253.152', '云南-昭通', 0),
(310, 62, '2019-10-16 01:43:21', '223.96.224.230', '山东-菏泽', 0),
(311, 62, '2019-10-16 02:22:46', '223.96.224.230', '山东-菏泽', 0),
(312, 62, '2019-10-16 08:27:48', '113.90.34.121', '广东-深圳', 0),
(313, 1, '2019-10-16 08:30:15', '36.59.248.252', '安徽省', 1),
(314, 1, '2019-10-16 08:30:32', '183.67.16.60', '重庆市', 1),
(315, 1, '2019-10-16 08:31:45', '113.90.34.121', '广东省深圳市', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pay_member`
--

CREATE TABLE `pay_member` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `groupid` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户组',
  `salt` varchar(10) NOT NULL COMMENT '密码随机字符',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '代理ID',
  `agent_cate` int(11) NOT NULL DEFAULT '0' COMMENT '代理级别',
  `balance` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '可用余额',
  `blockedbalance` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '冻结可用余额',
  `email` varchar(100) NOT NULL,
  `activate` varchar(200) NOT NULL,
  `regdatetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `activatedatetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `realname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别',
  `birthday` int(11) NOT NULL DEFAULT '0',
  `sfznumber` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ',
  `address` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `paypassword` varchar(32) DEFAULT NULL COMMENT '支付密码',
  `authorized` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 已认证 0 未认证 2 待审核',
  `apidomain` varchar(500) DEFAULT NULL COMMENT '授权访问域名',
  `apikey` varchar(32) NOT NULL COMMENT 'APIKEY',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态 1激活 0未激活',
  `receiver` varchar(255) DEFAULT NULL COMMENT '台卡显示的收款人信息',
  `unit_paying_number` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间已交易次数',
  `unit_paying_amount` decimal(11,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '单位时间已交易金额',
  `unit_frist_paying_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间已交易的第一笔时间',
  `last_paying_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '当天最后一笔已交易时间',
  `paying_money` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '当天已交易金额',
  `login_ip` varchar(255) NOT NULL DEFAULT ' ' COMMENT '登录IP',
  `last_error_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后登录错误时间',
  `login_error_num` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '错误登录次数',
  `google_auth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启谷歌身份验证登录',
  `df_api` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启代付API',
  `open_charge` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启充值功能',
  `df_domain` text NOT NULL COMMENT '代付域名报备',
  `df_auto_check` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API自动审核',
  `google_secret_key` varchar(255) NOT NULL DEFAULT '' COMMENT '谷歌密钥',
  `df_ip` text NOT NULL COMMENT '代付域名报备IP',
  `session_random` varchar(50) NOT NULL DEFAULT '' COMMENT 'session随机字符串',
  `df_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_member`
--

INSERT INTO `pay_member` (`id`, `username`, `password`, `groupid`, `salt`, `parentid`, `agent_cate`, `balance`, `blockedbalance`, `email`, `activate`, `regdatetime`, `activatedatetime`, `realname`, `sex`, `birthday`, `sfznumber`, `mobile`, `qq`, `address`, `paypassword`, `authorized`, `apidomain`, `apikey`, `status`, `receiver`, `unit_paying_number`, `unit_paying_amount`, `unit_frist_paying_time`, `last_paying_time`, `paying_money`, `login_ip`, `last_error_time`, `login_error_num`, `google_auth`, `df_api`, `open_charge`, `df_domain`, `df_auto_check`, `google_secret_key`, `df_ip`, `session_random`, `df_charge_type`, `last_login_time`) VALUES
(4, '测试代理', '014b5a763c2ffdf960d945c23aa2114d', 7, '4795', 1, 5, '1.0500', '0.0000', '123@qq.com', '0ba9f6747b481338cd23acd442aab54d', 1539491041, 2018, '测试代理', 0, -28800, '123', '123', '123', '123', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'fyih7q2fmzrqrb732dczsnk34ajjgeso', 1, NULL, 0, '0.0000', 0, 0, '0.0000', '', 0, 0, 0, 1, 0, '', 1, '', '', 'HIerD3oPiaY6Z97EEyPIWPBWo1NItHqA', 0, 1541505024),
(5, '测试用户', '5ca4d537da5b5b62fb56c3ecdb5b84d6', 4, '8125', 0, 0, '8503.3300', '9005.7900', '34534@qq.com', 'ca8f925d2a2cd525743813b20226325b', 1539491153, 0, '测试用户', 0, -28800, '234', '13208952500', '2345', '123', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'ud7xh8rc24c6c7jm0l3cxdmcyewi84a2', 1, NULL, 37, '17499.1200', 0, 1571216143, '17499.1200', '', 0, 0, 0, 0, 1, '', 0, '', '', 'ruAnAsHIehxDK0MAJycmMH7ZSrxHomiy', 0, 1547190095),
(6, 'jinhumaofei', '573bec00c824eb61002cd521e328285b', 4, '2797', 0, 0, '70.0000', '0.0000', 'jinhumaofei@qq.com', 'd4f23d3ecbe964b8ddf25ca05ad878e5', 1539789212, 0, '31', 1, -28800, '13', '', '', '654', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '7a2zjqi9y45wdduqlkaoke9unktt175b', 1, NULL, 1, '70.0000', 0, 1544017398, '70.0000', ' ', 0, 0, 0, 0, 1, '', 0, '', '', '7Vi1zNy96QkTLlcnOWEkyN1DrFzIC4oa', 0, 1540116360),
(9, '7788995', '3ce09c6a2bc9892fa84f6b95deef1c04', 5, '4783', 1, 0, '63.5000', '0.0000', '7788995@qq.com', '7858c3e73af27b3532faee8fae0ec109', 1540194637, 0, '7788995', 0, -28800, '7788995', '13208952500', '7788995', '7788995', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '3034ctsu4xz9d1jig5aw87in2jcskmv5', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', 'V3tOZITr2lGkfG2UsbTCZBgneWoWdYbU', 0, 1548600375),
(13, '88554488', '49265558b0eb2c24e7936ae4d80aecd2', 6, '5154', 4, 0, '12.1400', '0.0000', '88554488@qq.com', '226a7fbf71a448f1de0696daac8c7a15', 1540195302, 0, '88554488', 0, -28800, '88554488', '88554488', '88554488', '88554488', 'ea4e9e318183bb3da417c03aa8484f27', 1, NULL, '0hq7yxlbdj8e6gnyw53cnhb88eskfrsd', 1, NULL, 1, '9.9400', 0, 1544245475, '9.9400', ' ', 0, 0, 0, 0, 0, '', 0, '', '', 'pweto162dyIjYTmSGa6DX5UqTco1jN6U', 0, 1546281980),
(33, 'cehsi', '69c3b253acf8d5beb2ff0480493db821', 4, '1685', 1, 4, '0.0000', '0.0000', '3246545@qq.com', '57eaf80a7e78e5be259be1d716d12449', 1543831916, 2018, '2阿萨德', 0, -28800, '3254646', '', '', '阿萨德', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'qzrzjvazz2a7jv3ycrwxh86846m7ypnw', 0, NULL, 0, '0.0000', 0, 0, '0.0000', '', 0, 0, 0, 1, 1, '', 1, '', '', 'oH6IEJd2xISGnaAd3ggXuxT74FToed5l', 0, 1543831946),
(36, '123456', '0b03e37d47c927bd9d4872c51dd63023', 4, '5272', 9, 0, '787.0000', '232.5000', '123456@163.com', 'cd7fc1b2e09418bb30aa0b516347bcfc', 1544014704, 0, 'fef', 1, -28800, '123', '', '', '13', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'rzrm5x2ifu1j93hh44jdv47p0bfcs6zt', 1, NULL, 12, '999.5000', 0, 1544855795, '999.5000', ' ', 0, 0, 0, 0, 1, '', 0, '', '', 'E2qhnrt8oN8J4DLdI9s47Gd6ov7Ighen', 0, 1545539140),
(38, '12345678', '9239f67ec3320b687ba7197025ea9347', 4, '6886', 1, 0, '0.0000', '0.0000', '123456@63.com', '1752b6e03120ba42c4cdc9b284d8cbf0', 1544020880, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '08ec24z4ku5f2hgnyvg9qr85cvqs8aos', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 1, '', 0, '', '', 'hiYoPF2S4zxNgROgaN4Tle4UOjTml2KX', 0, 1544020898),
(39, '123', '0ec679da88e66b2cf96022ce9d045a76', 4, '7574', 9, 0, '100.0000', '28.0000', '123@63.COM', 'ffa267324a4036cb0c4d1c371f738587', 1544021079, 0, '123', 0, -28800, '123', '32132', '', '3213', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '3ecgboxg1rbqbpjjk4dwxehn58k2falq', 1, NULL, 2, '128.0000', 0, 1544855998, '128.0000', ' ', 0, 0, 0, 0, 1, '', 0, '', '', 'I2goA2a331QHFpYxi3GgJg8xUIQMsRqT', 0, 1544230707),
(41, '2121124', '090b004ba942cacd7253e2ddd51d68c4', 4, '2319', 4, 0, '0.0000', '0.0000', '2121124@qq.com', '407f05fbf55bf6b5967d538ed8b72bb3', 1544021764, 0, '2121124', 0, -28800, '2121124', '2121124', '2121124', '2121124', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '2xj48evf490tb9rrif128ebxjqk9z54u', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 1, '', 0, '', '', '1sPlzWj8dmELkiChbHWvbGK3wGErbbGN', 0, 1544044369),
(42, 'kk123123', '51dfd720bff0f55c6a285dd09a766210', 4, '4103', 1, 0, '0.0000', '0.0000', 'kk123123@qq.com', '7200a065edd3d0348252c59e0aa03913', 1544076896, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'jl0gg6k1e0y85kojlire7pcctmbkz5o7', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', 'AdfukHwifchB9774Teo8XwS4BAMi1iQY', 0, 1544076906),
(43, 'ceshi123', 'd11ff457751d6e2f7fdf60c2e4fc13ad', 4, '4800', 1, 0, '0.0000', '0.0000', '231321@qq.com', 'b53ee1e8027a62602cacf0ab745ef3fa', 1544099542, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'vvr0vzufikq340ew314yb2dhimcnva9w', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '7VjM6V5vIyic20B2wJw5CaxfquOBXGTk', 0, 1544551024),
(44, 'hadhu', '6b22a376cb4c1e447b94f541c62e6a21', 4, '1108', 1, 0, '0.0000', '0.0000', 'uw2yue2@163.com', 'cac2bf2e807e125289be43fa91de6e7c', 1544193459, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'bmql8y1d279ohjtlbxztv58kztpy7f36', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(45, 'hao123', '5f2987d3ccea264bc6fa30861034f382', 4, '6193', 1, 0, '0.0000', '0.0000', '123671@qq.com', 'b96e619cbb0c9f4ae17a50cd275f1414', 1544193474, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'lkcv7qw9xmukg817ix9trwhszapa5dbn', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', 'RLmgv0ZMOIxDtCTDgQigHxDYk28zUiGF', 0, 1544193481),
(46, '15992371333', '78ad239e9d35cb3d55145cc60f0a47f6', 4, '5055', 1, 0, '0.0000', '0.0000', '2489938389@qq.com', '31f2ad6dd731bb5ba4191bf45eee3164', 1544255945, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, '2nx7ru2msg9hdlh249os088u07388evz', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', 'Z8xi6QMuRZzyH1Nmki9oYGIyScnAnZlO', 0, 1544256011),
(47, 'qwe123', '2c72232cf701529dd0c9c765a3c9f737', 4, '3909', 1, 0, '0.0000', '0.0000', '66699@qq.com', 'ba6258530af0ba39dc1476b1a49d0f67', 1544551011, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'qygn2fr18qyfvzr9skvlg741k6vkzmg2', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(48, 'zyw', '38e1932913576ad8e0ace0df86af3853', 4, '2523', 1, 0, '0.9050', '0.0000', '806654786@qq.com', 'c3a593160d89d26af840d3f695b7bdb4', 1544629874, 2018, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '526wkb08m2owcv9ktjkapqfkujkn6pk2', 0, NULL, 2, '0.9050', 0, 1544637649, '0.9050', ' ', 0, 0, 0, 0, 1, '', 0, '', '', 'hAvxOA35jTKBHBgYApJ2nrwetrurMAgR', 0, 1544629916),
(49, '920788887', '7a089fa44088f06b3a40d7d088c052bd', 4, '6063', 1, 0, '0.0000', '0.0000', '920788887@qq.com', '9a22868e2e022f499e85e3ca4f677c77', 1545399518, 2018, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'skcb896c4xgf08c3qh4a25u5jlgir2cr', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', 'C8sdws4S9QnDDwUYKGmGD9jgq5Kcz2Hv', 0, 1545399544),
(50, '2058162717', 'c88e7a56f66b3ad7132fd39baf1f6faf', 4, '8467', 1, 0, '0.0000', '0.0000', '2058162717@qq.com', '7126c6e1998ba0a0c2eb8df7e0566eaf', 1545993352, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'pl4til18bjwvmzkcaib93pgtscrhlkpm', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(51, '2523108612', 'ef628262b364388dccd4243ba939c8ae', 4, '6338', 1, 0, '0.0000', '0.0000', '2523108612@qq.com', '5a5d0415a7c109afaa76875c6cc5eef5', 1545993606, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'aqhwz764li7xbptb3evj2ac46tge8k6g', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(52, '519487585', '051ff42d1bce10932f7e9f9414cc4341', 4, '8754', 1, 0, '0.0000', '0.0000', '519487585@qq.com', '549f36711f21d74b0a47fbaca98b7dd6', 1546385194, 2019, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, '15j9v9qmmp5icy25zjzrui367h7975hh', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '2EgCFsmPHzNEcmiWbTlKrtFnm6LRftAz', 0, 1546385227),
(53, 'jody123', '88b5a0a3936b244750b3413ce49d9505', 7, '5785', 1, 7, '0.0000', '0.0000', '123445@qq.com', 'ebb1eeb7787d95cdc1ce1f9308ae9ee9', 1546421641, 2019, '张三', 1, -28800, '1', '13779911222', '123445', '北京', 'd0970714757783e6cf17b26fb8e2298f', 1, NULL, 'pbpk38vvkpwdnzcv3i19qq962u4u812i', 1, NULL, 0, '0.0000', 0, 0, '0.0000', '', 0, 0, 0, 0, 0, '', 0, '', '', 'XLzVn4eFbhyBuJufAMnPVjFEXqZvEYIm', 0, 1570971433),
(54, 'df16', '6f0244fef2c29c5fde4f3f48f225a199', 4, '8152', 1, 0, '0.0000', '0.0000', '37474333@qq.com', 'f5e6a9e75e74191ad85ed11ef1764c2c', 1546428278, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'bajoftzugz5fhb29gk75n7zp0luvrkml', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(55, 'jody111', 'b1d6911a1aec49764ceacacfffba99ae', 7, '8061', 1, 7, '9800.0000', '0.0000', '111', 'a24a3bc0cad4ca16df43b1b8bde9ff5d', 1546671655, 2019, '111', 0, -28800, '111', '111', '111', '111', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'cpp0trcd76aox7gi1miw94c63be8la1p', 1, NULL, 0, '0.0000', 0, 0, '0.0000', '', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(56, 'jody222', '1a8c6dc5ab5eb303996a1a300e924627', 4, '8799', 53, 0, '0.0000', '0.0000', '222', '062e95078d79da55e722946ba186c3dd', 1546671689, 0, '222', 0, -28800, '222', '222', '222', '222', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'kjaqvjgoy5x8krzh49rr1d3yytyyc6g3', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(57, 'jody333', 'a68388816c860d418c38ece0a3e3ab53', 4, '7541', 55, 0, '0.0000', '0.0000', '333', '478e085239de6b480d2bfa48ff0b16c7', 1546672179, 0, '333', 0, -28800, '333', '333', '333', '333', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'of9eh4aztxxcogd6il6bnua3t557za21', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(58, 'jody444', '6f002a17605a388f9519971ccefbde38', 4, '7737', 55, 0, '0.0000', '0.0000', '4444', '134dd9f0fa30cb9a27188e6e6770fd5e', 1546672350, 0, '4444', 0, -28800, '4444', '4444', '4444', '4444', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '7bw3ip7cl0snspzas5fa3gm5xz8mnlib', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(59, 'jody555', '2330b185043f758723abdad13e39c87c', 6, '1428', 55, 6, '0.0000', '0.0000', '4444444', '6d7bf1110975c56196d6bddaf959c528', 1546672414, 2019, '444', 0, -28800, '4444', '4444', '4444', '4444', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'pirias3jhxbuhcve976mxfh1ix3tqnag', 1, NULL, 0, '0.0000', 0, 0, '0.0000', '', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(60, 'jody666', 'ab50b5d9f7c460e1e01d18446b51b50b', 4, '8825', 55, 0, '0.0000', '0.0000', '6666', 'ccec08128ee2e29d5282a6b8f6af115c', 1546672527, 0, '666', 0, 1546617600, '666', '66666', '6666', '6666', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'lfdot6r7zw14q4fd1379x309j7lyoa48', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 1, '', 0, '', '', '', 0, 0),
(61, 'jody777', 'c2047451324d1d16f357bd20f7f7ebfb', 6, '1040', 55, 6, '0.0000', '0.0000', '77777', '0db0b00af9b8aa80e1201d5140966878', 1546672599, 2019, '777', 0, -28800, '777', '77777', '7777', '77777', '55587a910882016321201e6ebbc9f595', 1, NULL, 'fpzybcocqoqod4wq8299ac905tat99gn', 1, NULL, 0, '0.0000', 0, 0, '0.0000', '', 0, 0, 0, 1, 0, '', 1, '', '', 'KpMhLMXy4ccIf4WUdhlOei9EIf0s15MG', 0, 1548600403),
(62, 'abc', '22340e3d667aac6e4faf2c1a2e204d1c', 4, '2706', 1, 4, '90.0000', '0.0000', 'abc@qq.com', '54079f7c82c431696a841e6d6810e6b9', 1546843466, 2019, 'abc', 0, -28800, '341400198510064221', '', '', 'abc', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 'x5hdh7dmpv8g5u4hatzwyg4q4kilnku2', 1, NULL, 0, '0.0000', 0, 0, '0.0000', '', 0, 0, 0, 1, 1, '', 1, '', '', 'TYCcw3GtAv6Lb2z98xaml4RQWJDUgo01', 0, 1571214468),
(63, '1111111', '79b9c61af074625312047e5a73de051b', 4, '2437', 1, 0, '0.0000', '0.0000', '1111111@qq.com', 'f4192706205cbd508b3e02ef9346c2b8', 1546943649, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'g071j3gaaypo460qha3pkpp4ih5v71wm', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(64, 'e520131', 'fcd00001956ae98246292ccc95991e82', 4, '7978', 1, 0, '0.0000', '0.0000', '2647571611@qq.com', 'f11b41bc8d504b24f6f384f88e3e68fb', 1547332071, 2019, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'qvdhajkgt7hg3ge22k5mnnbid8cbv2at', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(65, 'we1111', '7b64afc6c526917db4ac80525bc5a984', 4, '9834', 1, 0, '0.0000', '0.0000', '2258797286@qq.com', '2a9ba2d2c060a1286e9f8438272ef300', 1547342388, 2019, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'xpb0pq11ud83089oxck68kkmvfwzjrw6', 1, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', 'IejuJJhug0haSHZVMTR8cr0F1OoimvE3', 0, 1547343242),
(66, 'we3333', '9dc538839983e4da144f220cd6616e4e', 4, '8418', 1, 0, '0.0000', '0.0000', '2258797287@qq.com', '34117df0729b21a93e83b349a1c089b7', 1547342533, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'm2r4ol3el7s1mzzfb3jy3d62w3k1p96p', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(67, 'mingmo', '5f1a3e956f0e2d9b119c68f321c2602d', 4, '4730', 1, 0, '0.0000', '0.0000', '27455880@qq.com', '06c432ccb1b965a87b5fb8c4b9d76b18', 1570970797, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'sxm7g1l2sw11gmxk6o1ck2p3hq2a7kpd', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(68, '1016127192', 'b319e76f480a458a4aab2586193a8689', 4, '8946', 1, 0, '0.0000', '0.0000', '1016127192@qq.com', '3d7e52c1edbe3c75d2264e57e7e5342d', 1571163012, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, '6e5n9w94hcptcdudii00s60vtj7zkn7n', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0),
(69, '95774060', '0c6377f1081dfbc02f254e158c0e29cf', 4, '6749', 1, 0, '0.0000', '0.0000', '95774060@qq.com', '2adce3a40948b9fe2374b8982da61872', 1571163041, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 'jsav6b1stkjei7ah2lvgo8x4tl6q9dqf', 0, NULL, 0, '0.0000', 0, 0, '0.0000', ' ', 0, 0, 0, 0, 0, '', 0, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_member_agent_cate`
--

CREATE TABLE `pay_member_agent_cate` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(50) DEFAULT NULL COMMENT '等级名',
  `desc` varchar(255) DEFAULT NULL COMMENT '等级描述',
  `ctime` int(11) DEFAULT '0' COMMENT '添加时间',
  `sort` int(11) DEFAULT '99' COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_member_agent_cate`
--

INSERT INTO `pay_member_agent_cate` (`id`, `cate_name`, `desc`, `ctime`, `sort`) VALUES
(4, '普通商户', '', 1522638122, 99),
(5, '普通代理商户', '', 1522638122, 99),
(6, '中级代理商户', '', 1522638122, 99),
(7, '高级代理商户', '', 1522638122, 99);

-- --------------------------------------------------------

--
-- 表的结构 `pay_moneychange`
--

CREATE TABLE `pay_moneychange` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户编号',
  `ymoney` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '原金额',
  `money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '变动金额',
  `gmoney` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '变动后金额',
  `datetime` datetime DEFAULT NULL COMMENT '修改时间',
  `transid` varchar(50) DEFAULT NULL COMMENT '交易流水号',
  `tongdao` smallint(6) UNSIGNED DEFAULT '0' COMMENT '支付通道ID',
  `lx` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '类型',
  `tcuserid` int(11) DEFAULT NULL,
  `tcdengji` int(11) DEFAULT NULL,
  `orderid` varchar(50) DEFAULT NULL COMMENT '订单号',
  `contentstr` varchar(255) DEFAULT NULL COMMENT '备注',
  `t` int(4) NOT NULL DEFAULT '0' COMMENT '结算方式'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_moneychange`
--

INSERT INTO `pay_moneychange` (`id`, `userid`, `ymoney`, `money`, `gmoney`, `datetime`, `transid`, `tongdao`, `lx`, `tcuserid`, `tcdengji`, `orderid`, `contentstr`, `t`) VALUES
(53, 36, '688.0000', '94.0000', '782.0000', '2018-12-06 00:08:12', '20181206000759102971', 902, 1, NULL, NULL, 'C20181206000759177823', 'C20181206000759177823订单充值,结算方式：t+0', 0),
(54, 9, '46.0000', '5.0000', '51.0000', '2018-12-06 00:08:12', '20181206000759102971', 902, 9, 36, 1, 'tx20181206000812', NULL, 0),
(55, 5, '633.0600', '0.0100', '633.0700', '2018-12-07 14:04:58', '20181206225811515152', 903, 1, NULL, NULL, 'E2018120622574293953', 'E2018120622574293953订单充值,结算方式：t+0', 0),
(56, 5, '633.0700', '0.0100', '633.0800', '2018-12-08 02:36:49', '20181207141009495049', 902, 1, NULL, NULL, 'E2018120714100796423', 'E2018120714100796423订单充值,结算方式：t+0', 0),
(57, 5, '633.0800', '0.0100', '633.0900', '2018-12-08 13:03:12', '20181207140950101101', 911, 1, NULL, NULL, 'E2018120714094950603', 'E2018120714094950603订单充值,结算方式：t+0', 0),
(58, 5, '633.0900', '0.0100', '633.1000', '2018-12-08 13:03:19', '20181206054300529851', 903, 1, NULL, NULL, 'E2018120605425993073', 'E2018120605425993073订单充值,结算方式：t+0', 0),
(59, 5, '633.1000', '0.0100', '633.1100', '2018-12-08 13:03:35', '20181207140855555054', 907, 1, NULL, NULL, 'E2018120714085375838', 'E2018120714085375838订单充值,结算方式：t+0', 0),
(60, 5, '633.1100', '0.0100', '633.1200', '2018-12-08 13:04:26', '20181207140644529854', 903, 1, NULL, NULL, 'E2018120714064144897', 'E2018120714064144897订单充值,结算方式：t+0', 0),
(61, 13, '2.2000', '9.9400', '12.1400', '2018-12-08 13:04:35', '20181206211331984950', 902, 1, NULL, NULL, 'C20181206211330309961', 'C20181206211330309961订单充值,结算方式：t+0', 0),
(62, 4, '1.0000', '0.0500', '1.0500', '2018-12-08 13:04:35', '20181206211331984950', 902, 9, 13, 1, 'tx20181208130435', NULL, 0),
(63, 48, '0.0000', '0.0050', '0.0000', '2018-12-13 01:55:00', '20181213015314975699', 902, 1, NULL, NULL, 'C20181213015314481920', 'C20181213015314481920订单充值,结算方式：t+0', 0),
(64, 48, '0.0050', '0.9000', '0.9000', '2018-12-13 02:00:49', '20181213020030101545', 902, 1, NULL, NULL, 'C20181213020030500293', 'C20181213020030500293订单充值,结算方式：t+0', 0),
(65, 5, '633.1200', '0.0100', '633.1300', '2018-12-13 05:39:01', '20181213032142545052', 904, 1, NULL, NULL, 'E2018121303213773663', 'E2018121303213773663订单充值,结算方式：t+0', 0),
(66, 36, '782.0000', '5.0000', '787.0000', '2018-12-14 23:57:28', '20181214235705495352', 903, 1, NULL, NULL, '2018121423560320603', '2018121423560320603订单充值,结算方式：t+0', 0),
(67, 36, '0.0000', '93.0000', '93.0000', '2018-12-15 14:33:08', '20181215143252524952', 902, 1, NULL, NULL, 'C20181215143251736244', 'C20181215143251736244订单充值,结算方式：t+1', 1),
(68, 9, '51.0000', '5.0000', '56.0000', '2018-12-15 14:33:08', '20181215143252524952', 902, 9, 36, 1, 'tx20181215143308', NULL, 0),
(69, 36, '93.0000', '93.0000', '186.0000', '2018-12-15 14:36:27', '20181215143611985151', 902, 1, NULL, NULL, 'C20181215143611302783', 'C20181215143611302783订单充值,结算方式：t+1', 1),
(70, 9, '56.0000', '5.0000', '61.0000', '2018-12-15 14:36:27', '20181215143611985151', 902, 9, 36, 1, 'tx20181215143627', NULL, 0),
(71, 36, '186.0000', '46.5000', '232.5000', '2018-12-15 14:36:35', '20181215143549534899', 902, 1, NULL, NULL, 'C20181215143548136082', 'C20181215143548136082订单充值,结算方式：t+1', 1),
(72, 9, '61.0000', '2.5000', '63.5000', '2018-12-15 14:36:35', '20181215143549534899', 902, 9, 36, 1, 'tx20181215143635', NULL, 0),
(73, 39, '0.0000', '28.0000', '28.0000', '2018-12-15 14:39:58', '20181215143921575610', 902, 1, NULL, NULL, 'C20181215143921647636', 'C20181215143921647636订单充值,结算方式：t+1', 1),
(74, 5, '0.0000', '1.0000', '1.0000', '2018-12-26 15:59:28', '20181226153939981005', 903, 1, NULL, NULL, 'E2018122615393396831', 'E2018122615393396831订单充值,结算方式：t+1', 1),
(75, 5, '1.0000', '1.0000', '2.0000', '2018-12-26 16:11:02', '20181226161033575410', 903, 1, NULL, NULL, 'E2018122616102955949', 'E2018122616102955949订单充值,结算方式：t+1', 1),
(76, 5, '2.0000', '1.0000', '3.0000', '2018-12-26 16:15:39', '20181226161522979756', 903, 1, NULL, NULL, 'E2018122616151981712', 'E2018122616151981712订单充值,结算方式：t+1', 1),
(77, 5, '3.0000', '1.0000', '4.0000', '2018-12-26 18:37:15', '20181226183612995598', 903, 1, NULL, NULL, 'E2018122618361111735', 'E2018122618361111735订单充值,结算方式：t+1', 1),
(78, 55, '0.0000', '10000.0000', '10000.0000', '2019-01-05 15:21:12', '', 0, 3, NULL, NULL, '', '测试【冲正周期:2019-01-05】', 0),
(79, 55, '10000.0000', '100.0000', '9900.0000', '2019-01-05 15:21:41', 'I0105729017028321', 0, 10, NULL, NULL, 'I0105729017028321', '2019-01-05 15:21:41委托提现操作', 0),
(80, 55, '9900.0000', '100.0000', '9800.0000', '2019-01-05 15:23:14', 'I0105729944505548', 0, 6, NULL, NULL, 'I0105729944505548', '2019-01-05 15:23:14提现操作', 0),
(81, 5, '4.0000', '8000.0000', '8004.0000', '2019-01-05 20:54:26', '20190105205346975551', 903, 1, NULL, NULL, 'E2019010520525717425', 'E2019010520525717425订单充值,结算方式：t+1', 1),
(82, 5, '633.1300', '79.2000', '712.3300', '2019-01-05 20:58:20', '20190105205737495056', 903, 1, NULL, NULL, 'E2019010520573353289', 'E2019010520573353289订单充值,结算方式：t+0', 0),
(83, 5, '712.3300', '79.2000', '791.5300', '2019-01-06 04:05:26', '20190105214235989999', 903, 1, NULL, NULL, 'E2019010521423219709', 'E2019010521423219709订单充值,结算方式：t+0', 0),
(84, 5, '8004.0000', '0.8000', '8004.8000', '2019-01-06 04:05:51', '20190105195044521011', 903, 1, NULL, NULL, 'E2019010519503767174', 'E2019010519503767174订单充值,结算方式：t+1', 1),
(85, 5, '692.5300', '792.0000', '1484.5300', '2019-01-08 14:21:40', '20190108142116991015', 903, 1, NULL, NULL, 'E2019010814211118603', 'E2019010814211118603订单充值,结算方式：t+0', 0),
(86, 5, '1484.5300', '7920.0000', '9404.5300', '2019-01-08 14:27:00', '20190108142645539797', 903, 1, NULL, NULL, 'E2019010814264123449', 'E2019010814264123449订单充值,结算方式：t+0', 0),
(87, 5, '9404.5300', '1000.0000', '10404.5300', '2019-01-10 17:01:00', '2', 0, 7, NULL, NULL, NULL, '测试自动冻结', 0),
(88, 62, '0.0000', '111.0000', '111.0000', '2019-01-12 21:56:33', '', 0, 3, NULL, NULL, '', '00【冲正周期:2019-01-12】', 0),
(89, 62, '111.0000', '11.0000', '100.0000', '2019-01-12 21:58:11', 'I0112014912939416', 0, 6, NULL, NULL, 'I0112014912939416', '2019-01-12 21:58:11提现操作', 0),
(90, 5, '8503.5300', '503.0000', '8000.5300', '2019-01-13 20:58:59', 'I0113843393101372', 0, 6, NULL, NULL, 'I0113843393101372', '2019-01-13 20:58:59提现操作', 0),
(91, 5, '8000.5300', '503.0000', '8503.5300', '2019-01-13 21:01:35', '4', 0, 11, NULL, NULL, '4', '结算驳回', 0),
(92, 62, '100.0000', '10.0000', '90.0000', '2019-10-16 02:19:55', 'I1016635959685928', 0, 10, NULL, NULL, 'I1016635959685928', '2019-10-16 02:19:55委托提现操作', 0),
(93, 5, '8503.5300', '0.7900', '8504.3200', '2019-10-16 16:55:43', '20191016165317100974', 903, 1, NULL, NULL, 'E2019101616531539913', 'E2019101616531539913订单充值,结算方式：t+0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_order`
--

CREATE TABLE `pay_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `pay_memberid` varchar(100) NOT NULL COMMENT '商户编号',
  `pay_orderid` varchar(100) NOT NULL COMMENT '系统订单号',
  `pay_amount` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `pay_poundage` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `pay_actualamount` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `pay_applydate` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单创建日期',
  `pay_successdate` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单支付成功时间',
  `pay_bankcode` varchar(100) DEFAULT NULL COMMENT '银行编码',
  `pay_notifyurl` varchar(500) NOT NULL COMMENT '商家异步通知地址',
  `pay_callbackurl` varchar(500) NOT NULL COMMENT '商家页面通知地址',
  `pay_bankname` varchar(300) DEFAULT NULL,
  `pay_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单状态: 0 未支付 1 已支付未返回 2 已支付已返回',
  `pay_productname` varchar(300) DEFAULT NULL COMMENT '商品名称',
  `pay_tongdao` varchar(50) DEFAULT NULL,
  `pay_zh_tongdao` varchar(50) DEFAULT NULL,
  `pay_tjurl` varchar(1000) DEFAULT NULL,
  `out_trade_id` varchar(50) NOT NULL COMMENT '商户订单号',
  `num` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '已补发次数',
  `memberid` varchar(100) DEFAULT NULL COMMENT '支付渠道商家号',
  `key` varchar(500) DEFAULT NULL COMMENT '支付渠道密钥',
  `account` varchar(100) DEFAULT NULL COMMENT '渠道账号',
  `isdel` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '伪删除订单 1 删除 0 未删',
  `ddlx` int(11) DEFAULT '0',
  `pay_ytongdao` varchar(50) DEFAULT NULL,
  `pay_yzh_tongdao` varchar(50) DEFAULT NULL,
  `xx` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `attach` text CHARACTER SET utf8mb4 COMMENT '商家附加字段,原样返回',
  `pay_channel_account` varchar(255) DEFAULT NULL COMMENT '通道账户',
  `cost` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '成本',
  `cost_rate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '成本费率',
  `account_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '子账号id',
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '渠道id',
  `t` tinyint(2) NOT NULL DEFAULT '1' COMMENT '结算周期（计算费率）',
  `last_reissue_time` int(11) NOT NULL DEFAULT '11' COMMENT '最后补发时间',
  `lock_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_order`
--

INSERT INTO `pay_order` (`id`, `pay_memberid`, `pay_orderid`, `pay_amount`, `pay_poundage`, `pay_actualamount`, `pay_applydate`, `pay_successdate`, `pay_bankcode`, `pay_notifyurl`, `pay_callbackurl`, `pay_bankname`, `pay_status`, `pay_productname`, `pay_tongdao`, `pay_zh_tongdao`, `pay_tjurl`, `out_trade_id`, `num`, `memberid`, `key`, `account`, `isdel`, `ddlx`, `pay_ytongdao`, `pay_yzh_tongdao`, `xx`, `attach`, `pay_channel_account`, `cost`, `cost_rate`, `account_id`, `channel_id`, `t`, `last_reissue_time`, `lock_status`, `status`) VALUES
(417, '10036', '20181217000206101485', '1.0000', '0.0700', '0.9300', 1544976126, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '个人码微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000205289665', 0, '181101125', '', '', 0, 1, 'WxSm', '支付宝官方扫码', 0, '', '易支付微信扫码', '0.0200', '0.0200', 60, 217, 1, 11, 0, 0),
(416, '10038', '20181216162024565299', '1.0000', '0.0030', '0.9970', 1544948424, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181216162024761277', 0, '1317', '38bcbbdf45d4nddf5n4d5', '', 0, 1, 'Wjalipay', '万家支付宝扫码', 0, '', '万家支付宝扫码', '0.0100', '0.0120', 64, 225, 1, 11, 0, 0),
(415, '10005', '20181216071044525548', '0.0100', '0.0000', '0.0100', 1544915444, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'WftAliSm', '威富通支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121607104235823', 0, '101520000465', '58bb7db599afc86ea7f7b262c32ff42f', '', 0, 0, 'WftAliSm', '威富通支付（支付宝扫码）', 0, '1234|456', '兴业银行支付宝', '0.0000', '0.0000', 75, 235, 1, 11, 0, 0),
(413, '10005', '20181215152542549757', '0.0100', '0.0000', '0.0100', 1544858742, 0, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 0, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018121515254135374', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 1, 11, 0, 0),
(414, '10005', '20181216070550101991', '0.0100', '0.0000', '0.0100', 1544915150, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121607054866774', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 1, 11, 0, 0),
(411, '10039', '20181215143921575610', '70.0000', '42.0000', '28.0000', 1544855961, 1544855998, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181215143921647636', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.4200', '0.0060', 69, 229, 1, 11, 0, 0),
(412, '10005', '20181215152522505752', '0.0100', '0.0000', '0.0100', 1544858722, 0, '911', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '快捷支付', 0, '测试商品', 'YibaoKj', '快捷支付PC', 'https://www.zhkpay.com/demo/index1.php', 'E2018121515252011932', 0, '', '', '', 0, 0, 'YibaoKj', '易宝-银联快捷', 0, '1234|456', '快捷支付PC', '0.0000', '0.0400', 62, 223, 1, 11, 0, 0),
(409, '10036', '20181215143611985151', '100.0000', '7.0000', '93.0000', 1544855771, 1544855787, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181215143611302783', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.2000', '0.0020', 68, 228, 1, 11, 0, 0),
(410, '10036', '20181215143811514851', '70.0000', '4.9000', '65.1000', 1544855891, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181215143810162076', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1400', '0.0020', 74, 228, 1, 11, 0, 0),
(408, '10036', '20181215143549534899', '50.0000', '3.5000', '46.5000', 1544855749, 1544855795, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181215143548136082', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0020', 74, 228, 1, 11, 0, 0),
(406, '10036', '20181214235705495352', '5.0000', '0.0000', '5.0000', 1544803025, 1544803048, '903', 'http://pay.sp2018.top:81/juhe_zfb/server.php', 'http://pay.sp2018.top:81/juhe_zfb/page.php', '支付宝扫码', 1, '团购商品', 'Rzfaliscan', '睿支付支付宝扫码', 'http://pay.sp2018.top:81/pay/juhe_zfb/send.php?orderid=2018121423560320603&price=5.00&bankcode=alipay&remark=', '2018121423560320603', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(407, '10036', '20181215143252524952', '100.0000', '7.0000', '93.0000', 1544855572, 1544855588, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181215143251736244', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.2000', '0.0020', 68, 228, 1, 11, 0, 0),
(404, '10036', '20181214235358544855', '1.0000', '0.0600', '0.9400', 1544802838, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181214235357336438', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(405, '10036', '20181214235445535799', '10.0000', '0.6000', '9.4000', 1544802885, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181214235445250130', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0100', '0.0010', 68, 228, 0, 11, 0, 0),
(402, '10036', '20181214235230101524', '1.0000', '0.0600', '0.9400', 1544802750, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181214235229187028', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(403, '10036', '20181214235243985054', '1.0000', '0.0600', '0.9400', 1544802763, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181214235241357234', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(399, '10005', '20181213225606545149', '0.0100', '0.0000', '0.0100', 1544712966, 0, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 0, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018121322560356433', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 0, 11, 0, 0),
(400, '10005', '20181214204907515554', '0.0100', '0.0000', '0.0100', 1544791747, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121420452085328', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 0, 11, 0, 0),
(401, '10005', '20181214235110101102', '0.0100', '0.0000', '0.0100', 1544802670, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121423510676612', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 0, 11, 0, 0),
(397, '10005', '20181213222034505199', '0.0100', '0.0000', '0.0100', 1544710834, 0, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 0, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018121322203273440', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 0, 11, 0, 0),
(398, '10005', '20181213225548521025', '0.0100', '0.0000', '0.0100', 1544712948, 0, '911', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '快捷支付', 0, '测试商品', 'YibaoKj', '快捷支付PC', 'https://www.zhkpay.com/demo/index1.php', 'E2018121322554312961', 0, '', '', '', 0, 0, 'YibaoKj', '易宝-银联快捷', 0, '1234|456', '快捷支付PC', '0.0000', '0.0200', 62, 223, 0, 11, 0, 0),
(395, '10005', '20181213032142545052', '0.0100', '0.0000', '0.0100', 1544642502, 1544650741, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 2, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121303213773663', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(396, '10005', '20181213222009575657', '0.0100', '0.0000', '0.0100', 1544710809, 0, '911', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '快捷支付', 0, '测试商品', 'YibaoKj', '快捷支付PC', 'https://www.zhkpay.com/demo/index1.php', 'E2018121322200746860', 0, '', '', '', 0, 0, 'YibaoKj', '易宝-银联快捷', 0, '1234|456', '快捷支付PC', '0.0000', '0.0200', 62, 223, 0, 11, 0, 0),
(392, '10048', '20181213031546504897', '1.0000', '0.5000', '0.5000', 1544642146, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213031545179065', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(393, '10048', '20181213031724524851', '1.0000', '0.5000', '0.5000', 1544642244, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213031723309447', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(394, '10005', '20181213031809491025', '0.0100', '0.0000', '0.0100', 1544642289, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121303180878152', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(391, '10048', '20181213031516525054', '1.0000', '0.5000', '0.5000', 1544642116, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213031515656917', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(390, '10048', '20181213030849491005', '1.0000', '0.5000', '0.5000', 1544641729, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030849472390', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(389, '10048', '20181213030722979899', '1.0000', '0.5000', '0.5000', 1544641642, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030722134536', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(388, '10048', '20181213030646545299', '1.0000', '0.5000', '0.5000', 1544641606, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030646783445', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(387, '10048', '20181213030547985052', '1.0000', '0.5000', '0.5000', 1544641547, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030546275365', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(386, '10048', '20181213030456565157', '1.0000', '0.5000', '0.5000', 1544641496, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030456770605', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(385, '10048', '20181213030346509756', '1.0000', '0.0300', '0.9700', 1544641426, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '个人码微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030346948096', 0, '181101125', '', '', 0, 1, 'WxSm', '支付宝官方扫码', 0, '', '易支付微信扫码', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(384, '10048', '20181213030339985498', '1.0000', '0.0300', '0.9700', 1544641419, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '个人码微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030339828271', 0, '181101125', '', '', 0, 1, 'WxSm', '支付宝官方扫码', 0, '', '易支付微信扫码', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(383, '10048', '20181213030318545349', '1.0000', '0.5000', '0.5000', 1544641398, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030318512782', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(382, '10048', '20181213030228525499', '1.0000', '0.5000', '0.5000', 1544641348, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030228926371', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(381, '10048', '20181213030158541025', '1.0000', '0.5000', '0.5000', 1544641318, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030158950085', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(380, '10048', '20181213030122505152', '1.0000', '0.5000', '0.5000', 1544641282, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030122253323', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(379, '10048', '20181213030038544810', '1.0000', '0.5000', '0.5000', 1544641238, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213030037956391', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(378, '10048', '20181213025803985053', '1.0000', '0.5000', '0.5000', 1544641083, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213025802124516', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(377, '10048', '20181213024318544856', '1.0000', '0.5000', '0.5000', 1544640198, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213024317736162', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(376, '10005', '20181213024159551005', '0.0100', '0.0000', '0.0100', 1544640119, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302415819351', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(375, '10005', '20181213024153494854', '0.0100', '0.0000', '0.0100', 1544640113, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302415119988', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(374, '10005', '20181213024116999810', '0.0100', '0.0000', '0.0100', 1544640076, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Alipage', '官方支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302410968551', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Alipage', '支付宝官方扫码', 0, '1234|456', '支付宝扫码', '0.0000', '0.0000', 59, 215, 0, 11, 0, 0),
(373, '10005', '20181213024100994854', '0.0100', '0.0000', '0.0100', 1544640060, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'paysapi支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302405813829', 0, '123', '123456', '', 0, 0, 'Jmalipay', 'paysapi支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(372, '10005', '20181213024055554856', '0.0100', '0.0000', '0.0100', 1544640055, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Alipage', '官方支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302405340824', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Alipage', '支付宝官方扫码', 0, '1234|456', '支付宝扫码', '0.0000', '0.0000', 59, 215, 0, 11, 0, 0),
(371, '10005', '20181213024048481009', '0.0100', '0.0000', '0.0100', 1544640048, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Alipage', '官方支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302404723760', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Alipage', '支付宝官方扫码', 0, '1234|456', '支付宝扫码', '0.0000', '0.0000', 59, 215, 0, 11, 0, 0),
(370, '10005', '20181213023922974855', '0.0100', '0.0000', '0.0100', 1544639962, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302392071071', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(369, '10005', '20181213023917535552', '0.0100', '0.0000', '0.0100', 1544639957, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302391591848', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(368, '10005', '20181213023830545498', '0.0100', '0.0000', '0.0100', 1544639910, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302382888142', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(367, '10005', '20181213022938505710', '0.0100', '0.0000', '0.0100', 1544639378, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302291976294', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(366, '10005', '20181213022403515449', '0.0100', '0.0000', '0.0100', 1544639043, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302240149911', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 0, 11, 0, 0),
(365, '10005', '20181213022312484950', '0.0100', '0.0000', '0.0100', 1544638992, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121302230424584', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(364, '10048', '20181213022029100989', '1.0000', '0.5000', '0.5000', 1544638829, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213022029117409', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(363, '10048', '20181213022014101535', '1.0000', '0.5000', '0.5000', 1544638814, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213022014836251', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(362, '10048', '20181213021953575597', '1.0000', '0.5000', '0.5000', 1544638793, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213021953258133', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(361, '10048', '20181213021910101101', '1.0000', '0.5000', '0.5000', 1544638750, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213021910838923', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(360, '10048', '20181213021304485110', '1.0000', '0.5000', '0.5000', 1544638384, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '个人微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213021304774211', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(359, '10048', '20181213021106971001', '1.0000', '0.5000', '0.5000', 1544638266, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213021106715285', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(357, '10048', '20181213020927554851', '1.0000', '0.1000', '0.9000', 1544638167, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020926932959', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0000', '0.0010', 68, 228, 0, 11, 0, 0),
(358, '10048', '20181213021059515355', '1.0000', '0.5000', '0.5000', 1544638259, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213021059564445', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(356, '10048', '20181213020858979810', '1.0000', '0.5000', '0.5000', 1544638138, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020858288445', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(355, '10048', '20181213020852524952', '1.0000', '0.5000', '0.5000', 1544638132, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020851712917', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(354, '10048', '20181213020749531009', '1.0000', '0.5000', '0.5000', 1544638069, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020749518831', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(353, '10048', '20181213020744484955', '1.0000', '0.5000', '0.5000', 1544638064, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020743439200', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(352, '10048', '20181213020640485353', '1.0000', '0.5000', '0.5000', 1544638000, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020640233142', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(351, '10048', '20181213020633575110', '1.0000', '0.1000', '0.9000', 1544637993, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020633700412', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0000', '0.0010', 68, 228, 0, 11, 0, 0),
(350, '10048', '20181213020555519956', '1.0000', '0.5000', '0.5000', 1544637955, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020555496824', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(349, '10048', '20181213020546979851', '1.0000', '0.5000', '0.5000', 1544637946, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020546954150', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(347, '10048', '20181213020320564998', '1.0000', '0.5000', '0.5000', 1544637800, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020319583355', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(348, '10048', '20181213020539511009', '1.0000', '0.5000', '0.5000', 1544637939, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020539717110', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(345, '10048', '20181213020234975055', '1.0000', '0.5000', '0.5000', 1544637754, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020234214155', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(346, '10048', '20181213020312484855', '1.0000', '0.5000', '0.5000', 1544637792, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020311855245', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(343, '10048', '20181213020151102519', '1.0000', '0.5000', '0.5000', 1544637711, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020150158863', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(344, '10048', '20181213020227515198', '1.0000', '0.5000', '0.5000', 1544637747, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020227494273', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(340, '10048', '20181213015838101485', '1.0000', '0.1000', '0.9000', 1544637518, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015837182386', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(341, '10048', '20181213015847554852', '1.0000', '0.1000', '0.9000', 1544637527, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015846810690', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(342, '10048', '20181213020030101545', '1.0000', '0.1000', '0.9000', 1544637630, 1544637649, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213020030500293', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(338, '10048', '20181213015822101521', '1.0000', '0.1000', '0.9000', 1544637502, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015822614325', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(339, '10048', '20181213015829535610', '1.0000', '0.1000', '0.9000', 1544637509, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015829998159', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(336, '10048', '20181213015703102975', '1.0000', '0.1000', '0.9000', 1544637423, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015703181673', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(337, '10048', '20181213015729575048', '1.0000', '0.1000', '0.9000', 1544637449, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015728799799', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(333, '10048', '20181213015632485210', '11.0000', '1.1000', '9.9000', 1544637392, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015632910969', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0100', '0.0010', 68, 228, 0, 11, 0, 0),
(334, '10048', '20181213015658975648', '1.0000', '0.1000', '0.9000', 1544637418, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015658145631', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(335, '10048', '20181213015701100509', '1.0000', '0.1000', '0.9000', 1544637421, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015701673126', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0000', '0.0010', 74, 228, 0, 11, 0, 0),
(331, '10048', '20181213015430544850', '0.0100', '0.0050', '0.0050', 1544637270, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015429999324', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(332, '10048', '20181213015624565349', '10.0000', '1.0000', '9.0000', 1544637384, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015624280984', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0100', '0.0010', 74, 228, 0, 11, 0, 0),
(329, '10048', '20181213015238545648', '1.0000', '0.5000', '0.5000', 1544637158, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015238195244', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(330, '10048', '20181213015314975699', '0.0100', '0.0050', '0.0050', 1544637194, 1544637300, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213015314481920', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(327, '10048', '20181213014906509857', '1.0000', '0.5000', '0.5000', 1544636946, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213014906343475', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(328, '10048', '20181213014928561015', '105.0000', '52.5000', '52.5000', 1544636968, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213014928271631', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.5200', '0.0050', 69, 229, 0, 11, 0, 0),
(325, '10005', '20181213013036995798', '0.0100', '0.0000', '0.0100', 1544635836, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121301302964297', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(326, '10048', '20181213014516995054', '1.0000', '0.5000', '0.5000', 1544636716, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181213014516543599', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(324, '10005', '20181212233516525448', '10.0000', '0.0000', '10.0000', 1544628916, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181212233516470098', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 1, 'Wjalipay', '万家支付宝扫码', 0, '', '万家支付宝扫码', '0.1200', '0.0120', 64, 225, 0, 11, 0, 0),
(323, '10036', '20181212233431555310', '100.0000', '6.0000', '94.0000', 1544628871, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181212233431510827', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(322, '10036', '20181212233419985710', '100.0000', '6.0000', '94.0000', 1544628859, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '个人码微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181212233419438093', 0, '181101125', '', '', 0, 1, 'WxSm', '支付宝官方扫码', 0, '', '易支付微信扫码', '2.0000', '0.0200', 60, 217, 0, 11, 0, 0),
(321, '10005', '20181212224619985052', '0.0100', '0.0000', '0.0100', 1544625979, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121222461591510', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(320, '10005', '20181212141314971005', '0.0100', '0.0000', '0.0100', 1544595194, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121214130914872', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(319, '10005', '20181212141214101991', '0.0100', '0.0000', '0.0100', 1544595134, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121214121260340', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(318, '10005', '20181212104134101539', '0.0100', '0.0000', '0.0100', 1544582494, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121210413385605', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(317, '10005', '20181212104008561009', '0.0100', '0.0000', '0.0100', 1544582408, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121210400785939', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(315, '10005', '20181212103545495797', '0.0100', '0.0000', '0.0100', 1544582145, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121210354475290', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(316, '10005', '20181212103834975697', '0.0100', '0.0000', '0.0100', 1544582314, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121210383335721', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(313, '10005', '20181212015841491005', '0.0100', '0.0000', '0.0100', 1544551121, 0, '908', 'http://www.zhkpay.com/demo/server.php', 'http://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'http://www.zhkpay.com/demo/index1.php', 'E2018121201583220070', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 0, 11, 0, 0),
(314, '10005', '20181212103506975455', '0.0100', '0.0000', '0.0100', 1544582106, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121210350595354', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjalipay', '万家支付宝扫码', 0, '1234|456', '万家支付宝扫码', '0.0000', '0.0120', 64, 225, 0, 11, 0, 0),
(311, '10005', '20181211215555984950', '0.0100', '0.0000', '0.0100', 1544536555, 0, '904', 'http://www.zhkpay.com/demo/server.php', 'http://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'http://www.zhkpay.com/demo/index1.php', 'E2018121121555270793', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(312, '10005', '20181212015808481005', '0.0100', '0.0000', '0.0100', 1544551088, 0, '903', 'http://www.zhkpay.com/demo/server.php', 'http://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'http://www.zhkpay.com/demo/index1.php', 'E2018121201580765722', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(309, '10005', '20181211214053539997', '0.0100', '0.0000', '0.0100', 1544535653, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121405145995', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(310, '10005', '20181211214424565553', '0.0100', '0.0000', '0.0100', 1544535864, 0, '904', 'http://www.zhkpay.com/demo/server.php', 'http://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'http://www.zhkpay.com/demo/index1.php', 'E2018121121442272167', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(307, '10005', '20181211213726549810', '0.0100', '0.0000', '0.0100', 1544535446, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121371643502', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0);
INSERT INTO `pay_order` (`id`, `pay_memberid`, `pay_orderid`, `pay_amount`, `pay_poundage`, `pay_actualamount`, `pay_applydate`, `pay_successdate`, `pay_bankcode`, `pay_notifyurl`, `pay_callbackurl`, `pay_bankname`, `pay_status`, `pay_productname`, `pay_tongdao`, `pay_zh_tongdao`, `pay_tjurl`, `out_trade_id`, `num`, `memberid`, `key`, `account`, `isdel`, `ddlx`, `pay_ytongdao`, `pay_yzh_tongdao`, `xx`, `attach`, `pay_channel_account`, `cost`, `cost_rate`, `account_id`, `channel_id`, `t`, `last_reissue_time`, `lock_status`, `status`) VALUES
(308, '10005', '20181211214031102975', '0.0100', '0.0000', '0.0100', 1544535631, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121402833701', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(305, '10005', '20181211212448485049', '0.0100', '0.0000', '0.0100', 1544534688, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121244416269', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(306, '10005', '20181211212834505699', '0.0100', '0.0000', '0.0100', 1544534914, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121283259850', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(304, '10005', '20181211212327102551', '0.0100', '0.0000', '0.0100', 1544534607, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121232494126', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(303, '10005', '20181211212121495251', '0.0100', '0.0000', '0.0100', 1544534481, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121211967748', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 0, 11, 0, 0),
(302, '10005', '20181211212002504910', '0.0100', '0.0000', '0.0100', 1544534402, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Aliwap', '官方支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121195514335', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Aliwap', '支付宝H5', 0, '1234|456', '官方H5', '0.0000', '0.0000', 72, 233, 0, 11, 0, 0),
(301, '10005', '20181211211927102971', '0.0100', '0.0000', '0.0100', 1544534367, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Aliwap', '官方支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121191734647', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Aliwap', '支付宝H5', 0, '1234|456', '官方H5', '0.0000', '0.0000', 72, 233, 0, 11, 0, 0),
(300, '10005', '20181211211846545448', '0.0100', '0.0000', '0.0100', 1544534326, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Aliwap', '官方支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121184253893', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Aliwap', '支付宝H5', 0, '1234|456', '官方H5', '0.0000', '0.0000', 72, 233, 0, 11, 0, 0),
(298, '10005', '20181211211519555597', '0.0100', '0.0000', '0.0100', 1544534119, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121151442064', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(299, '10005', '20181211211819984856', '0.0100', '0.0000', '0.0100', 1544534299, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Aliwap', '官方支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121121171466277', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Aliwap', '支付宝H5', 0, '1234|456', '官方H5', '0.0000', '0.0000', 72, 233, 0, 11, 0, 0),
(296, '10005', '20181211191411519910', '0.0100', '0.0000', '0.0100', 1544526851, 0, '902', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '微信扫码', 0, '测试商品', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121119140926114', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfwxscan', '睿支付微信扫码', 0, '1234|456', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 0, 0),
(297, '10005', '20181211191500525298', '0.0100', '0.0000', '0.0100', 1544526900, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121119142835843', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 0, 11, 0, 0),
(295, '10005', '20181211191245100971', '0.0100', '0.0000', '0.0100', 1544526765, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121119124151818', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(294, '10005', '20181211114213539710', '0.0100', '0.0000', '0.0100', 1544499733, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121111412590089', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 0, 11, 0, 0),
(293, '10005', '20181211104748529799', '0.0100', '0.0000', '0.0100', 1544496468, 0, '902', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '微信扫码', 0, '测试商品', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121110474671127', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfwxscan', '睿支付微信扫码', 0, '1234|456', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 0, 0),
(292, '10005', '20181211104720565610', '0.0100', '0.0000', '0.0100', 1544496440, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121110471744716', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(291, '10005', '20181211012910544910', '0.0100', '0.0000', '0.0100', 1544462950, 0, '902', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '微信扫码', 0, '测试商品', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121101290759189', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfwxscan', '睿支付微信扫码', 0, '1234|456', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 0, 0),
(290, '10005', '20181210233103559755', '0.0100', '0.0000', '0.0100', 1544455863, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121023305993161', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(289, '10005', '20181210203442505297', '0.0100', '0.0000', '0.0100', 1544445282, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Aliwap', '官方支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121020343879569', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Aliwap', '支付宝H5', 0, '1234|456', '官方H5', '0.0000', '0.0000', 72, 233, 0, 11, 0, 0),
(288, '10005', '20181210203427519756', '0.0100', '0.0000', '0.0100', 1544445267, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121020342572453', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(287, '10005', '20181210023926101571', '0.0100', '0.0000', '0.0100', 1544380766, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Aliwap', '官方支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018121002392135493', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 0, 'Aliwap', '支付宝H5', 0, '1234|456', '官方H5', '0.0000', '0.0000', 72, 233, 0, 11, 0, 0),
(286, '10005', '20181209215636534848', '0.0100', '0.0000', '0.0100', 1544363796, 0, '902', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '微信扫码', 0, '测试商品', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120921563524723', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfwxscan', '睿支付微信扫码', 0, '1234|456', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 0, 0),
(284, '10005', '20181209212344485356', '0.0100', '0.0000', '0.0100', 1544361824, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120921234167564', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(285, '10005', '20181209215619515750', '0.0100', '0.0000', '0.0100', 1544363779, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120921561828655', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(283, '10005', '20181209070712484898', '0.0100', '0.0000', '0.0100', 1544310432, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120907070754166', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(282, '10005', '20181208155603514957', '0.0100', '0.0000', '0.0100', 1544255763, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120815555979601', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(281, '10005', '20181207141009495049', '0.0100', '0.0000', '0.0100', 1544163009, 1544207809, '902', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '微信扫码', 2, '测试商品', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120714100796423', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfwxscan', '睿支付微信扫码', 0, '1234|456', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 2, 0),
(280, '10005', '20181207140950101101', '0.0100', '0.0000', '0.0100', 1544162990, 1544245392, '911', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '快捷支付', 2, '测试商品', 'YibaoKj', '快捷支付PC', 'https://www.zhkpay.com/demo/index1.php', 'E2018120714094950603', 0, '', '', '', 0, 0, 'YibaoKj', '易宝-银联快捷', 0, '1234|456', '快捷支付PC', '0.0000', '0.0200', 62, 223, 0, 11, 2, 0),
(279, '10005', '20181207140855555054', '0.0100', '0.0000', '0.0100', 1544162935, 1544245415, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 2, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018120714085375838', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 0, 11, 0, 0),
(278, '10005', '20181207140644529854', '0.0100', '0.0000', '0.0100', 1544162804, 1544245466, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120714064144897', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(277, '10005', '20181206225811515152', '0.0100', '0.0000', '0.0100', 1544108291, 1544162698, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120622574293953', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 2, 0),
(276, '10013', '20181206211331984950', '10.0000', '0.0600', '9.9400', 1544102011, 1544245475, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206211330309961', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '哈哈哈', 'qq56789', '0.0100', '0.0010', 68, 228, 0, 11, 2, 0),
(275, '10005', '20181206183015555151', '0.0100', '0.0000', '0.0100', 1544092215, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120618300338688', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(274, '10005', '20181206140747519755', '0.0100', '0.0000', '0.0100', 1544076467, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120614074249185', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(273, '10005', '20181206054310101575', '0.0100', '0.0000', '0.0100', 1544046190, 0, '902', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '微信扫码', 0, '测试商品', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120605430868651', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfwxscan', '睿支付微信扫码', 0, '1234|456', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 0, 0),
(272, '10005', '20181206054300529851', '0.0100', '0.0000', '0.0100', 1544046180, 1544245399, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120605425993073', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfaliscan', '睿支付支付宝扫码', 0, '1234|456', '100000057', '0.0000', '0.0000', 70, 230, 0, 11, 0, 0),
(271, '10005', '20181206045625571004', '0.0100', '0.0000', '0.0100', 1544043385, 0, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 0, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018120604560930835', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 0, 11, 0, 0),
(269, '10005', '20181206041305495798', '0.0100', '0.0000', '0.0100', 1544040785, 0, '902', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '微信扫码', 0, '测试商品', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018120604130459198', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfwxscan', '睿支付微信扫码', 0, '1234|456', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 0, 0),
(270, '10005', '20181206041314975749', '0.0100', '0.0000', '0.0100', 1544040794, 0, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 0, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018120604131118718', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 0, 11, 0, 0),
(268, '10005', '20181206041252525654', '0.0100', '0.0000', '0.0100', 1544040772, 0, '911', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '快捷支付', 0, '测试商品', 'YibaoKj', '快捷支付PC', 'https://www.zhkpay.com/demo/index1.php', 'E2018120604124746603', 0, '', '', '', 0, 0, 'YibaoKj', '易宝-银联快捷', 0, '1234|456', '快捷支付PC', '0.0000', '0.0200', 62, 223, 0, 11, 0, 0),
(267, '10038', '20181206021526101555', '10.0000', '2.0000', '8.0000', 1544033726, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206021526595713', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0200', '0.0020', 69, 229, 0, 11, 0, 0),
(266, '10038', '20181206021439102509', '10.0000', '2.0000', '8.0000', 1544033679, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206021439544202', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0200', '0.0020', 69, 229, 0, 11, 0, 0),
(265, '10038', '20181206020404525650', '10.0000', '1.0000', '9.0000', 1544033044, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020404266621', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0100', '0.0010', 74, 228, 0, 11, 0, 0),
(264, '10038', '20181206020356994857', '10.0000', '2.0000', '8.0000', 1544033036, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020355938537', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0200', '0.0020', 69, 229, 0, 11, 0, 0),
(263, '10038', '20181206020349535310', '10.0000', '1.0000', '9.0000', 1544033029, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020349221636', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0100', '0.0010', 68, 228, 0, 11, 0, 0),
(262, '10038', '20181206020334549955', '10.0000', '1.0000', '9.0000', 1544033014, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020334436203', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0100', '0.0010', 68, 228, 0, 11, 0, 0),
(261, '10038', '20181206020329494810', '10.0000', '2.0000', '8.0000', 1544033009, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020328247643', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0200', '0.0020', 69, 229, 0, 11, 0, 0),
(260, '10038', '20181206020309100975', '10.0000', '1.0000', '9.0000', 1544032989, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020309361804', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.0100', '0.0010', 74, 228, 0, 11, 0, 0),
(259, '10038', '20181206020303559798', '10.0000', '2.0000', '8.0000', 1544032983, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020303511928', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0200', '0.0020', 69, 229, 0, 11, 0, 0),
(258, '10038', '20181206020240481011', '100.0000', '20.0000', '80.0000', 1544032960, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020240286016', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.2000', '0.0020', 69, 229, 0, 11, 0, 0),
(257, '10038', '20181206020239102499', '100.0000', '20.0000', '80.0000', 1544032959, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020238679349', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.2000', '0.0020', 69, 229, 0, 11, 0, 0),
(256, '10036', '20181206020055555753', '100.0000', '6.0000', '94.0000', 1544032855, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020055949791', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(255, '10036', '20181206020054545010', '100.0000', '6.0000', '94.0000', 1544032854, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '个人码微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020054394188', 0, '181101125', '', '', 0, 1, 'WxSm', '支付宝官方扫码', 0, '', '易支付微信扫码', '2.0000', '0.0200', 60, 217, 0, 11, 0, 0),
(254, '10036', '20181206020052521015', '100.0000', '6.0000', '94.0000', 1544032852, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020052721040', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(253, '10036', '20181206020023551015', '100.0000', '6.0000', '94.0000', 1544032823, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '个人码微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020023157359', 0, '181101125', '', '', 0, 1, 'WxSm', '支付宝官方扫码', 0, '', '易支付微信扫码', '2.0000', '0.0200', 60, 217, 0, 11, 0, 0),
(252, '10036', '20181206020022545210', '100.0000', '6.0000', '94.0000', 1544032822, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206020022127350', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(251, '10036', '20181206015927102505', '100.0000', '6.0000', '94.0000', 1544032767, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015927610381', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(250, '10036', '20181206015925100515', '100.0000', '6.0000', '94.0000', 1544032765, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015925976117', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(249, '10036', '20181206015923985410', '100.0000', '6.0000', '94.0000', 1544032763, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015923131130', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(248, '10036', '20181206015922974997', '100.0000', '6.0000', '94.0000', 1544032762, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015921126547', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(247, '10036', '20181206015637535310', '100.0000', '6.0000', '94.0000', 1544032597, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015637129125', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(246, '10036', '20181206015635519799', '100.0000', '6.0000', '94.0000', 1544032595, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015635982528', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(245, '10036', '20181206015633491019', '100.0000', '6.0000', '94.0000', 1544032593, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015633464604', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(244, '10036', '20181206015631102995', '100.0000', '6.0000', '94.0000', 1544032591, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015631874102', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(243, '10036', '20181206015600484810', '100.0000', '6.0000', '94.0000', 1544032560, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015559473814', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(242, '10036', '20181206015558101484', '100.0000', '6.0000', '94.0000', 1544032558, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015557107448', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(241, '10036', '20181206015555981015', '100.0000', '6.0000', '94.0000', 1544032555, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015555725214', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(240, '10036', '20181206015553575251', '100.0000', '6.0000', '94.0000', 1544032553, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015553911468', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(239, '10036', '20181206015504565350', '100.0000', '6.0000', '94.0000', 1544032504, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015504570073', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.1000', '0.0010', 74, 228, 0, 11, 0, 0),
(238, '10036', '20181206015454101975', '100.0000', '6.0000', '94.0000', 1544032494, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015454710624', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(237, '10036', '20181206015446545748', '100.0000', '6.0000', '94.0000', 1544032486, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015446130132', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(236, '10036', '20181206015432565752', '100.0000', '6.0000', '94.0000', 1544032472, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015432714913', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(235, '10036', '20181206015409495356', '1.0000', '0.0600', '0.9400', 1544032449, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015409416280', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0020', 69, 229, 0, 11, 0, 0),
(234, '10036', '20181206015307515799', '100.0000', '6.0000', '94.0000', 1544032387, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015307144295', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.2000', '0.0020', 69, 229, 0, 11, 0, 0),
(233, '10036', '20181206015256564949', '100.0000', '6.0000', '94.0000', 1544032376, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015255895967', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.2000', '0.0020', 69, 229, 0, 11, 0, 0),
(232, '10036', '20181206015200484910', '100.0000', '6.0000', '94.0000', 1544032320, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206015159321796', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.2000', '0.0020', 69, 229, 0, 11, 0, 0),
(231, '10036', '20181206013526101545', '100.0000', '6.0000', '94.0000', 1544031326, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206013526186186', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(230, '10036', '20181206013458504853', '100.0000', '6.0000', '94.0000', 1544031298, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206013457849192', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(229, '10038', '20181206013216481009', '100.0000', '10.0000', '90.0000', 1544031136, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206013216195321', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(228, '10036', '20181206012859981005', '100.0000', '0.0000', '100.0000', 1544030939, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206012859593281', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(227, '10036', '20181206001607555657', '100.0000', '6.0000', '94.0000', 1544026567, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206001607485811', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 0, 0),
(226, '10036', '20181206000759102971', '100.0000', '6.0000', '94.0000', 1544026079, 1544026092, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 2, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181206000759177823', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.1000', '0.0010', 68, 228, 0, 11, 2, 0),
(418, '10036', '20181217000213535651', '1.0000', '0.0000', '1.0000', 1544976133, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Alipage', '官方支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000213289484', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 1, 'Alipage', '支付宝官方扫码', 0, '', '支付宝扫码', '0.0000', '0.0000', 59, 215, 1, 11, 0, 0),
(419, '10036', '20181217000220995252', '1.0000', '0.0000', '1.0000', 1544976140, 0, '904', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝H5', 0, '收款', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000220820467', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 1, 'Wjaliwap', '万家支付宝H5', 0, '', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 1, 11, 0, 0),
(420, '10036', '20181217000331515154', '1.0000', '0.0700', '0.9300', 1544976211, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000331355599', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0000', '0.0020', 68, 228, 1, 11, 0, 0),
(421, '10036', '20181217000338971009', '1.0000', '0.0000', '1.0000', 1544976218, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000338207009', 0, '1317', '38bcbbdf45d4nddf5n4d5', '', 0, 1, 'Wjalipay', '万家支付宝扫码', 0, '', '万家支付宝扫码', '0.0100', '0.0120', 64, 225, 1, 11, 0, 0),
(422, '10036', '20181217000354979950', '11.0000', '0.0000', '11.0000', 1544976234, 0, '904', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝H5', 0, '收款', 'Jmaliwap', 'paysapi支付宝H5', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000354469373', 0, '', '', '', 0, 1, 'Jmaliwap', 'paysapi支付宝H5', 0, '', 'qq123456', '0.1900', '0.0180', 66, 227, 1, 11, 0, 0),
(423, '10036', '20181217000409575556', '1.0000', '0.0000', '1.0000', 1544976249, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000409108678', 0, '1317', '38bcbbdf45d4nddf5n4d5', '', 0, 1, 'Wjalipay', '万家支付宝扫码', 0, '', '万家支付宝扫码', '0.0100', '0.0120', 64, 225, 1, 11, 0, 0),
(424, '10036', '20181217000425575252', '1.0000', '0.0700', '0.9300', 1544976265, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000425637258', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0000', '0.0020', 68, 228, 1, 11, 0, 0),
(425, '10036', '20181217000458975699', '1.0000', '0.0700', '0.9300', 1544976298, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000458189303', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0060', 69, 229, 1, 11, 0, 0),
(426, '10036', '20181217000509531015', '11.0000', '0.0000', '11.0000', 1544976309, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Jmalipay', 'paysapi支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000509375807', 0, '123', '123456', '', 0, 1, 'Jmalipay', 'paysapi支付宝扫码', 0, '', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(427, '10036', '20181217000523515454', '11.0000', '0.0000', '11.0000', 1544976323, 0, '904', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝H5', 0, '收款', 'Aliwap', '官方支付宝H5', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000523450625', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSi/UHMKlOtLPefjt4/T95sp7Ivhp+0z1XNS59KM2uGv8BMGOqPzxS8taZxG23L87woeQvvm+zr2pbIR7ctQkLkwrmMVIZcC4FksG9C9E4u1NVTktpudsLOWaiekXUbB7MbWe4I4YK3Mo3i2SmKIAhJQKDh72RgxFYTUwN+67zPswUaDBBFSF+6Xsagppo29P66Zqg3Hg8cfeFk1vd1tNUXAd53hsW0sTWMg9f84jc4DAw0/ldgsYFwey6SBUPCYrGrQQIFTVt8SoP2bPz5q26Fw7o0tbU1G6zYgcZPvMpXq4uDTloGxOSRrsspNyOYtschIhkVr5Ixmwfd5URueLwIDAQAB', '2018111962262475', 0, 1, 'Aliwap', '支付宝H5', 0, '', '官方H5', '0.0000', '0.0000', 72, 233, 1, 11, 0, 0),
(428, '10036', '20181217000556525710', '1.0000', '0.0000', '1.0000', 1544976356, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217000556373428', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfaliscan', '睿支付支付宝扫码', 0, '', '100000057', '0.0000', '0.0000', 70, 230, 1, 11, 0, 0),
(429, '10036', '20181217002700525553', '1.0000', '0.0000', '1.0000', 1544977620, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Rzfaliscan', '睿支付支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217002700965926', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfaliscan', '睿支付支付宝扫码', 0, '', '100000057', '0.0000', '0.0000', 70, 230, 1, 11, 0, 0),
(430, '10036', '20181217002730509953', '1.0000', '0.0000', '1.0000', 1544977650, 0, '904', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝H5', 0, '收款', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217002730887630', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 1, 'Wjaliwap', '万家支付宝H5', 0, '', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 1, 11, 0, 0),
(431, '10036', '20181217002757100995', '1.0000', '0.0000', '1.0000', 1544977677, 0, '903', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '支付宝扫码', 0, '收款', 'Wjalipay', '万家支付宝扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181217002757747605', 0, '1317', '38bcbbdf45d4nddf5n4d5', '', 0, 1, 'Wjalipay', '万家支付宝扫码', 0, '', '万家支付宝扫码', '0.0100', '0.0120', 64, 225, 1, 11, 0, 0),
(432, '10005', '20181217232800481015', '0.0100', '0.0000', '0.0100', 1545060480, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121723275218253', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 1, 11, 0, 0),
(433, '10005', '20181218111148525510', '0.0100', '0.0000', '0.0100', 1545102708, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018121811114677319', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 1, 11, 0, 0),
(434, '10005', '20181218111158101569', '0.0100', '0.0000', '0.0100', 1545102718, 0, '911', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '快捷支付', 0, '测试商品', 'YibaoKj', '快捷支付PC', 'https://www.zhkpay.com/demo/index1.php', 'E2018121811115796993', 0, '', '', '', 0, 0, 'YibaoKj', '易宝-银联快捷', 0, '1234|456', '快捷支付PC', '0.0000', '0.0400', 62, 223, 1, 11, 0, 0),
(435, '10005', '20181218135233495798', '0.0100', '0.0000', '0.0100', 1545112353, 0, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 0, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018121813522974504', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 1, 11, 0, 0),
(436, '10005', '20181220203347985310', '0.0100', '0.0000', '0.0100', 1545309227, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122020333768318', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 1, 11, 0, 0),
(437, '10005', '20181221012242501005', '0.0100', '0.0000', '0.0100', 1545326562, 0, '908', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', 'QQ钱包扫码', 0, '测试商品', 'QQpay', 'QQ钱包扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122101223474858', 0, '', '', '', 0, 0, 'QQpay', 'QQpay（QQ扫码）', 0, '1234|456', 'QQ钱包扫码', '0.0000', '0.0000', 61, 224, 1, 11, 0, 0),
(438, '10005', '20181221235524995649', '0.0100', '0.0000', '0.0100', 1545407724, 0, '907', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '网银支付', 0, '测试商品', 'Rzfbank', '睿支付网银支付', 'https://www.zhkpay.com/demo/index1.php', 'E2018122123551688019', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 0, 'Rzfbank', '睿支付网银支付', 0, '1234|456', '100000057', '0.0000', '0.0000', 71, 231, 1, 11, 0, 0),
(439, '10005', '20181222030648561005', '0.0100', '0.0000', '0.0100', 1545419208, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122203064589433', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 1, 11, 0, 0),
(440, '10013', '20181226131335102100', '11.0000', '0.0770', '10.9230', 1545801215, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20181226131335289527', 0, '456', '124355454', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', 'qq56789', '0.0200', '0.0020', 68, 228, 1, 11, 0, 0),
(441, '10005', '20181226145041499910', '0.0100', '0.0000', '0.0100', 1545807041, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122614503936771', 0, '123', '123456', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(442, '10005', '20181226145051985750', '50.0000', '0.0000', '50.0000', 1545807051, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122614504877808', 0, '123', '123456', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0100', '0.0003', 65, 226, 1, 11, 0, 0);
INSERT INTO `pay_order` (`id`, `pay_memberid`, `pay_orderid`, `pay_amount`, `pay_poundage`, `pay_actualamount`, `pay_applydate`, `pay_successdate`, `pay_bankcode`, `pay_notifyurl`, `pay_callbackurl`, `pay_bankname`, `pay_status`, `pay_productname`, `pay_tongdao`, `pay_zh_tongdao`, `pay_tjurl`, `out_trade_id`, `num`, `memberid`, `key`, `account`, `isdel`, `ddlx`, `pay_ytongdao`, `pay_yzh_tongdao`, `xx`, `attach`, `pay_channel_account`, `cost`, `cost_rate`, `account_id`, `channel_id`, `t`, `last_reissue_time`, `lock_status`, `status`) VALUES
(443, '10005', '20181226145205539950', '0.0100', '0.0000', '0.0100', 1545807125, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122614520390939', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(444, '10005', '20181226145311555710', '50.0000', '0.0000', '50.0000', 1545807191, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122614530813028', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0100', '0.0003', 65, 226, 1, 11, 0, 0),
(445, '10005', '20181226150116999753', '0.0100', '0.0000', '0.0100', 1545807676, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615011431488', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 1, 11, 0, 0),
(446, '10005', '20181226150144565748', '50.0000', '0.0000', '50.0000', 1545807704, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615013973105', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0100', '0.0003', 65, 226, 1, 11, 0, 0),
(447, '10005', '20181226150828991005', '50.0000', '0.0000', '50.0000', 1545808108, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Wjaliwap', '万家支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615082362184', 0, '1316', '38bc0d3e5b6fa28f50a2b196e935bfad', '', 0, 0, 'Wjaliwap', '万家支付宝H5', 0, '1234|456', '万家支付宝H5', '0.0000', '0.0000', 63, 216, 1, 11, 0, 0),
(448, '10005', '20181226151338505257', '50.0000', '0.0000', '50.0000', 1545808418, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615133652374', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.9000', '0.0180', 66, 227, 1, 11, 0, 0),
(449, '10005', '20181226151503555452', '50.0000', '0.0000', '50.0000', 1545808503, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615150090392', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.9000', '0.0180', 66, 227, 1, 11, 0, 0),
(450, '10005', '20181226151532524955', '50.0000', '0.0000', '50.0000', 1545808532, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615152487730', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.9000', '0.0180', 66, 227, 1, 11, 0, 0),
(451, '10005', '20181226153137575310', '50.0000', '0.0000', '50.0000', 1545809497, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615310741129', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0100', '0.0003', 65, 226, 1, 11, 0, 0),
(452, '10005', '20181226153939981005', '1.0000', '0.0000', '1.0000', 1545809979, 1545811168, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122615393396831', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(453, '10005', '20181226161033575410', '1.0000', '0.0000', '1.0000', 1545811833, 1545811862, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122616102955949', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(454, '10005', '20181226161522979756', '1.0000', '0.0000', '1.0000', 1545812122, 1545812139, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122616151981712', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(455, '10005', '20181226175703102994', '1.0000', '0.0000', '1.0000', 1545818223, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122617570131739', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 1, 11, 0, 0),
(456, '10005', '20181226175817575610', '1.0000', '0.0000', '1.0000', 1545818297, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122617581614603', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(457, '10005', '20181226183612995598', '1.0000', '0.0000', '1.0000', 1545820572, 1545820635, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122618361111735', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(458, '10005', '20181226191912484810', '1.0000', '0.0000', '1.0000', 1545823152, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122619191038702', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(459, '10005', '20181226191922975410', '10.0000', '0.0000', '10.0000', 1545823162, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122619191749962', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(460, '10005', '20181226191932529910', '50.0000', '0.0000', '50.0000', 1545823172, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122619192798330', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0100', '0.0003', 65, 226, 1, 11, 0, 0),
(461, '10005', '20181227172715515699', '1.0000', '0.0000', '1.0000', 1545902835, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122616112835870', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(462, '10005', '20181228155645100495', '1.0000', '0.0000', '1.0000', 1545983805, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2018122815564132134', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 1, 11, 0, 0),
(463, '10005', '20181228160003511005', '1.0000', '0.0000', '1.0000', 1545984003, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122815563047090', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(464, '10005', '20181229205401571015', '1.0000', '0.0000', '1.0000', 1546088041, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2018122920535816430', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(465, '10005', '20190101021145495099', '1.0000', '0.0000', '1.0000', 1546279905, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010102112038052', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(466, '10005', '20190101023123985197', '1.0000', '0.0000', '1.0000', 1546281083, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010102311890240', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(467, '10005', '20190101162740994952', '1.0000', '0.0000', '1.0000', 1546331260, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010116273734291', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(468, '10005', '20190102145420999852', '1.0000', '0.0000', '1.0000', 1546412060, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010214541566106', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(469, '10005', '20190105195044521011', '1.0000', '0.0000', '1.0000', 1546689044, 1546718751, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010519503767174', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(470, '10005', '20190105205346975551', '10000.0000', '0.0000', '10000.0000', 1546692826, 1546692866, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010520525717425', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '3.0000', '0.0003', 65, 226, 1, 11, 0, 0),
(471, '10005', '20190105205737495056', '100.0000', '1.0000', '99.0000', 1546693057, 1546693100, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010520573353289', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0300', '0.0003', 65, 226, 0, 11, 0, 0),
(472, '10005', '20190105214235989999', '100.0000', '1.0000', '99.0000', 1546695755, 1546718726, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010521423219709', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0300', '0.0003', 65, 226, 0, 11, 2, 0),
(473, '10005', '20190107173320489957', '1.0000', '0.0100', '0.9900', 1546853600, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2019010717330971749', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(474, '10005', '20190107173358545152', '1.0000', '0.0100', '0.9900', 1546853638, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2019010717334245754', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(475, '10005', '20190108011252529952', '0.0100', '0.0001', '0.0099', 1546881172, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2019010801123117637', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0000', '0.0180', 66, 227, 0, 11, 0, 0),
(476, '10005', '20190108011723514957', '1.0000', '0.0100', '0.9900', 1546881443, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2019010801144138481', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(477, '10005', '20190108011815559810', '1.0000', '0.0100', '0.9900', 1546881495, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010801180773141', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(478, '10005', '20190108142116991015', '1000.0000', '10.0000', '990.0000', 1546928476, 1546928500, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010814211118603', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.3000', '0.0003', 65, 226, 0, 11, 2, 0),
(479, '10005', '20190108142645539797', '10000.0000', '100.0000', '9900.0000', 1546928805, 1546928820, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010814264123449', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '3.0000', '0.0003', 65, 226, 0, 11, 2, 0),
(480, '10004', '20190108184055555350', '800.0000', '0.8000', '799.2000', 1546944055, 0, '902', 'https://www.zhkpay.com/Pay_Charges_notify.html', 'https://www.zhkpay.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Jmwxsm', 'paysapi微信扫码', 'https://www.zhkpay.com/Pay_Charges_checkout.html', 'C20190108184055574838', 0, '', '', '', 0, 1, 'Jmwxsm', 'paysapi微信扫码', 0, '', '3213', '0.8000', '0.0010', 74, 228, 0, 11, 0, 0),
(481, '10005', '20190108202221100534', '1.0000', '0.0100', '0.9900', 1546950141, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010820221576608', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(482, '10005', '20190109165158101994', '1.0000', '0.0100', '0.9900', 1547023918, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2019010916513872722', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(483, '10005', '20190109165319102984', '1.0000', '0.0100', '0.9900', 1547023999, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2019010916530390000', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(484, '10005', '20190109165444521009', '1.0000', '0.0100', '0.9900', 1547024084, 0, '904', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'https://www.zhkpay.com/demo/index1.php', 'E2019010916543831802', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(485, '10005', '20190109193943102541', '1.0000', '0.0100', '0.9900', 1547033983, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019010919393664644', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(486, '10005', '20190112152654101495', '1.0000', '0.0100', '0.9900', 1547278014, 0, '903', 'https://www.zhkpay.com/demo/server.php', 'https://www.zhkpay.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'https://www.zhkpay.com/demo/index1.php', 'E2019011215265152456', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(487, '10005', '20190128191841499749', '1.0000', '0.0100', '0.9900', 1548674321, 0, '904', 'http://demo.zd564.com/demo/server.php', 'http://demo.zd564.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'http://demo.zd564.com/demo/index1.php', 'E2019012819183766084', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(488, '10062', '20190329205123985098', '1.0000', '0.0000', '1.0000', 1553863883, 0, '902', 'http://www.demo3.com/Pay_Charges_notify.html', 'http://www.demo3.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://www.demo3.com/Pay_Charges_checkout.html', 'C20190329205122821774', 0, '1349825901', '', 'wx422126b0b6bbfcfc', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(489, '10062', '20190329205805100545', '1.0000', '0.0000', '1.0000', 1553864285, 0, '902', 'http://www.demo3.com/Pay_Charges_notify.html', 'http://www.demo3.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://www.demo3.com/Pay_Charges_checkout.html', 'C20190329205805621795', 0, '1349825901', '', 'wx422126b0b6bbfcfc', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(490, '10062', '20190329205851989949', '1.0000', '0.0000', '1.0000', 1553864331, 0, '902', 'http://www.demo3.com/Pay_Charges_notify.html', 'http://www.demo3.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://www.demo3.com/Pay_Charges_checkout.html', 'C20190329205851988024', 0, '1349825901', '', 'wx422126b0b6bbfcfc', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(491, '10062', '20190329205944485353', '1.0000', '0.0000', '1.0000', 1553864384, 0, '902', 'http://www.demo3.com/Pay_Charges_notify.html', 'http://www.demo3.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://www.demo3.com/Pay_Charges_checkout.html', 'C20190329205944273583', 0, '1349825901', '', 'wx422126b0b6bbfcfc', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(492, '10062', '20190329210627519910', '1.0000', '0.0000', '1.0000', 1553864787, 0, '902', 'http://www.demo3.com/Pay_Charges_notify.html', 'http://www.demo3.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://www.demo3.com/Pay_Charges_checkout.html', 'C20190329210627588067', 0, '1349825901', '2088901006538525', 'wx422126b0b6bbfcfc', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '1', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(493, '10062', '20190329210837535097', '1.0000', '0.0000', '1.0000', 1553864917, 0, '902', 'http://www.demo3.com/Pay_Charges_notify.html', 'http://www.demo3.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://www.demo3.com/Pay_Charges_checkout.html', 'C20190329210836414154', 0, '1349825901', 'hjlaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'wx422126b0b6bbfcfc', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '1', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(494, '10005', '20191010192652995653', '1.0000', '0.0100', '0.9900', 1570706812, 0, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101019264894248', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(495, '10005', '20191010203558101995', '1.0000', '0.0100', '0.9900', 1570710958, 0, '904', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝H5', 0, '测试商品', 'Jmaliwap', 'huohuo8支付宝H5', 'http://1704.demohuo.com/demo/index1.php', 'E2019101020355512994', 0, '', '', '', 0, 0, 'Jmaliwap', '支付宝H5', 0, '1234|456', 'qq123456', '0.0100', '0.0180', 66, 227, 0, 11, 0, 0),
(496, '10005', '20191011112012995210', '1.0000', '0.0100', '0.9900', 1570764012, 0, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101111200538314', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(497, '10005', '20191011120911555248', '1.0000', '0.0100', '0.9900', 1570766951, 0, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101112090258177', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(498, '10005', '20191011171931515250', '1.0000', '0.0100', '0.9900', 1570785571, 0, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101117192882406', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(499, '10005', '20191015082619989899', '1.0000', '0.0100', '0.9900', 1571099179, 0, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101508261681663', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(500, '10062', '20191015210438545698', '1.0000', '0.0000', '1.0000', 1571144678, 0, '902', 'http://1704.demohuo.com/Pay_Charges_notify.html', 'http://1704.demohuo.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://1704.demohuo.com/Pay_Charges_checkout.html', 'C20191015210438972404', 0, '1349825902', 'schaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'wx422126b0b6bbfcf3', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(501, '10062', '20191015210641495410', '1.0000', '0.0000', '1.0000', 1571144801, 0, '902', 'http://1704.demohuo.com/Pay_Charges_notify.html', 'http://1704.demohuo.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://1704.demohuo.com/Pay_Charges_checkout.html', 'C20191015210641431920', 0, '1349825902', 'schaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'wx422126b0b6bbfcf3', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '', '懒人', '0.0200', '0.0200', 60, 217, 0, 11, 0, 0),
(502, '10062', '20191016162821534957', '0.0100', '0.0000', '0.0100', 1571214501, 0, '902', 'http://1704.demohuo.com/Pay_Charges_notify.html', 'http://1704.demohuo.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'WxSm', '企业微信扫码', 'http://1704.demohuo.com/Pay_Charges_checkout.html', 'C20191016162820402795', 0, '1349825902', 'schaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'wx422126b0b6bbfcf3', 0, 1, 'WxSm', '微信扫码支付-官方', 0, '', '懒人', '0.0000', '0.0200', 60, 217, 0, 11, 0, 0),
(503, '10039', '20191016164112569749', '1.0000', '10000.0000', '0.0000', 1571215272, 0, '902', 'http://1704.demohuo.com/Pay_Charges_notify.html', 'http://1704.demohuo.com/Pay_Charges_callback.html', '微信扫码', 0, '收款', 'Rzfwxscan', '睿支付微信扫码', 'http://1704.demohuo.com/Pay_Charges_checkout.html', 'C20191016164112602902', 0, '100000057', 'eS9xWlY1bkQ2ajFQV0FDT2VsbUhtZz09', '', 0, 1, 'Rzfwxscan', '睿支付微信扫码', 0, '', '100000057', '0.0000', '0.0050', 69, 229, 0, 11, 0, 0),
(504, '10005', '20191016164419515050', '1.0000', '0.0100', '0.9900', 1571215459, 0, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101616441420723', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(505, '10005', '20191016165251515655', '1.0000', '0.0100', '0.9900', 1571215971, 0, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 0, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101616524823258', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 0, 0),
(506, '10005', '20191016165317100974', '1.0000', '0.0100', '0.9900', 1571215997, 1571216143, '903', 'http://1704.demohuo.com/demo/server.php', 'http://1704.demohuo.com/demo/page.php', '支付宝扫码', 2, '测试商品', 'Jmalipay', 'huohuo8支付宝扫码', 'http://1704.demohuo.com/demo/index1.php', 'E2019101616531539913', 0, '45', '5d7684b98174c5542219f2e0bbf9b6dd', '', 0, 0, 'Jmalipay', '金木支付宝扫码', 0, '1234|456', 'qq123456', '0.0000', '0.0003', 65, 226, 0, 11, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_paylog`
--

CREATE TABLE `pay_paylog` (
  `id` int(11) UNSIGNED NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `result_code` varchar(50) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `fromuser` varchar(50) NOT NULL,
  `time_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `total_fee` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `payname` varchar(50) NOT NULL,
  `bank_type` varchar(20) DEFAULT NULL,
  `trade_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pay_pay_channel_extend_fields`
--

CREATE TABLE `pay_pay_channel_extend_fields` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL DEFAULT '0' COMMENT '代付渠道ID',
  `code` varchar(64) NOT NULL DEFAULT '' COMMENT '代付渠道代码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '扩展字段名',
  `alias` varchar(50) NOT NULL DEFAULT '' COMMENT '扩展字段别名',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `etime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_pay_channel_extend_fields`
--

INSERT INTO `pay_pay_channel_extend_fields` (`id`, `channel_id`, `code`, `name`, `alias`, `remark`, `etime`, `ctime`) VALUES
(1, 1, 'Yibao', 'bankProvinceName', '银行卡的所在省名称', '', 1533622880, 1533622880),
(2, 1, 'Yibao', 'bankProvinceCode', '银行卡的所在省编码', '', 1533622891, 1533622891),
(3, 1, 'Yibao', 'bankCityName', '银行卡的所在市名称', '', 1533622901, 1533622901),
(4, 1, 'Yibao', 'bankCityCode', '银行卡的所在市编码', '', 1533622911, 1533622911),
(5, 1, 'Yibao', 'bankAreaName', '银行卡的所在区名称', '', 1533622932, 1533622932),
(6, 1, 'Yibao', 'bankAreaCode', '银行卡的所在区编码', '', 1533622945, 1533622945),
(7, 1, 'Yibao', 'bankId', '银行卡的开户行编号', '', 1533622956, 1533622956),
(8, 1, 'Yibao', 'bankUserCert', '银行卡的持卡人身份证', '', 1533622969, 1533622969),
(9, 1, 'Yibao', 'bankUserPhone', '银行卡的预留手机号', '', 1533622991, 1533622991),
(11, 2, 'qtpay', 'lhh', '联行号', '必填', 1537721443, 1537721443);

-- --------------------------------------------------------

--
-- 表的结构 `pay_pay_for_another`
--

CREATE TABLE `pay_pay_for_another` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '主键ID',
  `code` varchar(64) NOT NULL COMMENT '代付代码',
  `title` varchar(64) NOT NULL COMMENT '代付名称',
  `mch_id` varchar(255) NOT NULL DEFAULT ' ' COMMENT '商户号',
  `appid` varchar(100) NOT NULL DEFAULT ' ' COMMENT '应用APPID',
  `appsecret` varchar(100) NOT NULL DEFAULT ' ' COMMENT '应用密钥',
  `signkey` varchar(500) NOT NULL DEFAULT ' ' COMMENT '加密的秘钥',
  `public_key` varchar(1000) NOT NULL DEFAULT '  ' COMMENT '加密的公钥',
  `private_key` varchar(1000) NOT NULL DEFAULT '  ' COMMENT '加密的私钥',
  `exec_gateway` varchar(255) NOT NULL DEFAULT ' ' COMMENT '请求代付的地址',
  `query_gateway` varchar(255) NOT NULL DEFAULT ' ' COMMENT '查询代付的地址',
  `serverreturn` varchar(255) NOT NULL DEFAULT ' ' COMMENT '服务器通知网址',
  `unlockdomain` varchar(255) NOT NULL DEFAULT ' ' COMMENT '防封域名',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更改时间',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否默认：1是，0否',
  `cost_rate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '成本费率',
  `rate_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '费率类型：按单笔收费0，按比例收费：1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代付通道表';

--
-- 转存表中的数据 `pay_pay_for_another`
--

INSERT INTO `pay_pay_for_another` (`id`, `code`, `title`, `mch_id`, `appid`, `appsecret`, `signkey`, `public_key`, `private_key`, `exec_gateway`, `query_gateway`, `serverreturn`, `unlockdomain`, `updatetime`, `status`, `is_default`, `cost_rate`, `rate_type`) VALUES
(2, 'qtpay', '代付一号', '12345678', '', '', 'abcdefg', '', '', '', '', '', '', 1548600691, 1, 0, '0.1500', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_product`
--

CREATE TABLE `pay_product` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '通道名称',
  `code` varchar(50) NOT NULL COMMENT '通道代码',
  `polling` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '接口模式 0 单独 1 轮询',
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '支付类型 1 微信扫码 2 微信H5 3 支付宝扫码 4 支付宝H5 5 网银跳转 6网银直连  7 百度钱包  8 QQ钱包 9 京东钱包',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态',
  `isdisplay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户端显示 1 显示 0 不显示',
  `channel` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '通道ID',
  `weight` text COMMENT '平台默认通道权重'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_product`
--

INSERT INTO `pay_product` (`id`, `name`, `code`, `polling`, `paytype`, `status`, `isdisplay`, `channel`, `weight`) VALUES
(901, '微信H5', 'Wxh5', 0, 2, 1, 1, 0, ''),
(902, '微信扫码', 'Wxsan', 0, 1, 1, 1, 229, '228:1|229:2'),
(903, '支付宝扫码', 'Aliscan', 0, 3, 1, 1, 237, '226:2|230:3'),
(904, '支付宝H5', 'Alipaywap', 0, 4, 1, 1, 216, '216:'),
(905, 'QQ钱包H5', 'Qqwap', 0, 6, 1, 1, 0, ''),
(907, '网银支付', 'Dbank', 0, 9, 1, 1, 0, ''),
(908, 'QQ钱包扫码', 'Qscan', 0, 5, 1, 1, 0, ''),
(909, '百度钱包', 'Baidu', 0, 11, 1, 1, 0, ''),
(910, '京东支付', 'Jdpay', 0, 12, 1, 1, 0, ''),
(911, '快捷支付', 'Kjzf', 0, 7, 1, 1, 0, ''),
(912, '银联H5', 'Ylh5', 0, 14, 1, 1, 0, ''),
(916, '快捷支付H5', 'Kjwap', 0, 8, 1, 1, 0, ''),
(918, '在线网银', '在线网银', 0, 10, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pay_product_user`
--

CREATE TABLE `pay_product_user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT ' ',
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户编号',
  `pid` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户通道ID',
  `polling` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '接口模式：0 单独 1 轮询',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '通道状态 0 关闭 1 启用',
  `channel` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '指定单独通道ID',
  `weight` varchar(255) DEFAULT NULL COMMENT '通道权重'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_product_user`
--

INSERT INTO `pay_product_user` (`id`, `userid`, `pid`, `polling`, `status`, `channel`, `weight`) VALUES
(1, 180762223, 901, 0, 1, 200, ''),
(2, 180762223, 902, 0, 1, 199, ''),
(3, 180762223, 903, 1, 1, 212, '201:1|212:2'),
(4, 180762223, 904, 0, 1, 211, '202:1|211:'),
(5, 180762223, 905, 0, 1, 0, ''),
(6, 180762223, 907, 0, 0, 0, ''),
(7, 180762223, 908, 0, 1, 203, ''),
(8, 180762223, 909, 0, 0, 0, ''),
(9, 180762223, 910, 0, 0, 0, ''),
(10, 180768684, 901, 0, 0, 0, ''),
(11, 180768684, 902, 0, 0, 0, ''),
(12, 180768684, 903, 0, 1, 201, ''),
(13, 180768684, 904, 0, 1, 202, '202:1'),
(14, 180768684, 905, 0, 0, 0, ''),
(15, 180768684, 907, 0, 0, 0, ''),
(16, 180768684, 908, 0, 0, 0, ''),
(17, 180768684, 909, 0, 0, 0, ''),
(18, 180768684, 910, 0, 0, 0, ''),
(19, 180751041, 901, 0, 0, 0, ''),
(20, 180751041, 902, 0, 0, 0, ''),
(21, 180751041, 903, 0, 0, 0, '201:|204:'),
(22, 180751041, 904, 0, 0, 0, ''),
(23, 180751041, 905, 0, 0, 0, ''),
(24, 180751041, 907, 0, 1, 0, ''),
(25, 180751041, 908, 0, 0, 0, ''),
(26, 180751041, 909, 0, 0, 0, ''),
(27, 180751041, 910, 0, 0, 0, ''),
(28, 180751041, 911, 0, 1, 205, ''),
(29, 180751041, 912, 0, 1, 206, ''),
(30, 180762223, 911, 0, 1, 0, ''),
(31, 180762223, 912, 1, 0, 0, ''),
(32, 180768697, 901, 0, 1, 200, ''),
(33, 180768697, 902, 0, 0, 0, ''),
(34, 180768697, 903, 0, 0, 0, ''),
(35, 180768697, 904, 0, 0, 0, ''),
(36, 180768697, 905, 0, 0, 0, ''),
(37, 180768697, 907, 0, 0, 0, ''),
(38, 180768697, 908, 0, 0, 0, ''),
(39, 180768697, 909, 0, 0, 0, ''),
(40, 180768697, 910, 0, 0, 0, ''),
(41, 180768697, 911, 0, 0, 0, ''),
(42, 180768697, 912, 0, 0, 0, ''),
(43, 180768700, 901, 1, 1, 0, '200:'),
(44, 180768700, 902, 1, 1, 0, '199:'),
(45, 180768700, 903, 1, 1, 0, '201:|204:'),
(46, 180768700, 904, 1, 1, 0, '202:'),
(47, 180768700, 905, 0, 0, 0, ''),
(48, 180768700, 907, 0, 0, 0, ''),
(49, 180768700, 908, 0, 0, 0, ''),
(50, 180768700, 909, 0, 0, 0, ''),
(51, 180768700, 910, 0, 0, 0, ''),
(52, 180768700, 911, 0, 0, 0, ''),
(53, 180768700, 912, 0, 0, 0, ''),
(54, 180762223, 913, 0, 1, 207, ''),
(55, 180762223, 914, 0, 1, 207, ''),
(56, 180768704, 901, 1, 1, 0, '200:'),
(57, 180768704, 902, 0, 1, 199, ''),
(58, 180768704, 903, 0, 1, 201, ''),
(59, 180768704, 904, 0, 1, 202, ''),
(60, 180768704, 905, 0, 0, 200, ''),
(61, 180768704, 907, 0, 0, 0, ''),
(62, 180768704, 908, 0, 1, 203, ''),
(63, 180768704, 909, 0, 0, 0, ''),
(64, 180768704, 910, 0, 0, 0, ''),
(65, 180768704, 911, 0, 0, 0, ''),
(66, 180768704, 912, 0, 0, 0, ''),
(67, 180768710, 901, 0, 1, 0, ''),
(68, 180768710, 902, 0, 1, 0, ''),
(69, 180768710, 903, 0, 1, 0, ''),
(70, 180768710, 904, 0, 1, 0, ''),
(71, 180768710, 905, 0, 1, 0, ''),
(72, 180768710, 907, 0, 1, 0, ''),
(73, 180768710, 908, 0, 1, 0, ''),
(74, 180768710, 909, 0, 1, 0, ''),
(75, 180768710, 910, 0, 1, 0, ''),
(76, 180768710, 911, 0, 1, 0, ''),
(77, 180768710, 912, 0, 1, 0, ''),
(78, 180768710, 915, 0, 1, 0, ''),
(79, 180768715, 901, 0, 1, 0, ''),
(80, 180768715, 902, 0, 1, 0, ''),
(81, 180768715, 903, 0, 1, 0, ''),
(82, 180768715, 904, 0, 0, 0, ''),
(83, 180768715, 905, 0, 0, 0, ''),
(84, 180768715, 907, 0, 0, 0, ''),
(85, 180768715, 908, 0, 0, 0, ''),
(86, 180768715, 909, 0, 0, 0, ''),
(87, 180768715, 910, 0, 0, 0, ''),
(88, 180768715, 911, 0, 0, 0, ''),
(89, 180768715, 912, 0, 0, 0, ''),
(90, 180768715, 915, 0, 0, 0, ''),
(91, 180768715, 916, 0, 0, 0, ''),
(92, 180768716, 901, 0, 1, 0, ''),
(93, 180768716, 902, 0, 1, 0, ''),
(94, 180768716, 903, 0, 1, 0, ''),
(95, 180768716, 904, 0, 0, 0, ''),
(96, 180768716, 905, 0, 0, 0, ''),
(97, 180768716, 907, 0, 0, 0, ''),
(98, 180768716, 908, 0, 0, 0, ''),
(99, 180768716, 909, 0, 0, 0, ''),
(100, 180768716, 910, 0, 0, 0, ''),
(101, 180768716, 911, 0, 0, 0, ''),
(102, 180768716, 912, 0, 0, 0, ''),
(103, 180768716, 915, 0, 0, 0, ''),
(104, 180768716, 916, 0, 0, 0, ''),
(105, 180768710, 916, 0, 1, 0, ''),
(106, 180762223, 916, 0, 1, 0, ''),
(107, 180768728, 901, 0, 0, 0, ''),
(108, 180768728, 902, 0, 1, 0, ''),
(109, 180768728, 903, 0, 1, 0, ''),
(110, 180768728, 904, 0, 1, 0, ''),
(111, 180768728, 905, 0, 0, 0, ''),
(112, 180768728, 908, 0, 0, 0, ''),
(113, 180768728, 911, 0, 0, 0, ''),
(114, 180768728, 916, 0, 0, 0, ''),
(115, 180768731, 901, 0, 0, 0, ''),
(116, 180768731, 902, 0, 1, 199, ''),
(117, 180768731, 903, 0, 1, 213, '201:2|213:1'),
(118, 180768731, 904, 0, 1, 214, '202:2|214:1'),
(119, 180768731, 905, 0, 0, 0, ''),
(120, 180768731, 908, 0, 0, 0, ''),
(121, 180768731, 911, 0, 1, 209, ''),
(122, 180768731, 916, 0, 1, 210, ''),
(123, 180768736, 901, 0, 0, 0, ''),
(124, 180768736, 902, 0, 1, 199, ''),
(125, 180768736, 903, 0, 1, 212, ''),
(126, 180768736, 904, 0, 1, 214, ''),
(127, 180768736, 911, 0, 0, 0, ''),
(128, 180768736, 916, 0, 0, 0, ''),
(129, 180768735, 901, 0, 0, 0, ''),
(130, 180768735, 902, 0, 0, 0, ''),
(131, 180768735, 903, 0, 1, 213, ''),
(132, 180768735, 904, 0, 1, 214, ''),
(133, 180768735, 911, 0, 0, 0, ''),
(134, 180768735, 916, 0, 0, 0, ''),
(135, 180768733, 901, 0, 0, 0, ''),
(136, 180768733, 902, 0, 1, 199, ''),
(137, 180768733, 903, 0, 1, 213, '201:1|213:2'),
(138, 180768733, 904, 0, 1, 214, '202:1|214:2'),
(139, 180768733, 911, 0, 1, 209, ''),
(140, 180768733, 916, 0, 1, 210, ''),
(141, 180768730, 901, 0, 0, 0, ''),
(142, 180768730, 902, 0, 1, 199, ''),
(143, 180768730, 903, 0, 1, 201, ''),
(144, 180768730, 904, 0, 1, 202, ''),
(145, 180768730, 911, 0, 1, 209, ''),
(146, 180768730, 916, 0, 1, 210, ''),
(147, 180768734, 901, 0, 0, 0, ''),
(148, 180768734, 902, 0, 1, 199, ''),
(149, 180768734, 903, 0, 1, 201, ''),
(150, 180768734, 904, 0, 1, 202, ''),
(151, 180768734, 911, 0, 1, 209, ''),
(152, 180768734, 916, 0, 1, 210, ''),
(153, 180768732, 901, 0, 0, 0, ''),
(154, 180768732, 902, 0, 1, 199, ''),
(155, 180768732, 903, 0, 1, 213, '213:2'),
(156, 180768732, 904, 0, 1, 214, '202:1|214:2'),
(157, 180768732, 911, 0, 1, 209, ''),
(158, 180768732, 916, 0, 1, 210, ''),
(159, 180768737, 901, 0, 0, 0, ''),
(160, 180768737, 902, 0, 1, 199, ''),
(161, 180768737, 903, 0, 1, 201, ''),
(162, 180768737, 904, 0, 1, 202, ''),
(163, 180768737, 911, 0, 1, 209, ''),
(164, 180768737, 916, 0, 1, 210, ''),
(165, 180768738, 901, 0, 0, 0, ''),
(166, 180768738, 902, 0, 1, 199, ''),
(167, 180768738, 903, 0, 1, 201, ''),
(168, 180768738, 904, 0, 1, 202, ''),
(169, 180768738, 911, 0, 1, 209, ''),
(170, 180768738, 916, 0, 1, 210, ''),
(171, 180768741, 901, 0, 0, 0, ''),
(172, 180768741, 902, 0, 1, 199, ''),
(173, 180768741, 903, 0, 1, 201, ''),
(174, 180768741, 904, 0, 1, 202, ''),
(175, 180768741, 911, 0, 1, 209, ''),
(176, 180768741, 916, 0, 1, 210, ''),
(177, 180768740, 901, 0, 0, 0, ''),
(178, 180768740, 902, 0, 1, 199, ''),
(179, 180768740, 903, 0, 1, 201, ''),
(180, 180768740, 904, 0, 1, 202, ''),
(181, 180768740, 911, 0, 1, 209, ''),
(182, 180768740, 916, 0, 1, 210, ''),
(183, 180768742, 901, 0, 0, 0, ''),
(184, 180768742, 902, 0, 1, 199, ''),
(185, 180768742, 903, 0, 1, 213, '201:1|213:2'),
(186, 180768742, 904, 0, 1, 214, '202:1|214:2'),
(187, 180768742, 911, 0, 1, 209, ''),
(188, 180768742, 916, 0, 1, 210, ''),
(189, 180768743, 901, 0, 0, 0, ''),
(190, 180768743, 902, 0, 1, 199, ''),
(191, 180768743, 903, 0, 1, 201, '201:|212:'),
(192, 180768743, 904, 0, 1, 202, '202:|211:'),
(193, 180768743, 911, 0, 1, 0, ''),
(194, 180768743, 916, 0, 1, 0, ''),
(195, 180768750, 901, 0, 0, 0, ''),
(196, 180768750, 902, 0, 1, 199, ''),
(197, 180768750, 903, 0, 1, 212, '212:1|213:2'),
(198, 180768750, 904, 0, 1, 211, '211:1|214:2'),
(199, 180768750, 911, 0, 1, 209, ''),
(200, 180768750, 916, 0, 1, 210, ''),
(201, 180768749, 901, 0, 0, 0, ''),
(202, 180768749, 902, 0, 0, 199, ''),
(203, 180768749, 903, 0, 1, 213, '212:1|213:2'),
(204, 180768749, 904, 0, 1, 214, '211:1|214:2'),
(205, 180768749, 911, 0, 0, 209, ''),
(206, 180768749, 916, 0, 0, 210, ''),
(207, 180768748, 901, 0, 0, 0, ''),
(208, 180768748, 902, 0, 0, 199, ''),
(209, 180768748, 903, 0, 1, 212, '201:1|213:2'),
(210, 180768748, 904, 0, 1, 211, '211:1|214:2'),
(211, 180768748, 911, 0, 0, 209, ''),
(212, 180768748, 916, 0, 0, 210, ''),
(213, 180768747, 901, 0, 0, 0, ''),
(214, 180768747, 902, 0, 1, 199, ''),
(215, 180768747, 903, 0, 1, 212, '212:1|213:2'),
(216, 180768747, 904, 0, 1, 211, ''),
(217, 180768747, 911, 1, 0, 209, ''),
(218, 180768747, 916, 0, 1, 210, ''),
(219, 180768746, 901, 0, 0, 0, ''),
(220, 180768746, 902, 0, 1, 199, ''),
(221, 180768746, 903, 0, 1, 212, '201:1|213:2'),
(222, 180768746, 904, 0, 1, 211, '202:1|214:2'),
(223, 180768746, 911, 0, 1, 209, ''),
(224, 180768746, 916, 0, 1, 210, ''),
(225, 180768745, 901, 0, 0, 0, ''),
(226, 180768745, 902, 0, 1, 199, ''),
(227, 180768745, 903, 0, 1, 201, '201:1|212:2'),
(228, 180768745, 904, 0, 1, 202, '202:1|211:2'),
(229, 180768745, 911, 0, 1, 209, ''),
(230, 180768745, 916, 0, 1, 210, ''),
(231, 180768744, 901, 0, 0, 0, ''),
(232, 180768744, 902, 0, 1, 199, ''),
(233, 180768744, 903, 0, 1, 212, '201:1|213:2'),
(234, 180768744, 904, 0, 1, 211, '202:1|214:2'),
(235, 180768744, 911, 0, 1, 209, ''),
(236, 180768744, 916, 0, 1, 210, ''),
(237, 180768751, 901, 0, 0, 0, ''),
(238, 180768751, 902, 0, 0, 199, ''),
(239, 180768751, 903, 0, 1, 213, '212:1'),
(240, 180768751, 904, 0, 1, 214, '211:1|214:2'),
(241, 180768751, 911, 0, 1, 0, ''),
(242, 180768751, 916, 0, 1, 0, ''),
(243, 2, 901, 0, 1, 0, ''),
(244, 2, 902, 0, 1, 0, ''),
(245, 2, 903, 0, 1, 0, ''),
(246, 2, 904, 0, 1, 0, ''),
(247, 2, 911, 0, 1, 0, ''),
(248, 2, 916, 0, 1, 0, ''),
(249, 2, 905, 0, 1, 0, ''),
(250, 2, 907, 0, 1, 0, ''),
(251, 2, 908, 0, 1, 0, ''),
(252, 2, 909, 0, 1, 0, ''),
(253, 2, 910, 0, 1, 0, ''),
(254, 2, 912, 0, 1, 0, ''),
(255, 2, 918, 0, 1, 0, ''),
(256, 13, 901, 0, 0, 218, ''),
(257, 13, 902, 0, 1, 228, ''),
(258, 13, 903, 0, 0, 0, ''),
(259, 13, 904, 0, 0, 0, ''),
(260, 13, 905, 0, 0, 0, ''),
(261, 13, 907, 0, 0, 0, ''),
(262, 13, 908, 0, 0, 0, ''),
(263, 13, 909, 0, 0, 0, ''),
(264, 13, 910, 0, 0, 0, ''),
(265, 13, 911, 0, 0, 0, ''),
(266, 13, 912, 0, 0, 0, ''),
(267, 13, 916, 0, 0, 0, ''),
(268, 13, 918, 0, 0, 0, ''),
(269, 5, 901, 0, 1, 0, ''),
(270, 5, 902, 0, 1, 0, '229:'),
(271, 5, 903, 0, 1, 226, '215:1'),
(272, 5, 904, 0, 1, 227, ''),
(273, 5, 905, 0, 1, 0, ''),
(274, 5, 907, 0, 1, 0, '222:|231:'),
(275, 5, 908, 0, 1, 0, '224:'),
(276, 5, 909, 0, 1, 0, ''),
(277, 5, 910, 0, 1, 0, ''),
(278, 5, 911, 0, 1, 0, '223:'),
(279, 5, 912, 0, 1, 0, ''),
(280, 5, 916, 0, 1, 0, ''),
(281, 5, 918, 0, 1, 0, '221:'),
(282, 17, 901, 0, 1, 0, ''),
(283, 17, 902, 0, 1, 0, ''),
(284, 17, 903, 0, 1, 0, ''),
(285, 17, 904, 0, 1, 227, ''),
(286, 17, 905, 0, 1, 0, ''),
(287, 17, 907, 0, 1, 0, ''),
(288, 17, 908, 0, 1, 0, ''),
(289, 17, 909, 0, 1, 0, ''),
(290, 17, 910, 0, 1, 0, ''),
(291, 17, 911, 0, 1, 0, ''),
(292, 17, 912, 0, 1, 0, ''),
(293, 17, 916, 0, 1, 0, ''),
(294, 17, 918, 0, 1, 0, ''),
(295, 4, 901, 0, 0, 218, ''),
(296, 4, 902, 0, 1, 228, ''),
(297, 4, 903, 0, 0, 215, ''),
(298, 4, 904, 0, 0, 216, ''),
(299, 4, 905, 0, 0, 0, ''),
(300, 4, 907, 0, 0, 0, ''),
(301, 4, 908, 0, 0, 0, ''),
(302, 4, 909, 0, 0, 0, ''),
(303, 4, 910, 0, 0, 0, ''),
(304, 4, 911, 0, 0, 0, ''),
(305, 4, 912, 0, 0, 0, ''),
(306, 4, 916, 0, 0, 0, ''),
(307, 4, 918, 0, 0, 221, ''),
(308, 19, 901, 0, 1, 218, ''),
(309, 19, 902, 0, 1, 228, ''),
(310, 19, 903, 0, 1, 215, ''),
(311, 19, 904, 0, 1, 216, ''),
(312, 19, 905, 0, 1, 0, ''),
(313, 19, 907, 0, 1, 0, ''),
(314, 19, 908, 0, 1, 0, ''),
(315, 19, 909, 0, 0, 0, ''),
(316, 19, 910, 0, 0, 0, ''),
(317, 19, 911, 0, 0, 0, ''),
(318, 19, 912, 0, 0, 0, ''),
(319, 19, 916, 0, 0, 0, ''),
(320, 19, 918, 0, 0, 0, ''),
(321, 23, 901, 0, 0, 0, ''),
(322, 23, 902, 0, 0, 0, ''),
(323, 23, 903, 0, 1, 215, ''),
(324, 23, 904, 0, 0, 0, ''),
(325, 23, 905, 0, 0, 0, ''),
(326, 23, 907, 0, 0, 0, ''),
(327, 23, 908, 0, 0, 0, ''),
(328, 23, 909, 0, 0, 0, ''),
(329, 23, 910, 0, 0, 0, ''),
(330, 23, 911, 0, 0, 0, ''),
(331, 23, 912, 0, 0, 0, ''),
(332, 23, 916, 0, 0, 0, ''),
(333, 23, 918, 0, 0, 0, ''),
(490, 53, 901, 0, 0, 0, ''),
(334, 30, 901, 0, 1, 0, ''),
(335, 30, 902, 0, 1, 0, ''),
(336, 30, 903, 0, 1, 0, ''),
(337, 30, 904, 1, 1, 216, '216:|227:|233:'),
(338, 30, 905, 0, 1, 0, ''),
(339, 30, 907, 0, 1, 0, ''),
(340, 30, 908, 0, 1, 0, ''),
(341, 30, 909, 0, 1, 0, ''),
(342, 30, 910, 0, 1, 0, ''),
(343, 30, 911, 0, 1, 0, ''),
(344, 30, 912, 0, 1, 0, ''),
(345, 30, 916, 0, 1, 0, ''),
(346, 30, 918, 0, 1, 0, ''),
(492, 53, 903, 0, 1, 226, ''),
(347, 31, 901, 0, 0, 218, '218:'),
(348, 31, 902, 1, 1, 217, '217:1|228:2|229:2'),
(349, 31, 903, 0, 0, 0, '215:|225:|226:|230:'),
(350, 31, 904, 0, 0, 0, '216:|227:|233:'),
(351, 31, 905, 0, 0, 0, ''),
(352, 31, 907, 0, 0, 0, '222:|231:'),
(353, 31, 908, 0, 0, 0, '224:'),
(354, 31, 909, 0, 0, 0, ''),
(355, 31, 910, 0, 0, 0, ''),
(356, 31, 911, 0, 0, 0, '223:'),
(357, 31, 912, 0, 0, 0, ''),
(358, 31, 916, 0, 0, 0, ''),
(359, 31, 918, 0, 0, 0, '221:'),
(360, 34, 901, 0, 0, 218, ''),
(361, 34, 902, 0, 1, 228, ''),
(362, 34, 903, 0, 0, 0, ''),
(363, 34, 904, 0, 0, 0, ''),
(364, 34, 905, 0, 0, 0, ''),
(365, 34, 907, 0, 0, 0, ''),
(366, 34, 908, 0, 0, 0, ''),
(367, 34, 909, 0, 0, 0, ''),
(368, 34, 910, 0, 0, 0, ''),
(369, 34, 911, 0, 0, 0, ''),
(370, 34, 912, 0, 0, 0, ''),
(371, 34, 916, 0, 0, 0, ''),
(372, 34, 918, 0, 0, 0, ''),
(373, 9, 901, 0, 0, 0, ''),
(374, 9, 902, 1, 1, 229, '228:|229:'),
(375, 9, 903, 0, 0, 225, ''),
(376, 9, 904, 0, 0, 0, ''),
(377, 9, 905, 0, 0, 0, ''),
(378, 9, 907, 0, 0, 0, ''),
(379, 9, 908, 0, 0, 0, ''),
(380, 9, 909, 0, 0, 0, ''),
(381, 9, 910, 0, 0, 0, ''),
(382, 9, 911, 0, 0, 0, ''),
(383, 9, 912, 0, 0, 0, ''),
(384, 9, 916, 0, 0, 0, ''),
(385, 9, 918, 0, 0, 0, ''),
(386, 36, 901, 0, 0, 218, ''),
(387, 36, 902, 0, 0, 229, '229:3'),
(388, 36, 903, 0, 1, 225, ''),
(389, 36, 904, 0, 1, 216, ''),
(390, 36, 905, 0, 0, 0, ''),
(391, 36, 907, 0, 0, 0, ''),
(392, 36, 908, 0, 0, 0, ''),
(393, 36, 909, 0, 0, 0, ''),
(394, 36, 910, 0, 0, 0, ''),
(395, 36, 911, 0, 0, 0, ''),
(396, 36, 912, 0, 0, 0, ''),
(397, 36, 916, 0, 0, 0, ''),
(398, 36, 918, 0, 0, 0, ''),
(399, 6, 901, 0, 0, 0, ''),
(400, 6, 902, 0, 1, 228, ''),
(401, 6, 903, 0, 0, 0, ''),
(402, 6, 904, 0, 0, 0, ''),
(403, 6, 905, 0, 0, 0, ''),
(404, 6, 907, 0, 0, 0, ''),
(405, 6, 908, 0, 0, 0, ''),
(406, 6, 909, 0, 0, 0, ''),
(407, 6, 910, 0, 0, 0, ''),
(408, 6, 911, 0, 0, 0, ''),
(409, 6, 912, 0, 0, 0, ''),
(410, 6, 916, 0, 0, 0, ''),
(411, 6, 918, 0, 0, 0, ''),
(412, 37, 901, 0, 0, 0, ''),
(413, 37, 902, 0, 1, 228, ''),
(414, 37, 903, 0, 0, 0, ''),
(415, 37, 904, 0, 0, 0, ''),
(416, 37, 905, 0, 0, 0, ''),
(417, 37, 907, 0, 0, 0, ''),
(418, 37, 908, 0, 0, 0, ''),
(419, 37, 909, 0, 0, 0, ''),
(420, 37, 910, 0, 0, 0, ''),
(421, 37, 911, 0, 0, 0, ''),
(422, 37, 912, 0, 0, 0, ''),
(423, 37, 916, 0, 0, 0, ''),
(424, 37, 918, 0, 0, 0, ''),
(425, 39, 901, 0, 0, 0, ''),
(426, 39, 902, 0, 1, 229, ''),
(427, 39, 903, 0, 0, 0, ''),
(428, 39, 904, 0, 0, 0, ''),
(429, 39, 905, 0, 0, 0, ''),
(430, 39, 907, 0, 0, 0, ''),
(431, 39, 908, 0, 0, 0, ''),
(432, 39, 909, 0, 0, 0, ''),
(433, 39, 910, 0, 0, 0, ''),
(434, 39, 911, 0, 0, 0, ''),
(435, 39, 912, 0, 0, 0, ''),
(436, 39, 916, 0, 0, 0, ''),
(437, 39, 918, 0, 0, 0, ''),
(438, 41, 901, 0, 0, 0, ''),
(439, 41, 902, 0, 1, 228, ''),
(440, 41, 903, 0, 0, 0, ''),
(441, 41, 904, 0, 0, 0, ''),
(442, 41, 905, 0, 0, 0, ''),
(443, 41, 907, 0, 0, 0, ''),
(444, 41, 908, 0, 0, 0, ''),
(445, 41, 909, 0, 0, 0, ''),
(446, 41, 910, 0, 0, 0, ''),
(447, 41, 911, 0, 0, 0, ''),
(448, 41, 912, 0, 0, 0, ''),
(449, 41, 916, 0, 0, 0, ''),
(450, 41, 918, 0, 0, 0, ''),
(451, 38, 901, 0, 0, 0, ''),
(452, 38, 902, 1, 1, 0, '228:1|229:2'),
(453, 38, 903, 0, 1, 225, ''),
(454, 38, 904, 0, 0, 0, ''),
(455, 38, 905, 0, 0, 0, ''),
(456, 38, 907, 0, 0, 0, ''),
(457, 38, 908, 0, 0, 0, ''),
(458, 38, 909, 0, 0, 0, ''),
(459, 38, 910, 0, 0, 0, ''),
(460, 38, 911, 0, 0, 0, ''),
(461, 38, 912, 0, 0, 0, ''),
(462, 38, 916, 0, 0, 0, ''),
(463, 38, 918, 0, 0, 0, ''),
(491, 53, 902, 0, 0, 0, ''),
(464, 33, 901, 0, 0, 0, ''),
(465, 33, 902, 0, 0, 0, ''),
(466, 33, 903, 0, 0, 0, ''),
(467, 33, 904, 0, 0, 0, ''),
(468, 33, 905, 0, 0, 0, ''),
(469, 33, 907, 0, 0, 0, ''),
(470, 33, 908, 0, 0, 0, ''),
(471, 33, 909, 0, 0, 0, ''),
(472, 33, 910, 0, 0, 0, ''),
(473, 33, 911, 0, 0, 0, ''),
(474, 33, 912, 0, 0, 0, ''),
(475, 33, 916, 0, 0, 0, ''),
(476, 33, 918, 0, 0, 0, ''),
(477, 48, 901, 0, 0, 0, ''),
(478, 48, 902, 0, 1, 229, '217:3|228:0|229:1'),
(479, 48, 903, 0, 0, 0, ''),
(480, 48, 904, 0, 0, 0, ''),
(481, 48, 905, 0, 0, 0, ''),
(482, 48, 907, 0, 0, 0, ''),
(483, 48, 908, 0, 0, 0, ''),
(484, 48, 909, 0, 0, 0, ''),
(485, 48, 910, 0, 0, 0, ''),
(486, 48, 911, 0, 0, 0, ''),
(487, 48, 912, 0, 0, 0, ''),
(488, 48, 916, 0, 0, 0, ''),
(489, 48, 918, 0, 0, 0, ''),
(493, 53, 904, 0, 0, 0, ''),
(494, 53, 905, 0, 0, 0, ''),
(495, 53, 907, 0, 0, 0, ''),
(496, 53, 908, 0, 0, 0, ''),
(497, 53, 909, 0, 0, 0, ''),
(498, 53, 910, 0, 0, 0, ''),
(499, 53, 911, 0, 0, 0, ''),
(500, 53, 912, 0, 0, 0, ''),
(501, 53, 916, 0, 0, 0, ''),
(502, 53, 918, 0, 0, 0, ''),
(503, 56, 901, 0, 0, 0, ''),
(504, 56, 902, 0, 0, 0, ''),
(505, 56, 903, 0, 1, 226, ''),
(506, 56, 904, 0, 0, 0, ''),
(507, 56, 905, 0, 0, 0, ''),
(508, 56, 907, 0, 0, 0, ''),
(509, 56, 908, 0, 0, 0, ''),
(510, 56, 909, 0, 0, 0, ''),
(511, 56, 910, 0, 0, 0, ''),
(512, 56, 911, 0, 0, 0, ''),
(513, 56, 912, 0, 0, 0, ''),
(514, 56, 916, 0, 0, 0, ''),
(515, 56, 918, 0, 0, 0, ''),
(516, 55, 901, 0, 0, 0, ''),
(517, 55, 902, 0, 0, 0, ''),
(518, 55, 903, 0, 1, 226, ''),
(519, 55, 904, 0, 0, 0, ''),
(520, 55, 905, 0, 0, 0, ''),
(521, 55, 907, 0, 0, 0, ''),
(522, 55, 908, 0, 0, 0, ''),
(523, 55, 909, 0, 0, 0, ''),
(524, 55, 910, 0, 0, 0, ''),
(525, 55, 911, 0, 0, 0, ''),
(526, 55, 912, 0, 0, 0, ''),
(527, 55, 916, 0, 0, 0, ''),
(528, 55, 918, 0, 0, 0, ''),
(529, 61, 901, 0, 1, 0, ''),
(530, 61, 902, 0, 0, 0, ''),
(531, 61, 903, 0, 1, 0, ''),
(532, 61, 904, 0, 1, 0, ''),
(533, 61, 905, 0, 0, 0, ''),
(534, 61, 907, 0, 0, 0, ''),
(535, 61, 908, 0, 0, 0, ''),
(536, 61, 909, 0, 0, 0, ''),
(537, 61, 910, 0, 0, 0, ''),
(538, 61, 911, 0, 1, 0, ''),
(539, 61, 912, 0, 1, 0, ''),
(540, 61, 916, 0, 1, 0, ''),
(541, 61, 918, 0, 1, 221, ''),
(542, 62, 901, 0, 0, 0, ''),
(543, 62, 902, 0, 1, 217, ''),
(544, 62, 903, 0, 0, 0, ''),
(545, 62, 904, 0, 0, 0, ''),
(546, 62, 905, 0, 0, 0, ''),
(547, 62, 907, 0, 0, 0, ''),
(548, 62, 908, 0, 0, 0, ''),
(549, 62, 909, 0, 0, 0, ''),
(550, 62, 910, 0, 0, 0, ''),
(551, 62, 911, 0, 0, 0, ''),
(552, 62, 912, 0, 0, 0, ''),
(553, 62, 916, 0, 0, 0, ''),
(554, 62, 918, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pay_reconciliation`
--

CREATE TABLE `pay_reconciliation` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT '0' COMMENT '用户ID',
  `order_total_count` int(11) DEFAULT '0' COMMENT '总订单数',
  `order_success_count` int(11) DEFAULT '0' COMMENT '成功订单数',
  `order_fail_count` int(11) DEFAULT '0' COMMENT '未支付订单数',
  `order_total_amount` decimal(11,4) DEFAULT '0.0000' COMMENT '订单总额',
  `order_success_amount` decimal(11,4) DEFAULT '0.0000' COMMENT '订单实付总额',
  `date` date DEFAULT NULL COMMENT '日期',
  `ctime` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_reconciliation`
--

INSERT INTO `pay_reconciliation` (`id`, `userid`, `order_total_count`, `order_success_count`, `order_fail_count`, `order_total_amount`, `order_success_amount`, `date`, `ctime`) VALUES
(1, 2, 0, 0, 0, NULL, NULL, '2018-09-25', 1537847211),
(2, 2, 0, 0, 0, NULL, NULL, '2018-09-24', 1537847211),
(3, 2, 0, 0, 0, NULL, NULL, '2018-09-27', 1538043984),
(4, 2, 0, 0, 0, NULL, NULL, '2018-09-26', 1538043984),
(5, 2, 0, 0, 0, NULL, NULL, '2018-10-10', 1539141066),
(6, 2, 0, 0, 0, NULL, NULL, '2018-10-09', 1539141066),
(7, 2, 0, 0, 0, NULL, NULL, '2018-10-08', 1539141066),
(8, 2, 0, 0, 0, NULL, NULL, '2018-10-07', 1539141066),
(9, 2, 0, 0, 0, NULL, NULL, '2018-10-06', 1539141066),
(10, 2, 0, 0, 0, NULL, NULL, '2018-10-05', 1539141066),
(11, 2, 0, 0, 0, NULL, NULL, '2018-10-04', 1539141066),
(12, 2, 0, 0, 0, NULL, NULL, '2018-10-03', 1539141066),
(13, 2, 0, 0, 0, NULL, NULL, '2018-10-02', 1539141066),
(14, 2, 0, 0, 0, NULL, NULL, '2018-10-01', 1539141066),
(15, 5, 0, 0, 0, NULL, NULL, '2018-10-16', 1539694388),
(16, 5, 0, 0, 0, NULL, NULL, '2018-10-15', 1539694388),
(17, 5, 0, 0, 0, NULL, NULL, '2018-10-14', 1539694388),
(18, 5, 0, 0, 0, NULL, NULL, '2018-10-17', 1539707042),
(19, 5, 0, 0, 0, NULL, NULL, '2018-10-18', 1539867731),
(20, 5, 0, 0, 0, NULL, NULL, '2018-10-20', 1540038139),
(21, 5, 0, 0, 0, NULL, NULL, '2018-10-19', 1540038139),
(22, 5, 0, 0, 0, NULL, NULL, '2018-10-21', 1540064223),
(23, 6, 0, 0, 0, NULL, NULL, '2018-10-30', 1540909439),
(24, 6, 0, 0, 0, NULL, NULL, '2018-10-29', 1540909439),
(25, 6, 0, 0, 0, NULL, NULL, '2018-10-28', 1540909439),
(26, 6, 0, 0, 0, NULL, NULL, '2018-10-27', 1540909439),
(27, 6, 0, 0, 0, NULL, NULL, '2018-10-26', 1540909439),
(28, 6, 0, 0, 0, NULL, NULL, '2018-10-25', 1540909439),
(29, 6, 0, 0, 0, NULL, NULL, '2018-10-24', 1540909439),
(30, 6, 0, 0, 0, NULL, NULL, '2018-10-23', 1540909439),
(31, 6, 0, 0, 0, NULL, NULL, '2018-10-22', 1540909439),
(32, 6, 0, 0, 0, NULL, NULL, '2018-10-21', 1540909439),
(33, 5, 0, 0, 0, NULL, NULL, '2018-11-01', 1541003877),
(34, 5, 0, 0, 0, NULL, NULL, '2018-10-31', 1541003877),
(35, 5, 0, 0, 0, NULL, NULL, '2018-10-30', 1541003877),
(36, 5, 0, 0, 0, NULL, NULL, '2018-10-29', 1541003877),
(37, 5, 0, 0, 0, NULL, NULL, '2018-10-28', 1541003877),
(38, 5, 0, 0, 0, NULL, NULL, '2018-10-27', 1541003877),
(39, 5, 0, 0, 0, NULL, NULL, '2018-10-26', 1541003877),
(40, 5, 0, 0, 0, NULL, NULL, '2018-10-25', 1541003877),
(41, 5, 0, 0, 0, NULL, NULL, '2018-10-24', 1541003877),
(42, 5, 0, 0, 0, NULL, NULL, '2018-10-23', 1541003877),
(43, 5, 0, 0, 0, NULL, NULL, '2018-10-22', 1541003882),
(44, 14, 0, 0, 0, NULL, NULL, '2018-11-03', 1541259685),
(45, 14, 0, 0, 0, NULL, NULL, '2018-11-02', 1541259685),
(46, 14, 0, 0, 0, NULL, NULL, '2018-11-01', 1541259685),
(47, 14, 0, 0, 0, NULL, NULL, '2018-10-31', 1541259685),
(48, 14, 0, 0, 0, NULL, NULL, '2018-10-30', 1541259685),
(49, 14, 0, 0, 0, NULL, NULL, '2018-10-29', 1541259685),
(50, 14, 0, 0, 0, NULL, NULL, '2018-10-28', 1541259685),
(51, 14, 0, 0, 0, NULL, NULL, '2018-10-27', 1541259685),
(52, 14, 0, 0, 0, NULL, NULL, '2018-10-26', 1541259685),
(53, 14, 0, 0, 0, NULL, NULL, '2018-10-25', 1541259685),
(54, 14, 0, 0, 0, NULL, NULL, '2018-11-06', 1541443458),
(55, 14, 0, 0, 0, NULL, NULL, '2018-11-05', 1541443458),
(56, 14, 0, 0, 0, NULL, NULL, '2018-11-04', 1541443458),
(57, 5, 12, 4, 8, '1189.0000', '396.0000', '2018-11-07', 1541523096),
(58, 5, 0, 0, 0, NULL, NULL, '2018-11-06', 1541523096),
(59, 5, 0, 0, 0, NULL, NULL, '2018-11-05', 1541523096),
(60, 5, 0, 0, 0, NULL, NULL, '2018-11-04', 1541523096),
(61, 5, 0, 0, 0, NULL, NULL, '2018-11-03', 1541523096),
(62, 5, 0, 0, 0, NULL, NULL, '2018-11-02', 1541523096),
(63, 14, 0, 0, 0, NULL, NULL, '2018-11-16', 1542361195),
(64, 14, 0, 0, 0, NULL, NULL, '2018-11-15', 1542361195),
(65, 14, 0, 0, 0, NULL, NULL, '2018-11-14', 1542361195),
(66, 14, 0, 0, 0, NULL, NULL, '2018-11-13', 1542361195),
(67, 14, 0, 0, 0, NULL, NULL, '2018-11-12', 1542361195),
(68, 14, 0, 0, 0, NULL, NULL, '2018-11-11', 1542361195),
(69, 14, 0, 0, 0, NULL, NULL, '2018-11-10', 1542361195),
(70, 14, 0, 0, 0, NULL, NULL, '2018-11-09', 1542361195),
(71, 14, 0, 0, 0, NULL, NULL, '2018-11-08', 1542361195),
(72, 14, 0, 0, 0, NULL, NULL, '2018-11-07', 1542361195),
(73, 5, 0, 0, 0, NULL, NULL, '2018-11-21', 1542783404),
(74, 5, 0, 0, 0, NULL, NULL, '2018-11-20', 1542783404),
(75, 5, 0, 0, 0, NULL, NULL, '2018-11-19', 1542783404),
(76, 5, 1, 0, 1, '100.0000', NULL, '2018-11-18', 1542783404),
(77, 5, 4, 0, 4, '396.0000', NULL, '2018-11-17', 1542783404),
(78, 5, 0, 0, 0, NULL, NULL, '2018-11-16', 1542783404),
(79, 5, 0, 0, 0, NULL, NULL, '2018-11-15', 1542783404),
(80, 5, 0, 0, 0, NULL, NULL, '2018-11-14', 1542783404),
(81, 5, 0, 0, 0, NULL, NULL, '2018-11-13', 1542783404),
(82, 5, 0, 0, 0, NULL, NULL, '2018-11-12', 1542783404),
(83, 5, 0, 0, 0, NULL, NULL, '2018-11-11', 1542798639),
(84, 5, 0, 0, 0, NULL, NULL, '2018-11-10', 1542798639),
(85, 5, 0, 0, 0, NULL, NULL, '2018-11-09', 1542798639),
(86, 5, 0, 0, 0, NULL, NULL, '2018-11-08', 1542798639),
(87, 14, 0, 0, 0, NULL, NULL, '2018-11-22', 1542860048),
(88, 14, 0, 0, 0, NULL, NULL, '2018-11-21', 1542860048),
(89, 14, 0, 0, 0, NULL, NULL, '2018-11-20', 1542860048),
(90, 14, 0, 0, 0, NULL, NULL, '2018-11-19', 1542860048),
(91, 14, 0, 0, 0, NULL, NULL, '2018-11-18', 1542860048),
(92, 14, 0, 0, 0, NULL, NULL, '2018-11-17', 1542860048),
(93, 14, 0, 0, 0, NULL, NULL, '2018-10-23', 1542860063),
(94, NULL, 0, 0, 0, NULL, NULL, '2018-11-22', 1542878867),
(95, NULL, 0, 0, 0, NULL, NULL, '2018-11-21', 1542878867),
(96, NULL, 0, 0, 0, NULL, NULL, '2018-11-20', 1542878867),
(97, NULL, 0, 0, 0, NULL, NULL, '2018-11-19', 1542878867),
(98, NULL, 0, 0, 0, NULL, NULL, '2018-11-18', 1542878867),
(99, NULL, 0, 0, 0, NULL, NULL, '2018-11-17', 1542878867),
(100, NULL, 0, 0, 0, NULL, NULL, '2018-11-16', 1542878867),
(101, NULL, 0, 0, 0, NULL, NULL, '2018-11-15', 1542878867),
(102, NULL, 0, 0, 0, NULL, NULL, '2018-11-14', 1542878867),
(103, NULL, 0, 0, 0, NULL, NULL, '2018-11-13', 1542878867),
(104, NULL, 0, 0, 0, NULL, NULL, '2018-11-23', 1542903537),
(105, NULL, 0, 0, 0, NULL, NULL, '2018-11-22', 1542903537),
(106, NULL, 0, 0, 0, NULL, NULL, '2018-11-21', 1542903537),
(107, NULL, 0, 0, 0, NULL, NULL, '2018-11-20', 1542903537),
(108, NULL, 0, 0, 0, NULL, NULL, '2018-11-19', 1542903537),
(109, NULL, 0, 0, 0, NULL, NULL, '2018-11-18', 1542903537),
(110, NULL, 0, 0, 0, NULL, NULL, '2018-11-17', 1542903537),
(111, NULL, 0, 0, 0, NULL, NULL, '2018-11-16', 1542903537),
(112, NULL, 0, 0, 0, NULL, NULL, '2018-11-15', 1542903537),
(113, NULL, 0, 0, 0, NULL, NULL, '2018-11-14', 1542903537),
(114, 17, 0, 0, 0, NULL, NULL, '2018-11-23', 1542958124),
(115, 17, 0, 0, 0, NULL, NULL, '2018-11-22', 1542958124),
(116, 17, 0, 0, 0, NULL, NULL, '2018-11-21', 1542958124),
(117, 17, 0, 0, 0, NULL, NULL, '2018-11-24', 1543055360),
(118, 14, 0, 0, 0, NULL, NULL, '2018-11-24', 1543056712),
(119, 14, 0, 0, 0, NULL, NULL, '2018-11-23', 1543056712),
(120, 19, 3, 0, 3, '13.0000', NULL, '2018-11-26', 1543239582),
(121, 19, 2, 0, 2, '2.0000', NULL, '2018-11-25', 1543239582),
(122, 5, 20, 2, 18, '12.0800', '0.0200', '2018-11-28', 1543335901),
(123, 5, 4, 0, 4, '4.0000', NULL, '2018-11-27', 1543335901),
(124, 5, 1, 0, 1, '1.0000', NULL, '2018-11-26', 1543335901),
(125, 5, 4, 2, 2, '4.0000', '2.0000', '2018-11-25', 1543335901),
(126, 5, 0, 0, 0, NULL, NULL, '2018-11-24', 1543335901),
(127, 5, 0, 0, 0, NULL, NULL, '2018-11-23', 1543335901),
(128, 5, 0, 0, 0, NULL, NULL, '2018-11-22', 1543335901),
(129, 27, 0, 0, 0, NULL, NULL, '2018-11-29', 1543423278),
(130, 27, 0, 0, 0, NULL, NULL, '2018-11-28', 1543423278),
(131, 5, 7, 0, 7, '0.0700', NULL, '2018-11-30', 1543550367),
(132, 5, 21, 1, 20, '0.2100', '0.0100', '2018-11-29', 1543550367),
(133, 5, 16, 4, 12, '335.0800', '34.0000', '2018-12-03', 1543807826),
(134, 5, 6, 0, 6, '0.0600', NULL, '2018-12-02', 1543807826),
(135, 5, 29, 0, 29, '11.2900', NULL, '2018-12-01', 1543807826),
(136, 31, 0, 0, 0, NULL, NULL, '2018-12-03', 1543808016),
(137, 31, 0, 0, 0, NULL, NULL, '2018-12-02', 1543808016),
(138, 5, 19, 1, 18, '1259.0000', '11.0000', '2018-12-04', 1543856540),
(139, 33, 0, 0, 0, NULL, NULL, '2018-12-04', 1543899953),
(140, 33, 0, 0, 0, NULL, NULL, '2018-12-03', 1543899953),
(141, 31, 17, 2, 15, '1.1600', '0.0200', '2018-12-05', 1543990841),
(142, 31, 0, 0, 0, NULL, NULL, '2018-12-04', 1543990841),
(143, NULL, 0, 0, 0, NULL, NULL, '2018-12-06', 1544027500),
(144, NULL, 0, 0, 0, NULL, NULL, '2018-12-05', 1544027500),
(145, NULL, 0, 0, 0, NULL, NULL, '2018-12-04', 1544027500),
(146, NULL, 0, 0, 0, NULL, NULL, '2018-12-03', 1544027500),
(147, NULL, 0, 0, 0, NULL, NULL, '2018-12-02', 1544027500),
(148, NULL, 0, 0, 0, NULL, NULL, '2018-12-01', 1544027500),
(149, NULL, 0, 0, 0, NULL, NULL, '2018-11-30', 1544027500),
(150, NULL, 0, 0, 0, NULL, NULL, '2018-11-29', 1544027500),
(151, NULL, 0, 0, 0, NULL, NULL, '2018-11-28', 1544027500),
(152, NULL, 0, 0, 0, NULL, NULL, '2018-11-27', 1544027500),
(153, 38, 1, 0, 1, '90.0000', NULL, '2018-12-06', 1544031500),
(154, 38, 0, 0, 0, NULL, NULL, '2018-12-05', 1544031500),
(155, 41, 0, 0, 0, NULL, NULL, '2018-12-08', 1544230064),
(156, 41, 0, 0, 0, NULL, NULL, '2018-12-07', 1544230064),
(157, 41, 0, 0, 0, NULL, NULL, '2018-12-06', 1544230064),
(158, 41, 0, 0, 0, NULL, NULL, '2018-12-05', 1544230064),
(159, 43, 0, 0, 0, NULL, NULL, '2018-12-12', 1544551035),
(160, 43, 0, 0, 0, NULL, NULL, '2018-12-11', 1544551035),
(161, 43, 0, 0, 0, NULL, NULL, '2018-12-10', 1544551035),
(162, 43, 0, 0, 0, NULL, NULL, '2018-12-09', 1544551035),
(163, 43, 0, 0, 0, NULL, NULL, '2018-12-08', 1544551035),
(164, 43, 0, 0, 0, NULL, NULL, '2018-12-07', 1544551035),
(165, 43, 0, 0, 0, NULL, NULL, '2018-12-06', 1544551035),
(166, 36, 0, 0, 0, NULL, NULL, '2018-12-20', 1545314941),
(167, 36, 0, 0, 0, NULL, NULL, '2018-12-19', 1545314941),
(168, 36, 0, 0, 0, NULL, NULL, '2018-12-18', 1545314941),
(169, 36, 15, 0, 15, '44.7200', NULL, '2018-12-17', 1545314941),
(170, 36, 0, 0, 0, NULL, NULL, '2018-12-16', 1545314941),
(171, 36, 4, 3, 1, '297.6000', '232.5000', '2018-12-15', 1545314941),
(172, 36, 5, 1, 4, '17.2200', '5.0000', '2018-12-14', 1545314941),
(173, 36, 0, 0, 0, NULL, NULL, '2018-12-13', 1545314941),
(174, 36, 2, 0, 2, '188.0000', NULL, '2018-12-12', 1545314941),
(175, 36, 0, 0, 0, NULL, NULL, '2018-12-11', 1545314941),
(176, 48, 0, 0, 0, NULL, NULL, '2018-12-22', 1545411147),
(177, 48, 0, 0, 0, NULL, NULL, '2018-12-21', 1545411147),
(178, 48, 0, 0, 0, NULL, NULL, '2018-12-20', 1545411147),
(179, 48, 0, 0, 0, NULL, NULL, '2018-12-19', 1545411147),
(180, 48, 0, 0, 0, NULL, NULL, '2018-12-18', 1545411147),
(181, 48, 0, 0, 0, NULL, NULL, '2018-12-17', 1545411147),
(182, 48, 0, 0, 0, NULL, NULL, '2018-12-16', 1545411147),
(183, 48, 0, 0, 0, NULL, NULL, '2018-12-15', 1545411147),
(184, 48, 0, 0, 0, NULL, NULL, '2018-12-14', 1545411147),
(185, 48, 56, 2, 54, '102.2500', '0.9050', '2018-12-13', 1545411147),
(186, 48, 0, 0, 0, NULL, NULL, '2018-12-12', 1545411160),
(187, 39, 0, 0, 0, NULL, NULL, '2018-12-23', 1545576226),
(188, 39, 0, 0, 0, NULL, NULL, '2018-12-22', 1545576226),
(189, 39, 0, 0, 0, NULL, NULL, '2018-12-21', 1545576226),
(190, 39, 0, 0, 0, NULL, NULL, '2018-12-20', 1545576226),
(191, 39, 0, 0, 0, NULL, NULL, '2018-12-19', 1545576226),
(192, 39, 0, 0, 0, NULL, NULL, '2018-12-18', 1545576226),
(193, 39, 0, 0, 0, NULL, NULL, '2018-12-17', 1545576226),
(194, 39, 0, 0, 0, NULL, NULL, '2018-12-16', 1545576226),
(195, 39, 1, 1, 0, '28.0000', '28.0000', '2018-12-15', 1545576226),
(196, 39, 0, 0, 0, NULL, NULL, '2018-12-14', 1545576226),
(197, 5, 4, 4, 0, '10199.0000', '10099.0000', '2019-01-05', 1546693408),
(198, 5, 0, 0, 0, NULL, NULL, '2019-01-04', 1546693408),
(199, 5, 0, 0, 0, NULL, NULL, '2019-01-03', 1546693408),
(200, 5, 1, 0, 1, '1.0000', NULL, '2019-01-02', 1546693408),
(201, 5, 3, 0, 3, '3.0000', NULL, '2019-01-01', 1546693408),
(202, 5, 0, 0, 0, NULL, NULL, '2018-12-31', 1546693408),
(203, 5, 0, 0, 0, NULL, NULL, '2018-12-30', 1546693408),
(204, 5, 1, 0, 1, '1.0000', NULL, '2018-12-29', 1546693408),
(205, 5, 2, 0, 2, '2.0000', NULL, '2018-12-28', 1546693408),
(206, 5, 1, 0, 1, '1.0000', NULL, '2018-12-27', 1546693408),
(207, 62, 0, 0, 0, NULL, NULL, '2019-01-08', 1546939705),
(208, 62, 0, 0, 0, NULL, NULL, '2019-01-07', 1546939705),
(209, 62, 0, 0, 0, NULL, NULL, '2019-01-10', 1547128868),
(210, 62, 0, 0, 0, NULL, NULL, '2019-01-09', 1547128868),
(211, 5, 0, 0, 0, NULL, NULL, '2019-01-11', 1547175978),
(212, 5, 0, 0, 0, NULL, NULL, '2019-01-10', 1547175978),
(213, 5, 4, 0, 4, '3.9600', NULL, '2019-01-09', 1547175978),
(214, 5, 6, 2, 4, '10892.9799', '10890.0000', '2019-01-08', 1547175978),
(215, 5, 2, 0, 2, '1.9800', NULL, '2019-01-07', 1547175978),
(216, 5, 0, 0, 0, NULL, '100.0000', '2019-01-06', 1547175978),
(217, 62, 0, 0, 0, NULL, NULL, '2019-01-12', 1547288050),
(218, 62, 0, 0, 0, NULL, NULL, '2019-01-11', 1547288050),
(219, 60, 0, 0, 0, NULL, NULL, '2019-01-12', 1547288258),
(220, 60, 0, 0, 0, NULL, NULL, '2019-01-11', 1547288258),
(221, 60, 0, 0, 0, NULL, NULL, '2019-01-10', 1547288258),
(222, 60, 0, 0, 0, NULL, NULL, '2019-01-09', 1547288258),
(223, 60, 0, 0, 0, NULL, NULL, '2019-01-08', 1547288258),
(224, 60, 0, 0, 0, NULL, NULL, '2019-01-07', 1547288258),
(225, 60, 0, 0, 0, NULL, NULL, '2019-01-06', 1547288258),
(226, 60, 0, 0, 0, NULL, NULL, '2019-01-05', 1547288258),
(227, 5, 0, 0, 0, NULL, NULL, '2019-01-13', 1547383902),
(228, 5, 1, 0, 1, '0.9900', NULL, '2019-01-12', 1547383902),
(229, 62, 0, 0, 0, NULL, NULL, '2019-01-24', 1548309343),
(230, 62, 0, 0, 0, NULL, NULL, '2019-01-23', 1548309343),
(231, 62, 0, 0, 0, NULL, NULL, '2019-01-22', 1548309343),
(232, 62, 0, 0, 0, NULL, NULL, '2019-01-21', 1548309343),
(233, 62, 0, 0, 0, NULL, NULL, '2019-01-20', 1548309343),
(234, 62, 0, 0, 0, NULL, NULL, '2019-01-19', 1548309343),
(235, 62, 0, 0, 0, NULL, NULL, '2019-01-18', 1548309343),
(236, 62, 0, 0, 0, NULL, NULL, '2019-01-17', 1548309343),
(237, 62, 0, 0, 0, NULL, NULL, '2019-01-16', 1548309343),
(238, 62, 0, 0, 0, NULL, NULL, '2019-01-15', 1548309343),
(239, 62, 0, 0, 0, NULL, NULL, '2019-01-26', 1548474588),
(240, 62, 0, 0, 0, NULL, NULL, '2019-01-25', 1548474588),
(241, 62, 0, 0, 0, NULL, NULL, '2019-10-14', 1571025179),
(242, 62, 0, 0, 0, NULL, NULL, '2019-10-13', 1571025179),
(243, 62, 0, 0, 0, NULL, NULL, '2019-10-12', 1571025179),
(244, 62, 0, 0, 0, NULL, NULL, '2019-10-11', 1571025179),
(245, 62, 0, 0, 0, NULL, NULL, '2019-10-10', 1571025179),
(246, 62, 0, 0, 0, NULL, NULL, '2019-10-09', 1571025179),
(247, 62, 0, 0, 0, NULL, NULL, '2019-10-08', 1571025179),
(248, 62, 0, 0, 0, NULL, NULL, '2019-10-07', 1571025179),
(249, 62, 0, 0, 0, NULL, NULL, '2019-10-06', 1571025179),
(250, 62, 0, 0, 0, NULL, NULL, '2019-10-05', 1571025179),
(251, 62, 0, 0, 0, NULL, NULL, '2019-10-16', 1571163150),
(252, 62, 2, 0, 2, '2.0000', NULL, '2019-10-15', 1571163150);

-- --------------------------------------------------------

--
-- 表的结构 `pay_redo_order`
--

CREATE TABLE `pay_redo_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作管理员',
  `money` decimal(15,4) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：增加 2：减少',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '冲正备注',
  `date` datetime NOT NULL COMMENT '冲正周期',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_redo_order`
--

INSERT INTO `pay_redo_order` (`id`, `user_id`, `admin_id`, `money`, `type`, `remark`, `date`, `ctime`) VALUES
(1, 180751041, 1, '1000.0000', 1, '测试【冲正周期:2018-07-29】', '2018-07-29 00:00:00', 1532840631),
(2, 180768684, 1, '7607.6380', 2, '调试【冲正周期:2018-07-29】', '2018-07-29 00:00:00', 1532845165),
(3, 180768684, 1, '74769.2000', 2, '资金银行转账已结清\r\n【冲正周期:2018-07-29】', '2018-07-29 00:00:00', 1532856261),
(4, 55, 1, '10000.0000', 1, '测试【冲正周期:2019-01-05】', '2019-01-05 00:00:00', 1546672872),
(5, 62, 1, '111.0000', 1, '00【冲正周期:2019-01-12】', '2019-01-12 00:00:00', 1547301393);

-- --------------------------------------------------------

--
-- 表的结构 `pay_route`
--

CREATE TABLE `pay_route` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `urlstr` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pay_sms`
--

CREATE TABLE `pay_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_key` varchar(255) DEFAULT NULL COMMENT 'App Key',
  `app_secret` varchar(255) DEFAULT NULL COMMENT 'App Secret',
  `sign_name` varchar(255) DEFAULT NULL COMMENT '默认签名',
  `is_open` int(11) DEFAULT '0' COMMENT '是否开启，0关闭，1开启',
  `admin_mobile` varchar(255) DEFAULT NULL COMMENT '管理员接收手机',
  `is_receive` int(11) DEFAULT '0' COMMENT '是否开启，0关闭，1开启',
  `sms_channel` varchar(20) NOT NULL DEFAULT 'aliyun' COMMENT '短信通道',
  `smsbao_user` varchar(50) NOT NULL DEFAULT '' COMMENT '短信宝账号',
  `smsbao_pass` varchar(50) NOT NULL DEFAULT '' COMMENT '短信宝密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_sms`
--

INSERT INTO `pay_sms` (`id`, `app_key`, `app_secret`, `sign_name`, `is_open`, `admin_mobile`, `is_receive`, `sms_channel`, `smsbao_user`, `smsbao_pass`) VALUES
(3, 'appKey', 'appSecret', '聚合支付', 0, NULL, 0, 'smsbao', 'zhanghao', 'mima');

-- --------------------------------------------------------

--
-- 表的结构 `pay_sms_template`
--

CREATE TABLE `pay_sms_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `template_code` varchar(255) DEFAULT NULL COMMENT '模板代码',
  `call_index` varchar(255) DEFAULT NULL COMMENT '调用字符串',
  `template_content` text COMMENT '模板内容',
  `ctime` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_sms_template`
--

INSERT INTO `pay_sms_template` (`id`, `title`, `template_code`, `call_index`, `template_content`, `ctime`) VALUES
(3, '修改支付密码', 'SMS_144455941 ', 'editPayPassword', '您正在进行修改支付密码操作，验证码为：${code} ，该验证码 5 分钟内有效，请勿泄露于他人。', 1512202260),
(4, '修改登录密码', 'SMS_144450598', 'editPassword', '您的验证码为：${code} ，你正在进行修改登录密码操作，该验证码3 分钟内有效，请勿泄露于他人。', 1512190115),
(5, '异地登录', 'SMS_144455604', 'loginWarning', '检测到您的账号登录异常，如非本人操纵，请及时修改账号密码。', 1512202260),
(6, '申请结算', 'SMS_144456102', 'clearing', '您的申请结算验证码为：${code}  ，验证码只用于平台结算验证，为了您的资金安全，打死也不能告诉任何人。', 1512202260),
(7, '委托结算', 'SMS_144450916', 'entrusted', '您的验证码为：${code} ，你正在进行 委托结算 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1512202260),
(8, '绑定手机', 'SMS_144455941 ', 'bindMobile', '您的验证码为：${code} ，你正在进行 绑定手机 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1514534290),
(9, '更新手机', 'SMS_144450938', 'editMobile', '您的验证码为：${code} ，你正在进行 更新手机 号码操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1514535688),
(10, '更新银行卡 ', 'SMS_144450919', 'addBankcardSend', '您的验证码为：${code} ，你正在进行 更新银行卡 \r\n 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1514535688),
(11, '修改个人资料', 'SMS_144450923', 'saveProfile', '您的验证码为：${code} ，你正在进行 修改个人资料 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 151453568),
(12, '绑定管理员手机号码', 'SMS_144450927', 'adminbindMobile', '您的验证码为：${code} ，你正在进行 绑定管理员手机号码 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(13, '修改管理员手机号码', 'SMS_144455951', 'admineditMobile', '您的验证码为：${code} ，你正在进行 修改管理员手机号码 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(14, '批量删除订单', 'SMS_144455956', 'delOrderSend', '您的验证码为：${code} ，你正在进行 批量删除订单  操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(15, '解绑谷歌身份验证器', 'SMS_119087905', 'unbindGoogle', '您的验证码为：${code} ，你正在进行 解绑谷歌身份验证器 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(16, '设置订单为已支付', 'SMS_144455959', 'setOrderPaidSend', '您的验证码为：${code} ，你正在进行 设置订单为已支付 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(17, '清理数据', 'SMS_144450934', 'clearDataSend', '您的验证码为：${code} ，你正在进行 清理数据 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(18, '增加/减少余额（冲正）', 'SMS_111795375', 'adjustUserMoneySend', '您的验证码为：${code} ，你正在进行 增加/减少余额（冲正） 操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(19, '提交代付', 'SMS_144450941', 'submitDfSend', '您的提交代付验证码为：${code} ，该验证码 3 分钟内有效，请勿泄露于他人。', 1527670734),
(20, '测试短信', 'SMS_144455594', 'test', '您的测试短信验证码为：${code} ，您正在进行重要操作，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(21, '系统配置', 'SMS_144854336', 'sysconfigSend', '您的系统配置验证码为：${code} ，该验证码 5 分钟内有效，请勿泄露于他人。', 1527670734),
(22, '客户提现提醒', 'SMS_144455785', 'tixian', '平台有客户申请提现，请及时处理！', 1536649511);

-- --------------------------------------------------------

--
-- 表的结构 `pay_systembank`
--

CREATE TABLE `pay_systembank` (
  `id` int(10) UNSIGNED NOT NULL,
  `bankcode` varchar(100) DEFAULT NULL,
  `bankname` varchar(300) DEFAULT NULL,
  `images` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='结算银行';

--
-- 转存表中的数据 `pay_systembank`
--

INSERT INTO `pay_systembank` (`id`, `bankcode`, `bankname`, `images`) VALUES
(162, 'BOB', '北京银行', 'BOB.gif'),
(164, 'BEA', '东亚银行', 'BEA.gif'),
(165, 'ICBC', '中国工商银行', 'ICBC.gif'),
(166, 'CEB', '中国光大银行', 'CEB.gif'),
(167, 'GDB', '广发银行', 'GDB.gif'),
(168, 'HXB', '华夏银行', 'HXB.gif'),
(169, 'CCB', '中国建设银行', 'CCB.gif'),
(170, 'BCM', '交通银行', 'BCM.gif'),
(171, 'CMSB', '中国民生银行', 'CMSB.gif'),
(172, 'NJCB', '南京银行', 'NJCB.gif'),
(173, 'NBCB', '宁波银行', 'NBCB.gif'),
(174, 'ABC', '中国农业银行', '5414c87492ad8.gif'),
(175, 'PAB', '平安银行', '5414c0929a632.gif'),
(176, 'BOS', '上海银行', 'BOS.gif'),
(177, 'SPDB', '上海浦东发展银行', 'SPDB.gif'),
(178, 'SDB', '深圳发展银行', 'SDB.gif'),
(179, 'CIB', '兴业银行', 'CIB.gif'),
(180, 'PSBC', '中国邮政储蓄银行', 'PSBC.gif'),
(181, 'CMBC', '招商银行', 'CMBC.gif'),
(182, 'CZB', '浙商银行', 'CZB.gif'),
(183, 'BOC', '中国银行', 'BOC.gif'),
(184, 'CNCB', '中信银行', 'CNCB.gif'),
(193, 'ALIPAY', '支付宝', '58b83a5820644.jpg'),
(194, 'WXZF', '微信支付', '58b83a757a298.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pay_template`
--

CREATE TABLE `pay_template` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ' ' COMMENT '模板名称',
  `theme` varchar(255) NOT NULL DEFAULT ' ' COMMENT '模板代码',
  `is_default` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否默认模板:1是，0否',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '修改时间',
  `remarks` varchar(255) NOT NULL DEFAULT ' ' COMMENT '备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模板表';

--
-- 转存表中的数据 `pay_template`
--

INSERT INTO `pay_template` (`id`, `name`, `theme`, `is_default`, `add_time`, `update_time`, `remarks`) VALUES
(1, ' 默认模板', 'default', 0, 1524299660, 1524299660, ' 默认模板'),
(2, '2018新模板', 'view4', 1, 1546583665, 1546583665, '包含所有页面'),
(3, '模板二', 'view2', 0, 1541007060, 1541007060, '默认模板二，有登录页，注册页'),
(4, '模板三', 'view3', 0, 1541007043, 1541007043, '雀付优化模板-有登录页，注册页，支持手机浏览'),
(5, '模板五', 'view5', 0, 1541007015, 1541007015, '无首页-有登录页，注册页-自适应手机'),
(6, '九州支付', 'view6', 0, 1541007031, 1541007031, '九州支付,有登录页，不支持手机访问');

-- --------------------------------------------------------

--
-- 表的结构 `pay_tikuanconfig`
--

CREATE TABLE `pay_tikuanconfig` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户编号',
  `tkzxmoney` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔最小提款金额',
  `tkzdmoney` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔最大提款金额',
  `dayzdmoney` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '当日提款最大总金额',
  `dayzdnum` int(11) NOT NULL DEFAULT '0' COMMENT '当日提款最大次数',
  `t1zt` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'T+1 ：1开启 0 关闭',
  `t0zt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'T+0 ：1开启 0 关闭',
  `gmt0` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '购买T0',
  `tkzt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '提款设置 1 开启 0 关闭',
  `tktype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '提款手续费类型 1 每笔 0 比例 ',
  `systemxz` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 系统规则 1 用户规则',
  `sxfrate` varchar(20) DEFAULT NULL COMMENT '单笔提款比例',
  `sxffixed` varchar(20) DEFAULT NULL COMMENT '单笔提款手续费',
  `issystem` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '平台规则 1 是 0 否',
  `allowstart` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT '提款允许开始时间',
  `allowend` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT '提款允许结束时间',
  `daycardzdmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单人单卡单日最高提现额',
  `auto_df_switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动代付开关',
  `auto_df_maxmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单笔代付最大金额限制',
  `auto_df_stime` varchar(20) NOT NULL DEFAULT '' COMMENT '自动代付开始时间',
  `auto_df_etime` varchar(20) NOT NULL DEFAULT '' COMMENT '自动代付结束时间',
  `auto_df_max_count` int(11) NOT NULL DEFAULT '0' COMMENT '商户每天自动代付笔数限制',
  `auto_df_max_sum` int(11) NOT NULL DEFAULT '0' COMMENT '商户每天自动代付最大总金额限制',
  `tk_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_tikuanconfig`
--

INSERT INTO `pay_tikuanconfig` (`id`, `userid`, `tkzxmoney`, `tkzdmoney`, `dayzdmoney`, `dayzdnum`, `t1zt`, `t0zt`, `gmt0`, `tkzt`, `tktype`, `systemxz`, `sxfrate`, `sxffixed`, `issystem`, `allowstart`, `allowend`, `daycardzdmoney`, `auto_df_switch`, `auto_df_maxmoney`, `auto_df_stime`, `auto_df_etime`, `auto_df_max_count`, `auto_df_max_sum`, `tk_charge_type`) VALUES
(28, 1, '10.00', '50000.00', '5000000.00', 100, 0, 0, '200.00', 1, 1, 0, '0', '5', 1, 23, 0, '1000000.00', 1, '50000.00', '00:00', '23:59', 0, 0, 0),
(29, 2, '0.00', '0.00', '0.00', 0, 1, 0, '0.00', 1, 1, 0, '', '2', 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 0),
(30, 180762223, '500.00', '50000.00', '1000000.00', 100, 0, 0, '0.00', 1, 1, 1, '1', '5', 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 1),
(31, 180751041, '1.00', '100.01', '500.00', 5, 0, 0, '0.00', 0, 0, 1, '0.1', '', 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 0),
(32, 180768736, '100.00', '50000.00', '1100000.00', 100, 0, 0, '0.00', 0, 1, 1, '', '5', 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 0),
(33, 4, '0.00', '0.00', '0.00', 0, 0, 0, '0.00', 0, 0, 1, '', '', 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 0),
(34, 31, '0.00', '0.00', '0.00', 0, 1, 0, '0.00', 0, 0, 1, '', '', 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 0),
(35, 34, '1.00', '100.00', '0.00', 0, 0, 0, '0.00', 0, 0, 1, '', '', 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 0),
(36, 48, '0.00', '0.00', '0.00', 0, 0, 0, '0.00', 0, 0, 0, NULL, NULL, 0, 0, 0, '0.00', 0, '0.00', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_tikuanholiday`
--

CREATE TABLE `pay_tikuanholiday` (
  `id` int(10) UNSIGNED NOT NULL,
  `datetime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排除日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='排除节假日';

-- --------------------------------------------------------

--
-- 表的结构 `pay_tikuanmoney`
--

CREATE TABLE `pay_tikuanmoney` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '结算用户ID',
  `websiteid` int(11) NOT NULL DEFAULT '0',
  `payapiid` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '结算通道ID',
  `t` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '结算方式: 1 T+1 ,0 T+0',
  `money` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `datetype` varchar(2) NOT NULL,
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pay_tikuantime`
--

CREATE TABLE `pay_tikuantime` (
  `id` int(10) UNSIGNED NOT NULL,
  `baiks` tinyint(2) UNSIGNED DEFAULT '0' COMMENT '白天提款开始时间',
  `baijs` tinyint(2) UNSIGNED DEFAULT '0' COMMENT '白天提款结束时间',
  `wanks` tinyint(2) UNSIGNED DEFAULT '0' COMMENT '晚间提款开始时间',
  `wanjs` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提款时间';

--
-- 转存表中的数据 `pay_tikuantime`
--

INSERT INTO `pay_tikuantime` (`id`, `baiks`, `baijs`, `wanks`, `wanjs`) VALUES
(1, 24, 17, 18, 24);

-- --------------------------------------------------------

--
-- 表的结构 `pay_tklist`
--

CREATE TABLE `pay_tklist` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `bankname` varchar(300) NOT NULL,
  `bankzhiname` varchar(300) NOT NULL,
  `banknumber` varchar(300) NOT NULL,
  `bankfullname` varchar(300) NOT NULL,
  `sheng` varchar(300) NOT NULL,
  `shi` varchar(300) NOT NULL,
  `sqdatetime` datetime DEFAULT NULL,
  `cldatetime` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `tkmoney` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sxfmoney` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `money` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `t` int(4) NOT NULL DEFAULT '1',
  `payapiid` int(11) NOT NULL DEFAULT '0',
  `memo` text COMMENT '备注',
  `tk_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_tklist`
--

INSERT INTO `pay_tklist` (`id`, `userid`, `bankname`, `bankzhiname`, `banknumber`, `bankfullname`, `sheng`, `shi`, `sqdatetime`, `cldatetime`, `status`, `tkmoney`, `sxfmoney`, `money`, `t`, `payapiid`, `memo`, `tk_charge_type`) VALUES
(1, 5, '中国工商银行', '工商银行北京北京南锣鼓巷支行', '1233456', '张三', '北京', '北京', '2018-11-07 00:53:55', '2019-01-08 20:18:41', 2, '100.0000', '5.0000', '95.0000', 0, 0, NULL, 0),
(2, 55, '北京银行', '北京支行', '6222120081828128', '张杰', '北京', '北京', '2019-01-05 15:23:14', '2019-01-08 17:53:49', 2, '100.0000', '5.0000', '95.0000', 1, 0, NULL, 0),
(3, 62, '北京银行', 'cfqc', '213213', '1111', '12312', '321312', '2019-01-12 21:58:11', NULL, 1, '11.0000', '5.0000', '6.0000', 0, 0, NULL, 0),
(4, 5, '北京银行', '1', '1', '1', '1', '1', '2019-01-13 20:58:59', '2019-01-13 21:01:35', 3, '503.0000', '5.0000', '498.0000', 0, 0, '23', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_updatelog`
--

CREATE TABLE `pay_updatelog` (
  `version` varchar(20) NOT NULL,
  `lastupdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pay_userrate`
--

CREATE TABLE `pay_userrate` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `payapiid` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '通道ID',
  `feilv` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '运营费率',
  `fengding` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '封顶费率',
  `t0feilv` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0运营费率',
  `t0fengding` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT 'T0封顶费率'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商户通道费率';

--
-- 转存表中的数据 `pay_userrate`
--

INSERT INTO `pay_userrate` (`id`, `userid`, `payapiid`, `feilv`, `fengding`, `t0feilv`, `t0fengding`) VALUES
(1, 14, 901, '0.0000', '0.0000', '0.0010', '0.0000'),
(2, 14, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(3, 14, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(4, 14, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(5, 14, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(6, 14, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(7, 14, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(8, 14, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(9, 14, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(10, 14, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(11, 14, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(12, 14, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(13, 14, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(14, 5, 901, '0.0000', '0.0000', '0.0000', '0.0000'),
(15, 5, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(16, 5, 903, '0.0000', '0.0000', '0.0100', '0.0100'),
(17, 5, 904, '0.0000', '0.0000', '0.0100', '0.0100'),
(18, 5, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(19, 5, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(20, 5, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(21, 5, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(22, 5, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(23, 5, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(24, 5, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(25, 5, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(26, 5, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(27, 4, 901, '0.0200', '0.0000', '0.0100', '0.0000'),
(28, 4, 902, '0.0020', '0.0000', '0.0010', '0.0000'),
(29, 4, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(30, 4, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(31, 4, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(32, 4, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(33, 4, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(34, 4, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(35, 4, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(36, 4, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(37, 4, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(38, 4, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(39, 4, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(40, 19, 901, '0.0001', '0.0001', '0.0001', '0.0001'),
(41, 19, 902, '0.0001', '0.0001', '0.0001', '0.0001'),
(42, 19, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(43, 19, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(44, 19, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(45, 19, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(46, 19, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(47, 19, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(48, 19, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(49, 19, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(50, 19, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(51, 19, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(52, 19, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(53, 30, 901, '0.0030', '0.0030', '0.0030', '0.0030'),
(54, 30, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(55, 30, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(56, 30, 904, '0.0160', '0.0160', '0.0160', '0.0160'),
(57, 30, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(58, 30, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(59, 30, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(60, 30, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(61, 30, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(62, 30, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(63, 30, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(64, 30, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(65, 30, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(66, 31, 901, '0.1000', '0.0000', '0.0010', '0.0000'),
(67, 31, 902, '0.1000', '0.0000', '0.0200', '0.0000'),
(68, 31, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(69, 31, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(70, 31, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(71, 31, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(72, 31, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(73, 31, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(74, 31, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(75, 31, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(76, 31, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(77, 31, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(78, 31, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(79, 34, 901, '0.0020', '0.0000', '0.0010', '0.0000'),
(80, 34, 902, '0.0010', '0.0000', '0.0020', '0.0000'),
(81, 34, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(82, 34, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(83, 34, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(84, 34, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(85, 34, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(86, 34, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(87, 34, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(88, 34, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(89, 34, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(90, 34, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(91, 34, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(92, 36, 902, '0.0700', '0.0000', '0.0600', '0.0000'),
(93, 9, 901, '0.0100', '0.0100', '0.0100', '0.0100'),
(94, 9, 902, '0.0100', '0.0100', '0.0100', '0.0100'),
(95, 9, 903, '0.0100', '0.0100', '0.0100', '0.0100'),
(96, 9, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(97, 9, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(98, 9, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(99, 9, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(100, 9, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(101, 9, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(102, 9, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(103, 9, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(104, 9, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(105, 9, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(106, 13, 901, '0.0300', '0.0000', '0.0200', '0.0000'),
(107, 13, 902, '0.0070', '0.0000', '0.0060', '0.0000'),
(108, 13, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(109, 13, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(110, 13, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(111, 13, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(112, 13, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(113, 13, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(114, 13, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(115, 13, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(116, 13, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(117, 13, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(118, 13, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(119, 6, 901, '0.0000', '0.0000', '0.0000', '0.0000'),
(120, 6, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(121, 6, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(122, 6, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(123, 6, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(124, 6, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(125, 6, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(126, 6, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(127, 6, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(128, 6, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(129, 6, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(130, 6, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(131, 6, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(132, 36, 901, '0.0000', '0.0000', '0.0000', '0.0000'),
(133, 36, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(134, 36, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(135, 36, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(136, 36, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(137, 36, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(138, 36, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(139, 36, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(140, 36, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(141, 36, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(142, 36, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(143, 36, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(144, 41, 901, '0.0000', '0.0000', '0.0000', '0.0000'),
(145, 41, 902, '0.0300', '0.0300', '0.0300', '0.0300'),
(146, 41, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(147, 41, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(148, 41, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(149, 41, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(150, 41, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(151, 41, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(152, 41, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(153, 41, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(154, 41, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(155, 41, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(156, 41, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(157, 39, 902, '10000.0000', '10000.0000', '10000.0000', '10000.0000'),
(158, 53, 901, '0.0000', '0.0000', '0.0000', '0.0000'),
(159, 53, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(160, 53, 903, '0.0200', '0.0200', '0.0200', '0.0200'),
(161, 53, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(162, 53, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(163, 53, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(164, 53, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(165, 53, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(166, 53, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(167, 53, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(168, 53, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(169, 53, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(170, 53, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(171, 56, 901, '0.0000', '0.0000', '0.0000', '0.0000'),
(172, 56, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(173, 56, 903, '0.0100', '0.0100', '0.0100', '0.0100'),
(174, 56, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(175, 56, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(176, 56, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(177, 56, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(178, 56, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(179, 56, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(180, 56, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(181, 56, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(182, 56, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(183, 56, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(184, 55, 901, '0.0000', '0.0000', '0.0000', '0.0000'),
(185, 55, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(186, 55, 903, '0.0200', '0.0200', '0.0200', '0.0200'),
(187, 55, 904, '0.0000', '0.0000', '0.0000', '0.0000'),
(188, 55, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(189, 55, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(190, 55, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(191, 55, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(192, 55, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(193, 55, 911, '0.0000', '0.0000', '0.0000', '0.0000'),
(194, 55, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(195, 55, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(196, 55, 918, '0.0000', '0.0000', '0.0000', '0.0000'),
(197, 61, 901, '0.0000', '0.0000', '0.0460', '0.0000'),
(198, 61, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(199, 61, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(200, 61, 904, '0.0220', '0.0220', '0.0220', '0.0220'),
(201, 61, 905, '0.0150', '0.0150', '0.0150', '0.0150'),
(202, 61, 907, '0.0150', '0.0150', '0.0150', '0.0150'),
(203, 61, 908, '0.0150', '0.0150', '0.0150', '0.0150'),
(204, 61, 909, '0.0150', '0.0150', '0.0150', '0.0150'),
(205, 61, 910, '0.0150', '0.0150', '0.0150', '0.0150'),
(206, 61, 911, '0.0150', '0.0150', '0.0150', '0.0150'),
(207, 61, 912, '0.0150', '0.0150', '0.0150', '0.0150'),
(208, 61, 916, '0.0150', '0.0150', '0.0150', '0.0150'),
(209, 61, 918, '0.0060', '0.0060', '0.0060', '0.0060'),
(210, 62, 901, '0.0000', '0.0000', '0.0460', '0.0000'),
(211, 62, 902, '0.0000', '0.0000', '0.0000', '0.0000'),
(212, 62, 903, '0.0000', '0.0000', '0.0000', '0.0000'),
(213, 62, 904, '0.0000', '0.0000', '0.0220', '0.0000'),
(214, 62, 905, '0.0000', '0.0000', '0.0000', '0.0000'),
(215, 62, 907, '0.0000', '0.0000', '0.0000', '0.0000'),
(216, 62, 908, '0.0000', '0.0000', '0.0000', '0.0000'),
(217, 62, 909, '0.0000', '0.0000', '0.0000', '0.0000'),
(218, 62, 910, '0.0000', '0.0000', '0.0000', '0.0000'),
(219, 62, 911, '0.0000', '0.0000', '0.0150', '0.0000'),
(220, 62, 912, '0.0000', '0.0000', '0.0000', '0.0000'),
(221, 62, 916, '0.0000', '0.0000', '0.0000', '0.0000'),
(222, 62, 918, '0.0000', '0.0000', '0.0060', '0.0000');

-- --------------------------------------------------------

--
-- 表的结构 `pay_user_channel_account`
--

CREATE TABLE `pay_user_channel_account` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `account_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '子账号id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否开启指定账号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户指定指账号';

--
-- 转存表中的数据 `pay_user_channel_account`
--

INSERT INTO `pay_user_channel_account` (`id`, `userid`, `account_ids`, `status`) VALUES
(4, 180762223, '2,50', 0),
(5, 180751041, '16,17', 1),
(6, 180768751, '', 0),
(7, 6, '74', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pay_user_code`
--

CREATE TABLE `pay_user_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT '0' COMMENT '0找回密码',
  `code` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL COMMENT '更新时间',
  `endtime` int(11) DEFAULT NULL COMMENT '有效时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_user_code`
--

INSERT INTO `pay_user_code` (`id`, `type`, `code`, `username`, `email`, `mobile`, `status`, `ctime`, `uptime`, `endtime`) VALUES
(6, 0, '36989', '11210980', '11210980@qq.com', NULL, 0, 1538813477, NULL, 1538814077);

-- --------------------------------------------------------

--
-- 表的结构 `pay_user_riskcontrol_config`
--

CREATE TABLE `pay_user_riskcontrol_config` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '主键ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户ID',
  `min_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔最小金额',
  `max_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单笔最大金额',
  `unit_all_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '单位时间内交易总金额',
  `all_money` decimal(11,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '当天交易总金额',
  `start_time` tinyint(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '一天交易开始时间',
  `end_time` tinyint(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '一天交易结束时间',
  `unit_number` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间内交易的总笔数',
  `is_system` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否平台规则',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态:1开通，0关闭',
  `add_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `edit_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '修改时间',
  `time_unit` char(1) NOT NULL DEFAULT 'i' COMMENT '限制的时间单位',
  `unit_interval` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '单位时间值',
  `domain` varchar(255) NOT NULL DEFAULT ' ' COMMENT '防封域名',
  `systemxz` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 系统规则 1 用户规则'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='交易配置';

--
-- 转存表中的数据 `pay_user_riskcontrol_config`
--

INSERT INTO `pay_user_riskcontrol_config` (`id`, `user_id`, `min_money`, `max_money`, `unit_all_money`, `all_money`, `start_time`, `end_time`, `unit_number`, `is_system`, `status`, `add_time`, `edit_time`, `time_unit`, `unit_interval`, `domain`, `systemxz`) VALUES
(1, 0, '0.00', '0.00', '0.00', '0.00', 0, 0, 0, 1, 0, 1543806443, 0, 'i', 0, '', 0),
(2, 180751041, '0.00', '10000.00', '0.00', '0.00', 0, 0, 0, 0, 0, 1533759190, 1532768653, 's', 0, '', 1),
(3, 180768684, '1.00', '10000.00', '0.00', '299972.00', 0, 0, 0, 0, 1, 1532846143, 1532774264, 's', 0, '', 1),
(4, 180762223, '10.00', '5000.00', '0.00', '0.00', 0, 0, 0, 0, 0, 1536964058, 1532774447, 's', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pay_version`
--

CREATE TABLE `pay_version` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL DEFAULT '0' COMMENT '版本',
  `author` varchar(255) NOT NULL DEFAULT ' ' COMMENT '作者',
  `save_time` varchar(255) NOT NULL DEFAULT '0000-00-00' COMMENT '修改时间,格式YYYY-mm-dd'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据库版本表';

--
-- 转存表中的数据 `pay_version`
--

INSERT INTO `pay_version` (`id`, `version`, `author`, `save_time`) VALUES
(1, '5.5', 'qq0000000', '2018-4-8'),
(2, '5.6', 'qq0000000', '2018/9/02 17:45:33'),
(3, '5.7.1', 'qq0000000', '2018-4-17');

-- --------------------------------------------------------

--
-- 表的结构 `pay_websiteconfig`
--

CREATE TABLE `pay_websiteconfig` (
  `id` int(10) UNSIGNED NOT NULL,
  `websitename` varchar(300) DEFAULT NULL COMMENT '网站名称',
  `domain` varchar(300) DEFAULT NULL COMMENT '网址',
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL COMMENT '后台目录名称',
  `icp` varchar(100) DEFAULT NULL,
  `tongji` varchar(1000) DEFAULT NULL COMMENT '统计',
  `login` varchar(100) DEFAULT NULL COMMENT '登录地址',
  `payingservice` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '商户代付 1 开启 0 关闭',
  `authorized` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商户认证 1 开启 0 关闭',
  `invitecode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '邀请码注册',
  `company` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `serverkey` varchar(50) DEFAULT NULL COMMENT '授权服务key',
  `withdraw` tinyint(1) DEFAULT '0' COMMENT '提现通知：0关闭，1开启',
  `login_warning_num` tinyint(3) UNSIGNED NOT NULL DEFAULT '3' COMMENT '前台可以错误登录次数',
  `login_ip` varchar(1000) NOT NULL DEFAULT ' ' COMMENT '登录IP',
  `is_repeat_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否允许重复订单:1是，0否',
  `google_auth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启谷歌身份验证登录',
  `df_api` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启代付API',
  `logo` varchar(255) NOT NULL DEFAULT ' ' COMMENT '公司logo',
  `random_mchno` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启随机商户号',
  `register_need_activate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户注册是否需激活',
  `admin_alone_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT '管理员是否只允许同时一次登录',
  `max_auth_error_times` int(10) NOT NULL DEFAULT '5' COMMENT '验证错误最大次数',
  `auth_error_ban_time` int(10) NOT NULL DEFAULT '10' COMMENT '验证错误超限冻结时间（分钟）'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_websiteconfig`
--

INSERT INTO `pay_websiteconfig` (`id`, `websitename`, `domain`, `email`, `tel`, `qq`, `directory`, `icp`, `tongji`, `login`, `payingservice`, `authorized`, `invitecode`, `company`, `serverkey`, `withdraw`, `login_warning_num`, `login_ip`, `is_repeat_order`, `google_auth`, `df_api`, `logo`, `random_mchno`, `register_need_activate`, `admin_alone_login`, `max_auth_error_times`, `auth_error_ban_time`) VALUES
(1, '聚合支付', '1704.demohuo.com', '123@163.com', '17000000000000', '9600000', 'admin', '京ICP备8812000号', '', 'Login', 1, 1, 0, '演示站点', '0d6de302cbc615de3b09463acea87662', 1, 3, ' ', 0, 0, 1, '', 0, 1, 0, 10, 10);

-- --------------------------------------------------------

--
-- 表的结构 `pay_wttklist`
--

CREATE TABLE `pay_wttklist` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `bankname` varchar(300) NOT NULL,
  `bankzhiname` varchar(300) NOT NULL,
  `banknumber` varchar(300) NOT NULL,
  `bankfullname` varchar(300) NOT NULL,
  `sheng` varchar(300) NOT NULL,
  `shi` varchar(300) NOT NULL,
  `sqdatetime` datetime DEFAULT NULL,
  `cldatetime` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `tkmoney` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sxfmoney` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '手续费',
  `money` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '实际到账',
  `t` int(4) NOT NULL DEFAULT '1',
  `payapiid` int(11) NOT NULL DEFAULT '0',
  `memo` text COMMENT '备注',
  `additional` varchar(1000) NOT NULL DEFAULT ' ' COMMENT '额外的参数',
  `code` varchar(64) NOT NULL DEFAULT ' ' COMMENT '代码控制器名称',
  `df_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '代付通道id',
  `df_name` varchar(64) NOT NULL DEFAULT ' ' COMMENT '代付名称',
  `orderid` varchar(100) NOT NULL DEFAULT ' ' COMMENT '订单id',
  `cost` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '成本',
  `cost_rate` decimal(10,4) UNSIGNED NOT NULL DEFAULT '0.0000' COMMENT '成本费率',
  `rate_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '费率类型：按单笔收费0，按比例收费：1',
  `extends` text COMMENT '扩展数据',
  `out_trade_no` varchar(30) DEFAULT '' COMMENT '下游订单号',
  `df_api_id` int(11) DEFAULT '0' COMMENT '代付API申请ID',
  `auto_submit_try` int(10) NOT NULL DEFAULT '0' COMMENT '自动代付尝试提交次数',
  `is_auto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自动提交',
  `last_submit_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后提交时间',
  `df_lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付锁，防止重复提交',
  `auto_query_num` int(10) NOT NULL DEFAULT '0' COMMENT '自动查询次数',
  `channel_mch_id` varchar(50) NOT NULL DEFAULT '' COMMENT '通道商户号',
  `df_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay_wttklist`
--

INSERT INTO `pay_wttklist` (`id`, `userid`, `bankname`, `bankzhiname`, `banknumber`, `bankfullname`, `sheng`, `shi`, `sqdatetime`, `cldatetime`, `status`, `tkmoney`, `sxfmoney`, `money`, `t`, `payapiid`, `memo`, `additional`, `code`, `df_id`, `df_name`, `orderid`, `cost`, `cost_rate`, `rate_type`, `extends`, `out_trade_no`, `df_api_id`, `auto_submit_try`, `is_auto`, `last_submit_time`, `df_lock`, `auto_query_num`, `channel_mch_id`, `df_charge_type`) VALUES
(1, 5, '中国工商银行', '工商银行北京北京南锣鼓巷支行', '1233456', '张三', '北京', '北京', '2018-11-07 00:54:52', '2018-11-21 13:56:47', 3, '100.0000', '5.0000', '95.0000', 0, 0, NULL, '', ' ', 0, ' ', 'H1107232926877510', '0.00', '0.0000', 0, '{\"lhh\":\"12354\"}', '', 0, 0, 0, 0, 0, 0, '', 0),
(2, 55, '北京银行', '北京支行', '6222120081828128', '张杰', '北京', '北京', '2019-01-05 15:21:41', '2019-01-05 15:22:56', 2, '100.0000', '5.0000', '95.0000', 1, 0, NULL, '', ' ', 0, ' ', 'I0105729017028321', '0.00', '0.0000', 0, '{\"lhh\":\"102100099996\"}', '', 0, 0, 0, 0, 0, 0, '', 0),
(3, 62, '北京银行', 'cfqc', '213213', '1111', '12312', '321312', '2019-10-16 02:19:55', NULL, 0, '10.0000', '5.0000', '5.0000', 0, 0, NULL, '', ' ', 0, ' ', 'I1016635959685928', '0.00', '0.0000', 0, '{\"lhh\":\"127896388676768\"}', '', 0, 0, 0, 0, 0, 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pay_admin`
--
ALTER TABLE `pay_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_apimoney`
--
ALTER TABLE `pay_apimoney`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_article`
--
ALTER TABLE `pay_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_attachment`
--
ALTER TABLE `pay_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_auth_error_log`
--
ALTER TABLE `pay_auth_error_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_auth_group`
--
ALTER TABLE `pay_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_auth_group_access`
--
ALTER TABLE `pay_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `pay_auth_rule`
--
ALTER TABLE `pay_auth_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_auto_df_log`
--
ALTER TABLE `pay_auto_df_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_auto_unfrozen_order`
--
ALTER TABLE `pay_auto_unfrozen_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_unfreezeing` (`status`,`is_pause`,`unfreeze_time`);

--
-- Indexes for table `pay_bankcard`
--
ALTER TABLE `pay_bankcard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IND_UID` (`userid`);

--
-- Indexes for table `pay_blockedlog`
--
ALTER TABLE `pay_blockedlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_browserecord`
--
ALTER TABLE `pay_browserecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_category`
--
ALTER TABLE `pay_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_channel`
--
ALTER TABLE `pay_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_channel_account`
--
ALTER TABLE `pay_channel_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_complaints_deposit`
--
ALTER TABLE `pay_complaints_deposit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_unfreezeing` (`status`,`is_pause`,`unfreeze_time`);

--
-- Indexes for table `pay_complaints_deposit_rule`
--
ALTER TABLE `pay_complaints_deposit_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_df_api_order`
--
ALTER TABLE `pay_df_api_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IND_UID` (`userid`);

--
-- Indexes for table `pay_email`
--
ALTER TABLE `pay_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_industry_log`
--
ALTER TABLE `pay_industry_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_invitecode`
--
ALTER TABLE `pay_invitecode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invitecode` (`invitecode`) USING BTREE;

--
-- Indexes for table `pay_inviteconfig`
--
ALTER TABLE `pay_inviteconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_loginrecord`
--
ALTER TABLE `pay_loginrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_member`
--
ALTER TABLE `pay_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_member_agent_cate`
--
ALTER TABLE `pay_member_agent_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_moneychange`
--
ALTER TABLE `pay_moneychange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_order`
--
ALTER TABLE `pay_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IND_ORD` (`pay_orderid`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `pay_paylog`
--
ALTER TABLE `pay_paylog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IND_TRD` (`transaction_id`),
  ADD UNIQUE KEY `IND_ORD` (`out_trade_no`);

--
-- Indexes for table `pay_pay_channel_extend_fields`
--
ALTER TABLE `pay_pay_channel_extend_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_pay_for_another`
--
ALTER TABLE `pay_pay_for_another`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `updatetime` (`updatetime`);

--
-- Indexes for table `pay_product`
--
ALTER TABLE `pay_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_product_user`
--
ALTER TABLE `pay_product_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_reconciliation`
--
ALTER TABLE `pay_reconciliation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_redo_order`
--
ALTER TABLE `pay_redo_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_route`
--
ALTER TABLE `pay_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_sms`
--
ALTER TABLE `pay_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_sms_template`
--
ALTER TABLE `pay_sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_systembank`
--
ALTER TABLE `pay_systembank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_template`
--
ALTER TABLE `pay_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_tikuanconfig`
--
ALTER TABLE `pay_tikuanconfig`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IND_UID` (`userid`);

--
-- Indexes for table `pay_tikuanholiday`
--
ALTER TABLE `pay_tikuanholiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_tikuanmoney`
--
ALTER TABLE `pay_tikuanmoney`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_tikuantime`
--
ALTER TABLE `pay_tikuantime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_tklist`
--
ALTER TABLE `pay_tklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_userrate`
--
ALTER TABLE `pay_userrate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_user_channel_account`
--
ALTER TABLE `pay_user_channel_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `pay_user_code`
--
ALTER TABLE `pay_user_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_user_riskcontrol_config`
--
ALTER TABLE `pay_user_riskcontrol_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`user_id`);

--
-- Indexes for table `pay_version`
--
ALTER TABLE `pay_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_websiteconfig`
--
ALTER TABLE `pay_websiteconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_wttklist`
--
ALTER TABLE `pay_wttklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `df_id` (`df_id`),
  ADD KEY `orderid` (`orderid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pay_admin`
--
ALTER TABLE `pay_admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `pay_apimoney`
--
ALTER TABLE `pay_apimoney`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `pay_article`
--
ALTER TABLE `pay_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `pay_attachment`
--
ALTER TABLE `pay_attachment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用表AUTO_INCREMENT `pay_auth_error_log`
--
ALTER TABLE `pay_auth_error_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- 使用表AUTO_INCREMENT `pay_auth_group`
--
ALTER TABLE `pay_auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `pay_auth_rule`
--
ALTER TABLE `pay_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- 使用表AUTO_INCREMENT `pay_auto_df_log`
--
ALTER TABLE `pay_auto_df_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `pay_auto_unfrozen_order`
--
ALTER TABLE `pay_auto_unfrozen_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `pay_bankcard`
--
ALTER TABLE `pay_bankcard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `pay_blockedlog`
--
ALTER TABLE `pay_blockedlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `pay_browserecord`
--
ALTER TABLE `pay_browserecord`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `pay_category`
--
ALTER TABLE `pay_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `pay_channel`
--
ALTER TABLE `pay_channel`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '供应商通道ID', AUTO_INCREMENT=236;

--
-- 使用表AUTO_INCREMENT `pay_channel_account`
--
ALTER TABLE `pay_channel_account`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '供应商通道账号ID', AUTO_INCREMENT=77;

--
-- 使用表AUTO_INCREMENT `pay_complaints_deposit`
--
ALTER TABLE `pay_complaints_deposit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `pay_complaints_deposit_rule`
--
ALTER TABLE `pay_complaints_deposit_rule`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `pay_df_api_order`
--
ALTER TABLE `pay_df_api_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pay_email`
--
ALTER TABLE `pay_email`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `pay_industry_log`
--
ALTER TABLE `pay_industry_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用表AUTO_INCREMENT `pay_invitecode`
--
ALTER TABLE `pay_invitecode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `pay_inviteconfig`
--
ALTER TABLE `pay_inviteconfig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `pay_loginrecord`
--
ALTER TABLE `pay_loginrecord`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- 使用表AUTO_INCREMENT `pay_member`
--
ALTER TABLE `pay_member`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用表AUTO_INCREMENT `pay_member_agent_cate`
--
ALTER TABLE `pay_member_agent_cate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `pay_moneychange`
--
ALTER TABLE `pay_moneychange`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- 使用表AUTO_INCREMENT `pay_order`
--
ALTER TABLE `pay_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- 使用表AUTO_INCREMENT `pay_paylog`
--
ALTER TABLE `pay_paylog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pay_pay_channel_extend_fields`
--
ALTER TABLE `pay_pay_channel_extend_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `pay_pay_for_another`
--
ALTER TABLE `pay_pay_for_another`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `pay_product`
--
ALTER TABLE `pay_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- 使用表AUTO_INCREMENT `pay_product_user`
--
ALTER TABLE `pay_product_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT ' ', AUTO_INCREMENT=555;

--
-- 使用表AUTO_INCREMENT `pay_reconciliation`
--
ALTER TABLE `pay_reconciliation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- 使用表AUTO_INCREMENT `pay_redo_order`
--
ALTER TABLE `pay_redo_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `pay_route`
--
ALTER TABLE `pay_route`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pay_sms`
--
ALTER TABLE `pay_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `pay_sms_template`
--
ALTER TABLE `pay_sms_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `pay_systembank`
--
ALTER TABLE `pay_systembank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- 使用表AUTO_INCREMENT `pay_template`
--
ALTER TABLE `pay_template`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `pay_tikuanconfig`
--
ALTER TABLE `pay_tikuanconfig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用表AUTO_INCREMENT `pay_tikuanholiday`
--
ALTER TABLE `pay_tikuanholiday`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `pay_tikuanmoney`
--
ALTER TABLE `pay_tikuanmoney`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691;

--
-- 使用表AUTO_INCREMENT `pay_tikuantime`
--
ALTER TABLE `pay_tikuantime`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `pay_tklist`
--
ALTER TABLE `pay_tklist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `pay_userrate`
--
ALTER TABLE `pay_userrate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- 使用表AUTO_INCREMENT `pay_user_channel_account`
--
ALTER TABLE `pay_user_channel_account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `pay_user_code`
--
ALTER TABLE `pay_user_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `pay_user_riskcontrol_config`
--
ALTER TABLE `pay_user_riskcontrol_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `pay_version`
--
ALTER TABLE `pay_version`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `pay_websiteconfig`
--
ALTER TABLE `pay_websiteconfig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `pay_wttklist`
--
ALTER TABLE `pay_wttklist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
