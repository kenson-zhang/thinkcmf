-- phpMyAdmin SQL Dump
-- version 4.6.0deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 20, 2016 at 02:31 PM
-- Server version: 5.6.28-1
-- PHP Version: 5.6.19-2+b1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thinkcmf`
--
CREATE DATABASE IF NOT EXISTS `thinkcmf` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `thinkcmf`;

-- --------------------------------------------------------

--
-- Table structure for table `cmf_ad`
--

CREATE TABLE `cmf_ad` (
  `ad_id` bigint(20) NOT NULL COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cmf_asset`
--

CREATE TABLE `cmf_asset` (
  `aid` bigint(20) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `key` varchar(50) NOT NULL COMMENT '资源 key',
  `filename` varchar(50) DEFAULT NULL COMMENT '文件名',
  `filesize` int(11) DEFAULT NULL COMMENT '文件大小,单位Byte',
  `filepath` varchar(200) NOT NULL COMMENT '文件路径，相对于 upload 目录，可以为 url',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：删除，不可用',
  `meta` text COMMENT '其它详细信息，JSON格式',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀名，不包括点',
  `download_times` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资源表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_auth_access`
--

CREATE TABLE `cmf_auth_access` (
  `role_id` mediumint(8) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_auth_rule`
--

CREATE TABLE `cmf_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限规则表';

--
-- Dumping data for table `cmf_auth_rule`
--

INSERT INTO `cmf_auth_rule` (`id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition`) VALUES
(1, 'Admin', 'admin_url', 'admin/content/default', NULL, '内容管理', 1, ''),
(2, 'Api', 'admin_url', 'api/guestbookadmin/index', NULL, '所有留言', 1, ''),
(3, 'Api', 'admin_url', 'api/guestbookadmin/delete', NULL, '删除网站留言', 1, ''),
(4, 'Comment', 'admin_url', 'comment/commentadmin/index', NULL, '评论管理', 1, ''),
(5, 'Comment', 'admin_url', 'comment/commentadmin/delete', NULL, '删除评论', 1, ''),
(6, 'Comment', 'admin_url', 'comment/commentadmin/check', NULL, '评论审核', 1, ''),
(7, 'Portal', 'admin_url', 'portal/adminpost/index', NULL, '文章管理', 1, ''),
(8, 'Portal', 'admin_url', 'portal/adminpost/listorders', NULL, '文章排序', 1, ''),
(9, 'Portal', 'admin_url', 'portal/adminpost/top', NULL, '文章置顶', 1, ''),
(10, 'Portal', 'admin_url', 'portal/adminpost/recommend', NULL, '文章推荐', 1, ''),
(11, 'Portal', 'admin_url', 'portal/adminpost/move', NULL, '批量移动', 1, ''),
(12, 'Portal', 'admin_url', 'portal/adminpost/check', NULL, '文章审核', 1, ''),
(13, 'Portal', 'admin_url', 'portal/adminpost/delete', NULL, '删除文章', 1, ''),
(14, 'Portal', 'admin_url', 'portal/adminpost/edit', NULL, '编辑文章', 1, ''),
(15, 'Portal', 'admin_url', 'portal/adminpost/edit_post', NULL, '提交编辑', 1, ''),
(16, 'Portal', 'admin_url', 'portal/adminpost/add', NULL, '添加文章', 1, ''),
(17, 'Portal', 'admin_url', 'portal/adminpost/add_post', NULL, '提交添加', 1, ''),
(18, 'Portal', 'admin_url', 'portal/adminterm/index', NULL, '分类管理', 1, ''),
(19, 'Portal', 'admin_url', 'portal/adminterm/listorders', NULL, '文章分类排序', 1, ''),
(20, 'Portal', 'admin_url', 'portal/adminterm/delete', NULL, '删除分类', 1, ''),
(21, 'Portal', 'admin_url', 'portal/adminterm/edit', NULL, '编辑分类', 1, ''),
(22, 'Portal', 'admin_url', 'portal/adminterm/edit_post', NULL, '提交编辑', 1, ''),
(23, 'Portal', 'admin_url', 'portal/adminterm/add', NULL, '添加分类', 1, ''),
(24, 'Portal', 'admin_url', 'portal/adminterm/add_post', NULL, '提交添加', 1, ''),
(25, 'Portal', 'admin_url', 'portal/adminpage/index', NULL, '页面管理', 1, ''),
(26, 'Portal', 'admin_url', 'portal/adminpage/listorders', NULL, '页面排序', 1, ''),
(27, 'Portal', 'admin_url', 'portal/adminpage/delete', NULL, '删除页面', 1, ''),
(28, 'Portal', 'admin_url', 'portal/adminpage/edit', NULL, '编辑页面', 1, ''),
(29, 'Portal', 'admin_url', 'portal/adminpage/edit_post', NULL, '提交编辑', 1, ''),
(30, 'Portal', 'admin_url', 'portal/adminpage/add', NULL, '添加页面', 1, ''),
(31, 'Portal', 'admin_url', 'portal/adminpage/add_post', NULL, '提交添加', 1, ''),
(32, 'Admin', 'admin_url', 'admin/recycle/default', NULL, '回收站', 1, ''),
(33, 'Portal', 'admin_url', 'portal/adminpost/recyclebin', NULL, '文章回收', 1, ''),
(34, 'Portal', 'admin_url', 'portal/adminpost/restore', NULL, '文章还原', 1, ''),
(35, 'Portal', 'admin_url', 'portal/adminpost/clean', NULL, '彻底删除', 1, ''),
(36, 'Portal', 'admin_url', 'portal/adminpage/recyclebin', NULL, '页面回收', 1, ''),
(37, 'Portal', 'admin_url', 'portal/adminpage/clean', NULL, '彻底删除', 1, ''),
(38, 'Portal', 'admin_url', 'portal/adminpage/restore', NULL, '页面还原', 1, ''),
(39, 'Admin', 'admin_url', 'admin/extension/default', NULL, '扩展工具', 1, ''),
(40, 'Admin', 'admin_url', 'admin/backup/default', NULL, '备份管理', 1, ''),
(41, 'Admin', 'admin_url', 'admin/backup/restore', NULL, '数据还原', 1, ''),
(42, 'Admin', 'admin_url', 'admin/backup/index', NULL, '数据备份', 1, ''),
(43, 'Admin', 'admin_url', 'admin/backup/index_post', NULL, '提交数据备份', 1, ''),
(44, 'Admin', 'admin_url', 'admin/backup/download', NULL, '下载备份', 1, ''),
(45, 'Admin', 'admin_url', 'admin/backup/del_backup', NULL, '删除备份', 1, ''),
(46, 'Admin', 'admin_url', 'admin/backup/import', NULL, '数据备份导入', 1, ''),
(47, 'Admin', 'admin_url', 'admin/plugin/index', NULL, '插件管理', 1, ''),
(48, 'Admin', 'admin_url', 'admin/plugin/toggle', NULL, '插件启用切换', 1, ''),
(49, 'Admin', 'admin_url', 'admin/plugin/setting', NULL, '插件设置', 1, ''),
(50, 'Admin', 'admin_url', 'admin/plugin/setting_post', NULL, '插件设置提交', 1, ''),
(51, 'Admin', 'admin_url', 'admin/plugin/install', NULL, '插件安装', 1, ''),
(52, 'Admin', 'admin_url', 'admin/plugin/uninstall', NULL, '插件卸载', 1, ''),
(53, 'Admin', 'admin_url', 'admin/slide/default', NULL, '幻灯片', 1, ''),
(54, 'Admin', 'admin_url', 'admin/slide/index', NULL, '幻灯片管理', 1, ''),
(55, 'Admin', 'admin_url', 'admin/slide/listorders', NULL, '幻灯片排序', 1, ''),
(56, 'Admin', 'admin_url', 'admin/slide/toggle', NULL, '幻灯片显示切换', 1, ''),
(57, 'Admin', 'admin_url', 'admin/slide/delete', NULL, '删除幻灯片', 1, ''),
(58, 'Admin', 'admin_url', 'admin/slide/edit', NULL, '编辑幻灯片', 1, ''),
(59, 'Admin', 'admin_url', 'admin/slide/edit_post', NULL, '提交编辑', 1, ''),
(60, 'Admin', 'admin_url', 'admin/slide/add', NULL, '添加幻灯片', 1, ''),
(61, 'Admin', 'admin_url', 'admin/slide/add_post', NULL, '提交添加', 1, ''),
(62, 'Admin', 'admin_url', 'admin/slidecat/index', NULL, '幻灯片分类', 1, ''),
(63, 'Admin', 'admin_url', 'admin/slidecat/delete', NULL, '删除分类', 1, ''),
(64, 'Admin', 'admin_url', 'admin/slidecat/edit', NULL, '编辑分类', 1, ''),
(65, 'Admin', 'admin_url', 'admin/slidecat/edit_post', NULL, '提交编辑', 1, ''),
(66, 'Admin', 'admin_url', 'admin/slidecat/add', NULL, '添加分类', 1, ''),
(67, 'Admin', 'admin_url', 'admin/slidecat/add_post', NULL, '提交添加', 1, ''),
(68, 'Admin', 'admin_url', 'admin/ad/index', NULL, '网站广告', 1, ''),
(69, 'Admin', 'admin_url', 'admin/ad/toggle', NULL, '广告显示切换', 1, ''),
(70, 'Admin', 'admin_url', 'admin/ad/delete', NULL, '删除广告', 1, ''),
(71, 'Admin', 'admin_url', 'admin/ad/edit', NULL, '编辑广告', 1, ''),
(72, 'Admin', 'admin_url', 'admin/ad/edit_post', NULL, '提交编辑', 1, ''),
(73, 'Admin', 'admin_url', 'admin/ad/add', NULL, '添加广告', 1, ''),
(74, 'Admin', 'admin_url', 'admin/ad/add_post', NULL, '提交添加', 1, ''),
(75, 'Admin', 'admin_url', 'admin/link/index', NULL, '友情链接', 1, ''),
(76, 'Admin', 'admin_url', 'admin/link/listorders', NULL, '友情链接排序', 1, ''),
(77, 'Admin', 'admin_url', 'admin/link/toggle', NULL, '友链显示切换', 1, ''),
(78, 'Admin', 'admin_url', 'admin/link/delete', NULL, '删除友情链接', 1, ''),
(79, 'Admin', 'admin_url', 'admin/link/edit', NULL, '编辑友情链接', 1, ''),
(80, 'Admin', 'admin_url', 'admin/link/edit_post', NULL, '提交编辑', 1, ''),
(81, 'Admin', 'admin_url', 'admin/link/add', NULL, '添加友情链接', 1, ''),
(82, 'Admin', 'admin_url', 'admin/link/add_post', NULL, '提交添加', 1, ''),
(83, 'Api', 'admin_url', 'api/oauthadmin/setting', NULL, '第三方登陆', 1, ''),
(84, 'Api', 'admin_url', 'api/oauthadmin/setting_post', NULL, '提交设置', 1, ''),
(85, 'Admin', 'admin_url', 'admin/menu/default', NULL, '菜单管理', 1, ''),
(86, 'Admin', 'admin_url', 'admin/navcat/default1', NULL, '前台菜单', 1, ''),
(87, 'Admin', 'admin_url', 'admin/nav/index', NULL, '菜单管理', 1, ''),
(88, 'Admin', 'admin_url', 'admin/nav/listorders', NULL, '前台导航排序', 1, ''),
(89, 'Admin', 'admin_url', 'admin/nav/delete', NULL, '删除菜单', 1, ''),
(90, 'Admin', 'admin_url', 'admin/nav/edit', NULL, '编辑菜单', 1, ''),
(91, 'Admin', 'admin_url', 'admin/nav/edit_post', NULL, '提交编辑', 1, ''),
(92, 'Admin', 'admin_url', 'admin/nav/add', NULL, '添加菜单', 1, ''),
(93, 'Admin', 'admin_url', 'admin/nav/add_post', NULL, '提交添加', 1, ''),
(94, 'Admin', 'admin_url', 'admin/navcat/index', NULL, '菜单分类', 1, ''),
(95, 'Admin', 'admin_url', 'admin/navcat/delete', NULL, '删除分类', 1, ''),
(96, 'Admin', 'admin_url', 'admin/navcat/edit', NULL, '编辑分类', 1, ''),
(97, 'Admin', 'admin_url', 'admin/navcat/edit_post', NULL, '提交编辑', 1, ''),
(98, 'Admin', 'admin_url', 'admin/navcat/add', NULL, '添加分类', 1, ''),
(99, 'Admin', 'admin_url', 'admin/navcat/add_post', NULL, '提交添加', 1, ''),
(100, 'Admin', 'admin_url', 'admin/menu/index', NULL, '后台菜单', 1, ''),
(101, 'Admin', 'admin_url', 'admin/menu/add', NULL, '添加菜单', 1, ''),
(102, 'Admin', 'admin_url', 'admin/menu/add_post', NULL, '提交添加', 1, ''),
(103, 'Admin', 'admin_url', 'admin/menu/listorders', NULL, '后台菜单排序', 1, ''),
(104, 'Admin', 'admin_url', 'admin/menu/export_menu', NULL, '菜单备份', 1, ''),
(105, 'Admin', 'admin_url', 'admin/menu/edit', NULL, '编辑菜单', 1, ''),
(106, 'Admin', 'admin_url', 'admin/menu/edit_post', NULL, '提交编辑', 1, ''),
(107, 'Admin', 'admin_url', 'admin/menu/delete', NULL, '删除菜单', 1, ''),
(108, 'Admin', 'admin_url', 'admin/menu/lists', NULL, '所有菜单', 1, ''),
(109, 'Admin', 'admin_url', 'admin/setting/default', NULL, '设置', 1, ''),
(110, 'Admin', 'admin_url', 'admin/setting/userdefault', NULL, '个人信息', 1, ''),
(111, 'Admin', 'admin_url', 'admin/user/userinfo', NULL, '修改信息', 1, ''),
(112, 'Admin', 'admin_url', 'admin/user/userinfo_post', NULL, '修改信息提交', 1, ''),
(113, 'Admin', 'admin_url', 'admin/setting/password', NULL, '修改密码', 1, ''),
(114, 'Admin', 'admin_url', 'admin/setting/password_post', NULL, '提交修改', 1, ''),
(115, 'Admin', 'admin_url', 'admin/setting/site', NULL, '网站信息', 1, ''),
(116, 'Admin', 'admin_url', 'admin/setting/site_post', NULL, '提交修改', 1, ''),
(117, 'Admin', 'admin_url', 'admin/route/index', NULL, '路由列表', 1, ''),
(118, 'Admin', 'admin_url', 'admin/route/add', NULL, '路由添加', 1, ''),
(119, 'Admin', 'admin_url', 'admin/route/add_post', NULL, '路由添加提交', 1, ''),
(120, 'Admin', 'admin_url', 'admin/route/edit', NULL, '路由编辑', 1, ''),
(121, 'Admin', 'admin_url', 'admin/route/edit_post', NULL, '路由编辑提交', 1, ''),
(122, 'Admin', 'admin_url', 'admin/route/delete', NULL, '路由删除', 1, ''),
(123, 'Admin', 'admin_url', 'admin/route/ban', NULL, '路由禁止', 1, ''),
(124, 'Admin', 'admin_url', 'admin/route/open', NULL, '路由启用', 1, ''),
(125, 'Admin', 'admin_url', 'admin/route/listorders', NULL, '路由排序', 1, ''),
(126, 'Admin', 'admin_url', 'admin/mailer/default', NULL, '邮箱配置', 1, ''),
(127, 'Admin', 'admin_url', 'admin/mailer/index', NULL, 'SMTP配置', 1, ''),
(128, 'Admin', 'admin_url', 'admin/mailer/index_post', NULL, '提交配置', 1, ''),
(129, 'Admin', 'admin_url', 'admin/mailer/active', NULL, '邮件模板', 1, ''),
(130, 'Admin', 'admin_url', 'admin/mailer/active_post', NULL, '提交模板', 1, ''),
(131, 'Admin', 'admin_url', 'admin/setting/clearcache', NULL, '清除缓存', 1, ''),
(132, 'User', 'admin_url', 'user/indexadmin/default', NULL, '用户管理', 1, ''),
(133, 'User', 'admin_url', 'user/indexadmin/default1', NULL, '用户组', 1, ''),
(134, 'User', 'admin_url', 'user/indexadmin/index', NULL, '本站用户', 1, ''),
(135, 'User', 'admin_url', 'user/indexadmin/ban', NULL, '拉黑会员', 1, ''),
(136, 'User', 'admin_url', 'user/indexadmin/cancelban', NULL, '启用会员', 1, ''),
(137, 'User', 'admin_url', 'user/oauthadmin/index', NULL, '第三方用户', 1, ''),
(138, 'User', 'admin_url', 'user/oauthadmin/delete', NULL, '第三方用户解绑', 1, ''),
(139, 'User', 'admin_url', 'user/indexadmin/default3', NULL, '管理组', 1, ''),
(140, 'Admin', 'admin_url', 'admin/rbac/index', NULL, '角色管理', 1, ''),
(141, 'Admin', 'admin_url', 'admin/rbac/member', NULL, '成员管理', 1, ''),
(142, 'Admin', 'admin_url', 'admin/rbac/authorize', NULL, '权限设置', 1, ''),
(143, 'Admin', 'admin_url', 'admin/rbac/authorize_post', NULL, '提交设置', 1, ''),
(144, 'Admin', 'admin_url', 'admin/rbac/roleedit', NULL, '编辑角色', 1, ''),
(145, 'Admin', 'admin_url', 'admin/rbac/roleedit_post', NULL, '提交编辑', 1, ''),
(146, 'Admin', 'admin_url', 'admin/rbac/roledelete', NULL, '删除角色', 1, ''),
(147, 'Admin', 'admin_url', 'admin/rbac/roleadd', NULL, '添加角色', 1, ''),
(148, 'Admin', 'admin_url', 'admin/rbac/roleadd_post', NULL, '提交添加', 1, ''),
(149, 'Admin', 'admin_url', 'admin/user/index', NULL, '管理员', 1, ''),
(150, 'Admin', 'admin_url', 'admin/user/delete', NULL, '删除管理员', 1, ''),
(151, 'Admin', 'admin_url', 'admin/user/edit', NULL, '管理员编辑', 1, ''),
(152, 'Admin', 'admin_url', 'admin/user/edit_post', NULL, '编辑提交', 1, ''),
(153, 'Admin', 'admin_url', 'admin/user/add', NULL, '管理员添加', 1, ''),
(154, 'Admin', 'admin_url', 'admin/user/add_post', NULL, '添加提交', 1, ''),
(155, 'Admin', 'admin_url', 'admin/plugin/update', NULL, '插件更新', 1, ''),
(156, 'Admin', 'admin_url', 'admin/storage/index', NULL, '文件存储', 1, ''),
(157, 'Admin', 'admin_url', 'admin/storage/setting_post', NULL, '文件存储设置提交', 1, ''),
(158, 'Admin', 'admin_url', 'admin/slide/ban', NULL, '禁用幻灯片', 1, ''),
(159, 'Admin', 'admin_url', 'admin/slide/cancelban', NULL, '启用幻灯片', 1, ''),
(160, 'Admin', 'admin_url', 'admin/user/ban', NULL, '禁用管理员', 1, ''),
(161, 'Admin', 'admin_url', 'admin/user/cancelban', NULL, '启用管理员', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cmf_comments`
--

CREATE TABLE `cmf_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_common_action_log`
--

CREATE TABLE `cmf_common_action_log` (
  `id` int(11) NOT NULL,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='访问记录表';

--
-- Dumping data for table `cmf_common_action_log`
--

INSERT INTO `cmf_common_action_log` (`id`, `user`, `object`, `action`, `count`, `last_time`, `ip`) VALUES
(1, 2, 'posts3', 'Portal-Article-do_like', 1, 1466399831, '0.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `cmf_guestbook`
--

CREATE TABLE `cmf_guestbook` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL COMMENT '留言时间',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '留言状态，1：正常，0：删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_links`
--

CREATE TABLE `cmf_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_menu`
--

CREATE TABLE `cmf_menu` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `parentid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

--
-- Dumping data for table `cmf_menu`
--

INSERT INTO `cmf_menu` (`id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder`) VALUES
(1, 0, 'Admin', 'Content', 'default', '', 0, 1, '内容管理', 'th', '', 30),
(2, 1, 'Api', 'Guestbookadmin', 'index', '', 1, 1, '所有留言', '', '', 0),
(3, 2, 'Api', 'Guestbookadmin', 'delete', '', 1, 0, '删除网站留言', '', '', 0),
(4, 1, 'Comment', 'Commentadmin', 'index', '', 1, 1, '评论管理', '', '', 0),
(5, 4, 'Comment', 'Commentadmin', 'delete', '', 1, 0, '删除评论', '', '', 0),
(6, 4, 'Comment', 'Commentadmin', 'check', '', 1, 0, '评论审核', '', '', 0),
(7, 1, 'Portal', 'AdminPost', 'index', '', 1, 1, '文章管理', '', '', 1),
(8, 7, 'Portal', 'AdminPost', 'listorders', '', 1, 0, '文章排序', '', '', 0),
(9, 7, 'Portal', 'AdminPost', 'top', '', 1, 0, '文章置顶', '', '', 0),
(10, 7, 'Portal', 'AdminPost', 'recommend', '', 1, 0, '文章推荐', '', '', 0),
(11, 7, 'Portal', 'AdminPost', 'move', '', 1, 0, '批量移动', '', '', 1000),
(12, 7, 'Portal', 'AdminPost', 'check', '', 1, 0, '文章审核', '', '', 1000),
(13, 7, 'Portal', 'AdminPost', 'delete', '', 1, 0, '删除文章', '', '', 1000),
(14, 7, 'Portal', 'AdminPost', 'edit', '', 1, 0, '编辑文章', '', '', 1000),
(15, 14, 'Portal', 'AdminPost', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(16, 7, 'Portal', 'AdminPost', 'add', '', 1, 0, '添加文章', '', '', 1000),
(17, 16, 'Portal', 'AdminPost', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(18, 1, 'Portal', 'AdminTerm', 'index', '', 0, 1, '分类管理', '', '', 2),
(19, 18, 'Portal', 'AdminTerm', 'listorders', '', 1, 0, '文章分类排序', '', '', 0),
(20, 18, 'Portal', 'AdminTerm', 'delete', '', 1, 0, '删除分类', '', '', 1000),
(21, 18, 'Portal', 'AdminTerm', 'edit', '', 1, 0, '编辑分类', '', '', 1000),
(22, 21, 'Portal', 'AdminTerm', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(23, 18, 'Portal', 'AdminTerm', 'add', '', 1, 0, '添加分类', '', '', 1000),
(24, 23, 'Portal', 'AdminTerm', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(25, 1, 'Portal', 'AdminPage', 'index', '', 1, 1, '页面管理', '', '', 3),
(26, 25, 'Portal', 'AdminPage', 'listorders', '', 1, 0, '页面排序', '', '', 0),
(27, 25, 'Portal', 'AdminPage', 'delete', '', 1, 0, '删除页面', '', '', 1000),
(28, 25, 'Portal', 'AdminPage', 'edit', '', 1, 0, '编辑页面', '', '', 1000),
(29, 28, 'Portal', 'AdminPage', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(30, 25, 'Portal', 'AdminPage', 'add', '', 1, 0, '添加页面', '', '', 1000),
(31, 30, 'Portal', 'AdminPage', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(32, 1, 'Admin', 'Recycle', 'default', '', 1, 1, '回收站', '', '', 4),
(33, 32, 'Portal', 'AdminPost', 'recyclebin', '', 1, 1, '文章回收', '', '', 0),
(34, 33, 'Portal', 'AdminPost', 'restore', '', 1, 0, '文章还原', '', '', 1000),
(35, 33, 'Portal', 'AdminPost', 'clean', '', 1, 0, '彻底删除', '', '', 1000),
(36, 32, 'Portal', 'AdminPage', 'recyclebin', '', 1, 1, '页面回收', '', '', 1),
(37, 36, 'Portal', 'AdminPage', 'clean', '', 1, 0, '彻底删除', '', '', 1000),
(38, 36, 'Portal', 'AdminPage', 'restore', '', 1, 0, '页面还原', '', '', 1000),
(39, 0, 'Admin', 'Extension', 'default', '', 0, 1, '扩展工具', 'cloud', '', 40),
(40, 39, 'Admin', 'Backup', 'default', '', 1, 1, '备份管理', '', '', 0),
(41, 40, 'Admin', 'Backup', 'restore', '', 1, 1, '数据还原', '', '', 0),
(42, 40, 'Admin', 'Backup', 'index', '', 1, 1, '数据备份', '', '', 0),
(43, 42, 'Admin', 'Backup', 'index_post', '', 1, 0, '提交数据备份', '', '', 0),
(44, 40, 'Admin', 'Backup', 'download', '', 1, 0, '下载备份', '', '', 1000),
(45, 40, 'Admin', 'Backup', 'del_backup', '', 1, 0, '删除备份', '', '', 1000),
(46, 40, 'Admin', 'Backup', 'import', '', 1, 0, '数据备份导入', '', '', 1000),
(47, 39, 'Admin', 'Plugin', 'index', '', 1, 1, '插件管理', '', '', 0),
(48, 47, 'Admin', 'Plugin', 'toggle', '', 1, 0, '插件启用切换', '', '', 0),
(49, 47, 'Admin', 'Plugin', 'setting', '', 1, 0, '插件设置', '', '', 0),
(50, 49, 'Admin', 'Plugin', 'setting_post', '', 1, 0, '插件设置提交', '', '', 0),
(51, 47, 'Admin', 'Plugin', 'install', '', 1, 0, '插件安装', '', '', 0),
(52, 47, 'Admin', 'Plugin', 'uninstall', '', 1, 0, '插件卸载', '', '', 0),
(53, 39, 'Admin', 'Slide', 'default', '', 1, 1, '幻灯片', '', '', 1),
(54, 53, 'Admin', 'Slide', 'index', '', 1, 1, '幻灯片管理', '', '', 0),
(55, 54, 'Admin', 'Slide', 'listorders', '', 1, 0, '幻灯片排序', '', '', 0),
(56, 54, 'Admin', 'Slide', 'toggle', '', 1, 0, '幻灯片显示切换', '', '', 0),
(57, 54, 'Admin', 'Slide', 'delete', '', 1, 0, '删除幻灯片', '', '', 1000),
(58, 54, 'Admin', 'Slide', 'edit', '', 1, 0, '编辑幻灯片', '', '', 1000),
(59, 58, 'Admin', 'Slide', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(60, 54, 'Admin', 'Slide', 'add', '', 1, 0, '添加幻灯片', '', '', 1000),
(61, 60, 'Admin', 'Slide', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(62, 53, 'Admin', 'Slidecat', 'index', '', 1, 1, '幻灯片分类', '', '', 0),
(63, 62, 'Admin', 'Slidecat', 'delete', '', 1, 0, '删除分类', '', '', 1000),
(64, 62, 'Admin', 'Slidecat', 'edit', '', 1, 0, '编辑分类', '', '', 1000),
(65, 64, 'Admin', 'Slidecat', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(66, 62, 'Admin', 'Slidecat', 'add', '', 1, 0, '添加分类', '', '', 1000),
(67, 66, 'Admin', 'Slidecat', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(68, 39, 'Admin', 'Ad', 'index', '', 1, 1, '网站广告', '', '', 2),
(69, 68, 'Admin', 'Ad', 'toggle', '', 1, 0, '广告显示切换', '', '', 0),
(70, 68, 'Admin', 'Ad', 'delete', '', 1, 0, '删除广告', '', '', 1000),
(71, 68, 'Admin', 'Ad', 'edit', '', 1, 0, '编辑广告', '', '', 1000),
(72, 71, 'Admin', 'Ad', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(73, 68, 'Admin', 'Ad', 'add', '', 1, 0, '添加广告', '', '', 1000),
(74, 73, 'Admin', 'Ad', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(75, 39, 'Admin', 'Link', 'index', '', 0, 1, '友情链接', '', '', 3),
(76, 75, 'Admin', 'Link', 'listorders', '', 1, 0, '友情链接排序', '', '', 0),
(77, 75, 'Admin', 'Link', 'toggle', '', 1, 0, '友链显示切换', '', '', 0),
(78, 75, 'Admin', 'Link', 'delete', '', 1, 0, '删除友情链接', '', '', 1000),
(79, 75, 'Admin', 'Link', 'edit', '', 1, 0, '编辑友情链接', '', '', 1000),
(80, 79, 'Admin', 'Link', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(81, 75, 'Admin', 'Link', 'add', '', 1, 0, '添加友情链接', '', '', 1000),
(82, 81, 'Admin', 'Link', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(83, 39, 'Api', 'Oauthadmin', 'setting', '', 1, 1, '第三方登陆', 'leaf', '', 4),
(84, 83, 'Api', 'Oauthadmin', 'setting_post', '', 1, 0, '提交设置', '', '', 0),
(85, 0, 'Admin', 'Menu', 'default', '', 1, 1, '菜单管理', 'list', '', 20),
(86, 85, 'Admin', 'Navcat', 'default1', '', 1, 1, '前台菜单', '', '', 0),
(87, 86, 'Admin', 'Nav', 'index', '', 1, 1, '菜单管理', '', '', 0),
(88, 87, 'Admin', 'Nav', 'listorders', '', 1, 0, '前台导航排序', '', '', 0),
(89, 87, 'Admin', 'Nav', 'delete', '', 1, 0, '删除菜单', '', '', 1000),
(90, 87, 'Admin', 'Nav', 'edit', '', 1, 0, '编辑菜单', '', '', 1000),
(91, 90, 'Admin', 'Nav', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(92, 87, 'Admin', 'Nav', 'add', '', 1, 0, '添加菜单', '', '', 1000),
(93, 92, 'Admin', 'Nav', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(94, 86, 'Admin', 'Navcat', 'index', '', 1, 1, '菜单分类', '', '', 0),
(95, 94, 'Admin', 'Navcat', 'delete', '', 1, 0, '删除分类', '', '', 1000),
(96, 94, 'Admin', 'Navcat', 'edit', '', 1, 0, '编辑分类', '', '', 1000),
(97, 96, 'Admin', 'Navcat', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(98, 94, 'Admin', 'Navcat', 'add', '', 1, 0, '添加分类', '', '', 1000),
(99, 98, 'Admin', 'Navcat', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(100, 85, 'Admin', 'Menu', 'index', '', 1, 1, '后台菜单', '', '', 0),
(101, 100, 'Admin', 'Menu', 'add', '', 1, 0, '添加菜单', '', '', 0),
(102, 101, 'Admin', 'Menu', 'add_post', '', 1, 0, '提交添加', '', '', 0),
(103, 100, 'Admin', 'Menu', 'listorders', '', 1, 0, '后台菜单排序', '', '', 0),
(104, 100, 'Admin', 'Menu', 'export_menu', '', 1, 0, '菜单备份', '', '', 1000),
(105, 100, 'Admin', 'Menu', 'edit', '', 1, 0, '编辑菜单', '', '', 1000),
(106, 105, 'Admin', 'Menu', 'edit_post', '', 1, 0, '提交编辑', '', '', 0),
(107, 100, 'Admin', 'Menu', 'delete', '', 1, 0, '删除菜单', '', '', 1000),
(108, 100, 'Admin', 'Menu', 'lists', '', 1, 0, '所有菜单', '', '', 1000),
(109, 0, 'Admin', 'Setting', 'default', '', 0, 1, '设置', 'cogs', '', 0),
(110, 109, 'Admin', 'Setting', 'userdefault', '', 0, 1, '个人信息', '', '', 0),
(111, 110, 'Admin', 'User', 'userinfo', '', 1, 1, '修改信息', '', '', 0),
(112, 111, 'Admin', 'User', 'userinfo_post', '', 1, 0, '修改信息提交', '', '', 0),
(113, 110, 'Admin', 'Setting', 'password', '', 1, 1, '修改密码', '', '', 0),
(114, 113, 'Admin', 'Setting', 'password_post', '', 1, 0, '提交修改', '', '', 0),
(115, 109, 'Admin', 'Setting', 'site', '', 1, 1, '网站信息', '', '', 0),
(116, 115, 'Admin', 'Setting', 'site_post', '', 1, 0, '提交修改', '', '', 0),
(117, 115, 'Admin', 'Route', 'index', '', 1, 0, '路由列表', '', '', 0),
(118, 115, 'Admin', 'Route', 'add', '', 1, 0, '路由添加', '', '', 0),
(119, 118, 'Admin', 'Route', 'add_post', '', 1, 0, '路由添加提交', '', '', 0),
(120, 115, 'Admin', 'Route', 'edit', '', 1, 0, '路由编辑', '', '', 0),
(121, 120, 'Admin', 'Route', 'edit_post', '', 1, 0, '路由编辑提交', '', '', 0),
(122, 115, 'Admin', 'Route', 'delete', '', 1, 0, '路由删除', '', '', 0),
(123, 115, 'Admin', 'Route', 'ban', '', 1, 0, '路由禁止', '', '', 0),
(124, 115, 'Admin', 'Route', 'open', '', 1, 0, '路由启用', '', '', 0),
(125, 115, 'Admin', 'Route', 'listorders', '', 1, 0, '路由排序', '', '', 0),
(126, 109, 'Admin', 'Mailer', 'default', '', 1, 1, '邮箱配置', '', '', 0),
(127, 126, 'Admin', 'Mailer', 'index', '', 1, 1, 'SMTP配置', '', '', 0),
(128, 127, 'Admin', 'Mailer', 'index_post', '', 1, 0, '提交配置', '', '', 0),
(129, 126, 'Admin', 'Mailer', 'active', '', 1, 1, '邮件模板', '', '', 0),
(130, 129, 'Admin', 'Mailer', 'active_post', '', 1, 0, '提交模板', '', '', 0),
(131, 109, 'Admin', 'Setting', 'clearcache', '', 1, 1, '清除缓存', '', '', 1),
(132, 0, 'User', 'Indexadmin', 'default', '', 1, 1, '用户管理', 'group', '', 10),
(133, 132, 'User', 'Indexadmin', 'default1', '', 1, 1, '用户组', '', '', 0),
(134, 133, 'User', 'Indexadmin', 'index', '', 1, 1, '本站用户', 'leaf', '', 0),
(135, 134, 'User', 'Indexadmin', 'ban', '', 1, 0, '拉黑会员', '', '', 0),
(136, 134, 'User', 'Indexadmin', 'cancelban', '', 1, 0, '启用会员', '', '', 0),
(137, 133, 'User', 'Oauthadmin', 'index', '', 1, 1, '第三方用户', 'leaf', '', 0),
(138, 137, 'User', 'Oauthadmin', 'delete', '', 1, 0, '第三方用户解绑', '', '', 0),
(139, 132, 'User', 'Indexadmin', 'default3', '', 1, 1, '管理组', '', '', 0),
(140, 139, 'Admin', 'Rbac', 'index', '', 1, 1, '角色管理', '', '', 0),
(141, 140, 'Admin', 'Rbac', 'member', '', 1, 0, '成员管理', '', '', 1000),
(142, 140, 'Admin', 'Rbac', 'authorize', '', 1, 0, '权限设置', '', '', 1000),
(143, 142, 'Admin', 'Rbac', 'authorize_post', '', 1, 0, '提交设置', '', '', 0),
(144, 140, 'Admin', 'Rbac', 'roleedit', '', 1, 0, '编辑角色', '', '', 1000),
(145, 144, 'Admin', 'Rbac', 'roleedit_post', '', 1, 0, '提交编辑', '', '', 0),
(146, 140, 'Admin', 'Rbac', 'roledelete', '', 1, 1, '删除角色', '', '', 1000),
(147, 140, 'Admin', 'Rbac', 'roleadd', '', 1, 1, '添加角色', '', '', 1000),
(148, 147, 'Admin', 'Rbac', 'roleadd_post', '', 1, 0, '提交添加', '', '', 0),
(149, 139, 'Admin', 'User', 'index', '', 1, 1, '管理员', '', '', 0),
(150, 149, 'Admin', 'User', 'delete', '', 1, 0, '删除管理员', '', '', 1000),
(151, 149, 'Admin', 'User', 'edit', '', 1, 0, '管理员编辑', '', '', 1000),
(152, 151, 'Admin', 'User', 'edit_post', '', 1, 0, '编辑提交', '', '', 0),
(153, 149, 'Admin', 'User', 'add', '', 1, 0, '管理员添加', '', '', 1000),
(154, 153, 'Admin', 'User', 'add_post', '', 1, 0, '添加提交', '', '', 0),
(155, 47, 'Admin', 'Plugin', 'update', '', 1, 0, '插件更新', '', '', 0),
(156, 39, 'Admin', 'Storage', 'index', '', 1, 1, '文件存储', '', '', 0),
(157, 156, 'Admin', 'Storage', 'setting_post', '', 1, 0, '文件存储设置提交', '', '', 0),
(158, 54, 'Admin', 'Slide', 'ban', '', 1, 0, '禁用幻灯片', '', '', 0),
(159, 54, 'Admin', 'Slide', 'cancelban', '', 1, 0, '启用幻灯片', '', '', 0),
(160, 149, 'Admin', 'User', 'ban', '', 1, 0, '禁用管理员', '', '', 0),
(161, 149, 'Admin', 'User', 'cancelban', '', 1, 0, '启用管理员', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cmf_nav`
--

CREATE TABLE `cmf_nav` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL COMMENT '导航分类 id',
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL DEFAULT '0' COMMENT '层级关系'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前台导航表';

--
-- Dumping data for table `cmf_nav`
--

INSERT INTO `cmf_nav` (`id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path`) VALUES
(16, 1, 0, '会员作品展示', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:1:"1";}}', '', 1, 0, '0-16'),
(15, 1, 0, '作家书画廊', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:1:"8";}}', '', 1, 0, '0-15'),
(14, 1, 0, '作家在线', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:1:"7";}}', '', 1, 0, '0-14'),
(12, 1, 0, '作协概况', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:1:"6";}}', '', 1, 0, '0-12'),
(7, 1, 0, '文坛新闻', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:1:"4";}}', '', 1, 0, '0-7'),
(11, 3, 0, '广东文坛新闻', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:1:"4";}}', '', 1, 0, '0-11'),
(17, 1, 0, '作协动态', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:2:"10";}}', '', 1, 0, '0-17'),
(18, 1, 0, '理论研讨', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:2:"11";}}', '', 1, 0, '0-18'),
(19, 1, 0, '报刊中心', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:2:"12";}}', '', 1, 0, '0-19'),
(20, 1, 0, '岭南名家', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:2:"13";}}', '', 1, 0, '0-20'),
(21, 1, 0, '公告与下载', '', 'a:2:{s:6:"action";s:17:"Portal/List/index";s:5:"param";a:1:{s:2:"id";s:2:"14";}}', '', 1, 0, '0-21');

