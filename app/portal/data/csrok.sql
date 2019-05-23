/*
Navicat MySQL Data Transfer

Source Server         : chaowang
Source Server Version : 50641
Source Host           : sql.l79.vhostgo.com:3306
Source Database       : csrok

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-05-23 15:57:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '0', '1', '20', 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `cmf_admin_menu` VALUES ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES ('5', '2', '1', '0', '10000', 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES ('6', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES ('7', '6', '1', '1', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES ('8', '7', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('9', '7', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('10', '7', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('11', '7', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('12', '7', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('13', '7', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES ('14', '7', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('15', '6', '1', '1', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES ('16', '15', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('17', '15', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES ('18', '15', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES ('19', '15', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES ('20', '6', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES ('21', '20', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES ('22', '20', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES ('23', '20', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('24', '20', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES ('25', '20', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('26', '20', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES ('27', '20', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('28', '20', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES ('29', '6', '1', '1', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES ('30', '29', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES ('31', '29', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('32', '29', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES ('33', '29', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('34', '29', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES ('35', '29', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('36', '35', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('37', '35', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('38', '35', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('39', '35', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('40', '35', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('41', '35', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('42', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES ('43', '42', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES ('44', '42', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES ('45', '42', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('46', '42', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES ('47', '42', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES ('48', '42', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES ('49', '110', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES ('50', '49', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES ('51', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES ('52', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('53', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES ('54', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('55', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES ('56', '50', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES ('57', '50', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES ('58', '0', '1', '0', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES ('59', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES ('60', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES ('61', '6', '1', '1', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES ('62', '61', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES ('63', '61', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES ('64', '61', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES ('65', '61', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('66', '61', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES ('67', '61', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES ('68', '61', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES ('69', '61', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES ('70', '61', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES ('71', '6', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES ('72', '71', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('73', '6', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES ('74', '73', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('75', '6', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES ('76', '75', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('77', '6', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES ('78', '6', '1', '1', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES ('79', '78', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('80', '78', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('81', '78', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('82', '78', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('83', '78', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('84', '78', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES ('85', '84', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES ('86', '84', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('87', '84', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES ('88', '84', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('89', '84', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES ('90', '84', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('91', '84', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES ('92', '84', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES ('93', '6', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES ('94', '93', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('95', '6', '1', '1', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES ('96', '95', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES ('97', '95', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES ('98', '95', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES ('99', '95', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES ('100', '95', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('101', '95', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('102', '95', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES ('103', '95', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES ('104', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES ('105', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('106', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES ('107', '95', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('108', '95', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES ('109', '95', '1', '0', '10000', 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计');
INSERT INTO `cmf_admin_menu` VALUES ('110', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES ('111', '49', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES ('112', '111', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES ('113', '111', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('114', '111', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES ('115', '111', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('116', '111', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES ('117', '111', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('118', '111', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES ('119', '111', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('120', '111', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('121', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES ('122', '121', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES ('123', '110', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES ('124', '123', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES ('125', '124', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES ('126', '124', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES ('127', '123', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `cmf_admin_menu` VALUES ('128', '127', '2', '0', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `cmf_admin_menu` VALUES ('129', '6', '1', '1', '10000', 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES ('130', '129', '1', '0', '10000', 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('131', '129', '2', '0', '10000', 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES ('132', '129', '1', '0', '10000', 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('162', '0', '0', '1', '30', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES ('163', '162', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES ('164', '163', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES ('165', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('166', '163', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES ('167', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('168', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES ('169', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES ('170', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES ('171', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES ('172', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES ('173', '162', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES ('174', '173', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('175', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('176', '173', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('177', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('178', '173', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES ('179', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES ('180', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'toggle', '', '文章分类显示隐藏', '', '文章分类显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('181', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('182', '162', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES ('183', '182', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES ('184', '182', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('185', '182', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES ('186', '182', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('187', '182', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES ('188', '162', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('189', '188', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('190', '188', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES ('191', '188', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES ('192', '188', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
INSERT INTO `cmf_asset` VALUES ('1', '1', '94039', '1558362548', '1', '0', '59eea1ab8b0a9e14f52b9c5211c853d00f72a9035d68bc4039c5ad417669d1f1', '191121001562.jpg', 'default/20190520/b7b2fb1ad516dcea083c5a332a7c9bcd.jpg', '59eea1ab8b0a9e14f52b9c5211c853d0', 'be64256752f290d33be30ee8d34e5b45b579cf91', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('2', '1', '166006', '1558362559', '1', '0', 'dceb64d009d0ecfe7ab6105402e07c9cdd6e1f2f249a09f603c33b663fb18243', '191121209859.jpg', 'default/20190520/d4594fb83388a83e0d208b290761c271.jpg', 'dceb64d009d0ecfe7ab6105402e07c9c', 'b3cc33b2c8a4431af00703c1f7df7d560d02ecff', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('3', '1', '233053', '1558362568', '1', '0', '671025d2e595180510916da82d98d770581f3d5b387899e78fb96fbb704c034f', '191126212524.jpg', 'default/20190520/679d47f6258945233e49a4d4932e9952.jpg', '671025d2e595180510916da82d98d770', 'a921ea75a20dc74c6a9b44b5c7c35935dbb3455f', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('4', '1', '8477', '1558362755', '1', '0', 'cef2adab5b316ac79f84adcdd2ee4956facb62903df16f5ba0f929da06dc557d', '1c34aabeaec0b7dbdf51a0172e2a45a7.png', 'portal/20190520/9b63f7f0722094d789b709283be4c311.png', 'cef2adab5b316ac79f84adcdd2ee4956', '6b6acb149fff7c246b60961d8394d179c2e266fa', 'png', null);
INSERT INTO `cmf_asset` VALUES ('5', '1', '795124', '1558362824', '1', '0', 'c0297608092c2af92e9ad7039606905b12d876dbd21867cadd187fcb8c92785c', '2f9613300290c8e43ce16e95a1c4604f.png', 'portal/20190520/9a55dfba1e3b9e20838fc0eef956e65d.png', 'c0297608092c2af92e9ad7039606905b', '40589c64923c9d6ec4c49742e9e6d46c0d19c9e6', 'png', null);
INSERT INTO `cmf_asset` VALUES ('6', '1', '5618', '1558362829', '1', '0', '5a3880f2ff7c6b7d22462d3ca838f13e66d46afa0bcd7fbc77cee564ca3beae9', 'ed2554f211ac95d503b8ed1dd26e0177.png', 'portal/20190520/12e4cd02a3a31f50bafd125a0df2943a.png', '5a3880f2ff7c6b7d22462d3ca838f13e', '6542382009158633c14e4d0dab71aa0eba112651', 'png', null);
INSERT INTO `cmf_asset` VALUES ('7', '1', '299408', '1558363004', '1', '0', '33377624462b7e3a2b3c35461eaf55170fb23354df08e5d3313408841ecd4f9b', 'd1dc3b5f83d56d5b3f4c6424729dd250.png', 'portal/20190520/3e7058911a9753e4edb84588ee141b4b.png', '33377624462b7e3a2b3c35461eaf5517', '7b692bed844f2f4bce7226337c728a99804a2e84', 'png', null);
INSERT INTO `cmf_asset` VALUES ('8', '1', '10318', '1558363011', '1', '0', '14c54438a43522ec187e2928ef1db317f87d5eeea62483c11df54f398ef53729', 'a3b77b08b1ad787d9c4b7a86e4e8aa1c.png', 'portal/20190520/3272c54b9e4d2982bdee45e3153d19c5.png', '14c54438a43522ec187e2928ef1db317', '327b821eccf7f8cbfd319a29eb4acea5356b302f', 'png', null);
INSERT INTO `cmf_asset` VALUES ('9', '1', '5341', '1558363053', '1', '0', 'e59fb07f0e9b01f37064816529dbd190330bf3fbb45b5f4e0b5a9f9250453c3d', '675d82746b73ea4417073166021ee322.png', 'portal/20190520/b43235c619f363af9527af087422518a.png', 'e59fb07f0e9b01f37064816529dbd190', '0a91f016b2bc019e8d207333df9c8b079bd99356', 'png', null);
INSERT INTO `cmf_asset` VALUES ('10', '1', '459272', '1558363090', '1', '0', '240f307ea1cea99573fb373af145f45337e98ee71d6dae0d3c2a1567a77f9ff1', '70edc5a30969fe3f470f67e37d1d847a.png', 'portal/20190520/c7fc4c89b991e4f7827cde0a8416ee11.png', '240f307ea1cea99573fb373af145f453', 'c3555cf0c8ce0725fe3a550bb868d6250c81ff09', 'png', null);
INSERT INTO `cmf_asset` VALUES ('11', '1', '7201', '1558363095', '1', '0', 'd8c1459edcc87c9f2e7277eaefd859cd5b0f8c0810841ee556413660f6af6d28', '61c892855fb7460810a9e3895db7f1be.png', 'portal/20190520/75a83a02e9ea612057010a32e9df4897.png', 'd8c1459edcc87c9f2e7277eaefd859cd', '6616407d732cf4a50a29010ec41101813d8eef9a', 'png', null);
INSERT INTO `cmf_asset` VALUES ('12', '1', '10399', '1558363568', '1', '0', '3c7c226dd8abce0cb18651c5dba3066ee8e568177879c30af3173a552cc8e564', 'p_img.png', 'portal/20190520/cfe1acb1a4e979b305cb006f08e9e77a.png', '3c7c226dd8abce0cb18651c5dba3066e', 'bc13d36f12ffa2297f85ae051b8fb4885542ca2e', 'png', null);
INSERT INTO `cmf_asset` VALUES ('13', '1', '7818', '1558398999', '1', '0', '78d8a57e391e1fa8157c9befcf955abe9eb92355a222176badaa912ba1af86ea', '首页-2019超网-验厂_24.png', 'portal/20190521/3146b934fd6a62645fb726329863754d.png', '78d8a57e391e1fa8157c9befcf955abe', 'e9ca4ba193f88edb4cb04941880eab357d76be44', 'png', null);
INSERT INTO `cmf_asset` VALUES ('14', '1', '6682', '1558399056', '1', '0', '7856802cf60d85d2d4ad8a0d532e5f315248bdee700125d57ce822f6ceeb71ee', '首页-2019超网-验厂_26.png', 'portal/20190521/d3317983fc27bf78859056fa50af159b.png', '7856802cf60d85d2d4ad8a0d532e5f31', '9e7f28b849ad727e91b8c896fbc2958dd7efd8b6', 'png', null);
INSERT INTO `cmf_asset` VALUES ('15', '1', '5254', '1558399160', '1', '0', 'b961b5fd8ebea2a39d36b166bb3fed97cf93bd495968d6b6acf1d8b4b4a91b4f', '首页-2019超网-验厂_08.png', 'portal/20190521/34b0bb95456cc27fe7132ea9c017fc0a.png', 'b961b5fd8ebea2a39d36b166bb3fed97', '95e86cff939edbfeb6db5d82b8c77ca20eee9e1e', 'png', null);
INSERT INTO `cmf_asset` VALUES ('16', '1', '6183', '1558399207', '1', '0', '476b27cf76f48c8ab62fc4698be3e2d85d7e1730f2ccbac83df54115e171f9fb', '首页-2019超网-验厂_06.png', 'portal/20190521/6bee10953dc341a1930b18d3c2b4c504.png', '476b27cf76f48c8ab62fc4698be3e2d8', 'a2fd54cf9023479a5957aab1cf4e6246c2b7c4f4', 'png', null);
INSERT INTO `cmf_asset` VALUES ('17', '1', '6867', '1558399265', '1', '0', '69c1e7ba59fde48b386e89b95be184d2b8ea7d7267e7402232466aa008f02d87', '首页-2019超网-验厂_29.png', 'portal/20190521/9274fc11b08cbb416ec35f08a339d5f8.png', '69c1e7ba59fde48b386e89b95be184d2', '61a5cc2229cc8de574c47af7b5dd8d46aa7420fa', 'png', null);
INSERT INTO `cmf_asset` VALUES ('18', '1', '7752', '1558400771', '1', '0', '7930cae77965f1bff9a6af360757b5b6602354160ace39987349879523bc03af', '首页-2019超网-验厂_36.png', 'portal/20190521/156c8bfd3c05ea497554cbf39eb577a3.png', '7930cae77965f1bff9a6af360757b5b6', '9f0379f7d0f0e8e8d5a53f5a2014ea8c6b17fdd1', 'png', null);
INSERT INTO `cmf_asset` VALUES ('19', '1', '26571', '1558403969', '1', '0', '33ad3caa89c7b6b9419302d1ed993032fceb0a8e0cc1087e9378979a2b79d81b', 'sa8000.jpg', 'portal/20190521/3b6411045fe277bb99c548f8e39ef30e.jpg', '33ad3caa89c7b6b9419302d1ed993032', '751b76139b69a97d100ed406a2320d320ff1410d', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('20', '1', '23011', '1558404328', '1', '0', 'd07cd940f5c243de82927ae3cc17d7405e2eb98989af1584d30155e60a348fd6', 'bsci.jpg', 'portal/20190521/3b9f6a6c040787299b2d58e97d660f6d.jpg', 'd07cd940f5c243de82927ae3cc17d740', '779cc8be06611b57a7f863ac7b61aef95dccda30', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('21', '1', '14554', '1558404599', '1', '0', '6c9017348f7abd0c1efa3bb102c723da873baa11199e666be2ca86f1e6363c7a', 'sedex.jpg', 'portal/20190521/6691b912569cb5d2f31e483a7c3484f6.jpg', '6c9017348f7abd0c1efa3bb102c723da', '88693d979a5be42133528cd6ba6c10996301a6d5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('22', '1', '25308', '1558404863', '1', '0', 'a1190f6bcfcb22187435bce20c7f76340004ef117df2100cdc9e80e81413d80f', 'fsc.jpg', 'portal/20190521/4b3d115f2304e9f2caa89541e6272d64.jpg', 'a1190f6bcfcb22187435bce20c7f7634', '99309c75e5e56272d7579845bb5ceaf572ea2434', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('23', '1', '2565', '1558404996', '1', '0', '6618693ed30efe85981f67ed3bd57d2f82c3246d75dba1d3c4d1890f95675cd2', 'WalMart.png', 'portal/20190521/e1ec85eba21488feacf35a7eda672307.png', '6618693ed30efe85981f67ed3bd57d2f', 'ef87c913c9feb782a914a5a230087d1cf1ad5063', 'png', null);
INSERT INTO `cmf_asset` VALUES ('24', '1', '15570', '1558405434', '1', '0', 'c5a0584e1b8cd3e61c5d4bad5c5f4e991580685f3d8b948c988b494cd2c33f53', 'gots1.jpg', 'portal/20190521/94dc50333098adf3d76ee0df384edf15.jpg', 'c5a0584e1b8cd3e61c5d4bad5c5f4e99', '7f34844cc36ba6ba8b9cf73b8194388edd75e227', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('25', '1', '55111', '1558405515', '1', '0', 'da2bcfca31ed7d7b3f007585429ed4bc72320b3ad26ae042f31caf882da45abe', 'timg.jpg', 'portal/20190521/13585f8ceaaf88e2a55906d1393efc6e.jpg', 'da2bcfca31ed7d7b3f007585429ed4bc', '4468ce9d68eeb6294122a8d772d9bc29c52a2050', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('26', '1', '13567', '1558405778', '1', '0', 'bcabdd90d123a0d58262fddfafe43d018fb30c978f3afa153f643ae98ea398fb', '1.jpg', 'portal/20190521/0727c13b5bb75d4400862cfe5834deee.jpg', 'bcabdd90d123a0d58262fddfafe43d01', 'd12beadfa433c05f6d718848d2393c26ef46e333', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('27', '1', '89596', '1558405790', '1', '0', 'b234c8bc237a32b63893240384c619c485a4216cf73c5c0ad5bdb5be95ca8940', '未标题-1.jpg', 'portal/20190521/588bd95b012332030a73d11b3c2f2b50.jpg', 'b234c8bc237a32b63893240384c619c4', 'ebbc434e18ac74ace02ffd0c9d209d40667ca96e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('28', '1', '25098', '1558405871', '1', '0', 'd6212a1fd75369516fc5e508b33aafadb1d9de864a3ea9b8c0b2aa9d198f46f0', 'rcs.jpg', 'portal/20190521/446bb5e4feb53674ad7397c19db020da.jpg', 'd6212a1fd75369516fc5e508b33aafad', 'd7ebb2b9d36480c8358ca712ea699f8751cf5eab', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('29', '1', '3960', '1558406027', '1', '0', 'd9cb0c1a2279d7b6d4b9b22a8315a42168ad98555a20c4c3651cd4ed52fcd74a', 'WRAP.gif', 'portal/20190521/ebfec25589036f3525ff9017b81228ad.gif', 'd9cb0c1a2279d7b6d4b9b22a8315a421', 'b7b7a553bb26dfcd354688e141f4d5b28f8a7692', 'gif', null);
INSERT INTO `cmf_asset` VALUES ('30', '1', '37767', '1558406332', '1', '0', '475b3038313d43e3a3f57fa92d2e32f0373864b84def095d833daa1fddc9933a', 'rws.jpg', 'portal/20190521/ff2deeeacb6ef46eb3bb987c2b7326b8.jpg', '475b3038313d43e3a3f57fa92d2e32f0', '940e846361f1e3c2c954439012cc3e2ce43fa939', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('31', '1', '14820', '1558406340', '1', '0', '45adf9376ad8ef11365b61f6e622d7494cc3d26d733f5213bb581f1951a15549', 'rws (1).jpg', 'portal/20190521/9fba34be77c683910acf7a4df04d9645.jpg', '45adf9376ad8ef11365b61f6e622d749', 'dbf91744385d8cd51b262f8935c532121ef52eee', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('32', '1', '82171', '1558406506', '1', '0', '0980e2fc2810f1f39143e0587c2db2d361421b7b76355db8403f5698222e5162', 'rds.png', 'portal/20190521/f19853846c77b67e66cb6e59a3e724c6.png', '0980e2fc2810f1f39143e0587c2db2d3', 'a0944a68995d6db79796437a4da35c1372e2c3e8', 'png', null);
INSERT INTO `cmf_asset` VALUES ('33', '1', '78923', '1558406830', '1', '0', '162cf690f39befbc0b01865eba66a868d3fc25298ce651194c3a6117d74de660', 'wca.jpg', 'portal/20190521/10f4bea6f78e7765b1c1b848d31bfe86.jpg', '162cf690f39befbc0b01865eba66a868', 'c1f0ba3a98100cfeebbf39ea240cc29faf2cf1a7', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('34', '1', '2290', '1558407069', '1', '0', '6d8848c8ee1406c8844ce7373f86da6ed61dc54aa8545bca88bb0ad16214c1ac', 'dsl.png', 'portal/20190521/7a2e28444a1a62ad9868bb1d6734150a.png', '6d8848c8ee1406c8844ce7373f86da6e', 'b75a199c97fd9f9a6a1a83811be8ed6c1b94147c', 'png', null);
INSERT INTO `cmf_asset` VALUES ('35', '1', '41721', '1558407217', '1', '0', 'a72d3386214e846254d0f23bd7196008990104a2ee27545fd9819f2d713d4591', 'yyk.jpg', 'portal/20190521/95bf80e78d4fdd7cc43dfe5b43b1e21f.jpg', 'a72d3386214e846254d0f23bd7196008', '539c805050806bca55450d8960a6ccba2a63568e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('36', '1', '24241', '1558407415', '1', '0', 'f7c38e845c28e872d588543ade0ba2195510807916c5ce1b544c171da6f08450', 'cos.jpg', 'portal/20190521/b854c2491c338da6b589e804f7e26f2b.jpg', 'f7c38e845c28e872d588543ade0ba219', 'eda31ad467f0b53e70e57c671c81ca5c55462a51', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('37', '1', '7870', '1558428735', '1', '0', '2d6ec796f83fd83ec1dc7ab3f9a00f8345b0db88647bd6b670738ca66ec3f2e2', '首页-2019超网-验厂_08_05.png', 'portal/20190521/fb82fb1f92a2abaf6311a5f17aaacdf6.png', '2d6ec796f83fd83ec1dc7ab3f9a00f83', 'a90d20fa323332b8222137dd7a9fcaa7d0c8739b', 'png', null);
INSERT INTO `cmf_asset` VALUES ('38', '1', '13668', '1558428770', '1', '0', '9895d407ccbcc8568e7dd18c99c151d1f5a368ab3b5056e31864c1d134e2cf4a', '首页-2019超网-验厂_08_03.png', 'portal/20190521/cef6cc51e18752b2e124ef85b3091e18.png', '9895d407ccbcc8568e7dd18c99c151d1', '9799b0ea170bacd561264746e58606627a94a407', 'png', null);
INSERT INTO `cmf_asset` VALUES ('39', '1', '5147', '1558428804', '1', '0', '4b469c41a0bfdb01ed9f63253a81876256ff1101cedef68ea499e78e6949a0ba', '首页-2019超网-验厂_08_08.png', 'portal/20190521/155a8ea68fc5c13290f00500adbd8543.png', '4b469c41a0bfdb01ed9f63253a818762', '8efa7208b1aae934922ad59ea8bd5f6f5c03dd49', 'png', null);
INSERT INTO `cmf_asset` VALUES ('40', '1', '6330', '1558428833', '1', '0', 'fc791d2097f51ced4ef8a10725614085b7caac296158d8adb41b39459a84ae97', '首页-2019超网-验厂_08_10.png', 'portal/20190521/8c922746bf0bd620511c68aa9a96b214.png', 'fc791d2097f51ced4ef8a10725614085', 'a75a60349758404076bcc47febf7823ebcfbc517', 'png', null);
INSERT INTO `cmf_asset` VALUES ('41', '1', '8615', '1558428868', '1', '0', '3c6db81c714d210724cec12b838d8db82b0493e584ea7c7e0577df699b5ac4c4', '首页-2019超网-验厂_08_17.png', 'portal/20190521/a2c8e949f8b7d50098401f299572b02d.png', '3c6db81c714d210724cec12b838d8db8', '3cda0fcf7699355cff2fb1fde412c01d7fc7fa64', 'png', null);
INSERT INTO `cmf_asset` VALUES ('42', '1', '5279', '1558428881', '1', '0', '382d91749d58eda20821837ce2aaf05e867177f27c39f91d44e2ee8fa1f9046d', '首页-2019超网-验厂_08_19.png', 'portal/20190521/b0849d0c277c5321d3dd790540d58761.png', '382d91749d58eda20821837ce2aaf05e', 'bfba373e9dcd886a99db6e89640440a44b93c9cf', 'png', null);
INSERT INTO `cmf_asset` VALUES ('43', '1', '30955', '1558505278', '1', '0', '8d2e09400df47390d3fb6f8dc9490ac1c41c1fd5edfc7d79e17ad4b3241504fe', 'bangong.png', 'portal/20190522/346073875000cbf2f1b313bfbba55833.png', '8d2e09400df47390d3fb6f8dc9490ac1', '070e7267ea1fc76bc70e93734a406f6845146cc3', 'png', null);
INSERT INTO `cmf_asset` VALUES ('44', '1', '19902', '1558505291', '1', '0', '3fe9af67738e64fa6fb238d8fbc4b71ddf07ec47d324f8e54c3a904589fbbbdd', 'logo.png', 'portal/20190522/766a92cf96d9616121d086bd417c49ac.png', '3fe9af67738e64fa6fb238d8fbc4b71d', '049c6e4a4d945fc64a1186cbf1dc0f964b069cc2', 'png', null);
INSERT INTO `cmf_asset` VALUES ('45', '1', '42940', '1558505665', '1', '0', 'a55ba216caebef533b3ce47da92187f1397949f9a1eec023403965ec00505dfd', 'sedex.jpg', 'portal/20190522/2ceb2d46d4cb7dcacce452330278a1df.jpg', 'a55ba216caebef533b3ce47da92187f1', 'e1eca8c09ec302310fc590fa3239b2623f1dbadc', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('46', '1', '37032', '1558505761', '1', '0', '5f6f05e4b510557af9ae7111ec9bd3078fe008f705f93bc20c9a4b9bab73e0b5', 'sedex.jpg', 'portal/20190522/da379aa5f87df3db1767827a3528fc11.jpg', '5f6f05e4b510557af9ae7111ec9bd307', 'c0b9e247178a150f0fb18aca036ac930b392c247', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('47', '1', '39373', '1558505995', '1', '0', '437a4bcb7f2601183a23a9befeb4b823ac5732e742fc2761e53afda5a44c55f1', 'sa8000.jpg', 'portal/20190522/7df164f7adaa24dc18357337e06f5640.jpg', '437a4bcb7f2601183a23a9befeb4b823', '4a91566b1cb524f65ca4b206c03a1e87949536fa', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('48', '1', '53540', '1558506402', '1', '0', '6b851a760d1071080da68a3799784c4ebbdcc95891ec321831e50278f7593f2c', 'bnpw-banner-960.jpg', 'default/20190522/100863369ce5b7b6e6a82c165d9e71c1.jpg', '6b851a760d1071080da68a3799784c4e', 'a2dcedf7ea1e29414e7a90c4b8a86f5b102b5508', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('49', '1', '40521', '1558507132', '1', '0', '22252040ae60719f61bcd9d0f955633f0f1b313fd5b3ffd5cbd6109e7a23e585', 'dis.jpg', 'portal/20190522/73702c39a0fab00de58225b2c99e9e4b.jpg', '22252040ae60719f61bcd9d0f955633f', '8f0d9508c7fa04dc41a6c1f1bbda85d6143b528c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('50', '1', '42468', '1558507171', '1', '0', '784739d58bf8f231abf866213d3bec5520891f7f9e6380ed4b8ca127332dc0d2', 'wal.jpg', 'portal/20190522/eeecc3195a90a30e4418070269b739d6.jpg', '784739d58bf8f231abf866213d3bec55', '75a2aaee8482be3fa56af6307dfa1231479fe9d7', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('51', '1', '77798', '1558507187', '1', '0', '381f2380d979bbb5d2e6a2c5954cd7963b37268aa03ff1149d600aede5220f9b', 'wca.jpg', 'portal/20190522/82f9903adf7f54f60bf20df322c08be2.jpg', '381f2380d979bbb5d2e6a2c5954cd796', '3d37c8d1f66305dd2636d81f4a386db8f87b0c5f', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('52', '1', '41560', '1558507206', '1', '0', '42133c690e4a7f406bc15c259847e6a16aee9dfba3a8c042ccb0670357e8e898', 'cost.jpg', 'portal/20190522/28307ea88d606bc77be9c2fc45d2b344.jpg', '42133c690e4a7f406bc15c259847e6a1', 'c4e17597df1737eb978c407889dc1845c1cf37c4', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('53', '1', '44169', '1558507240', '1', '0', 'c028e86efc99e81c85303089db8426f92802cf9b67c2989e4c203d2a2bf79e0e', 'bsci.jpg', 'portal/20190522/d6557cb68940c59d18d2fbd0974eadab.jpg', 'c028e86efc99e81c85303089db8426f9', '437e89505f25dea46a64fa1b4cc16e186a3c2fa8', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('54', '1', '43094', '1558507257', '1', '0', 'b6ab8590633627500885cc24d74d49c1ae6f63baa154718e521032898f8f2b3b', 'fsc.jpg', 'portal/20190522/234f2d6e73bb28861e8af6a4f8f279ca.jpg', 'b6ab8590633627500885cc24d74d49c1', '2e3f298025d96a3812e1f798f4fe4b92be5fefe9', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('55', '1', '53785', '1558507275', '1', '0', '52c80c6d7135242952d3064e0893c2ec06d98a391808b8b272d9b5b222836b29', 'gots.jpg', 'portal/20190522/2b9e8eee4217cd3a3c65d17ae6ee7359.jpg', '52c80c6d7135242952d3064e0893c2ec', '12310949635fd828980847a5efa5e025830adc61', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('56', '1', '60538', '1558507293', '1', '0', '741ef0e9a43304c0c0f4d28df9fcf0a7e43189106ff24fd7238d6548a8821a65', 'ocs.jpg', 'portal/20190522/4c9e05422d4516e5488055668b6f3b5b.jpg', '741ef0e9a43304c0c0f4d28df9fcf0a7', '9c6a9a167c9289db07e0249c19899223856293b7', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('57', '1', '49672', '1558507311', '1', '0', 'c76cdce512a3713283975d846f9d0a833498c66b114e68dea969970e86b24125', 'grs.jpg', 'portal/20190522/7ac7a0a8cb48a796128a8ff410997cdb.jpg', 'c76cdce512a3713283975d846f9d0a83', '7e59bea8f18017b1aee0fccdaae7ecfbf9fe9c4e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('58', '1', '58423', '1558507335', '1', '0', 'e3e96f98201fc9c553185c2f8e94089f9763ae595117e902d1e27344d1e2d96e', 'rws.jpg', 'portal/20190522/9c27b2d3380a5519f1ad27e07e8df610.jpg', 'e3e96f98201fc9c553185c2f8e94089f', '65ba685e70755f60ba9fde0023770b1a3c0a7e05', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('59', '1', '49050', '1558507377', '1', '0', '187d41d7c1262b6b4def24bdcf7f09e272bd91b42f896e79fa39b1ab5b322412', 'rds.jpg', 'portal/20190522/752ab3722de55da4c5a457e110e3898a.jpg', '187d41d7c1262b6b4def24bdcf7f09e2', '51a3a8d53cc1b5fda620b2a47e30fc92af28a680', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('60', '1', '30654', '1558507524', '1', '0', '15d41c9bc09d2d220ee598d234c25a4c87ed172f060560997705e1b88c725ac1', 'wrap.jpg', 'portal/20190522/0417c1046220e925b0b1b00331007182.jpg', '15d41c9bc09d2d220ee598d234c25a4c', 'a0cd1d11b442ce6e276dcf6723c3d8bf0441c12b', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('61', '1', '38492', '1558507553', '1', '0', 'a69bf5cb4f009bff7fd6958a359a3a62047ee1073bba14888599edb029750dad', 'rcs.jpg', 'portal/20190522/eed9c973abe17bcd573ddc197ba17335.jpg', 'a69bf5cb4f009bff7fd6958a359a3a62', '368d0f56b4365c463077b36cb2fb8724a57110ec', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('62', '1', '11741', '1558510101', '1', '0', '8fba863fbebe7ec196db42c1beba2d709ab0f0b01cfbfcd0a3cd59902869f71f', 'Slide03.png', 'default/20190522/b2af84b95b066f71b6a86f742a59d77b.png', '8fba863fbebe7ec196db42c1beba2d70', 'd501b778512cc30c3ab3803913830f70f3691ad9', 'png', null);
INSERT INTO `cmf_asset` VALUES ('63', '1', '10498', '1558510123', '1', '0', '3cbe638f961e00c2c1dd497b9408817ed1f0d761d1a7199759d376b7f0020b0b', 'Slide05.png', 'default/20190522/cbf52169aeccc76d52ac643fb69ee1d7.png', '3cbe638f961e00c2c1dd497b9408817e', '540a4d027c820b92c3c980d0a405c80ceda5209c', 'png', null);
INSERT INTO `cmf_asset` VALUES ('64', '1', '15657', '1558510151', '1', '0', '12fa006fbd739f50a607e7f572c7c928dc5efc04b5d92fc03b5d4a465c441515', 'Slide09.png', 'default/20190522/48348f4bb96337e98a299e9d79614935.png', '12fa006fbd739f50a607e7f572c7c928', 'a4f271bef0d5eb8ab724c70eb78e77760be730fd', 'png', null);
INSERT INTO `cmf_asset` VALUES ('65', '1', '11525', '1558510165', '1', '0', '18949c73abb0504eda5a9781c8cdce99e2c9617260390ae43292c3cf4ddbcdc9', 'Slide11.png', 'default/20190522/da0a760e463a2122c63384225ca7e97a.png', '18949c73abb0504eda5a9781c8cdce99', '644412946d78c4af5b37f0b56cf4f24eb16cb4cc', 'png', null);
INSERT INTO `cmf_asset` VALUES ('66', '1', '47962', '1558511261', '1', '0', '0d00ef10614bbf48175351e9ab04e029352cd18465ed40c360b47faff471d051', 'ad.jpg', 'portal/20190522/eb45c5eb63e3ff84ebc301995fcc79a7.jpg', '0d00ef10614bbf48175351e9ab04e029', '149e363e545fa90fa33cf9558be0a44f8298daa3', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('67', '1', '48104', '1558511277', '1', '0', 'e3374fc4a0536ff1d0d65659be7c801cd002e277361f707ef54cdebefefcce4e', 'scs.jpg', 'portal/20190522/fa290226aa2835a2ae7e9ffd74a15a78.jpg', 'e3374fc4a0536ff1d0d65659be7c801c', '128c221a6bc09268a0d8aeda325d00296106e69b', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('68', '1', '50562', '1558576485', '1', '0', '1bdc6ee30fd83f3944ef195b006d068cf3c4b7fcf6fd52cba9af788954cd6df9', 'QQ截图20190523095403.png', 'default/20190523/a7253f9c82b9dd6211a40feb83477eed.png', '1bdc6ee30fd83f3944ef195b006d068c', '4a403933e64c8b9fac8199ef2495672a9fbfc841', 'png', null);
INSERT INTO `cmf_asset` VALUES ('69', '1', '77609', '1558577546', '1', '0', 'c2fa52f972b8bc9483502a5e796df8db383df2f499e4a01c84f92baa21276e2d', 'QQ截图20190523101048.png', 'default/20190523/f0150a44bcddc3f7887af1a34678464f.png', 'c2fa52f972b8bc9483502a5e796df8db', '1cf42318fa37b85972fabe87ff7c0a86c48eddd0', 'png', null);
INSERT INTO `cmf_asset` VALUES ('70', '1', '34654', '1558589095', '1', '0', '2c29965c460cb0f98fbf93e72e947d6702fa6b107fa6a8b1bd10f19573a7d073', 'chaowang.png', 'portal/20190523/276e907268c21eb807b0fa079515249c.png', '2c29965c460cb0f98fbf93e72e947d67', '38601f626fea5183be28d12747fb06df106d5b14', 'png', null);

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `cmf_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `cmf_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('118', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('119', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('120', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('121', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES ('122', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('123', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES ('124', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('125', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES ('126', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('127', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('128', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES ('129', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('130', '1', 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('131', '1', 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('132', '1', 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('162', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('163', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('164', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('165', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('166', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('167', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('168', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES ('169', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES ('170', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES ('171', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('172', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('173', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('174', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('175', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('176', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('177', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES ('178', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('179', '1', 'portal', 'admin_url', 'portal/AdminCategory/toggle', '', '文章分类显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('180', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('181', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('182', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('183', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('184', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('185', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('186', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('187', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('188', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('189', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('190', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('191', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES ('192', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='系统钩子表';

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES ('29', '3', '0', '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES ('32', '2', '1', '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES ('33', '3', '0', '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES ('34', '1', '0', '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES ('35', '1', '1', '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `cmf_hook` VALUES ('36', '1', '1', '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `cmf_hook` VALUES ('37', '2', '1', '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `cmf_hook` VALUES ('38', '2', '1', '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `cmf_hook` VALUES ('39', '2', '1', '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `cmf_hook` VALUES ('40', '2', '1', '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `cmf_hook` VALUES ('41', '2', '1', '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `cmf_hook` VALUES ('42', '2', '1', '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `cmf_hook` VALUES ('43', '2', '1', '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `cmf_hook` VALUES ('44', '2', '1', '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `cmf_hook` VALUES ('49', '2', '1', '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `cmf_hook` VALUES ('50', '2', '1', '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `cmf_hook` VALUES ('51', '2', '1', '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `cmf_hook` VALUES ('52', '2', '1', '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `cmf_hook` VALUES ('53', '2', '1', '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `cmf_hook` VALUES ('54', '2', '1', '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `cmf_hook` VALUES ('55', '2', '1', '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `cmf_hook` VALUES ('64', '2', '1', '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `cmf_hook` VALUES ('65', '2', '1', '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `cmf_hook` VALUES ('66', '2', '1', '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `cmf_hook` VALUES ('67', '2', '1', '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `cmf_hook` VALUES ('68', '2', '1', '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `cmf_hook` VALUES ('69', '2', '1', '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `cmf_hook` VALUES ('70', '2', '1', '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `cmf_hook` VALUES ('71', '2', '1', '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');
INSERT INTO `cmf_hook` VALUES ('72', '2', '0', '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES ('73', '2', '0', '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES ('74', '2', '1', '门户后台文章管理列表界面', 'portal_admin_article_index_view', 'portal', '门户后台文章管理列表界面');
INSERT INTO `cmf_hook` VALUES ('75', '2', '1', '门户后台文章添加界面', 'portal_admin_article_add_view', 'portal', '门户后台文章添加界面');
INSERT INTO `cmf_hook` VALUES ('76', '2', '1', '门户后台文章编辑界面', 'portal_admin_article_edit_view', 'portal', '门户后台文章编辑界面');
INSERT INTO `cmf_hook` VALUES ('77', '2', '1', '门户后台文章分类管理列表界面', 'portal_admin_category_index_view', 'portal', '门户后台文章分类管理列表界面');
INSERT INTO `cmf_hook` VALUES ('78', '2', '1', '门户后台文章分类添加界面', 'portal_admin_category_add_view', 'portal', '门户后台文章分类添加界面');
INSERT INTO `cmf_hook` VALUES ('79', '2', '1', '门户后台文章分类编辑界面', 'portal_admin_category_edit_view', 'portal', '门户后台文章分类编辑界面');
INSERT INTO `cmf_hook` VALUES ('80', '2', '1', '门户后台页面管理列表界面', 'portal_admin_page_index_view', 'portal', '门户后台页面管理列表界面');
INSERT INTO `cmf_hook` VALUES ('81', '2', '1', '门户后台页面添加界面', 'portal_admin_page_add_view', 'portal', '门户后台页面添加界面');
INSERT INTO `cmf_hook` VALUES ('82', '2', '1', '门户后台页面编辑界面', 'portal_admin_page_edit_view', 'portal', '门户后台页面编辑界面');
INSERT INTO `cmf_hook` VALUES ('83', '2', '1', '门户后台文章标签管理列表界面', 'portal_admin_tag_index_view', 'portal', '门户后台文章标签管理列表界面');
INSERT INTO `cmf_hook` VALUES ('84', '4', '0', '门户后台文章添加编辑界面右侧栏', 'portal_admin_article_edit_view_right_sidebar', 'portal', '门户后台文章添加编辑界面右侧栏');
INSERT INTO `cmf_hook` VALUES ('85', '4', '0', '门户后台文章添加编辑界面主要内容', 'portal_admin_article_edit_view_main', 'portal', '门户后台文章添加编辑界面主要内容');
INSERT INTO `cmf_hook` VALUES ('86', '1', '0', '应用调度', 'app_dispatch', 'cmf', '应用调度');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
INSERT INTO `cmf_hook_plugin` VALUES ('1', '10000', '1', 'switch_theme', 'SwitchThemeDemo');

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_link
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES ('2', '0', '底部导航', '');

-- ----------------------------
-- Table structure for cmf_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
INSERT INTO `cmf_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1');
INSERT INTO `cmf_nav_menu` VALUES ('2', '1', '0', '1', '10000', '验厂项目', '', '/portal/factory/index', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('3', '1', '0', '1', '10000', '认证项目', '', '/portal/authe/index', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('4', '1', '0', '1', '10000', '产品服务', '', '', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('5', '1', '0', '1', '10000', '验厂常见问题', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('6', '1', '0', '1', '10000', '成功案例', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":17}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('7', '1', '0', '1', '10000', '联系我们', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":16}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('8', '2', '0', '1', '10000', '行业方案', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('9', '2', '0', '1', '10000', '案例分类', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('10', '2', '0', '1', '10000', '关于我们', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('11', '2', '0', '1', '10000', '新闻中心', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('12', '2', '0', '1', '10000', '隐私声明', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('13', '2', '8', '1', '10000', 'Disney', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('14', '2', '8', '1', '10000', 'Wal-mart', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('15', '2', '10', '1', '10000', '联系我们', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":16}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('16', '2', '10', '1', '10000', '公司地址', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('17', '2', '11', '1', '10000', '最新动态', '', 'home', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('18', '2', '11', '1', '10000', '企业新闻', '', 'home', '', '');

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES ('1', '1', 'site_info', '{\"site_name\":\"\\u8d85\\u7f51\\u9a8c\\u5382\\u54a8\\u8be2\",\"site_seo_title\":\"\\u8d85\\u7f51\\u9a8c\\u5382\\u54a8\\u8be2\",\"site_seo_keywords\":\"Wal-mart\\u9a8c\\u5382,\\u9a8c\\u5382,\\u8ba4\\u8bc1,\\u9a8c\\u5382\\u54a8\\u8be2,BSCI\\u9a8c\\u5382\",\"site_seo_description\":\"20\\u5e74\\u4e13\\u6ce8\\u9a8c\\u5382\",\"site_icp\":\"\",\"site_gwa\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}');
INSERT INTO `cmf_option` VALUES ('2', '1', 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}');
INSERT INTO `cmf_option` VALUES ('3', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES ('4', '1', 'admin_settings', '{\"admin_password\":\"\",\"admin_theme\":\"admin_simpleboot3\",\"admin_style\":\"simpleadmin\"}');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
INSERT INTO `cmf_plugin` VALUES ('1', '1', '0', '1', '0', 'SwitchThemeDemo', '前台模板切换演示', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', '1.0.1', '前台模板切换演示', '{\"mobile_theme\":\"\"}');

-- ----------------------------
-- Table structure for cmf_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of cmf_portal_category
-- ----------------------------
INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '1', '验厂咨询', '', '0-1', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('2', '0', '0', '1', '0', '10000', '认证项目', '', '0-2', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('3', '2', '0', '1', '0', '10000', 'SA8000认证咨询', 'SA8000即“社会责任标准”,是Social Accountability 8000的英文简称，是全球首个道德规范国际标准。其宗旨是确保供应商所供应的产品，皆符合社会责任标准的要求。', '0-2-3', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/7df164f7adaa24dc18357337e06f5640.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('4', '2', '0', '1', '0', '10000', 'BSCI认证咨询', 'BSCI—商业社会标准认证，英文全称Business Social Compliance Initiative,BSCI是倡议商界遵守社会责任组织倡议商界遵守社会责任组织旨在执行一套统一的程序， 通过不断完善发展政策，来监控和促进生产相关产品之公司的社会责任表现。', '0-2-4', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/d6557cb68940c59d18d2fbd0974eadab.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('5', '1', '0', '1', '0', '10', 'SEDEX验厂咨询', 'SEDEX是供货商商业道德信息交流的缩写形式（Supplier Ethical Data Exchange）。SEDEX是一套网络数据库，用于帮助各公司储存其业务范围内的劳动准则信息，而且他们的客户也可以共享这些信息。', '0-1-5', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/da379aa5f87df3db1767827a3528fc11.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('6', '2', '0', '1', '0', '10000', 'FSC森林认证', 'FSC森林认证，又叫木材认证，它是一种运用市场机制来促进森林可持续经营，实现生态、社会和经济目标的工具。FSC森林认证包括森林经营认证(Forest Management,FM)和产销监管链认证(Chain of Custody,COC)', '0-2-6', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/234f2d6e73bb28861e8af6a4f8f279ca.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('7', '1', '0', '1', '0', '11', 'WalMart验厂咨询', '沃尔玛验厂是指沃尔玛按照一套严格的供应商标准系统对工厂进行审核或评估。目前沃尔玛针对所有供应商的标准审核主要包括社会责任、品质、反恐三个方面，通过沃尔玛验厂是获取沃尔玛品牌商订单的必要前提条件，其中社会责任审核是沃尔玛验厂最核心部分。', '0-1-7', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/eeecc3195a90a30e4418070269b739d6.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('8', '2', '0', '1', '0', '10000', 'GOTS认证咨询', 'GOTS——全球有机纺织品标准认证的目的是确保有机纺织品从收获、到原材料、到加工以及到最后产品包装的规范性，以便给最终的消费者带来可信赖的产品。', '0-2-8', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/2b9e8eee4217cd3a3c65d17ae6ee7359.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('9', '2', '0', '1', '0', '10000', 'OCS认证咨询', '有机含量标准—OCS认证的目的是确保对有机含量声明的信任。 为了达成此目的，OCS将核实最终产品中有机原料的存在及其含量。', '0-2-9', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/4c9e05422d4516e5488055668b6f3b5b.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('10', '2', '0', '1', '0', '10000', 'GRS认证咨询', 'GRS—全球回收标准认证是一个国际化，自愿性的，以及针对完整产品标准，内容针对供应链厂商对产品回收、再生成分、监管链的管控、社会责任和环境规范﹐以及化学品的限制的执行﹐并由第三方认证机构进。', '0-2-10', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/7ac7a0a8cb48a796128a8ff410997cdb.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('11', '2', '0', '1', '0', '10000', 'RCS认证咨询', '回收含量声明标准—RCS认证，是一项国际、自愿和全面的产品标准，规定了回收内容和产销监管链的第三方认证要求。RCS的目标是增加产品中回收材料的使用。', '0-2-11', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/eed9c973abe17bcd573ddc197ba17335.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('12', '2', '0', '1', '0', '10000', 'WRAP认证咨询', 'WRAP认证，国际社会责任认证。全球最大的独立的认证项目，主要集中于服装、鞋袜和缝纫纺织品领域。', '0-2-12', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/0417c1046220e925b0b1b00331007182.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('13', '2', '0', '1', '0', '10000', 'RWS认证咨询', '负责任羊毛标准—RWS认证，是一个独立、 自愿的标准认证。RWS认证在农场方面, 确保绵羊受到五星的自由待遇, 并确保在管理和保护土地方面的最佳做法。通过加工阶段, 认证确保正确识别和跟踪认证农场的羊毛。', '0-2-13', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/9c27b2d3380a5519f1ad27e07e8df610.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('14', '2', '0', '1', '0', '10000', 'RDS认证咨询', 'RDS—羽绒责任认证是由一直致力于服装和纺织品可持续发展的全球非盈利组织---纺织品交易所（TextileExchange）所主导，旨在用于纪录动物福利信息和确保羽绒制品可追踪性的标准。', '0-2-14', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/752ab3722de55da4c5a457e110e3898a.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('15', '1', '0', '1', '0', '100', 'WCA验厂咨询', 'WCA验厂是英国天祥公证行出的一个审核标准，WCA验厂是验社会责任的（也可以叫做人权验厂）。WCA验厂是接受综合计时批文的，要求工厂要给所有员工购买工伤保险，接受社保批文。', '0-1-15', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/82f9903adf7f54f60bf20df322c08be2.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('16', '1', '0', '1', '0', '3', 'Disney验厂咨询 ', 'Disney验厂是迪斯尼面向其供货商的一种符合性要求。主要是关于从社会责任方面出发的综合管理体系。从用人、工资薪酬福利是否满足当地法律法规，员工的人权是否受到尊重，工作环境是否符合职业健康安全等。其验厂方式，除了追溯，还有不同于标准体系认证的地方是进行员工抽样访谈。', '0-1-16', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/73702c39a0fab00de58225b2c99e9e4b.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('17', '1', '0', '1', '1558407321', '10000', '优衣库验厂咨询', 'UNIQLO，优衣库；知名的日本服装品牌。在1963年由日本的迅销公司建立，当年是一家销售西服的小服装店，但现已是排名全球服饰零售业前列的 日本迅销(FAST RETAILING)集团旗下的实力核心品牌。产品涉及女装男装以及童装，优衣库（UNIQLO）验厂主要是针对企业社会责任方面的审核。', '0-1-17', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190521\\/95bf80e78d4fdd7cc43dfe5b43b1e21f.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('18', '1', '0', '1', '0', '10000', 'COSTCO验厂咨询', '好事多（Costco Wholesale）是一家仓储会员式企业，致力于给顾客带来价格和质量最满意的商品。价格成本的连锁店已经发展到了世界的300多个地区，商品种类繁多，对待会员还有额外的服务内容，所做的一切都是为了使顾客在购物时保持愉悦的心情。', '0-1-18', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/28307ea88d606bc77be9c2fc45d2b344.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('19', '0', '0', '1', '0', '10000', '行业', '', '0-19', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('20', '19', '0', '1', '0', '10000', '电器行业', '', '0-19-20', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190521\\/fb82fb1f92a2abaf6311a5f17aaacdf6.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('21', '19', '0', '1', '0', '10000', '家电行业', '', '0-19-21', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190521\\/cef6cc51e18752b2e124ef85b3091e18.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('22', '19', '0', '1', '0', '10000', '家电行业', '', '0-19-22', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190521\\/155a8ea68fc5c13290f00500adbd8543.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('23', '19', '0', '1', '0', '10000', '电子行业', '', '0-19-23', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190521\\/8c922746bf0bd620511c68aa9a96b214.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('24', '19', '0', '1', '0', '10000', '家居', '', '0-19-24', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190521\\/a2c8e949f8b7d50098401f299572b02d.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('25', '19', '0', '1', '0', '10000', '户外产品', '', '0-19-25', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190521\\/b0849d0c277c5321d3dd790540d58761.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('26', '19', '0', '1', '0', '10000', '测试图片', '', '0-19-26', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190520\\/9b63f7f0722094d789b709283be4c311.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('27', '1', '0', '1', '0', '10000', 'SCS验厂咨询', '　　SCS验厂是建立在之前的GSV基础之上，但是又和GSV有所不同。SCS验厂是沃尔玛反恐验厂标准之一（沃尔玛反恐验厂有SCS和SCAN两个标准）。', '0-1-27', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/fa290226aa2835a2ae7e9ffd74a15a78.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('28', '1', '0', '1', '0', '10000', 'Adidas验厂咨询', '阿迪达斯（Adidas）验厂作为客户方标准审核(Code of Conduct)，它的审核内容是以国际劳工标准为依据，要求供货商在劳工标准和工人生活条件等方面承担规定义务。主要内容包括：童工、强迫劳动、歧视、自由结社、工时、工资福利、环境、健康、安全和管理评审', '0-1-28', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190522\\/eb45c5eb63e3ff84ebc301995fcc79a7.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('29', '0', '0', '1', '0', '10000', '成功案例', '', '0-29', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('30', '0', '0', '1', '0', '10000', '新闻资讯', '', '0-30', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('31', '30', '0', '1', '0', '10000', '公司动态', '', '0-30-31', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('32', '30', '0', '1', '0', '10000', '行业新闻', '', '0-30-32', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------
INSERT INTO `cmf_portal_category_post` VALUES ('1', '1', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('2', '2', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('3', '3', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('4', '4', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('5', '5', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('6', '6', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('7', '7', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('8', '8', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('9', '9', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('10', '10', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('11', '11', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('12', '12', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('13', '13', '3', '10000', '0');
INSERT INTO `cmf_portal_category_post` VALUES ('14', '14', '5', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('15', '15', '7', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('16', '18', '3', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('17', '19', '3', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('18', '20', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('19', '21', '8', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('20', '22', '6', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('21', '23', '4', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('22', '24', '15', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('23', '25', '16', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('24', '28', '29', '10000', '1');

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
INSERT INTO `cmf_portal_post` VALUES ('1', '0', '1', '1', '1', '1', '1', '1', '1', '10', '0', '0', '0', '1558362799', '1558362807', '1558362660', '0', 'API认证验厂', '', '客户验厂\r\nWal-mart验厂\r\nTESCO验厂\r\nBSCI验厂\r\nTarget验厂\r\nWCA验厂\r\nDisney验厂\r\n杰西潘尼验厂\r\n孩之宝验厂\r\nPrimark验厂\r\n家得宝验厂\r\nSears验厂\r\n宝洁验厂\r\nStaple验厂\r\n玛莎验厂\r\n家乐福验厂\r\nNIKE验厂\r\n客户验厂相关新闻\r\nBSCI重大决策：撤机构，改名称！\r\nWalMart接受Sedex验厂报告的8个关键点\r\nTesco只认可这三家出的报告？2018年6月1日起正式实施\r\n沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解\r\nJCPenney改嫁后审核要求是否有变化？\r\n2017最低工资标准最新消息\r\nTESCO验厂 您的位置: 首页 > 客户验厂 > TESCO验厂\r\nTesco验厂（乐购）审核纲要内容\r\n　　　　阅读：80次\r\nTesco验厂（乐购）审核纲要内容\r\nTesco Technical Audit Introduction For Applicants\r\nTesco 技术审核指引\r\nDeclaration: Below information is for all applicants', '站张推荐', 'portal/20190520/9b63f7f0722094d789b709283be4c311.png', '\n&lt;p&gt;客户验厂&lt;/p&gt;\n&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/18-1.html&quot; title=&quot;Wal-mart验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Wal-mart验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; title=&quot;TESCO验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/34-1.html&quot; title=&quot;BSCI验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;BSCI验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/35-1.html&quot; title=&quot;Target验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Target验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/36-1.html&quot; title=&quot;WCA验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;WCA验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/37-1.html&quot; title=&quot;Disney验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Disney验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/38-1.html&quot; title=&quot;杰西潘尼验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;杰西潘尼验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/39-1.html&quot; title=&quot;孩之宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;孩之宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/40-1.html&quot; title=&quot;Primark验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Primark验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/41-1.html&quot; title=&quot;家得宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家得宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/42-1.html&quot; title=&quot;Sears验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Sears验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/43-1.html&quot; title=&quot;宝洁验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;宝洁验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/44-1.html&quot; title=&quot;Staple验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Staple验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/45-1.html&quot; title=&quot;玛莎验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;玛莎验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/46-1.html&quot; title=&quot;家乐福验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家乐福验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/47-1.html&quot; title=&quot;NIKE验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;NIKE验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;客户验厂相关新闻&lt;/p&gt;\n&lt;ul class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;a href=&quot;http://www.chinacocservice.com/article/2961.html&quot; target=&quot;_blank&quot; title=&quot;2017最低工资标准最新消息&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;2017最低工资标准最新消息&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3111.html&quot; target=&quot;_blank&quot; title=&quot;JCPenney改嫁后审核要求是否有变化？&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;JCPenney改嫁后审核要求是否有变化？&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3121.html&quot; target=&quot;_blank&quot; title=&quot;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3131.html&quot; target=&quot;_blank&quot; title=&quot;Tesco只认可这三家出的报告？2018年6月1日起正式实施&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;Tesco只认可这三家出的报告？2018年6月1日起正式实施&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3141.html&quot; target=&quot;_blank&quot; title=&quot;WalMart接受Sedex验厂报告的8个关键点&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;WalMart接受Sedex验厂报告的8个关键点&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3151.html&quot; target=&quot;_blank&quot; title=&quot;BSCI重大决策：撤机构，改名称！&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;BSCI重大决策：撤机构，改名称！&lt;/a&gt;\n&lt;/ul&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;/ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;TESCO验厂&lt;/p&gt;\n&lt;p&gt;您的位置: &lt;a href=&quot;http://www.chinacocservice.com/&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;首页&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/2-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;客户验厂&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;　　　　阅读：&lt;span style=&quot;&quot;&gt;80&lt;/span&gt;次&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;Tesco Technical Audit Introduction For Applicants&lt;/p&gt;\n&lt;p&gt;Tesco 技术审核指引&lt;/p&gt;\n&lt;p&gt;Declaration: Below information is for all applicants reference only and it is just a brief&lt;/p&gt;\n&lt;p&gt;of the audit’s introduction which is base on client’s requirements, it is designed for your&lt;/p&gt;\n&lt;p&gt;preparation with regard to the audits. It doesn’t mean you just need to provide below&lt;/p&gt;\n&lt;p&gt;information for the auditors, auditors may require more documents/information&lt;/p&gt;\n&lt;p&gt;according to actual situation durin&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190520\\/9b63f7f0722094d789b709283be4c311.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('2', '0', '1', '1', '1', '1', '1', '1', '1', '32', '0', '0', '0', '1558362844', '1558362878', '1558362780', '0', 'ECO&ADIS验厂', '', '客户验厂\r\nWal-mart验厂\r\nTESCO验厂\r\nBSCI验厂\r\nTarget验厂\r\nWCA验厂\r\nDisney验厂\r\n杰西潘尼验厂\r\n孩之宝验厂\r\nPrimark验厂\r\n家得宝验厂\r\nSears验厂\r\n宝洁验厂\r\nStaple验厂\r\n玛莎验厂\r\n家乐福验厂\r\nNIKE验厂\r\n客户验厂相关新闻\r\nBSCI重大决策：撤机构，改名称！\r\nWalMart接受Sedex验厂报告的8个关键点\r\nTesco只认可这三家出的报告？2018年6月1日起正式实施\r\n沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解\r\nJCPenney改嫁后审核要求是否有变化？\r\n2017最低工资标准最新消息\r\nTESCO验厂 您的位置: 首页 > 客户验厂 > TESCO验厂\r\nTesco验厂（乐购）审核纲要内容\r\n　　　　阅读：80次\r\nTesco验厂（乐购）审核纲要内容\r\nTesco Technical Audit Introduction For Applicants\r\nTesco 技术审核指引\r\nDeclaration: Below information is for all applicants', '站张推荐', 'portal/20190520/12e4cd02a3a31f50bafd125a0df2943a.png', '\n&lt;p&gt;客户验厂&lt;/p&gt;\n&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/18-1.html&quot; title=&quot;Wal-mart验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Wal-mart验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; title=&quot;TESCO验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/34-1.html&quot; title=&quot;BSCI验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;BSCI验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/35-1.html&quot; title=&quot;Target验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Target验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/36-1.html&quot; title=&quot;WCA验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;WCA验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/37-1.html&quot; title=&quot;Disney验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Disney验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/38-1.html&quot; title=&quot;杰西潘尼验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;杰西潘尼验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/39-1.html&quot; title=&quot;孩之宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;孩之宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/40-1.html&quot; title=&quot;Primark验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Primark验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/41-1.html&quot; title=&quot;家得宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家得宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/42-1.html&quot; title=&quot;Sears验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Sears验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/43-1.html&quot; title=&quot;宝洁验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;宝洁验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/44-1.html&quot; title=&quot;Staple验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Staple验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/45-1.html&quot; title=&quot;玛莎验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;玛莎验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/46-1.html&quot; title=&quot;家乐福验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家乐福验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/47-1.html&quot; title=&quot;NIKE验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;NIKE验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;客户验厂相关新闻&lt;/p&gt;\n&lt;ul class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;a href=&quot;http://www.chinacocservice.com/article/2961.html&quot; target=&quot;_blank&quot; title=&quot;2017最低工资标准最新消息&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;2017最低工资标准最新消息&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3111.html&quot; target=&quot;_blank&quot; title=&quot;JCPenney改嫁后审核要求是否有变化？&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;JCPenney改嫁后审核要求是否有变化？&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3121.html&quot; target=&quot;_blank&quot; title=&quot;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3131.html&quot; target=&quot;_blank&quot; title=&quot;Tesco只认可这三家出的报告？2018年6月1日起正式实施&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;Tesco只认可这三家出的报告？2018年6月1日起正式实施&lt;/a&gt;\n&lt;/ul&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;a href=&quot;http://www.chinacocservice.com/article/3141.html&quot; target=&quot;_blank&quot; title=&quot;WalMart接受Sedex验厂报告的8个关键点&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;WalMart接受Sedex验厂报告的8个关键点&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3151.html&quot; target=&quot;_blank&quot; title=&quot;BSCI重大决策：撤机构，改名称！&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;BSCI重大决策：撤机构，改名称！&lt;/a&gt;\n&lt;/ul&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;/ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;TESCO验厂&lt;/p&gt;\n&lt;p&gt;您的位置: &lt;a href=&quot;http://www.chinacocservice.com/&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;首页&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/2-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;客户验厂&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;　　　　阅读：&lt;span style=&quot;&quot;&gt;80&lt;/span&gt;次&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;Tesco Technical Audit Introduction For Applicants&lt;/p&gt;\n&lt;p&gt;Tesco 技术审核指引&lt;/p&gt;\n&lt;p&gt;Declaration: Below information is for all applicants reference only and it is just a brief&lt;/p&gt;\n&lt;p&gt;of the audit’s introduction which is base on client’s requirements, it is designed for your&lt;/p&gt;\n&lt;p&gt;preparation with regard to the audits. It doesn’t mean you just need to provide below&lt;/p&gt;\n&lt;p&gt;information for the auditors, auditors may require more documents/information&lt;/p&gt;\n&lt;p&gt;according to actual situation durin&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190520\\/12e4cd02a3a31f50bafd125a0df2943a.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('3', '0', '1', '1', '1', '1', '1', '1', '1', '20', '0', '0', '0', '1558363033', '1558363039', '1558362960', '0', 'C&A验厂', '沃尔玛验厂', '客户验厂\r\nWal-mart验厂\r\nTESCO验厂\r\nBSCI验厂\r\nTarget验厂\r\nWCA验厂\r\nDisney验厂\r\n杰西潘尼验厂\r\n孩之宝验厂\r\nPrimark验厂\r\n家得宝验厂\r\nSears验厂\r\n宝洁验厂\r\nStaple验厂\r\n玛莎验厂\r\n家乐福验厂\r\nNIKE验厂\r\n客户验厂相关新闻\r\nBSCI重大决策：撤机构，改名称！\r\nWalMart接受Sedex验厂报告的8个关键点\r\nTesco只认可这三家出的报告？2018年6月1日起正式实施\r\n沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解\r\nJCPenney改嫁后审核要求是否有变化？\r\n2017最低工资标准最新消息\r\nTESCO验厂 您的位置: 首页 > 客户验厂 > TESCO验厂\r\nTesco验厂（乐购）审核纲要内容\r\n　　　　阅读：80次\r\nTesco验厂（乐购）审核纲要内容\r\nTesco Technical Audit Introduction For Applicants\r\nTesco 技术审核指引\r\nDeclaration: Below information is for all applicants', '站张推荐', 'portal/20190520/3272c54b9e4d2982bdee45e3153d19c5.png', '\n&lt;p&gt;客户验厂&lt;/p&gt;\n&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/18-1.html&quot; title=&quot;Wal-mart验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Wal-mart验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; title=&quot;TESCO验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/34-1.html&quot; title=&quot;BSCI验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;BSCI验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/35-1.html&quot; title=&quot;Target验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Target验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/36-1.html&quot; title=&quot;WCA验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;WCA验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/37-1.html&quot; title=&quot;Disney验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Disney验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/38-1.html&quot; title=&quot;杰西潘尼验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;杰西潘尼验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/39-1.html&quot; title=&quot;孩之宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;孩之宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/40-1.html&quot; title=&quot;Primark验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Primark验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/41-1.html&quot; title=&quot;家得宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家得宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/42-1.html&quot; title=&quot;Sears验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Sears验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/43-1.html&quot; title=&quot;宝洁验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;宝洁验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/44-1.html&quot; title=&quot;Staple验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Staple验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/45-1.html&quot; title=&quot;玛莎验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;玛莎验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/46-1.html&quot; title=&quot;家乐福验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家乐福验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/47-1.html&quot; title=&quot;NIKE验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;NIKE验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;客户验厂相关新闻&lt;/p&gt;\n&lt;ul class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;a href=&quot;http://www.chinacocservice.com/article/2961.html&quot; target=&quot;_blank&quot; title=&quot;2017最低工资标准最新消息&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;2017最低工资标准最新消息&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3111.html&quot; target=&quot;_blank&quot; title=&quot;JCPenney改嫁后审核要求是否有变化？&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;JCPenney改嫁后审核要求是否有变化？&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3121.html&quot; target=&quot;_blank&quot; title=&quot;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3131.html&quot; target=&quot;_blank&quot; title=&quot;Tesco只认可这三家出的报告？2018年6月1日起正式实施&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;Tesco只认可这三家出的报告？2018年6月1日起正式实施&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3141.html&quot; target=&quot;_blank&quot; title=&quot;WalMart接受Sedex验厂报告的8个关键点&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;WalMart接受Sedex验厂报告的8个关键点&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3151.html&quot; target=&quot;_blank&quot; title=&quot;BSCI重大决策：撤机构，改名称！&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;BSCI重大决策：撤机构，改名称！&lt;/a&gt;\n&lt;/ul&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;/ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;TESCO验厂&lt;/p&gt;\n&lt;p&gt;您的位置: &lt;a href=&quot;http://www.chinacocservice.com/&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;首页&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/2-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;客户验厂&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;　　　　阅读：&lt;span style=&quot;&quot;&gt;80&lt;/span&gt;次&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;Tesco Technical Audit Introduction For Applicants&lt;/p&gt;\n&lt;p&gt;Tesco 技术审核指引&lt;/p&gt;\n&lt;p&gt;Declaration: Below information is for all applicants reference only and it is just a brief&lt;/p&gt;\n&lt;p&gt;of the audit’s introduction which is base on client’s requirements, it is designed for your&lt;/p&gt;\n&lt;p&gt;preparation with regard to the audits. It doesn’t mean you just need to provide below&lt;/p&gt;\n&lt;p&gt;information for the auditors, auditors may require more documents/information&lt;/p&gt;\n&lt;p&gt;according to actual situation durin&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190520\\/3272c54b9e4d2982bdee45e3153d19c5.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('4', '0', '1', '1', '1', '1', '1', '1', '1', '7', '0', '0', '0', '1558363069', '1558363075', '1558363020', '0', 'NEXT验厂', '', '客户验厂\r\nWal-mart验厂\r\nTESCO验厂\r\nBSCI验厂\r\nTarget验厂\r\nWCA验厂\r\nDisney验厂\r\n杰西潘尼验厂\r\n孩之宝验厂\r\nPrimark验厂\r\n家得宝验厂\r\nSears验厂\r\n宝洁验厂\r\nStaple验厂\r\n玛莎验厂\r\n家乐福验厂\r\nNIKE验厂\r\n客户验厂相关新闻\r\nBSCI重大决策：撤机构，改名称！\r\nWalMart接受Sedex验厂报告的8个关键点\r\nTesco只认可这三家出的报告？2018年6月1日起正式实施\r\n沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解\r\nJCPenney改嫁后审核要求是否有变化？\r\n2017最低工资标准最新消息\r\nTESCO验厂 您的位置: 首页 > 客户验厂 > TESCO验厂\r\nTesco验厂（乐购）审核纲要内容\r\n　　　　阅读：80次\r\nTesco验厂（乐购）审核纲要内容\r\nTesco Technical Audit Introduction For Applicants\r\nTesco 技术审核指引\r\nDeclaration: Below information is for all applicants', '站张推荐', 'portal/20190520/b43235c619f363af9527af087422518a.png', '\n&lt;p&gt;客户验厂&lt;/p&gt;\n&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/18-1.html&quot; title=&quot;Wal-mart验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Wal-mart验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; title=&quot;TESCO验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/34-1.html&quot; title=&quot;BSCI验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;BSCI验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/35-1.html&quot; title=&quot;Target验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Target验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/36-1.html&quot; title=&quot;WCA验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;WCA验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/37-1.html&quot; title=&quot;Disney验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Disney验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/38-1.html&quot; title=&quot;杰西潘尼验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;杰西潘尼验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/39-1.html&quot; title=&quot;孩之宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;孩之宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/40-1.html&quot; title=&quot;Primark验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Primark验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/41-1.html&quot; title=&quot;家得宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家得宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/42-1.html&quot; title=&quot;Sears验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Sears验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/43-1.html&quot; title=&quot;宝洁验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;宝洁验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/44-1.html&quot; title=&quot;Staple验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Staple验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/45-1.html&quot; title=&quot;玛莎验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;玛莎验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/46-1.html&quot; title=&quot;家乐福验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家乐福验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/47-1.html&quot; title=&quot;NIKE验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;NIKE验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;客户验厂相关新闻&lt;/p&gt;\n&lt;ul class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;a href=&quot;http://www.chinacocservice.com/article/2961.html&quot; target=&quot;_blank&quot; title=&quot;2017最低工资标准最新消息&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;2017最低工资标准最新消息&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3111.html&quot; target=&quot;_blank&quot; title=&quot;JCPenney改嫁后审核要求是否有变化？&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;JCPenney改嫁后审核要求是否有变化？&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3121.html&quot; target=&quot;_blank&quot; title=&quot;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3131.html&quot; target=&quot;_blank&quot; title=&quot;Tesco只认可这三家出的报告？2018年6月1日起正式实施&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;Tesco只认可这三家出的报告？2018年6月1日起正式实施&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3141.html&quot; target=&quot;_blank&quot; title=&quot;WalMart接受Sedex验厂报告的8个关键点&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;WalMart接受Sedex验厂报告的8个关键点&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3151.html&quot; target=&quot;_blank&quot; title=&quot;BSCI重大决策：撤机构，改名称！&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;BSCI重大决策：撤机构，改名称！&lt;/a&gt;\n&lt;/ul&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;/ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;TESCO验厂&lt;/p&gt;\n&lt;p&gt;您的位置: &lt;a href=&quot;http://www.chinacocservice.com/&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;首页&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/2-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;客户验厂&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;　　　　阅读：&lt;span style=&quot;&quot;&gt;80&lt;/span&gt;次&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;Tesco Technical Audit Introduction For Applicants&lt;/p&gt;\n&lt;p&gt;Tesco 技术审核指引&lt;/p&gt;\n&lt;p&gt;Declaration: Below information is for all applicants reference only and it is just a brief&lt;/p&gt;\n&lt;p&gt;of the audit’s introduction which is base on client’s requirements, it is designed for your&lt;/p&gt;\n&lt;p&gt;preparation with regard to the audits. It doesn’t mean you just need to provide below&lt;/p&gt;\n&lt;p&gt;information for the auditors, auditors may require more documents/information&lt;/p&gt;\n&lt;p&gt;according to actual situation durin&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190520\\/b43235c619f363af9527af087422518a.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('5', '0', '1', '1', '1', '1', '1', '1', '1', '6', '0', '0', '0', '1558363109', '1558363115', '1558363020', '0', 'EICC验厂', '', '客户验厂\r\nWal-mart验厂\r\nTESCO验厂\r\nBSCI验厂\r\nTarget验厂\r\nWCA验厂\r\nDisney验厂\r\n杰西潘尼验厂\r\n孩之宝验厂\r\nPrimark验厂\r\n家得宝验厂\r\nSears验厂\r\n宝洁验厂\r\nStaple验厂\r\n玛莎验厂\r\n家乐福验厂\r\nNIKE验厂\r\n客户验厂相关新闻\r\nBSCI重大决策：撤机构，改名称！\r\nWalMart接受Sedex验厂报告的8个关键点\r\nTesco只认可这三家出的报告？2018年6月1日起正式实施\r\n沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解\r\nJCPenney改嫁后审核要求是否有变化？\r\n2017最低工资标准最新消息\r\nTESCO验厂 您的位置: 首页 > 客户验厂 > TESCO验厂\r\nTesco验厂（乐购）审核纲要内容\r\n　　　　阅读：80次\r\nTesco验厂（乐购）审核纲要内容\r\nTesco Technical Audit Introduction For Applicants\r\nTesco 技术审核指引\r\nDeclaration: Below information is for all applicants', '站张推荐', 'portal/20190520/75a83a02e9ea612057010a32e9df4897.png', '\n&lt;p&gt;客户验厂&lt;/p&gt;\n&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/18-1.html&quot; title=&quot;Wal-mart验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Wal-mart验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; title=&quot;TESCO验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/34-1.html&quot; title=&quot;BSCI验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;BSCI验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/35-1.html&quot; title=&quot;Target验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Target验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/36-1.html&quot; title=&quot;WCA验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;WCA验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/37-1.html&quot; title=&quot;Disney验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Disney验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/38-1.html&quot; title=&quot;杰西潘尼验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;杰西潘尼验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/39-1.html&quot; title=&quot;孩之宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;孩之宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/40-1.html&quot; title=&quot;Primark验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Primark验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/41-1.html&quot; title=&quot;家得宝验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家得宝验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/42-1.html&quot; title=&quot;Sears验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Sears验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/43-1.html&quot; title=&quot;宝洁验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;宝洁验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/44-1.html&quot; title=&quot;Staple验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;Staple验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/45-1.html&quot; title=&quot;玛莎验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;玛莎验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/46-1.html&quot; title=&quot;家乐福验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;家乐福验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/type/47-1.html&quot; title=&quot;NIKE验厂&quot; style=&quot;outline: none; color: rgb(255, 255, 255); text-decoration-line: none; display: block;&quot;&gt;NIKE验厂&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;客户验厂相关新闻&lt;/p&gt;\n&lt;ul class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;\n&lt;a href=&quot;http://www.chinacocservice.com/article/2961.html&quot; target=&quot;_blank&quot; title=&quot;2017最低工资标准最新消息&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;2017最低工资标准最新消息&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3111.html&quot; target=&quot;_blank&quot; title=&quot;JCPenney改嫁后审核要求是否有变化？&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;JCPenney改嫁后审核要求是否有变化？&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3121.html&quot; target=&quot;_blank&quot; title=&quot;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3131.html&quot; target=&quot;_blank&quot; title=&quot;Tesco只认可这三家出的报告？2018年6月1日起正式实施&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;Tesco只认可这三家出的报告？2018年6月1日起正式实施&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3141.html&quot; target=&quot;_blank&quot; title=&quot;WalMart接受Sedex验厂报告的8个关键点&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;WalMart接受Sedex验厂报告的8个关键点&lt;/a&gt;&lt;a href=&quot;http://www.chinacocservice.com/article/3151.html&quot; target=&quot;_blank&quot; title=&quot;BSCI重大决策：撤机构，改名称！&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;BSCI重大决策：撤机构，改名称！&lt;/a&gt;\n&lt;/ul&gt;\n&lt;ul style=&quot;list-style-type: square;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;/ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;TESCO验厂&lt;/p&gt;\n&lt;p&gt;您的位置: &lt;a href=&quot;http://www.chinacocservice.com/&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;首页&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/2-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;客户验厂&lt;/a&gt; &amp;gt; &lt;a href=&quot;http://www.chinacocservice.com/article/type/19-1.html&quot; style=&quot;outline: none; color: rgb(76, 76, 76); text-decoration-line: none;&quot;&gt;TESCO验厂&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;　　　　阅读：&lt;span style=&quot;&quot;&gt;80&lt;/span&gt;次&lt;/p&gt;\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;Tesco Technical Audit Introduction For Applicants&lt;/p&gt;\n&lt;p&gt;Tesco 技术审核指引&lt;/p&gt;\n&lt;p&gt;Declaration: Below information is for all applicants reference only and it is just a brief&lt;/p&gt;\n&lt;p&gt;of the audit’s introduction which is base on client’s requirements, it is designed for your&lt;/p&gt;\n&lt;p&gt;preparation with regard to the audits. It doesn’t mean you just need to provide below&lt;/p&gt;\n&lt;p&gt;information for the auditors, auditors may require more documents/information&lt;/p&gt;\n&lt;p&gt;according to actual situation durin&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190520\\/75a83a02e9ea612057010a32e9df4897.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('6', '0', '1', '1', '1', '1', '1', '1', '1', '39', '0', '0', '0', '1558363634', '1558406076', '1558363500', '0', 'GOST认证', 'GOST认证,服务认证', '阿范德萨', '站长发布', 'portal/20190520/cfe1acb1a4e979b305cb006f08e9e77a.png', '\n&lt;p&gt;Tesco验厂（乐购）审核纲要内容&lt;/p&gt;\n&lt;p&gt;Tesco Technical Audit Introduction For Applicants&lt;/p&gt;\n&lt;p&gt;Tesco 技术审核指引&lt;/p&gt;\n&lt;p&gt;Declaration: Below information is for all applicants reference only and it is just a brief&lt;/p&gt;\n&lt;p&gt;of the audit’s introduction which is base on client’s requirements, it is designed for your&lt;/p&gt;\n&lt;p&gt;preparation with regard to the audits. It doesn’t mean you just need to provide below&lt;/p&gt;\n&lt;p&gt;information for the auditors, auditors may require more documents/information&lt;/p&gt;\n&lt;p&gt;according to actual situation during the audit.&lt;/p&gt;\n&lt;p&gt;声明：以下信息供所有申请者参考，这只是基于客户要求的审核指引概要基于客 ，它是为贵方关于审核&lt;/p&gt;\n&lt;p&gt;的准备而设计，并不意味着贵方仅需要为审核员提供以下信息，审核员在审核过程中可根据实际审核&lt;/p&gt;\n&lt;p&gt;情况要求审核更多的文件/信息。&lt;/p&gt;\n&lt;p&gt;1.Audit Type: 审核类型&lt;/p&gt;\n&lt;p&gt;a.QMS +COC (focus on QMS part) 质量管理系统+社会责任, 但是主要关注质量管理体系部&lt;/p&gt;\n&lt;p&gt;分。&lt;/p&gt;\n&lt;p&gt;b.Announced Audit 通知审核&lt;/p&gt;\n&lt;p&gt;2.Audit Scope: 审核范围&lt;/p&gt;\n&lt;p&gt;Facilities to be accessed 审核厂区范围 :&lt;/p&gt;\n&lt;p&gt;All facilities in the factory to be accessed for quality control, health and safety, environmental issues&lt;/p&gt;\n&lt;p&gt;verification. 工厂所有区域的评估，包含质量控制，健康安全，环境等。&lt;/p&gt;\n&lt;p&gt;Records to be accessed 审核记录要求:&lt;/p&gt;\n&lt;p&gt;The factory should provide at lease one year records, including working hour/wage records.&lt;/p&gt;\n&lt;p&gt;工厂需要提供过于一年的包括工资工时在内的相关记录&lt;/p&gt;\n&lt;p&gt;3. Audit Contents: 审核内容&lt;/p&gt;\n&lt;p&gt;Site Audit 现场审核：&lt;/p&gt;\n&lt;p&gt;①Raw materials control and inspection 材料控制和检验&lt;/p&gt;\n&lt;p&gt;②Packaging control and inspection 包材控制和检验&lt;/p&gt;\n&lt;p&gt;③Manufacturing process control 制造过程控制&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190520\\/cfe1acb1a4e979b305cb006f08e9e77a.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('7', '0', '1', '1', '1', '1', '1', '1', '0', '22', '0', '0', '0', '1558399029', '1558509905', '1558398960', '0', 'adidas验厂', '沃尔玛验厂', '客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页', '站长发布', 'portal/20190521/3146b934fd6a62645fb726329863754d.png', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: arial; font-size: 14px;&quot;&gt;客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页&lt;/span&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190521\\/3146b934fd6a62645fb726329863754d.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('8', '0', '1', '1', '1', '1', '1', '1', '1', '4', '0', '0', '0', '1558399087', '1558399098', '1558399020', '0', 'MARKS&SPENCER', '', '客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页', '站长推荐', 'portal/20190521/d3317983fc27bf78859056fa50af159b.png', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: arial; font-size: 14px;&quot;&gt;客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页&lt;/span&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190521\\/d3317983fc27bf78859056fa50af159b.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('9', '0', '1', '1', '1', '1', '1', '1', '1', '3', '0', '0', '0', '1558399187', '1558399193', '1558399140', '0', 'Disney验厂', '', '客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页\r\n', '站长推荐', 'portal/20190521/34b0bb95456cc27fe7132ea9c017fc0a.png', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: arial; font-size: 14px;&quot;&gt;客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页&lt;/span&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190521\\/34b0bb95456cc27fe7132ea9c017fc0a.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('10', '0', '1', '1', '1', '1', '1', '1', '1', '23', '0', '0', '0', '1558399233', '1558399240', '1558399140', '0', 'Wal-mart验厂', '', '客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页', '站长推荐', 'portal/20190521/6bee10953dc341a1930b18d3c2b4c504.png', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: arial; font-size: 14px;&quot;&gt;客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页&lt;/span&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190521\\/6bee10953dc341a1930b18d3c2b4c504.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('11', '0', '1', '1', '1', '1', '1', '1', '1', '4', '0', '0', '0', '1558399294', '1558399301', '1558399200', '0', 'MATTEL验厂', '', '客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页', '站长推荐', 'portal/20190521/9274fc11b08cbb416ec35f08a339d5f8.png', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: arial; font-size: 14px;&quot;&gt;客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页&lt;/span&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190521\\/9274fc11b08cbb416ec35f08a339d5f8.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('12', '0', '1', '1', '1', '1', '1', '1', '1', '13', '0', '0', '0', '1558400806', '1558400813', '1558400760', '0', 'ICS验厂', '', '客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页 >', '站长发布', 'portal/20190521/156c8bfd3c05ea497554cbf39eb577a3.png', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: arial; font-size: 14px;&quot;&gt;客户验厂 Wal-mart验厂 TESCO验厂 BSCI验厂 Target验厂 WCA验厂 Disney验厂 杰西潘尼验厂 孩之宝验厂 Primark验厂 家得宝验厂 Sears验厂 宝洁验厂 Staple验厂 玛莎验厂 家乐福验厂 NIKE验厂 客户验厂相关新闻 BSCI重大决策：撤机构，改名称！ WalMart接受Sedex验厂报告的8个关键点 Tesco只认可这三家出的报告？2018年6月1日起正式实施 沃尔玛新认可的质量标准BRC、GMP..应该验哪个及时了解 JCPenney改嫁后审核要求是否有变化？ 2017最低工资标准最新消息 TESCO验厂 您的位置: 首页 &amp;gt;&lt;/span&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190521\\/156c8bfd3c05ea497554cbf39eb577a3.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('13', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1558404770', '1558404770', '1558404691', '1558410320', '1', 'sa8000', '1', '1', '', '&lt;p&gt;1&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"article\"}');
INSERT INTO `cmf_portal_post` VALUES ('14', '0', '1', '1', '1', '1', '1', '0', '0', '5', '0', '0', '0', '1558407871', '1558407871', '1558410247', '0', '什么是SEDEX验厂认证？', 'SEDEX认证,SEDEX验厂', 'SEDEX认证是供应商商业道德信息交流认证', '原创', '', '\n&lt;p&gt;　　SEDEX验厂认证是指供应商商业道德信息交流认证，SEDEX是一套数据库，用于帮助各公司储存其业务范围内的劳动准则信息，而且客户也可以共享这些信息。现如今，SEDEX已获得许多生产商、大型的零售商的青睐。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/portal/20190521/6691b912569cb5d2f31e483a7c3484f6.jpg&quot; title=&quot;sedex.jpg&quot; alt=&quot;sedex.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　企业通过SEDEX认证则表明该企业是遵守商业道德规范的，这样客户就对企业更加信任、更加放心的与之合作。下订单是也会找通过SEDEX认证的企业。&lt;/p&gt;\n&lt;p&gt;　　其次员工能够在良好的环境下进行工作，员工的工资待遇很可观，这样的工厂是很值得被客户信赖的。员工能够很好的工作，为企业创造很大的利益，产出高品质的产品。&lt;/p&gt;\n&lt;p&gt;　　值得一提的是SEDEX认证适合所有行业。&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('15', '0', '1', '1', '1', '1', '1', '0', '0', '37', '0', '0', '0', '1558408346', '1558408346', '1558410205', '0', '什么是沃尔玛（WalMart)验厂？', '沃尔玛验厂,WalMart验厂', '沃尔玛(WalMart)验厂是指沃尔玛按照一套严格的供应商标准系统对工厂进行审核或评估。', '原创', '', '\n&lt;p&gt;　　沃尔玛(WalMart)验厂是指沃尔玛按照一套严格的供应商标准系统对工厂进行审核或评估。目前沃尔玛针对所有供应商的标准审核主要包括社会责任验厂、品质验厂、反恐验厂三个方面，通过沃尔玛验厂是获取沃尔玛品牌商订单的必要前提条件，其中社会责任验厂审核是沃尔玛验厂最重要部分。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/portal/20190521/e1ec85eba21488feacf35a7eda672307.png&quot; title=&quot;WalMart.png&quot; alt=&quot;WalMart.png&quot; width=&quot;209&quot; height=&quot;109&quot; style=&quot;width: 209px; height: 109px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　沃尔玛验厂审核流程包括5个部分：&lt;/p&gt;\n&lt;p&gt;　　1、初次会议：介绍审核的目的、时间安排及操作方法，列举出需要什么的文件清单，介绍现场审核和员工访谈的具体细节，回答工厂代表的提问。&lt;/p&gt;\n&lt;p&gt;　　2、现场审核：审核员对现场的消防设施、机器设备的维护保养、工作区域的通风照明、环保工作等进行一系列的检查，确保以上项目都符合沃尔玛的审核标准。&lt;/p&gt;\n&lt;p&gt;　　3、文件资料审核：审核员按照沃尔玛的要求检查工厂的文件资料，主要包括员工的工资工时记录、员工信息、以及其他的生产记录等；所有文件资料要求保存最近12个月的，要求最近3个月必须满足要求。&lt;/p&gt;\n&lt;p&gt;　　4、员工访谈：员工访谈人员名单是从现场及人事资料中抽取的，主要偏向一些年龄偏小、面相老实的员工，员工访谈是独立的进行，厂方代表不得介入。   &lt;/p&gt;\n&lt;p&gt;　　5、审核总结会议：审核人出具临时审核报告，总结工厂存在的问题点及需要改进的地方，如有必要可能需要跟进审核，具体视问题的严重性而定。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190521\\/e1ec85eba21488feacf35a7eda672307.png\",\"name\":\"WalMart.png\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('16', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1558504547', '1558505744', '1558504500', '0', '上海超网供应链管理有限公司-TRANWIN上海超网企业管理咨询有限公司旗下网站', '', '', '', '', '\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; white-space: normal;&quot;&gt;上海超网供应链管理有限公司-TRANWIN上海超网企业管理咨询有限公司旗下网站&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;总部&lt;/strong&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color:#ff0000&quot;&gt;&lt;strong&gt;联系电话：021-51029391 &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;全国热线：021-51029391&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/strong&gt;&lt;/span&gt;传 真：021-60712875 &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;地址：上海市嘉定区南翔镇银翔路655号&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong&gt;泉州分公司联系方式: &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/strong&gt;电话：0595-28069596&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;传真：0595-28069593&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;地址：泉州市丰泽区温陵南路蟠龙大厦17D&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;昆山办事处: &lt;/strong&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;手机：18601606216&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;地址：昆山市花桥国际商务区兆丰路18号亚太广场1号楼9楼&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;宁波分公司: &lt;/strong&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;手机：13615883698&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;电话：0574-87623901&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;温州办事处: &lt;/strong&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;手机：18605772928&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;广东办事处: &lt;/strong&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;手机：18601606505&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;山东办事处&lt;/strong&gt;：&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;手机：18601606221 &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;电话：0531-55800588&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20190522\\/766a92cf96d9616121d086bd417c49ac.png\",\"template\":\"page\",\"photos\":[{\"url\":\"portal\\/20190522\\/346073875000cbf2f1b313bfbba55833.png\",\"name\":\"bangong.png\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('17', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1558506225', '1558506405', '1558506120', '0', '成功案例', '', '超网经过十几年的努力，已帮助超过上万家企业通过各种审核，成为全国同类行业中的领袖企业。客户遍及中国大陆地区，涉及纺织、服装、服饰、家纺、玩具、电子、电器、礼品、纸品、食品、木制品、手袋、鞋业、皮具、模具、不锈钢、五金、糖果、线路板、印刷、陶瓷及塑胶制品等多个行业。', '', '', '\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;img src=&quot;/public/upload/default/20190522/100863369ce5b7b6e6a82c165d9e71c1.jpg&quot; title=&quot;bnpw-banner-960.jpg&quot; alt=&quot;bnpw-banner-960.jpg&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;贵工厂是否正遭遇“外商验厂”的尴尬呢？&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;越来越多欧美客户要求供应商通过验厂。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;验厂与体系认证有极多细节，导致很多公司自己摸索了5年以上还是漏洞百出，屡屡失败。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;验厂失败的严重后果：订单缩水，冻结现有大货订单，列入黑名单并终止合作关系，企业遭受重大打击，甚至破厂。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;是否还在为突如其来的验厂感到恐慌吗？是否还在为众多的审核标准而感到极度困惑吗？是否还在手忙脚乱地到处寻找凌乱的资料吗？&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;通过外商COC验厂的好处&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;建立符合国际要求的管理体系，可得到国际认可，增加与知名品牌正面竞争的能力&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;促使消费者对产品建立正面情感；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;稳固与采购商的合作，并拓宽新市场，为长期的发展奠定坚实的基础；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;提升管理系统，改善与员工的关系，从而提高生产力从而提高利润；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;最小化潜在的商业风险比如工伤乃至工亡，法律诉讼或者是失去订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;开发新市场和客户：有社会责任的公司将从竞争对手中脱颖而出；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;通过社会责任体系和反恐体系认证的好处&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;全球性的行业认证项目，一个认证适用不同的客人，减少不同的买家在不同时间来进行验厂的次数；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;建立符合国际要求的管理体系，可得到国际认可，增加与知名品牌正面竞争的能力&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;促使消费者对产品建立正面情感；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;稳固与采购商的合作，并拓宽新市场，为长期的发展奠定坚实的基础；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;提升管理系统，改善与员工的关系，从而提高生产力从而提高利润；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;最小化潜在的商业风险比如工伤乃至工亡，法律诉讼或者是失去订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;开发新市场和客户：有社会责任的公司将从竞争对手中脱颖而出； &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;一、成功客户类型&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂获得高质量的新订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂获得更大的客户、更大的订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂能顺利出货；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂获得竞争力，强化品牌形象；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂提升管理水平、提高产品品质、减少商业风险、改善与员工关系，获得长期竞争力。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;实例1：&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;订单不稳定，价格低，档次低。工厂加班多，工资低，福利差，效率低，工人流失大。经过多个客户验厂，结果都不合格，多次被警告，订单不见增长，部分订单开始流失，低水平维持。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;工厂老板寻求出路，与我司沟通后后认识到“要求高的客户才是好客户，通过“验厂”也是竞争优势。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;经我们顾问师指导，改善工作条件/生活条件，改善管理，改善劳资关系，验厂都合格，成为样板工厂。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;好工厂吸引更多定单和更多客户，工厂可以挑选“肥/大”定单，产品结构调整，生产规模扩大。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;工厂发展快，工人赚钱多，工资福利高，工人稳定，技术水平高，工厂产品档次提高，工厂走上良性循环。 &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;实例2：&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;某工厂收到客户验厂通知，客户郑重地指出“验厂不过关，在做订单一律不能出货，取消后续的合作”，工厂老板惶惶不可终日，最后请教我司顾问，寻求解决对策。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;顾问师经过现场审核评估，分析存在问题和优势，分清轻重缓急，制定合理有效的改善计划，合理设计工资报酬体系，逐步实施。经过共同努力，工厂建立了科学的社会责任管理体系，建立了和谐合作的劳资关系，改善了安全健康管理，提高了企业文化。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;管理良好的企业当然会一次性通过客户验厂，好工厂自然会得到客户的肯定和支持，客户支持就意味着更多订单和更好的订单。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;span style=&quot;color:#e73f3e&quot;&gt;&lt;strong&gt;所以，英明的企业老板一定会掌握趋势，未雨绸缪，接受专业系统的培训，使工厂全面达到验厂的要求，突破贸易“壁垒”，获取更多和国际大公司合作机会。&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;贵工厂是否正遭遇“外商验厂”的尴尬呢？&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;越来越多欧美客户要求供应商通过验厂。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;验厂与体系认证有极多细节，导致很多公司自己摸索了5年以上还是漏洞百出，屡屡失败。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;验厂失败的严重后果：订单缩水，冻结现有大货订单，列入黑名单并终止合作关系，企业遭受重大打击，甚至破厂。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;是否还在为突如其来的验厂感到恐慌吗？是否还在为众多的审核标准而感到极度困惑吗？是否还在手忙脚乱地到处寻找凌乱的资料吗？&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;通过外商COC验厂的好处&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;建立符合国际要求的管理体系，可得到国际认可，增加与知名品牌正面竞争的能力&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;促使消费者对产品建立正面情感；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;稳固与采购商的合作，并拓宽新市场，为长期的发展奠定坚实的基础；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;提升管理系统，改善与员工的关系，从而提高生产力从而提高利润；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;最小化潜在的商业风险比如工伤乃至工亡，法律诉讼或者是失去订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;开发新市场和客户：有社会责任的公司将从竞争对手中脱颖而出；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;通过社会责任体系和反恐体系认证的好处&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;全球性的行业认证项目，一个认证适用不同的客人，减少不同的买家在不同时间来进行验厂的次数；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;建立符合国际要求的管理体系，可得到国际认可，增加与知名品牌正面竞争的能力&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;促使消费者对产品建立正面情感；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;稳固与采购商的合作，并拓宽新市场，为长期的发展奠定坚实的基础；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;提升管理系统，改善与员工的关系，从而提高生产力从而提高利润；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;最小化潜在的商业风险比如工伤乃至工亡，法律诉讼或者是失去订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;开发新市场和客户：有社会责任的公司将从竞争对手中脱颖而出； &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;strong&gt;一、成功客户类型&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂获得高质量的新订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂获得更大的客户、更大的订单；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂能顺利出货；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂获得竞争力，强化品牌形象；&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;通过验厂提升管理水平、提高产品品质、减少商业风险、改善与员工关系，获得长期竞争力。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;实例1：&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;订单不稳定，价格低，档次低。工厂加班多，工资低，福利差，效率低，工人流失大。经过多个客户验厂，结果都不合格，多次被警告，订单不见增长，部分订单开始流失，低水平维持。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;工厂老板寻求出路，与我司沟通后后认识到“要求高的客户才是好客户，通过“验厂”也是竞争优势。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;经我们顾问师指导，改善工作条件/生活条件，改善管理，改善劳资关系，验厂都合格，成为样板工厂。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;好工厂吸引更多定单和更多客户，工厂可以挑选“肥/大”定单，产品结构调整，生产规模扩大。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;工厂发展快，工人赚钱多，工资福利高，工人稳定，技术水平高，工厂产品档次提高，工厂走上良性循环。 &lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;实例2：&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;某工厂收到客户验厂通知，客户郑重地指出“验厂不过关，在做订单一律不能出货，取消后续的合作”，工厂老板惶惶不可终日，最后请教我司顾问，寻求解决对策。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;顾问师经过现场审核评估，分析存在问题和优势，分清轻重缓急，制定合理有效的改善计划，合理设计工资报酬体系，逐步实施。经过共同努力，工厂建立了科学的社会责任管理体系，建立了和谐合作的劳资关系，改善了安全健康管理，提高了企业文化。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;管理良好的企业当然会一次性通过客户验厂，好工厂自然会得到客户的肯定和支持，客户支持就意味着更多订单和更好的订单。&lt;/p&gt;\n&lt;p style=&quot;margin: 10px; padding: 0px; color: rgb(7, 81, 154); font-family: Arial, Simsun, Helvetica, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;span style=&quot;color:#e73f3e&quot;&gt;&lt;strong&gt;所以，英明的企业老板一定会掌握趋势，未雨绸缪，接受专业系统的培训，使工厂全面达到验厂的要求，突破贸易“壁垒”，获取更多和国际大公司合作机会。&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"page\"}');
INSERT INTO `cmf_portal_post` VALUES ('18', '0', '1', '1', '1', '1', '1', '0', '0', '3', '0', '0', '0', '1558507773', '1558507780', '1558507680', '0', '二级分类测试文章请添加数据', '', '', '', 'portal/20190520/cfe1acb1a4e979b305cb006f08e9e77a.png', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190520\\/cfe1acb1a4e979b305cb006f08e9e77a.png\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('19', '0', '1', '1', '1', '1', '1', '0', '0', '4', '0', '0', '0', '1558508964', '1558508998', '1558509009', '0', 'SA8000认证是什么？', 'SA8000认证', '', '原创', 'portal/20190522/7df164f7adaa24dc18357337e06f5640.jpg', '\n&lt;p&gt;　　SA8000标准并没有明确要求公司编写社会责任管理手册，公司可以根据自身特点和需要编写管理手册。对于社 会责任管理基础比较薄弱的公司，单独编写社会责任管理手册有利于突出重点，强化社会责任管理，等到公司社会责任管理走上正轨后，逐步同其它管理体系整合在一起，实现多种管理体系的一体化。&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;　　由于社会责任管理体系文件的多层次性，在编写体系文件时应注意以下几个问题：&lt;/p&gt;\n&lt;p&gt;　　系统性&lt;/p&gt;\n&lt;p&gt;　　体系文件反映了公司社会责任管理的特征，对与社会责任相关活动的技术、管理和人员等因素的控制作出了规定。体系文件的各层次间，文件与文件之间 应做到层次清楚、接口明确、结构合理、协调有序。在编写社会责任管理体系文件时，各层次文件应涉及社会责任管理体系一个逻辑上独立的部分，应从公司社会责 任管理体系的整体出发，统一规划、协调进行。&lt;/p&gt;\n&lt;p&gt;　　符合性&lt;/p&gt;\n&lt;p&gt;　　社会责任管理体系文件内容应符合标准的要求，充分体现出&quot;标准要求的要写到、写到的要做到、做到的要有效&quot;。草拟的文件应经过充分的讨论和评 审，以具备可操作性，并反映公司社会责任管理活动的客观需求。管理的规范。参照ISO10013《质量手册编写指南》附录A的描述，社会责任管理体系的文 件结构也可分为三个层次，即：&lt;/p&gt;\n&lt;p&gt;　　（1） 管理手册（A层次）&lt;/p&gt;\n&lt;p&gt;　　（2） 程序文件（B层次）&lt;/p&gt;\n&lt;p&gt;　　（3） 作业指导书和记录（C层次）&lt;/p&gt;\n&lt;p&gt;　　它们的关系如下所示。各层次的社会责任体系文件应与第一层次的社会责任手册内容对应一致。各公司可以根据自身的规模大小和实际情况划分体系文件的层次，不一定都需要三个层次。&lt;/p&gt;\n&lt;p&gt;　　管理手册（A层次）：根据SA8000标准和规定的SA8000管理方针、目标来描述SA8000体系。&lt;/p&gt;\n&lt;p&gt;　　程序文件（B层次）：描述实施体系要素所涉及的各个职能部门的活动。&lt;/p&gt;\n&lt;p&gt;　　作业文件（C层次）：详细的工作文件（表格、报告、作业文件，作业指导书、记录等）。&lt;/p&gt;\n&lt;p&gt;　　权威性&lt;/p&gt;\n&lt;p&gt;　　体系文件是公司实施社会责任管理和保证社会责任因素得到控制的行为准则，体系文件应遵循SA8000标准要求、国家有关法律法规及其他的要求。 社会责任管理体系文件经公司最高管理者批准发布后，就成为公司必须执行的内部法规性文件，是指导公司一切活动的行为规范和实施审核的依据之一。&lt;/p&gt;\n&lt;p&gt;　　见证性&lt;/p&gt;\n&lt;p&gt;　　社会责任管理体系文件可以作为客观证据以向公司管理者、向利益相关者、向第三方认证机构证实公司社会责任管理体系的运行情况。例如，对内部审核或外部审核来说，社会责任管理体系程序文件可作为下列方面的客观证据：&lt;/p&gt;\n&lt;p&gt;　　（1） 社会责任因素已被识别、重要性已经评价。&lt;/p&gt;\n&lt;p&gt;　　（2） 有关活动的程序已被确定并得到批准。&lt;/p&gt;\n&lt;p&gt;　　（3） 有关活动处于全面监督之下。&lt;/p&gt;\n&lt;p&gt;　　（4） 程序文件更改处于受控状态。&lt;/p&gt;\n&lt;p&gt;　　适用性&lt;/p&gt;\n&lt;p&gt;　　社会责任管理体系文件应充分反映出公司活动的特点、公司规模、社会责任因素的类别、技术水平以及人员素质等因素。社会责任问题同时也是一个发展 的问题，随着科学技术的进步、法律法规要求的强化，社会责任管理体系也反映出动态特性。为了达到持续改进的目的，确保体系的持续适宜性、充分性和有效性， 必须充分考虑到社会责任管理体系需要不断跟踪法律法规要求及企业发展带来的新变化。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190522\\/7df164f7adaa24dc18357337e06f5640.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190522\\/7df164f7adaa24dc18357337e06f5640.jpg\",\"name\":\"sa8000.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('20', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1558509184', '1558509184', '1558589126', '0', '有机含量标准——OCS认证', '有机含量标准,OCS认证', '', '', 'portal/20190522/4c9e05422d4516e5488055668b6f3b5b.jpg', '\n&lt;p&gt;　　OCS认证 标准是一个私有标准，标准制定组织是纺织交易协会（Textile Exchange, 简称‘TE’）。组织是纺织交易协会是一个会员制的国际性非盈利组织。该组织的使命是鼓励人们加快参与可持续纺织品价值链的实践活动，并为之创造条件。&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;　　OCS认证任何含5-100%有机原料的非食品类产品。如纺织品（纤维产品、纱线、面料、服装等）、化妆品。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/portal/20190522/4c9e05422d4516e5488055668b6f3b5b.jpg&quot; title=&quot;ocs.jpg&quot; alt=&quot;ocs.jpg&quot; width=&quot;331&quot; height=&quot;185&quot; style=&quot;width: 331px; height: 185px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　有机含量标准OCS认证是一个对有机原料进行跟踪查证，验证终产品中存在的有机原料及数量的标准。该标准提供了一套完整的供应链条监管体系，对有机原料从来源到终产品整个过程进行监管。通过被授权的第三方认证机构对产品中的有机原料含量进行公开、透明、全面一致的独立评估和验证。OCS可以作为企业之间商业贸易工具，确保企业采购的是含有如声称一样含量的有机原料的产品。OCS标准也可以作为面对消费者的声明。&lt;/p&gt;\n&lt;p&gt;　　OCS标准审核企业内部及企业之前的产品流程，从原料验证、收获后的加工、制造、包装和标识、仓储、操作、运输，直至最后的商业贸易环节的销售方。所以要求所有企业、从田间收获后的首道加工开始，直至最后的商业贸易（企业对企业的贸易，B2B）环节中的销售方都必须参加认证。&lt;/p&gt;\n&lt;p&gt;　　OCS认证标准是目前除GOTS认证之外的另一个被全球广泛公认和接受的有机标准。从标准颁布到现在，已被全球广泛采用来进行有机纺织品的认证。通过OCS认证的有机含量产品可以进入各大主流市场。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190522\\/4c9e05422d4516e5488055668b6f3b5b.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('21', '0', '1', '1', '1', '1', '1', '0', '0', '28', '0', '0', '0', '1558509764', '1558509764', '1558509772', '0', '什么是GOTS验厂？怎么样才能申请GOTS认证？', 'GOTS认证,GOTS验厂', '', '原创', 'portal/20190522/2b9e8eee4217cd3a3c65d17ae6ee7359.jpg', '\n&lt;p&gt;　　全球有机纺织品标准 (GOTS认证标准) 是国际公认的有机纺织品标准。自 2006 年推出以来，GOTS 已经证明了其实际可行性，并得到了有机纤维消费增长以及该行业和零售行业对统一加工标准的需求的支持。&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/portal/20190522/2b9e8eee4217cd3a3c65d17ae6ee7359.jpg&quot; title=&quot;gots.jpg&quot; alt=&quot;gots.jpg&quot; width=&quot;245&quot; height=&quot;188&quot; style=&quot;width: 245px; height: 188px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　目前，全球有机纺织品标准(GOTS)国际工作组宣布：合格有机天然纤维加工制作纺织品全球公认标准4.0版正式颁布。新版本保留了GOTS的核心条款，例如：合格有机纤维含量不低于70%，以及禁止使用GMO（转基因）、纳米技术和致癌物质。&lt;/p&gt;\n&lt;p&gt;　　4.0新版对常规添加的纤维物质的标准进行了修改。修改包括再生合成纤维成分可达30%，但前提条件是这些纤维是环保的，且经过认证。GOTS目前认为：只关注天然纤维中附加纤维含量已不再合理。其他修改的地方包括禁止使用纯聚酯和安哥拉兔毛。对具体的产品类别，例如纺织品的个人护理产品或床垫，均采用了新标准。&lt;/p&gt;\n&lt;p&gt;　　全球有机纺织品标准 GOTS验厂认证的步骤：&lt;/p&gt;\n&lt;p&gt;　　一、申请：填写并提交机构提供的申请单，包括认证地点等信息。&lt;/p&gt;\n&lt;p&gt;　　二、协议：确认申请单后，认证机构将与客户签署协议并提供报价单。&lt;/p&gt;\n&lt;p&gt;　　三、审核：签订协议，支付认证费用后，认证开始对GOTS文件进行评估 （例如：每个地点的物料流程图，包括风险点、GOTS系统计划（机构发送检查表）、程序手册）。与此同时，审核员开始准备现场审核。&lt;/p&gt;\n&lt;p&gt;　　四、复核及结论：现场审核完成，我们需要确保所有纠正措施得以解决处理。之后，机构颁发证书。&lt;/p&gt;\n&lt;p&gt;　　五、时间：一般基本认证需5-10工作周，可根据贵司的准备情况提前完成。&lt;/p&gt;\n&lt;p&gt;　　在GOTS认证标准之外，上海超网将提供业界专业咨询辅导。这将大大节省您的时间与成本。&lt;/p&gt;\n&lt;p&gt;　　据悉，2012年全世界62个国家中，超过3000个品牌的设备得到了GOTS的认证， 2013年认证的品牌数量达到了3085个。它的认证数量排在前5名的国家是印度、土耳其、德国、中国、韩国。现有17个认证组织，所有认证产品都可在GOTS查询。&lt;/p&gt;\n&lt;p&gt;　　GOTS认证为供应链追溯认证。如贸易公司为单元；需要贸易商下游供应商全部认证。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190522\\/2b9e8eee4217cd3a3c65d17ae6ee7359.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('22', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1558509924', '1558509924', '1558510143', '0', '对我国的FSC森林认证发展有哪些合理的建议？', 'FSC森林认证,FSC认证,森林认证', '', '原创', 'portal/20190522/234f2d6e73bb28861e8af6a4f8f279ca.jpg', '\n&lt;p&gt;　　完善森林认证顶层制度设计。我国的森林可持续经营工作涉及造林、政策法规、森林资源管理、森林清查等多个部门。森林认证标准涵盖了针对各个相关部门的森林可持续经营要求，因此可以将各个部门的要求统筹进行审核和监督，实现不同管理机制的整合和协同。建议相关主管部门在制定森林认证发展战略时，充分考虑森林认证的协同整合作用，将森林认证与林业可持续发展政策、森林资源可持续管理制度、林业法律法规及国际公约履约等有机整合，完善森林认证的顶层制度设计。&lt;/p&gt;\n&lt;p&gt;　　建立森林认证市场激励机制。欧美等环境敏感市场的认可和消费者的认同，推动了近年来全球森林认证的快速发展。当前，我国森林认证体系亟待开展经济学和森林认证作用机制的系统研究，深入了解在我国社会经济背景下森林认证发挥作用的制约条件和有利因素，为构建符合国情的认证市场激励机制奠定基础。&lt;/p&gt;\n&lt;p&gt;　　深化与国际或其他国家森林认证体系的交流与合作。目前，不同森林认证体系之间的互认和合作是国际潮流，我国森林认证体系已于2014年与PEFC体系实现互认。一方面，我们应充分利用这一国际平台，抓住互认后的发展机遇，提升中国森林认证体系的国际认可度；另一方面，应主动参与国际森林认证规则的制定，争取更多的话语权，还应不断开拓与其他体系，例如国际标准化组织（ISO），在林产品产销监管链国际标准制定工作中的合作，进一步扩大我国森林认证体系在国际上的影响力，树立我国在促进全球森林可持续经营中的负责任大国形象。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190522\\/234f2d6e73bb28861e8af6a4f8f279ca.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('23', '0', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '1558510130', '1558510130', '1558510143', '0', '商界社会责任倡议——BSCI认证', 'BSCI认证', '', '原创', 'portal/20190522/d6557cb68940c59d18d2fbd0974eadab.jpg', '\n&lt;p&gt;　　商界社会责任倡议( BSCI)是适用于众多企业在世界各地工厂和农场改善工作条件的一一个倡议。由欧洲对外贸易协会( FTA)在2013年发起，为企业提供一套统的行为守则和全面的体系,以实践供应链中的企业社会责任要求。作为一个将秘书处设在比利时布鲁塞尔的国际体系, BSCI由来自广泛业务领域和行业的零售和进口公司设立。BSCI 参与者及其商业伙伴承诺致力于执行1/2014版BSCI行为守则。&lt;/p&gt;\n&lt;p&gt;　　BSCI由来自各行业、各领域的零售品牌和国际公司组成。BSCI 参与者及其商业伙伴承诺致力于执行1/2014版BSCI行为守则。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/portal/20190522/d6557cb68940c59d18d2fbd0974eadab.jpg&quot; title=&quot;bsci.jpg&quot; alt=&quot;bsci.jpg&quot; width=&quot;300&quot; height=&quot;156&quot; style=&quot;width: 300px; height: 156px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　BSCI行为守则明确了供应链中的负责任商业实践的价值和原则。公司签署BSCI守则,即代表该公司对企业责任的公开承诺。此外, BSCI参与者将受BSCI的监督和制约。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190522\\/d6557cb68940c59d18d2fbd0974eadab.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('24', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1558510355', '1558510355', '1558510517', '0', '什么是WCA验厂？结果有哪些', 'WCA验厂', '', '原创', 'portal/20190522/82f9903adf7f54f60bf20df322c08be2.jpg', '\n&lt;p&gt;　　WCA，即WORKPLACE CONDITIONS ASSESSMENT的简称，它是由Intertek开发的、具有成本效益的评估方案，能够帮助企业根据客户认可的最佳规范和行业标准，有效地改善工作场所条件。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/portal/20190522/82f9903adf7f54f60bf20df322c08be2.jpg&quot; title=&quot;wca.jpg&quot; alt=&quot;wca.jpg&quot; width=&quot;300&quot; height=&quot;176&quot; style=&quot;width: 300px; height: 176px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;　　WCA验厂审核费用和工厂的人数、规模及工厂所在地相关的，人数、规模不同，审核申请费也不同，总的费用则需要根基工厂实际情况。&lt;/p&gt;\n&lt;p&gt;　　WCA验厂结果分为：绿色、黄色、橙色、红色四个等级，85分以上是绿灯，一般一次审核很难达到要求；71-84分为黄灯；51-70分为橙灯；0-50分为红灯。  验厂过程中对社会责任体系和环境体系的文件记录要求很高，很多时候都会被忽略。&lt;/p&gt;\n&lt;p&gt;　　WCA验厂通过后证书是有要求的，工厂审核结束后，审核出来的结果达到85分以上就会用证书，低于85分是不会颁发证书的，但是在目前为止一般一次审核很难达到85分以上的要求，所以基本上可以忽略；在国内企业拿黄色算是最好的结果。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190522\\/82f9903adf7f54f60bf20df322c08be2.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('25', '0', '1', '1', '1', '1', '1', '0', '0', '5', '0', '0', '0', '1558510509', '1558515519', '1558510500', '0', '为什么要进行Disney验厂？', 'Disney验厂,测试标签', '', '原创', 'portal/20190522/73702c39a0fab00de58225b2c99e9e4b.jpg', '\n&lt;p&gt;　　首先，我们来讨论一下最坏的结果----不过会怎样?&lt;/p&gt;\n&lt;p&gt;　　失去接单的机会、取消现有订单、列入人权黑名单等，给企业带来巨大的经济和信誉损失!这些都还只是您损失的小部分，验厂不过对于整个企业以后的发展都是一大阻碍。&lt;/p&gt;\n&lt;p&gt;　　下面再来看看验厂通过了，将带给我们什么样的好处：&lt;/p&gt;\n&lt;p&gt;　　(1)建立符合国际要求的管理体系，可得到国际认可，增加与知名品牌正面竞争的能力;&lt;/p&gt;\n&lt;p&gt;　　(2)促使消费者对产品建立正面情感; &lt;/p&gt;\n&lt;p&gt;　　(3)稳固与采购商的合作，并拓宽新市场，为长期的发展奠定坚实的基础;&lt;/p&gt;\n&lt;p&gt;　　(4)提升管理系统，改善与员工的关系，从而提高生产力从而提高利润;&lt;/p&gt;\n&lt;p&gt;　　(5)最小化潜在的商业风险&lt;/p&gt;\n&lt;p&gt;　　所以想要获得更大的竞争能力，就要选择验厂!想要获得验厂的好成绩，就要选择一个专业的伙顾问团队!&lt;/p&gt;\n&lt;p&gt;　　超网管理咨询有限公司，你达标的领航员!&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/portal/20190522/73702c39a0fab00de58225b2c99e9e4b.jpg&quot; title=&quot;dis.jpg&quot; alt=&quot;dis.jpg&quot; width=&quot;300&quot; height=&quot;128&quot; style=&quot;width: 300px; height: 128px;&quot;&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190522\\/73702c39a0fab00de58225b2c99e9e4b.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('26', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1558574081', '1558576683', '1558573980', '0', '电话列表页面  ***注意勿删***', '****请上传一张宽度为300像素的图片，勿添加文字****', '****请上传一张宽度为300像素的图片，勿添加文字****', '', '', '&lt;p&gt;&lt;img src=&quot;/public/upload/default/20190523/a7253f9c82b9dd6211a40feb83477eed.png&quot; title=&quot;QQ截图20190523095403.png&quot; alt=&quot;QQ截图20190523095403.png&quot;&gt;&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"page\"}');
INSERT INTO `cmf_portal_post` VALUES ('27', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1558577548', '1558577548', '1558577520', '0', '验厂成功客户页  ***请勿删除***', '****请上传一张宽度为300像素的图片，勿添加文字****', '****请上传一张宽度为300像素的图片，勿添加文字****', '', '', '&lt;p&gt;&lt;img src=&quot;/public/upload/default/20190523/f0150a44bcddc3f7887af1a34678464f.png&quot; title=&quot;QQ截图20190523101048.png&quot; alt=&quot;QQ截图20190523101048.png&quot;&gt;&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"page\"}');
INSERT INTO `cmf_portal_post` VALUES ('28', '0', '1', '1', '1', '1', '1', '0', '0', '2', '0', '0', '0', '1558589105', '1558589105', '1558589126', '0', '深圳XX贸易公司成功通过SEDEX验厂', 'SEDEX验厂', '', '原创', 'portal/20190523/276e907268c21eb807b0fa079515249c.png', '\n&lt;p&gt;　　深圳XX贸易公司是一家从事塑料原料,橡胶原料,化工试剂等综合性化工贸易公司.这家公司从未做过社会责任认证或验厂,工厂出现大量问题:从员工宿舍,工资考勤,工厂生产安全,环境卫生到工厂制度根本没基础可谈.面对如此众多的工作,我司特指派高级顾问师指导工厂全面深圳XX贸易公司是一家从事塑料原料,橡胶原料,化工试剂等综合性化工贸易公司.这家公司从未做过社会责任认证或验厂,工厂出现大量问题:从员工宿舍,工资考勤,工厂生产安全,环境卫生到工厂制度根本没基础可谈.面对如此众多的工作,我司特指派高级顾问师指导工厂全面整改.验厂结果是轻松的,但过程是复杂的.咨询师寸步不离和工厂员工共同奋斗,经过半个多月的努力在和咨询师亲自陪同验厂的情况下顺利通过了SEDEX验厂.可喜可贺!&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190523\\/276e907268c21eb807b0fa079515249c.png\",\"template\":\"\"}');

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------
INSERT INTO `cmf_portal_tag` VALUES ('1', '1', '1', '0', 'sa8000');
INSERT INTO `cmf_portal_tag` VALUES ('2', '1', '1', '0', 'GOST认证');
INSERT INTO `cmf_portal_tag` VALUES ('3', '1', '1', '0', '服务认证');
INSERT INTO `cmf_portal_tag` VALUES ('4', '1', '1', '0', 'SEDEX认证');
INSERT INTO `cmf_portal_tag` VALUES ('5', '1', '0', '0', 'SEDEX验厂');
INSERT INTO `cmf_portal_tag` VALUES ('6', '1', '0', '0', '沃尔玛验厂');
INSERT INTO `cmf_portal_tag` VALUES ('7', '1', '0', '0', 'WalMart验厂');
INSERT INTO `cmf_portal_tag` VALUES ('8', '1', '0', '0', 'SA8000认证');
INSERT INTO `cmf_portal_tag` VALUES ('9', '1', '0', '0', '有机含量标准');
INSERT INTO `cmf_portal_tag` VALUES ('10', '1', '0', '0', 'OCS认证');
INSERT INTO `cmf_portal_tag` VALUES ('11', '1', '0', '0', 'GOTS认证');
INSERT INTO `cmf_portal_tag` VALUES ('12', '1', '0', '0', 'GOTS验厂');
INSERT INTO `cmf_portal_tag` VALUES ('13', '1', '0', '0', 'FSC森林认证');
INSERT INTO `cmf_portal_tag` VALUES ('14', '1', '0', '0', 'FSC认证');
INSERT INTO `cmf_portal_tag` VALUES ('15', '1', '0', '0', '森林认证');
INSERT INTO `cmf_portal_tag` VALUES ('16', '1', '0', '0', 'BSCI认证');
INSERT INTO `cmf_portal_tag` VALUES ('17', '1', '0', '0', 'WCA验厂');
INSERT INTO `cmf_portal_tag` VALUES ('18', '1', '0', '0', 'Disney验厂');

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------
INSERT INTO `cmf_portal_tag_post` VALUES ('1', '1', '13', '0');
INSERT INTO `cmf_portal_tag_post` VALUES ('2', '2', '6', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('3', '3', '6', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('4', '4', '14', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('5', '5', '14', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('6', '6', '15', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('7', '7', '15', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('8', '8', '19', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('9', '9', '20', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('10', '10', '20', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('11', '11', '21', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('12', '12', '21', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('13', '6', '7', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('14', '13', '22', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('15', '14', '22', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('16', '15', '22', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('17', '16', '23', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('18', '17', '24', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('19', '18', '25', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('21', '5', '28', '1');

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT=' 回收站';

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------
INSERT INTO `cmf_recycle_bin` VALUES ('1', '17', '1558407321', 'portal_category', '优衣库验厂咨询', '0');
INSERT INTO `cmf_recycle_bin` VALUES ('2', '13', '1558410320', 'portal_post', '1', '1');

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------
INSERT INTO `cmf_route` VALUES ('1', '5000', '1', '2', 'portal/List/index?id=3', 'SA8000');
INSERT INTO `cmf_route` VALUES ('2', '4999', '1', '2', 'portal/Article/index?cid=3', 'SA8000/:id');
INSERT INTO `cmf_route` VALUES ('3', '5000', '1', '2', 'portal/List/index?id=4', 'BSCI');
INSERT INTO `cmf_route` VALUES ('4', '4999', '1', '2', 'portal/Article/index?cid=4', 'BSCI/:id');
INSERT INTO `cmf_route` VALUES ('5', '5000', '1', '2', 'portal/List/index?id=5', 'SEDEX');
INSERT INTO `cmf_route` VALUES ('6', '4999', '1', '2', 'portal/Article/index?cid=5', 'SEDEX/:id');
INSERT INTO `cmf_route` VALUES ('7', '5000', '1', '2', 'portal/List/index?id=6', 'FSC');
INSERT INTO `cmf_route` VALUES ('8', '4999', '1', '2', 'portal/Article/index?cid=6', 'FSC/:id');
INSERT INTO `cmf_route` VALUES ('9', '5000', '1', '2', 'portal/List/index?id=7', 'WalMart');
INSERT INTO `cmf_route` VALUES ('10', '4999', '1', '2', 'portal/Article/index?cid=7', 'WalMart/:id');
INSERT INTO `cmf_route` VALUES ('11', '5000', '1', '2', 'portal/List/index?id=8', 'GOTS');
INSERT INTO `cmf_route` VALUES ('12', '4999', '1', '2', 'portal/Article/index?cid=8', 'GOTS/:id');
INSERT INTO `cmf_route` VALUES ('13', '5000', '1', '2', 'portal/List/index?id=9', 'OCS');
INSERT INTO `cmf_route` VALUES ('14', '4999', '1', '2', 'portal/Article/index?cid=9', 'OCS/:id');
INSERT INTO `cmf_route` VALUES ('15', '5000', '1', '2', 'portal/List/index?id=10', 'GRS');
INSERT INTO `cmf_route` VALUES ('16', '4999', '1', '2', 'portal/Article/index?cid=10', 'GRS/:id');
INSERT INTO `cmf_route` VALUES ('17', '5000', '1', '2', 'portal/List/index?id=11', 'RCS');
INSERT INTO `cmf_route` VALUES ('18', '4999', '1', '2', 'portal/Article/index?cid=11', 'RCS/:id');
INSERT INTO `cmf_route` VALUES ('19', '5000', '1', '2', 'portal/List/index?id=12', 'WRAP');
INSERT INTO `cmf_route` VALUES ('20', '4999', '1', '2', 'portal/Article/index?cid=12', 'WRAP/:id');
INSERT INTO `cmf_route` VALUES ('21', '5000', '1', '2', 'portal/List/index?id=13', 'RWS');
INSERT INTO `cmf_route` VALUES ('22', '4999', '1', '2', 'portal/Article/index?cid=13', 'RWS/:id');
INSERT INTO `cmf_route` VALUES ('23', '5000', '1', '2', 'portal/List/index?id=14', 'RDS');
INSERT INTO `cmf_route` VALUES ('24', '4999', '1', '2', 'portal/Article/index?cid=14', 'RDS/:id');
INSERT INTO `cmf_route` VALUES ('25', '5000', '1', '2', 'portal/List/index?id=15', 'WCA');
INSERT INTO `cmf_route` VALUES ('26', '4999', '1', '2', 'portal/Article/index?cid=15', 'WCA/:id');
INSERT INTO `cmf_route` VALUES ('27', '5000', '1', '2', 'portal/List/index?id=16', 'Disney');
INSERT INTO `cmf_route` VALUES ('28', '4999', '1', '2', 'portal/Article/index?cid=16', 'Disney/:id');
INSERT INTO `cmf_route` VALUES ('29', '5000', '1', '2', 'portal/List/index?id=17', 'UNIQLO');
INSERT INTO `cmf_route` VALUES ('30', '4999', '1', '2', 'portal/Article/index?cid=17', 'UNIQLO/:id');
INSERT INTO `cmf_route` VALUES ('31', '5000', '1', '2', 'portal/List/index?id=18', 'COSTCO');
INSERT INTO `cmf_route` VALUES ('32', '4999', '1', '2', 'portal/Article/index?cid=18', 'COSTCO/:id');
INSERT INTO `cmf_route` VALUES ('33', '5000', '1', '2', 'portal/Page/index?id=16', 'aboutus.html');
INSERT INTO `cmf_route` VALUES ('34', '5000', '1', '2', 'portal/List/index?id=27', 'SCS');
INSERT INTO `cmf_route` VALUES ('35', '4999', '1', '2', 'portal/Article/index?cid=27', 'SCS/:id');
INSERT INTO `cmf_route` VALUES ('36', '5000', '1', '2', 'portal/List/index?id=28', 'Adidas');
INSERT INTO `cmf_route` VALUES ('37', '4999', '1', '2', 'portal/Article/index?cid=28', 'Adidas/:id');
INSERT INTO `cmf_route` VALUES ('38', '5000', '1', '2', 'portal/List/index?id=29', 'cgal');
INSERT INTO `cmf_route` VALUES ('39', '4999', '1', '2', 'portal/Article/index?cid=29', 'cgal/:id');
INSERT INTO `cmf_route` VALUES ('40', '5000', '1', '2', 'portal/List/index?id=1', 'yczx');
INSERT INTO `cmf_route` VALUES ('41', '4999', '1', '2', 'portal/Article/index?cid=1', 'yczx/:id');
INSERT INTO `cmf_route` VALUES ('42', '5000', '1', '2', 'portal/List/index?id=2', 'rzxm');
INSERT INTO `cmf_route` VALUES ('43', '4999', '1', '2', 'portal/Article/index?cid=2', 'rzxm/:id');
INSERT INTO `cmf_route` VALUES ('44', '5000', '1', '2', 'portal/List/index?id=30', 'xwzx');
INSERT INTO `cmf_route` VALUES ('45', '4999', '1', '2', 'portal/Article/index?cid=30', 'xwzx/:id');
INSERT INTO `cmf_route` VALUES ('46', '5000', '1', '2', 'portal/List/index?id=31', 'gsdt');
INSERT INTO `cmf_route` VALUES ('47', '4999', '1', '2', 'portal/Article/index?cid=31', 'gsdt/:id');
INSERT INTO `cmf_route` VALUES ('48', '5000', '1', '2', 'portal/List/index?id=32', 'hyxw');
INSERT INTO `cmf_route` VALUES ('49', '4999', '1', '2', 'portal/Article/index?cid=32', 'hyxw/:id');

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES ('1', '1', '0', '首页顶部轮播', '');
INSERT INTO `cmf_slide` VALUES ('2', '1', '0', '验厂页top轮播', '');
INSERT INTO `cmf_slide` VALUES ('3', '1', '0', '认证项目top轮播', '');

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) NOT NULL COMMENT '幻灯片描述',
  `content` text COMMENT '幻灯片内容',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of cmf_slide_item
-- ----------------------------
INSERT INTO `cmf_slide_item` VALUES ('1', '1', '1', '10000', ' ', 'default/20190520/b7b2fb1ad516dcea083c5a332a7c9bcd.jpg', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('2', '1', '1', '10000', ' ', 'default/20190520/d4594fb83388a83e0d208b290761c271.jpg', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('3', '1', '1', '10000', ' ', 'default/20190520/679d47f6258945233e49a4d4932e9952.jpg', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('4', '1', '1', '10000', ' ', 'portal/20190520/3e7058911a9753e4edb84588ee141b4b.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('5', '2', '1', '10000', ' ', 'default/20190522/b2af84b95b066f71b6a86f742a59d77b.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('6', '2', '1', '10000', ' ', 'default/20190522/cbf52169aeccc76d52ac643fb69ee1d7.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('7', '2', '1', '10000', ' ', 'portal/20190520/9b63f7f0722094d789b709283be4c311.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('8', '2', '1', '10000', ' ', 'default/20190522/48348f4bb96337e98a299e9d79614935.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('9', '2', '1', '10000', ' ', 'default/20190522/da0a760e463a2122c63384225ca7e97a.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('10', '3', '1', '10000', ' ', 'default/20190522/da0a760e463a2122c63384225ca7e97a.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('11', '3', '1', '10000', ' ', 'default/20190522/48348f4bb96337e98a299e9d79614935.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('12', '3', '1', '10000', ' ', 'portal/20190520/9b63f7f0722094d789b709283be4c311.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('13', '3', '1', '10000', ' ', 'default/20190522/cbf52169aeccc76d52ac643fb69ee1d7.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('14', '3', '1', '10000', '  ', 'default/20190522/b2af84b95b066f71b6a86f742a59d77b.png', '', '', '', '', null);

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES ('1', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES ('1', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('2', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('3', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":1,\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('4', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('5', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('6', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('7', '0', '10', 'simpleboot3', '验厂项目列表也', 'portal/Factory/details', 'portal/factory/details', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u9a8c\\u5382\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u9a8c\\u5382\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('8', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('9', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"\\u8d85\\u7f51\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('10', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/sear', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);

-- ----------------------------
-- Table structure for cmf_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方唯一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方用户表';

-- ----------------------------
-- Records of cmf_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES ('1', '1', '0', '0', '1558595627', '0', '0', '0.00', '1558345090', '1', 'admin', '###0f1784ed6ece4a339a40f62586dd293b', 'admin', '554055345@qq.com', '', '', '', '218.21.2.234', '', '', null);

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户操作表';

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
INSERT INTO `cmf_user_action` VALUES ('1', '1', '1', '1', '2', '1', '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访问记录表';

-- ----------------------------
-- Records of cmf_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_log`;
CREATE TABLE `cmf_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户余额变更日志表';

-- ----------------------------
-- Records of cmf_user_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

-- ----------------------------
-- Records of cmf_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户点赞表';

-- ----------------------------
-- Records of cmf_user_like
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
-- Records of cmf_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Records of cmf_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES ('1', '1', '1573897110', '1558345110', '04c3f1f5656897a7709cb39a8e9ef522968e2b3c358206a982d12f26a1f8620f', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------
