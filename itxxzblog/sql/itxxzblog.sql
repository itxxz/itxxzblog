/*
Navicat MySQL Data Transfer

Source Server         : itxxz
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : itxxzblog

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-25 22:57:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for itxxz_article
-- ----------------------------
DROP TABLE IF EXISTS `itxxz_article`;
CREATE TABLE `itxxz_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_name` varchar(128) DEFAULT NULL,
  `article_type` int(11) DEFAULT NULL COMMENT '原创、转载、译文',
  `article_content` blob,
  `publish_or_draft` int(1) DEFAULT NULL,
  `is_on_top` int(1) DEFAULT NULL,
  `is_recommend` int(1) DEFAULT NULL,
  `is_focus` int(1) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `reading_times` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `author` int(255) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `tagids` varchar(16) DEFAULT NULL,
  `commentid` int(11) DEFAULT NULL,
  `small_image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itxxz_article
-- ----------------------------
INSERT INTO `itxxz_article` VALUES ('1', '技术文档', '0', null, '0', '0', '0', '0', null, '0', null, '0', '0', null, '0', null);
INSERT INTO `itxxz_article` VALUES ('2', '常用组建', '0', null, '0', '0', '0', '0', null, '0', null, '0', '0', null, '0', null);
INSERT INTO `itxxz_article` VALUES ('3', '框架搭建', '0', null, '0', '0', '0', '0', null, '0', null, '0', '0', '', '0', '/itxxzblog/uploads/7120ed89-839e-4e2d-b985-218030d5b282.png');
INSERT INTO `itxxz_article` VALUES ('4', 'el标签', '0', null, '0', '0', '0', '0', null, '0', null, '0', '0', '', '0', '/itxxzblog/uploads/8ccd4fe8-321f-465f-b4d9-a16221ff6539.png');
INSERT INTO `itxxz_article` VALUES ('5', 'struts教程', '0', 0x3C703E3C696D6720616C743D2222207372633D222F697478787A626C6F672F75706C6F6164732F30326630336437332D363332392D343238362D623366352D3735386431353736633938322E706E6722207374796C653D226865696768743A33303870783B2077696474683A373037707822202F3E3C2F703E0D0A, '0', '0', '0', '0', '', '0', null, '0', '0', '', '0', '/itxxzblog/uploads/02f03d73-6329-4286-b3f5-758d1576c982.png');
INSERT INTO `itxxz_article` VALUES ('6', 'spring新特性', '0', 0x3C703E3C696D6720616C743D2222207372633D222F697478787A626C6F672F75706C6F6164732F37396133363664312D363433392D343764662D393262352D6461643531626365326364622E706E6722207374796C653D226865696768743A33303870783B2077696474683A373037707822202F3E7364667364667364667364663C2F703E0D0A, '0', '0', '0', '0', '', '0', null, '0', '0', '', '0', '/itxxzblog/uploads/79a366d1-6439-47df-92b5-dad51bce2cdb.png');
INSERT INTO `itxxz_article` VALUES ('7', 'bootstrap', '0', 0x3C703E73646673646664646464643C2F703E0D0A, '0', '0', '0', '0', 'sdf', '0', null, '0', '0', 'sdf', '0', 'sdf');
INSERT INTO `itxxz_article` VALUES ('8', 'java', '0', 0x3C703E7364663C2F703E0D0A, '0', '0', '0', '0', 'sdf', '0', null, '0', '0', '', '0', '');
INSERT INTO `itxxz_article` VALUES ('9', 'test', '0', null, '0', '0', '0', '0', null, '0', null, '0', '0', null, '0', null);

-- ----------------------------
-- Table structure for itxxz_menu
-- ----------------------------
DROP TABLE IF EXISTS `itxxz_menu`;
CREATE TABLE `itxxz_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(32) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT '0',
  `menu_icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itxxz_menu
-- ----------------------------
INSERT INTO `itxxz_menu` VALUES ('1', '用户管理', null, '0', 'glyphicon glyphicon-user');
INSERT INTO `itxxz_menu` VALUES ('2', '个人资料', null, '1', null);
INSERT INTO `itxxz_menu` VALUES ('3', '用户列表', null, '1', null);
INSERT INTO `itxxz_menu` VALUES ('4', '内容管理', null, '0', 'glyphicon glyphicon-pencil');
INSERT INTO `itxxz_menu` VALUES ('5', '文章管理', 'admin/articleList', '4', null);
INSERT INTO `itxxz_menu` VALUES ('6', '导航管理', null, '4', null);
INSERT INTO `itxxz_menu` VALUES ('7', '标签管理', null, '4', null);
INSERT INTO `itxxz_menu` VALUES ('8', '审核列表', null, '0', 'glyphicon glyphicon-tasks');
INSERT INTO `itxxz_menu` VALUES ('9', '待审文章', null, '8', null);
INSERT INTO `itxxz_menu` VALUES ('10', '待审评论', null, '8', null);
INSERT INTO `itxxz_menu` VALUES ('11', '友情链接', null, '0', 'glyphicon glyphicon-link');
INSERT INTO `itxxz_menu` VALUES ('12', '管理列表', null, '11', null);

-- ----------------------------
-- Table structure for itxxz_nav
-- ----------------------------
DROP TABLE IF EXISTS `itxxz_nav`;
CREATE TABLE `itxxz_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(16) DEFAULT NULL,
  `ename` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(255) DEFAULT NULL,
  `order` int(255) DEFAULT NULL,
  `show_flag` int(255) DEFAULT NULL,
  `link_type` int(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itxxz_nav
-- ----------------------------
INSERT INTO `itxxz_nav` VALUES ('1', '首页', null, '0', null, null, null, null, '/');
INSERT INTO `itxxz_nav` VALUES ('2', '帮助文档', null, '0', null, null, null, null, 'category-2');
INSERT INTO `itxxz_nav` VALUES ('3', '主题风格', null, '0', null, null, null, null, 'category-3');
INSERT INTO `itxxz_nav` VALUES ('4', '常见问题', null, '0', null, null, null, null, null);
INSERT INTO `itxxz_nav` VALUES ('5', '官方网站', null, null, null, null, null, null, 'http://www.itxxz.com/');
INSERT INTO `itxxz_nav` VALUES ('6', '联系我们', null, null, null, null, null, null, null);
INSERT INTO `itxxz_nav` VALUES ('7', '在线留言', null, null, null, null, null, null, null);
INSERT INTO `itxxz_nav` VALUES ('8', '论坛交流', null, null, null, null, null, null, 'http://www.itxxz.com/bbs');

-- ----------------------------
-- Table structure for itxxz_tags
-- ----------------------------
DROP TABLE IF EXISTS `itxxz_tags`;
CREATE TABLE `itxxz_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(8) DEFAULT NULL,
  `ename` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itxxz_tags
-- ----------------------------

-- ----------------------------
-- Table structure for itxxz_user
-- ----------------------------
DROP TABLE IF EXISTS `itxxz_user`;
CREATE TABLE `itxxz_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `account` varchar(16) DEFAULT NULL COMMENT '登陆账号',
  `pwd` varchar(64) DEFAULT NULL COMMENT '密码',
  `cname` varchar(16) DEFAULT NULL COMMENT '中文名',
  `ename` varchar(16) DEFAULT NULL COMMENT '英文名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` enum('1','0') NOT NULL DEFAULT '0' COMMENT '性别',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `mobile` int(16) DEFAULT NULL COMMENT '手机号',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `login_ip` varchar(32) DEFAULT NULL COMMENT '登陆ip',
  `roleid` int(11) DEFAULT NULL COMMENT '权限',
  `photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `locked` enum('1','0') DEFAULT NULL COMMENT '是否被锁定：0、正常；1、锁定',
  `status` enum('2','1','0') NOT NULL DEFAULT '0' COMMENT '当前状态',
  `salt` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itxxz_user
-- ----------------------------
INSERT INTO `itxxz_user` VALUES ('1', 'admin', '73eb39c2d28c1a3998c3e2806a9b6148', '4', '5', '1', '0', '2015-03-13 23:58:26', '2015-03-13 23:58:30', null, null, null, null, null, '1', '0', '2181ab18b10e2bff276e01a2ab8a65e6');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(200) NOT NULL DEFAULT '',
  `session` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessions
-- ----------------------------