-- --------------------------------------------------------

--
-- Table structure for table `cmf_nav_cat`
--

CREATE TABLE `cmf_nav_cat` (
  `navcid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否为主菜单，1是，0不是',
  `remark` text COMMENT '备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前台导航分类表';

--
-- Dumping data for table `cmf_nav_cat`
--

INSERT INTO `cmf_nav_cat` (`navcid`, `name`, `active`, `remark`) VALUES
(1, '主导航', 1, '主导航'),
(3, '分类新闻', 0, '分类新闻');

-- --------------------------------------------------------

--
-- Table structure for table `cmf_oauth_user`
--

CREATE TABLE `cmf_oauth_user` (
  `id` int(20) NOT NULL,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(512) NOT NULL,
  `expires_date` int(11) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方用户表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_options`
--

CREATE TABLE `cmf_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='全站配置表';

--
-- Dumping data for table `cmf_options`
--

INSERT INTO `cmf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'member_email_active', '{"title":"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.","template":"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\"http:\\/\\/www.thinkcmf.com\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\"\\" href=\\"http:\\/\\/#link#\\" target=\\"_self\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>"}', 1),
(2, 'site_options', '{"site_name":"\\u5e7f\\u4e1c\\u4f5c\\u5bb6\\u7f51","site_host":"http:\\/\\/localhost\\/","site_admin_url_password":"","site_tpl":"zuojia","site_adminstyle":"bluesky","html_cache_on":"1","site_icp":"","site_admin_email":"1297942619@qq.com","site_tongji":"","site_copyright":"","site_seo_title":"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6","site_seo_keywords":"\\u5e7f\\u4e1c\\u4f5c\\u5bb6\\u7f51,\\u5e7f\\u4e1c\\u6587\\u5b66,\\u4f5c\\u5bb6,\\u5cad\\u5357\\u6587\\u5316","site_seo_description":"\\u5e7f\\u4e1c\\u4f5c\\u5bb6\\u7f51\\u662f\\u5cad\\u5357\\u5730\\u533a\\u6709\\u540d\\u4f5c\\u5bb6\\u7684\\u805a\\u96c6\\u5730\\uff0c\\u5728\\u8fd9\\u91cc\\u60a8\\u53ef\\u4ee5\\u5c3d\\u60c5\\u5199\\u4f5c\\u548c\\u9605\\u8bfb","urlmode":"0","html_suffix":"","comment_time_interval":60}', 1),
(3, 'cmf_settings', '{"banned_usernames":""}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cmf_plugins`
--

CREATE TABLE `cmf_plugins` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_posts`
--

CREATE TABLE `cmf_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) UNSIGNED DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Portal文章表';

