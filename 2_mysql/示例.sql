/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : webmastersystem

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-06 22:17:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ljl_computer`
-- ----------------------------
DROP TABLE IF EXISTS `ljl_computer`;
CREATE TABLE `ljl_computer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `depict` varchar(20) NOT NULL,
  `mac` varchar(20) NOT NULL,
  `user` varchar(5) NOT NULL,
  `admin` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ljl_computer
-- ----------------------------
INSERT INTO `ljl_computer` VALUES ('1', '内二科', '22', '北一', '2', '2', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('2', '信息科', '125.125.125.158', 'I5', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('3', '信息科', '125.125.125.1', '大屏幕', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('4', '内三科', '125.125.125.224', '', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('7', '自助报告机', '125.125.125.7', '北二', '', '', '', '报告');
INSERT INTO `ljl_computer` VALUES ('8', '自助报告机', '125.125.125.6', '最北', '', '', '', '报告');
INSERT INTO `ljl_computer` VALUES ('9', '住院处', '125.125.125.229', '出院', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('10', '住院处', '125.125.125.227', '南二', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('11', '住院处', '125.125.125.226', '北二', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('12', '住院处', '125.125.125.225', '最北', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('13', '自助报告机', '125.125.125.10', '北明细', '', '', '', '查询');
INSERT INTO `ljl_computer` VALUES ('14', '自助报告机', '125.125.125.8', '南评价', '', '', '', '查询');
INSERT INTO `ljl_computer` VALUES ('15', '自助报告机', '125.125.125.16', '内一', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('16', '自助报告机', '172.16.20.103', '内二', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('17', '总务库', '172.16.20.133', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('18', '自助报告机', '172.16.20.104', '内五', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('19', '自助报告机', '172.16.20.105', '外一', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('20', '自助报告机', '172.16.30.106', '骨一', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('21', '自助报告机', '172.16.30.107', '骨二', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('22', '自助报告机', '172.16.30.108', '外三', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('23', '自助报告机', '172.16.40.109', '儿科', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('24', '自助报告机', '172.16.40.110', '妇二', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('25', '自助报告机', '172.16.40.111', '妇一(1)', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('26', '自助报告机', '172.16.40.112', '妇一(2)', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('27', '自助报告机', '172.16.40.114', '内四', '', '', '', '评价器');
INSERT INTO `ljl_computer` VALUES ('28', '自助报告机', '125.125.125.19', '急诊', '', '', '', '门诊楼');
INSERT INTO `ljl_computer` VALUES ('29', '自助报告机', '125.125.125.18', '内三', '', '', '', '门诊楼');
INSERT INTO `ljl_computer` VALUES ('30', '自助报告机', '125.125.125.17', '五官', '', '', '', '门诊楼');
INSERT INTO `ljl_computer` VALUES ('31', '收费处', '125.125.125.82', '楼梯下', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('32', '收费处', '125.125.125.81', '监控', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('33', '收费处', '125.125.125.254', '东', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('34', '收费处', '125.125.125.51', '中', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('35', '收费处', '125.125.125.5', '西', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('36', '门诊药房', '125.125.125.93', '西', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('37', '门诊药房', '125.125.125.186', '东', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('38', '即报处', '125.125.125.122', '报销', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('39', '即报处', '125.125.125.55', '外网(维修中)', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('40', '即报处', '125.125.125.50', '明细+外网', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('41', '住院医保', '125.125.125.134', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('42', '门诊医保', '125.125.125.162', '旧(未使用)', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('43', '器械科', '125.125.125.86', '西', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('44', '器械科', '125.125.125.80', '东', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('45', '病房药房', '125.125.125.105', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('46', 'CT室', '125.125.125.222', '报告北', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('47', 'CT室', '125.125.125.233', '报告南', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('48', 'CT室', '125.125.125.223', '旧主机', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('49', 'CT室', '125.125.125.198', '收费', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('50', 'CT室', '125.125.125.234', '后处理工作站(无PACS工作站)', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('51', '急诊科', '125.125.125.145', '北', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('52', '急诊科', '125.125.125.126', '南', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('56', '口腔科', '125.125.125.147', '东屋', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('57', '口腔科', '125.125.125.131', '西屋', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('58', '皮肤科', '125.125.125.41', '东', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('59', '皮肤科', '125.125.125.163', '西', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('60', '儿科', '125.125.125.176', '', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('61', '外一科', '125.125.125.185', '', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('62', '外一科', '172.16.20.30', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('63', '外一科', '172.16.20.36', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('64', '外一科', '172.16.20.35', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('65', '外一科', '172.16.20.34', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('66', '外一科', '172.16.20.31', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('67', '外一科', '172.16.20.32', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('68', '外一科', '172.16.20.33', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('69', '检验科', '125.125.125.175', '收费', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('70', '检验科', '125.125.125.38', '尿检', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('71', '检验科', '125.125.125.236', '尿检对过', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('72', '耳鼻喉科门诊', '125.125.125.94', '东', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('73', '耳鼻喉科门诊', '125.125.125.92', '最西', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('74', '耳鼻喉科门诊', '125.125.125.195', '最东', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('75', '骨二科', '125.125.125.78', '', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('76', '内四科', '125.125.125.79', '', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('77', '内二科', '125.125.125.89', '东', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('78', '内二科', '125.125.125.83', '西', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('79', '内一科', '125.125.125.85', '', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('80', '内五科', '125.125.125.133', '', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('81', '内五科', '172.16.20.130', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('82', '五官科', '125.125.125.136', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('83', '质控科', '125.125.125.124', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('84', '护理部', '125.125.125.159', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('85', '财务科', '125.125.125.9', '东', '', '', '', '北屋');
INSERT INTO `ljl_computer` VALUES ('86', '财务科', '125.125.125.199', '西', '', '', '', '北屋');
INSERT INTO `ljl_computer` VALUES ('87', '儿科', '172.16.40.10', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('88', '儿科', '172.16.40.15', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('89', '儿科', '172.16.40.14', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('90', '儿科', '172.16.40.13', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('91', '儿科', '172.16.40.11', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('92', '儿科', '172.16.40.12', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('93', '儿科', '172.16.40.16', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('94', '妇一一区', '125.125.125.97', '东', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('95', '妇一一区', '125.125.125.100', '西', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('96', '妇二', '125.125.125.130', '东', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('97', '妇二', '125.125.125.99', '西', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('98', '妇二', '172.16.40.20', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('99', '妇二', '172.16.40.25', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('100', '妇二', '172.16.40.21', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('101', '妇二', '172.16.40.22', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('102', '妇二', '172.16.40.24', '东四', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('103', '妇二', '172.16.40.23', '东五', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('104', '妇二', '172.16.40.29', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('105', '妇二', '172.16.40.28', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('106', '妇二', '172.16.40.27', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('107', '门诊医保', '125.125.125.155', '新', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('108', '内一科', '125.125.125.11', '北', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('109', '内一科', '125.125.125.12', '西', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('110', '内三科', '125.125.125.22', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('111', '血站', '125.125.125.29', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('112', '中药房', '125.125.125.47', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('113', '检验科', '125.125.125.35', '血流变', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('114', '产房', '172.16.50.166', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('115', '病案室', '125.125.125.15', '东屋', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('116', '病案室', '125.125.125.135', '西屋', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('117', '妇一一区', '172.16.40.38', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('118', '妇一二区', '172.16.40.70', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('119', '骨一科', '172.16.40.60', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('120', '高压氧', '172.16.20.144', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('121', '碎石科', '172.16.20.145', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('122', '骨一科', '125.125.125.141', '温医生', '', '', '', '门诊');
INSERT INTO `ljl_computer` VALUES ('123', '外三科', '172.16.40.40', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('124', '外三科', '172.16.30.36', '东一(打印机)', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('125', '骨二科', '172.16.40.50', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('126', '骨二科', '172.16.30.21', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('127', '骨二科', '172.16.30.22', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('128', '骨二科', '172.16.30.23', '西三(印)', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('129', '骨二科', '172.16.30.27', '西四', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('130', '骨二科', '172.16.30.28', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('131', '骨二科', '172.16.30.25', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('132', '骨二科', '172.16.30.26', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('133', '检验科', '125.125.125.230', '血常规', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('134', '妇一一区', '172.16.40.31', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('135', '妇一一区', '172.16.40.32', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('136', '妇一一区', '172.16.40.33', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('137', '妇一一区', '172.16.40.34', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('139', '妇一一区', '172.16.40.35', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('140', '妇一一区', '172.16.40.36', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('141', '内三科', '125.125.125.23', '东南', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('142', '内三科', '125.125.125.24', '东北', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('143', '内三科', '125.125.125.25', '西北', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('144', '内三科', '125.125.125.26', '西南', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('145', '康复大厅', '172.16.20.123', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('146', '五官科', '125.125.125.180', '南一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('147', '五官科', '125.125.125.181', '南二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('148', '五官科', '125.125.125.182', '南三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('149', '五官科', '125.125.125.119', '北一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('150', '五官科', '125.125.125.184', '北二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('151', '五官科', '125.125.125.183', '北三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('152', '妇一二区', '172.16.50.15', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('153', '妇一二区', '172.16.50.19', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('154', '妇一二区', '172.16.50.11', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('155', '妇一二区', '172.16.50.12', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('156', '内一科', '125.125.125.113', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('157', '内一科', '125.125.125.114', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('158', '内一科', '125.125.125.115', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('159', '内一科', '125.125.125.116', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('160', '内一科', '125.125.125.111', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('161', '内一科', '125.125.125.112', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('162', '内一科', '125.125.125.110', '西四', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('163', '内二科', '172.16.20.18', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('164', '内二科', '172.16.20.17', '东二(印)', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('165', '内二科', '172.16.20.166', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('166', '内二科', '172.16.20.19', '东四', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('167', '内二科', '172.16.20.55', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('168', '内二科', '172.16.20.11', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('169', '内二科', '172.16.20.12', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('170', '内二科', '172.16.20.13', '西四', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('171', '内二科', '172.16.20.14', '西五', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('172', '内四科', '172.16.50.30', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('173', '内四科', '172.16.50.31', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('174', '内四科', '172.16.50.35', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('175', '内四科', '172.16.50.33', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('176', '内四科', '172.16.50.32', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('177', '内四科', '172.16.50.34', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('178', '内四科', '172.16.50.36', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('179', '内五科', '172.16.20.23', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('180', '内五科', '172.16.20.24', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('181', '内五科', '172.16.20.22', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('182', '内五科', '172.16.20.26', '西一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('183', '内五科', '172.16.20.25', '西二（印）', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('184', '内五科', '172.16.20.21', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('185', '骨一科', '172.16.30.10', '东一', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('186', '骨一科', '172.16.30.11', '东二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('187', '骨一科', '172.16.30.12', '东三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('188', '骨一科', '172.16.30.16', '西一(旧打印机)', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('189', '骨一科', '172.16.30.15', '西二', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('190', '骨一科', '172.16.30.14', '西三', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('191', '热成像', '125.125.125.59', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('192', '内三科', '125.125.125.27', '', '', '', '', '值班室');
INSERT INTO `ljl_computer` VALUES ('193', '中医科', '125.125.125.138', '贾主任', '', '', '', '西屋');
INSERT INTO `ljl_computer` VALUES ('194', '中医科', '125.125.125.139', '徐主任', '', '', '', '东屋');
INSERT INTO `ljl_computer` VALUES ('195', '中医科', '125.125.125.87', '东边', '', '', '', '东屋');
INSERT INTO `ljl_computer` VALUES ('196', '手术室', '172.16.50.20', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('197', '手术室', '125.125.125.60', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('198', '骨一科', '125.125.125.84', '', '', '', '', '骨科专家');
INSERT INTO `ljl_computer` VALUES ('200', '急诊科病房', '125.125.125.118', '', '', '', '', '护士站');
INSERT INTO `ljl_computer` VALUES ('201', '急诊科病房', '125.125.125.168', '南', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('202', '急诊科病房', '125.125.125.169', '北', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('203', '彩超室', '125.125.125.171', '彩一', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('204', '彩超室', '125.125.125.172', '彩二', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('205', '彩超室', '125.125.125.173', '彩三', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('206', '中医妇科', '125.125.125.177', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('207', '血透(三楼)', '125.125.125.44', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('208', '药品科', '125.125.125.98', '门口', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('209', '针灸科', '125.125.125.106', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('210', '检验科', '125.125.125.31', '血凝', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('211', '急诊科主任', '125.125.125.196', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('212', '法医门诊', '125.125.125.193', '', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('213', '彩超室', '172.16.20.99', '', '', '', '', '外一科二病室');
INSERT INTO `ljl_computer` VALUES ('214', '外一科', '172.16.20.88', '', '', '路雪振', '', '主任办公室');
INSERT INTO `ljl_computer` VALUES ('215', '内五科', '172.16.20.28', '西(新加)', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('216', '内五科', '172.16.20.44', '东(新加)', '', '', '', '医办室');
INSERT INTO `ljl_computer` VALUES ('217', '眼科门诊', '125.125.125.161', '最里屋', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('218', '眼科门诊', '125.125.125.148', '中间屋', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('219', '眼科门诊', '125.125.125.90', '西', '', '', '', '');
INSERT INTO `ljl_computer` VALUES ('220', '眼科门诊', '125.125.125.91', '东', '', '', '', '');

-- ----------------------------
-- Table structure for `ljl_department`
-- ----------------------------
DROP TABLE IF EXISTS `ljl_department`;
CREATE TABLE `ljl_department` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ips` varchar(255) NOT NULL,
  `type` varchar(25) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `leader` varchar(50) NOT NULL,
  `index` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ljl_department
-- ----------------------------
INSERT INTO `ljl_department` VALUES ('2', '信息科', '125', '后勤', '2805', '', 'xxk xinxike');
INSERT INTO `ljl_department` VALUES ('16', '内一科', '啊啊啊', '医疗', '护士站:2825 主任:2822 门诊:2823', '', 'nyk neiyike ');
INSERT INTO `ljl_department` VALUES ('17', '内二科', '125', '医疗', '护士站:2829 主任:2826 门诊:2827', '', 'neierke nek');
INSERT INTO `ljl_department` VALUES ('20', '内四科', '125', '医疗', '护士站:2509 主任:2508 门诊:2813', '', 'nsk neisike');
INSERT INTO `ljl_department` VALUES ('21', '内五科', '额额', '医疗', '护士站:2537 门诊:2982 医办室:2537', '1', 'neiwuke nwk naoneier nne');
INSERT INTO `ljl_department` VALUES ('24', '内三科', '172.16.20', '医疗', '护士站:2686 主任:2688 门诊:2900', '', 'neisanke nsk');
INSERT INTO `ljl_department` VALUES ('25', '办公室', '', '后勤', '2818', '', 'bgs bangongshi');
INSERT INTO `ljl_department` VALUES ('26', '自助报告机', '', '', '', '', 'zzbgj zizhubaogaoji');
INSERT INTO `ljl_department` VALUES ('27', '住院处', '125', '后勤', '2893', '', 'zyc zhuyuanchu');
INSERT INTO `ljl_department` VALUES ('28', '食堂', '', '', '2892', '', '');
INSERT INTO `ljl_department` VALUES ('30', '检验科', '125', '医技', '2877', '', 'jyk jianyanke');
INSERT INTO `ljl_department` VALUES ('32', '总务库', '', '后勤', '2886', '', 'zwk zongwuku');
INSERT INTO `ljl_department` VALUES ('33', '质控科', '', '', '2806', '', 'zkk zhikongke');
INSERT INTO `ljl_department` VALUES ('34', '信息宣传', '', '后勤', '2518', '', '宣教科 xjk xxxc ');
INSERT INTO `ljl_department` VALUES ('36', '彩超室', '', '', '2849', '', 'ccs bcs caichao ');
INSERT INTO `ljl_department` VALUES ('37', '血透室(四楼)', '125', '医技', '2878', '', 'xts xuetoushi xytxk xueye');
INSERT INTO `ljl_department` VALUES ('38', '外一科', '', '医疗', '护士站:2833 主任:2831 门诊:2832', '', 'waiyike wyk');
INSERT INTO `ljl_department` VALUES ('39', '骨一科', '', '医疗', '护士站:2857 主任:2821 门诊:2810', '', 'guyike gyk');
INSERT INTO `ljl_department` VALUES ('40', '骨二科', '', '医疗', '护士站:2837 主任:2835 门诊:2836 七楼', '', 'guerke gek');
INSERT INTO `ljl_department` VALUES ('41', '外三科', '', '医疗', '护士站:2809 主任:2858 门诊:2836', '', 'wsk waisanke');
INSERT INTO `ljl_department` VALUES ('42', '妇二', '', '医疗', '护士站:2863 主任:2526 门诊:2851', '', 'fuerke fek 10#');
INSERT INTO `ljl_department` VALUES ('43', '妇一一区', '', '医疗', '护士站:2506 主任:2516 门诊:2558', '', 'fuyiyiqu fyyq 11#');
INSERT INTO `ljl_department` VALUES ('44', '妇一二区', '', '医疗', ' 护士站:2852 主任:2528 门诊:2558', '', 'fuyierqu fyeq 12#');
INSERT INTO `ljl_department` VALUES ('45', '牛主任', '', '后勤', '2848', '', 'nzr niuzhuren 维修室 wxs weixiushi');
INSERT INTO `ljl_department` VALUES ('46', '监控室', '', '后勤', '2569', '', 'jks jiankongshi');
INSERT INTO `ljl_department` VALUES ('47', '档案馆', '', '后勤', '2556', '', 'dag das danganguan danganshi');
INSERT INTO `ljl_department` VALUES ('48', '病案室', '', '后勤', '2897', '', 'bas binganshi');
INSERT INTO `ljl_department` VALUES ('49', '护理部', '', '后勤', '2812', '', 'hlb hulibu');
INSERT INTO `ljl_department` VALUES ('50', '总务科', '', '后勤', '2880', '', 'zwk zongwuke');
INSERT INTO `ljl_department` VALUES ('51', '配电室', '', '后勤', '2889', '', 'peidianshi pds');
INSERT INTO `ljl_department` VALUES ('52', '财务科', '', '', '2815', '', 'caiwuke cwk');
INSERT INTO `ljl_department` VALUES ('53', '挂号处', '', '', '2804', '', 'ghc guahaochu ');
INSERT INTO `ljl_department` VALUES ('54', '收费处', '', '', '2895', '', 'sfc shoufeichu');
INSERT INTO `ljl_department` VALUES ('55', '门诊医保', '', '', '2807', '', 'menzhenyibao mzyb');
INSERT INTO `ljl_department` VALUES ('56', '即报处', '', '', '2850', '', 'jbc jibaochu');
INSERT INTO `ljl_department` VALUES ('57', '审计科', '', '', '2891', '', 'sjk shenjike');
INSERT INTO `ljl_department` VALUES ('58', '门诊部', '', '', '2817', '', 'mzb menzhenbu');
INSERT INTO `ljl_department` VALUES ('59', '保卫科', '', '', '2896', '', 'bwk baoweike');
INSERT INTO `ljl_department` VALUES ('60', '体检中心', '', '', '2870', '', 'sgb shegongbu tjzx tijianzhongxin');
INSERT INTO `ljl_department` VALUES ('61', '药品科', '', '', '2879', '', 'ypk yk yapku yaopinke 药库');
INSERT INTO `ljl_department` VALUES ('62', '门诊药房', '', '', '2881', '', 'mzyf xyf  menzhenyaofang ');
INSERT INTO `ljl_department` VALUES ('63', '病房药房', '', '', '2882', '', 'bfyf zyyf zhuyuanyaofang bingfangyaofang');
INSERT INTO `ljl_department` VALUES ('64', '中药房', '', '', '2883', '', 'zyf zhongyaofang');
INSERT INTO `ljl_department` VALUES ('65', '放射科', '', '', '2869', '', 'fsk fangsheke');
INSERT INTO `ljl_department` VALUES ('66', 'CT室', '', '', '2875', '', 'ct');
INSERT INTO `ljl_department` VALUES ('67', '器械科', '', '', '2885', '', 'qxk qixieke');
INSERT INTO `ljl_department` VALUES ('68', '心电图', '', '', '2876', '', 'gnk gongnengke xdt xindiantu');
INSERT INTO `ljl_department` VALUES ('69', '心电值班', '', '', '2803', '', 'xdzb xindianzhiban');
INSERT INTO `ljl_department` VALUES ('70', '碎石科', '', '', '2890', '', 'ssk suishike');
INSERT INTO `ljl_department` VALUES ('72', '血站', '', '', '2808', '', 'xz xuezhan xk xueku');
INSERT INTO `ljl_department` VALUES ('73', '病理科', '', '', '2801', '', 'blk binglike');
INSERT INTO `ljl_department` VALUES ('74', '高压氧', '', '', '2802', '', 'gyy gaoyayang');
INSERT INTO `ljl_department` VALUES ('75', '法医门诊', '', '', '2899', '', 'fymz fayimenzhen');
INSERT INTO `ljl_department` VALUES ('76', '供应室', '', '', '2873', '', 'gys gongyingshi');
INSERT INTO `ljl_department` VALUES ('77', '洗衣房', '', '', '2887', '', 'xyf xiyifang');
INSERT INTO `ljl_department` VALUES ('78', '产房', '', '', '2839', '', 'cf chanfang');
INSERT INTO `ljl_department` VALUES ('79', '出生证明', '', '', '2507', '', 'cszmb chushengzhengming');
INSERT INTO `ljl_department` VALUES ('80', '手术室', '', '', '2872', '', 'sss shoushushi');
INSERT INTO `ljl_department` VALUES ('81', '急诊科', '', '', '2871 病房 2830 ', '', 'jzk jizhenke');
INSERT INTO `ljl_department` VALUES ('82', '急诊科主任', '', '', '2820', '', 'jzkzr jizhenkezhuren minzhuren mzr');
INSERT INTO `ljl_department` VALUES ('84', '眼科门诊', '', '', '2859', '', 'ykmz yankemenzhen');
INSERT INTO `ljl_department` VALUES ('85', '耳鼻喉科门诊', '', '', '2861', '', 'erbihouke ebh');
INSERT INTO `ljl_department` VALUES ('86', '五官科', '', '', '病房 2976', '', 'wgkbf wuguankebingfang');
INSERT INTO `ljl_department` VALUES ('87', '口腔科', '', '', '2862', '', 'kqk yk yake kouqiangke 牙科');
INSERT INTO `ljl_department` VALUES ('88', '中医科', '', '', '2865', '', 'zyk zhongyike');
INSERT INTO `ljl_department` VALUES ('89', '针灸科', '', '', '2866', '', 'zjk zhenjiuke');
INSERT INTO `ljl_department` VALUES ('90', '皮肤科', '', '', '2867', '', 'pfk pifuke');
INSERT INTO `ljl_department` VALUES ('91', '住院医保', '', '', '2529', '', 'zyyb zhuyuanyibao');
INSERT INTO `ljl_department` VALUES ('92', '康复大厅', '', '', '2532', '', 'kfdt kangfudating');
INSERT INTO `ljl_department` VALUES ('93', '药浴', '', '', '2525', '', 'yy yaoyu');
INSERT INTO `ljl_department` VALUES ('94', '推拿科', '', '', '', '', '');
INSERT INTO `ljl_department` VALUES ('95', '儿科', '', '医疗', '护士站:2856 主任:2853 门诊:2855', '', 'ek erke');
INSERT INTO `ljl_department` VALUES ('96', '医务科', '', '', '2811', '', 'ywk yiwuke');
INSERT INTO `ljl_department` VALUES ('97', '热成像', '', '', '', '', 'rcx rechengxiang');
INSERT INTO `ljl_department` VALUES ('98', '急诊科病房', '', '', '2830', '', 'jzkbf jizhenkebingfang');
INSERT INTO `ljl_department` VALUES ('99', '血透(三楼)', '', '', '2539', '', 'xts xuetoushi');
INSERT INTO `ljl_department` VALUES ('100', '剧科长', '2546', '', '', '', 'jkz jukezhang');
INSERT INTO `ljl_department` VALUES ('101', '中医妇科', '', '', '', '', 'zyfk zhongyifuke');
INSERT INTO `ljl_department` VALUES ('102', '剧主任', '', '', '', '', 'jzr juzhuren');

-- ----------------------------
-- Table structure for `ljl_faq`
-- ----------------------------
DROP TABLE IF EXISTS `ljl_faq`;
CREATE TABLE `ljl_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `admin` varchar(5) NOT NULL,
  `createTime` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ljl_faq
-- ----------------------------
INSERT INTO `ljl_faq` VALUES ('31', '信息科', '报表2747科室排序', '已隐藏内容', '刘建磊', '2014/10/25 上午8:35:54');
INSERT INTO `ljl_faq` VALUES ('46', '检验科', '设置主任可打印未收费报告', '已隐藏内容', '刘建磊', '2014/11/5 上午8:50:14');
INSERT INTO `ljl_faq` VALUES ('47', '信息宣传', '账号', '已隐藏内容', '刘建磊', '2014/11/5 上午9:40:36');
INSERT INTO `ljl_faq` VALUES ('48', '检验科', 'lis客服电话', '已隐藏内容', '刘建磊', '2014/11/5 下午2:40:30');
INSERT INTO `ljl_faq` VALUES ('49', '住院处', '第1行的住院记录已经向医保办理过住院登记，请先取消医保住院登记！', '已隐藏内容', '刘建磊', '2014/11/6 上午10:01:54');
INSERT INTO `ljl_faq` VALUES ('50', '住院处', '农合网络', '已隐藏内容', '刘建磊', '2014/11/6 上午10:10:21');
INSERT INTO `ljl_faq` VALUES ('51', '检验科', '检查尿设备com口设置', '已隐藏内容', '刘建磊', '2014年11月8日 14:59:37');
INSERT INTO `ljl_faq` VALUES ('52', '信息科', '装系统说明', '已隐藏内容', '刘建磊', '2014年11月10日 8:31:05');
INSERT INTO `ljl_faq` VALUES ('53', '信息科', '权力运行系统相关', '已隐藏内容', '刘建磊', '2014年11月10日 15:07:53');
INSERT INTO `ljl_faq` VALUES ('54', '信息科', '权利运行 医院领导分工设置', '已隐藏内容', '刘建磊', '2014年11月10日 16:25:39');
INSERT INTO `ljl_faq` VALUES ('55', '信息科', '权力运行 网站维护说明', '已隐藏内容', '刘建磊', '2014年11月11日 8:25:48');
INSERT INTO `ljl_faq` VALUES ('56', '收费处', '体检中心打发票常见问题', '已隐藏内容', '刘建磊', '2014年11月11日 10:04:09');
INSERT INTO `ljl_faq` VALUES ('57', 'CT室', 'pacs添加工号问题', '已隐藏内容', '刘建磊', '2014年11月14日 13:45:06');
INSERT INTO `ljl_faq` VALUES ('58', '信息科', 'HIS无法登陆 报错:archiver error:Connect internal only until freed', '已隐藏内容', '刘建磊', '2014年11月14日 14:11:38');
INSERT INTO `ljl_faq` VALUES ('59', '彩超室', 'pacs修改模板问题', '已隐藏内容', '刘建磊', '2014年11月14日星期五 15:43:19');
INSERT INTO `ljl_faq` VALUES ('60', '自助报告机', '住院满意度评价器-升腾咨询大屏部署文档', '已隐藏内容', '刘建磊', '2014年11月15日星期六 14:51:48');
INSERT INTO `ljl_faq` VALUES ('61', '信息科', 'his合理用药使用说明', '已隐藏内容', '刘建磊', '2014年11月15日星期六 15:02:24');
INSERT INTO `ljl_faq` VALUES ('62', '检验科', '血流变主机安装程序', '已隐藏内容', '刘建磊', '2014年11月18日 10:45:44');
INSERT INTO `ljl_faq` VALUES ('67', '彩超室', '彩超打印机hp laserjet pro 300 M351a安装出错 安装慢', '已隐藏内容', '刘建磊', '2014年11月26日星期三 14:42:09');
INSERT INTO `ljl_faq` VALUES ('68', '信息科', '中医院网站 中文域名 ', '已隐藏内容', '刘建磊', '2014年12月2日星期二 10:21:13');
INSERT INTO `ljl_faq` VALUES ('69', '住院处', '农合出院病人转自费操作', '已隐藏内容', '刘建磊', '2014年12月5日星期五 11:14:21');
INSERT INTO `ljl_faq` VALUES ('70', '热成像', 'ip设置记录', '已隐藏内容', '刘建磊', '2014年12月13日 15:51:50');
INSERT INTO `ljl_faq` VALUES ('71', '收费处', '门诊自费转医保流程', '已隐藏内容', '刘建磊', '2014年12月17日星期三 10:57:37');
INSERT INTO `ljl_faq` VALUES ('72', '住院医保', '市医保上传费用时间超出设置-重开上传费用程序', '已隐藏内容', '', '2014年12月17日星期三 11:10:41');
INSERT INTO `ljl_faq` VALUES ('73', '信息科', 'his医嘱加单位', '已隐藏内容', '刘建磊', '2014年12月17日星期三 11:13:14');
INSERT INTO `ljl_faq` VALUES ('74', '中医科', '中医科开药一味药打印一页处方纸', '已隐藏内容', '刘建磊', '2014年12月18日星期四 10:47:33');
INSERT INTO `ljl_faq` VALUES ('75', '质控科', 'pacs 统计 检查阳性率说明', '已隐藏内容', '刘建磊', '2014年12月18日星期四 15:30:24');
INSERT INTO `ljl_faq` VALUES ('76', '即报处', '明细费用不符', '已隐藏内容', '刘建磊', '2014年12月19日 10:23:36');
INSERT INTO `ljl_faq` VALUES ('77', '信息宣传', '宣教科查询报表相关', '已隐藏内容', '刘建磊', '2014年12月22日 14:21:20');
INSERT INTO `ljl_faq` VALUES ('78', '信息科', '系统检测到该持卡患者本地数据库有历史异常的登陆数据', '已隐藏内容', '顼改燕', '2014年12月23日星期二 09:29:03');
INSERT INTO `ljl_faq` VALUES ('79', '财务科', '添加材料 门诊扣费材料', '已隐藏内容', '刘建磊', '2014年12月25日星期四 09:46:28');
INSERT INTO `ljl_faq` VALUES ('80', '检验科', '重复扫码提示', '已隐藏内容', '刘建磊', '2014年12月27日星期六 09:39:54');
INSERT INTO `ljl_faq` VALUES ('81', '信息科', '添加工号', '已隐藏内容', '刘建磊', '2014年12月31日 9:50:51');
INSERT INTO `ljl_faq` VALUES ('82', '信息科', '访问192.168.1.249页面修改地址', '已隐藏内容', '刘建磊', '2014年12月31日 14:29:18');
INSERT INTO `ljl_faq` VALUES ('83', '住院医保', '医保出院对照问题处理方法 零费用出院', '已隐藏内容', '', '2015年1月7日星期三 08:48:11');
INSERT INTO `ljl_faq` VALUES ('84', '收费处', '门诊已退卡病人再建卡流程', '已隐藏内容', '刘建磊', '2015年1月16日 10:50:54');
INSERT INTO `ljl_faq` VALUES ('85', '住院医保', '医保对照账号', '已隐藏内容', '', '2015年2月6日星期五 13:55:13');
INSERT INTO `ljl_faq` VALUES ('86', '妇二', '妇科护士站断网 10楼 11楼 12楼 ', '已隐藏内容', '刘建磊', '2015年2月10日星期二 14:41:43');
INSERT INTO `ljl_faq` VALUES ('87', '中药房', '调药机故障处理方法', '已隐藏内容', '刘建磊', '2015年2月23日 11:08:10');

-- ----------------------------
-- Table structure for `ljl_hitch`
-- ----------------------------
DROP TABLE IF EXISTS `ljl_hitch`;
CREATE TABLE `ljl_hitch` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(10) NOT NULL,
  `computer` varchar(22) NOT NULL COMMENT '部门',
  `content` text NOT NULL COMMENT '问题描述',
  `depict` varchar(55) NOT NULL,
  `solve` varchar(255) NOT NULL,
  `author` char(20) NOT NULL COMMENT '上传者',
  `admin` varchar(20) NOT NULL,
  `finishTime` varchar(50) NOT NULL,
  `createTime` varchar(50) NOT NULL,
  `state` varchar(5) NOT NULL DEFAULT '未处理' COMMENT '未处理/已处理',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ljl_hitch
-- ----------------------------
INSERT INTO `ljl_hitch` VALUES ('7', '质控科', '', '', '打印机不打印', ' 重启电脑', '刘建磊', '刘建磊', '立即解决', '2014年11月5日 8:59:18', '已解决');
INSERT INTO `ljl_hitch` VALUES ('8', '彩超室', '', '', '脚踏板故障', '驱动在桌面 foot...', '刘建磊', '刘建磊', '立即解决', '2014年11月6日 9:59:51', '已解决');
INSERT INTO `ljl_hitch` VALUES ('9', '妇一', '', '<p>&nbsp;董洁 239998 妇一 11楼 2126 2126</p>', ' 董洁 239998 妇一 11楼 2126 2126', '费用明细用 用单行明细看 选日期', '', '', '2014年11月8日 8:42:27', '2014年11月7日 9:38:27', '已解决');
INSERT INTO `ljl_hitch` VALUES ('10', '妇二', '', '', '打印机卷纸', '清理硒鼓,打印机硒鼓问题', '刘建磊', '刘建磊', '2014年11月8日 9:27:39', '2014年11月8日 8:51:14', '已解决');
INSERT INTO `ljl_hitch` VALUES ('11', '检验科', '', '', '电脑主板设备接触不良', '更换pci转com硬件', '刘建磊', '刘建磊', '2014年11月8日 17:10:58', '2014年11月8日 8:52:16', '已解决');
INSERT INTO `ljl_hitch` VALUES ('12', '妇一一区', '', '', '打印机没反应', '更换打印机 数据线', '刘建磊', '刘建磊', '2014年11月8日 9:54:39', '2014年11月8日 8:53:02', '已解决');
INSERT INTO `ljl_hitch` VALUES ('13', '内五科', '', '', '八床心电监护不通', '屋内最北边端口可用 剩下的两个都不通', '刘建磊', '刘建磊', '立即解决', '2014年11月8日 17:10:09', '已解决');
INSERT INTO `ljl_hitch` VALUES ('14', '检验科', '', '', '扫第二次 提示\r\n', '', '刘建磊', '', '2014年11月13日 11:12:00', '2014年11月11日 11:54:16', '已解决');
INSERT INTO `ljl_hitch` VALUES ('15', '财务科', '', '', '报表 2887速度慢 例如住院号238511', '数据量大 不好修改', '刘建磊', '刘建磊', '2014年11月11日 14:19:09', '2014年11月11日 14:07:07', '已解决');
INSERT INTO `ljl_hitch` VALUES ('16', '妇一二区', '', '', '电子病历 病案首页 字典未同步 ', 'ctrl+d 弹出框点同步 解决', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 8:35:11', '已解决');
INSERT INTO `ljl_hitch` VALUES ('17', '病理科', '', '', '病理科电话2801和脑电图2876串线 ', '', '刘建磊', '', '2014年11月19日 8:56:46', '2014年11月15日 8:36:14', '已解决');
INSERT INTO `ljl_hitch` VALUES ('18', '妇一一区', '', '', '电脑不开机', '重装系统', '刘建磊', '刘建磊', '2014年11月15日 10:10:33', '2014年11月15日 8:37:24', '已解决');
INSERT INTO `ljl_hitch` VALUES ('19', '彩超室', '', '', '彩超1电脑蓝屏', '重启电脑', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 9:38:48', '已解决');
INSERT INTO `ljl_hitch` VALUES ('20', '骨二科', '', '', '长期医嘱执行科室选的医技科室,病人出院看不到开的长期医嘱的费用', '登录对应医技科室,在开单扣费处作废所有未扣费项目,让护士长补开后扣费解决', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 9:39:26', '已解决');
INSERT INTO `ljl_hitch` VALUES ('21', '收费处', '', '', '病人交费1100 发票上只有700 余100 少300元不知道去哪了 ', '收费处点结算后出现手术室开的300元麻醉药没打发票', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 10:32:46', '已解决');
INSERT INTO `ljl_hitch` VALUES ('22', '外一科', '', '', '外一治疗室电脑不开机', '长嗯电源键重启后解决', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 10:36:27', '已解决');
INSERT INTO `ljl_hitch` VALUES ('23', '检验科', '', '', '收费电脑显卡故障', '摘掉显卡', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 10:53:44', '已解决');
INSERT INTO `ljl_hitch` VALUES ('24', '护理部', '', '', '电脑网站首页改变', '调整回360首页', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 11:30:14', '已解决');
INSERT INTO `ljl_hitch` VALUES ('25', '内三科', '', '', '修改大屏幕内容', '2014年11月16日中午改回来即可', '刘建磊', '刘建磊', '立即解决', '2014年11月15日 11:30:43', '已解决');
INSERT INTO `ljl_hitch` VALUES ('26', '急诊科', '', '', '挪电话', '', '刘建磊', '', '2014年11月19日 8:56:39', '2014年11月18日 11:32:18', '已解决');
INSERT INTO `ljl_hitch` VALUES ('27', '检验科', '', '', '设置外网 备份系统 拷贝ghost文件', '', '刘建磊', '', '2014年11月19日 8:56:28', '2014年11月18日 11:32:34', '已解决');
INSERT INTO `ljl_hitch` VALUES ('28', '骨二科', '', '', '30.28 电话2835 护理记录 入院评估 中西医诊断 缺病种', '', '刘建磊', '', '2014年11月20日 9:55:55', '2014年11月19日 8:33:34', '已解决');
INSERT INTO `ljl_hitch` VALUES ('31', '信息科', '', '', '藁城服务器IP与密码', '', 'xugaiyan', '', '立即解决', '2014年11月23日 15:27:42', '已解决');
INSERT INTO `ljl_hitch` VALUES ('32', '外一科', '', '', '藁城服务器IP与密码', '', 'xugaiyan', '', '立即解决', '2014年11月23日 15:29:05', '已解决');
INSERT INTO `ljl_hitch` VALUES ('33', '妇一一区', '', '', '电脑死机', '', '', '', '2014年11月28日 10:24:36', '2014年11月28日 10:21:56', '已解决');
INSERT INTO `ljl_hitch` VALUES ('34', '妇一一区', '', '', '', '', '', '', '', '2014年11月28日 10:22:57', '未处理');
INSERT INTO `ljl_hitch` VALUES ('35', '急诊科', '', '', '内线电话故障', '', '刘建磊', '', '2014年12月3日星期三 14:52:11', '2014年11月30日 16:20:15', '已解决');
INSERT INTO `ljl_hitch` VALUES ('36', '高压氧', '', '', '碎石 高压氧 电话等待调整', '', '刘建磊', '', '2014年12月5日 10:47:57', '2014年11月30日 16:20:37', '已解决');
INSERT INTO `ljl_hitch` VALUES ('37', '住院处', '', '', '241857 骨一 卢早宝 18631122505 ', '1821412002374 农合号', '刘建磊', '', '2014年12月5日星期五 11:13:42', '2014年12月5日 10:47:00', '已解决');
INSERT INTO `ljl_hitch` VALUES ('38', '妇一二区', '', '', '医办室 网线问题', '整理交换机线路', '刘建磊', '刘建磊', '2014年12月7日星期日 11:33:55', '2014年12月5日 15:19:34', '已解决');
INSERT INTO `ljl_hitch` VALUES ('39', '急诊科', '', '', '120电话2G-SD卡坏了', '', '刘建磊', '', '2014年12月24日 11:32:16', '2014年12月5日 15:19:48', '已解决');
INSERT INTO `ljl_hitch` VALUES ('40', '中药房', '', '', '打印机换硒鼓', '更换', '刘建磊', '刘建磊', '立即解决', '2014年12月7日星期日 11:32:15', '已解决');
INSERT INTO `ljl_hitch` VALUES ('41', '彩超室', '', '', '彩超1更换踏板', '更换', '刘建磊', '刘建磊', '立即解决', '2014年12月7日星期日 11:32:47', '已解决');
INSERT INTO `ljl_hitch` VALUES ('42', '出生证明', '', '', '北边电脑慢', '维护', '刘建磊', '刘建磊', '立即解决', '2014年12月7日星期日 11:33:09', '已解决');
INSERT INTO `ljl_hitch` VALUES ('43', '护理部', '', '', '电子病历质控系统 查询未完成护理记录功能', '', '刘建磊', '', '2014年12月24日 11:32:26', '2014年12月11日 9:31:20', '已解决');
INSERT INTO `ljl_hitch` VALUES ('44', '信息科', '', '', '电子病历 药品规格单位选择 加个 u ', '登录his system 管理系统添加', '', '刘建磊', '2014年12月13日 10:47:29', '2014年12月12日 10:57:27', '已解决');
INSERT INTO `ljl_hitch` VALUES ('45', '儿科', '', '', '打印检查条码问题', '护士工号问题', '刘建磊', '刘建磊', '立即解决', '2014年12月13日 9:06:49', '已解决');
INSERT INTO `ljl_hitch` VALUES ('46', '门诊医保', '', '', '黑名单问题', '下载黑名单', '刘建磊', '刘建磊', '立即解决', '2014年12月13日 9:07:32', '已解决');
INSERT INTO `ljl_hitch` VALUES ('47', '内一科', '', '', '硒鼓异响', '周一更换', '刘建磊', '刘建磊', '立即解决', '2014年12月13日 10:30:13', '已解决');
INSERT INTO `ljl_hitch` VALUES ('48', '病案室', '', '', '打印机卡纸 任务无法删除', '重启后继续卡纸 重装驱动 清理打印机和硒鼓后解决', '刘建磊', '刘建磊', '立即解决', '2014年12月13日 10:46:47', '已解决');
INSERT INTO `ljl_hitch` VALUES ('49', '财务科', '', '', '秦主任对过屋 财务总监 剧主任申请内线电话一个', '', '刘建磊', '', '2014年12月23日 9:42:47', '2014年12月18日 8:43:41', '已解决');
INSERT INTO `ljl_hitch` VALUES ('50', '内二科', '', '', '门诊西边电脑 内存接触不良 电脑开机花屏', '拆机擦内存条', '刘建磊', '刘建磊', '立即解决', '2014年12月18日 8:51:53', '已解决');
INSERT INTO `ljl_hitch` VALUES ('51', '门诊医保', '', '', '3128 药房没有注册 请先注册 3126 3127 不能用', '', '刘建磊', '', '2014年12月25日星期四 11:18:42', '2014年12月24日 10:08:41', '已解决');
INSERT INTO `ljl_hitch` VALUES ('52', '内一科', '', '', '125.115 不能查看医技报告 ', '安装360 系统修复', '刘建磊', '刘建磊', '立即解决', '2014年12月24日 11:31:28', '已解决');
INSERT INTO `ljl_hitch` VALUES ('53', '病房药房', '', '', '2847报表统计问题 账号7013 密码7749 ', '过滤药品编码即可', '刘建磊', '', '2014年12月26日 8:29:50', '2014年12月24日 16:06:22', '已解决');
INSERT INTO `ljl_hitch` VALUES ('54', '住院医保', '', '', '医保关闭之前所有住院类别为医保的病人转成自费', '没有此类病人', '刘建磊', '刘建磊', '2014年12月25日 9:16:36', '2014年12月25日 8:28:40', '已解决');
INSERT INTO `ljl_hitch` VALUES ('55', '剧主任', '', '', '财务 药库 总务库 器械库\r\n外网 0.121 内网125.121 工号 7000 ', '装 qrapp 报表系统就醒了', '刘建磊', '刘建磊', '2014年12月25日星期四 11:18:20', '2014年12月25日 9:07:24', '已解决');
INSERT INTO `ljl_hitch` VALUES ('56', '总务库', '', '', '断网了', '墙角网线接触不良', '刘建磊', '刘建磊', '2014年12月25日星期四 11:17:50', '2014年12月25日星期四 10:13:09', '已解决');
INSERT INTO `ljl_hitch` VALUES ('57', '监控室', '', '<p>&nbsp;</p><p style=\"TEXT-ALIGN: center; FONT-SIZE: 21px\"><span style=\"FONT-SIZE: 21px\">世界卫生组织促进母乳喂养成功十条措施</span></p><p style=\"TEXT-ALIGN: center; FONT-SIZE: 21px\">&nbsp;</p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">1、有书面的母乳喂养规定，并常规地传达到全体卫生人员。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">2、对全体卫生人员进行必要的技术培训，使其能实施有关规定。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">3、把有关母乳喂养的好处及处理方法告诉所有的孕妇。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">4、帮助母亲在产后半小时内开始母乳喂养。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">5、指导母亲如何喂奶，以及在需与其新生儿分开的情况下如何保持泌乳。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">6、除母乳外，禁止给新生儿吃任何食物或饮料，除非有医学指征。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">7、实行24小时母婴同室。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">8、鼓励按需哺乳。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">9、不要给母乳喂养的新生儿吸人工奶头，或使用奶头作安慰物。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">10、促进母乳喂养支持组织的建立，并将出院的母亲转给这些组织。</span></p><p style=\"LINE-HEIGHT: 200%\">&nbsp;</p><p style=\"TEXT-ALIGN: center; FONT-SIZE: 21px\"><span style=\"FONT-SIZE: 21px\">国际母乳代用品销售守则</span></p><p style=\"TEXT-ALIGN: center; FONT-SIZE: 21px\">&nbsp;</p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">1、禁止对公众进行代乳品、奶瓶或橡皮奶嘴的广告宣传。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">2、禁止向母亲免费提供代乳品样品。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">3、禁止在卫生保健机构中使用这些产品。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">4、禁止向母亲推销这些产品。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">5、禁止向卫生保健工作者赠送礼品或样品。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">6、禁止以文字或图画等形式宣传人工喂养，包括在产品标签上印婴儿的图片。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">7、向卫生保健工作者提供的资料必须具有科学性和真实性。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">8、有关人工喂养的所有资料包括产品标签都应该说明母乳喂养的优点及人工喂养的代价与危害。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">9、不适当的产品，如加糖炼乳，不应推销给婴儿。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 宋体; FONT-SIZE: 16px\"><span style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16px\">10、所有的食品必须是高质量的，同时要考虑到使用这些食品的国家的气候条件及储存条件。</span></p><p style=\"FONT-SIZE: 21px\">&nbsp;</p><p style=\"TEXT-ALIGN: center; FONT-SIZE: 21px\">&nbsp;</p><p style=\"TEXT-ALIGN: center; LINE-HEIGHT: 200%; FONT-SIZE: 29px\"><strong style=\"FONT-SIZE: 29px\">石家庄市藁城中西医结合医院</strong></p><p style=\"TEXT-ALIGN: center; LINE-HEIGHT: 200%; FONT-SIZE: 29px\"><strong style=\"FONT-SIZE: 29px\">母乳喂养管理规定</strong></p><p style=\"TEXT-ALIGN: center; LINE-HEIGHT: 150%; FONT-SIZE: 21px\">&nbsp;</p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">1、成立爱婴医院促进母乳喂养领导小组，认真执行WHO促进母乳喂养成功的十项措施。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">2、组织全院人员学习母乳喂养知识，对所有接触母亲和婴儿的医务人员进行母乳喂养知识培训。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">3、对所有来院的孕产妇及家属进行母乳喂养宣传指导，使孕妇及家属认识到母乳喂养的好处，建立母乳喂养的信心。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">4、帮助母婴在产后1小时内进行母婴皮肤接触、早吸吮，早吸吮时间不少于30分钟。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">5、实行24小时母婴同室，因医疗需要或其它操作需要母婴暂时分开时，不得超过1小时。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">6、指导母亲正确的喂奶体位和婴儿的含接姿势，教会母亲挤奶方法，及时解决喂养中出现的问题。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">7、坚持纯母乳喂养，除有医学指征外，禁止给新生儿吃母乳以外任何代乳品。废除奶瓶及橡胶奶头，不用奶嘴作安慰物。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">8、鼓励按需哺乳，不限制哺乳时间、次数，坚持夜间哺乳。</span></p><p style=\"LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">9、严格执行《国际母乳代用品销售守则》，不销售代乳品、不接受母乳代用品厂商的馈赠。</span></p><p style=\"TEXT-ALIGN: left; LINE-HEIGHT: 200%; TEXT-INDENT: 2em; FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\"><span style=\"FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 20px\">10、将出院的母亲介绍到所在的乡镇卫生院继续指导母乳喂养。设立母乳喂养咨询门诊及热线电话（热线电话：0311-88149852）。</span></p><p></p>', '母乳喂养材料', '', '刘建磊', '', '', '2014年12月25日星期四 11:25:01', '已完成');
INSERT INTO `ljl_hitch` VALUES ('58', '监控室', '', '', '换成母乳喂养', '已经更换', '刘建磊', '', '2014年12月26日 8:30:19', '2014年12月25日星期四 11:26:07', '已解决');
INSERT INTO `ljl_hitch` VALUES ('59', '检验科', '', '', '大鹏给张更华 回电话', '', '刘建磊', '', '2014年12月26日星期五 09:37:55', '2014年12月26日 8:25:54', '已解决');
INSERT INTO `ljl_hitch` VALUES ('60', '医务科', '', '', '刘主任电脑开机死机 ', '删除搜狗壁纸', '刘建磊', '', '立即解决', '2014年12月26日 8:28:53', '已解决');
INSERT INTO `ljl_hitch` VALUES ('61', '儿科', '', '', '西三电脑不开机', '', '刘建磊', '', '2014年12月26日星期五 09:38:02', '2014年12月26日 8:29:24', '已解决');
INSERT INTO `ljl_hitch` VALUES ('63', '内三科', '', '', '透析器 内三 血透 改成都可开 都可扣费', 'price 修改单据类型', '刘建磊', '刘建磊', '2015年1月1日 15:44:44', '2014年12月31日星期三 08:25:02', '已解决');
INSERT INTO `ljl_hitch` VALUES ('64', '门诊医保', '', '', '慢性病 读卡报错', '', '刘建磊', '', '2015年1月1日 15:44:37', '2014年12月31日 8:41:19', '已解决');
INSERT INTO `ljl_hitch` VALUES ('65', '骨二科', '', '<p>&nbsp;<img title=\"54a4fb5262ffc.JPG\" alt=\"长期输液单出现自备药.JPG\" src=\"/public/uploads/anonymity/201501/54a4fb5262ffc.jpg\"/></p>', '长期输液单出现自备外用药', '', '刘建磊', '', '', '2015年1月1日 15:45:24', '未解决');
INSERT INTO `ljl_hitch` VALUES ('66', '病案室', '', '', '病案室报表问题', '', '刘建磊', '', '2015年1月15日 8:35:29', '2015年1月5日 8:57:34', '已解决');
INSERT INTO `ljl_hitch` VALUES ('67', '外一科', '', '', '门诊电话坏', '', '刘建磊', '', '2015年1月15日 8:35:19', '2015年1月5日 10:24:27', '已解决');
INSERT INTO `ljl_hitch` VALUES ('68', '财务科', '', '', '门诊上 敬老院卡允许欠费设置', '', '刘建磊', '', '2015年1月16日 10:50:35', '2015年1月7日 8:35:43', '已解决');
INSERT INTO `ljl_hitch` VALUES ('69', '检验科', '', '', '出院 内四 刘书敏 苏俊平5管血\r\n内三 26床 瞪艳强5管血\r\n', '', '刘建磊', '', '2015年1月15日 8:35:50', '2015年1月9日 11:03:48', '已解决');
INSERT INTO `ljl_hitch` VALUES ('70', '内五科', '', '', '东北角电脑需要摘显卡', '摘了', '刘建磊', '刘建磊', '2015年1月28日 8:59:21', '2015年1月15日 9:50:11', '已解决');
INSERT INTO `ljl_hitch` VALUES ('71', '五官科', '', '', '248428 年龄38 长期医嘱单39需要修改 回2859', '李工解决', '刘建磊', '李工', '2015年1月15日 10:05:44', '2015年1月15日 9:50:34', '已解决');
INSERT INTO `ljl_hitch` VALUES ('72', '检验科', '', '', '范主任找', 'lis程序 自己好了', '刘建磊', '', '2015年1月16日 10:50:13', '2015年1月15日 9:53:00', '已解决');
INSERT INTO `ljl_hitch` VALUES ('73', '皮肤科', '', '', '孙主任手机贴膜', '', '', '', '2015年1月19日星期一 10:28:36', '2015年1月19日 8:41:58', '已解决');
INSERT INTO `ljl_hitch` VALUES ('74', '急诊科病房', '', '', '病案首页 指控医生修改', '', '刘建磊', '', '2015年1月19日星期一 10:28:31', '2015年1月19日 8:42:19', '已解决');
INSERT INTO `ljl_hitch` VALUES ('75', '住院医保', '', '<p><span style=\"FONT-SIZE: 18px\">&nbsp;甘精胰岛素 206</span></p><p><span style=\"FONT-SIZE: 18px\">&nbsp;重组人胰岛素 45.6</span></p>', '医保对照项目问题', '', '刘建磊', '', '', '2015年1月22日 11:38:12', '未解决');
INSERT INTO `ljl_hitch` VALUES ('77', '内三科', '', '<p>&nbsp;<img title=\"54c3045057bcf.png\" alt=\"2015年1月24日病人数据错乱.png\" src=\"/public/uploads/anonymity/201501/54c3045057bcf.png\"/></p>', '电子病历 病人数据错乱', '', '刘建磊', '', '', '2015年1月24日 10:32:38', '未解决');

-- ----------------------------
-- Table structure for `ljl_user`
-- ----------------------------
DROP TABLE IF EXISTS `ljl_user`;
CREATE TABLE `ljl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `account` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ljl_user
-- ----------------------------
INSERT INTO `ljl_user` VALUES ('1', '刘建磊', '6003');