--
-- Dumping data for table `cmf_posts`
--

INSERT INTO `cmf_posts` (`id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`) VALUES
(1, 1, '肇庆市作家协会换届', '', '2016-06-19 21:39:40', '<p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 40px;background-color: rgb(250, 250, 250)"><span style="font-size:16px"><span style="font-family:宋体"><span style="border: 1px windowtext;padding: 0">2015</span><span style="border: 1px windowtext;padding: 0">年12月28日</span><span style="border: 1px windowtext;padding: 0">下午，肇庆市作家协会召开第四次代表大会，来自全市各地近百名会员代表及市委宣传部、市文联有关领导出席大会。</span></span></span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 40px;background-color: rgb(250, 250, 250)"><span style="border: 1px windowtext;padding: 0"><span style="font-size:16px"><span style="font-family:宋体">大会审议通过第三届肇庆市作家协会理事会工作报告和《肇庆市作家协会章程（修改草案）》，选举第四届肇庆市作家协会领导机构。</span></span></span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 40px;background-color: rgb(250, 250, 250)"><span style="border: 1px windowtext;padding: 0"><span style="font-size:16px"><span style="font-family:宋体">钟道宇当选第四届肇庆市作家协会主席，徐金丽、八炎奎、苏泽明、关敏玲等四人当选副主席。此外，第四届肇庆市作家协会主席团聘请何初树为名誉主席，聘请陈锦润、唐希明、覃志端为顾问。</span></span></span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 40px;background-color: rgb(250, 250, 250)"><span style="font-size:16px"><span style="font-family:宋体"><span style="border: 1px windowtext;padding: 0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="border: 1px windowtext;padding: 0">（肇作协）</span></span></span></p><p><br/></p>', '肇庆市作家协会换届', '2015年12月28日下午，肇庆市作家协会召开第四次代表大会，来自全市各地近百名会员代表及市委宣传部、市文联有关领导出席大会。', 1, 1, '2016-06-19 21:38:33', NULL, 0, NULL, '', 0, '{"thumb":""}', 6, 0, 1, 1),
(2, 1, '分页', NULL, '2016-06-19 22:18:29', '<p>分页</p>', '分页', '分页', 0, 1, '2016-06-19 22:17:43', NULL, 0, 2, '', 0, '{"template":"page","thumb":""}', 0, 0, 0, 0),
(3, 1, '广东省作家协会2014年 工作报告', '', '2016-06-19 22:20:02', '<p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-align: center;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（2014年12月21日）</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-align: center;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">广东省作家协会党组书记、专职副主席&nbsp;&nbsp;吴伟鹏</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">同志们：</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">我受省作协党组委托，向主席团会议作工作报告，请大家审议。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">一、2014年工作回顾</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">2014</span><span style="font-family: 仿宋_GB2312;font-size: 19px">年，广东省作家协会在省委、省政府、省委宣传部坚强领导和中国作协及省有关部门的指导、支持、帮助下，认真学习习近平总书记系列重要讲话精神，深入贯彻落实党的十八大及十八届三中、四中全会精神，深入开展群众路线教育实践活动和“深入生活、扎根人民”主题实践活动，围绕中心、服务大局，以“出精品佳作、出优秀人才、出创新理论”为目标，切实履行好联络、协调、引导、服务等职能，各项工作都取得了新成绩新进展。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（一）坚持正确思想导向，文学创作成果丰硕</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">“文学梦”融入“中国梦”。省作协把学习宣传贯彻习近平总书记系列重要讲话尤其是习近平总书记在文艺工作座谈会上重要讲话精神作为重要政治任务，动员广大文学工作者深刻领会总书记关于文艺工作的新思想新观点新论断，明确方向、统一步调、激发动力，自觉把“文学梦”与国家富强、民族振兴、人民幸福的伟大梦想结合起来，坚定不移地走中国特色社会主义文学发展道路，为建设文化强省、文化强国贡献力量；鼓励和引导广大作家积极参与中宣部等五部委组织开展的以“中国梦”为主题的文学创作活动，推出了一批形象诠释“中国梦”的主题内涵、艺术质量较高、读者广泛欢迎的精品力作。举行了广东文学界弘扬社会主义核心价值观座谈会，30多位老中青作家出席会议并当场签署了《倡议书》。党组成员、主席团成员率先垂范下基层，挖深井、接地气，吴伟鹏先后到肇庆四会市、广宁县等地和基层文学作者一道学习习近平总书记重要讲话精神，研究扶持繁荣基层文学的具体措施，蒋述卓、孙丽生、张建渝、杨克、李国伟、谢有顺、熊育群、王十月等分别带领省市作家先后分赴东莞、湛江、揭阳、中山、南海等地开展了采风、创作、调研活动。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">抓好重点创作扶持。为推进实施“文学粤军”工程，鼓励作家聚焦南粤大地，描绘广东波澜壮阔的历史变革，展现岭南深厚的文化底蕴和独特的风土人情，创作一批反映“粤人粤事粤味”的文学精品，省作协自1月起公开征集2014年重大题材创作选题，于5月举行了选题签约仪式，最终确定29位作者及其选题入选扶持项目。配合重大、重点文学选题的征集、创作，组织了现实题材长篇小说创作座谈会。推荐吕雷、简嘉长篇小说《低纬度青春期》、张梅长篇小说《烽火连三月》、盛可以长篇小说《野蛮生长》、陈诗歌儿童文学《童话之书》、陆露小说《古港千年》、谭丽娟小说《兰家书语》分别入选中国作家协会2014年重点作品扶持项目篇目、少数民族文学重点作品扶持项目篇目。组织编辑出版了《广东文学作品精选丛书2009－2013》（四卷）、《被照亮的世界——广东作家网“文学风”论坛作品精选》、《粤海散文原创文库》，受到社会各界广泛好评。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">精品佳作不断涌现。全省广大作家关注时代变化，潜心艺术探索，创作了大量思想内涵丰富、艺术品质上乘的优秀作品，在各类文学评选中多次获得荣誉。主要包括：南翔短篇小说《老桂家的鱼》、丁燕报告文学《低天空：珠江三角洲女工的痛与爱》、陈启文报告文学《命脉：中国水利调查》、卢卫平诗集《浊酒杯》、塞壬散文集《匿名者》获中国作协第六届鲁迅文学奖提名；刘迪生报告文学《南国高原》、张培忠报告文学《海权战略——郑芝龙、郑成功海商集团纪事》、喻季欣报告文学《逐梦世界——广交会传奇》、罗宏长篇小说《骡子和金子》、王心钢长篇小说《水滴》、刘明霞报告文学《乌禽嶂下的中国好人》等获广东省第九届精神文明建设“五个一工程”奖；蒋述卓论文《流行文艺与主流价值关系初议》、谢有顺论文《重构中国小说的叙事伦理》分获第九届中国文艺评论奖论文类特等奖和一等奖，申霞艳论文《“梁庄”与中国想象》、柳冬妩著作《打工文学的整体观察》分获论文、著作二等奖；庞贝长篇小说《无尽藏》获第三届《中国作家》剑门关文学奖“长篇小说奖”；邓一光中篇小说《你可以让百合生长》获第三届郁达夫小说奖“中篇小说奖”；许锋小小说《村姑胡月玲》、刘宏伟中篇小说《前期》获第二十三届“东丽杯”全国梁斌小说奖；寒郁获第二届“紫金·人民文学之星”短篇小说佳作奖；杨文丰散文《雾霾批判书——自然笔记》获第七届老舍散文奖；陈启文《命脉：中国水利调查》、丁燕《低天空：珠三角女工的痛与爱》获“石花杯”第五届徐迟报告文学奖；申平小小说《瘸羊倌儿》获“德孝廉”小小说全国征文大奖赛一等奖；塞壬散文集《匿名者》、詹谷丰散文《书生的骨头》、阿微木依萝散文《走族》分获第五届在场主义散文奖提名奖、新锐奖；吴君小说《华强北》、孙向学小说《一色》、彤子小说《悬空的宫殿》获《广州文艺》第二届“都市小说双年展”优秀作品奖，王威廉小说《洗碗》获新人奖；李国伟童话绘本《钥匙失踪的秘密》获2014年度冰心儿童图书奖；晓雷获“乾有杯”第11届金江寓言奖；陈诗歌获第二届《儿童文学》十大青年金作家奖等。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（二）严格遵循审美标准，文学评介引领风尚</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">文学评论有声有色。省作协充分发挥文学评论引导创作、推介精品、提高审美、引领风尚的作用，在省委宣传部的牵头下，联合《南方日报》、《羊城晚报》等主流媒体实施“广东文艺评论提升计划”，力求提升广东文艺创作在全国的地位，重塑广东文化形象。以研讨、评论、争鸣、访谈等丰富多样的形式，开辟专栏专版刊登关于广东文艺创作现状的系列报道，先后推出了罗宏、张培忠、张欣等作家作品评论专题和王十月、郭金牛、柳冬妩等作家访谈。为加强评论家队伍建设，省作协联合珠海市文联于4月举办了广东文学评论研修班。本次研修班系省作协成立60年来规格最高的文学评论研修班，受到省内外文学界高度关注。同时，重视追踪广东文学创作动态，加强对文学研讨会的引导，注重提高文学研讨活动的质量，分别在广州、北京组织召开了南翔小说集《绿皮车》、陈启文报告文学《命脉——中国水利调查》、罗宏长篇小说《骡子和金子》、张培忠纪实文学《海权战略》、王心钢长篇小说《水滴》研讨会和张慧谋、徐东、王威廉、陈再见四作家作品研讨会。全年还坚持组织开展“文学·现场”文学沙龙系列活动，以作家对话形式探讨文学话题，对话实录每月均由《新世纪文坛》辟专版刊载。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">文学活动丰富多彩。为进一步培育广东文艺界崇德尚艺的良好氛围，树立优秀典型，省作协进一步完善和规范了系列文学征文、评奖活动。配合省委宣传部、省文化厅等部门开展第二届广东省中青年德艺双馨作家、艺术家评选活动。联合南方报业传媒集团、广东省教育研究院承办2014小学生诗歌节。切实组织好各项文学评奖工作，积极创新评奖程序和颁奖形式，增强评奖活动的公信力和权威性。先后联合省直机关工委主办“中国梦·我的梦”主题诗词创作邀请赛；联合南海区组织首届广东省“桂城杯”诗歌奖评奖，共评出金奖作品1部、优秀奖作品10部，在省内外引起热烈反响，新华社、人民日报、光明日报等中央媒体对获金奖作品及作家作了大篇幅报道；联合省纪委宣传部、《南方日报》社举办“廉洁广东行·微小说征文大赛”；联合腾讯文学举办“网络文学正能量”座谈会和“南粤好故事广东正能量”网络小说征文大赛。还参与了第三届“中山杯”华侨华人文学奖、首届中国“阮章竞诗歌奖”评选活动。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（三）采取灵活有效措施，文学队伍规模壮大</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">建设文学人才梯队。省作协制定落实“文学名家造就计划”、“青年英才开发计划”，把培养各文学门类领军人物作为人才队伍建设的长期任务和重点工作，务求推出更多具有全国影响的文学大家名家、新秀新锐，形成多个有特色、有实力的广东作家群体。目前，“中青年女作家群”、“青年诗人群”、“深圳移民作家群”、“打工作家群”、“80后新锐作家群”在省内产生辐射带动效应。同时，探索将新兴文学创作队伍纳入登记管理，争取吸收更多符合条件的青年作家、网络作家入会。全年新吸收105名省作协会员，新增中国作协会员22名。根据统计，截止12月，省作协会员共有3511人，中国作协会员共有478人。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">完善文学职称评审。为激发文学队伍活力，推动会员作家勇攀文学高峰，省作协积极改革完善全省文学创作职称评审工作。进行了多项改革创新，主要包括：增加审读专家人数、审读会议表决采用量化方式、增加专业组评审环节、实行集中评委审读申报作品。组建了广东省第三届文学创作高、中级专业技术资格评委会评委库，举办了广东省文学创作专业继续教育专业课面授培训班和网络培训班。全年受理43人申报一、二、三、四级文学创作职称。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">巩固扩大文学阵地。省作协高度重视文学发表阵地建设，努力为会员作家提供更多发表作品的园地。《作品》杂志，自3月起全面改版上半月刊，提出“好作品让生命发光”的办刊理念，推出“跨界”、“手稿”、“博士论”、“民间诗刊档案”、“浪潮1990”、“文学新粤军”等栏目，在保持作品高品质、纯粹性的同时拓展文学边界，荣获“中国最美期刊”称号，被转载作品达33篇（次）。下半月刊专门刊登全省基层作者文学作品，先后出版“广东省青年产业工人作家”、“阳江地税”、“珠海地税”三个专号，集中推介了130多名作者作品。还开设了《作品》微博、公众微信号、淘宝店。《少男少女》杂志，联合广州市教育局编辑出版《青春航标——社会主义核心价值观校园读本》，联合广东省宋庆龄基金会出版《乘着爱的翅膀飞翔——第五届广东省宋庆龄奖学金获奖学生风采录》，联合广州市荔湾区教育局举办第四届“少男少女·文话荔湾”学生记者培训夏令营，还组织近百名中小学生集体采访了南国书香节。《人间》杂志、《网络文学评论》杂志、《新世纪文坛》报、广东作家网、《粤海散文》、《中西诗歌》也致力于宣传推荐优秀作家作品，取得明显成效。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">加强文学培训普及。省作协重视抓好文学培训普及工作，夯实文学粤军的队伍根基。举办了广东网络作家高级研修班。联合茂名市作协举办了茂名作家文学创作高级研修班。举办了广东文学院签约作家高级研修班。据不完全统计，各级作协全年深入开展“文学进校园、机关、军营（警队）、基层”活动，举办了300多场文学名家讲座，其中仅省作协就组织了30多场。此外，还推荐3名作家参加了中国作协鲁迅文学院培训班学习。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（四）积极探索融合交流，文学空间不断拓展</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">推动文学与文化产业对接。省作协鼓励支持作家“触网”、“触电”，与文学原创网站、电影电视机构、主流媒体合作，促进原创文学精品与文化产业发展链接，实现优势互补、共同发展。《作品》杂志社联合《南方日报》社举办了“南方微电影”活动，利用微电影项目平台，定期向公众推介《作品》发表的小说。省作协“纪念辛亥革命100周年”丛书作品、却却长篇小说《战长沙》被改编成同名电视剧在央视播放，会员作家蔼琳长篇小说《懒得结婚》改编成电视连续剧《不是不想嫁》在多家卫视播放，签约作家裴蓓担任制作人将其小说《青涩》改编成电影《青涩日记》参加多个影展，王心钢长篇小说《水滴》改编成粤剧、广播剧，反响良好。签约作家孙向学长篇小说《仙儿堂》、罗宏长篇小说《骡子和金子》先后售出影视版权。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">增进文学国内外交流。一是实施文学“走出去、请进来”战略，促进文学交流交融。在东莞举行了“在南方相遇——中法诗歌雅集”。联合南方报业传媒集团举办第三届南方国际文学周，邀请伊朗作家阿卜杜拉到访省作协开展跨文化对话。联合深圳市福田区、中国笔会广州中心在深圳市举行了“中国梦·深圳情”粤港台华文作家笔会。此外，应澳门基金会邀请，派遣作家杨克访问澳门并出席了第十届澳门文学奖颁奖礼活动。派遣作家郑小琼参加中国作家代表团出访尼泊尔。多名广东作家还分别参加了首届世界华文文学大会、天津国际写作营、“汉长安城”采风、“名家看四川”等活动。二是实施“广东作家作品外介翻译计划”，加大广东文学作品译介力度。吕雷、赵洪纪实文学《国运——南方记事》被纳入中国对外翻译出版有限公司“中国报告”第一辑英文版、俄文版在海外出版发行。郑小琼诗歌集《女工记》由出版社先后输出德国、印尼、越南翻译版权。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（五）提高联络服务水平，“大协作”格局逐步形成</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">强化自身建设。省作协努力建设学习型、服务型、创新型机关，建设风清气正、求真务实、温馨和谐的“作家之家”。一是充分发挥联系广大文学工作者的桥梁和纽带作用，进一步加强作协领导班子的思想建设、组织建设、作风建设、制度建设和党风廉政建设，巩固深化党的群众路线教育实践活动成果。今年以来，党组成员分别率队深入广州、深圳、佛山、东莞、揭阳、汕头、江门、中山、珠海、潮州、云浮、茂名、韶关等地进行调研。二是充分发挥省作协主席团、理事会和作协各分会的作用，调整充实了各专业创作委员会力量，进一步建立健全工作机制。组织召开省作协第八届主席团会议第二次会议，原则通过了《广东省作家协会主席团工作规则》、《广东省作家协会各专业委员会名单》，制定了《省作协办公会议事规则》。三是建立健全了一系列工作规章制度，努力实现以制度管人、管事，提高文学工作决策的科学化、民主化水平，加强机关党建工作和干部队伍建设，提拔一批处级干部，配备好各部门和杂志社的领导。还组织了各部门主要负责人、新提任领导干部、中青年干部专题学习培训。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">促进上下联动。一是加强省市作家之间的沟通交流，有计划地组织地市作家到外地疗养休假、参观交流、采风学习。先后安排河源、广州、揭阳、深圳、湛江、汕尾市和省直单位的中国作协会员赴杭州、北戴河等地疗养。组织了《人民日报》“文眼聚焦”惠州采风活动、广东作家采风团信宜采风活动等。二是按照创作选题、题材实施下基层活动，分批组织作家到基层体验生活。自11月中旬起将历时一年开展“百名作家下基层”体验生活、锤炼创作活动，先后组织了打工文学专题调研、“追寻潮汕文化源泉，解读潮汕人精神的底蕴”文学采风活动、“海上丝绸之路”文学创作采风活动、环保题材报告文学集《绿色春秋竞风流》集体采写活动等。推荐作家参加“2014年中国作家协会作家定点生活”活动，协助作家谢友义到广州市广州港集团公司体验生活。三是进一步加强与地市作协以及省作协公安、检察、司法、地税、铁路分会紧密联系、有效合作，不定期组织开展调研活动。各创作委员会根据日常工作安排和创作计划，不定期到各地市开展指导培训工作。12中旬，组织召开了省市县（区）三级文学组织负责人共160多人专题学习班，邀请中国作协、省委宣传部领导前来作辅导报告。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">开展多方合作。省作协努力构建“大协作”工作格局，联合新华社、中国作协创研部、水利部新闻宣传中心、中国报告文学学会、省残联、《羊城晚报》、《南方日报》、花城出版社、腾讯文学、深圳市文联、深圳大学、东莞市文联等举办研讨会、培训班、征文活动，多形式全方位宣传评介“文学粤军”。配合中国作协召开了网络作家座谈会和非网络作家座谈会。与浙江省作协联合举办了网络文学调研座谈会。联合内蒙古作协、花城出版社举行了“内蒙草原与岭南文学之夏”文学活动。在高要市宋隆小镇举办了第八届全国“名社名刊名编”笔会。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">2014</span><span style="font-family: 仿宋_GB2312;font-size: 19px">年是全省文学工作继往开来、科学发展的一年，是攻难克坚、求真务实的一年，是团结奋斗、收获丰硕的一年。这些成绩的取得，是党的文艺方针政策正确指引的结果，是省委、省政府、省委宣传部高度重视和大力支持的结果，是广大作家、文学工作者共同努力的结果，是各团体会员创造性地开展工作的结果。在此，我代表省作协向全省作家、文学工作者和各团体会员表示衷心感谢！在总结成绩的同时，我们还应看到，在深入生活、精品扶持、加强培训、评奖激励、理论评论、宣传推介等方面工作还存在不少薄弱环节；广东文学走出去、文学粤军培养壮大仍有待加强；市场经济条件下文学的双重效益的把握以及维护作家合法权益等问题的探索有待深化，等等。我们一定要充分认识不足，立足实际，发扬成绩，取长补短，在今后的工作中认真改进，努力实现新的突破。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">二、2015年工作计划</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">2015</span><span style="font-family: 仿宋_GB2312;font-size: 19px">年是全面深化改革的关键之年，是全面推进依法治国的开局之年，也是全面完成“十二五”规划的收官之年，文学工作使命光荣，任重道远。习近平总书记在文艺工作座谈会上，针对新的时代特征、新的文化环境、新的艺术实践，从历史与现实、理论与实践的结合上，提出了一系列新思想、新观点、新论断。在新的一年，要以习总书记重要讲话精神统领作协工作，引领文学创作，进一步明确作协工作的指导思想、中心环节、重点任务和发展思路。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（一）深入学习贯彻习近平总书记重要讲话精神</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">深入学习贯彻习近平总书记在文艺工作座谈会上的重要讲话精神，是当前和今后一个时期我省文学界最重要、最紧迫的政治任务，也是作协工作的重中之重。要切实抓好理论武装头脑，认真学习领会基本观点，准确把握精神要义，把思想统一到讲话精神上来，落细、落小、落实到文学工作、文学创作、文学研究、文学传播等各方面。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">党组、主席团要安排专门时间，采取学习会、务虚会等多种方式，集中组织学习讨论，深入思考。要树立问题意识，坚持问题导向，针对当前文学创作、生产过程中存在的突出问题，制订详细的工作方案和工作部署，提出具体的目标和举措，明确任务内容、要求和责任人。党员作家要在学习中起到模范作用，带头贯彻执行党的文艺方针政策，处处严格要求，以身作则，更加自觉地担负起繁荣发展社会主义文学的神圣职责。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">省作协各团体会员，各部门、杂志社要结合文学界特点和工作实际，采取多种形式，组织广大作家和文学工作者，认真学习领会，不断加深理解，形成学习宣传贯彻讲话的浓厚氛围。省作协和各团体会员所属的报刊社网，要认真做好讲话精神的宣传报道，开设专版专栏，登载学习体会和理论文章和“深入生活、扎根人民”的名篇佳作。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">要选好配强作协、文学组织领导班子。充分发挥专业性人民团体优势，加强创作服务、文学管理、作家自律，尊重文艺工作者的创作个性和创造性劳动。积极拓展服务领域和范围，成立省作协青工分会、残联分会、工商分会等行业作协。通过深化改革、健全体制，加大政策保障力度，全面优化发展环境，形成不断出精品、出人才、出效益的生动局面。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（二）力抓文学精品创作</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">倡导聚焦“粤人粤事”。坚持以人民为中心的创作导向，造文学“高原”攀文学“高峰”，更好地传播传统美德和广东人精神，塑造广东形象。引导作家处理好义利关系，注重讲究作品的社会效果，确保经济效益服从社会效益，市场价值服从社会价值。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">健全完善文学精品选题论证、扶持、生产机制。秉承扶持重大选题、重点题材创作的好做法，探索签约委托创作、征集奖励好作品的新举措，及时发现、推出、推广更多优秀、充满正能量的作品。强化精品意识，调动优势资源向重点题材、重点项目、重点作家倾斜，力争推出更多思想精深、艺术精湛、制作精良的文学精品。以迎接中国人民抗日战争胜利70周年为契机，重点扶持一批反映我省、我国人民及东南亚华侨进行艰苦卓绝抗日战争、表现人类追求正义和平的文学作品。高度关注现实题材创作，鼓励作家投身全面深化改革、全面推进依法治国的伟大征程，创作反映时代精神的时代作品。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">创新文学评价体系。支持文学与科技的融合，鼓励作家触“网”触“电”，实现文学样式和载体的极大丰富，在培养受众、提升受众、塑造受众上下功夫，扩大社会影响。要把群众评价、专家评价和市场检验统一起来，形成科学的评价标准。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">构建文学精品传播推广的桥梁。整合资源，充分利用现代传媒手段，精心组织广东文学精品专题推介、展演、展映、展播。打造文学和影视、传媒、网络、电信等互动的平台，实现广东文学与产业链的对接。将联合广东广播电视台、南方传媒集团、珠江电影厂等组建广东影视文学联盟。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">拓宽文学精品创作资金扶持。争取和引导社会资本参与文学精品创作和生产，逐步形成财政投入与社会投入相结合的多渠道、多元化扶持创作机制。以霍英东先生所捐助资金为主体，设立文学发展基金会，推动广东文学精品创作。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">严肃文学评奖。进一步规范文学评奖管理，切实发挥好文学评奖的示范导向作用，实现对文学价值取向和发展方向的有效引导。组织好第十届广东省鲁迅文学艺术奖（文学类）评奖。继续实施奖励获国家级文学奖项作家作品的有关政策措施。设立《作品》“年度好作品”奖、“有为文学奖”。组织2015广东高校校园作家杯征文大赛等。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（三）打造文学粤军队伍</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">实施“文学粤军”工程、青年英才工程。大力培养文学各门类领军人物和骨干人才，下力气发现培养本土文学新人。加强与新的文学类型、新的文学群体的联系，从中发现和培养文学拔尖人才。做到梯队建设“不断层”，新人新作“出得来”，优秀人才“留得下”。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">改革作家签约制度。建立广东文学院签约作家公开选拔、考评管理、退出机制，并争取上级支持，定期发放适度的生活和创作津贴。根据创作实绩进行年度考核，每三年为一届。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">科学引进文学人才。按照《广东省引进思想文化领域高层次人才试行办法》等，引进优秀中青年作家。坚持引进和培养、使用并重，在实践中发现、培养人才，创造人尽其才的良好氛围。坚持引进和外聘相结合。引进或外聘人才可申报宣传思想文化人才专项资金资助并享受相关待遇。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">壮大文学评论队伍。加强和改进文学评论工作，培养一支具有影响力的“粤派”评论家队伍。倡导说真话、讲道理，营造开展文艺批评的良好氛围，发挥文学评论在引导文学创作生产、提高作品质量、提升审美情趣、扩大社会影响等方面的积极作用，努力形成评论与创作良性互动的局面。继续实施“广东文艺评论提升计划”，集中关注推介广东文学新锐，着手推进有关“粤派批评”的系统化研究，团结和凝聚全国粤派批评家。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">加强文学创作培训。组织开展形式多样的文学培训活动，提升作家的学养、涵养、修养。培训对象包括新会员、签约作家、网络作家、青年作家、青少年文学爱好者等。将联合广东广播电视台举办影视编剧训练班。联合省残联举办残疾人文学创作培训班等。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">抓好文学职称评审。坚持以品德、能力、业绩作为衡量文学创作专业技术人员的主要标准，引导文学创作专业技术人员不断提高创作水平和质量。充分发挥职称评价、使用的导向和激励作用，推动建立科学公正、竞争择优的选人用人机制，推动全省文学队伍向高层次迈进。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（四）加强深入生活工作</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">开展“深入生活、扎根人民”主题实践活动。组织会员作家分批次不定期到省内县级以下单位深入农村、社区、学校、工厂、企业体验生活。借助新形势下的“上山下乡”、“赶海进城”活动，引导广大作家和文学工作者积极践行社会主义核心价值观，努力成为时代风气的先觉者、先行者、先倡者,以高尚的职业操守、良好的社会形象、文质兼美的优秀作品赢得人民喜爱和欢迎。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">把作家“深入生活、扎根人民”与开展“结对子、种文化”活动结合起来。与县级及以下街道社区和乡镇小学、乡镇文化馆（站）、图书馆（含农家书屋）、文体活动中心等，广泛开展文明共建、文化共享、结对帮扶、志愿服务等活动，培养更多的基层文学创作骨干。继续做好与内蒙古作协“结对子”工作，组织两地作家互换空间、体验草原与海岛生活，深化文学创作交流。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">建立深入生活长效机制。为作家挂职基层及其他形式深入生活提供相关支持帮助。切实做好挂职作家的遴选确定、组织协调和跟踪服务。动员广大作家根据各自创作意向、创作进度，到作品所反映的地方或单位去熟悉原型、丰富素材、提升品位。鼓励驻会作家根据工作和创作需要，自主选择联系地点和下基层时间。省作协党组将制订鼓励作家“深入生活、扎根人民”实施办法。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">（五）努力拓展文学阵地</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">扩大提升省作协报、刊、网发表园地。《作品》杂志将进一步扩容提质，刊发更多的优秀作品；《少男少女》杂志将开设网络文学作品专栏并推出微信平台，开发手机阅读软件。《新世纪文坛》报将更多传递全省各地文学信息，推出基层文学专版，刊发广东作家作品研究评论文章。《网络文学评论》杂志，继续跟踪研究网络文学创作动态、热点和产业发展趋势，组织开展形式多样的艺术鉴赏、理论研讨活动，探索建立网络文学的审美标准、评价体系。《人间》、《粤海散文》、《中西诗歌》杂志和广东作家网等进一步提升水平、扩大影响，刊发文论、散文、诗歌、网络文学等优秀作品。省作协还将组织评选基层优秀文学组织和文学刊物，以奖代补培养扶持基层文学力量，促进基层文学繁荣发展。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">筑高文学活动平台。认真组织好第九届全国“名社名刊名编”笔会暨广东文学年度发布会、第四届广东诗歌节、2015年广东省小学生诗歌节等一系列品牌活动，提升广东文学影响力。整合资源，设立涵盖各文学门类的广东有为文学奖。支持鼓励各分会和行业协会、专业委员会结合实际，挖掘潜力，开设内容丰富的文学活动。联合有关市县（区）建设文学之城、诗歌之城。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">办好广东网络文学院。以网络文学院为基地，强化团结、联络、协调、服务职能，探索扶持、管理网络作家的长效机制，抓好网络文学创作和网络文学批评两支队伍建设。组织好网络作家系列培训。举办网络文学高峰论坛。承办“心灵的天空——汉字微信”活动。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">成立广东网络作家协会。协会将作为省作协团体会员之一，接受管理和业务指导，以联络、协调、服务、指导为基本职能，发挥组织、引导、服务、维权等作用，实行网络写作者“自治”、“自约”，参与网络文明建设，传递和弘扬社会主义核心价值观，维护网络文学创作者的合法权益。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">创办广东省小作家协会。引导少年儿童热爱文学，提高少年儿童文学素养和写作水平，培养文学接班人。加大对少年儿童文学培训、熏陶力度，举办青少年网络写作班、小作家文学大讲堂。开办“少男少女·文道创作实验班”。组织首届广东省中学生社会主义核心价值观主题征文暨小学生童话节。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">发挥国际笔会广州中心作用。积极参与世界华文文学和华文作家交流合作，举办粤港澳东南亚华文作家联谊笔会等。配合“建设21世纪海上丝绸之路”工作，大力推进广东文学对外交流，加强与省际、海内外文学界的联系，推动文学走出去，传播好中国形象、中国故事、中国价值理念。</span></p><p style=";padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-indent: 37px;background-color: rgb(250, 250, 250)"><span style="font-family: 仿宋_GB2312;font-size: 19px">踏上新征程，开创新局面。让我们珍惜难得的历史机遇，牢记肩负的职责使命，以更加饱满的热情投身文学事业，深入生活、扎根人民，潜心创作出更多无愧于伟大民族、伟大时代的精品力作，为人民立言，为时代放歌，为繁荣发展社会主义文学事业，为实现广东“三个定位、两个率先”和中华民族伟大复兴的“中国梦”作出新的更大的贡献。</span></p><p><br/></p>', '广东省作家协会2014年 工作报告', '广东省作家协会2014年 工作报告', 1, 1, '2016-06-19 22:18:46', NULL, 0, NULL, '', 0, '{"thumb":""}', 37, 1, 1, 1),
(4, 1, '看看', '', '2016-06-20 03:58:41', '<p>看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看看v</p>', '看看', '看看', 1, 1, '2016-06-20 03:58:03', NULL, 0, NULL, '', 0, '{"thumb":""}', 12, 0, 1, 1),
(5, 1, '广东作家协会', '', '2016-06-20 04:23:26', '<p style="text-align: left;">广东作家协会(test文章)<strong>广东作家协会(test文章)</strong>广东作家协会(test文章)广东作家协会(test文章)广东作家协会(test文章)广东作家协会(test文章)广东作家协会(test文章)章)广东作家协会(test文章)广东作家协会(test文章)发那就啊舒服那时间费你上课菲尼克斯烦你就烦恼的烦<span style="color: rgb(54, 96, 146);">广东作家协会(test文章)广东作家协会(test文</span>章)广东作家协会(test文恼独孤九剑和肌肤恢复环境法律会计给发放，分多少费代购&nbsp;</p>', '广东作家协会(test文章)', '广东作家协会', 1, 1, '2016-06-20 04:21:46', NULL, 0, NULL, '', 0, '{"thumb":""}', 1, 0, 1, 1),
(6, 1, '写给“精选集”的话:脚印·树·回望', '', '2016-06-20 11:20:33', '<p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-align: center;background-color: rgb(250, 250, 250)"><strong><span style="font-size: 29px;font-family: 宋体">脚印·树·回望</span></strong></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-align: center;background-color: rgb(250, 250, 250)"><strong><span style="font-size: 16px">——</span></strong><strong><span style="font-size: 16px;font-family: 宋体">写给广东作家网文学风论坛作品精选集的话</span></strong></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-align: center;background-color: rgb(250, 250, 250)"><strong><span style="font-size: 16px">&nbsp;</span></strong></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;text-align: center;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体">□</span><span style="font-size: 16px">&nbsp;</span><span style="font-size: 16px;font-family: 宋体">龚福清</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">广东作协郑重出版了这册精选集：《被照亮的世界</span><span style="font-size: 16px">——</span><span style="font-size: 16px;font-family: 宋体">广东作家网文学风论坛作品精选》，厚厚的一本。从《作品》网络版</span><span style="font-size: 16px">2010</span><span style="font-size: 16px;font-family: 宋体">年创刊至</span><span style="font-size: 16px">2013</span><span style="font-size: 16px;font-family: 宋体">年第</span><span style="font-size: 16px">6</span><span style="font-size: 16px;font-family: 宋体">期的</span><span style="font-size: 16px">32</span><span style="font-size: 16px;font-family: 宋体">期里，精选了洋洋洒洒</span><span style="font-size: 16px">40</span><span style="font-size: 16px;font-family: 宋体">余万字，作为网络文学多年耕耘的存照。又将其分为上下两部分，集中展示在</span><span style="font-size: 16px">2013</span><span style="font-size: 16px;font-family: 宋体">年第</span><span style="font-size: 16px">11</span><span style="font-size: 16px;font-family: 宋体">、</span><span style="font-size: 16px">12</span><span style="font-size: 16px;font-family: 宋体">两期的网刊上，足见省作协的重视，且连开了全国省级作协关注和培育网络文学之先河。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">此刻，充分体验网络文学的“在场”与“互动”的同时，作为正在广东作家网文学风论坛慢慢成长的一名文学爱好者，有幸半路参与论坛管理和网刊编辑以来，特别是在省作协相关老师的直接指导和关怀下，与全体版主、编辑一道，挑灯夜战，竭力精选了这册集子。一路走来，倍感欣慰。接到写点什么送给精选集的任务时，我正在拜读邓一光老师的《从大地走向大地》，深受启迪，油然便想到了这些。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">没有也无法找回自己的脚步，我，你，我们。于是，路会在有与无之间蓦然出现。小路向前延伸，蜿蜒而来，或者去。脚下荆棘泥泞，踌躇蹒跚。前方的旷野袒露无遗，却很神秘。有光亮闪烁。在这样闪亮的照耀下，时空凝固成天幕下的彩虹，光彩照人，清晰透彻。埋头躬耕在心灵交融的领地，静成一段梦中幽邃的呓语，一袭铺天盖地的光泽，一幅透亮绚丽的风景。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">袒呈或者覆盖，没有选择。我们袒露自己的胸脯，炽热的胸怀，满腔温润的气息，透过光亮，以没有遮蔽的姿势，与落寞的喧嚣来一场邂逅，不离，不弃，不懈怠。也从来不敢以颓废来覆盖自己。我们靠这束光，穿透此生的历史。远离诱惑。这就是我和你，曾经有过的约定。这到底算不算脚印？若算，又有多深。或深或浅，无关紧要，它早已烙在各自的心里。若不算，会有一点气馁吗？绝不会。因为我们认定，脚印并不能证明什么。风去无影，云过无痕。我们需要寻找的，是飘荡在漫漫征途中同伴清亮的回音，无须用脚印来证明此刻的相遇。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">我们所走过的路是短暂的，是时间赐予彼此的礼物。期许更久远一些，之于世纪，自然短暂得如同瞬间。韶华在消逝，接力会再现。延绵不绝。如记忆永恒的长河之上，有无数的希翼在生长。长成五彩缤纷的树，一棵，两棵，无数棵。长成森林一片，参天照人，去诱惑来自高处的太阳。而这希翼，之于你我内心，是万簌俱寂之中埋藏的贲张，还是矗立于森林之中悬挂的注目？</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">一棵幼苗就这样决绝的成长，幼小和纤细过。也因此无疑会联想到种子。谁在无人之境播下的种子，或是荒芜之境，经风历雨，潜心耕耘，在茫茫大地之上，谁的姿势能够蔚然成风。破土而生的苗，又蔓延向天空。纤细何以成就丰满，成就茁壮，成就纯粹，而葱葱郁郁，而挺拔茂盛。因为虔诚和景仰消解掉自己，成了背景，谦逊地退到远处，做了森林最后的守护者。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">所有种子都会发芽，长成麦的林或树的林，并以向上的姿势扬起头颅，孜孜不倦地向上长去，以绚烂的金黄色硕果带来后人的惊鸿。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">我或你，千万个我或者你，某一天，会否变成栖息枝头唧唧自鸣的鸟儿？一任风来风走，雨来雨去。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">这里是你我的起点，你我的故园，你我的家。但愿若干年后，扪心回望，珠江的欢畅还在，怒放的木棉还在，老旧的骑楼还在，白云深处的小蛮腰还在，遍布岭南的咿呀土语还在……当你我疲惫了，回到这个老家，执手话旧，轻抚往昔的记忆时，尚能依稀感觉出一起心跳的温热。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">我们因向往聚集，团结地聚集，亲如家人，相拥而居，结伴前行，从来没有失陷过。我们一起创造历史，一起将这段光阴奢侈地定格在深深的回望与眷念之中。</span></p><p style="margin: 10px 0;padding: 0px;font-family: 微软雅黑;font-size: 14px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 16px;font-family: 宋体">我们不会停步，因为没有停步的理由。</span></p><p><br/></p>', '写给“精选集”的话:脚印·树·回望', '写给“精选集”的话:脚印·树·回望', 1, 1, '2016-06-20 11:19:39', NULL, 0, NULL, '', 0, '{"thumb":"20160620\\/576760e486f4f.jpg","photo":[{"url":"20160620\\/576760f0e1ede.jpg","alt":"2014032617284520"}]}', 34, 0, 1, 1),
(7, 1, '《作品2014年第2期目录', '', '2016-06-20 13:36:46', '<p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-align: center;background: white"><span style="color:#000000"><strong><span style="font-size: 24px;font-family: 宋体">《作品》（网络版）</span></strong><strong><span style="font-size: 24px;font-family: Calibri">2014</span></strong><strong><span style="font-size: 24px;font-family: 宋体">年第</span></strong><strong><span style="font-size: 24px;font-family: Calibri">2</span></strong><strong><span style="font-size: 24px;font-family: 宋体">期目录</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background: white"><strong><span style="font-size: 16px;font-family: 宋体;color: black">&nbsp;</span></strong></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;white-space: normal;line-height: 36px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><strong><span style="font-size: 16px;font-family: 宋体;line-height: 24px">【卷</span></strong><strong><span style="font-size: 16px;line-height: 24px"><span style="font-family:Times New Roman">&nbsp;</span></span></strong><strong><span style="font-size: 16px;font-family: 宋体;line-height: 24px">首</span></strong><strong><span style="font-size: 16px;line-height: 24px"><span style="font-family:Times New Roman">&nbsp;</span></span></strong><strong><span style="font-size: 16px;font-family: 宋体;line-height: 24px">语】</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;white-space: normal;line-height: 36px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;line-height: 24px"><span style="font-family:Times New Roman"><span style="color:#000000">&nbsp;</span></span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;white-space: normal;line-height: 36px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><strong><span style="font-size: 16px;font-family: 宋体;line-height: 24px">【特别推荐】</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;color: black"><span style="font-family:Times New Roman">&nbsp;&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体;color: black">庞</span><span style="font-size: 16px;color: black"><span style="font-family:Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体;color: black">锋：《故乡·老屋》</span><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">（散文）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体"><span style="color:#000000">重庆霜儿：《留守儿童玫玫的一天》（短篇小说）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><strong><span style="font-size: 16px"><span style="color:#000000;font-family:Times New Roman">&nbsp;</span></span></strong></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><strong><span style="font-size: 16px"><span style="color:#000000;font-family:Times New Roman">&nbsp;</span></span></strong></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="color:#000000"><strong><span style="font-size: 16px;font-family: 宋体">【小说世界】</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体"><span style="color:#000000">七月流火：《白月光》（短篇小说）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体"><span style="color:#000000">疏影横斜：《怨》（短篇小说）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体;color: red">&nbsp;</span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体"><span style="color:#000000">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;color: black"><span style="font-family:Times New Roman">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="color:#000000"><strong><span style="font-size: 16px;font-family: 宋体">【散文天地】</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体;color: black">白说废话：《《广州印象》</span><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">系列之三十六——四十五（散文节选）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体;color: black">力</span><span style="font-size: 16px;color: black"><span style="font-family:Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体;color: black">量：《闲话戏台》</span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体;color: black">运&nbsp;&nbsp;&nbsp;&nbsp;涛：《</span><span style="font-size: 16px;font-family: 宋体"><span style="color:#000000">访仙三清山</span></span><span style="font-size: 16px;font-family: 宋体;color: black">》</span></p><p style="margin: 0 0 0 14px;padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;white-space: normal;line-height: 21px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">刘</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">向</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">阳：《散文二章》</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;color: red"><span style="font-family:Times New Roman">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;color: red"><span style="font-family:Times New Roman">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="color:#000000"><strong><span style="font-size: 16px;font-family: 宋体">【诗歌丛林】</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">潘</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">志</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">远：《蝴蝶是谁灵魂的衣裳》（组诗）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">默</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">坚：《如果，有一架梯子》（外二首）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">高</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">山</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">松：《明月是灵魂的探照灯》（组诗）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">隐</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">星：《家</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">书》</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="color:#000000"><span style="font-size: 16px;font-family: 宋体">三峡浪子：《火</span><span style="font-size: 16px"><span style="font-family:Times New Roman">&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体">焰》</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 12px"><span style="color:#000000;font-family:Times New Roman">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;color: red"><span style="font-family:Times New Roman">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="color:#000000"><strong><span style="font-size: 16px;font-family: 宋体">【评论渡口】</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 16px"><span style="color:#000000;font-family:Times New Roman">&nbsp;&nbsp;</span></span><span style="font-size: 16px;font-family: 宋体;color: black">知了叫了：《</span><span style="font-size:16px"><span style="color:#000000"><span style="font-family: 宋体">茫茫前路唯等待</span><span style="font-family:Times New Roman">——</span><span style="font-family: 宋体">浅读〈麦克白〉〈哈姆雷特〉</span></span></span><span style="font-size: 16px;font-family: 宋体;color: black">》</span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 12px"><span style="color:#000000;font-family:Times New Roman">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="font-size: 12px"><span style="color:#000000;font-family:Times New Roman">&nbsp;</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><span style="color:#000000"><strong><span style="font-size: 16px;font-family: 宋体">【校园苗圃】</span></strong></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;background-color: rgb(250, 250, 250)"><strong><span style="font-size: 16px"><span style="color:#000000;font-family:Times New Roman">&nbsp;</span></span></strong></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体"><span style="color:#000000">莹</span><span style="color: black">光山色：《故乡的芍花》（小说）</span></span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体;color: black">清辉月韵：《记忆深处的茶》（散文）</span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体;color: black">林 国 鹏：《影子是没有骨头的》（组诗）</span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 16px;background-color: rgb(250, 250, 250)"><span style="font-size: 16px;font-family: 宋体;color: black">马 剑 平：《骆 驼》（诗歌）</span></p><p style=";padding: 0px;color: rgb(0, 0, 255);font-family: 黑体;font-size: 24px;line-height: 26px;white-space: normal;text-indent: 12px;background-color: rgb(250, 250, 250)"><span style="font-size: 12px;font-family: 宋体;color: black">&nbsp;</span></p><p><br/></p>', '《作品》（网络版）2014年第2期目录', '《作品》（网络版）2014年第2期目录', 1, 1, '2016-06-20 13:35:53', NULL, 0, NULL, '', 0, '{"thumb":"20160620\\/576780e1d048c.jpg","photo":[{"url":"20160620\\/576780ec31a90.jpg","alt":"i006"}]}', 3, 0, 1, 1),
(8, 1, '评论', NULL, '2016-06-20 13:39:52', '<p>评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页评论页</p>', '评论页', '评论页', 1, 1, '2016-06-20 13:38:59', NULL, 0, 2, '', 0, '{"template":"contact","thumb":"20160620\\/576781a582f00.jpg"}', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cmf_role`
--

CREATE TABLE `cmf_role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表';

--
-- Dumping data for table `cmf_role`
--

INSERT INTO `cmf_role` (`id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder`) VALUES
(1, '超级管理员', 0, 1, '拥有网站最高管理员权限！', 1329633709, 1329633709, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cmf_role_user`
--

CREATE TABLE `cmf_role_user` (
  `role_id` int(11) UNSIGNED DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_route`
--

CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='url路由表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_slide`
--

CREATE TABLE `cmf_slide` (
  `slide_id` bigint(20) UNSIGNED NOT NULL,
  `slide_cid` int(11) NOT NULL COMMENT '幻灯片分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '幻灯片名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '幻灯片图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '幻灯片链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '幻灯片描述',
  `slide_content` text COMMENT '幻灯片内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_slide_cat`
--

CREATE TABLE `cmf_slide_cat` (
  `cid` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL COMMENT '幻灯片分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯片分类表';

-- --------------------------------------------------------

--
-- Table structure for table `cmf_term_relationships`
--

CREATE TABLE `cmf_term_relationships` (
  `tid` bigint(20) NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Portal 文章分类对应表';

--
-- Dumping data for table `cmf_term_relationships`
--

INSERT INTO `cmf_term_relationships` (`tid`, `object_id`, `term_id`, `listorder`, `status`) VALUES
(1, 1, 4, 0, 1),
(2, 3, 4, 0, 1),
(3, 4, 4, 0, 1),
(4, 5, 5, 0, 1),
(6, 6, 4, 0, 1),
(7, 7, 12, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cmf_terms`
--

CREATE TABLE `cmf_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) UNSIGNED DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Portal 文章分类表';

--
-- Dumping data for table `cmf_terms`
--

INSERT INTO `cmf_terms` (`term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status`) VALUES
(1, '会员作品展示', '', 'article', '本站会员优秀作品展示', 0, 0, '0-1', '会员作品展示', '会员作品展示 会员作品', '会员作品展示', 'list_masonry', 'article', 0, 1),
(4, '文坛新闻', '', 'article', '文坛新闻', 0, 0, '0-4', '', '', '', 'list', 'article', 0, 1),
(5, '广东文坛新闻', '', 'picture', '', 4, 0, '0-4-5', '', '', '', 'list', 'article', 0, 1),
(6, '作协概况', '', 'article', '作协概况', 0, 0, '0-6', '', '', '', 'list', 'article', 0, 1),
(7, '作家在线', '', 'article', '作家在线', 0, 0, '0-7', '', '', '', 'list', 'article', 0, 1),
(8, '作家书画廊', '', 'article', '作家书画廊', 0, 0, '0-8', '', '', '', 'list', 'article', 0, 1),
(9, '会员作品展示', '', 'article', '会员作品展示', 0, 0, '0-9', '会员作品展示', '会员作品展示', '会员作品展示', 'list_masonry', 'contact', 0, 1),
(10, '作协动态', '', 'article', '作协动态', 0, 0, '0-10', '作协动态', '作协动态', '作协动态', 'list', 'article', 0, 1),
(11, '理论研讨', '', 'article', '理论研讨', 0, 0, '0-11', '理论研讨', '理论研讨', '理论研讨', 'list', 'article', 0, 1),
(12, '报刊中心', '', 'picture', '报刊中心', 0, 0, '0-12', '报刊中心', '报刊中心', '报刊中心', 'list', 'article', 0, 1),
(13, '岭南名家', '', 'article', '岭南名家', 0, 0, '0-13', '岭南名家', '岭南名家', '岭南名家', 'list', 'article', 0, 1),
(14, '公告与下载', '', 'article', '公告与下载', 0, 0, '0-14', '公告与下载', '公告与下载', '公告与下载', 'list', 'article', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cmf_user_favorites`
--

CREATE TABLE `cmf_user_favorites` (
  `id` int(11) NOT NULL,
  `uid` bigint(20) DEFAULT NULL COMMENT '用户 id',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL COMMENT '收藏时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

--
-- Dumping data for table `cmf_user_favorites`
--

INSERT INTO `cmf_user_favorites` (`id`, `uid`, `title`, `url`, `description`, `table`, `object_id`, `createtime`) VALUES
(1, 2, '广东省作家协会2014年 工作报告', '/thinkcmf/index.php?g=&amp;m=article&amp;a=index&amp;id=2&amp;cid=4', NULL, 'posts', 3, 1466399829);

-- --------------------------------------------------------

--
-- Table structure for table `cmf_users`
--

CREATE TABLE `cmf_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `cmf_users`
--

INSERT INTO `cmf_users` (`id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `score`, `user_type`, `coin`, `mobile`) VALUES
(1, 'admin', '###7a7f0b8ed1645f57447dec3c71cf1adb', 'admin', '1297942619@qq.com', '', NULL, 0, NULL, NULL, '0.0.0.0', '2016-06-20 13:25:18', '2016-06-18 07:32:23', '', 1, 0, 1, 0, ''),
(2, 'myttyy_qq_com', '###b645f8ba4475094f00807972b91eb2e8', 'myttyy_qq_com', 'myttyy@qq.com', '', NULL, 0, NULL, NULL, '0.0.0.0', '2016-06-20 13:16:43', '2016-06-20 13:16:43', '', 1, 0, 2, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmf_ad`
--
ALTER TABLE `cmf_ad`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `ad_name` (`ad_name`);

--
-- Indexes for table `cmf_asset`
--
ALTER TABLE `cmf_asset`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `cmf_auth_access`
--
ALTER TABLE `cmf_auth_access`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `rule_name` (`rule_name`) USING BTREE;

--
-- Indexes for table `cmf_auth_rule`
--
ALTER TABLE `cmf_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`,`status`,`type`);

--
-- Indexes for table `cmf_comments`
--
ALTER TABLE `cmf_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_post_ID` (`post_id`),
  ADD KEY `comment_approved_date_gmt` (`status`),
  ADD KEY `comment_parent` (`parentid`),
  ADD KEY `table_id_status` (`post_table`,`post_id`,`status`),
  ADD KEY `createtime` (`createtime`);

--
-- Indexes for table `cmf_common_action_log`
--
ALTER TABLE `cmf_common_action_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_object_action` (`user`,`object`,`action`),
  ADD KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`);

--
-- Indexes for table `cmf_guestbook`
--
ALTER TABLE `cmf_guestbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_links`
--
ALTER TABLE `cmf_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_status`);

--
-- Indexes for table `cmf_menu`
--
ALTER TABLE `cmf_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `model` (`model`);

--
-- Indexes for table `cmf_nav`
--
ALTER TABLE `cmf_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_nav_cat`
--
ALTER TABLE `cmf_nav_cat`
  ADD PRIMARY KEY (`navcid`);

--
-- Indexes for table `cmf_oauth_user`
--
ALTER TABLE `cmf_oauth_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_options`
--
ALTER TABLE `cmf_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `cmf_plugins`
--
ALTER TABLE `cmf_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_posts`
--
ALTER TABLE `cmf_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `post_date` (`post_date`) USING BTREE;

--
-- Indexes for table `cmf_role`
--
ALTER TABLE `cmf_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentId` (`pid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `cmf_role_user`
--
ALTER TABLE `cmf_role_user`
  ADD KEY `group_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cmf_route`
--
ALTER TABLE `cmf_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmf_slide`
--
ALTER TABLE `cmf_slide`
  ADD PRIMARY KEY (`slide_id`),
  ADD KEY `slide_cid` (`slide_cid`);

--
-- Indexes for table `cmf_slide_cat`
--
ALTER TABLE `cmf_slide_cat`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `cat_idname` (`cat_idname`);

--
-- Indexes for table `cmf_term_relationships`
--
ALTER TABLE `cmf_term_relationships`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `term_taxonomy_id` (`term_id`);

--
-- Indexes for table `cmf_terms`
--
ALTER TABLE `cmf_terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `cmf_user_favorites`
--
ALTER TABLE `cmf_user_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `cmf_users`
--
ALTER TABLE `cmf_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmf_ad`
--
ALTER TABLE `cmf_ad`
  MODIFY `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id';
--
-- AUTO_INCREMENT for table `cmf_asset`
--
ALTER TABLE `cmf_asset`
  MODIFY `aid` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_auth_rule`
--
ALTER TABLE `cmf_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键', AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `cmf_comments`
--
ALTER TABLE `cmf_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_common_action_log`
--
ALTER TABLE `cmf_common_action_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_guestbook`
--
ALTER TABLE `cmf_guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_links`
--
ALTER TABLE `cmf_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_menu`
--
ALTER TABLE `cmf_menu`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `cmf_nav`
--
ALTER TABLE `cmf_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cmf_nav_cat`
--
ALTER TABLE `cmf_nav_cat`
  MODIFY `navcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cmf_oauth_user`
--
ALTER TABLE `cmf_oauth_user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_options`
--
ALTER TABLE `cmf_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cmf_plugins`
--
ALTER TABLE `cmf_plugins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_posts`
--
ALTER TABLE `cmf_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cmf_role`
--
ALTER TABLE `cmf_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_route`
--
ALTER TABLE `cmf_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id';
--
-- AUTO_INCREMENT for table `cmf_slide`
--
ALTER TABLE `cmf_slide`
  MODIFY `slide_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_slide_cat`
--
ALTER TABLE `cmf_slide_cat`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmf_term_relationships`
--
ALTER TABLE `cmf_term_relationships`
  MODIFY `tid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cmf_terms`
--
ALTER TABLE `cmf_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id', AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cmf_user_favorites`
--
ALTER TABLE `cmf_user_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cmf_users`
--
ALTER TABLE `cmf_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
