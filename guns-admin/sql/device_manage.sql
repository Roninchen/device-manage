/*
Navicat MySQL Data Transfer

Source Server         : device.codingfine.com
Source Server Version : 50557
Source Host           : device.codingfine.com:3306
Source Database       : device_manage

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2018-11-28 13:09:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) DEFAULT '' COMMENT '设备名称',
  `version` varchar(50) DEFAULT '' COMMENT '设备型号',
  `uuid` varchar(50) DEFAULT '' COMMENT '通用唯一识别码',
  `type` int(2) DEFAULT NULL COMMENT '设备类型',
  `number` int(20) DEFAULT NULL COMMENT '编号',
  `status` int(3) DEFAULT NULL COMMENT '状态',
  `responsible_id` bigint(11) DEFAULT NULL COMMENT '责任人id',
  `responsible_name` varchar(20) DEFAULT '' COMMENT '负责人名字',
  `hold_person_id` bigint(11) DEFAULT NULL COMMENT '持有人id',
  `hold_person_name` varchar(20) DEFAULT '' COMMENT '持有者名字',
  `create_time` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------

-- ----------------------------
-- Table structure for device_flow
-- ----------------------------
DROP TABLE IF EXISTS `device_flow`;
CREATE TABLE `device_flow` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `device_id` int(20) DEFAULT NULL COMMENT '设备id',
  `device_uuid` varchar(50) DEFAULT '' COMMENT '通用唯一识别码',
  `device_name` varchar(50) DEFAULT '' COMMENT '设备名字',
  `lend_from` varchar(50) DEFAULT '' COMMENT '借出人id',
  `lend_to` varchar(50) DEFAULT '' COMMENT '借入人id',
  `lend_from_name` varchar(20) DEFAULT '' COMMENT '借出人名字',
  `lend_to_name` varchar(20) DEFAULT '' COMMENT '借入人名字',
  `status` int(4) DEFAULT NULL COMMENT '设备流转状态,1待同意，2已同意，3已拒绝，4已被其他人借用',
  `create_time` bigint(13) DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(13) DEFAULT NULL COMMENT '更新时间',
  `remark` text COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_flow
-- ----------------------------

-- ----------------------------
-- Table structure for fix_asset
-- ----------------------------
DROP TABLE IF EXISTS `fix_asset`;
CREATE TABLE `fix_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(50) DEFAULT '',
  `enterprise_no` varchar(50) DEFAULT '' COMMENT '企业编号',
  `device_name` varchar(50) DEFAULT '' COMMENT '设备名称',
  `device_model` varchar(50) DEFAULT '' COMMENT '型号',
  `technique_target` varchar(50) DEFAULT '' COMMENT '技术指标',
  `manufactor` varchar(50) DEFAULT '' COMMENT '国别厂家',
  `type` int(2) DEFAULT '1' COMMENT '设备分类，1为计量设备',
  `status` int(2) DEFAULT '0' COMMENT '管理状态,0为封存，1为已领用',
  `charge` varchar(50) DEFAULT '' COMMENT '负责人名字',
  `charge_email` varchar(50) DEFAULT '' COMMENT '负责人email',
  `owner` varchar(50) DEFAULT '' COMMENT '持有人',
  `owner_email` varchar(50) DEFAULT '' COMMENT '持有人email',
  `is_fix` int(1) DEFAULT '1' COMMENT '是否为固定资产，1是固定资产',
  `create_time` bigint(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1664 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fix_asset
-- ----------------------------
INSERT INTO `fix_asset` VALUES ('1', 'D09020165', 'D09020165', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('2', 'D09020166', 'D09020166', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('3', 'D09020167', 'D09020167', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('4', 'D09020168', 'D09020168', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('5', 'D09020169', 'D09020169', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('6', 'F06010002', 'F06010002', '数字温湿度表', 'HT-5B', '温度：0-50℃±1℃  湿度： 0-99%±3RH', '汉唐电子有限公司', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('7', 'F06010003', 'F06010003', '数字温湿度表', 'HT-5B', '温度：0-50℃±1℃  湿度： 0-99%±3RH', '汉唐电子有限公司', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('8', 'F06010004', 'F06010004', '数字温湿度表', 'HT-5B', '温度：0-50℃±1℃  湿度： 0-99%±3RH', '汉唐电子有限公司', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('9', 'F06010005', 'F06010005', '数字温湿度表', 'HT-5B', '温度：0-50℃±1℃  湿度： 0-99%±3RH', '汉唐电子有限公司', '1', '1', '包杰', 'server8511.baojie_8511', '包杰', 'server8511.baojie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('10', 'D09010230', 'D09010230', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '鲍成浩', 'server8511.baochenghao_8511', '鲍成浩', 'server8511.baochenghao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('11', 'D09010290', 'D09010290', '直流稳压电源', 'APS 3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '鲍成浩', 'server8511.baochenghao_8511', '鲍成浩', 'server8511.baochenghao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('12', 'W07020041', 'W07020041', '信号源', 'N5181A', '10MHZ~6GHZ', '美国Agilent公司', '1', '1', '鲍成浩', 'server8511.baochenghao_8511', '鲍成浩', 'server8511.baochenghao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('13', 'W07020045', 'W07020045', '矢量信号源', 'E8267D', '250KHz ~20GHz', '美国Agilent公司', '1', '1', '鲍成浩', 'server8511.baochenghao_8511', '鲍成浩', 'server8511.baochenghao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('14', 'W07020088', 'W07020088', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国R&S公司', '1', '1', '鲍成浩', 'server8511.baochenghao_8511', '鲍成浩', 'server8511.baochenghao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('15', 'D09020088', 'D09020088', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '薄超', 'server8511.bochao_8511', '薄超', 'server8511.bochao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('16', 'D09010377', 'D09010377', '程控电源', 'N6702A', '-5~28V 0~3A', '美国Keysight公司', '1', '1', '曹宝龙', 'server8511.caobaolong_8511', '曹宝龙', 'server8511.caobaolong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('17', 'W07020023', 'W07020023', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '曹鑫', 'server8511.caoxin_8511', '曹鑫', 'server8511.caoxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('18', 'D09010297', 'D09010297', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈程', 'server8511.chencheng_8511', '陈程', 'server8511.chencheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('19', 'D09010188', 'D09010188', '直流稳压电源', 'GPS-3303C', '32V/3A双路', '苏州固伟', '1', '1', '陈海忠', '', '陈海忠', '', '1', null);
INSERT INTO `fix_asset` VALUES ('20', 'D05040026', 'D05040026', '数字多用表', 'FLUKE45', '4.5位', '北京无线电仪表所', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('21', 'D05040031', 'D05040031', '数字多用表', '8808A', '5位半', '美国FLUKE公司', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('22', 'R06010024', 'R06010024', '电子天平', 'JSC-6+', '0-6000g  1g', '惠尔邦公司', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('23', 'R06010028', 'R06010028', '电子秤', 'AHC-6', '6Kg  0.1g', '台衡公司', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('24', 'R06010029', 'R06010029', '电子秤', 'AHC-15', '15Kg  0.2g', '台衡公司', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('25', 'W04010015', 'W04010015', '数字电桥', 'QJ83B', '2~20MΩ分辨率0.1', '上海兰斯汀仪表', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('26', 'W04010016', 'W04010016', '数字电桥', 'QJ83B', '2~20MΩ分辨率0.1', '上海兰斯汀仪表', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('27', 'W04010017', 'W04010017', '数字电桥', 'QJ83B', '2~20MΩ分辨率0.1', '上海兰斯汀仪表', '1', '1', '陈江超', '', '陈江超', '', '1', null);
INSERT INTO `fix_asset` VALUES ('28', 'G02060002', 'G02060002', '激光测距仪', 'GLM250VF', '0.05-250M±1.0mm', '博世有限公司', '1', '1', '陈金仕', 'server8511.chenjinshi_8511', '陈金仕', 'server8511.chenjinshi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('29', 'D05040019', 'D05040019', '数字多用表', 'FLUKE45', '4.5位', '北京无线电技研所', '1', '1', '陈乐', 'server8511.chenle_8511', '陈乐', 'server8511.chenle_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('30', 'D09010211', 'D09010211', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈乐', 'server8511.chenle_8511', '陈乐', 'server8511.chenle_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('31', 'D09010227', 'D09010227', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈乐', 'server8511.chenle_8511', '陈乐', 'server8511.chenle_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('32', 'W07050009', 'W07050009', '函数发生器', '33120A', '/', 'HP公司', '1', '1', '陈乐', 'server8511.chenle_8511', '陈乐', 'server8511.chenle_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('33', 'W08010139', 'W08010139', '数字示波器', 'TDS1012C-SC', '100MHZ', '泰克中国分公司', '1', '1', '陈乐', 'server8511.chenle_8511', '陈乐', 'server8511.chenle_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('34', 'D09010184', 'D09010184', '直流稳压电源', 'GPS-3303C', '32V/3A三路', '苏州固伟', '1', '1', '陈敏', 'server8511.chenmin_8511', '陈敏', 'server8511.chenmin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('35', 'D09010185', 'D09010185', '直流稳压电源', 'GPS-3303C', '32V/3A三路', '苏州固伟', '1', '1', '陈敏', 'server8511.chenmin_8511', '陈敏', 'server8511.chenmin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('36', 'D09020114', 'D09020114', '中频电源', 'WE13006', '3KVA/5HZ~400HZ', '中国爱克赛', '1', '1', '陈敏', 'server8511.chenmin_8511', '陈敏', 'server8511.chenmin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('37', 'W07020036', 'W07020036', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '陈敏', 'server8511.chenmin_8511', '陈敏', 'server8511.chenmin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('38', 'W08120051', 'W08120051', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '陈涛', '', '陈涛', '', '1', null);
INSERT INTO `fix_asset` VALUES ('39', 'D09010384', 'D09010384', '程控电源', 'N6702A', '-5~28V 0~3A', '美国Keysight公司', '1', '1', '陈望杰', 'server8511.chenwangjie_8511', '陈望杰', 'server8511.chenwangjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('40', 'D09010385', 'D09010385', '程控电源', 'N6702A', '-5~28V3A', '美国Keysight公司', '1', '1', '陈望杰', 'server8511.chenwangjie_8511', '陈望杰', 'server8511.chenwangjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('41', 'W07050010', 'W07050010', '任意波发生器', 'N8241A', '/', '美国Agilent公司', '1', '1', '陈望杰', 'server8511.chenwangjie_8511', '陈望杰', 'server8511.chenwangjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('42', 'D01030004', 'D01030004', '数字钳型表', 'LH41A', '0-40A(99.9Hz-99.9KHz)10mA\r\n0-4A(1mA)', 'AMPROE公司', '1', '1', '陈曦', 'server8511.chenxi_8511', '陈曦', 'server8511.chenxi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('43', 'D01030005', 'D01030005', '数字钳型表', 'LH41A', '0-40A(99.9Hz-99.9KHz)10mA\r\n0-4A(1mA)', 'AMPROE公司', '1', '1', '陈曦', 'server8511.chenxi_8511', '陈曦', 'server8511.chenxi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('44', 'D09010321', 'D09010321', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈羽', 'server8511.chenyu_8511', '陈羽', 'server8511.chenyu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('45', 'D09010322', 'D09010322', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈羽', 'server8511.chenyu_8511', '陈羽', 'server8511.chenyu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('46', 'D09010323', 'D09010323', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈羽', 'server8511.chenyu_8511', '陈羽', 'server8511.chenyu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('47', 'D09010324', 'D09010324', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈羽', 'server8511.chenyu_8511', '陈羽', 'server8511.chenyu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('48', 'W08010153', 'W08010153', '数字示波器', 'WR640Zi', '带宽：4GHz；采样率：20-40GS/S/CH;\r\n通道数：4', '美国力科公司', '1', '1', '陈羽', 'server8511.chenyu_8511', '陈羽', 'server8511.chenyu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('49', 'W08010114', 'W08010114', '数字示波器', 'TDS-684B', '1GHZ', '美国泰克公司', '1', '1', '陈元泰', 'server8511.chenyuantai_8511', '陈元泰', 'server8511.chenyuantai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('50', 'D09010333', 'D09010333', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈舟', 'server8511.chenzhou_8511', '陈舟', 'server8511.chenzhou_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('51', 'D09010334', 'D09010334', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '陈舟', 'server8511.chenzhou_8511', '陈舟', 'server8511.chenzhou_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('52', 'W07020014', 'W07020014', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '陈舟', 'server8511.chenzhou_8511', '陈舟', 'server8511.chenzhou_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('53', 'W08010162', 'W08010162', '数字示波器', 'TDS1001B', '100MHZ', '泰克中国分公司', '1', '1', '陈舟', 'server8511.chenzhou_8511', '陈舟', 'server8511.chenzhou_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('54', 'W07020051', 'W07020051', '矢量信号源', 'E8267D', '250KHz~20GHz', '美国Agilent公司', '1', '1', '成继隆', 'server8511.chengjilong_8511', '成继隆', 'server8511.chengjilong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('55', 'W08010140', 'W08010140', '数字示波器', 'TDS1012C-SC', '100MHZ', '泰克中国分公司', '1', '1', '成继隆', 'server8511.chengjilong_8511', '成继隆', 'server8511.chengjilong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('56', 'W08010154', 'W08010154', '示波器', 'RTO1024', '2GHZ', '德国RS公司', '1', '1', '成继隆', 'server8511.chengjilong_8511', '成继隆', 'server8511.chengjilong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('57', 'W08120061', 'W08120061', '频谱分析仪', 'FSW26', '2HZ~26.5GHZ', '德国R&S公司', '1', '1', '成继隆', 'server8511.chengjilong_8511', '成继隆', 'server8511.chengjilong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('58', 'W07020040', 'W07020040', '信号源', 'MG37022A', '10MHZ~20GHZ', '美国安立公司', '1', '1', '池少腾', 'server8511.chishaoteng_8511', '池少腾', 'server8511.chishaoteng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('59', 'D09010186', 'D09010186', '直流稳压电源', 'GPS-3303C', '32V/3A双路', '苏州固伟', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('60', 'D09010189', 'D09010189', '直流稳压电源', 'GPS-3303C', '32V/3A三路', '苏州固伟', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('61', 'D09010192', 'D09010192', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('62', 'D09010193', 'D09010193', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('63', 'D09010234', 'D09010234', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('64', 'R06010011', 'R06010011', '电子秤', 'JSC-ATW-6', '6Kg', '惠而邦公司', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('65', 'W02020006', 'W02020006', '功率计', 'EPM-E441A', '10MHZ~18GHZ', 'HP公司', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('66', 'W06040011', 'W06040011', '标量网络分析仪', '54147A', '10MHz-20GHz', '美国安立公司', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('67', 'W07020015', 'W07020015', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('68', 'W08010115', 'W08010115', '示波器', 'SS7810', '100MHz', '日本岩崎', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('69', 'W08120032', 'W08120032', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('70', 'W08120033', 'W08120033', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '仇必鹏', 'server8511.qiubipeng_8511', '仇必鹏', 'server8511.qiubipeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('71', 'D09020184', 'D09020184', '不间断电源', 'C3KS', '3KVA', '山特', '1', '1', '戴金亮', 'server8511.daijinliang_8511', '戴金亮', 'server8511.daijinliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('72', 'W08120031', 'W08120031', '频谱仪', 'MS2724B', '9KHZ~20GHZ', '美国安立公司', '1', '1', '丁其洪', 'server8511.dingqihong_8511', '丁其洪', 'server8511.dingqihong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('73', 'F06010009', 'F06010009', '数字温湿度表', 'HF-7', '温度：0-50℃±1℃  湿度： 0-99%±3RH', '上海鉴龙电子工程有限公司', '1', '1', '丁玮琦', 'server8511.dingweiqi_8511', '丁玮琦', 'server8511.dingweiqi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('74', 'D09010380', 'D09010380', '程控电源', 'N6702A', '-5~28V 0~3A', '美国Keysight公司', '1', '1', '董国正', 'server8511.dongguozheng_8511', '董国正', 'server8511.dongguozheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('75', 'W08010149', 'W08010149', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '董国正', 'server8511.dongguozheng_8511', '董国正', 'server8511.dongguozheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('76', 'D09010331', 'D09010331', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '董华飞', 'server8511.donghuafei_8511', '董华飞', 'server8511.donghuafei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('77', 'D09010332', 'D09010332', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '董华飞', 'server8511.donghuafei_8511', '董华飞', 'server8511.donghuafei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('78', 'W03040002', 'W03040002', '信号源分析仪', 'FSUP26', '频率范围：2MHZ~26.5GHZ；\r\n相噪测试范围：1MHz-26.5GHz（含相噪）', '德国R&S公司', '1', '1', '董华飞', 'server8511.donghuafei_8511', '董华飞', 'server8511.donghuafei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('79', 'W08120022', 'W08120022', '频谱分析仪', 'FSU26', '20HZ~26.5GHZ', '德国R&S公司', '1', '1', '董华飞', 'server8511.donghuafei_8511', '董华飞', 'server8511.donghuafei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('80', 'D09020170', 'D09020170', '不间断电源', '山特3KVA', '3KVA  延时2小时', '山特公司', '1', '1', '董景明', 'server8511.dongjingming_8511', '董景明', 'server8511.dongjingming_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('81', 'D09020172', 'D09020172', 'UPS', 'MP20K', '20KVA 40-70HZ/220V', '山特公司', '1', '1', '董景明', 'server8511.dongjingming_8511', '董景明', 'server8511.dongjingming_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('82', 'D09020146', 'D09020146', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '董俊健', 'server8511.dongjunjian_8511', '董俊健', 'server8511.dongjunjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('83', 'D09010201', 'D09010201', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '董乔忠', 'server8511.dongqiaozhong_8511', '董乔忠', 'server8511.dongqiaozhong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('84', 'D05040015', 'D05040015', '数字多用表', '3478A', '5.5位', 'HP公司', '1', '1', '杜菊华', 'server8511.dujuhua_8511', '杜菊华', 'server8511.dujuhua_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('85', 'D09010195', 'D09010195', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '杜菊华', 'server8511.dujuhua_8511', '杜菊华', 'server8511.dujuhua_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('86', 'W03050024', 'W03050024', '多功能计数器', 'HP5361B', '10HZ~20GHZ', 'HP公司', '1', '1', '杜菊华', 'server8511.dujuhua_8511', '杜菊华', 'server8511.dujuhua_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('87', 'W07040024', 'W07040024', '脉冲发生器', '81110A', '脉宽10-999.5S;', '美国Agilent公司', '1', '1', '范敏', 'server8511.fanmin_8511', '范敏', 'server8511.fanmin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('88', 'W07020072', 'W07020072', '信号源', 'SMF100A', '100KHZ~43.5GHZ', '德国RS公司', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('89', 'W07020100', 'W07020100', '宽带上变频器', 'SMW200A', '100KHZ~20GHZ', '德国RS公司', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('90', 'W07020101', 'W07020101', '宽带上变频器', 'SMW200A', '100KHZ~20GHZ', '德国RS公司', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('91', 'W07020102', 'W07020102', '宽带上变频器', 'SMW200A', '100KHZ~20GHZ', '德国RS公司', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('92', 'W07050018', 'W07050018', '基带信号发生器', 'M8190A', '通道数:2  分辨率:12bit 采样率:12GSa/s\r\n存储深度:每通道2048MSa', '美国Keysight', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('93', 'W07050020', 'W07050020', '基带信号发生器', 'M8190A', '通道数:2  分辨率:12bit 采样率:12GSa/s\r\n存储深度:每通道2048MSa', '美国Keysight', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('94', 'W07050021', 'W07050021', '基带信号发生器', 'M8190A', '通道数:2  分辨率:12bit 采样率:12GSa/s\r\n存储深度:每通道2048MSa', '美国Keysight', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('95', 'W08120077', 'W08120077', '频谱分析仪', 'N9030A', '3HZ~26.5GHZ(含相噪)', '美国keysight公司', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('96', 'D09010275', 'D09010275', '直流稳压电源', 'APS 3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '冯清', 'server8511.fengqing_8511', '冯清', 'server8511.fengqing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('97', 'D05040025', 'D05040025', '数字多用表', 'FLUKE45', '4.5位', '北京无线电仪表所', '1', '1', '高京修', 'server8511.gaojingxiu_8511', '高京修', 'server8511.gaojingxiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('98', 'W08010136', 'W08010136', '数字示波器', 'TDS1012C-SC', '100MHZ', '泰克中国分公司', '1', '1', '高晓冬', 'server8511.gaoxiaodong_8511', '高晓冬', 'server8511.gaoxiaodong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('99', 'D09010215', 'D09010215', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '高兴建', 'server8511.gaoxingjian_8511', '高兴建', 'server8511.gaoxingjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('100', 'W07020043', 'W07020043', '信号源', 'N5181A', '10MHZ~6GHZ', '美国Agilent公司', '1', '1', '高兴建', 'server8511.gaoxingjian_8511', '高兴建', 'server8511.gaoxingjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('101', 'W07020047', 'W07020047', '矢量信号源', 'SMBV100A', '9KHZ~6GHZ', '德国RS公司', '1', '1', '高兴建', 'server8511.gaoxingjian_8511', '高兴建', 'server8511.gaoxingjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('102', 'D05030002', 'D05030002', '表面电阻测试仪', 'ACL800', '10^3 ~10^12 欧姆', '美国ACL公司', '1', '1', '耿彬彬', 'server8511.gengbinbin_8511', '耿彬彬', 'server8511.gengbinbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('103', 'D09010198', 'D09010198', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '顾骐', 'server8511.guqi_8511', '顾骐', 'server8511.guqi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('104', 'D09010212', 'D09010212', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '顾骐', 'server8511.guqi_8511', '顾骐', 'server8511.guqi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('105', 'W07020056', 'W07020056', '信号源', '2042', '10KHZ~5.4GHZ', '美国艾法斯公司', '1', '1', '顾琦炜', 'server8511.guqiwei_8511', '顾琦炜', 'server8511.guqiwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('106', 'D09020147', 'D09020147', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('107', 'D09020148', 'D09020148', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('108', 'W07020016', 'W07020016', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('109', 'W07020098', 'W07020098', '信号源', 'E8257D', '100KHZ~40GHZ', '美国keysight公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('110', 'W08010129', 'W08010129', '数字示波器', 'WR104MXi', '1GHz', '美国力科公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('111', 'W08010131', 'W08010131', '数字示波器', 'WR104MXi', '1GHz', '美国力科公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('112', 'W08120012', 'W08120012', '频谱分析仪', 'E4408B', '9KHZ-26.5GHZ', 'HP公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('113', 'D09020098', 'D09020098', '不间断电源', 'APC-8KV', '', '美国APC', '1', '1', '郭征兵', 'server8511.guozhengbing_8511', '郭征兵', 'server8511.guozhengbing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('114', 'D09020140', 'D09020140', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('115', 'D09020141', 'D09020141', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('116', 'W03050027', 'W03050027', '微波频率计', '53151A', '频率范围：10HZ~26.5GHZ；', '美国Agilent公司', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('117', 'W06040019', 'W06040019', '矢量网络分析仪', 'ZVA24', '10MHZ~24GHZ', '德国R&S公司', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('118', 'W06040020', 'W06040020', '脉冲矢量网络仪', 'ZVA40', '10MHZ~40GHZ', '德国R&S公司', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('119', 'W07020077', 'W07020077', '信号源', 'E8257D', '250KHZ~40GHZ', '美国keysight公司', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('120', 'W08010142', 'W08010142', '宽带示波器', 'DSO90804A', '8GHz', '美国Agilent公司', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('121', 'W12060004', 'W12060004', '噪声测试仪', 'N8975A', '10MHZ~26.5GHZ', '美国Agilent公司', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('122', 'D09010262', 'D09010262', '直流稳压电源', 'E3648A', '0-20V 2.5A ;0-8V 5A', 'Agilent公司', '1', '1', '韩旭', 'server8511.hanxu_8511', '韩旭', 'server8511.hanxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('123', 'D09010264', 'D09010264', '直流稳压电源', 'E3648A', '0-20V 2.5A ;0-8V 5A', 'Agilent公司', '1', '1', '韩旭', 'server8511.hanxu_8511', '韩旭', 'server8511.hanxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('124', 'D09010371', 'D09010371', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('125', 'D09010372', 'D09010372', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('126', 'W06090033', 'W06090033', '同轴固定衰减器', 'DTS150G-A', '150WDC~18GHz（专用）', '上海华湘公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('127', 'W06090034', 'W06090034', '同轴固定衰减器', 'DTS150G-A', '150WDC~18GHz（专用）', '上海华湘公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('128', 'W06090035', 'W06090035', '同轴固定衰减器', 'DTS150G-A', '150WDC~18GHz（专用）', '上海华湘公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('129', 'W06090043', 'W06090043', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('130', 'W06090085', 'W06090085', '衰减器', 'WDTS400', 'DC-8GHZ/400W/40db', '上海华湘', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('131', 'W06090086', 'W06090086', '衰减器', 'WDTS400', 'DC-8GHZ/400W/40db', '上海华湘', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('132', 'W07020059', 'W07020059', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国RS公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('133', 'W08010157', 'W08010157', '数字示波器', 'MSO5104B', '1GHZ', '泰克中国分公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('134', 'W08120014', 'W08120014', '频谱分析仪', 'AV4033', '30HZ~26.5GHZ', '41所', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('135', 'W08120041', 'W08120041', '频谱分析仪', 'FSU26', '20HZ~26.5GHZ', '德国RS公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('136', 'W08120071', 'W08120071', '射频接收机', 'N6841A', '6GHZ', '美国keysight公司', '1', '1', '何国辉', '', '何国辉', '', '1', null);
INSERT INTO `fix_asset` VALUES ('137', 'W08010159', 'W08010159', '数字示波器', 'RTO1014', '1GHZ', 'R&S公司', '1', '1', '侯文栋', 'server8511.houwendong_8511', '侯文栋', 'server8511.houwendong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('138', 'D09010243', 'D09010243', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '胡梦婕', 'server8511.humengjie_8511', '胡梦婕', 'server8511.humengjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('139', 'D09010244', 'D09010244', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '胡梦婕', 'server8511.humengjie_8511', '胡梦婕', 'server8511.humengjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('140', 'R06010008', 'R06010008', '电子秤', 'DS-688', '', '上海寺冈公司', '1', '1', '胡梦婕', 'server8511.humengjie_8511', '胡梦婕', 'server8511.humengjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('141', 'W02020013', 'W02020013', '峰值微波功率计', 'AV2441', '0.5GHZ~40GHZ', '41所', '1', '1', '胡梦婕', 'server8511.humengjie_8511', '胡梦婕', 'server8511.humengjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('142', 'W08120048', 'W08120048', '频谱分析仪', 'FSU43', '20HZ~43.5GHZ', '德国R&S公司', '1', '1', '胡梦婕', 'server8511.humengjie_8511', '胡梦婕', 'server8511.humengjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('143', 'W08120063', 'W08120063', '频谱仪', 'FSW43', '100KHZ~43GHZ', '德国R&S公司', '1', '1', '胡梦婕', 'server8511.humengjie_8511', '胡梦婕', 'server8511.humengjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('144', 'W07020049', 'W07020049', '矢量信号源', 'E8267D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '胡新宇', 'server8511.huxinyu_8511', '胡新宇', 'server8511.huxinyu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('145', 'W08120023', 'W08120023', '频谱分析仪', 'MS2721A', '100KHZ~7.1GHZ', '美国安立公司', '1', '1', '胡新宇', 'server8511.huxinyu_8511', '胡新宇', 'server8511.huxinyu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('146', 'W07020073', 'W07020073', '信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '胡宇冉', 'server8511.huyuran_8511', '胡宇冉', 'server8511.huyuran_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('147', 'W08120018', 'W08120018', '频谱分析仪', 'E4407B', '9KHZ~26.5GHZ', '美国Agilent公司', '1', '1', '胡宇冉', 'server8511.huyuran_8511', '胡宇冉', 'server8511.huyuran_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('148', 'D09010251', 'D09010251', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '胡云', 'server8511.huyun_8511', '胡云', 'server8511.huyun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('149', 'D09010252', 'D09010252', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '胡云', 'server8511.huyun_8511', '胡云', 'server8511.huyun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('150', 'F01020001', 'F01020001', '酸度计', 'HI98121', '(0-14)PH', '意大利哈拉', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('151', 'F06990009', 'F06990009', '数字粘度计', 'RPDV-1', '50-30万mpa.s  测量精度:±2.0%', '上海尼润智能科技公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('152', 'F06990010', 'F06990010', '数字粘度计', 'RPDV-1', '50-30万mpa.s  测量精度:±2.0%', '上海尼润智能科技公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('153', 'Q01090001', 'Q01090001', '拉力仪', 'SH-10K', '0-10kn', '温州山度公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('154', 'Q02010002', 'Q02010002', '涂层测厚仪', 'Positec 6000', '测量范围：0-1000um分辨率：0.1um', '美国Deflsko公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('155', 'R02060001', 'R02060001', '压力校验仪', 'F717-500G', '(0-10.3)bar', '美国FLUKE公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('156', 'R06010002', 'R06010002', '标准天平', 'AEL-200', '0.01-200g 0.0001g', '日本', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('157', 'R06010013', 'R06010013', '电子天平', 'FP7000', '0-7000g', '丹纳赫西特公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('158', 'R06010014', 'R06010014', '电子天平', 'ML6001', '0-6500g  0.1g', '瑞士梅特勒托利多', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('159', 'R06010015', 'R06010015', '电子天平', 'MS304S', '0.01-320g 0.0001g', '瑞士梅特勒托利多', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('160', 'R06010031', 'R06010031', '电子天平', 'PTR-A20', '20KG  0.2g', '福州华志科学仪器公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('161', 'R06010032', 'R06010032', '电子天平', 'PTR-A20', '20KG  0.2g', '福州华志科学仪器公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('162', 'R06010023', 'R06010023', '电子天平', 'JSC-6+', '0-6000g  1g', '惠尔邦公司', '1', '1', '黄昭富', 'server8511.huangzhaofu_8511', '黄昭富', 'server8511.huangzhaofu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('163', 'W06040015', 'W06040015', '矢量网络分析仪', 'MS4642A', '10MHz-20GHz', '美国安立公司', '1', '1', '黄昭富', 'server8511.huangzhaofu_8511', '黄昭富', 'server8511.huangzhaofu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('164', 'W07070001', 'W07070001', '噪声源', 'SU4300-1', '噪声带宽：300uHz~1800uHz', '石家庄无线电四厂', '1', '1', '冀贞海', 'server8511.jizhenhai_8511', '冀贞海', 'server8511.jizhenhai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('165', 'W08010125', 'W08010125', '数字示波器', 'TDS1012B', '100MHZ', '泰克中国分公司', '1', '1', '姜迪', 'server8511.jiangdi_8511', '姜迪', 'server8511.jiangdi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('166', 'D01030006', 'D01030006', '数字钳型表', 'CM-07', '直流：0-400A；\r\n直流：0-400A；\r\n交流：1Hz-100KHz', '泰仪电子股份有限公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('167', 'D01060001', 'D01060001', '数字微欧表', 'PC9D', '0.2mΩ-1.999KΩ', '上海安标电子公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('168', 'D01060002', 'D01060002', '高压绝缘电阻表', '3123', '0-10000V', '南京金川电表厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('169', 'D01070001', 'D01070001', '高压探头', 'F80K-40', '0-40000V', '美国Fluke公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('170', 'D01070002', 'D01070002', '高压探头', 'F80K-40', '0-40000V', '美国Fluke公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('171', 'D04010001', 'D04010001', 'EMS诊断系统', 'EMSCAN', '10M~2GHZ', '加拿大EMSCAN公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('172', 'D05040004', 'D05040004', '数字多用表', '1905A', '1uV~1100V DC', '英国(广东半导体器件总厂)', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('173', 'D05040009', 'D05040009', '数字多用表', '8840A', '5.5位', '美国(北京无线电技研所)', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('174', 'D05040010', 'D05040010', '数字多用表', '8840A', '5.5位', '美国(北京无线电技研所)', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('175', 'D05040011', 'D05040011', '数字多用表', 'GDM-8045', '4.5位', '日本', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('176', 'D05040014', 'D05040014', '数字多用表', '3468A', '5.5位', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('177', 'D05040017', 'D05040017', '数字多用表', 'FLUKE45', '4.5位', '北京无线电技研所', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('178', 'D05040018', 'D05040018', '数字多用表', 'FLUKE45', '4.5位', '北京无线电技研所', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('179', 'D05040020', 'D05040020', '数字多用表', 'FLUKE45', '4.5位', '北京无线电技研所', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('180', 'D05040022', 'D05040022', '数字多用表', 'GDM-8145', '3.5位', '苏州固伟', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('181', 'D05040024', 'D05040024', '数字多用表', 'GDM-8145', '3.5位', '苏州固伟', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('182', 'D05040028', 'D05040028', '数字多用表', 'GDM-8145', '3.5位', '苏州固伟', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('183', 'D05040036', 'D05040036', '数字多用表', '3458A', '8.5位', '美国keysight公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('184', 'D05040037', 'D05040037', '数字多用表', '3458A', '8.5位', '美国keysight公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('185', 'D05040038', 'D05040038', '数字多用表', '3458A', '8.5位', '美国keysight公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('186', 'D08040001', 'D08040001', '校准器', '5101B', 'DCV：0~1100', '美国FLUKE公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('187', 'D09010098', 'D09010098', '直流稳压电源', 'DH1720', '0~32V    6A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('188', 'D09010127', 'D09010127', '直流稳压电源', 'DH1718-1', '0~20V；  3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('189', 'D09010131', 'D09010131', '直流稳压电源', 'DPS-2020', '0~20V；  2A', '威拓公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('190', 'D09010133', 'D09010133', '直流稳压电源', 'DPS-3015', '0~30V；    1.5A', '威拓公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('191', 'D09010151', 'D09010151', '直流稳压电源', 'DH1716-7', '0~30V；  0~30A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('192', 'D09010153', 'D09010153', '直流稳压电源', 'DH1716-40D', '0-35V0-20A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('193', 'D09010154', 'D09010154', '直流稳压电源', 'DH1720A-2', '0-35V0-20A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('194', 'D09010155', 'D09010155', '直流稳压电源', 'DH1718E-4', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('195', 'D09010156', 'D09010156', '直流稳压电源', 'DH1720A-2', '0~32V/0~6A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('196', 'D09010162', 'D09010162', '程控电源', '6625A', '16V/2A  50V/1A-50V/0.5A', '美国Agilent公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('197', 'D09010163', 'D09010163', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('198', 'D09010164', 'D09010164', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('199', 'D09010165', 'D09010165', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('200', 'D09010166', 'D09010166', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('201', 'D09010167', 'D09010167', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('202', 'D09010168', 'D09010168', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('203', 'D09010169', 'D09010169', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('204', 'D09010170', 'D09010170', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('205', 'D09010173', 'D09010173', '直流稳压电源', 'DH1716A-14', '48V/10A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('206', 'D09010175', 'D09010175', '直流稳压电源', 'MPS-604', '60V/10A', '东奇大华电子仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('207', 'D09010176', 'D09010176', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('208', 'D09010177', 'D09010177', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('209', 'D09010180', 'D09010180', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('210', 'D09010181', 'D09010181', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('211', 'D09010191', 'D09010191', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('212', 'D09010196', 'D09010196', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('213', 'D09010235', 'D09010235', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('214', 'D09010249', 'D09010249', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('215', 'D09010255', 'D09010255', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('216', 'D09010260', 'D09010260', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('217', 'D09010261', 'D09010261', '直流稳压电源', 'DH1716-7A', '0-35V  0-30A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('218', 'D09010267', 'D09010267', '直流稳压电源', 'MSP3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('219', 'D09010271', 'D09010271', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('220', 'D09010272', 'D09010272', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('221', 'D09010273', 'D09010273', '直流稳压电源', 'APS2050', '0-20V  0-50A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('222', 'D09010276', 'D09010276', '直流稳压电源', 'APS 3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('223', 'D09010306', 'D09010306', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('224', 'D09010320', 'D09010320', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('225', 'D09010339', 'D09010339', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('226', 'D09010341', 'D09010341', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('227', 'D09010342', 'D09010342', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('228', 'D09020082', 'D09020082', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('229', 'D09020083', 'D09020083', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('230', 'D09020084', 'D09020084', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('231', 'D09020092', 'D09020092', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('232', 'D09020094', 'D09020094', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('233', 'D09020096', 'D09020096', '不间断电源', 'UPS-1000UXICH', '', '美国AOC', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('234', 'D09020097', 'D09020097', '不间断电源', 'UPS-1000UXICH', '', '美国AOC', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('235', 'D09020099', 'D09020099', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('236', 'D09020100', 'D09020100', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('237', 'D09020101', 'D09020101', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('238', 'D09020102', 'D09020102', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('239', 'D09020103', 'D09020103', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('240', 'D09020104', 'D09020104', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('241', 'D09020105', 'D09020105', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('242', 'D09020106', 'D09020106', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('243', 'D09020107', 'D09020107', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('244', 'D09020109', 'D09020109', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('245', 'D09020110', 'D09020110', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('246', 'D09020111', 'D09020111', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('247', 'D09020113', 'D09020113', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('248', 'D09020115', 'D09020115', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('249', 'D09020116', 'D09020116', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('250', 'D09020117', 'D09020117', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('251', 'D09020119', 'D09020119', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('252', 'D09020120', 'D09020120', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('253', 'D09020124', 'D09020124', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('254', 'D09020125', 'D09020125', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('255', 'D09020126', 'D09020126', '多功能变频电源', 'APS6009S', '输入220±10%输出0-150V ;0-300V 10KVA单进三出', '中国东方电源公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('256', 'D09020150', 'D09020150', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('257', 'D09020173', 'D09020173', '交流净化电源', 'JJW-30KVA', '30KVA  220V', '中国爱克赛', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('258', 'D09020181', 'D09020181', '不间断电源', 'C3KS', '类型：在线式\r\n额定功率：3KVA\r\n后备时间：>2小时', '山特', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('259', 'D09020182', 'D09020182', '不间断电源', 'C3KS', '类型：在线式\r\n额定功率：3KVA\r\n后备时间：>2小时', '山特', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('260', 'D09020183', 'D09020183', '不间断电源', 'C3KS', '类型：在线式\r\n额定功率：3KVA\r\n后备时间：>2小时', '山特', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('261', 'D09990001', 'D09990001', '正弦波转换器', '7554V', '输入：22-28V（直流）\r\n输出：220V （交流）', '上海纽福克斯光电科技', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('262', 'D09990002', 'D09990002', '正弦波转换器', '7554V', '输入：22-28V（直流）\r\n输出：220V （交流）', '上海纽福克斯光电科技', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('263', 'D09990003', 'D09990003', '正弦波转换器', '7554V', '输入：22-28V（直流）\r\n输出：220V （交流）', '上海纽福克斯光电科技', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('264', 'D09990004', 'D09990004', '正弦波转换器', '7554V', '输入：22-28V（直流）\r\n输出：220V （交流）', '上海纽福克斯光电科技', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('265', 'D09990005', 'D09990005', '正弦波转换器', '7554V', '输入：22-28V（直流）\r\n输出：220V （交流）', '上海纽福克斯光电科技', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('266', 'F06010001', 'F06010001', '温湿度记录仪', 'THP-2000', '温度：0-60℃.湿度：0-99%', '天津湿望科学仪器公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('267', 'Q02060001', 'Q02060001', '螺纹环规', 'M120*1.5-6g', '', '兴平工具厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('268', 'R01040003', 'R01040003', '红外测温仪', 'MX4+', '(-30～900℃)', '美国Ravtwk公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('269', 'R06010012', 'R06010012', '拉力量表', '15g', '2-15g', '美国', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('270', 'R06010025', 'R06010025', '测力计', 'DS2-1000N', '0-1000N', '深圳卓越仪器仪表公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('271', 'W02010023', 'W02010023', '小功率计', 'GX2B', '0.05~12.4GHZ', '上海无线电二十六厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('272', 'W02020003', 'W02020003', '功率计', 'HP436A', '100KHZ~40GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('273', 'W02020004', 'W02020004', '功率计', 'HP435B', '1uW~100mW', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('274', 'W02020007', 'W02020007', '峰值功率计', '8900D', '100MHZ~18GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('275', 'W02020009', 'W02020009', '功率计', 'ML2437A', '10MHZ~40GHZ', '美国安立公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('276', 'W02020012', 'W02020012', '功率计', 'PMS1084B', '10KHZ~500MHZ', '德国', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('277', 'W02990001', 'W02990001', '光功率计', 'ACCT-3C', '', '重庆光辰光电科技', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('278', 'W02990002', 'W02990002', '光纤多用表', 'AV2498A', '(-70)dB~(30)dBm', '41所', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('279', 'W03040001', 'W03040001', '相位噪声测量系统', 'PN9000', '2MHZ~40GHZ', '法国Europest公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('280', 'W03050008', 'W03050008', '通用计数器', 'E327', '10HZ~1GHZ', '南京电讯仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('281', 'W03050010', 'W03050010', '微波频率计数器', 'HP5342A', '500M~18GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('282', 'W03050016', 'W03050016', '多功能计数器', 'LF-1000', '10HZ~1GHZ', '香港组装', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('283', 'W03050025', 'W03050025', '多功能计数器', 'EIP25B', '10HZ~20GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('284', 'W03050026', 'W03050026', '多功能计数器', 'EIP25B', '10HZ~20GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('285', 'W04010005', 'W04010005', '电容耐压测试仪', 'CS2673C', '', '南京长盛', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('286', 'W04010007', 'W04010007', '绝缘电阻测试仪', 'TH2683', '10~1000V', '常州同惠', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('287', 'W04010008', 'W04010008', '漏电流测试仪', 'TH2685', '', '常州同惠', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('288', 'W04010010', 'W04010010', '耐压测试仪', 'ET2670Y', '医用', '南京恩泰', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('289', 'W04010011', 'W04010011', '接地电阻测试仪', 'ET2678Y', '医用', '南京恩泰', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('290', 'W04010012', 'W04010012', '漏电流测试仪', 'ET2675F', '医用', '南京恩泰', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('291', 'W06040004', 'W06040004', '矢量网络分析仪', '8510B', '0.045~20GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('292', 'W06040005', 'W06040005', '标量网络分析仪', '5417A', '10MHZ`8.6GHZ', '美国WILTRON公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('293', 'W06040006', 'W06040006', '标量网络分析仪', '562', '10MHZ~20GHZ', '美国WILTRON公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('294', 'W06040007', 'W06040007', '标量网络分析仪', '54147A', '10MHZ~20GHZ', '美国WILTRON公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('295', 'W06040008', 'W06040008', '标量网络分析仪', '6823', '10mHZ~20GHZ', '英国Aeroflex Co公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('296', 'W06040010', 'W06040010', '矢量网络分析仪', 'MT8222A', '10MHZ~4GHZ', '美国安立公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('297', 'W06040012', 'W06040012', '标量网络分析仪', '54147A', '10MHz-20GHz', '美国安立公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('298', 'W06090016', 'W06090016', '衰减器', '33-30-34', '40DB', '美国LucAs公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('299', 'W06090018', 'W06090018', '衰减器', 'TS25', '40DB', '上海长鑫公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('300', 'W06090024', 'W06090024', '衰减器', '66-40-34', 'DC-18GHZ /150W/40db', '美国Weinchel公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('301', 'W06090025', 'W06090025', '衰减器', '66-40-34', 'DC-18GHZ /150W/40db', '美国Weinchel公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('302', 'W06090028', 'W06090028', '衰减器', '40-40-33', 'DC-1.5GHZ /150W/40db', '美国艾发斯公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('303', 'W06090088', 'W06090088', '衰减器', 'WDTS400', 'DC-8GHZ /400W/40db', '上海华湘公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('304', 'W06990002', 'W06990002', '同轴负载', 'F1428', 'DC~1G;150W', '美国艾法斯公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('305', 'W07010022', 'W07010022', '信号源', 'XB-33', '微波', '光华无线电仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('306', 'W07020003', 'W07020003', '信号源', 'HP8657B', '100KHZ~2060MHZ', 'HP公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('307', 'W07020004', 'W07020004', '信号源', 'HP8648B', '9KHZ~2GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('308', 'W07030001', 'W07030001', '扫频信号源', '8620C', '2GHZ~12.4GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('309', 'W07030003', 'W07030003', '扫频信号源', '8620C', '12.4GHZ~18GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('310', 'W07030006', 'W07030006', '扫频信号源', 'QF1320', '10~2000MHZ', '前锋无线电仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('311', 'W07030009', 'W07030009', '扫频信号源', 'HP8350B', '0.01~20GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('312', 'W07030011', 'W07030011', '扫频信号源', '68147B', '10MHz-20GHz', '美国WILTRON公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('313', 'W07030013', 'W07030013', '扫频信号源', 'GT201/2012', '8GHz~18GHz', '深圳高泰电子公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('314', 'W07030014', 'W07030014', '扫频信号源', 'GT201', '2GHZ-8GHz', '深圳高泰电子公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('315', 'W07040014', 'W07040014', '脉冲发生器', 'XC-16A', '脉宽0.1uS-0.01S;', '南通电子仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('316', 'W07040020', 'W07040020', '时间综合器', 'HP5359A', '/', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('317', 'W07040021', 'W07040021', '脉冲发生器', '81101A', '脉宽10-999.5S;', 'HP公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('318', 'W07050008', 'W07050008', '函数发生器', 'NF1641', '/', '南通电子仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('319', 'W07050011', 'W07050011', '信号源', 'AFQ100B', 'IQ调制带宽：1GHZ', '德国RS公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('320', 'W07050012', 'W07050012', '信号源', 'AFQ100B', 'IQ调制带宽：1GHZ', '德国RS公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('321', 'W07050013', 'W07050013', '信号源', 'AFQ100B', 'IQ调制带宽：1GHZ', '德国RS公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('322', 'W07990002', 'W07990002', '梳状波发生器', 'XT-22', '1～2500MHz', '国营永华厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('323', 'W07999001', 'W07999001', '校飞信号源', 'CT1', '', '54所', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('324', 'W07999002', 'W07999002', '校飞信号源', 'CT1', '', '54所', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('325', 'W08010069', 'W08010069', '示波器', '2465A', '350MHZ', '美国TEK公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('326', 'W08010089', 'W08010089', '示波器', '2465B', '400MHZ', '美国泰克公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('327', 'W08010100', 'W08010100', '示波器', 'V-1065', '100MHZ', '日本日立', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('328', 'W08010101', 'W08010101', '示波器', 'V-1065', '100MHZ', '日本日立', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('329', 'W08010102', 'W08010102', '示波器', 'V-1065', '100MHZ', '日本日立', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('330', 'W08010103', 'W08010103', '示波器', 'V-1065', '100MHZ', '日本日立', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('331', 'W08010104', 'W08010104', '示波器', 'COS6100GCH', '100MHZ', '西安红华仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('332', 'W08010107', 'W08010107', '示波器', 'COS6100GCH', '100MHz', '西安红华仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('333', 'W08010108', 'W08010108', '示波器', 'COS6100G', '100MHz', '红华仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('334', 'W08010109', 'W08010109', '示波器', 'COS6100G', '100MHz', '红华仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('335', 'W08010110', 'W08010110', '示波器', 'SS7810', '100MHz', '日本岩崎', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('336', 'W08010111', 'W08010111', '示波器', 'SS7810', '100MHz', '日本岩崎', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('337', 'W08010112', 'W08010112', '示波器', 'SS7810', '100MHz', '日本岩崎', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('338', 'W08010117', 'W08010117', '数字示波器', '54854A', '20GS/S-4GHZ', '美国Agilent公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('339', 'W08010121', 'W08010121', '数字示波器', 'DPO4104', '20GS/S\r\n1GHZ', '美国Tektronix公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('340', 'W08010122', 'W08010122', '数字示波器', 'GDS820S', '150MHZ', '固伟公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('341', 'W08010141', 'W08010141', '数字示波器', 'TDS1012C-SC', '100MHZ', '泰克中国分公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('342', 'W08010147', 'W08010147', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('343', 'W08120007', 'W08120007', '频谱分析仪', 'HP8592', '9K~22GHZ   -114~+30dBm', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('344', 'W08120008', 'W08120008', '频谱分析仪', 'Tek2792', '10KHz～21GHz   -117～+30dBm', '美国泰克公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('345', 'W08120009', 'W08120009', '频谱分析仪', 'AV4031', '50KHz-22GHz', '41所', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('346', 'W08120010', 'W08120010', '频谱分析仪', 'HP8593A', '9KZ~22GHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('347', 'W08120015', 'W08120015', '频谱分析仪', 'AV4033', '30HZ~26.5GHZ', '41所', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('348', 'W08120028', 'W08120028', '频谱分析仪', '3283', '9KHZ~26.5GHZ（含相噪）', '美国艾法斯公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('349', 'W08120039', 'W08120039', '频谱分析仪', 'MS2719B', '9KHZ~20GHZ', '美国安立公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('350', 'W08120044', 'W08120044', '频谱分析仪', '3283', '3HZ~26.5GHZ', '美国艾法斯公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('351', 'W08120045', 'W08120045', '频谱分析仪', '3283', '3HZ~26.5GHZ', '美国艾法斯公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('352', 'W10090001', 'W10090001', '功率放大器', '5040', '20~1000MHZ', '美国', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('353', 'W10090003', 'W10090003', '功率放大器', 'FLC100E', 'F:10K~400M/P≥150W', '德国', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('354', 'W10090004', 'W10090004', '功率放大器', '50W1000D', '频率范围：50MHz-1000MHz;\r\n输出功率：≥50W；\r\n功率平坦度： ≤±1.5', '美国AR公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('355', 'W10090005', 'W10090005', '功率放大器', '50W1000D', '频率范围：50MHz-1000MHz;\r\n输出功率：≥50W；\r\n功率平坦度： ≤±1.5', '美国AR公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('356', 'W10090006', 'W10090006', '20W功率放大器', 'AV3871AB', 'AV3871AB:  频率范围：1GHz-6GHz;\r\n输出功率：≥30W；', '41所', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('357', 'W10090007', 'W10090007', '20W功率放大器', 'AV3871DA', 'AV3871DA:  频率范围：6GHz-18GHz\r\n输出功率：≥20W；', '41所', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('358', 'W10090008', 'W10090008', '20W功率放大器', 'AV3871AB', 'AV3871AB:  频率范围：1GHz-6GHz;\r\n输出功率：≥30W；', '41所', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('359', 'W10090009', 'W10090009', '20W功率放大器', 'AV3871DA', 'AV3871DA:  频率范围：6GHz-18GHz\r\n输出功率：≥20W；', '41所', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('360', 'W11050006', 'W11050006', '图示仪', 'GH4821', '0.1μA/度~0.5A/度', '光华无线电仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('361', 'W11050009', 'W11050009', '图示仪校准仪', 'GH2051', '1MV~3KV.1μA~10A', '光华无线电仪器厂', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('362', 'W12060002', 'W12060002', '噪声测试仪', 'HP8970B', '10MHZ~1600MHZ', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('363', 'W12060002-2', 'W12060002-2', '噪声测试装置', 'HP8971C', '', 'HP公司', '1', '0', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('364', 'W16010002', 'W16010002', '逻辑分析仪', 'HP1630D', '43通道  100MHz', 'HP公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('365', 'W16010003', 'W16010003', '逻辑分析仪', 'HP1663E', '34通道  100MHz', 'HP公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('366', 'W16990001', 'W16990001', 'PXI数据采集系统', 'PXI-1042Q', '/', '美国国家仪器有限公司', '1', '1', '库', '', '库', '', '1', null);
INSERT INTO `fix_asset` VALUES ('367', 'W08010151', 'W08010151', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '兰功盾', 'server8511.langongdun_8511', '兰功盾', 'server8511.langongdun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('368', 'W07020081', 'W07020081', '信号源', 'AV1484A', '250KHZ~4GHZ', '国睿安泰信公司', '1', '1', '冷魁', 'server8511.lengkui_8511', '冷魁', 'server8511.lengkui_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('369', 'W06090044', 'W06090044', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '李兵', '', '李兵', '', '1', null);
INSERT INTO `fix_asset` VALUES ('370', 'W06090048', 'W06090048', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '李兵', '', '李兵', '', '1', null);
INSERT INTO `fix_asset` VALUES ('371', 'D09020093', 'D09020093', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '李超', 'server8511.lichao_8511', '李超', 'server8511.lichao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('372', 'D09010263', 'D09010263', '直流稳压电源', 'E3648A', '0-20V 2.5A ;0-8V 5A', 'Agilent公司', '1', '1', '李辰晶', 'server8511.lichenjing_8511', '李辰晶', 'server8511.lichenjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('373', 'D09010370', 'D09010370', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '李辰晶', 'server8511.lichenjing_8511', '李辰晶', 'server8511.lichenjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('374', 'W07020027', 'W07020027', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '李晨', 'server8511.lichen_8511', '李晨', 'server8511.lichen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('375', 'W07020087', 'W07020087', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国R&S公司', '1', '1', '李晨', 'server8511.lichen_8511', '李晨', 'server8511.lichen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('376', 'Q02010003', 'Q02010003', '涂层测厚仪', 'MPO', '测量镀 涂层厚度\r\n精度：0.1um;测量范围： 0-2000um', '德国Fischer公司', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('377', 'Q02013001', 'Q02013001', '大理石平板', '600X800', '600X800', '河北泊头', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('378', 'Q99000001', 'Q99000001', '超声波探伤仪', 'MIT3900', '扫描范围：8000MM分辨率：40db', '南通欧能达公司', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('379', 'Q99000002', 'Q99000002', '表面粗糙度测量仪', 'SRM-1(F)', '测量范围：0.03-9.99μM分辨率：0.01μm/μs', '常州三丰仪器科技公司', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('380', 'D09010296', 'D09010296', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李国平', 'server8511.liguoping_8511', '李国平', 'server8511.liguoping_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('381', 'D09010231', 'D09010231', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李娟慧', 'server8511.lijuanhui_8511', '李娟慧', 'server8511.lijuanhui_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('382', 'D09010233', 'D09010233', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李娟慧', 'server8511.lijuanhui_8511', '李娟慧', 'server8511.lijuanhui_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('383', 'D09010378', 'D09010378', '程控电源', 'N6702A', '-5~28V 0~3A', '美国Keysight公司', '1', '1', '李磊', 'server8511.lilei_8511', '李磊', 'server8511.lilei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('384', 'W07020001', 'W07020001', '信号源', '6062A', '100KHZ~2.1GHZ', '美国FLuKE公司', '1', '1', '李磊', 'server8511.lilei_8511', '李磊', 'server8511.lilei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('385', 'W07020019', 'W07020019', '信号源', 'AV1485', '250k~4GHz', '41所', '1', '1', '李磊', 'server8511.lilei_8511', '李磊', 'server8511.lilei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('386', 'D09010216', 'D09010216', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李莉', 'server8511.lili_8511', '李莉', 'server8511.lili_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('387', 'D09010200', 'D09010200', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('388', 'D09010209', 'D09010209', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('389', 'D09010253', 'D09010253', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('390', 'D09010254', 'D09010254', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('391', 'W04010009', 'W04010009', '数字电桥', 'YD2810A', '', '常州扬子电子', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('392', 'W07020002', 'W07020002', '信号源', 'HP83732A', '10MHZ~20GHZ', 'HP公司', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('393', 'W07020013', 'W07020013', '信号源', 'MG3694B', '2GHZ~40GHZ', '美国安立公司', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('394', 'W08010116', 'W08010116', '数字示波器', 'GDS820S', '150MHZ', '固伟公司', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('395', 'W08120025', 'W08120025', '频谱分析仪', 'FSP30', '9KHZ~30GHZ', '德国R&S公司', '1', '1', '李燊', 'server8511.lishen_8511', '李燊', 'server8511.lishen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('396', 'D09010187', 'D09010187', '直流稳压电源', 'GPS-3303C', '32V/3A双路', '苏州固伟', '1', '1', '李司中', 'server8511.lisizhong_8511', '李司中', 'server8511.lisizhong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('397', 'D09010373', 'D09010373', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '李司中', 'server8511.lisizhong_8511', '李司中', 'server8511.lisizhong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('398', 'W07020084', 'W07020084', '信号发生器', 'MG3694C', '8GHZ~40GHZ', '美国安立公司', '1', '1', '李司中', 'server8511.lisizhong_8511', '李司中', 'server8511.lisizhong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('399', 'W08010138', 'W08010138', '数字示波器', 'TDS1012C-SC', '100MHZ', '泰克中国分公司', '1', '1', '李司中', 'server8511.lisizhong_8511', '李司中', 'server8511.lisizhong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('400', 'D09010221', 'D09010221', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李庭', 'server8511.liting_8511', '李庭', 'server8511.liting_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('401', 'D09010222', 'D09010222', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '李庭', 'server8511.liting_8511', '李庭', 'server8511.liting_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('402', 'W07020069', 'W07020069', '矢量信号发生器', 'E8267D', '250KHz~20GHz', '美国Agilent公司', '1', '1', '李维磊', 'server8511.liweilei_8511', '李维磊', 'server8511.liweilei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('403', 'D09020151', 'D09020151', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '李文', 'server8511.liwen_8511', '李文', 'server8511.liwen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('404', 'W07020063', 'W07020063', '微波信号发生器', 'MG3692C', '8MHZ~20GHZ', '美国安立公司', '1', '1', '李文', 'server8511.liwen_8511', '李文', 'server8511.liwen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('405', 'W08120066', 'W08120066', '频谱仪', 'N9030A', '3HZ~26.5GHZ（含相噪）', '美国keysight公司', '1', '1', '李文', 'server8511.liwen_8511', '李文', 'server8511.liwen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('406', 'W08120067', 'W08120067', '频谱仪', 'N9030A', '3HZ~26.5GHZ（含相噪）', '美国keysight公司', '1', '1', '李文', 'server8511.liwen_8511', '李文', 'server8511.liwen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('407', 'D09010183', 'D09010183', '直流稳压电源', 'GPS-3303C', '3A/32V两路', '固伟公司', '1', '1', '李文帅', 'server8511.liwenshuai_8511', '李文帅', 'server8511.liwenshuai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('408', 'W07020094', 'W07020094', '信号源', 'E8257D', '100KHZ~40GHZ', '美国keysight公司', '1', '1', '李文帅', 'server8511.liwenshuai_8511', '李文帅', 'server8511.liwenshuai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('409', 'W08120047', 'W08120047', '频谱分析仪', 'FSU26', '20HZ~26.5GHZ', '德国R&S公司', '1', '1', '李文帅', 'server8511.liwenshuai_8511', '李文帅', 'server8511.liwenshuai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('410', 'W08120079', 'W08120079', '频谱仪', 'N9030A', '3HZ~43GHZ(含相噪)', '美国keysight公司', '1', '1', '李文帅', 'server8511.liwenshuai_8511', '李文帅', 'server8511.liwenshuai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('411', 'W07020005', 'W07020005', '信号源', 'E4433B', '250KHZ~4GHZ', 'HP公司', '1', '1', '李仙法', 'server8511.lixianfa_8511', '李仙法', 'server8511.lixianfa_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('412', 'W07020018', 'W07020018', '信号源', 'AV1485', '250k~4GHz', '41所', '1', '1', '李仙法', 'server8511.lixianfa_8511', '李仙法', 'server8511.lixianfa_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('413', 'W08120068', 'W08120068', '频谱仪', 'FSW26', '2HZ~26.5GHZ（含相噪）', '德国R&S公司', '1', '1', '李校石', 'server8511.lixiaoshi_8511', '李校石', 'server8511.lixiaoshi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('414', 'W06040009', 'W06040009', '矢量网络分析仪', '37347D', '40mHZ~20GHZ', '美国安立公司', '1', '1', '李艳良', 'server8511.liyanliang_8511', '李艳良', 'server8511.liyanliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('415', 'W12060006', 'W12060006', '噪声系数分析仪', 'AV3984', '10MHZ~26.5GHZ', '41所', '1', '1', '李艳良', 'server8511.liyanliang_8511', '李艳良', 'server8511.liyanliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('416', 'D09010256', 'D09010256', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '李永波', 'server8511.liyongbo_8511', '李永波', 'server8511.liyongbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('417', 'D09010257', 'D09010257', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '李永波', 'server8511.liyongbo_8511', '李永波', 'server8511.liyongbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('418', 'W07020026', 'W07020026', '信号源', 'E8257D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '李永波', 'server8511.liyongbo_8511', '李永波', 'server8511.liyongbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('419', 'F06990007', 'F06990007', '氧、二氧化碳测定仪', 'CYES- Ⅱ', '', '上海嘉定学联仪表厂', '1', '0', '李子繁', '', '李子繁', '', '1', null);
INSERT INTO `fix_asset` VALUES ('420', 'F06990008', 'F06990008', '氧、二氧化碳测定仪', 'CYES- Ⅱ', '', '上海嘉定学联仪表厂', '1', '0', '李子繁', '', '李子繁', '', '1', null);
INSERT INTO `fix_asset` VALUES ('421', 'D09010376', 'D09010376', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('422', 'D09020143', 'D09020143', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('423', 'D09020145', 'D09020145', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('424', 'W02020015', 'W02020015', '功率计', 'AV2441', '0.5GHZ~40GHZ', '41所', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('425', 'W07020006', 'W07020006', '信号源', 'HP83732B', '10MHZ~20GHZ', '美国Agilent公司', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('426', 'W07020038', 'W07020038', '信号源', 'MG37022A', '10MHZ~20GHZ', '美国安立公司', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('427', 'W08120026', 'W08120026', '频谱分析仪', 'FSP30', '9KHZ~30GHZ', '德国R&S公司', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('428', 'W08120034', 'W08120034', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('429', 'W08120052', 'W08120052', '实时频谱仪', 'RSA6120A', '9kHZ~20GHZ', '美国Tek公司', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('430', 'D09010219', 'D09010219', '直流稳压电源', 'WYK-35100', '35V/100A  可调', '中国爱克赛', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('431', 'D09010291', 'D09010291', '直流稳压电源', 'APS 3220', '0-32V  0-20A', '大华无线电仪器厂', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('432', 'D09010326', 'D09010326', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('433', 'D09010327', 'D09010327', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('434', 'W06040013', 'W06040013', '矢量网络分析仪', 'ZVA24', '10MHZ~24GHZ', '德国RS公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('435', 'W06090046', 'W06090046', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('436', 'W06090089', 'W06090089', '衰减器', 'DTS150G-40-18-A', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('437', 'W07020078', 'W07020078', '信号源', 'E8257D', '250KHZ~40GHZ', '美国keysight公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('438', 'W08010120', 'W08010120', '数字示波器', 'DPO70404', '20GS/S-4GHZ', '美国Tektronix公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('439', 'W08010143', 'W08010143', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('440', 'W08120016', 'W08120016', '频谱分析仪', '8563EC', '30HZ~26.5GHZ', '美国Agilent公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('441', 'W08120064', 'W08120064', '频谱分析仪', 'N9030A', '3HZ~44GHZ（含相噪）', '美国keysight公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('442', 'D09020129', 'D09020129', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '廖志成', 'server8511.liaozhicheng_8511', '廖志成', 'server8511.liaozhicheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('443', 'D09020131', 'D09020131', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '廖志成', 'server8511.liaozhicheng_8511', '廖志成', 'server8511.liaozhicheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('444', 'D09020136', 'D09020136', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '廖志成', 'server8511.liaozhicheng_8511', '廖志成', 'server8511.liaozhicheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('445', 'D09020142', 'D09020142', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '廖志成', 'server8511.liaozhicheng_8511', '廖志成', 'server8511.liaozhicheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('446', 'D09020095', 'D09020095', '交流净化电源', '5KVA', '5KVA', '熊猫电子集团', '1', '1', '刘敬生', 'server8511.liujingsheng_8511', '刘敬生', 'server8511.liujingsheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('447', 'W07020054', 'W07020054', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国RS公司', '1', '1', '刘娟', 'server8511.liujuan_8511', '刘娟', 'server8511.liujuan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('448', 'W08010132', 'W08010132', '数字示波器', 'WR104MXi', '1GHz', '美国力科公司', '1', '1', '刘娟', 'server8511.liujuan_8511', '刘娟', 'server8511.liujuan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('449', 'D09010298', 'D09010298', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '刘俊飞', 'server8511.liujunfei_8511', '刘俊飞', 'server8511.liujunfei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('450', 'D09020076', 'D09020076', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('451', 'D09010202', 'D09010202', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '刘亚旭', 'server8511.liuyaxu_8511', '刘亚旭', 'server8511.liuyaxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('452', 'W07020053', 'W07020053', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国RS公司', '1', '1', '刘亚旭', 'server8511.liuyaxu_8511', '刘亚旭', 'server8511.liuyaxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('453', 'W08120029', 'W08120029', '频谱分析仪', 'FSU26', '20HZ~26.5GHZ\r\n近场探头', '德国R&S公司', '1', '1', '刘亚旭', 'server8511.liuyaxu_8511', '刘亚旭', 'server8511.liuyaxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('454', 'D09020174', 'D09020174', '交流净化电源', 'JJW-30KVA', '30KVA  220V', '中国爱克赛', '1', '1', '刘杨豪', 'server8511.liuyanghao_8511', '刘杨豪', 'server8511.liuyanghao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('455', 'D09020177', 'D09020177', '交流净化电源', 'JJW-20KVA', '20KVA  220V', '中国爱克赛', '1', '1', '刘杨豪', 'server8511.liuyanghao_8511', '刘杨豪', 'server8511.liuyanghao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('456', 'D09020123', 'D09020123', 'UPS', 'APC SU2200UX', '100AHX12V 2200W', 'APC公司', '1', '1', '刘泳伶', 'server8511.liuyongling_8511', '刘泳伶', 'server8511.liuyongling_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('457', 'W07020033', 'W07020033', '信号源', 'SML03', '9KHZ~3.3GHZ', '德国RS公司', '1', '1', '刘泳伶', 'server8511.liuyongling_8511', '刘泳伶', 'server8511.liuyongling_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('458', 'W07020044', 'W07020044', '矢量信号源', 'E8267D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '刘泳伶', 'server8511.liuyongling_8511', '刘泳伶', 'server8511.liuyongling_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('459', 'W07020046', 'W07020046', '矢量信号源', 'SMBV100A', '9KHZ~6GHZ', '德国RS公司', '1', '1', '刘泳伶', 'server8511.liuyongling_8511', '刘泳伶', 'server8511.liuyongling_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('460', 'D09020081', 'D09020081', '交流净化电源', 'APC-5KB', '5KVA', '艾普斯', '1', '1', '刘志武', 'server8511.liuzhiwu_8511', '刘志武', 'server8511.liuzhiwu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('461', 'W07020068', 'W07020068', '矢量信号发生器', 'E8267D', '250KHz~20GHz', '美国Agilent公司', '1', '1', '刘志武', 'server8511.liuzhiwu_8511', '刘志武', 'server8511.liuzhiwu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('462', 'D09020149', 'D09020149', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '吕超峰', 'server8511.lvchaofeng_8511', '吕超峰', 'server8511.lvchaofeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('463', 'W08010126', 'W08010126', '数字示波器', 'WR104MXi', '1GHZ', '美国力科公司', '1', '1', '吕超峰', 'server8511.lvchaofeng_8511', '吕超峰', 'server8511.lvchaofeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('464', 'D09020132', 'D09020132', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '吕梅', 'server8511.lvmei_8511', '吕梅', 'server8511.lvmei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('465', 'D09020133', 'D09020133', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '吕梅', 'server8511.lvmei_8511', '吕梅', 'server8511.lvmei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('466', 'D09020137', 'D09020137', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '吕梅', 'server8511.lvmei_8511', '吕梅', 'server8511.lvmei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('467', 'D09020138', 'D09020138', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '吕梅', 'server8511.lvmei_8511', '吕梅', 'server8511.lvmei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('468', 'W07020039', 'W07020039', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国RS公司', '1', '1', '马伟男', 'server8511.maweinan_8511', '马伟男', 'server8511.maweinan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('469', 'W08120060', 'W08120060', '频谱仪', 'AV4036E', '3HZ~26.5GHZ', '41所', '1', '1', '马伟男', 'server8511.maweinan_8511', '马伟男', 'server8511.maweinan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('470', 'W07020055', 'W07020055', '信号源', 'E8257D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '孟大岗', 'server8511.mengdagang_8511', '孟大岗', 'server8511.mengdagang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('471', 'W06090049', 'W06090049', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '牛世伟', 'server8511.niushiwei_8511', '牛世伟', 'server8511.niushiwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('472', 'W06090051', 'W06090051', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '牛世伟', 'server8511.niushiwei_8511', '牛世伟', 'server8511.niushiwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('473', 'W06090060', 'W06090060', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '牛世伟', 'server8511.niushiwei_8511', '牛世伟', 'server8511.niushiwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('474', 'W06090061', 'W06090061', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '牛世伟', 'server8511.niushiwei_8511', '牛世伟', 'server8511.niushiwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('475', 'W06090071', 'W06090071', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '牛世伟', 'server8511.niushiwei_8511', '牛世伟', 'server8511.niushiwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('476', 'W07020066', 'W07020066', '微波矢量信号源', 'E8267D', '250KHz~20GHz', '美国Agilent公司', '1', '1', '牛世伟', 'server8511.niushiwei_8511', '牛世伟', 'server8511.niushiwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('477', 'D09010214', 'D09010214', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '潘彦', 'server8511.panyan_8511', '潘彦', 'server8511.panyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('478', 'W06090036', 'W06090036', '衰减器', 'WDTS400', 'DC-8GHZ /400W/40db', '上海华湘公司', '1', '1', '潘彦', 'server8511.panyan_8511', '潘彦', 'server8511.panyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('479', 'W07020058', 'W07020058', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国RS公司', '1', '1', '潘彦', 'server8511.panyan_8511', '潘彦', 'server8511.panyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('480', 'W07020020', 'W07020020', '信号源', 'MG3691B', '10MHZ~10GHZ', '美国安立公司', '1', '1', '饶县斌', 'server8511.raoxianbin_8511', '饶县斌', 'server8511.raoxianbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('481', 'D09010294', 'D09010294', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '申中豪', '', '申中豪', '', '1', null);
INSERT INTO `fix_asset` VALUES ('482', 'W08010123', 'W08010123', '数字示波器', 'DSO 8064', '600MHz', '美国Agilent公司', '1', '1', '沈天尘', 'server8511.shentianchen_8511', '沈天尘', 'server8511.shentianchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('483', 'D05030001', 'D05030001', '表面电阻测试仪', 'ACL380', '10^3 ~10^12 欧姆', '美国ACL公司', '1', '1', '石俊逸', 'server8511.shijunyi_8511', '石俊逸', 'server8511.shijunyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('484', 'R06010033', 'R06010033', '扭力测试仪', 'HP-20', '0-2Nm  0.5级', '常州市蓝光电子有限公司', '1', '1', '石俊逸', 'server8511.shijunyi_8511', '石俊逸', 'server8511.shijunyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('485', 'R06010034', 'R06010034', '扭力测试仪', 'HP-100', '0-10Nm  0.5级', '常州市蓝光电子有限公司', '1', '1', '石俊逸', 'server8511.shijunyi_8511', '石俊逸', 'server8511.shijunyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('486', 'W01990001', 'W01990001', '静电测试仪', 'FMX004', '0~30KV', '日本SIMCO公司', '1', '1', '石俊逸', 'server8511.shijunyi_8511', '石俊逸', 'server8511.shijunyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('487', 'W07020090', 'W07020090', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国R&S公司', '1', '1', '石鑫', 'server8511.shixin_8511', '石鑫', 'server8511.shixin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('488', 'D05040035', 'D05040035', '台式万用表', '34401A', '6.5位', '美国keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('489', 'D09010210', 'D09010210', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('490', 'D09010266', 'D09010266', '直流稳压电源', 'E3648A', '0-20V 2.5A ;0-8V 5A', 'Agilent公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('491', 'D09010292', 'D09010292', '直流稳压电源', 'HPS 3210', '0-32V  0-10A', '大华无线电仪器厂', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('492', 'D09010345', 'D09010345', '直流稳压电源', '6674A', '0-60V 35A 2000W', '美国Agilent公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('493', 'D09010368', 'D09010368', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('494', 'D09010369', 'D09010369', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('495', 'D09010392', 'D09010392', '直流电源', 'E3632A', '0-15V 7A  ;0-30V 4A', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('496', 'D09010393', 'D09010393', '直流电源', 'E3632A', '0-15V 7A  ;0-30V 4A', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('497', 'D09010394', 'D09010394', '直流电源', 'E3644A', '0-8V 8A  ;0-20V 4A', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('498', 'D09010395', 'D09010395', '直流电源', 'E3644A', '0-8V 8A  ;0-20V 4A', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('499', 'D09010396', 'D09010396', '直流电源', 'E3648A', '0-8V 5A  ;0-20V 2.5A', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('500', 'D09010397', 'D09010397', '直流电源', 'E3648A', '0-8V 5A  ;0-20V 2.5A', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('501', 'D09010398', 'D09010398', '电源', 'N6705', '通道\r\n A: 20V 5A  ;  B: 20V 5A  ;  C: 35V 3A;   D: 3', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('502', 'D09010399', 'D09010399', '电源', 'N6705', '通道\r\n A: 20V 5A  ;  B: 20V 5A  ;  C: 35V 3A;   D: 3', '美国Keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('503', 'W02020021', 'W02020021', '功率计', '8990B', '50MHz~40GHz', '美国Agilent公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('504', 'W06040016', 'W06040016', '标量网络分析仪', '8757D', '10MHZ~20GHZ', '美国Agilent公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('505', 'W06040026', 'W06040026', '标量网络分析仪', 'AV36110', '通道动态范围：-50dBm~+20dBm\r\n校准源：50MH±1MH  -40dBm~+20dBm', '41所', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('506', 'W06090040', 'W06090040', '衰减器', '90-30-34', 'DC-18GHZ /50W/40db', '美国艾法斯公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('507', 'W06090041', 'W06090041', '衰减器', '90-30-34', 'DC-18GHZ /50W/40db', '美国艾法斯公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('508', 'W06090081', 'W06090081', '衰减器', '49-40-33', 'DC-8.5GHZ /W/db', '美国Weinchel公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('509', 'W06090082', 'W06090082', '衰减器', '49-40-33', 'DC-8.5GHZ /W/db', '美国Weinchel公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('510', 'W06090083', 'W06090083', '衰减器', '66-40-33', 'DC-8.5GHZ /W/db', '美国Weinchel公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('511', 'W06090084', 'W06090084', '衰减器', '66-40-33', 'DC-8.5GHZ /W/db', '美国Weinchel公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('512', 'W07020099', 'W07020099', '信号源', 'E8257D', '100KHZ~40GHZ', '美国keysight公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('513', 'W07030010', 'W07030010', '扫频信号源', 'HP83620A', '10MHz-20GHz', 'HP公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('514', 'W07040022', 'W07040022', '脉冲发生器', '81110A', '脉宽10-999.5S;', '美国Agilent公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('515', 'W08010158', 'W08010158', '数字示波器', 'MSO5104B', '1GHZ', '泰克中国分公司', '1', '1', '司国梁', 'server8511.siguoliang_8511', '司国梁', 'server8511.siguoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('516', 'W07020048', 'W07020048', '矢量信号源', 'SMBV100A', '9KHZ~6GHZ', '德国RS公司', '1', '1', '宋大伟', 'server8511.songdawei_8511', '宋大伟', 'server8511.songdawei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('517', 'D09010197', 'D09010197', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '苏焕程', 'server8511.suhuancheng_8511', '苏焕程', 'server8511.suhuancheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('518', 'W07020037', 'W07020037', '信号源', 'MG37022A', '10MHZ~20GHZ', '美国安立公司', '1', '1', '苏焕程', 'server8511.suhuancheng_8511', '苏焕程', 'server8511.suhuancheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('519', 'W08120042', 'W08120042', '频谱分析仪', 'FSU26', '20HZ~26.5GHZ', '德国RS公司', '1', '1', '苏焕程', 'server8511.suhuancheng_8511', '苏焕程', 'server8511.suhuancheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('520', 'D09020118', 'D09020118', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '苏抗', 'server8511.sukang_8511', '苏抗', 'server8511.sukang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('521', 'D09020079', 'D09020079', '不间断电源', 'PANDA', '3KVA', '熊猫电子集团', '1', '1', '苏明', 'server8511.suming_8511', '苏明', 'server8511.suming_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('522', 'W02020014', 'W02020014', '功率计', 'AV2441', '0.5GHZ~40GHZ', '41所', '1', '1', '苏翔', 'server8511.suxiang_8511', '苏翔', 'server8511.suxiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('523', 'W02020016', 'W02020016', '功率计', 'AV2441', '0.5GHZ~40GHZ', '41所', '1', '1', '苏翔', 'server8511.suxiang_8511', '苏翔', 'server8511.suxiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('524', 'W07020092', 'W07020092', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国R&S公司', '1', '1', '苏翔', 'server8511.suxiang_8511', '苏翔', 'server8511.suxiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('525', 'W07050016', 'W07050016', '任意波形发生器', 'M8190A', '通道数:2    分辨率:12bit                 采样频率:12GSa/s   ', '美国Keysight公司', '1', '1', '孙斌', 'server8511.sunbin_8511', '孙斌', 'server8511.sunbin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('526', 'D09010293', 'D09010293', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '孙昊', 'server8511.sunhao_8511', '孙昊', 'server8511.sunhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('527', 'W07020080', 'W07020080', '信号源', 'AV1484A', '250KHZ~4GHZ', '国睿安泰信公司', '1', '1', '孙昊', 'server8511.sunhao_8511', '孙昊', 'server8511.sunhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('528', 'W07020082', 'W07020082', '信号源', 'AV1484A', '250KHZ~4GHZ', '国睿安泰信公司', '1', '1', '孙昊', 'server8511.sunhao_8511', '孙昊', 'server8511.sunhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('529', 'W08010133', 'W08010133', '数字示波器', 'SDA760Zi', '6GHz', '美国力科公司', '1', '1', '孙昊', 'server8511.sunhao_8511', '孙昊', 'server8511.sunhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('530', 'W08010150', 'W08010150', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '孙昊', 'server8511.sunhao_8511', '孙昊', 'server8511.sunhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('531', 'W08120073', 'W08120073', '频谱分析仪', 'FSW50', '100KHZ~50GHZ含相噪)', '德国R&S公司', '1', '1', '孙宏途', 'server8511.sunhongtu_8511', '孙宏途', 'server8511.sunhongtu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('532', 'W04010013', 'W04010013', '数字电桥', 'QJ83B', '2~20MΩ分辨率0.1', '上海兰斯汀仪表', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('533', 'W04010014', 'W04010014', '数字电桥', 'QJ83B', '2~20MΩ分辨率0.1', '上海兰斯汀仪表', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('534', 'D09010302', 'D09010302', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '孙文逸', 'server8511.sunwenyi_8511', '孙文逸', 'server8511.sunwenyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('535', 'D09010303', 'D09010303', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '孙文逸', 'server8511.sunwenyi_8511', '孙文逸', 'server8511.sunwenyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('536', 'D09010304', 'D09010304', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '孙文逸', 'server8511.sunwenyi_8511', '孙文逸', 'server8511.sunwenyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('537', 'D09020108', 'D09020108', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '唐莽', 'server8511.tangmang_8511', '唐莽', 'server8511.tangmang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('538', 'D09020112', 'D09020112', '交流净化电源', 'JJW-10KVA', '出220V±1％入185-250', '中国爱克赛', '1', '1', '唐莽', 'server8511.tangmang_8511', '唐莽', 'server8511.tangmang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('539', 'W10090002', 'W10090002', '功率放大器', 'ETM', 'F:0.8G~2.0G/P≥200W', '美国ETM公司', '1', '1', '唐莽', 'server8511.tangmang_8511', '唐莽', 'server8511.tangmang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('540', 'W07020060', 'W07020060', '信号源', 'SGA-6', '10KHZ~6GHZ', '美国艾法斯公司', '1', '1', '唐遒', 'server8511.tangqiu_8511', '唐遒', 'server8511.tangqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('541', 'D09010315', 'D09010315', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '唐伟峰', 'server8511.tangweifeng_8511', '唐伟峰', 'server8511.tangweifeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('542', 'D09010316', 'D09010316', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '唐伟峰', 'server8511.tangweifeng_8511', '唐伟峰', 'server8511.tangweifeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('543', 'D09010318', 'D09010318', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '唐伟峰', 'server8511.tangweifeng_8511', '唐伟峰', 'server8511.tangweifeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('544', 'D09010319', 'D09010319', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '唐伟峰', 'server8511.tangweifeng_8511', '唐伟峰', 'server8511.tangweifeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('545', 'W08010152', 'W08010152', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '唐伟峰', 'server8511.tangweifeng_8511', '唐伟峰', 'server8511.tangweifeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('546', 'W08120070', 'W08120070', '频谱仪', 'FSW26', '2HZ~26.5GHZ(含相噪)', '德国R&S公司', '1', '1', '滕奔奔', 'server8511.tengbenben_8511', '滕奔奔', 'server8511.tengbenben_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('547', 'D09020139', 'D09020139', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('548', 'D09020153', 'D09020153', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('549', 'D09020154', 'D09020154', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('550', 'D09020155', 'D09020155', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('551', 'D09020156', 'D09020156', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('552', 'D09020157', 'D09020157', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('553', 'D09020158', 'D09020158', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('554', 'D09020159', 'D09020159', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('555', 'D09020160', 'D09020160', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('556', 'D09020161', 'D09020161', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('557', 'D09020162', 'D09020162', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('558', 'D09020163', 'D09020163', '交流净化电源', 'JJW-10KVA', '10KVA', '中国爱克赛', '1', '1', '涂昕', 'server8511.tuxin_8511', '涂昕', 'server8511.tuxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('559', 'W07020091', 'W07020091', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国R&S公司', '1', '1', '万君磊', 'server8511.wanjunlei_8511', '万君磊', 'server8511.wanjunlei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('560', 'W08120038', 'W08120038', '频谱分析仪', 'FSP30', '9KHZ~30GHZ', '德国R&S公司', '1', '1', '汪小红', 'server8511.wangxiaohong_8511', '汪小红', 'server8511.wangxiaohong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('561', 'W02020020', 'W02020020', '微波功率计', 'AV2436', '10MHZ~40GHZ(设备附件）', '41所', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('562', 'W06040025', 'W06040025', '矢量网络分析仪', 'AV3672B', '10MHZ~26.5GHZ（87315005001）', '41所', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('563', 'W07020010', 'W07020010', '信号源', 'SMR20', '10MHZ~20GHZ', '德国RS公司', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('564', 'W07020079', 'W07020079', '信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('565', 'W07020096', 'W07020096', '矢量信号源', 'AV1433', '250KHZ~20GHZ', '41所', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('566', 'W07020097', 'W07020097', '矢量信号源', 'AV1433', '250KHZ~20GHZ', '41所', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('567', 'W07050014', 'W07050014', '任意波发生器', 'N8241A', 'IQ带宽：1GHZ;  采样频率：1.25GHZ', '美国Agilent公司', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('568', 'W08010135', 'W08010135', '数字示波器', '104MXs-B', '1GHZ', '美国力科公司', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('569', 'W08120040', 'W08120040', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '王成海', 'server8511.wangchenghai_8511', '王成海', 'server8511.wangchenghai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('570', 'D09010220', 'D09010220', '程控电源（地面热功率模拟装置）', '4NIC-CK10800', '输入：AC:220V±20%输出：DC:5V~180V可调;电流:＞60A', '南京泽阳电子', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('571', 'D09010270', 'D09010270', '直流稳压电源', '4NIC-Q1050', '0-30V  0-35A', '朝阳电源', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('572', 'D09010274', 'D09010274', '直流稳压电源', 'APS2050', '0-20V  0-50A', '大华无线电仪器厂', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('573', 'Q02010001', 'Q02010001', '测厚仪', 'CHY-C2', '测量范围：0-6mm分辨率：0.1um', '济南兰光机电公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('574', 'R06010016', 'R06010016', '电子秤', 'JSC-AHC-6+', '6KG', '惠而邦公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('575', 'R06010017', 'R06010017', '电子秤', 'JSC-AHC-6+', '6KG', '惠而邦公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('576', 'R06010018', 'R06010018', '电子秤', 'JSC-AHC-15+', '15KG', '惠而邦公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('577', 'R06010019', 'R06010019', '电子秤', 'JSC-AHC-15+', '15KG', '惠而邦公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('578', 'R06010021', 'R06010021', '电子天平', 'XP2003S', '1mg    -2300g', '瑞士梅特勒-托利多公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('579', 'R06010022', 'R06010022', '水份测定仪', 'MJ33', '50～160℃', '瑞士梅特勒-托利多公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('580', 'R06010026', 'R06010026', '电子天平', 'EX1103', '0-1100g  0.001g', '奥豪斯公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('581', 'R06010027', 'R06010027', '电子天平', 'EX1103', '0-1100g  0.001g', '奥豪斯公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('582', 'R06010030', 'R06010030', '水份测定仪', 'FD-610', '质量：5-70G；水份：0.1%；精度：±0.1%\r\n设备编号65442099014(其中价值145', '日本KETT公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('583', 'W08010124', 'W08010124', '数字示波器', 'TDS1012B', '100MHZ', '泰克中国分公司', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('584', 'D05040033', 'D05040033', '台式万用表', '34401A', '6.5位', '美国keysight公司', '1', '1', '王瀚', 'server8511.wanghan_8511', '王瀚', 'server8511.wanghan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('585', 'D09010179', 'D09010179', '直流稳压电源', 'DH1716-5', '60V/10A', '大华无线电仪器厂', '1', '1', '王洪静', 'server8511.wanghongjing_8511', '王洪静', 'server8511.wanghongjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('586', 'D09010199', 'D09010199', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王洪静', 'server8511.wanghongjing_8511', '王洪静', 'server8511.wanghongjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('587', 'W07020029', 'W07020029', '矢量信号源', 'E8267D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '王洪静', 'server8511.wanghongjing_8511', '王洪静', 'server8511.wanghongjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('588', 'W07020030', 'W07020030', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '王洪静', 'server8511.wanghongjing_8511', '王洪静', 'server8511.wanghongjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('589', 'W07020062', 'W07020062', '微波信号发生器', 'MG3692C', '8MHZ~20GHZ', '美国安立公司', '1', '1', '王洪静', 'server8511.wanghongjing_8511', '王洪静', 'server8511.wanghongjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('590', 'W08120035', 'W08120035', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '王洪静', 'server8511.wanghongjing_8511', '王洪静', 'server8511.wanghongjing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('591', 'W07020089', 'W07020089', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国R&S公司', '1', '1', '王健', 'server8511.wangjian_8511', '王健', 'server8511.wangjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('592', 'W08120069', 'W08120069', '频谱仪', 'FSW26', '2HZ~26.5GHZ(含相噪)', '德国R&S公司', '1', '1', '王健', 'server8511.wangjian_8511', '王健', 'server8511.wangjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('593', 'D09010223', 'D09010223', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王瑾', 'server8511.wangjin_8511', '王瑾', 'server8511.wangjin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('594', 'D09010224', 'D09010224', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王瑾', 'server8511.wangjin_8511', '王瑾', 'server8511.wangjin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('595', 'W07020070', 'W07020070', '信号源', 'E8257D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '王瑾', 'server8511.wangjin_8511', '王瑾', 'server8511.wangjin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('596', 'W08120062', 'W08120062', '实时频谱仪', 'RSA6120B', '9kHZ~20GHZ', '美国Tek公司', '1', '1', '王克让', 'server8511.wangkerang_8511', '王克让', 'server8511.wangkerang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('597', 'F06010006', 'F06010006', '数字温湿度表', 'HT-5B', '温度：0-50℃±1℃  湿度： 0-99%±3RH', '汉唐电子有限公司', '1', '1', '王民超', 'server8511.wangminchao_8511', '王民超', 'server8511.wangminchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('598', 'F06010008', 'F06010008', '数字温湿度表', 'HT-5B', '温度：0-50℃±1℃  湿度： 0-99%±3RH', '汉唐电子有限公司', '1', '1', '王民超', 'server8511.wangminchao_8511', '王民超', 'server8511.wangminchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('599', 'F06990011', 'F06990011', '数显折射仪', 'PAL-1', '测量精度:±2.0%Brix/±1℃', '日本ATAGO公司', '1', '1', '王民超', 'server8511.wangminchao_8511', '王民超', 'server8511.wangminchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('600', 'W06090026', 'W06090026', '衰减器', 'WDTS400', 'DC-8GHZ /400W/40db', '上海华湘公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('601', 'W06090027', 'W06090027', '衰减器', 'WDTS400', 'DC-8GHZ /400W/40db', '上海华湘公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('602', 'W06090029', 'W06090029', '衰减器', 'WDTS400', '400W', '上海华湘公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('603', 'W06090030', 'W06090030', '同轴固定衰减器', 'DTS150G-A', '150WDC~18GHz（专用）', '上海华湘公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('604', 'W06090031', 'W06090031', '同轴固定衰减器', 'DTS150G-A', '150WDC~18GHz（专用）', '上海华湘公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('605', 'W06090032', 'W06090032', '同轴固定衰减器', 'DTS150G-A', '150WDC~18GHz（专用）', '上海华湘公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('606', 'W06990001', 'W06990001', '大功率负载', '368BNM', '2-18GHZ500W', '美国Narda公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('607', 'W07020009', 'W07020009', '信号源', 'HP83732B', '10MHZ~20GHZ', '美国Agilent公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('608', 'W08010156', 'W08010156', '数字示波器', 'MSO5104B', '1GHZ', '泰克中国分公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('609', 'W08120037', 'W08120037', '频谱分析仪', 'FSU26', '20HZ~26.5GHZ', '德国R&S公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('610', 'W08120081', 'W08120081', '频谱分析仪', 'FSW50', '100KHZ~50GHZ含相噪)', '德国R&S公司', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('611', 'W06090023', 'W06090023', '衰减器', '66-40-34', 'DC-18GHZ /150W/40db', '美国Weinchel公司', '1', '1', '王荣兵', 'server8511.wangrongbing_8511', '王荣兵', 'server8511.wangrongbing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('612', 'D09010387', 'D09010387', '直流电源', 'E3632A', '0-15V 7A  ;0-30V 4A', '美国Keysight公司', '1', '1', '王赛赛', 'server8511.wangsaisai_8511', '王赛赛', 'server8511.wangsaisai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('613', 'D09010388', 'D09010388', '直流电源', 'E3632A', '0-15V 7A  ;0-30V 4A', '美国Keysight公司', '1', '1', '王赛赛', 'server8511.wangsaisai_8511', '王赛赛', 'server8511.wangsaisai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('614', 'D09010389', 'D09010389', '直流电源', 'E3632A', '0-15V 7A  ;0-30V 4A', '美国Keysight公司', '1', '1', '王赛赛', 'server8511.wangsaisai_8511', '王赛赛', 'server8511.wangsaisai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('615', 'D09010390', 'D09010390', '直流电源', 'E3632A', '0-15V 7A  ;0-30V 4A', '美国Keysight公司', '1', '1', '王赛赛', 'server8511.wangsaisai_8511', '王赛赛', 'server8511.wangsaisai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('616', 'D09010391', 'D09010391', '直流电源', 'E3632A', '0-15V 7A  ;0-30V 4A', '美国Keysight公司', '1', '1', '王赛赛', 'server8511.wangsaisai_8511', '王赛赛', 'server8511.wangsaisai_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('617', 'D09010171', 'D09010171', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '王勇', 'server8511.wangyong_8511', '王勇', 'server8511.wangyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('618', 'D09010172', 'D09010172', '直流稳压电源', 'DH1715A-5', '0-32V/0-3A', '大华无线电仪器厂', '1', '1', '王勇', 'server8511.wangyong_8511', '王勇', 'server8511.wangyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('619', 'D09010225', 'D09010225', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王勇', 'server8511.wangyong_8511', '王勇', 'server8511.wangyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('620', 'D09010226', 'D09010226', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王勇', 'server8511.wangyong_8511', '王勇', 'server8511.wangyong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('621', 'D09010245', 'D09010245', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王忠雷', 'server8511.wangzhonglei_8511', '王忠雷', 'server8511.wangzhonglei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('622', 'D09010246', 'D09010246', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王忠雷', 'server8511.wangzhonglei_8511', '王忠雷', 'server8511.wangzhonglei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('623', 'D09010250', 'D09010250', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王忠雷', 'server8511.wangzhonglei_8511', '王忠雷', 'server8511.wangzhonglei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('624', 'W07020011', 'W07020011', '信号源', 'HP83732B', '10MHZ~20GHZ', '美国Agilent公司', '1', '1', '王忠雷', 'server8511.wangzhonglei_8511', '王忠雷', 'server8511.wangzhonglei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('625', 'W12060003', 'W12060003', '噪声测试仪', 'N8975A', '10MHZ~26.5GHZ', '美国Agilent公司', '1', '1', '王忠雷', 'server8511.wangzhonglei_8511', '王忠雷', 'server8511.wangzhonglei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('626', 'D01030002', 'D01030002', '钳型表', '80I-110S', '0.1A~100A  DC-100KHz', 'FLUKE公司', '1', '1', '王宗凤', 'server8511.wangzongfeng_8511', '王宗凤', 'server8511.wangzongfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('627', 'D05040032', 'D05040032', '台式多用表', '34401A', '6.5位', '美国keysight公司', '1', '1', '王宗凤', 'server8511.wangzongfeng_8511', '王宗凤', 'server8511.wangzongfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('628', 'D09010325', 'D09010325', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '王宗凤', 'server8511.wangzongfeng_8511', '王宗凤', 'server8511.wangzongfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('629', 'W08010137', 'W08010137', '数字示波器', 'TDS1012C-SC', '100MHZ', '泰克中国分公司', '1', '1', '王宗凤', 'server8511.wangzongfeng_8511', '王宗凤', 'server8511.wangzongfeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('630', 'D09010265', 'D09010265', '直流稳压电源', 'E3648A', '0-20V 2.5A ;0-8V 5A', 'Agilent公司', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('631', 'W02020019', 'W02020019', '微波功率计', 'AV2436', '10MHZ~40GHZ(设备附件）', '41所', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('632', 'W06090047', 'W06090047', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('633', 'W06090072', 'W06090072', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('634', 'W07020067', 'W07020067', '矢量信号发生器', 'E8267D', '250KHz~20GHz', '美国Agilent公司', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('635', 'W08010127', 'W08010127', '数字示波器', 'WR104MXi', '1GHZ', '美国力科公司', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('636', 'W08120043', 'W08120043', '频谱分析仪', 'FSH18', '10HZ~18GHZ', '德国RS公司', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('637', 'W08120065', 'W08120065', '信号分析仪', 'AV4051E', '3HZ~26.5GHZ', '41所', '1', '1', '魏信阳', 'server8511.weixinyang_8511', '魏信阳', 'server8511.weixinyang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('638', 'W08120057', 'W08120057', '矢量信号分析仪', 'MS2690A', '50HZ~6GHZ', '美国安立公司', '1', '1', '吴春燕', 'server8511.wuchunyan2_8511', '吴春燕', 'server8511.wuchunyan2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('639', 'D09010208', 'D09010208', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('640', 'D09010232', 'D09010232', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('641', 'D09010258', 'D09010258', '直流稳压电源', 'DH1718E', '0~35V  3A', '大华无线电仪器厂', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('642', 'D09010386', 'D09010386', '直流电源', 'N8737A', '0-60V 0- 50A 1500W', '美国Keysight公司', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('643', 'W02020011', 'W02020011', '功率计', 'N1911A', '10MHz~18GHz   -70dbM-20dbm', '美国Agilent公司', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('644', 'W06090070', 'W06090070', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('645', 'W07020032', 'W07020032', '信号源', 'SMF100A', '100KHZ~22GHZ', '德国RS公司', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('646', 'W07020076', 'W07020076', '信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('647', 'W07030015', 'W07030015', '扫频信号源', '83620B', '2GHZ-8GHz', '美国Agilent公司', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('648', 'W06090050', 'W06090050', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '吴宏', 'server8511.wuhong_8511', '吴宏', 'server8511.wuhong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('649', 'W06090074', 'W06090074', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '吴宏', 'server8511.wuhong_8511', '吴宏', 'server8511.wuhong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('650', 'D09010379', 'D09010379', '程控电源', 'N6702A', '-5~28V 0~3A', '美国Keysight公司', '1', '1', '吴永武', 'server8511.wuyongwu_8511', '吴永武', 'server8511.wuyongwu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('651', 'W07020042', 'W07020042', '信号源', 'N5181A', '10MHZ~6GHZ', '美国Agilent公司', '1', '1', '吴永武', 'server8511.wuyongwu_8511', '吴永武', 'server8511.wuyongwu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('652', 'D05040029', 'D05040029', '数字多用表（含温度采集系统）', '2700', '6.5位', '吉时利', '1', '1', '武冠言', 'server8511.wuguanyan_8511', '武冠言', 'server8511.wuguanyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('653', 'D09010229', 'D09010229', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('654', 'D09010351', 'D09010351', '直流稳压电源', 'GPS3303C', '0-30V  0-3A', '台湾固伟', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('655', 'D09010352', 'D09010352', '直流稳压电源', 'GPS3303C', '0-32V  0-3A', '台湾固伟', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('656', 'D09010353', 'D09010353', '直流稳压电源', 'GPS3303C', '0-32V  0-3A', '台湾固伟', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('657', 'D09020175', 'D09020175', '交流净化电源', 'JJW-10KVA', '10KVA  380V', '中国爱克赛', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('658', 'D09020176', 'D09020176', '交流净化电源', 'JJW-10KVA', '10KVA   380V', '中国爱克赛', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('659', 'D09020178', 'D09020178', '交流净化电源', 'JJW-30KVA', '30KVA  380V', '中国爱克赛', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('660', 'D09020179', 'D09020179', '交流净化电源', 'JJW-30KVA', '30KVA  380V', '中国爱克赛', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('661', 'W08010130', 'W08010130', '数字示波器', 'WR104MXi', '1GHz', '美国力科公司', '1', '1', '武金秋', 'server8511.wujinqiu_8511', '武金秋', 'server8511.wujinqiu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('662', 'W08120050', 'W08120050', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ（含相噪）', '美国Agilent公司', '1', '1', '相海露', 'server8511.xianghailu_8511', '相海露', 'server8511.xianghailu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('663', 'W08120053', 'W08120053', '频谱分析仪', 'AV4036E', '3HZ~26.5GHZ', '41所', '1', '1', '相海露', 'server8511.xianghailu_8511', '相海露', 'server8511.xianghailu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('664', 'W06040017', 'W06040017', '矢量网络分析仪', 'MS4644A', '10MHz-40GHz', '美国安立公司', '1', '1', '刑晓俊', '', '刑晓俊', '', '1', null);
INSERT INTO `fix_asset` VALUES ('665', 'D09010190', 'D09010190', '直流稳压电源', 'DH1716-4D', '35V/0~20A', '大华无线电仪器厂', '1', '1', '熊超', 'server8511.xiongchao_8511', '熊超', 'server8511.xiongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('666', 'D09010241', 'D09010241', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '熊超', 'server8511.xiongchao_8511', '熊超', 'server8511.xiongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('667', 'D09010242', 'D09010242', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '熊超', 'server8511.xiongchao_8511', '熊超', 'server8511.xiongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('668', 'W08120056', 'W08120056', '频谱分析仪', 'N9030A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '熊超', 'server8511.xiongchao_8511', '熊超', 'server8511.xiongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('669', 'Q02012001', 'Q02012001', '千分表', 'S-DialWork', '0-12.5', '瑞士丹青', '1', '1', '徐丽宁', '', '徐丽宁', '', '1', null);
INSERT INTO `fix_asset` VALUES ('670', 'R06010020', 'R06010020', '电子秤', 'JSC-AHC-15', '15KG', '惠而邦公司', '1', '1', '徐冉', 'server8511.xuran_8511', '徐冉', 'server8511.xuran_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('671', 'D09020127', 'D09020127', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('672', 'D09020135', 'D09020135', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('673', 'D09020144', 'D09020144', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('674', 'D09020152', 'D09020152', '交流净化电源', 'JJW-20KVA', '20KVA', '中国爱克赛', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('675', 'W07050019', 'W07050019', '基带信号发生器', 'M8190A', '通道数:2  分辨率:12bit 采样率:12GSa/s\r\n存储深度:每通道2048MSa', '美国Keysight', '1', '1', '徐学华', 'server8511.xuxuehua_8511', '徐学华', 'server8511.xuxuehua_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('676', 'D09010346', 'D09010346', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('677', 'D09010347', 'D09010347', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('678', 'D09010348', 'D09010348', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('679', 'D09010355', 'D09010355', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('680', 'D09010356', 'D09010356', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('681', 'D09010357', 'D09010357', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('682', 'D09010363', 'D09010363', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('683', 'D09010364', 'D09010364', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('684', 'D09010365', 'D09010365', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('685', 'D09010366', 'D09010366', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('686', 'W02020018', 'W02020018', '脉冲功率计', 'AV2436', '0.5GHZ~40GHZ', '41所', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('687', 'W06090045', 'W06090045', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('688', 'W06090052', 'W06090052', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('689', 'W06090053', 'W06090053', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('690', 'W06090054', 'W06090054', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('691', 'W06090056', 'W06090056', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('692', 'W06090057', 'W06090057', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('693', 'W06090058', 'W06090058', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('694', 'W06090059', 'W06090059', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('695', 'W06090062', 'W06090062', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('696', 'W06090063', 'W06090063', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('697', 'W06090064', 'W06090064', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('698', 'W06090065', 'W06090065', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('699', 'W06090066', 'W06090066', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('700', 'W06090067', 'W06090067', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('701', 'W06090068', 'W06090068', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('702', 'W06090069', 'W06090069', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('703', 'W06090075', 'W06090075', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('704', 'W06090076', 'W06090076', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('705', 'W06090077', 'W06090077', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('706', 'W06090078', 'W06090078', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('707', 'W06090079', 'W06090079', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('708', 'W06090080', 'W06090080', '衰减器', 'DTS150', 'DC-18GHZ /150W/40db', '上海华湘公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('709', 'D09010381', 'D09010381', '程控电源', 'N6702A', '-5~28V 0~3A', '美国Keysight公司', '1', '1', '许丞梁', 'server8511.xuchengliang_8511', '许丞梁', 'server8511.xuchengliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('710', 'W07050017', 'W07050017', '任意波形发生器', 'M8190A', '通道数:2    分辨率:12bit                 采样频率:12GSa/s   ', '美国Keysight公司', '1', '1', '许剑南', 'server8511.xujianan_8511', '许剑南', 'server8511.xujianan_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('711', 'D09010374', 'D09010374', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '许猛', 'server8511.xumeng_8511', '许猛', 'server8511.xumeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('712', 'D09010375', 'D09010375', '大功率电源', 'N5766A', '0-40V 0- 38A 1500W', '美国Keysight公司', '1', '1', '许猛', 'server8511.xumeng_8511', '许猛', 'server8511.xumeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('713', 'D09010383', 'D09010383', '大功率电源', 'N5766A', '-5~28V ；0~30A', '美国Keysight公司', '1', '1', '许猛', 'server8511.xumeng_8511', '许猛', 'server8511.xumeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('714', 'D09010247', 'D09010247', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '许颖', 'server8511.xuying_8511', '许颖', 'server8511.xuying_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('715', 'D09010248', 'D09010248', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '许颖', 'server8511.xuying_8511', '许颖', 'server8511.xuying_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('716', 'D09010268', 'D09010268', '直流稳压电源', 'MSP3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '杨诚', 'server8511.yangcheng_8511', '杨诚', 'server8511.yangcheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('717', 'W07020035', 'W07020035', '信号源', 'MG3692B', '10MHZ~20GHZ', '美国安立公司', '1', '1', '杨诚', 'server8511.yangcheng_8511', '杨诚', 'server8511.yangcheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('718', 'D09010328', 'D09010328', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('719', 'D09010329', 'D09010329', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('720', 'D09010330', 'D09010330', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('721', 'W07020057', 'W07020057', '信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('722', 'W07020064', 'W07020064', '微波信号发生器', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('723', 'W07020075', 'W07020075', '信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('724', 'W08010146', 'W08010146', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('725', 'W08120059', 'W08120059', '频谱仪', 'AV4036E', '3HZ~26.5GHZ', '41所', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('726', 'W08120075', 'W08120075', '频谱仪', 'N9030A', '3HZ~26.5GHZ(含相噪)', '美国keysight公司', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('727', 'W08120076', 'W08120076', '频谱仪', 'N9030A', '3HZ~26.5GHZ(含相噪)', '美国keysight公司', '1', '1', '杨恒', 'server8511.yangheng_8511', '杨恒', 'server8511.yangheng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('728', 'W07020031', 'W07020031', '信号源', 'SMJ100A', '100KHZ~6GHZ', '德国RS公司', '1', '1', '杨树树', 'server8511.yangshushu_8511', '杨树树', 'server8511.yangshushu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('729', 'W08120024', 'W08120024', '频谱分析仪', '8563EC', '9KHZ~26.5GHZ（含相噪）', '美国Agilent公司', '1', '1', '杨树树', 'server8511.yangshushu_8511', '杨树树', 'server8511.yangshushu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('730', 'W06040018', 'W06040018', '非线性矢量网络分析仪', 'N5242A', '10MHz-26.5GHz', '美国Agilent公司', '1', '1', '杨颖怡', 'server8511.yangyingyi_8511', '杨颖怡', 'server8511.yangyingyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('731', 'D05040034', 'D05040034', '台式万用表', '34401A', '6.5位', '美国keysight公司', '1', '1', '姚琛', 'server8511.yaochen_8511', '姚琛', 'server8511.yaochen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('732', 'D09010349', 'D09010349', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('733', 'D09010350', 'D09010350', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('734', 'D09010354', 'D09010354', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('735', 'W06040022', 'W06040022', '矢量网络分析仪', 'AV3629D', '45MHZ~20GHZ', '41所', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('736', 'W07020074', 'W07020074', '信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('737', 'W08010119', 'W08010119', '数字示波器', 'LCRY6100A', '1GHZ', '美国力科公司', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('738', 'W08010134', 'W08010134', '数字示波器', '104MXs-B', '1GHZ', '美国力科公司', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('739', 'W12060005', 'W12060005', '噪声系数分析仪', 'AV3984', '10MHZ~26.5GHZ', '41所', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('740', 'D09010382', 'D09010382', '程控电源', 'N6702A', '-5~28V 0~3A', '美国Keysight公司', '1', '1', '业瀚青', 'server8511.yehanqing_8511', '业瀚青', 'server8511.yehanqing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('741', 'D05040030', 'D05040030', '数字多用表', '34401A', '6.5位', '美国Agilent公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('742', 'D08040002', 'D08040002', '多功能校准仪', '5720A', 'DCV：0~1100', '美国FLUKE公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('743', 'W02020010', 'W02020010', '功率计', 'E4418B', '10MHZ~18GHZ    -70~20dbm', '美国Agilent公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('744', 'W03030010', 'W03030010', '铷时钟', '910r', '10M~5MHZ', '美国FLUKE公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('745', 'W03030011', 'W03030011', '频标比对器', 'P07D-2', '1MHZ~10MHZ', '石家庄市无线电四厂', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('746', 'W03030012', 'W03030012', '时间合成器', 'TFG5010T', '频率：0.0001Hz~50MHz老化率：5×10-9；稳定度：＜1×10-10   升降时间： ≤', '石家庄市无线电四厂', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('747', 'W03030013', 'W03030013', '程控射频开关', 'SS2901E', '输入16路输出1路', '石家庄市无线电四厂', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('748', 'W06090012', 'W06090012', '衰减器', '8496/8494', 'DC~18GHZ', 'HP公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('749', 'W06990003', 'W06990003', '电子负载', 'DH2794A-5', '120V/120A/1000W', '大华公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('750', 'W07020017', 'W07020017', '矢量信号源', 'E8267D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('751', 'W08010061', 'W08010061', '示波器', 'COS5041', '40MHZ', '西安红华仪器厂', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('752', 'W08120027', 'W08120027', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ（含相噪）', '美国Agilent公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('753', 'W08120074', 'W08120074', '频谱仪', 'N9030A', '3HZ~26.5GHZ(含相噪)', '美国keysight公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('754', 'W08200003', 'W08200003', '示波器校准仪', '9500B', 'V:10mV-200V T:2nS-50S', 'FLUKE公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('755', 'W09990009', 'W09990009', '测量接收机', 'FSMR26', 'F:20~26G/W:-14dB~26db', '德国RS公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('756', 'D05040027', 'D05040027', '数字多用表', 'GDM-8135', '3.5位', '苏州固伟', '1', '1', '易真', 'server8511.yizhen_8511', '易真', 'server8511.yizhen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('757', 'D09010239', 'D09010239', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '易真', 'server8511.yizhen_8511', '易真', 'server8511.yizhen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('758', 'D09010240', 'D09010240', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '易真', 'server8511.yizhen_8511', '易真', 'server8511.yizhen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('759', 'W07020012', 'W07020012', '信号源', 'MG3692B', '2GHZ~20GHZ', '美国安立公司', '1', '1', '易真', 'server8511.yizhen_8511', '易真', 'server8511.yizhen_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('760', 'W07020085', 'W07020085', '信号发生器', 'MG3694C', '8GHZ~40GHZ', '美国安立公司', '1', '1', '尹震峰', 'server8511.yinzhenyi_8511', '尹震峰', 'server8511.yinzhenyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('761', 'W07070003', 'W07070003', '噪声源', '346CK01', '噪声带宽：300uHz~1800uHz', '美国KEYSIGHT', '1', '1', '尹震峰', 'server8511.yinzhenyi_8511', '尹震峰', 'server8511.yinzhenyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('762', 'W08120072', 'W08120072', '频谱分析仪', 'FSW50', '100KHZ~50GHZ(含相噪)', '德国R&S公司', '1', '1', '尹震峰', 'server8511.yinzhenyi_8511', '尹震峰', 'server8511.yinzhenyi_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('763', 'D09010158', 'D09010158', '直流稳压电源', 'E3610A', '8V/3A   15V/2A   30W', '美国Agilent公司', '1', '1', '尹中超', 'server8511.yinzhongchao_8511', '尹中超', 'server8511.yinzhongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('764', 'D09010159', 'D09010159', '直流稳压电源', 'E3610A', '8V/3A   15V/2A   30W', '美国Agilent公司', '1', '1', '尹中超', 'server8511.yinzhongchao_8511', '尹中超', 'server8511.yinzhongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('765', 'D09010160', 'D09010160', '直流稳压电源', 'E3615A', '20V/3A   60W', '美国Agilent公司', '1', '1', '尹中超', 'server8511.yinzhongchao_8511', '尹中超', 'server8511.yinzhongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('766', 'D09010161', 'D09010161', '直流稳压电源', 'E3615A', '20V/3A   60W', '美国Agilent公司', '1', '1', '尹中超', 'server8511.yinzhongchao_8511', '尹中超', 'server8511.yinzhongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('767', 'W08120011', 'W08120011', '频谱分析仪', 'HP8563E', '9KHZ~26.5GHZ', 'HP公司', '1', '1', '尹中超', 'server8511.yinzhongchao_8511', '尹中超', 'server8511.yinzhongchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('768', 'W08010144', 'W08010144', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '于志良', 'server8511.yuzhiliang_8511', '于志良', 'server8511.yuzhiliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('769', 'W07040023', 'W07040023', '脉冲发生器', '81130A', '脉宽10-999.5S;', '美国Agilent公司', '1', '1', '余志禄', 'server8511.yuzhilu_8511', '余志禄', 'server8511.yuzhilu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('770', 'W08120049', 'W08120049', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ（含相噪）', '美国Agilent公司', '1', '1', '袁丽', 'server8511.yuanli_8511', '袁丽', 'server8511.yuanli_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('771', 'D09010295', 'D09010295', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '翟宏骏', 'server8511.zhaihongjun_8511', '翟宏骏', 'server8511.zhaihongjun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('772', 'D09010305', 'D09010305', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '翟宏骏', 'server8511.zhaihongjun_8511', '翟宏骏', 'server8511.zhaihongjun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('773', 'D09010307', 'D09010307', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '翟宏骏', 'server8511.zhaihongjun_8511', '翟宏骏', 'server8511.zhaihongjun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('774', 'D09010308', 'D09010308', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '翟宏骏', 'server8511.zhaihongjun_8511', '翟宏骏', 'server8511.zhaihongjun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('775', 'W07050015', 'W07050015', '复杂背景信号源', 'N8241A', 'IQ带宽：1GHZ;  采样频率：1.25GHZ', '美国Agilent公司', '1', '1', '翟宏骏', 'server8511.zhaihongjun_8511', '翟宏骏', 'server8511.zhaihongjun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('776', 'W08010161', 'W08010161', '数字示波器', 'DSO90604A', '6GHz', '美国是德科技公司', '1', '1', '翟宏骏', 'server8511.zhaihongjun_8511', '翟宏骏', 'server8511.zhaihongjun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('777', 'D05040039', 'D05040039', '数字多用表', '3458A', '8.5位', '美国keysight公司', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('778', 'W02020008', 'W02020008', '功率计', 'E4416A', '50MHG~18GHZ', '美国Agilent公司', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('779', 'W06040023', 'W06040023', '矢量网络分析仪', 'N5232A', '300KHz-20GHz', '美国keysight公司', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('780', 'W07020071', 'W07020071', '矢量信号源', 'SMW200A', '100KHZ~6GHZ', '德国RS公司', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('781', 'W07070002', 'W07070002', '噪声信号发生器', 'UFX7128A', '频率范围：101MHz-10GHz', '美国WIRELESS公司', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('782', 'W08010155', 'W08010155', '数字示波器', 'MSO5104B', '1GHZ', 'C040058', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('783', 'W08120017', 'W08120017', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('784', 'W08120080', 'W08120080', '手持式频谱仪', 'MS2720T', '频率范围：9kHZ~20GHZ\r\n跟踪源：100kHZ~20GHZ', '美国安立', '1', '1', '张安健', 'server8511.zhanganjian_8511', '张安健', 'server8511.zhanganjian_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('785', 'W07020007', 'W07020007', '信号源', 'SMR-40', '10MHZ~40GHZ', '德国RS公司', '1', '1', '张超', 'server8511.zhangchao_8511', '张超', 'server8511.zhangchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('786', 'W07020095', 'W07020095', '矢量信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '张超', 'server8511.zhangchao_8511', '张超', 'server8511.zhangchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('787', 'W08120013', 'W08120013', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '张超', 'server8511.zhangchao_8511', '张超', 'server8511.zhangchao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('788', 'D09010336', 'D09010336', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '张朝', 'server8511.zhangzhao_8511', '张朝', 'server8511.zhangzhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('789', 'D09010337', 'D09010337', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '张朝', 'server8511.zhangzhao_8511', '张朝', 'server8511.zhangzhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('790', 'D09010338', 'D09010338', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '张朝', 'server8511.zhangzhao_8511', '张朝', 'server8511.zhangzhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('791', 'D09010340', 'D09010340', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '张朝', 'server8511.zhangzhao_8511', '张朝', 'server8511.zhangzhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('792', 'D09010343', 'D09010343', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '张朝', 'server8511.zhangzhao_8511', '张朝', 'server8511.zhangzhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('793', 'D09010344', 'D09010344', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '张朝', 'server8511.zhangzhao_8511', '张朝', 'server8511.zhangzhao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('794', 'W08120030', 'W08120030', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ（含相噪）', '美国Agilent公司', '1', '1', '张冲', 'server8511.zhangchong_8511', '张冲', 'server8511.zhangchong_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('795', 'D09010213', 'D09010213', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张红影', 'server8511.zhanghongying_8511', '张红影', 'server8511.zhanghongying_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('796', 'W06040024', 'W06040024', '矢量网络分析仪', 'N5232A', '300KHz-20GHz', '美国keysight公司', '1', '1', '张红影', 'server8511.zhanghongying_8511', '张红影', 'server8511.zhanghongying_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('797', 'W07020052', 'W07020052', '信号源', 'E8257D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '张红影', 'server8511.zhanghongying_8511', '张红影', 'server8511.zhanghongying_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('798', 'W08010160', 'W08010160', '数字示波器', 'RTO1014', '1GHZ', 'R&S公司', '1', '1', '张红影', 'server8511.zhanghongying_8511', '张红影', 'server8511.zhanghongying_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('799', 'W08120046', 'W08120046', '频谱分析仪', 'FSU26', '20HZ~26.5GHZ', '德国R&S公司', '1', '1', '张红影', 'server8511.zhanghongying_8511', '张红影', 'server8511.zhanghongying_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('800', 'D09010174', 'D09010174', '直流稳压电源', 'MPS-902', '48V/20A', '东奇大华电子仪器厂', '1', '1', '张宏伟', 'server8511.zhanghongwei_8511', '张宏伟', 'server8511.zhanghongwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('801', 'D09010228', 'D09010228', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张宏伟', 'server8511.zhanghongwei_8511', '张宏伟', 'server8511.zhanghongwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('802', 'D09020180', 'D09020180', '交流变频电源', 'HPA-1103', '3KVA', '索卡奇', '1', '1', '张宏伟', 'server8511.zhanghongwei_8511', '张宏伟', 'server8511.zhanghongwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('803', 'W07020065', 'W07020065', '信号源', 'MG3692C', '8MHZ~20GHZ', '美国安立公司', '1', '1', '张健伟', 'server8511.zhangjianwei_8511', '张健伟', 'server8511.zhangjianwei_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('804', 'D09020128', 'D09020128', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('805', 'D09020130', 'D09020130', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('806', 'D09020134', 'D09020134', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('807', 'D09020164', 'D09020164', '交流净化电源', 'JJW-30KVA', '30KVA', '中国爱克赛', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('808', 'W07020061', 'W07020061', '微波矢量信号源', 'E8267D', '250KHz~20GHz', '美国Agilent公司', '1', '1', '张君', 'server8511.zhangjun_8511', '张君', 'server8511.zhangjun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('809', 'D09010335', 'D09010335', '直流稳压电源', '3ZC51-1', '0-30V/0-20A', '南京源典', '1', '1', '张岭旭', 'server8511.zhanglingxu_8511', '张岭旭', 'server8511.zhanglingxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('810', 'W07020050', 'W07020050', '矢量信号源', 'E8267D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '张岭旭', 'server8511.zhanglingxu_8511', '张岭旭', 'server8511.zhanglingxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('811', 'W06090021', 'W06090021', '衰减器', '66-40-34', 'DC-18GHZ /150W/40db', '美国Weinchel公司', '1', '1', '张其刚', 'server8511.zhangqigang_8511', '张其刚', 'server8511.zhangqigang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('812', 'W08120019', 'W08120019', '频谱分析仪', 'E4447A', '3Hz-42.98GHz', '美国Agilent公司', '1', '1', '张桥', 'server8511.zhangqiao_8511', '张桥', 'server8511.zhangqiao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('813', 'W07020083', 'W07020083', '信号源', 'AV1464A', '250KHZ~20GHZ', '41所', '1', '1', '张硕', 'server8511.zhangshuo_8511', '张硕', 'server8511.zhangshuo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('814', 'W08120020', 'W08120020', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ（含相噪）', '美国Agilent公司', '1', '1', '张硕', 'server8511.zhangshuo_8511', '张硕', 'server8511.zhangshuo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('815', 'W06090037', 'W06090037', '衰减器', 'WDTS400', 'DC-8GHZ /400W/40db', '上海华湘公司', '1', '1', '张涛', 'server8511.zhangtao_8511', '张涛', 'server8511.zhangtao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('816', 'W06090038', 'W06090038', '衰减器', 'WDTS400', 'DC-8GHZ /400W/40db', '上海华湘公司', '1', '1', '张涛', 'server8511.zhangtao_8511', '张涛', 'server8511.zhangtao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('817', 'W06090039', 'W06090039', '衰减器', 'WDTS400', 'DC-8GHZ /400W/40db', '上海华湘公司', '1', '1', '张涛', 'server8511.zhangtao_8511', '张涛', 'server8511.zhangtao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('818', 'W07020008', 'W07020008', '信号源', 'HP83732B', '10MHZ~20GHZ', '美国Agilent公司', '1', '1', '张涛', 'server8511.zhangtao_8511', '张涛', 'server8511.zhangtao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('819', 'W08010145', 'W08010145', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '张涛', 'server8511.zhangtao_8511', '张涛', 'server8511.zhangtao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('820', 'W08120036', 'W08120036', '频谱分析仪', 'MS2692A', '50HZ~26.5GHZ', '美国安立公司', '1', '1', '张涛', 'server8511.zhangtao_8511', '张涛', 'server8511.zhangtao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('821', 'D09010299', 'D09010299', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('822', 'D09010300', 'D09010300', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('823', 'D09010301', 'D09010301', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('824', 'D09010309', 'D09010309', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('825', 'D09010310', 'D09010310', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('826', 'D09010311', 'D09010311', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('827', 'D09010312', 'D09010312', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('828', 'D09010313', 'D09010313', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('829', 'W04010006', 'W04010006', '数字电桥', 'TH2816', '', '常州同惠', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('830', 'W08120054', 'W08120054', '频谱分析仪', 'AV4036E', '3HZ~26.5GHZ', '41所', '1', '1', '张晓亮', 'server8511.zhangxiaoliang_8511', '张晓亮', 'server8511.zhangxiaoliang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('831', 'Q08010001', 'Q08010001', '台式超短波电疗仪', 'USW-A', '', '南京医用仪器厂', '1', '1', '张晓英', '', '张晓英', '', '1', null);
INSERT INTO `fix_asset` VALUES ('832', 'W07020103', 'W07020103', '宽带上变频器', 'SMW200A', '100KHZ~20GHZ', '德国RS公司', '1', '1', '张鑫', 'server8511.zhangxin_8511', '张鑫', 'server8511.zhangxin_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('833', 'D09010359', 'D09010359', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '张亚平', 'server8511.zhangyaping_8511', '张亚平', 'server8511.zhangyaping_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('834', 'D09010360', 'D09010360', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '张亚平', 'server8511.zhangyaping_8511', '张亚平', 'server8511.zhangyaping_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('835', 'D09010361', 'D09010361', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '张亚平', 'server8511.zhangyaping_8511', '张亚平', 'server8511.zhangyaping_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('836', 'D09010362', 'D09010362', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '张亚平', 'server8511.zhangyaping_8511', '张亚平', 'server8511.zhangyaping_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('837', 'W02020017', 'W02020017', '脉冲功率计', 'AV2436', '0.5GHZ~40GHZ', '41所', '1', '1', '张亚平', 'server8511.zhangyaping_8511', '张亚平', 'server8511.zhangyaping_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('838', 'W08120055', 'W08120055', '频谱分析仪', 'N9030A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '赵超', 'server8511.zhaochao_8511', '赵超', 'server8511.zhaochao_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('839', 'D09010207', 'D09010207', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '赵洪冰', 'server8511.zhaohongbing_8511', '赵洪冰', 'server8511.zhaohongbing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('840', 'D09010314', 'D09010314', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '赵洪冰', 'server8511.zhaohongbing_8511', '赵洪冰', 'server8511.zhaohongbing_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('841', 'D09010204', 'D09010204', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '赵军', 'server8511.zhaojun_8511', '赵军', 'server8511.zhaojun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('842', 'W06040021', 'W06040021', '矢量网络分析仪', 'AV3629D', '45MHZ~20GHZ', '41所', '1', '1', '赵军', 'server8511.zhaojun_8511', '赵军', 'server8511.zhaojun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('843', 'W07020024', 'W07020024', '信号源', 'MG3694B', '2GHZ~40GHZ', '美国安立公司', '1', '1', '赵军', 'server8511.zhaojun_8511', '赵军', 'server8511.zhaojun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('844', 'W07020093', 'W07020093', '信号源', 'E8257D', '100KHZ~40GHZ', '美国keysight公司', '1', '1', '赵军', 'server8511.zhaojun_8511', '赵军', 'server8511.zhaojun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('845', 'W08120078', 'W08120078', '频谱仪', 'N9030A', '3HZ~43GHZ(含相噪)', '美国keysight公司', '1', '1', '赵军', 'server8511.zhaojun_8511', '赵军', 'server8511.zhaojun_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('846', 'W06040014', 'W06040014', '矢量网络分析仪', 'E8362B', '10MHZ~20GHZ', '美国Agilent公司', '1', '1', '赵旭', 'server8511.zhaoxu_8511', '赵旭', 'server8511.zhaoxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('847', 'W07020028', 'W07020028', '信号源', 'E8257D', '250KHZ~20GHZ（无选件）', '美国Agilent公司', '1', '1', '赵旭', 'server8511.zhaoxu_8511', '赵旭', 'server8511.zhaoxu_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('848', 'D09010203', 'D09010203', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('849', 'D09010217', 'D09010217', '直流稳压源', 'GPS-3510HD', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('850', 'D09010367', 'D09010367', '直流稳压电源', 'APS3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('851', 'W07020025', 'W07020025', '信号源', 'E8257D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('852', 'W08010128', 'W08010128', '数字示波器', 'WR104MXi', '1GHz', '美国力科公司', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('853', 'W08120058', 'W08120058', '频谱仪', 'FSW26', '2HZ~26.5GHZ', '德国R&S公司', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('854', 'W06090017', 'W06090017', '衰减器', '48-40-34', '40DB', '美国Weinchel公司', '1', '1', '甄晓鹏', 'server8511.zhenxiaopeng_8511', '甄晓鹏', 'server8511.zhenxiaopeng_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('855', 'D09010269', 'D09010269', '直流稳压电源', 'MSP3230', '0-32V  0-30A', '大华无线电仪器厂', '1', '1', '郑仕力', 'server8511.zhengshili_8511', '郑仕力', 'server8511.zhengshili_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('856', 'W07020034', 'W07020034', '信号源', 'E8257D', '250KHZ~20GHZ', '美国Agilent公司', '1', '1', '郑仕力', 'server8511.zhengshili_8511', '郑仕力', 'server8511.zhengshili_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('857', 'G02060001', 'G02060001', '激光测距仪', 'PRO 6000', '6KM', '美国Apresys', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('858', 'G09000001', 'G09000001', '红外光谱辐射计', '102F', '/', '美国', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('859', 'G09000002', 'G09000002', '黑体源', '点源 IR-563/301', '可用范围：50～1050℃', '美国BIT PE TRADELTD', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('860', 'G09000003', 'G09000003', '黑体源', '面源 IR-160/301', '可用范围：50～350℃', '美国BIT PE TRADELTD', '1', '0', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('861', 'R01040004', 'R01040004', '红外测温仪', 'MX4+', '(-30～900℃)', '美国Ravtwk公司', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('862', 'R01040005', 'R01040005', '红外测温仪', '574', '(-30～900℃)', 'FLUKE公司', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('863', 'R01040006', 'R01040006', '红外测温仪', '574', '(-30～900℃)', 'FLUKE公司', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('864', 'W15070033', 'W15070033', '红外热像仪', 'P65', '测温量程：-20~1200℃（分段）', '美国FLIR Systems公司', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('865', 'W15070034', 'W15070034', '红外热像仪', 'SC3000', '测温量程：-20～1500℃（分段）', '美国FLIR Systems公司', '1', '1', '周建波', 'server8511.zhoujianbo_8511', '周建波', 'server8511.zhoujianbo_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('866', 'D09010237', 'D09010237', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '朱君强', 'server8511.zhujunqiang_8511', '朱君强', 'server8511.zhujunqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('867', 'D09010238', 'D09010238', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '朱君强', 'server8511.zhujunqiang_8511', '朱君强', 'server8511.zhujunqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('868', 'W07020021', 'W07020021', '信号源', 'MG3691B', '10MHZ~10GHZ', '美国安立公司', '1', '1', '朱君强', 'server8511.zhujunqiang_8511', '朱君强', 'server8511.zhujunqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('869', 'W08120021', 'W08120021', '频谱分析仪', 'E4440A', '3HZ~26.5GHZ', '美国Agilent公司', '1', '1', '朱君强', 'server8511.zhujunqiang_8511', '朱君强', 'server8511.zhujunqiang_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('870', 'W07020022', 'W07020022', '信号源', 'MG3691B', '10MHZ~10GHZ', '美国安立公司', '1', '1', '朱明明', 'server8511.zhumingming_8511', '朱明明', 'server8511.zhumingming_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('871', 'W08010148', 'W08010148', '数字示波器', 'GA1102CAL', '100MHZ', '国睿安泰信公司', '1', '1', '朱文亚', 'server8511.zhuwenya_8511', '朱文亚', 'server8511.zhuwenya_8511', '1', null);
INSERT INTO `fix_asset` VALUES ('872', 'D09010236', 'D09010236', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '朱彦韬', '', '朱彦韬', '', '1', null);
INSERT INTO `fix_asset` VALUES ('873', 'D09010205', 'D09010205', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '朱震辉', '', '朱震辉', '', '1', null);
INSERT INTO `fix_asset` VALUES ('874', 'D09010206', 'D09010206', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '朱震辉', '', '朱震辉', '', '1', null);
INSERT INTO `fix_asset` VALUES ('875', 'D09010194', 'D09010194', '直流稳压电源', 'GPS-3303C', '32V/3A双路；5V输出', '苏州固伟', '1', '1', '祝俊', '', '祝俊', '', '1', null);
INSERT INTO `fix_asset` VALUES ('876', 'dw02990001', 'dw02990001', '照度表', 'LX1330B', '3.5位测量范围:200-20000FC;准确度:±3%rdg±5%f.s', '欣宝科仪', '1', '1', '高京修', 'server8511.gaojingxiu_8511', '高京修', 'server8511.gaojingxiu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('877', 'dw01010005', 'dw01010005', '晶体管毫伏表', 'DA-16-1', '100μV-300V;20Hz-1MHz', '苏州电讯仪器厂', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('878', 'dr06010039', 'dr06010039', '电子秤', 'WTD3003', '300g/0.001g', '杭州万特', '1', '1', '刘微微', 'server8511.liuweiwei_8511', '刘微微', 'server8511.liuweiwei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('879', 'dr06010038', 'dr06010038', '电子秤', 'JSC-AHW-30', '0.2kg-30kg;  显示分度值: 1g检定分度值:10g', '台衡', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('880', 'dr06010037', 'dr06010037', '电子秤', 'XK3108-T2000A', '2KG-100KG;\r\n显示分度值: 10g\r\n检定分度值:100g0.05KG', '台衡', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('881', 'dr06010036', 'dr06010036', '架盘药物天平', 'JPT-5', '200 g', '江苏常熟', '1', '1', '叶舒然', 'server8511.yeshuran_8511', '叶舒然', 'server8511.yeshuran_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('882', 'dr06010001', 'dr06010001', '电子秤', 'ACS-30', '30Kg 分度值10g', '杰力衡器有限公司', '1', '1', '邓坤', 'server8511.dengkun_8511', '邓坤', 'server8511.dengkun_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('883', 'dr02040010', 'dr02040010', '电子血压计', 'HEM-1000', '(0-40)kPa', '欧姆龙科技有限公司', '1', '1', '张晓英', '', '张晓英', '', '0', null);
INSERT INTO `fix_asset` VALUES ('884', 'dr02040009', 'dr02040009', '血压计', 'XJ11D', '(0-40)kPa', '江苏鱼跃医疗设备厂', '1', '1', '张晓英', '', '张晓英', '', '0', null);
INSERT INTO `fix_asset` VALUES ('885', 'dr02040008', 'dr02040008', '血压计', 'XJ11D', '(0-40)kPa', '江苏鱼跃医疗设备厂', '1', '1', '张晓英', '', '张晓英', '', '0', null);
INSERT INTO `fix_asset` VALUES ('886', 'dr02040007', 'dr02040007', '血压计', 'XJ11D', '', '江苏鱼跃医疗设备厂', '1', '1', '张晓英', '', '张晓英', '', '0', null);
INSERT INTO `fix_asset` VALUES ('887', 'dq08000041', 'dq08000041', '身高体重秤', 'TGT-150', '/', '南京衡器厂', '1', '1', '张晓英', '', '张晓英', '', '0', null);
INSERT INTO `fix_asset` VALUES ('888', 'dq08000040', 'dq08000040', '磅秤', 'TGT-100', '/', '南京衡器厂', '1', '1', '王勇慧', 'server8511.wangyonghui_8511', '王勇慧', 'server8511.wangyonghui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('889', 'dq08000031', 'dq08000031', '磅秤', 'TGT-500', '/', '南京衡器厂', '1', '1', '孟秀', 'server8511.mengxiu_8511', '孟秀', 'server8511.mengxiu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('890', 'dq08000029', 'dq08000029', '磅秤', 'TGT-100', '/', '南京衡器厂', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('891', 'dq08000028', 'dq08000028', '磅秤', 'TGT-100', '/', '南京衡器厂', '1', '1', '孔勇', 'server8511.kongyong_8511', '孔勇', 'server8511.kongyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('892', 'dq08000027', 'dq08000027', '磅秤', 'TGT-50', '/', '南京衡器厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('893', 'dq08000026', 'dq08000026', '磅秤', 'TGT-50', '/', '南京衡器厂', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('894', 'dq03010025', 'dq03010025', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('895', 'dq03010024', 'dq03010024', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('896', 'dq03010023', 'dq03010023', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('897', 'dq03010022', 'dq03010022', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('898', 'dq03010021', 'dq03010021', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('899', 'dq03010020', 'dq03010020', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('900', 'dq03010019', 'dq03010019', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('901', 'dq03010018', 'dq03010018', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('902', 'dq03010017', 'dq03010017', '定时器', 'GND-1', '1min-1H', '公牛公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('903', 'dq03010016', 'dq03010016', '秒表', 'PC396', '/', '深圳惠波', '1', '1', '盛成器', 'server8511.shengchengqi_8511', '盛成器', 'server8511.shengchengqi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('904', 'dq03010015', 'dq03010015', '秒表', 'PC396', '/', '深圳惠波', '1', '1', '盛成器', 'server8511.shengchengqi_8511', '盛成器', 'server8511.shengchengqi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('905', 'dq03010014', 'dq03010014', '秒表', 'PC396', '/', '深圳惠波', '1', '1', '盛成器', 'server8511.shengchengqi_8511', '盛成器', 'server8511.shengchengqi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('906', 'dq03010010', 'dq03010010', '秒表', '钻石803', '/', '上海秒表厂', '1', '1', '李子繁', '', '李子繁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('907', 'dq03010008', 'dq03010008', '秒表', '钻石503', '/', '上海秒表厂', '1', '1', '张承宏', '', '张承宏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('908', 'dq03010007', 'dq03010007', '秒表', '钻石503', '/', '上海秒表厂', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('909', 'dq03010004', 'dq03010004', '秒表', '钻石506', '/', '上海秒表厂', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('910', 'dq03010002', 'dq03010002', '秒表', '钻石', '/', '上海秒表厂', '1', '1', '陈萍萍', 'server8511.chenpingping_8511', '陈萍萍', 'server8511.chenpingping_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('911', 'dq03010001', 'dq03010001', '秒表', '钻石', '/', '上海秒表厂', '1', '1', '李子繁', '', '李子繁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('912', 'dq02080211', 'dq02080211', '螺纹样板', '60 °', '/', '上海', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('913', 'dq02080210', 'dq02080210', '螺纹样板', '55 °', '/', '上海', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('914', 'dq02080209', 'dq02080209', 'R规', 'R15-25', 'R15~25', '上海', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('915', 'dq02080208', 'dq02080208', 'R规', 'R7-14.5', 'R7~14.5', '上海', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('916', 'dq02080207', 'dq02080207', 'R规', 'R1-6.5', 'R1~6.5', '上海', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('917', 'dq02080206', 'dq02080206', '塞尺', 'II', 'II型', '上海机床附件厂', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('918', 'dq02080204', 'dq02080204', '角度样块', '29-90', '29~90', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('919', 'dq02080203', 'dq02080203', '塞尺', 'S-591-1-3', 'S-591-1-3', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('920', 'dq02080202', 'dq02080202', '塞尺', 'S-591-1-2', 'S-591-1-2', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('921', 'dq02080201', 'dq02080201', '塞尺', 'S-591-1-1', 'S-591-1-1', '北量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('922', 'dq02080103', 'dq02080103', 'R规', 'R15-25', 'R15~25', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('923', 'dq02080102', 'dq02080102', 'R规', 'R7-14.5', 'R7~14.5', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('924', 'dq02060190', 'dq02060190', '螺纹塞规', 'ST1.6X0.35', 'ST1.6X0.35', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('925', 'dq02060189', 'dq02060189', '螺纹塞规', 'ST1.6X0.35', 'ST1.6X0.35', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('926', 'dq02060188', 'dq02060188', '螺纹塞规', 'ST1.6X0.35', 'ST1.6X0.35', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('927', 'dq02060187', 'dq02060187', '螺纹塞规', 'M6X0.35-6H', 'M6X0.35-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('928', 'dq02060186', 'dq02060186', '螺纹塞规', 'M6X0.35-6H', 'M6X0.35-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('929', 'dq02060185', 'dq02060185', '螺纹塞规', 'M6X0.35-6H', 'M6X0.35-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('930', 'dq02060184', 'dq02060184', '螺纹塞规', 'ST2X0.4', 'ST2X0.4', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('931', 'dq02060183', 'dq02060183', '螺纹塞规', 'ST2X0.4', 'ST2X0.4', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('932', 'dq02060182', 'dq02060182', '螺纹塞规', 'ST2X0.4', 'ST2X0.4', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('933', 'dq02060181', 'dq02060181', '螺纹塞规', 'M2X0.4-6H', 'M2X0.4-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('934', 'dq02060180', 'dq02060180', '螺纹塞规', 'M2X0.4-6H', 'M2X0.4-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('935', 'dq02060179', 'dq02060179', '螺纹塞规', 'M2X0.4-6H', 'M2X0.4-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('936', 'dq02060178', 'dq02060178', '螺纹塞规', 'ST3X0.5', 'ST3X0.5', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('937', 'dq02060177', 'dq02060177', '螺纹塞规', 'ST3X0.5', 'ST3X0.5', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('938', 'dq02060176', 'dq02060176', '螺纹塞规', 'ST3X0.5', 'ST3X0.5', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('939', 'dq02060175', 'dq02060175', '螺纹塞规', 'M3X0.5-6H', 'M3X0.5-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('940', 'dq02060174', 'dq02060174', '螺纹塞规', 'M3X0.5-6H', 'M3X0.5-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('941', 'dq02060173', 'dq02060173', '螺纹塞规', 'M3X0.5-6H', 'M3X0.5-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('942', 'dq02060172', 'dq02060172', '螺纹塞规', 'ST4X0.7', 'ST4X0.7', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('943', 'dq02060171', 'dq02060171', '螺纹塞规', 'ST4X0.7', 'ST4X0.7', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('944', 'dq02060170', 'dq02060170', '螺纹塞规', 'ST4X0.7', 'ST4X0.7', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('945', 'dq02060169', 'dq02060169', '螺纹塞规', 'M4X0.7-6H', 'M4X0.7-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('946', 'dq02060168', 'dq02060168', '螺纹塞规', 'M4X0.7-6H', 'M4X0.7-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('947', 'dq02060167', 'dq02060167', '螺纹塞规', 'M4X0.7-6H', 'M4X0.7-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('948', 'dq02060166', 'dq02060166', '螺纹塞规', 'ST5X0.8', 'ST5X0.8', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('949', 'dq02060165', 'dq02060165', '螺纹塞规', 'ST5X0.8', 'ST5X0.8', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('950', 'dq02060164', 'dq02060164', '螺纹塞规', 'ST5X0.8', 'ST5X0.8', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('951', 'dq02060163', 'dq02060163', '螺纹塞规', 'M10X1.5-6H', 'M10X1.5-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('952', 'dq02060162', 'dq02060162', '螺纹塞规', 'M10X1.5-6H', 'M10X1.5-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('953', 'dq02060161', 'dq02060161', '螺纹塞规', 'M5X0.8-6H', 'M5X0.8-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('954', 'dq02060160', 'dq02060160', '螺纹塞规', 'ST6X1.0', 'ST6X1.0', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('955', 'dq02060159', 'dq02060159', '螺纹塞规', 'ST6X1.0', 'ST6X1.0', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('956', 'dq02060158', 'dq02060158', '螺纹塞规', 'ST6X1.0', 'ST6X1.0', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('957', 'dq02060157', 'dq02060157', '螺纹塞规', 'M6X1-6H', 'M6X1-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('958', 'dq02060156', 'dq02060156', '螺纹塞规', 'M6X1-6H', 'M6X1-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('959', 'dq02060155', 'dq02060155', '螺纹塞规', 'M6X1-6H', 'M6X1-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('960', 'dq02060154', 'dq02060154', '螺纹塞规', 'ST8X1.25', 'ST8X1.25', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('961', 'dq02060153', 'dq02060153', '螺纹塞规', 'ST8X1.25', 'ST8X1.25', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('962', 'dq02060152', 'dq02060152', '螺纹塞规', 'ST8X1.25', 'ST8X1.25', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('963', 'dq02060151', 'dq02060151', '螺纹塞规', 'M8X1.5-6H', 'M8X1.5-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('964', 'dq02060150', 'dq02060150', '螺纹塞规', 'M8X1.5-6H', 'M8X1.5-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('965', 'dq02060149', 'dq02060149', '螺纹塞规', 'M8X1.5-6H', 'M8X1.5-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('966', 'dq02060148', 'dq02060148', '螺纹塞规', 'ST10X1.5', 'ST10X1.5', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('967', 'dq02060147', 'dq02060147', '螺纹塞规', 'ST10X1.5', 'ST10X1.5', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('968', 'dq02060146', 'dq02060146', '螺纹塞规', 'ST10X1.5', 'ST10X1.5', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('969', 'dq02060145', 'dq02060145', '螺纹塞规', 'M10X1.5-6H', 'M10X1.5-6H', '美国', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('970', 'dq02060144', 'dq02060144', '螺纹塞规', 'M10X1.5-6H', 'M10X1.5-6H', '美国', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('971', 'dq02060143', 'dq02060143', '螺纹塞规', 'M10X1.5-6H', 'M10X1.5-6H', '美国', '1', '1', '赵家和', '', '赵家和', '', '0', null);
INSERT INTO `fix_asset` VALUES ('972', 'dq02060142', 'dq02060142', '光面塞规', 'M16*1', 'M16*1', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('973', 'dq02060141', 'dq02060141', '光面塞规', 'M16*1', 'M16*1', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('974', 'dq02060140', 'dq02060140', '光面塞规', 'M16', 'M16', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('975', 'dq02060139', 'dq02060139', '光面塞规', 'M16', 'M16', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('976', 'dq02060138', 'dq02060138', '光面塞规', 'M14', 'M14', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('977', 'dq02060137', 'dq02060137', '光面塞规', 'M14', 'M14', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('978', 'dq02060136', 'dq02060136', '光面塞规', 'M12', 'M12', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('979', 'dq02060135', 'dq02060135', '光面塞规', 'M12', 'M12', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('980', 'dq02060134', 'dq02060134', '光面塞规', 'M10', 'M10', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('981', 'dq02060133', 'dq02060133', '光面塞规', 'M10', 'M10', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('982', 'dq02060132', 'dq02060132', '光面塞规', 'M8', 'M8', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('983', 'dq02060131', 'dq02060131', '光面塞规', 'M8', 'M8', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('984', 'dq02060130', 'dq02060130', '光面塞规', 'M8*0.75', 'M8*0.75', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('985', 'dq02060129', 'dq02060129', '光面塞规', 'M8*0.75', 'M8*0.75', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('986', 'dq02060128', 'dq02060128', '光面塞规', 'M6', 'M6', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('987', 'dq02060127', 'dq02060127', '光面塞规', 'M6', 'M6', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('988', 'dq02060126', 'dq02060126', '光面塞规', 'M6', 'M6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('989', 'dq02060125', 'dq02060125', '光面塞规', 'M6', 'M6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('990', 'dq02060124', 'dq02060124', '光面塞规', 'M6', 'M6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('991', 'dq02060123', 'dq02060123', '光面塞规', 'M6', 'M6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('992', 'dq02060122', 'dq02060122', '光面塞规', 'M5', 'M5', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('993', 'dq02060121', 'dq02060121', '光面塞规', 'M5', 'M5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('994', 'dq02060120', 'dq02060120', '光面塞规', 'M5', 'M5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('995', 'dq02060119', 'dq02060119', '光面塞规', 'M5', 'M5', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('996', 'dq02060118', 'dq02060118', '光面塞规', 'M5', 'M5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('997', 'dq02060117', 'dq02060117', '光面塞规', 'M5', 'M5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('998', 'dq02060116', 'dq02060116', '光面塞规', 'M4', 'M4', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('999', 'dq02060115', 'dq02060115', '光面塞规', 'M4', 'M4', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1000', 'dq02060114', 'dq02060114', '光面塞规', 'M4', 'M4', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1001', 'dq02060113', 'dq02060113', '光面塞规', 'M4', 'M4', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1002', 'dq02060112', 'dq02060112', '光面塞规', 'M4', 'M4', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1003', 'dq02060111', 'dq02060111', '光面塞规', 'M4', 'M4', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1004', 'dq02060110', 'dq02060110', '光面塞规', 'M3', 'M3', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1005', 'dq02060109', 'dq02060109', '光面塞规', 'M3', 'M3', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1006', 'dq02060108', 'dq02060108', '光面塞规', 'M3', 'M3', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1007', 'dq02060107', 'dq02060107', '光面塞规', 'M3', 'M3', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1008', 'dq02060106', 'dq02060106', '光面塞规', 'M3', 'M3', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1009', 'dq02060105', 'dq02060105', '光面塞规', 'M3', 'M3', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1010', 'dq02060104', 'dq02060104', '光面塞规', 'M2.5', 'M2.5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1011', 'dq02060103', 'dq02060103', '光面塞规', 'M2.5', 'M2.5', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1012', 'dq02060102', 'dq02060102', '光面塞规', 'M2.5', 'M2.5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1013', 'dq02060101', 'dq02060101', '光面塞规', 'M2.5', 'M2.5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1014', 'dq02060100', 'dq02060100', '光面塞规', 'M2.5', 'M2.5', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1015', 'dq02060099', 'dq02060099', '光面塞规', 'M2.5', 'M2.5', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1016', 'dq02060098', 'dq02060098', '光面塞规', 'M2', 'M2', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1017', 'dq02060097', 'dq02060097', '光面塞规', 'M2', 'M2', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1018', 'dq02060096', 'dq02060096', '光面塞规', 'M2', 'M2', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1019', 'dq02060095', 'dq02060095', '光面塞规', 'M2', 'M2', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1020', 'dq02060094', 'dq02060094', '光面塞规', 'M2', 'M2', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1021', 'dq02060093', 'dq02060093', '光面塞规', 'M2', 'M2', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1022', 'dq02060092', 'dq02060092', '光面塞规', 'M1.6', 'M1.6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1023', 'dq02060091', 'dq02060091', '光面塞规', 'M1.6', 'M1.6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1024', 'dq02060090', 'dq02060090', '光面塞规', 'M1.6', 'M1.6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1025', 'dq02060089', 'dq02060089', '光面塞规', 'M1.6', 'M1.6', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1026', 'dq02060088', 'dq02060088', '光面塞规', 'M1.6', 'M1.6', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1027', 'dq02060087', 'dq02060087', '光面塞规', 'M1.6', 'M1.6', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1028', 'dq02060086', 'dq02060086', '光面塞规', 'M1.2', 'M1.2', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1029', 'dq02060085', 'dq02060085', '光面塞规', 'M1.2', 'M1.2', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1030', 'dq02060084', 'dq02060084', '螺纹塞规', 'M8*0.75-6H', 'M8*0.75-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1031', 'dq02060083', 'dq02060083', '螺纹塞规', 'M8*0.75-6H', 'M8*0.75-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1032', 'dq02060082', 'dq02060082', '螺纹塞规', 'M16*1-6H', 'M16*1-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1033', 'dq02060081', 'dq02060081', '螺纹塞规', 'M16*1-6H', 'M16-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1034', 'dq02060080', 'dq02060080', '螺纹塞规', 'M16-6H', 'M16-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1035', 'dq02060079', 'dq02060079', '螺纹塞规', 'M16-6H', 'M16-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1036', 'dq02060078', 'dq02060078', '螺纹塞规', 'M14-6H', 'M14-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1037', 'dq02060077', 'dq02060077', '螺纹塞规', 'M14-6H', 'M14-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1038', 'dq02060076', 'dq02060076', '螺纹塞规', 'M12-6H', 'M12-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1039', 'dq02060075', 'dq02060075', '螺纹塞规', 'M12-6H', 'M12-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1040', 'dq02060074', 'dq02060074', '螺纹塞规', 'M10-6H', 'M10-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1041', 'dq02060073', 'dq02060073', '螺纹塞规', 'M10-6H', 'M10-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1042', 'dq02060072', 'dq02060072', '螺纹塞规', 'M8-6H', 'M8-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1043', 'dq02060071', 'dq02060071', '螺纹塞规', 'M8-6H', 'M8-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1044', 'dq02060070', 'dq02060070', '螺纹塞规', 'M6-6H', 'M6-6H', '成量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1045', 'dq02060069', 'dq02060069', '螺纹塞规', 'M6-6H', 'M6-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1046', 'dq02060068', 'dq02060068', '螺纹塞规', 'M5-6H', 'M5-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1047', 'dq02060067', 'dq02060067', '螺纹塞规', 'M5-6H', 'M5-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1048', 'dq02060066', 'dq02060066', '螺纹塞规', 'M4-6H', 'M4-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1049', 'dq02060065', 'dq02060065', '螺纹塞规', 'M4-6H', 'M4-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1050', 'dq02060064', 'dq02060064', '螺纹塞规', 'M3-6H', 'M3-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1051', 'dq02060063', 'dq02060063', '螺纹塞规', 'M3-6H', 'M3-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1052', 'dq02060062', 'dq02060062', '螺纹塞规', 'M2.5-6H', 'M2.5-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1053', 'dq02060061', 'dq02060061', '螺纹塞规', 'M2.5-6H', 'M2.5-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1054', 'dq02060060', 'dq02060060', '螺纹塞规', 'M2.0-6H', 'M2.0-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1055', 'dq02060059', 'dq02060059', '螺纹塞规', 'M2.0-6H', 'M2.0-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1056', 'dq02060058', 'dq02060058', '螺纹塞规', 'M1.6-6H', 'M1.6-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1057', 'dq02060057', 'dq02060057', '螺纹塞规', 'M1.6-6H', 'M1.6-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1058', 'dq02060056', 'dq02060056', '螺纹塞规', 'M1.2-6H', 'M1.2-6H', '成量', '1', '1', '王智伟', '', '王智伟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1059', 'dq02060055', 'dq02060055', '螺纹塞规', 'M1.2-6H', 'M1.2-6H', '成量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1060', 'dq02060054', 'dq02060054', '螺纹塞规', 'M6-6H', 'M6-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1061', 'dq02060053', 'dq02060053', '螺纹塞规', 'M5-6H', 'M5-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1062', 'dq02060052', 'dq02060052', '螺纹塞规', 'M4-6H', 'M4-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1063', 'dq02060051', 'dq02060051', '螺纹塞规', 'M3-6H', 'M3-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1064', 'dq02060050', 'dq02060050', '螺纹塞规', 'M2.5-6H', 'M2.5-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1065', 'dq02060049', 'dq02060049', '螺纹塞规', 'M2-6H', 'M2-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1066', 'dq02060048', 'dq02060048', '螺纹塞规', 'M1.6-6H', 'M1.6-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1067', 'dq02060047', 'dq02060047', '螺纹环规', 'M16X1-6H', 'M16X1-6H T/Z', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1068', 'dq02060046', 'dq02060046', '螺纹环规', 'M6X1-6H', 'M6X1-6H T/Z', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1069', 'dq02060045', 'dq02060045', '螺纹环规', 'M12×1.-6g', 'M12×1.-6g', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1070', 'dq02060044', 'dq02060044', '螺纹环规', 'M8×1.-6g', 'M8×1.-6g', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1071', 'dq02060043', 'dq02060043', '螺纹塞规', 'M12-16H', 'M12-16H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1072', 'dq02060042', 'dq02060042', '螺纹塞规', 'M8-6H', 'M8-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1073', 'dq02060041', 'dq02060041', '螺纹塞规', 'M2.0-6H', 'M2.0-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1074', 'dq02060040', 'dq02060040', '螺纹塞规', 'M2.5-6H', 'M2.5-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1075', 'dq02060039', 'dq02060039', '螺纹塞规', 'M10-6H', 'M10-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1076', 'dq02060038', 'dq02060038', '螺纹塞规', 'M8*1-6H', 'M8*1-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1077', 'dq02060037', 'dq02060037', '螺纹塞规', 'M8-6H', 'M8-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1078', 'dq02060036', 'dq02060036', '螺纹塞规', 'M5-6H', 'M5-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1079', 'dq02060035', 'dq02060035', '螺纹塞规', 'M5*0.5-6H', 'M5*0.5-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1080', 'dq02060034', 'dq02060034', '螺纹塞规', 'M3-6H', 'M3-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1081', 'dq02060033', 'dq02060033', '螺纹塞规', 'M3-6H', 'M3-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1082', 'dq02060031', 'dq02060031', '螺纹塞规', 'M2-6H', 'M2-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1083', 'dq02060030', 'dq02060030', '螺纹塞规', 'M1.6-6H', 'M1.6-6H', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1084', 'dq02060028', 'dq02060028', '光面塞规', 'φ2H8', 'φ2H8', '无锡', '1', '1', '杨金彪', '', '杨金彪', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1085', 'dq02060027', 'dq02060027', '螺纹塞规', 'M2.-6H', 'M2-6H', '无锡', '1', '1', '杨金彪', '', '杨金彪', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1086', 'dq02060026', 'dq02060026', '螺纹塞规', 'M2.5-6H', 'M2.5-6H', '成量', '1', '1', '杨金彪', '', '杨金彪', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1087', 'dq02060025', 'dq02060025', '螺纹塞规', 'M3-6H', 'M3-6H', '成量', '1', '1', '杨金彪', '', '杨金彪', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1088', 'dq02060024', 'dq02060024', '螺纹环规', 'M24×1.5-6g', 'M24×1.5-6g', '航空洪峰精密机械公司', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1089', 'dq02060023', 'dq02060023', '螺纹环规', 'M20×1.5-6g', 'M20×1.5-6g', '航空洪峰精密机械公司', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1090', 'dq02060022', 'dq02060022', '螺纹塞规', 'M24×1.5-6H', 'M24×1.5-6H', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1091', 'dq02060021', 'dq02060021', '螺纹塞规', 'M20×1.5-6H', 'M20×1.5-6H', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1092', 'dq02060020', 'dq02060020', '螺纹塞规', 'M14×1.5-6H', 'M14×1.5-6H', '航空洪峰精密机械公司', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1093', 'dq02060019', 'dq02060019', '螺纹塞规', 'M2X6H', 'M2-6H', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1094', 'dq02060018', 'dq02060018', '螺纹环规', 'M88*1.5-6H', 'M88*1.5-6H', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1095', 'dq02060016', 'dq02060016', '螺纹环规', 'M88*1.5-6H', 'M88*1.5-6H', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1096', 'dq02060015', 'dq02060015', '螺纹塞规', 'M82*1.5-6H', 'M82*1.5-6H', '成量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1097', 'dq02060014', 'dq02060014', '螺纹塞规', 'M88*1.5-6H', 'M88*1.5-6H', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1098', 'dq02060013', 'dq02060013', '螺纹塞规', 'M88*1.5-6H', 'M88*1.5-6H', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1099', 'dq02060012', 'dq02060012', '螺纹塞规', 'M82*1.5-6H', 'M82*1.5-6H', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1100', 'dq02060011', 'dq02060011', '螺纹环规', 'M8X0.75-6g', 'M8X0.75-6g', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1101', 'dq02060010', 'dq02060010', '螺纹塞规', 'M8x0.75-6H', '1付', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1102', 'dq02060009', 'dq02060009', '螺纹环规', '4付', '3付', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1103', 'dq02060008', 'dq02060008', '螺纹塞规', '4付', '3付', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1104', 'dq02060007', 'dq02060007', '螺纹塞规', 'M6X6H', 'M6-6H', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1105', 'dq02060005', 'dq02060005', '螺纹塞规', 'M16', 'M16', '宏峰', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1106', 'dq02060004', 'dq02060004', '螺纹环规', 'M4X6H', 'M4 6H', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1107', 'dq02060003', 'dq02060003', '光面塞规', '9付', '9付', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1108', 'dq02060002', 'dq02060002', '螺纹环规', '3付', '3付', '北量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1109', 'dq02013080', 'dq02013080', '万能角度尺', '0-320', '0~320', '上海量具厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1110', 'dq02013079', 'dq02013079', '万能角度尺', '0-320', '0~320', '上海量具厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1111', 'dq02013078', 'dq02013078', '宽座角尺', '250X160', '250X160', '杭州', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1112', 'dq02013077', 'dq02013077', '刀口尺', '125', '125', '靖江', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1113', 'dq02013076', 'dq02013076', '平板', '100X100', '100X100', '青岛前哨', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1114', 'dq02013075', 'dq02013075', '平板', '200X200', '200X200', '青岛前哨', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1115', 'dq02013074', 'dq02013074', '宽座角尺', '250X160', '250X160', '成量', '1', '1', '杨金彪', '', '杨金彪', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1116', 'dq02013073', 'dq02013073', '宽座角尺', '250X160', '250X160', '成量', '1', '1', '吕林', '', '吕林', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1117', 'dq02013072', 'dq02013072', '宽座角尺', '200X125', '200X125', '上量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1118', 'dq02013071', 'dq02013071', '宽座角尺', '200X125', '200X125', '杭州', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1119', 'dq02013070', 'dq02013070', '宽座角尺', '315X200', '315X200', '杭州', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1120', 'dq02013066', 'dq02013066', '宽座角尺', '63X40', '63X40', '成量', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1121', 'dq02013064', 'dq02013064', '宽座角尺', '200X125', '200X125', '北量', '1', '1', '郭李强', '', '郭李强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1122', 'dq02013063', 'dq02013063', '宽座角尺', '200X125', '200X125', '成量', '1', '1', '童文斌', 'server8511.tongwenbin_8511', '童文斌', 'server8511.tongwenbin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1123', 'dq02013062', 'dq02013062', '宽座角尺', '315X200', '315X200', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1124', 'dq02013061', 'dq02013061', '宽座角尺', '200X125', '200X125', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1125', 'dq02013057', 'dq02013057', '宽座角尺', '63X40', '63X40', '北量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1126', 'dq02013056', 'dq02013056', '宽座角尺', '125X80', '125X80', '杭州', '1', '1', '徐凌凌', 'server8511.xulingling_8511', '徐凌凌', 'server8511.xulingling_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1127', 'dq02013055', 'dq02013055', '弯板', '200X200', '200X200', '/', '1', '1', '孔勇', 'server8511.kongyong_8511', '孔勇', 'server8511.kongyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1128', 'dq02013048', 'dq02013048', '平板', '1000X750', '1000X750', '瓦房店平板厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1129', 'dq02013047', 'dq02013047', '大理石平板', '600X800', '600X800', '北京', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1130', 'dq02013045', 'dq02013045', '方箱', '250X250', '250X250', '/', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1131', 'dq02013043', 'dq02013043', '弯板', '200X160', '200X160', '/', '1', '1', '孔勇', 'server8511.kongyong_8511', '孔勇', 'server8511.kongyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1132', 'dq02013042', 'dq02013042', '量块', '1~100', '38', '成量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1133', 'dq02013041', 'dq02013041', '量块', '125~500', '8块', '成量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1134', 'dq02013040', 'dq02013040', '宽座角尺', '160X100', '160X100', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1135', 'dq02013038', 'dq02013038', '宽座角尺', '200X125', '200×125', '307厂', '1', '1', '毕孟骘', '', '毕孟骘', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1136', 'dq02013037', 'dq02013037', '宽座角尺', '63X40', '63 ×40', '307厂', '1', '1', '胡亚松', '', '胡亚松', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1137', 'dq02013034', 'dq02013034', '刀口尺', '75', '75', '北量', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1138', 'dq02013033', 'dq02013033', '宽座角尺', '200X125', '200×125', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1139', 'dq02013032', 'dq02013032', '平形样本角尺', '160X100', '160×100', '靖江', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1140', 'dq02013028', 'dq02013028', '刀口尺', '125', '125', '北量', '1', '1', '胡晓希', '', '胡晓希', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1141', 'dq02013027', 'dq02013027', '刀口尺', '175', '175MM', '北量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1142', 'dq02013026', 'dq02013026', '宽座角尺', '160X100', '160×100', '307厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1143', 'dq02013024', 'dq02013024', '万能角度尺', '0-320', '0～320', '宁波量具一厂', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1144', 'dq02013023', 'dq02013023', '方块角尺', '200X200', '200X200', '304所', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1145', 'dq02013022', 'dq02013022', '精密V型铁', '65×70×52', '65×70×52', '北京303所', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1146', 'dq02013021', 'dq02013021', '刀口尺', '175', '175MM', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1147', 'dq02013014', 'dq02013014', '刀口尺', '125', '125MM', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1148', 'dq02013013', 'dq02013013', '刀口尺', '125', '125MM', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1149', 'dq02013012', 'dq02013012', '量块', '38', '/', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1150', 'dq02013008', 'dq02013008', '万能角度尺', '0-320', '0~320', '宁波量具厂', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1151', 'dq02013004', 'dq02013004', '组合角尺', '0-180', '0~180', '浙江丽水', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1152', 'dq02013003', 'dq02013003', '万能角度尺', '0-320', '0~320', '浙江丽水', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1153', 'dq02013001', 'dq02013001', '万能角度尺', '0-320', '0~320', '浙江丽水', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1154', 'dq02012024', 'dq02012024', '内径量表', '6-10', '6-10', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1155', 'dq02012019', 'dq02012019', '千分表', '0-1', '0-1', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1156', 'dq02012015', 'dq02012015', '百分表', '0-10', '0-10', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1157', 'dq02012013', 'dq02012013', '百分表', '0-10', '0-10', '成量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1158', 'dq02012012', 'dq02012012', '杠杆百分表', '0-0.8', '0-0.8', '瑞士', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1159', 'dq02012010', 'dq02012010', '杠杆千分表', '0-0.4', '0-0.4', '瑞士', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1160', 'dq02012009', 'dq02012009', '内径量表', '35-50', '35-50', '北量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1161', 'dq02012008', 'dq02012008', '内径量表', '50-100', '50-100', '北量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1162', 'dq02012007', 'dq02012007', '内径量表', '10-18', '10-18', '上量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1163', 'dq02012006', 'dq02012006', '内径量表', '35-50', '35-50', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1164', 'dq02012005', 'dq02012005', '内径量表', '50-160', '50-160', '宁波红旗仪表厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1165', 'dq02012004', 'dq02012004', '内径量表', '18-35', '18-35', '上海东海量具厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1166', 'dq02012003', 'dq02012003', '内径量表', '10-18', '10-18', '上海东海量具厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1167', 'dq02012001', 'dq02012001', '杠杆百分表', '0-0.8', '0~0.8', '上海东海量具厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1168', 'dq02011268', 'dq02011268', '深度尺', '0-150', '0-150 mm', '成量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1169', 'dq02011267', 'dq02011267', '深度尺', '0-150', '0-150 mm', '成量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1170', 'dq02011266', 'dq02011266', '深度尺', '0-150', '0-150 mm', '成量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1171', 'dq02011264', 'dq02011264', '游标卡尺', '0-300', '0-300', '桂量', '1', '1', '付明光', '', '付明光', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1172', 'dq02011263', 'dq02011263', '游标卡尺', '0-300', '0-300', '桂量', '1', '1', '梁珈绮', '', '梁珈绮', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1173', 'dq02011262', 'dq02011262', '深度尺', '0-200', '0-200', '桂量', '1', '1', '梁珈绮', '', '梁珈绮', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1174', 'dq02011261', 'dq02011261', '深度尺', '0-200', '0-200', '桂量', '1', '1', '焦鹏', '', '焦鹏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1175', 'dq02011260', 'dq02011260', '带表卡尺', '0-300', '0-300', '成量', '1', '1', '焦鹏', '', '焦鹏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1176', 'dq02011259', 'dq02011259', '带表卡尺', '0-150', '0-150', '成量', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1177', 'dq02011258', 'dq02011258', '游标卡尺', '0-150', '0-150', '桂量', '1', '1', '顾辉', 'server8511.guhui_8511', '顾辉', 'server8511.guhui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1178', 'dq02011257', 'dq02011257', '游标卡尺', '0-150', '0-150', '桂量', '1', '1', '梁珈绮', '', '梁珈绮', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1179', 'dq02011256', 'dq02011256', '游标卡尺', '0-150', '0-150', '桂量', '1', '1', '付明光', '', '付明光', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1180', 'dq02011255', 'dq02011255', '游标卡尺', '0-150', '0-150', '桂量', '1', '1', '陈翔', 'server8511.chenxiang_8511', '陈翔', 'server8511.chenxiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1181', 'dq02011254', 'dq02011254', '游标卡尺', '0-150', '0-150', '桂量', '1', '1', '马乐娟', 'server8511.malejuan_8511', '马乐娟', 'server8511.malejuan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1182', 'dq02011253', 'dq02011253', '游标卡尺', '0-150', '0-150', '桂量', '1', '1', '夏翔', 'server8511.xiaxiang_8511', '夏翔', 'server8511.xiaxiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1183', 'dq02011252', 'dq02011252', '游标卡尺', '0-150', '0-150', '桂量', '1', '1', '潘浒', 'server8511.panhu_8511', '潘浒', 'server8511.panhu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1184', 'dq02011251', 'dq02011251', '游标卡尺', '0-300', '0-300', '桂量', '1', '1', '刘辉', '', '刘辉', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1185', 'dq02011250', 'dq02011250', '深度尺', '0-200', '0-200', '哈量', '1', '1', '胡晓希', '', '胡晓希', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1186', 'dq02011249', 'dq02011249', '带表卡尺', '0-150', '0-150', '哈量', '1', '1', '胡晓希', '', '胡晓希', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1187', 'dq02011247', 'dq02011247', '带表卡尺', '0-300', '0-300', '哈量', '1', '1', '胡亚松', '', '胡亚松', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1188', 'dq02011246', 'dq02011246', '带表卡尺', '0-300', '0-300', '哈量', '1', '1', '杨金彪', '', '杨金彪', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1189', 'dq02011245', 'dq02011245', '带表卡尺', '0-300', '0-300', '哈量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1190', 'dq02011244', 'dq02011244', '带表卡尺', '0-150', '0-150', '哈量', '1', '1', '胡亚松', '', '胡亚松', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1191', 'dq02011242', 'dq02011242', '带表卡尺', '0-150', '0-150', '哈量', '1', '1', '蔡骏', '', '蔡骏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1192', 'dq02011241', 'dq02011241', '游标卡尺', '0-600', '0-600', '成量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1193', 'dq02011240', 'dq02011240', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1194', 'dq02011239', 'dq02011239', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1195', 'dq02011238', 'dq02011238', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '戴晟晟', '', '戴晟晟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1196', 'dq02011237', 'dq02011237', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '毕孟骘', '', '毕孟骘', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1197', 'dq02011236', 'dq02011236', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '顾猛', '', '顾猛', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1198', 'dq02011235', 'dq02011235', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '戴晟晟', '', '戴晟晟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1199', 'dq02011234', 'dq02011234', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '毕孟骘', '', '毕孟骘', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1200', 'dq02011233', 'dq02011233', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '顾猛', '', '顾猛', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1201', 'dq02011232', 'dq02011232', '带表卡尺', '0-300', '0-300', '成量', '1', '1', '万继', '', '万继', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1202', 'dq02011231', 'dq02011231', '带表卡尺', '0-150', '0-150', '成量', '1', '1', '万继', '', '万继', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1203', 'dq02011230', 'dq02011230', '游标卡尺', '0-150', '0-150', '上量', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1204', 'dq02011229', 'dq02011229', '游标卡尺', '0-150', '0-150', '上量', '1', '1', '卓进发', 'server8511.zhuojinfa_8511', '卓进发', 'server8511.zhuojinfa_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1205', 'dq02011228', 'dq02011228', '带表卡尺', '0-150', '0-150', '上量', '1', '1', '卓进发', 'server8511.zhuojinfa_8511', '卓进发', 'server8511.zhuojinfa_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1206', 'dq02011227', 'dq02011227', '带表卡尺', '0-150', '0-150', '上量', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1207', 'dq02011226', 'dq02011226', '带表卡尺', '0-300', '0-300', '上海量具厂', '1', '1', '马乐娟', 'server8511.malejuan_8511', '马乐娟', 'server8511.malejuan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1208', 'dq02011225', 'dq02011225', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1209', 'dq02011224', 'dq02011224', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1210', 'dq02011223', 'dq02011223', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '尹中超', 'server8511.yinzhongchao_8511', '尹中超', 'server8511.yinzhongchao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1211', 'dq02011222', 'dq02011222', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '胡梦婕', 'server8511.humengjie_8511', '胡梦婕', 'server8511.humengjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1212', 'dq02011221', 'dq02011221', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '刘亚旭', 'server8511.liuyaxu_8511', '刘亚旭', 'server8511.liuyaxu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1213', 'dq02011220', 'dq02011220', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '周文衎', 'server8511.zhouwenkan_8511', '周文衎', 'server8511.zhouwenkan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1214', 'dq02011219', 'dq02011219', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '蒋南平', 'server8511.jiangnanping', '蒋南平', 'server8511.jiangnanping', '0', null);
INSERT INTO `fix_asset` VALUES ('1215', 'dq02011218', 'dq02011218', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '王寰', 'server8511.wanghuan_8511', '王寰', 'server8511.wanghuan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1216', 'dq02011217', 'dq02011217', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '邓坤', 'server8511.dengkun_8511', '邓坤', 'server8511.dengkun_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1217', 'dq02011216', 'dq02011216', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '顾鑫', 'server8511.guxin_8511', '顾鑫', 'server8511.guxin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1218', 'dq02011215', 'dq02011215', '游标卡尺', '0-300', '0-300', '成量', '1', '1', '焦鹏', '', '焦鹏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1219', 'dq02011214', 'dq02011214', '游标卡尺', '0-150', '0-150', '成量', '1', '1', '焦鹏', '', '焦鹏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1220', 'dq02011213', 'dq02011213', '带表卡尺', '0-300', '0-300', '成量', '1', '1', '郭李强', '', '郭李强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1221', 'dq02011212', 'dq02011212', '带表卡尺', '0-150', '0-150', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1222', 'dq02011211', 'dq02011211', '带表卡尺', '0-150', '0-150', '上量', '1', '1', '童文斌', 'server8511.tongwenbin_8511', '童文斌', 'server8511.tongwenbin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1223', 'dq02011210', 'dq02011210', '带表卡尺', '0-150', '0-150', '上量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1224', 'dq02011209', 'dq02011209', '带表卡尺', '0-150', '0-150', '上量', '1', '1', '郭李强', '', '郭李强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1225', 'dq02011206', 'dq02011206', '游标卡尺', '0-300', '0-300', '北量', '1', '1', '李文', 'server8511.liwen_8511', '李文', 'server8511.liwen_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1226', 'dq02011205', 'dq02011205', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '李文', 'server8511.liwen_8511', '李文', 'server8511.liwen_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1227', 'dq02011204', 'dq02011204', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1228', 'dq02011203', 'dq02011203', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '刘辉', '', '刘辉', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1229', 'dq02011202', 'dq02011202', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '王世宇', 'server8511.wangshiyu_8511', '王世宇', 'server8511.wangshiyu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1230', 'dq02011201', 'dq02011201', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '陈翔', 'server8511.chenxiang_8511', '陈翔', 'server8511.chenxiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1231', 'dq02011200', 'dq02011200', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1232', 'dq02011198', 'dq02011198', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1233', 'dq02011197', 'dq02011197', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1234', 'dq02011196', 'dq02011196', '深度尺', '0-200', '0-200', '北量', '1', '1', '韩君祥', 'server8511.hanjunxiang_8511', '韩君祥', 'server8511.hanjunxiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1235', 'dq02011195', 'dq02011195', '带表卡尺', '0-150', '0-150', '西工', '1', '1', '方超', 'server8511.fangchao_8511', '方超', 'server8511.fangchao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1236', 'dq02011194', 'dq02011194', '带表卡尺', '0-150', '0-150', '西工', '1', '1', '朱吟', 'server8511.zhuyin_8511', '朱吟', 'server8511.zhuyin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1237', 'dq02011193', 'dq02011193', '游标卡尺', '0-200', '0-200', '成量', '1', '1', '徐宁', 'server8511.xuning_8511', '徐宁', 'server8511.xuning_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1238', 'dq02011192', 'dq02011192', '深度尺', '0-200', '0-200', '成量', '1', '1', '吕林', '', '吕林', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1239', 'dq02011190', 'dq02011190', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '童文斌', 'server8511.tongwenbin_8511', '童文斌', 'server8511.tongwenbin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1240', 'dq02011189', 'dq02011189', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '吕林', '', '吕林', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1241', 'dq02011188', 'dq02011188', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1242', 'dq02011186', 'dq02011186', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '吕林', '', '吕林', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1243', 'dq02011185', 'dq02011185', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '张君', 'server8511.zhangjun_8511', '张君', 'server8511.zhangjun_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1244', 'dq02011184', 'dq02011184', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '刘辉', '', '刘辉', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1245', 'dq02011183', 'dq02011183', '带表卡尺', '0-300', '0-300', '长风', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1246', 'dq02011182', 'dq02011182', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1247', 'dq02011181', 'dq02011181', '带表卡尺', '0-150', '0-150', '长风', '1', '1', '仲崇洪', '', '仲崇洪', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1248', 'dq02011180', 'dq02011180', '带表卡尺', '0-150', '0-150', '清工', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1249', 'dq02011179', 'dq02011179', '深度尺', '0-200', '0-200', '北量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1250', 'dq02011178', 'dq02011178', '游标卡尺', '0-200', '0-200', '北量', '1', '1', '任汉能', 'server8511.renhanneng_8511', '任汉能', 'server8511.renhanneng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1251', 'dq02011177', 'dq02011177', '游标卡尺', '0-500', '0-500', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1252', 'dq02011176', 'dq02011176', '深度尺', '0-300', '0-200', '上量', '1', '1', '陈江超', '', '陈江超', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1253', 'dq02011175', 'dq02011175', '带表卡尺', '0-300', '0-300', '桂量', '1', '1', '陈江超', '', '陈江超', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1254', 'dq02011173', 'dq02011173', '高度尺', '0-300', '0-300', '上量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1255', 'dq02011172', 'dq02011172', '带表卡尺', '0-150', '0-150', '哈量', '1', '1', '陈江超', '', '陈江超', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1256', 'dq02011171', 'dq02011171', '带表卡尺', '0-300', '0-300', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1257', 'dq02011170', 'dq02011170', '带表卡尺', '0-300', '0-300', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1258', 'dq02011168', 'dq02011168', '带表卡尺', '0-150', '0-150', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1259', 'dq02011167', 'dq02011167', '电子卡尺', '0-150', '0-150', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1260', 'dq02011166', 'dq02011166', '游标卡尺', '0-300', '0-300', '哈量', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1261', 'dq02011165', 'dq02011165', '电子卡尺', '0-150', '0-150', '成都量具厂', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1262', 'dq02011164', 'dq02011164', '带表卡尺', '0-150', '0-300', '长风', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1263', 'dq02011163', 'dq02011163', '游标卡尺', '0-300', '0-300', '北量', '1', '1', '郭李强', '', '郭李强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1264', 'dq02011162', 'dq02011162', '游标卡尺', '0-300', '0-300', '北量', '1', '1', '童文斌', 'server8511.tongwenbin_8511', '童文斌', 'server8511.tongwenbin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1265', 'dq02011161', 'dq02011161', '深度卡尺', '0-200', '0-200', '北量', '1', '1', '童文斌', 'server8511.tongwenbin_8511', '童文斌', 'server8511.tongwenbin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1266', 'dq02011160', 'dq02011160', '深度卡尺', '0-200', '0-200', '北量', '1', '1', '郭李强', '', '郭李强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1267', 'dq02011158', 'dq02011158', '带表卡尺', '0-150', '0-150', '陕西航空工具厂', '1', '1', '童文斌', 'server8511.tongwenbin_8511', '童文斌', 'server8511.tongwenbin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1268', 'dq02011157', 'dq02011157', '带表卡尺', '0-150', '0-150', '成都量具厂', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1269', 'dq02011150', 'dq02011150', '游标卡尺', '0-200', '0-200', '杭州量具厂', '1', '1', '韩君祥', 'server8511.hanjunxiang_8511', '韩君祥', 'server8511.hanjunxiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1270', 'dq02011149', 'dq02011149', '游标卡尺', '0-150', '0-150', '量具厂', '1', '1', '李子繁', '', '李子繁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1271', 'dq02011148', 'dq02011148', '游标卡尺', '0-150', '0-150', '量具厂', '1', '1', '葛爱慧', 'server8511.geaihui_8511', '葛爱慧', 'server8511.geaihui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1272', 'dq02011147', 'dq02011147', '游标卡尺', '0-150', '0-150', '量具厂', '1', '1', '李剑平', 'server8511.lijianping_8511', '李剑平', 'server8511.lijianping_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1273', 'dq02011146', 'dq02011146', '游标卡尺', '0-150', '0-150', '量具厂', '1', '1', '李剑平', 'server8511.lijianping_8511', '李剑平', 'server8511.lijianping_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1274', 'dq02011144', 'dq02011144', '游标卡尺', '0-150', '0-150', '中国制造', '1', '1', '张承宏', '', '张承宏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1275', 'dq02011142', 'dq02011142', '游标卡尺', '0-150', '0-150', '杭州量具厂', '1', '1', '方超', 'server8511.fangchao_8511', '方超', 'server8511.fangchao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1276', 'dq02011139', 'dq02011139', '游标卡尺', '0-150', '0-150', '杭州量具厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1277', 'dq02011136', 'dq02011136', '游标卡尺', '0-150', '0-150', '杭州量具厂', '1', '1', '朱灵', 'server8511.zhuling_8511', '朱灵', 'server8511.zhuling_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1278', 'dq02011135', 'dq02011135', '游标卡尺', '0-150', '0-150', '杭州量具厂', '1', '1', '赵巾卫', 'server8511.zhaojinwei_8511', '赵巾卫', 'server8511.zhaojinwei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1279', 'dq02011132', 'dq02011132', '游标卡尺', '0-150', '0-150', '桂林量具厂', '1', '1', '朱勤保', 'server8511.zhuqinbao_8511', '朱勤保', 'server8511.zhuqinbao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1280', 'dq02011131', 'dq02011131', '深度卡尺', '0-200', '0-200', '桂林量具厂', '1', '1', '徐凌凌', 'server8511.xulingling_8511', '徐凌凌', 'server8511.xulingling_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1281', 'dq02011126', 'dq02011126', '带表卡尺', '0-150', '0-150', '苏州长丰', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1282', 'dq02011120', 'dq02011120', '游标卡尺', '0-125', '0-125', '苏州长丰', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1283', 'dq02011119', 'dq02011119', '深度卡尺', '0-200', '0-200', '苏州长丰', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1284', 'dq02011118', 'dq02011118', '游标卡尺', '0-150', '0-150', '苏州长丰', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1285', 'dq02011117', 'dq02011117', '游标卡尺', '0-125', '0-125', '浙江嘉兴', '1', '1', '胡云', 'server8511.huyun_8511', '胡云', 'server8511.huyun_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1286', 'dq02011114', 'dq02011114', '游标卡尺', '0-200', '0-200', '浙江嘉兴', '1', '1', '缪伟', 'server8511.miaowei_8511', '缪伟', 'server8511.miaowei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1287', 'dq02011112', 'dq02011112', '游标卡尺', '0-125', '0-125', '浙江嘉兴', '1', '1', '潘磊霖', 'server8511.panleilin_8511', '潘磊霖', 'server8511.panleilin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1288', 'dq02011110', 'dq02011110', '游标卡尺', '0-150', '0-150', '浙江嘉兴', '1', '1', '王兴刚', 'server8511.wangxinggang_8511', '王兴刚', 'server8511.wangxinggang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1289', 'dq02011109', 'dq02011109', '游标卡尺', '0-150', '0-150', '浙江嘉兴', '1', '1', '王勇', 'server8511.wangyong_8511', '王勇', 'server8511.wangyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1290', 'dq02011108', 'dq02011108', '游标卡尺', '0-150', '0-150', '浙江嘉兴', '1', '1', '朱勤保', 'server8511.zhuqinbao_8511', '朱勤保', 'server8511.zhuqinbao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1291', 'dq02011107', 'dq02011107', '游标卡尺', '0-150', '0-150', '浙江嘉兴', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1292', 'dq02011106', 'dq02011106', '游标卡尺', '0-150', '0-150', '浙江嘉兴', '1', '1', '张承宏', '', '张承宏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1293', 'dq02011104', 'dq02011104', '游标卡尺', '0-300', '0-300', '浙江嘉兴', '1', '1', '王勇慧', 'server8511.wangyonghui_8511', '王勇慧', 'server8511.wangyonghui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1294', 'dq02011102', 'dq02011102', '游标卡尺', '0-130', '0-130', '广州', '1', '1', '王勇慧', 'server8511.wangyonghui_8511', '王勇慧', 'server8511.wangyonghui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1295', 'dq02011101', 'dq02011101', '游标卡尺', '0-130', '0-130', '广州', '1', '1', '王笃祥', 'server8511.wangduxiang_8511', '王笃祥', 'server8511.wangduxiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1296', 'dq02011099', 'dq02011099', '深度尺', '0-300', '0-300', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1297', 'dq02011095', 'dq02011095', '游标卡尺', '0-150', '0-150', '靖江', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1298', 'dq02011093', 'dq02011093', '深度尺', '0-200', '0-200', '北量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1299', 'dq02011089', 'dq02011089', '游标卡尺', '0-300', '0-300', '靖江', '1', '1', '胡亚松', '', '胡亚松', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1300', 'dq02011088', 'dq02011088', '游标卡尺', '0-300', '0-300', '靖江', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1301', 'dq02011087', 'dq02011087', '深度尺', '0-200', '0-200', '北量', '1', '1', '胡亚松', '', '胡亚松', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1302', 'dq02011084', 'dq02011084', '游标卡尺', '0-150', '0-150', '靖江', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1303', 'dq02011079', 'dq02011079', '高划尺', '0-300', '0-300', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1304', 'dq02011077', 'dq02011077', '游标卡尺', '0-125', '0-125', '关中', '1', '1', '任汉能', 'server8511.renhanneng_8511', '任汉能', 'server8511.renhanneng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1305', 'dq02011072', 'dq02011072', '游标卡尺', '0-125', '0-125', '杭州', '1', '1', '徐凌凌', 'server8511.xulingling_8511', '徐凌凌', 'server8511.xulingling_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1306', 'dq02011069', 'dq02011069', '深度尺', '0-300', '0-300', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1307', 'dq02011068', 'dq02011068', '游标卡尺', '0-300', '0-300', '红峰机械厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1308', 'dq02011062', 'dq02011062', '游标卡尺', '0-130', '0-130', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1309', 'dq02011061', 'dq02011061', '高划尺', '0-300', '0-300', '杭州', '1', '1', '焦鹏', '', '焦鹏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1310', 'dq02011059', 'dq02011059', '游标卡尺', '0-300', '0-300', '浙江嘉兴', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1311', 'dq02011058', 'dq02011058', '游标卡尺', '0-150', '0-150', '上量', '1', '1', '包家雄', '', '包家雄', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1312', 'dq02011057', 'dq02011057', '游标卡尺', '0-150', '0-150', '上量', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1313', 'dq02011054', 'dq02011054', '游标卡尺', '0-300', '0-300', '北量', '1', '1', '包家雄', '', '包家雄', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1314', 'dq02011052', 'dq02011052', '游标卡尺', '0-200', '0-200', '上量', '1', '1', '吴一明', 'server8511.wuyiming_8511', '吴一明', 'server8511.wuyiming_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1315', 'dq02011051', 'dq02011051', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '王伟光', 'server8511.wangweiguang_8511', '王伟光', 'server8511.wangweiguang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1316', 'dq02011050', 'dq02011050', '游标卡尺', '0-125', '0-125', '成量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1317', 'dq02011049', 'dq02011049', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1318', 'dq02011047', 'dq02011047', '游标卡尺', '0-125', '0-125', '北量', '1', '1', '张夫龙', 'server8511.zhangfulong_8511', '张夫龙', 'server8511.zhangfulong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1319', 'dq02011042', 'dq02011042', '游标卡尺', '0-150', '0-150', '上量', '1', '1', '戎建刚', 'server8511.rongjiangang_8511', '戎建刚', 'server8511.rongjiangang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1320', 'dq02011030', 'dq02011030', '游标卡尺', '0-125', '0-125', '北量', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1321', 'dq02011029', 'dq02011029', '高划尺', '0-500', '0-500', '无锡量具厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1322', 'dq02011028', 'dq02011028', '游标卡尺', '0-300', '0-300', '浙江嘉兴', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1323', 'dq02011027', 'dq02011027', '游标卡尺', '0-600', '0-600', '日本', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1324', 'dq02011021', 'dq02011021', '游标卡尺', '0-125', '0-125', '靖江', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1325', 'dq02011019', 'dq02011019', '游标卡尺', '0-125', '0-125', '2', '1', '1', '陈元泰', 'server8511.chenyuantai_8511', '陈元泰', 'server8511.chenyuantai_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1326', 'dq02011017', 'dq02011017', '游标卡尺', '0-300', '0-300', '浙江嘉兴', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1327', 'dq02011016', 'dq02011016', '游标卡尺', '0-300', '0-300', '浙江嘉兴', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1328', 'dq02011015', 'dq02011015', '游标卡尺', '0-300', '0-300', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1329', 'dq02011014', 'dq02011014', '深度尺', '0-300', '0-300', '桂林量具厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1330', 'dq02011010', 'dq02011010', '深度尺', '0-200', '0-200', '桂林量具厂', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1331', 'dq02011009', 'dq02011009', '游标卡尺', '0-150', '0-150', '北量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1332', 'dq02011007', 'dq02011007', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '宋之玉', 'server8511.songzhiyu_8511', '宋之玉', 'server8511.songzhiyu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1333', 'dq02011005', 'dq02011005', '游标卡尺', '0-150', '0-150', '北量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1334', 'dq02011004', 'dq02011004', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '周军', 'server8511.zhoujun_8511', '周军', 'server8511.zhoujun_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1335', 'dq02011002', 'dq02011002', '游标卡尺', '0-150', '0-150', '北量', '1', '1', '吴一明', 'server8511.wuyiming_8511', '吴一明', 'server8511.wuyiming_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1336', 'dq02011001', 'dq02011001', '游标卡尺', '0-125', '0-125', '成量', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1337', 'dq02010096', 'dq02010096', '千分尺', '0-25', '0-25', '哈量', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1338', 'dq02010095', 'dq02010095', '微米千分尺', '0-25mm', '0-25', '哈量', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1339', 'dq02010094', 'dq02010094', '外径千分尺', '0-25', '0~25', '上量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1340', 'dq02010093', 'dq02010093', '螺纹千分尺', '75-100', '75-100', '哈量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1341', 'dq02010092', 'dq02010092', '螺纹千分尺', '25-50', '25-50', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1342', 'dq02010091', 'dq02010091', '螺纹千分尺', '50-75', '50-75', '哈量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1343', 'dq02010090', 'dq02010090', '螺纹千分尺', '75-100', '75-100', '哈量', '1', '1', '郭李强', '', '郭李强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1344', 'dq02010089', 'dq02010089', '测厚仪', '0-1', '0-1', '浙江椒江仪器厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1345', 'dq02010087', 'dq02010087', '螺纹千分尺', '75-100', '75-100', '哈量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1346', 'dq02010086', 'dq02010086', '螺纹千分尺', '50-75', '50-75', '哈量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1347', 'dq02010085', 'dq02010085', '内测千分尺', '75-100', '75-100', '青量', '1', '1', '郭李强', '', '郭李强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1348', 'dq02010084', 'dq02010084', '公法线千分尺', '25-75', '25~75', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1349', 'dq02010083', 'dq02010083', '深度千分尺', '0-100', '0~100', '哈量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1350', 'dq02010082', 'dq02010082', '外径千分尺', '0-25', '0~25', '北量', '1', '1', '张承宏', '', '张承宏', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1351', 'dq02010081', 'dq02010081', '外径千分尺', '0-25', '0~25', '上量', '1', '1', '朱勤保', 'server8511.zhuqinbao_8511', '朱勤保', 'server8511.zhuqinbao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1352', 'dq02010080', 'dq02010080', '外径千分尺', '25-50', '25-50', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1353', 'dq02010079', 'dq02010079', '外径千分尺', '25-50', '25-50', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1354', 'dq02010078', 'dq02010078', '外径千分尺', '25-50', '25-50', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1355', 'dq02010077', 'dq02010077', '外径千分尺', '25-50', '25-50', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1356', 'dq02010076', 'dq02010076', '外径千分尺', '25-50', '25-50', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1357', 'dq02010075', 'dq02010075', '外径千分尺', '0-25', '0-25', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1358', 'dq02010074', 'dq02010074', '外径千分尺', '0-25', '0-25', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1359', 'dq02010073', 'dq02010073', '外径千分尺', '0-25', '0-25', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1360', 'dq02010072', 'dq02010072', '外径千分尺', '0-25', '0-25', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1361', 'dq02010071', 'dq02010071', '外径千分尺', '0-25', '0-25', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1362', 'dq02010069', 'dq02010069', '外径千分尺', '0-25', '0-25', '上量', '1', '1', '包家雄', '', '包家雄', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1363', 'dq02010060', 'dq02010060', '外径千分尺', '0-25', '0-25', '成量', '1', '1', '胡亚松', '', '胡亚松', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1364', 'dq02010059', 'dq02010059', '外径千分尺', '50-75', '50-75', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1365', 'dq02010058', 'dq02010058', '外径千分尺', '0-25', '0-25', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1366', 'dq02010054', 'dq02010054', '外径千分尺', '25-50', '25-50', '哈量', '1', '1', '胡晓希', '', '胡晓希', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1367', 'dq02010052', 'dq02010052', '微米千分尺', '0-25', '0-25', '瑞士', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1368', 'dq02010051', 'dq02010051', '螺纹千分尺', '0-25', '0-25', '日本', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1369', 'dq02010050', 'dq02010050', '板厚千分尺', '0-10', '0-10', '哈量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1370', 'dq02010048', 'dq02010048', '外径千分尺', '0-25', '0-25', '上量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1371', 'dq02010047', 'dq02010047', '外径千分尺', '25-50', '25-50', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1372', 'dq02010046', 'dq02010046', '外径千分尺', '0-25', '0-25', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1373', 'dq02010045', 'dq02010045', '外径千分尺', '100-125', '100-125', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1374', 'dq02010042', 'dq02010042', '外径千分尺', '50-75', '50~75', '上量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1375', 'dq02010040', 'dq02010040', '杠杆千分尺', '0-25', '0-25', '成量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1376', 'dq02010039', 'dq02010039', '外径千分尺', '25-50', '25-50', '上量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1377', 'dq02010038', 'dq02010038', '外径千分尺', '0-25', '0-25', '上量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1378', 'dq02010035', 'dq02010035', '外径千分尺', '0-25', '0-25', '上量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1379', 'dq02010033', 'dq02010033', '外径千分尺', '0-25', '0-25', '上量', '1', '1', '密勇', '', '密勇', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1380', 'dq02010031', 'dq02010031', '内测千分尺', '25-50', '25-50', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1381', 'dq02010030', 'dq02010030', '内测千分尺', '75-100', '75-100', '江西工具厂', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1382', 'dq02010029', 'dq02010029', '外径千分尺', '100-125', '100-125', '上量', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1383', 'dq02010028', 'dq02010028', '外径千分尺', '75-100', '75-100', '上量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1384', 'dq02010024', 'dq02010024', '外径千分尺', '25-50', '25-50', '上量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1385', 'dq02010023', 'dq02010023', '深度千分尺', '0-100', '0-100', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1386', 'dq02010022', 'dq02010022', '深度千分尺', '0-100', '0-100', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1387', 'dq02010021', 'dq02010021', '深度千分尺', '0-300', '0-300', '日本', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1388', 'dq02010020', 'dq02010020', '内测千分尺', '5-30', '5-30', '江西工具厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1389', 'dq02010019', 'dq02010019', '外径千分尺', '25-50', '25-50', '上量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1390', 'dq02010018', 'dq02010018', '螺纹千分尺', '0-25', '0-25', '江峰机械厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1391', 'dq02010017', 'dq02010017', '外径千分尺', '25-50', '25-50', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1392', 'dq02010016', 'dq02010016', '内测千分尺', '5-30', '5-30', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1393', 'dq02010015', 'dq02010015', '内测千分尺', '5-30', '5-30', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1394', 'dq02010014', 'dq02010014', '公法线千分尺', '0-25', '0-25', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1395', 'dq02010013', 'dq02010013', '公法线千分尺', '0-25', '0-25', '上量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1396', 'dq02010012', 'dq02010012', '外径千分尺', '0-25', '0-25', '上量', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1397', 'dq02010010', 'dq02010010', '外径千分尺', '0-25', '0-25', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1398', 'dq02010008', 'dq02010008', '外径千分尺', '25-50', '25-50', '上量', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1399', 'dq02010007', 'dq02010007', '外径千分尺', '125-150', '125-150', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1400', 'dq02010006', 'dq02010006', '外径千分尺', '75-100', '75-100', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1401', 'dq02010005', 'dq02010005', '外径千分尺', '100-125', '100-125', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1402', 'dq02010004', 'dq02010004', '螺纹千分尺', '25-50', '25-50', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1403', 'dq02010003', 'dq02010003', '螺纹千分尺', '0-25', '0-25', '哈量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1404', 'dq02010002', 'dq02010002', '公法线千分尺', '25-50', '25-50', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1405', 'dq02010001', 'dq02010001', '公法线千分尺', '0-25', '0-25', '上量', '1', '1', '朱宁', '', '朱宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1406', 'df06990004', 'df06990004', '气体报警器', 'GAXT-X-DL-2', '', '上海嘉定学联仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1407', 'df06990003', 'df06990003', '气体报警器', 'GAXT-X-DL-2', '', '上海嘉定学联仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1408', 'df06990002', 'df06990002', '气体报警器', 'GAXT-X-DL-2', '', '上海嘉定学联仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1409', 'df06990001', 'df06990001', '气体报警器', 'GAXT-X-DL-2', '', '上海嘉定学联仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1410', 'df06020001', 'df06020001', '涂4粘度计', 'XND-1', 'K:1±0.03', '上海昌吉公司', '1', '1', '唐为国', 'server8511.tangweiguo_8511', '唐为国', 'server8511.tangweiguo_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1411', 'df06010123', 'df06010123', '数字温湿度表', '608-H1', '', '德图公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1412', 'df06010122', 'df06010122', '数字温湿度表', '608-H1', '', '德图公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1413', 'df06010121', 'df06010121', '数字温湿度表', '608-H1', '', '德图公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1414', 'df06010120', 'df06010120', '数字温湿度表', '608-H1', '', '德图公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1415', 'df06010119', 'df06010119', '数字温湿度表', '608-H1', '', '德图公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1416', 'df06010117', 'df06010117', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '武冠言', 'server8511.wuguanyan_8511', '武冠言', 'server8511.wuguanyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1417', 'df06010116', 'df06010116', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '武冠言', 'server8511.wuguanyan_8511', '武冠言', 'server8511.wuguanyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1418', 'df06010115', 'df06010115', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1419', 'df06010114', 'df06010114', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1420', 'df06010113', 'df06010113', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1421', 'df06010112', 'df06010112', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '武冠言', 'server8511.wuguanyan_8511', '武冠言', 'server8511.wuguanyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1422', 'df06010111', 'df06010111', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1423', 'df06010110', 'df06010110', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '吕超峰', 'server8511.lvchaofeng_8511', '吕超峰', 'server8511.lvchaofeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1424', 'df06010109', 'df06010109', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '石俊逸', 'server8511.shijunyi_8511', '石俊逸', 'server8511.shijunyi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1425', 'df06010108', 'df06010108', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '石俊逸', 'server8511.shijunyi_8511', '石俊逸', 'server8511.shijunyi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1426', 'df06010107', 'df06010107', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '吕梅', 'server8511.lvmei_8511', '吕梅', 'server8511.lvmei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1427', 'df06010106', 'df06010106', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '吕梅', 'server8511.lvmei_8511', '吕梅', 'server8511.lvmei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1428', 'df06010105', 'df06010105', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1429', 'df06010104', 'df06010104', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1430', 'df06010103', 'df06010103', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1431', 'df06010102', 'df06010102', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1432', 'df06010101', 'df06010101', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1433', 'df06010100', 'df06010100', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1434', 'df06010099', 'df06010099', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '徐文艳', 'server8511.xuwenyan_8511', '徐文艳', 'server8511.xuwenyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1435', 'df06010098', 'df06010098', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '柳立志', 'server8511.liulizhi_8511', '柳立志', 'server8511.liulizhi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1436', 'df06010097', 'df06010097', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1437', 'df06010096', 'df06010096', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1438', 'df06010095', 'df06010095', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '高传卫', 'server8511.gaochuanwei_8511', '高传卫', 'server8511.gaochuanwei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1439', 'df06010094', 'df06010094', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '周航', 'server8511.zhouhang_8511', '周航', 'server8511.zhouhang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1440', 'df06010093', 'df06010093', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1441', 'df06010092', 'df06010092', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1442', 'df06010091', 'df06010091', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1443', 'df06010090', 'df06010090', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1444', 'df06010089', 'df06010089', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1445', 'df06010088', 'df06010088', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1446', 'df06010087', 'df06010087', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1447', 'df06010086', 'df06010086', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1448', 'df06010085', 'df06010085', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1449', 'df06010084', 'df06010084', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1450', 'df06010083', 'df06010083', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '张婕', 'server8511.zhangjie_8511', '张婕', 'server8511.zhangjie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1451', 'df06010082', 'df06010082', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '花盛悦', 'server8511.huashengyue_8511', '花盛悦', 'server8511.huashengyue_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1452', 'df06010081', 'df06010081', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1453', 'df06010080', 'df06010080', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1454', 'df06010079', 'df06010079', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1455', 'df06010078', 'df06010078', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1456', 'df06010077', 'df06010077', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '顾阳阳', 'server8511.guyangyang_8511', '顾阳阳', 'server8511.guyangyang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1457', 'df06010076', 'df06010076', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '吕梅', 'server8511.lvmei_8511', '吕梅', 'server8511.lvmei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1458', 'df06010075', 'df06010075', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '李国栋', 'server8511.liguodong_8511', '李国栋', 'server8511.liguodong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1459', 'df06010074', 'df06010074', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1460', 'df06010073', 'df06010073', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1461', 'df06010072', 'df06010072', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1462', 'df06010071', 'df06010071', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1463', 'df06010070', 'df06010070', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1464', 'df06010069', 'df06010069', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1465', 'df06010068', 'df06010068', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1466', 'df06010066', 'df06010066', '温湿度表', 'JWS-A3', '/', '北京宝力马公司', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1467', 'df06010065', 'df06010065', '温湿度表', 'HB-109', '温度范围：-50～70℃\r\n湿度：  10%～99%', '伙伴公司', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1468', 'df06010064', 'df06010064', '温湿度表', 'HB-109', '温度范围：-50～70℃\r\n湿度：  10%～99%', '伙伴公司', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1469', 'df06010062', 'df06010062', '温湿度表', 'HB-109', '温度范围：-50～70℃\r\n湿度：  10%～99%', '伙伴公司', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1470', 'df06010061', 'df06010061', '数字测温表', 'L90191', '0-600±3℃', '深圳德瑞科技公司', '1', '1', '王民超', 'server8511.wangminchao_8511', '王民超', 'server8511.wangminchao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1471', 'df06010060', 'df06010060', '数字测温表', 'L90191', '0-600±3℃', '深圳德瑞科技公司', '1', '1', '王民超', 'server8511.wangminchao_8511', '王民超', 'server8511.wangminchao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1472', 'df06010059', 'df06010059', '数字测温表', 'L905191', '0-600±3℃', '深圳德瑞科技公司', '1', '1', '黄昭富', 'server8511.huangzhaofu_8511', '黄昭富', 'server8511.huangzhaofu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1473', 'df06010058', 'df06010058', '数字测温表', 'L905191', '0-600±3℃', '深圳德瑞科技公司', '1', '1', '黄昭富', 'server8511.huangzhaofu_8511', '黄昭富', 'server8511.huangzhaofu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1474', 'df06010057', 'df06010057', '数字测温表', 'QUICK191A', '0-500±5℃', '常州快克公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1475', 'df06010056', 'df06010056', '数字测温表', 'QUICK191A', '0-500±5℃', '常州快克公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1476', 'df06010055', 'df06010055', '温湿度表', 'JWS-A1', '/', '北京宝力马公司', '1', '1', '李文', 'server8511.liwen_8511', '李文', 'server8511.liwen_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1477', 'df06010054', 'df06010054', '温湿度表', 'JWS-A1', '/', '北京宝力马公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1478', 'df06010053', 'df06010053', '温湿度表', 'JWS-A1', '/', '北京宝力马公司', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1479', 'df06010052', 'df06010052', '温湿度表', 'JWS-A1', '/', '北京宝力马公司', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1480', 'df06010051', 'df06010051', '数字温湿度表', '608-H1', 'df06010051', '德国', '1', '1', '王世宇', 'server8511.wangshiyu_8511', '王世宇', 'server8511.wangshiyu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1481', 'df06010050', 'df06010050', '数字温湿度表', '608-H1', '/df06010050', '德国', '1', '1', '王世宇', 'server8511.wangshiyu_8511', '王世宇', 'server8511.wangshiyu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1482', 'df06010049', 'df06010049', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1483', 'df06010048', 'df06010048', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '高京修', 'server8511.gaojingxiu_8511', '高京修', 'server8511.gaojingxiu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1484', 'df06010046', 'df06010046', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1485', 'df06010045', 'df06010045', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1486', 'df06010044', 'df06010044', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '叶舒然', 'server8511.yeshuran_8511', '叶舒然', 'server8511.yeshuran_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1487', 'df06010043', 'df06010043', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '叶舒然', 'server8511.yeshuran_8511', '叶舒然', 'server8511.yeshuran_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1488', 'df06010042', 'df06010042', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '叶舒然', 'server8511.yeshuran_8511', '叶舒然', 'server8511.yeshuran_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1489', 'df06010041', 'df06010041', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1490', 'df06010039', 'df06010039', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '吴海瑞', 'server8511.wuhairui_8511', '吴海瑞', 'server8511.wuhairui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1491', 'df06010038', 'df06010038', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '刘建洋', 'server8511.liujianyang_8511', '刘建洋', 'server8511.liujianyang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1492', 'df06010037', 'df06010037', '数字温湿度表', '608-H1', '/', '德国', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1493', 'df06010035', 'df06010035', '温湿度表', 'MC', '/', '浙江余姚', '1', '1', '郭玉冰', 'server8511.guoyubing_8511', '郭玉冰', 'server8511.guoyubing_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1494', 'df06010032', 'df06010032', '温湿度表', 'MC', '/', '浙江余姚', '1', '1', '刘敬生', 'server8511.liujingsheng_8511', '刘敬生', 'server8511.liujingsheng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1495', 'df06010008', 'df06010008', '温湿度表', 'JWS-A1', '/', '北京手表元件厂', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1496', 'df06010007', 'df06010007', '温湿度表', 'JWS-A1', '/', '北京手表元件厂', '1', '1', '刘莎莎', 'server8511.liushasha_8511', '刘莎莎', 'server8511.liushasha_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1497', 'dd09020079', 'dd09020079', '不间断电源', 'K500A', '后备时间7分钟', '泰琪丰电子有限公司', '1', '1', '田达', 'server8511.tianda_8511', '田达', 'server8511.tianda_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1498', 'dd09020043', 'dd09020043', '不间断电源', 'MX-50SR', '/', '香港', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1499', 'dd09020038', 'dd09020038', '不间断电源', 'MX-50SR', '/', '香港', '1', '1', '季华益', 'server8511.jihuayi_8511', '季华益', 'server8511.jihuayi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1500', 'dd09020036', 'dd09020036', '不间断电源', 'MX-50SR', '/', '香港', '1', '1', '张晖', 'server8511.zhanghui_8511', '张晖', 'server8511.zhanghui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1501', 'dd09020035', 'dd09020035', '不间断电源', 'MX-50SR', '/', '香港', '1', '1', '宁勇', 'server8511.ningyong_8511', '宁勇', 'server8511.ningyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1502', 'dd09020029', 'dd09020029', '不间断电源', 'MX-50SR', '/', '香港', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1503', 'dd05040305', 'dd05040305', '数字万用表', 'UT136A', '三位半', '优德利电子有限公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1504', 'dd05040304', 'dd05040304', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '顾亚娟', '', '顾亚娟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1505', 'dd05040303', 'dd05040303', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '彭仁富', '', '彭仁富', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1506', 'dd05040302', 'dd05040302', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '罗兵', '', '罗兵', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1507', 'dd05040301', 'dd05040301', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '乔治', '', '乔治', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1508', 'dd05040300', 'dd05040300', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '洪强', '', '洪强', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1509', 'dd05040299', 'dd05040299', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '崔丹', '', '崔丹', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1510', 'dd05040298', 'dd05040298', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '代蒙蒙', '', '代蒙蒙', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1511', 'dd05040297', 'dd05040297', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1512', 'dd05040296', 'dd05040296', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '张原雷', 'server8511.zhangyuanlei_8511', '张原雷', 'server8511.zhangyuanlei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1513', 'dd05040295', 'dd05040295', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '吴铁成', 'server8511.wutiecheng_8511', '吴铁成', 'server8511.wutiecheng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1514', 'dd05040294', 'dd05040294', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1515', 'dd05040293', 'dd05040293', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '宋娜', '', '宋娜', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1516', 'dd05040292', 'dd05040292', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '徐智超', '', '徐智超', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1517', 'dd05040291', 'dd05040291', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王勇2', '', '王勇2', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1518', 'dd05040290', 'dd05040290', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '缪细洋', 'server8511.miuxiyang_8511', '缪细洋', 'server8511.miuxiyang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1519', 'dd05040289', 'dd05040289', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '钱彤彤', '', '钱彤彤', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1520', 'dd05040288', 'dd05040288', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '嵇道香', '', '嵇道香', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1521', 'dd05040287', 'dd05040287', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '孟艳华', 'server8511.mengyanhua_8511', '孟艳华', 'server8511.mengyanhua_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1522', 'dd05040286', 'dd05040286', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '李蓉', '', '李蓉', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1523', 'dd05040285', 'dd05040285', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '经纬', '', '经纬', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1524', 'dd05040284', 'dd05040284', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '吴宏', 'server8511.wuhong_8511', '吴宏', 'server8511.wuhong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1525', 'dd05040283', 'dd05040283', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '孟祥梅', 'server8511.mengxiangmei_8511', '孟祥梅', 'server8511.mengxiangmei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1526', 'dd05040282', 'dd05040282', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '刘亚旭', 'server8511.liuyaxu_8511', '刘亚旭', 'server8511.liuyaxu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1527', 'dd05040281', 'dd05040281', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '相海露', 'server8511.xianghailu_8511', '相海露', 'server8511.xianghailu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1528', 'dd05040280', 'dd05040280', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '蒋帅', 'server8511.jiangshuai_8511', '蒋帅', 'server8511.jiangshuai_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1529', 'dd05040279', 'dd05040279', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1530', 'dd05040278', 'dd05040278', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '刘林', 'server8511.liulin_8511', '刘林', 'server8511.liulin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1531', 'dd05040277', 'dd05040277', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '范逸风', 'server8511.fanyifeng_8511', '范逸风', 'server8511.fanyifeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1532', 'dd05040276', 'dd05040276', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '董国正', 'server8511.dongguozheng_8511', '董国正', 'server8511.dongguozheng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1533', 'dd05040275', 'dd05040275', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '孙文逸', 'server8511.sunwenyi_8511', '孙文逸', 'server8511.sunwenyi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1534', 'dd05040274', 'dd05040274', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '张桥', 'server8511.zhangqiao_8511', '张桥', 'server8511.zhangqiao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1535', 'dd05040273', 'dd05040273', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王勇', 'server8511.wangyong_8511', '王勇', 'server8511.wangyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1536', 'dd05040272', 'dd05040272', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '吴星寒', 'server8511.wuxinghan_8511', '吴星寒', 'server8511.wuxinghan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1537', 'dd05040271', 'dd05040271', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王赛赛', 'server8511.wangsaisai_8511', '王赛赛', 'server8511.wangsaisai_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1538', 'dd05040270', 'dd05040270', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '赵军', 'server8511.zhaojun_8511', '赵军', 'server8511.zhaojun_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1539', 'dd05040269', 'dd05040269', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '池少腾', 'server8511.chishaoteng_8511', '池少腾', 'server8511.chishaoteng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1540', 'dd05040268', 'dd05040268', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '陈乐', 'server8511.chenle_8511', '陈乐', 'server8511.chenle_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1541', 'dd05040267', 'dd05040267', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '梁斌', 'server8511.liangbin_8511', '梁斌', 'server8511.liangbin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1542', 'dd05040265', 'dd05040265', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '熊超', 'server8511.xiongchao_8511', '熊超', 'server8511.xiongchao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1543', 'dd05040264', 'dd05040264', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '赵玉坡', 'server8511.zhaoyupo_8511', '赵玉坡', 'server8511.zhaoyupo_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1544', 'dd05040263', 'dd05040263', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '朱彦韬', '', '朱彦韬', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1545', 'dd05040262', 'dd05040262', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '朱文亚', 'server8511.zhuwenya_8511', '朱文亚', 'server8511.zhuwenya_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1546', 'dd05040261', 'dd05040261', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '彭丽红', '', '彭丽红', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1547', 'dd05040260', 'dd05040260', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王一笑', 'server8511.wangyixiao_8511', '王一笑', 'server8511.wangyixiao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1548', 'dd05040259', 'dd05040259', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '余志禄', 'server8511.yuzhilu_8511', '余志禄', 'server8511.yuzhilu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1549', 'dd05040258', 'dd05040258', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '封涛', '', '封涛', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1550', 'dd05040256', 'dd05040256', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '徐振晨', 'server8511.xuzhenchen_8511', '徐振晨', 'server8511.xuzhenchen_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1551', 'dd05040255', 'dd05040255', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王志奎', 'server8511.wangzhikui_8511', '王志奎', 'server8511.wangzhikui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1552', 'dd05040254', 'dd05040254', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '苏翔', 'server8511.suxiang_8511', '苏翔', 'server8511.suxiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1553', 'dd05040253', 'dd05040253', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '李磊', 'server8511.lilei_8511', '李磊', 'server8511.lilei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1554', 'dd05040251', 'dd05040251', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '李永波', 'server8511.liyongbo_8511', '李永波', 'server8511.liyongbo_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1555', 'dd05040250', 'dd05040250', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '张睿杰', 'server8511.zhangruijie_8511', '张睿杰', 'server8511.zhangruijie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1556', 'dd05040249', 'dd05040249', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '李文帅', 'server8511.liwenshuai_8511', '李文帅', 'server8511.liwenshuai_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1557', 'dd05040248', 'dd05040248', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '马伟男', 'server8511.maweinan_8511', '马伟男', 'server8511.maweinan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1558', 'dd05040247', 'dd05040247', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '万君磊', 'server8511.wanjunlei_8511', '万君磊', 'server8511.wanjunlei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1559', 'dd05040246', 'dd05040246', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '陈舟', 'server8511.chenzhou_8511', '陈舟', 'server8511.chenzhou_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1560', 'dd05040245', 'dd05040245', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王瑾', 'server8511.wangjin_8511', '王瑾', 'server8511.wangjin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1561', 'dd05040244', 'dd05040244', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '滕奔奔', 'server8511.tengbenben_8511', '滕奔奔', 'server8511.tengbenben_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1562', 'dd05040243', 'dd05040243', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '袁春辉', 'server8511.yuanchunhui_8511', '袁春辉', 'server8511.yuanchunhui_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1563', 'dd05040242', 'dd05040242', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王宇航', '', '王宇航', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1564', 'dd05040241', 'dd05040241', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '陆平', 'server8511.luping_8511', '陆平', 'server8511.luping_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1565', 'dd05040240', 'dd05040240', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '石鑫', 'server8511.shixin_8511', '石鑫', 'server8511.shixin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1566', 'dd05040239', 'dd05040239', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '徐丽宁', '', '徐丽宁', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1567', 'dd05040238', 'dd05040238', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '唐伟峰', 'server8511.tangweifeng_8511', '唐伟峰', 'server8511.tangweifeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1568', 'dd05040237', 'dd05040237', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '丁玮琦', 'server8511.dingweiqi_8511', '丁玮琦', 'server8511.dingweiqi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1569', 'dd05040236', 'dd05040236', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '吴迪', 'server8511.wudi2_8511', '吴迪', 'server8511.wudi2_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1570', 'dd05040235', 'dd05040235', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '李辰晶', 'server8511.lichenjing_8511', '李辰晶', 'server8511.lichenjing_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1571', 'dd05040233', 'dd05040233', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '孙宏途', 'server8511.sunhongtu_8511', '孙宏途', 'server8511.sunhongtu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1572', 'dd05040232', 'dd05040232', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '尹震峰', 'server8511.yinzhenyi_8511', '尹震峰', 'server8511.yinzhenyi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1573', 'dd05040231', 'dd05040231', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '李校石', 'server8511.lixiaoshi_8511', '李校石', 'server8511.lixiaoshi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1574', 'dd05040229', 'dd05040229', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '李艳良', 'server8511.liyanliang_8511', '李艳良', 'server8511.liyanliang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1575', 'dd05040228', 'dd05040228', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '刘銮銮', 'server8511.liuluanluan_8511', '刘銮銮', 'server8511.liuluanluan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1576', 'dd05040227', 'dd05040227', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '王舜', '', '王舜', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1577', 'dd05040226', 'dd05040226', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '方猛', 'server8511.fangmeng_8511', '方猛', 'server8511.fangmeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1578', 'dd05040225', 'dd05040225', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '邓迪夫', '', '邓迪夫', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1579', 'dd05040224', 'dd05040224', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '汪小红', 'server8511.wangxiaohong_8511', '汪小红', 'server8511.wangxiaohong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1580', 'dd05040222', 'dd05040222', '数字万用表', 'FLUKE15B+', '三位半', 'FLUKE电子有限公司', '1', '1', '孙昊', 'server8511.sunhao_8511', '孙昊', 'server8511.sunhao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1581', 'dd05040221', 'dd05040221', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '卫君彧', 'server8511.weijunyu_8511', '卫君彧', 'server8511.weijunyu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1582', 'dd05040220', 'dd05040220', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '孙晓琴', '', '孙晓琴', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1583', 'dd05040219', 'dd05040219', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '吴松娣', '', '吴松娣', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1584', 'dd05040215', 'dd05040215', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '刘志添', '', '刘志添', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1585', 'dd05040214', 'dd05040214', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '李磊', 'server8511.lilei_8511', '李磊', 'server8511.lilei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1586', 'dd05040213', 'dd05040213', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '陈江超', '', '陈江超', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1587', 'dd05040212', 'dd05040212', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '代蒙蒙', '', '代蒙蒙', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1588', 'dd05040210', 'dd05040210', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '谭康健', '', '谭康健', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1589', 'dd05040208', 'dd05040208', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '奚洪云', '', '奚洪云', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1590', 'dd05040207', 'dd05040207', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '顾亚娟', '', '顾亚娟', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1591', 'dd05040206', 'dd05040206', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1592', 'dd05040205', 'dd05040205', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '刘凤仙', '', '刘凤仙', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1593', 'dd05040204', 'dd05040204', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '崔丹', '', '崔丹', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1594', 'dd05040203', 'dd05040203', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '李超琼', '', '李超琼', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1595', 'dd05040202', 'dd05040202', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '姚宸业', 'server8511.yaochenye_8511', '姚宸业', 'server8511.yaochenye_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1596', 'dd05040201', 'dd05040201', '数字万用表', 'UC890D', '三位半', '优利德电子有限公司', '1', '1', '梁智勇', 'server8511.liangzhiyong_8511', '梁智勇', 'server8511.liangzhiyong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1597', 'dd05040200', 'dd05040200', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '张棋', 'server8511.zhangqi_8511', '张棋', 'server8511.zhangqi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1598', 'dd05040197', 'dd05040197', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '杭成', 'server8511.hangcheng_8511', '杭成', 'server8511.hangcheng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1599', 'dd05040196', 'dd05040196', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '陈羽', 'server8511.chenyu_8511', '陈羽', 'server8511.chenyu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1600', 'dd05040195', 'dd05040195', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '尉志霞', 'server8511.weizhixia_8511', '尉志霞', 'server8511.weizhixia_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1601', 'dd05040194', 'dd05040194', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '李晨', 'server8511.lichen_8511', '李晨', 'server8511.lichen_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1602', 'dd05040193', 'dd05040193', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '董华飞', 'server8511.donghuafei_8511', '董华飞', 'server8511.donghuafei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1603', 'dd05040192', 'dd05040192', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '成继隆', 'server8511.chengjilong_8511', '成继隆', 'server8511.chengjilong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1604', 'dd05040191', 'dd05040191', '数字万用表', 'UT136A', '三位半', '优利德电子有限公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1605', 'dd05040186', 'dd05040186', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '范敏', 'server8511.fanmin_8511', '范敏', 'server8511.fanmin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1606', 'dd05040185', 'dd05040185', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1607', 'dd05040182', 'dd05040182', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '韩青霞', 'server8511.hanqingxia_8511', '韩青霞', 'server8511.hanqingxia_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1608', 'dd05040181', 'dd05040181', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '於昭', 'server8511.yuzhao_8511', '於昭', 'server8511.yuzhao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1609', 'dd05040178', 'dd05040178', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '梁锋', 'server8511.liangfeng_8511', '梁锋', 'server8511.liangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1610', 'dd05040175', 'dd05040175', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '李司中', 'server8511.lisizhong_8511', '李司中', 'server8511.lisizhong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1611', 'dd05040170', 'dd05040170', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1612', 'dd05040168', 'dd05040168', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '金金花', '', '金金花', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1613', 'dd05040166', 'dd05040166', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '黄昭富', 'server8511.huangzhaofu_8511', '黄昭富', 'server8511.huangzhaofu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1614', 'dd05040162', 'dd05040162', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '张敏', 'server8511.zhangmin_8511', '张敏', 'server8511.zhangmin_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1615', 'dd05040161', 'dd05040161', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1616', 'dd05040160', 'dd05040160', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '袁丽', 'server8511.yuanli_8511', '袁丽', 'server8511.yuanli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1617', 'dd05040159', 'dd05040159', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '张红影', 'server8511.zhanghongying_8511', '张红影', 'server8511.zhanghongying_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1618', 'dd05040155', 'dd05040155', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '潘彦', 'server8511.panyan_8511', '潘彦', 'server8511.panyan_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1619', 'dd05040154', 'dd05040154', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '雷蕾', 'server8511.leilei_8511', '雷蕾', 'server8511.leilei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1620', 'dd05040152', 'dd05040152', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '吴中伟', 'server8511.wuzhongwei_8511', '吴中伟', 'server8511.wuzhongwei_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1621', 'dd05040147', 'dd05040147', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '朱君强', 'server8511.zhujunqiang_8511', '朱君强', 'server8511.zhujunqiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1622', 'dd05040142', 'dd05040142', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1623', 'dd05040137', 'dd05040137', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '宋娜', '', '宋娜', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1624', 'dd05040134', 'dd05040134', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1625', 'dd05040126', 'dd05040126', '数字万用表', 'VC70A', '三位半', '深圳胜利高公司', '1', '1', '赵洪冰', 'server8511.zhaohongbing_8511', '赵洪冰', 'server8511.zhaohongbing_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1626', 'dd05040125', 'dd05040125', '数字万用表', 'VC70A', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1627', 'dd05040119', 'dd05040119', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1628', 'dd05040118', 'dd05040118', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1629', 'dd05040117', 'dd05040117', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1630', 'dd05040116', 'dd05040116', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '徐捷', 'server8511.xujie_8511', '徐捷', 'server8511.xujie_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1631', 'dd05040111', 'dd05040111', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1632', 'dd05040109', 'dd05040109', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1633', 'dd05040107', 'dd05040107', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1634', 'dd05040102', 'dd05040102', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '任敏华', 'server8511.renminhua_8511', '任敏华', 'server8511.renminhua_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1635', 'dd05040099', 'dd05040099', '数字万用表', 'VC890D', '三位半', '深圳胜利高公司', '1', '1', '易真', 'server8511.yizhen_8511', '易真', 'server8511.yizhen_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1636', 'dd05040096', 'dd05040096', '数字万用表', 'FLUKE15B', '三位半', '福禄克公司', '1', '1', '杜菊华', 'server8511.dujuhua_8511', '杜菊华', 'server8511.dujuhua_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1637', 'dd05040095', 'dd05040095', '数字万用表', 'FLUKE17B', '三位半', '福禄克公司', '1', '1', '叶少肖', 'server8511.yeshaoxiao_8511', '叶少肖', 'server8511.yeshaoxiao_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1638', 'dd05040094', 'dd05040094', '数字万用表', 'FLUKE17B', '三位半', '福禄克公司', '1', '1', '陈金仕', 'server8511.chenjinshi_8511', '陈金仕', 'server8511.chenjinshi_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1639', 'dd05040085', 'dd05040085', '数字万用表', 'VC890D', '三位半', '深圳胜利公司', '1', '1', '郝栓柱', 'server8511.haoshuanzhu_8511', '郝栓柱', 'server8511.haoshuanzhu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1640', 'dd05040076', 'dd05040076', '数字万用表', 'FLUKE15B', '三位半', '福禄克公司', '1', '1', '宋之玉', 'server8511.songzhiyu_8511', '宋之玉', 'server8511.songzhiyu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1641', 'dd03020017', 'dd03020017', '数字绝缘电阻表', 'FLUKE1508', '0.01MΩ～10GΩ\r\n测试电压 50～1000V\r\n测试电压准确度 +20%～-0%\r\n短路测试', 'FLUKE公司', '1', '1', '黄昭富', 'server8511.huangzhaofu_8511', '黄昭富', 'server8511.huangzhaofu_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1642', 'dd03020016', 'dd03020016', '方阻仪', 'DMR-1C', '1M-2000Ω', '南京达明', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1643', 'dd03020009', 'dd03020009', '滑线变阻器', 'BX2-10-1', '3100Ω', '上海电阻厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1644', 'dd03020008', 'dd03020008', '滑线变阻器', 'BX4-507', '3A;49Ω', '上海电阻厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1645', 'dd03020007', 'dd03020007', '滑线变阻器', 'BX4-504', '6.1A;12Ω', '上海电阻厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1646', 'dd03020006', 'dd03020006', '滑线变阻器', 'BX4-205', '2.65A;12Ω', '上海电阻厂', '1', '1', '陶远荣', 'server8511.taoyuanrong_8511', '陶远荣', 'server8511.taoyuanrong_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1647', 'dd03020003', 'dd03020003', '旋转式电阻箱', 'ZX21', '/', '上海明光仪表厂', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1648', 'dd03010004', 'dd03010004', '标准电阻', 'P321', '1.0Ω', '苏联', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1649', 'dd03010002', 'dd03010002', '标准电阻', 'P310', '0.01Ω', '苏联', '1', null, '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1650', 'dd01060019', 'dd01060019', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1651', 'dd01060017', 'dd01060017', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1652', 'dd01060016', 'dd01060016', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1653', 'dd01060015', 'dd01060015', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '孙胜利', 'server8511.sunshengli_8511', '孙胜利', 'server8511.sunshengli_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1654', 'dd01060014', 'dd01060014', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1655', 'dd01060013', 'dd01060013', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '王芳', 'server8511.wangfang_8511', '王芳', 'server8511.wangfang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1656', 'dd01060012', 'dd01060012', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1657', 'dd01060011', 'dd01060011', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1658', 'dd01060010', 'dd01060010', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1659', 'dd01060009', 'dd01060009', '爆破欧姆表', 'BP-2000', '0-20Ω，I ≤10mA', '开封精工仪表厂', '1', '1', '黄烽', 'server8511.huangfeng_8511', '黄烽', 'server8511.huangfeng_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1660', 'dd01060003', 'dd01060003', '兆欧表', 'ZC-11-10', '2500V;0-2500MΩ', '上海第六电表厂', '1', '1', '库', '', '库', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1661', 'dd01060002', 'dd01060002', '兆欧表', 'ZC-25-4', '500V;0-1000MΩ', '上海第六电表厂', '1', '1', '陈江超', '', '陈江超', '', '0', null);
INSERT INTO `fix_asset` VALUES ('1662', 'dd01030005', 'dd01030005', '数字钳型表', 'VC3210', '2A~400A', '中国仪通', '1', '1', '王培强', 'server8511.wangpeiqiang_8511', '王培强', 'server8511.wangpeiqiang_8511', '0', null);
INSERT INTO `fix_asset` VALUES ('1663', 'dd01030004', 'dd01030004', '数字钳型表', 'UT201', '/', '优利德科技', '1', '1', '颜源', 'server8511.yanyuan_8511', '颜源', 'server8511.yanyuan_8511', '0', null);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '操作记录子增id',
  `operator` bigint(20) DEFAULT NULL COMMENT '操作者',
  `operator_name` varchar(10) DEFAULT '' COMMENT '操作人名字',
  `type` int(4) DEFAULT NULL COMMENT '操作类型',
  `type_name` varchar(10) DEFAULT '' COMMENT '操作名称',
  `device_id` bigint(20) DEFAULT NULL,
  `device_name` varchar(20) DEFAULT '' COMMENT '设备名称',
  `connect_person` bigint(20) DEFAULT NULL COMMENT '关联人id',
  `connect_person_name` varchar(10) DEFAULT '' COMMENT '关联人名字',
  `create_time` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('24', '1', '0', '[0],', '总公司', '总公司', '', null);
INSERT INTO `sys_dept` VALUES ('25', '2', '24', '[0],[24],', '开发部', '开发部', '', null);
INSERT INTO `sys_dept` VALUES ('26', '3', '24', '[0],[24],', '运营部', '运营部', '', null);
INSERT INTO `sys_dept` VALUES ('27', '4', '24', '[0],[24],', '战略部', '战略部', '', null);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `code` varchar(255) DEFAULT NULL COMMENT '值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('50', '0', '0', '性别', null, 'sys_sex');
INSERT INTO `sys_dict` VALUES ('51', '1', '50', '男', null, '1');
INSERT INTO `sys_dict` VALUES ('52', '2', '50', '女', null, '2');
INSERT INTO `sys_dict` VALUES ('53', '0', '0', '状态', null, 'sys_state');
INSERT INTO `sys_dict` VALUES ('54', '1', '53', '启用', null, '1');
INSERT INTO `sys_dict` VALUES ('55', '2', '53', '禁用', null, '2');
INSERT INTO `sys_dict` VALUES ('56', '0', '0', '账号状态', null, 'account_state');
INSERT INTO `sys_dict` VALUES ('57', '1', '56', '启用', null, '1');
INSERT INTO `sys_dict` VALUES ('58', '2', '56', '冻结', null, '2');
INSERT INTO `sys_dict` VALUES ('59', '3', '56', '已删除', null, '3');

-- ----------------------------
-- Table structure for sys_expense
-- ----------------------------
DROP TABLE IF EXISTS `sys_expense`;
CREATE TABLE `sys_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(20,2) DEFAULT NULL COMMENT '报销金额',
  `desc` varchar(255) DEFAULT '' COMMENT '描述',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `state` int(11) DEFAULT NULL COMMENT '状态: 1.待提交  2:待审核   3.审核通过 4:驳回',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `processId` varchar(255) DEFAULT NULL COMMENT '流程定义id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='报销表';

-- ----------------------------
-- Records of sys_expense
-- ----------------------------

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 COMMENT='登录记录';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('217', '登录失败日志', null, '2018-11-28 01:00:12', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('218', '登录日志', '1', '2018-11-28 01:00:20', '成功', null, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('105', 'system', '0', '[0],', '系统管理', 'fa-user', '#', '4', '1', '1', null, '1', '1');
INSERT INTO `sys_menu` VALUES ('106', 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', '1', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', null, '/mgr/add', '1', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', null, '/mgr/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', null, '/mgr/delete', '3', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', null, '/mgr/reset', '4', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', null, '/mgr/freeze', '5', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', null, '/mgr/setRole', '7', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('114', 'role', 'system', '[0],[system],', '角色管理', null, '/role', '2', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('115', 'role_add', 'role', '[0],[system],[role],', '添加角色', null, '/role/add', '1', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('116', 'role_edit', 'role', '[0],[system],[role],', '修改角色', null, '/role/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('117', 'role_remove', 'role', '[0],[system],[role],', '删除角色', null, '/role/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', null, '/role/setAuthority', '4', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('119', 'menu', 'system', '[0],[system],', '菜单管理', null, '/menu', '4', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('120', 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', null, '/menu/add', '1', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', null, '/menu/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('122', 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', null, '/menu/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('128', 'log', 'system', '[0],[system],', '业务日志', null, '/log', '6', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('130', 'druid', 'system', '[0],[system],', '监控管理', null, '/druid', '7', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('131', 'dept', 'system', '[0],[system],', '部门管理', null, '/dept', '3', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('132', 'dict', 'system', '[0],[system],', '字典管理', null, '/dict', '4', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('133', 'loginLog', 'system', '[0],[system],', '登录日志', null, '/loginLog', '6', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('134', 'log_clean', 'log', '[0],[system],[log],', '清空日志', null, '/log/delLog', '3', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('135', 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', null, '/dept/add', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('136', 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', null, '/dept/update', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('137', 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', null, '/dept/delete', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('138', 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', null, '/dict/add', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('139', 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', null, '/dict/update', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('140', 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', null, '/dict/delete', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('141', 'notice', 'system', '[0],[system],', '通知管理', null, '/notice', '9', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('142', 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', null, '/notice/add', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('143', 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', null, '/notice/update', '2', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('144', 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', null, '/notice/delete', '3', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('145', 'hello', '0', '[0],', '通知', 'fa-rocket', '/notice/hello', '1', '1', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('148', 'code', '0', '[0],', '代码生成', 'fa-code', '/code', '3', '1', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('149', 'api_mgr', '0', '[0],', '接口文档', 'fa-leaf', '/swagger-ui.html', '2', '1', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', '4', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('151', 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('152', 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', '4', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('153', 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('154', 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', '6', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('155', 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', '4', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('156', 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('157', 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', '6', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('158', 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', '2', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('159', 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', '3', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('160', 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('161', 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', '2', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('162', 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('163', 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', '6', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('164', 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', '7', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', '8', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', '9', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', '10', '3', '0', null, '1', null);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='通知表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('6', '世界', '10', '欢迎使用Guns管理系统', '2017-01-11 08:53:20', '1');
INSERT INTO `sys_notice` VALUES ('8', '你好', null, '你好', '2017-05-10 19:28:57', '1');

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logtype` varchar(255) DEFAULT NULL COMMENT '日志类型',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '用户id',
  `classname` varchar(255) DEFAULT NULL COMMENT '类名称',
  `method` text COMMENT '方法名称',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否成功',
  `message` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` bigint(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3792 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_relation
-- ----------------------------
INSERT INTO `sys_relation` VALUES ('3377', '105', '5');
INSERT INTO `sys_relation` VALUES ('3378', '106', '5');
INSERT INTO `sys_relation` VALUES ('3379', '107', '5');
INSERT INTO `sys_relation` VALUES ('3380', '108', '5');
INSERT INTO `sys_relation` VALUES ('3381', '109', '5');
INSERT INTO `sys_relation` VALUES ('3382', '110', '5');
INSERT INTO `sys_relation` VALUES ('3383', '111', '5');
INSERT INTO `sys_relation` VALUES ('3384', '112', '5');
INSERT INTO `sys_relation` VALUES ('3385', '113', '5');
INSERT INTO `sys_relation` VALUES ('3386', '114', '5');
INSERT INTO `sys_relation` VALUES ('3387', '115', '5');
INSERT INTO `sys_relation` VALUES ('3388', '116', '5');
INSERT INTO `sys_relation` VALUES ('3389', '117', '5');
INSERT INTO `sys_relation` VALUES ('3390', '118', '5');
INSERT INTO `sys_relation` VALUES ('3391', '119', '5');
INSERT INTO `sys_relation` VALUES ('3392', '120', '5');
INSERT INTO `sys_relation` VALUES ('3393', '121', '5');
INSERT INTO `sys_relation` VALUES ('3394', '122', '5');
INSERT INTO `sys_relation` VALUES ('3395', '150', '5');
INSERT INTO `sys_relation` VALUES ('3396', '151', '5');
INSERT INTO `sys_relation` VALUES ('3737', '105', '1');
INSERT INTO `sys_relation` VALUES ('3738', '106', '1');
INSERT INTO `sys_relation` VALUES ('3739', '107', '1');
INSERT INTO `sys_relation` VALUES ('3740', '108', '1');
INSERT INTO `sys_relation` VALUES ('3741', '109', '1');
INSERT INTO `sys_relation` VALUES ('3742', '110', '1');
INSERT INTO `sys_relation` VALUES ('3743', '111', '1');
INSERT INTO `sys_relation` VALUES ('3744', '112', '1');
INSERT INTO `sys_relation` VALUES ('3745', '113', '1');
INSERT INTO `sys_relation` VALUES ('3746', '165', '1');
INSERT INTO `sys_relation` VALUES ('3747', '166', '1');
INSERT INTO `sys_relation` VALUES ('3748', '167', '1');
INSERT INTO `sys_relation` VALUES ('3749', '114', '1');
INSERT INTO `sys_relation` VALUES ('3750', '115', '1');
INSERT INTO `sys_relation` VALUES ('3751', '116', '1');
INSERT INTO `sys_relation` VALUES ('3752', '117', '1');
INSERT INTO `sys_relation` VALUES ('3753', '118', '1');
INSERT INTO `sys_relation` VALUES ('3754', '162', '1');
INSERT INTO `sys_relation` VALUES ('3755', '163', '1');
INSERT INTO `sys_relation` VALUES ('3756', '164', '1');
INSERT INTO `sys_relation` VALUES ('3757', '119', '1');
INSERT INTO `sys_relation` VALUES ('3758', '120', '1');
INSERT INTO `sys_relation` VALUES ('3759', '121', '1');
INSERT INTO `sys_relation` VALUES ('3760', '122', '1');
INSERT INTO `sys_relation` VALUES ('3761', '150', '1');
INSERT INTO `sys_relation` VALUES ('3762', '151', '1');
INSERT INTO `sys_relation` VALUES ('3763', '128', '1');
INSERT INTO `sys_relation` VALUES ('3764', '134', '1');
INSERT INTO `sys_relation` VALUES ('3765', '158', '1');
INSERT INTO `sys_relation` VALUES ('3766', '159', '1');
INSERT INTO `sys_relation` VALUES ('3767', '130', '1');
INSERT INTO `sys_relation` VALUES ('3768', '131', '1');
INSERT INTO `sys_relation` VALUES ('3769', '135', '1');
INSERT INTO `sys_relation` VALUES ('3770', '136', '1');
INSERT INTO `sys_relation` VALUES ('3771', '137', '1');
INSERT INTO `sys_relation` VALUES ('3772', '152', '1');
INSERT INTO `sys_relation` VALUES ('3773', '153', '1');
INSERT INTO `sys_relation` VALUES ('3774', '154', '1');
INSERT INTO `sys_relation` VALUES ('3775', '132', '1');
INSERT INTO `sys_relation` VALUES ('3776', '138', '1');
INSERT INTO `sys_relation` VALUES ('3777', '139', '1');
INSERT INTO `sys_relation` VALUES ('3778', '140', '1');
INSERT INTO `sys_relation` VALUES ('3779', '155', '1');
INSERT INTO `sys_relation` VALUES ('3780', '156', '1');
INSERT INTO `sys_relation` VALUES ('3781', '157', '1');
INSERT INTO `sys_relation` VALUES ('3782', '133', '1');
INSERT INTO `sys_relation` VALUES ('3783', '160', '1');
INSERT INTO `sys_relation` VALUES ('3784', '161', '1');
INSERT INTO `sys_relation` VALUES ('3785', '141', '1');
INSERT INTO `sys_relation` VALUES ('3786', '142', '1');
INSERT INTO `sys_relation` VALUES ('3787', '143', '1');
INSERT INTO `sys_relation` VALUES ('3788', '144', '1');
INSERT INTO `sys_relation` VALUES ('3789', '145', '1');
INSERT INTO `sys_relation` VALUES ('3790', '148', '1');
INSERT INTO `sys_relation` VALUES ('3791', '149', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '0', '超级管理员', '24', 'administrator', '1');
INSERT INTO `sys_role` VALUES ('5', '2', '1', '临时', '26', 'temp', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'girl.gif', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '张三', '2017-05-05 00:00:00', '2', 'sn93@qq.com', '18200000000', '1', '27', '1', '2016-01-29 08:49:53', '25');
INSERT INTO `sys_user` VALUES ('44', null, 'test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', '1', 'abc@123.com', '', '5', '26', '3', '2017-05-16 20:33:37', null);
INSERT INTO `sys_user` VALUES ('45', null, 'boss', '71887a5ad666a18f709e1d4e693d5a35', '1f7bf', '老板', '2017-12-04 00:00:00', '1', '', '', '1', '24', '1', '2017-12-04 22:24:02', null);
INSERT INTO `sys_user` VALUES ('46', null, 'manager', 'b53cac62e7175637d4beb3b16b2f7915', 'j3cs9', '经理', '2017-12-04 00:00:00', '1', '', '', '1', '24', '1', '2017-12-04 22:24:24', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uuid` varchar(50) DEFAULT '' COMMENT 'uuid',
  `user_name` varchar(20) DEFAULT '' COMMENT '员工姓名',
  `email` varchar(50) DEFAULT '' COMMENT '用户唯一标识',
  `user_pwd` varchar(255) DEFAULT '' COMMENT '密码',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `gender` int(2) DEFAULT NULL COMMENT '性别',
  `number` int(20) DEFAULT NULL COMMENT '员工编号',
  `department` varchar(15) DEFAULT '' COMMENT '部门',
  `create_time` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, '15968178172', null, 'e10adc3949ba59abbe56e057f20f883e', '15968178172', null, null, null, null);
INSERT INTO `user` VALUES ('2', null, 'chauncy', null, '670b14728ad9902aecba32e22fa4f6bd', '15000000000', null, null, null, '1542637658000');
INSERT INTO `user` VALUES ('3', null, '柯帆傻逼', null, 'e3ceb5881a0a1fdaad01296d7554868d', '15100000000', '1', '100', '技术部', '1542725057000');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT '',
  `user_name` varchar(50) DEFAULT '',
  `department` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'server8511.luboxiang_8511', '陆伯祥', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('2', 'server8511.wangduxiang_8511', '王笃祥', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('3', 'server8511.chenyongyou_8511', '陈永游', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('4', 'server8511.zhuweiqiang_8511', '朱伟强', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('5', 'server8511.liming_8511', '李明', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('6', 'server8511.jihuayi_8511', '季华益', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('7', 'server8511.zhanghui_8511', '张晖', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('8', 'server8511.shengchengqi_8511', '盛成器', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('9', 'server8511.xuguoping_8511', '徐国平', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('10', 'server8511.lizhijian_8511', '李志坚', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('11', 'server8511.haoguanjun_8511', '郝冠军', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('12', 'server8511.rongjiangang_8511', '戎建刚', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('13', 'server8511.tangmang_8511', '唐莽', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('14', 'server8511.jiangyingqi_8511', '蒋英琦', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('15', 'server8511.zengtao_8511', '曾涛', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('16', 'server8511.jiyaoyuan_8511', '文件机要员', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('17', 'server8511.panyuanyuan_8511', '潘媛媛', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('18', 'server8511.lishigang_8511', '李士刚', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('19', 'server8511.zhangyilong_8511', '张益龙', '综合办公室/8511所/一院');
INSERT INTO `user_info` VALUES ('20', 'server8511.jinyaping_8511', '金雅萍', '党群工作处/8511所/一院');
INSERT INTO `user_info` VALUES ('21', 'server8511.xuzhenyu_8511', '徐振余', '党群工作处/8511所/一院');
INSERT INTO `user_info` VALUES ('22', 'server8511.zhangxianhua_8511', '张献华', '党群工作处/8511所/一院');
INSERT INTO `user_info` VALUES ('23', 'server8511.wanghongkai_8511', '王洪凯', '党群工作处/8511所/一院');
INSERT INTO `user_info` VALUES ('24', 'server8511.guozhengbing_8511', '郭征兵', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('25', 'server8511.jiquan_8511', '季权', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('26', 'server8511.ningyong_8511', '宁勇', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('27', 'server8511.wangkui_8511', '王奎', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('28', 'server8511.xiejianbo_8511', '谢剑波', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('29', 'server8511.libowen2_8511', '李博文2', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('30', 'server8511.zhouwenkan_8511', '周文衎', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('31', 'server8511.zhaorui_8511', '赵锐', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('32', 'server8511.xujialiang_8511', '徐嘉良', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('33', 'server8511.yaochenye_8511', '姚宸业', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('34', 'server8511.zhangzilin_8511', '张子琳', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('35', 'server8511.wangyun_8511', '王昀', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('36', 'server8511.songzhe_8511', '宋哲', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('37', 'server8511.buyang_8511', '步阳', '科研生产处/8511所/一院');
INSERT INTO `user_info` VALUES ('38', 'server8511.jironghua_8511', '吉荣华', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('39', 'server8511.yangzhonghua_8511', '杨忠华', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('40', 'server8511.zhangjin_8511', '张进', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('41', 'server8511.hongchunchong_8511', '洪春冲', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('42', 'server8511.changshuyong_8511', '常书涌', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('43', 'server8511.hegang_8511', '贺刚', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('44', 'server8511.shancheng_8511', '单成', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('45', 'server8511.liguoping_8511', '李国平', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('46', 'server8511.xiongwei_8511', '熊炜', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('47', 'server8511.gengyifang_8511', '耿一方', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('48', 'server8511.caoxiongyu_8511', '曹雄宇', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('49', 'server8511.hanxu_8511', '韩旭', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('50', 'server8511.chenghaoyue_8511', '程浩岳', '发展计划处/8511所/一院');
INSERT INTO `user_info` VALUES ('51', 'server8511.yunweiqun_8511', '云惟群', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('52', 'server8511.liuluanluan_8511', '刘銮銮', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('53', 'server8511.shenyao_8511', '沈尧', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('54', 'server8511.wuhairui_8511', '吴海瑞', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('55', 'server8511.zhangqingxia_8511', '张青霞', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('56', 'server8511.caiwenwen_8511', '蔡文雯', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('57', 'server8511.gongfeng_8511', '巩峰', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('58', 'server8511.wangyujuan_8511', '王玉娟', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('59', 'server8511.daixiaoling_8511', '戴小玲', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('60', 'server8511.zhuzhenghu_8511', '朱正虎', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('61', 'server8511.leilei_8511', '雷蕾', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('62', 'server8511.liushasha_8511', '刘莎莎', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('63', 'server8511.xuexiaochao_8511', '薛晓超', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('64', 'server8511.zhujunsheng_8511', '祝军生', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('65', 'server8511.wuguanyan_8511', '武冠言', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('66', 'server8511.zhangqigang_8511', '张其刚', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('67', 'server8511.daiji_8511', '戴吉', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('68', 'server8511.tuxin_8511', '涂昕', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('69', 'server8511.doutongxin_8511', '窦同新', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('70', 'server8511.weizhen_8511', '魏珍', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('71', 'server8511.zouyajun_8511', '邹亚军', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('72', 'server8511.liguodong_8511', '李国栋', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('73', 'server8511.kejin_8511', '柯金', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('74', 'server8511.liuying_8511', '刘颖', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('75', 'server8511.shiyingjie_8511', '石英杰', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('76', 'server8511.liubingbing_8511', '刘冰冰', '质量工艺处/8511所/一院');
INSERT INTO `user_info` VALUES ('77', 'server8511.lirong_8511', '李荣', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('78', 'server8511.gengman_8511', '耿漫', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('79', 'server8511.fengshuyang_8511', '冯淑阳', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('80', 'server8511.tanghaiyang_8511', '汤海洋', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('81', 'server8511.liyanan_8511_01', '李亚南', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('82', 'server8511.jggl', '价格管理', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('83', 'server8511.tengfei_8511', '滕飞', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('84', 'server8511.yuyun_8511', '余韵', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('85', 'server8511.caichuan_8511', '蔡圳', '财务处/8511所/一院');
INSERT INTO `user_info` VALUES ('86', 'server8511.zhaowei_8511', '赵卫', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('87', 'server8511.chenzhuo_8511', '陈卓', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('88', 'server8511.yangshushu_8511', '杨树树', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('89', 'server8511.xuqing_8511', '徐青', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('90', 'server8511.huxinyu_8511', '胡新宇', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('91', 'server8511.houwendong_8511', '侯文栋', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('92', 'server8511.tianda_8511', '田达', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('93', 'server8511.luxin_8511', '卢鑫', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('94', 'server8511.jizhenhai_8511', '冀贞海', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('95', 'server8511.zhaohongbing_8511', '赵洪冰', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('96', 'server8511.zoujun_8511', '邹军', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('97', 'server8511.xuning_8511', '徐宁', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('98', 'server8511.liguixian_8511', '李贵显', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('99', 'server8511.wangkerang_8511', '王克让', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('100', 'server8511.huangheguo_8511', '黄和国', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('101', 'server8511.zhongming_8511', '钟鸣', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('102', 'server8511.wuhao_8511', '吴昊', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('103', 'server8511.bochao_8511', '薄超', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('104', 'server8511.yangjiamin_8511', '杨佳敏', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('105', 'server8511.liuzhiling_8511', '刘志凌', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('106', 'server8511.yangwei_8511', '杨蔚', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('107', 'server8511.liuzhiwu_8511', '刘志武', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('108', 'server8511.houqingyu_8511', '侯庆禹', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('109', 'server8511.zhuxiaodan_8511', '朱晓丹', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('110', 'server8511.songhaiwei_8511', '宋海伟', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('111', 'server8511.gaoxugang_8511', '高许岗', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('112', 'server8511.panyingfeng_8511', '潘英锋', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('113', 'server8511.wuming_8511', '吴名', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('114', 'server8511.xuxuehua_8511', '徐学华', '第一研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('115', 'server8511.xiongchao_8511', '熊超', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('116', 'server8511.yizhen_8511', '易真', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('117', 'server8511.wangzhonglei_8511', '王忠雷', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('118', 'server8511.zhujunqiang_8511', '朱君强', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('119', 'server8511.lishen_8511', '李燊', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('120', 'server8511.zhuwenya_8511', '朱文亚', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('121', 'server8511.zhangjie_8511', '张婕', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('122', 'server8511.sunyongzhi_8511', '孙永志', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('123', 'server8511.zhuqinbao_8511', '朱勤保', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('124', 'server8511.liugang_8511', '刘刚', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('125', 'server8511.zhuling_8511', '朱灵', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('126', 'server8511.gaoxiaodong_8511', '高晓冬', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('127', 'server8511.wangweiguang_8511', '王伟光', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('128', 'server8511.huyun_8511', '胡云', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('129', 'server8511.geaihui_8511', '葛爱慧', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('130', 'server8511.lijianping_8511', '李剑平', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('131', 'server8511.yinzhongchao_8511', '尹中超', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('132', 'server8511.yuanli_8511', '袁丽', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('133', 'server8511.liujuan_8511', '刘娟', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('134', 'server8511.yuanbaidong_8511', '阮柏栋', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('135', 'server8511.zhangchong_8511', '张冲', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('136', 'server8511.wuzhongwei_8511', '吴中伟', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('137', 'server8511.zhaoxu_8511', '赵旭', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('138', 'server8511.wangxiaojiang_8511', '王晓江', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('139', 'server8511.panyan_8511', '潘彦', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('140', 'server8511.wangyixiao_8511', '王一笑', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('141', 'server8511.donghuafei_8511', '董华飞', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('142', 'server8511.yinzhenyi_8511', '尹震峰', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('143', 'server8511.wangyiwei_8511', '王屹炜', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('144', 'server8511.wutiecheng_8511', '吴铁成', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('145', 'server8511.wangsaisai_8511', '王赛赛', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('146', 'server8511.caojun_8511', '曹军', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('147', 'server8511.liulin_8511', '刘林', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('148', 'server8511.chenxiang_8511', '陈翔', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('149', 'server8511.liuyaxu_8511', '刘亚旭', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('150', 'server8511.zhangmin_8511', '张敏', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('151', 'server8511.zhanghongying_8511', '张红影', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('152', 'server8511.lichen_8511', '李晨', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('153', 'server8511.zhangqiao_8511', '张桥', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('154', 'server8511.fanyifeng_8511', '范逸风', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('155', 'server8511.wangbinbin_8511', '王彬彬', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('156', 'server8511.liyongbo_8511', '李永波', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('157', 'server8511.wangzhikui_8511', '王志奎', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('158', 'server8511.malejuan_8511', '马乐娟', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('159', 'server8511.panhu_8511', '潘浒', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('160', 'server8511.xianghailu_8511', '相海露', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('161', 'server8511.jinzhifeng_8511', '金志峰', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('162', 'server8511.sunjianqing_8511', '孙建庆', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('163', 'server8511.zhangruijie_8511', '张睿杰', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('164', 'server8511.yangyingyi_8511', '杨颖怡', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('165', 'server8511.sunhongtu_8511', '孙宏途', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('166', 'server8511.wanghuan_8511', '王寰', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('167', 'server8511.xingxiaojun_8511', '邢晓俊', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('168', 'server8511.zhaojun_8511', '赵军', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('169', 'server8511.siguoliang_8511', '司国梁', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('170', 'server8511.lichenjing_8511', '李辰晶', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('171', 'server8511.miaowei_8511', '缪伟', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('172', 'server8511.ningbaiquan_8511', '宁佰权', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('173', 'server8511.lisizhong_8511', '李司中', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('174', 'server8511.lixiaoshi_8511', '李校石', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('175', 'server8511.zhaochao_8511', '赵超', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('176', 'server8511.wudi2_8511', '吴迪', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('177', 'server8511.zhangqing_8511', '张青', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('178', 'server8511.liangfeng_8511', '梁锋', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('179', 'server8511.luping_8511', '陆平', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('180', 'server8511.xuyuanchao_8511', '徐远超', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('181', 'server8511.liyanliang_8511', '李艳良', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('182', 'server8511.tianmi_8511', '田密', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('183', 'server8511.xiaxiang_8511', '夏翔', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('184', 'server8511.wanjunlei_8511', '万君磊', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('185', 'server8511.shixin_8511', '石鑫', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('186', 'server8511.wangjin_8511', '王瑾', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('187', 'server8511.renminhua_8511', '任敏华', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('188', 'server8511.xuying_8511', '许颖', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('189', 'server8511.xiangbo_8511', '向博', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('190', 'server8511.hantingting_8511', '韩婷婷', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('191', 'server8511.jiangshuai_8511', '蒋帅', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('192', 'server8511.miuxiyang_8511', '缪细洋', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('193', 'server8511.liwenshuai_8511', '李文帅', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('194', 'server8511.ganshujian_8511', '干书剑', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('195', 'server8511.chishaoteng_8511', '池少腾', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('196', 'server8511.maweinan_8511', '马伟男', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('197', 'server8511.chenzhou_8511', '陈舟', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('198', 'server8511.yangtianyang_8511', '杨天杨', '第六研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('199', 'server8511.guxin_8511', '顾鑫', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('200', 'server8511.weibeiyu_8511', '韦北余', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('201', 'server8511.luye_8511', '陆晔', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('202', 'server8511.guhui_8511', '顾辉', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('203', 'server8511.zhengshili_8511', '郑仕力', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('204', 'server8511.maohaifei_8511', '冒海飞', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('205', 'server8511.fangmeng_8511', '方猛', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('206', 'server8511.wangjian2_8511', '王建', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('207', 'server8511.panyong_8511', '潘勇', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('208', 'server8511.zhangxin_8511', '张鑫', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('209', 'server8511.fanjialu_8511', '范珈璐', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('210', 'server8511.sukang_8511', '苏抗', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('211', 'server8511.yaochen_8511', '姚琛', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('212', 'server8511.niushiwei_8511', '牛世伟', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('213', 'server8511.xiayuyin_8511', '夏宇垠', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('214', 'server8511.chenxi_8511', '陈曦', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('215', 'server8511.zhaoyun_8511', '赵赟', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('216', 'server8511.wangliwei_8511', '王利伟', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('217', 'server8511.wangtiedan_8511', '王铁丹', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('218', 'server8511.dengkun_8511', '邓坤', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('219', 'server8511.caoxin_8511', '曹鑫', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('220', 'server8511.zhanghongwei_8511', '张宏伟', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('221', 'server8511.xujie_8511', '徐捷', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('222', 'server8511.lvmei_8511', '吕梅', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('223', 'server8511.renhanneng_8511', '任汉能', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('224', 'server8511.zhaojinwei_8511', '赵巾卫', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('225', 'server8511.liwenkui_8511', '李文魁', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('226', 'server8511.lili_8511', '李莉', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('227', 'server8511.wuyiming_8511', '吴一明', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('228', 'server8511.lijuanhui_8511', '李娟慧', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('229', 'server8511.yangcheng_8511', '杨诚', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('230', 'server8511.mengdagang_8511', '孟大岗', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('231', 'server8511.bianxinhao_8511', '卞新豪', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('232', 'server8511.zhangzhao_8511', '张朝', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('233', 'server8511.maqin_8511', '马琴', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('234', 'server8511.dingqihong_8511', '丁其洪', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('235', 'server8511.zhanglingxu_8511', '张岭旭', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('236', 'server8511.wanghongjing_8511', '王洪静', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('237', 'server8511.liwen_8511', '李文', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('238', 'server8511.jingrong_8511', '景容', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('239', 'server8511.fengqing_8511', '冯清', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('240', 'server8511.dongqiaozhong_8511', '董乔忠', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('241', 'server8511.fangchao_8511', '方超', '第三研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('242', 'server8511.feishemixinxidaoru2_8511', '非密信息导入2', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('243', 'server8511.wangaihua_8511', '王爱华', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('244', 'server8511.feishemixinxichuandiyuan2_8511', '非涉密信息传递员2', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('245', 'server8511.chenfei_8511', '陈飞', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('246', 'server8511.panleilin_8511', '潘磊霖', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('247', 'server8511.luminghui_8511', '卢明辉', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('248', 'server8511.zhaliping_8511', '查丽萍', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('249', 'server8511.zhangjiashi_8511', '张家实', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('250', 'server8511.wangchao_8511', '王超', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('251', 'server8511.xuzhiwei_8511', '许至威', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('252', 'server8511.liujianyang_8511', '刘建洋', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('253', 'server8511.sunwei_8511', '孙伟', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('254', 'server8511.liulizhi_8511', '柳立志', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('255', 'server8511.wangrongbing_8511', '王荣兵', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('256', 'server8511.tanlei_8511', '檀雷', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('257', 'server8511.chengjilong_8511', '成继隆', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('258', 'server8511.maxiaobin_8511', '马晓斌', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('259', 'server8511.xiawenjuan_8511', '夏文娟', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('260', 'server8511.wangyonghui_8511', '王勇慧', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('261', 'server8511.sunbin_8511', '孙斌', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('262', 'server8511.wangxin_8511', '王鑫', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('263', 'server8511.liangzhiyong_8511', '梁智勇', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('264', 'server8511.sunjiandong_8511', '孙建东', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('265', 'server8511.weijianning_8511', '魏建宁', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('266', 'server8511.liangbin_8511', '梁斌', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('267', 'server8511.chenchangyun_8511', '陈昌云', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('268', 'server8511.jiangdi_8511', '姜迪', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('269', 'server8511.yanghuijun_8511', '杨会军', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('270', 'server8511.qiuweilin_8511', '邱伟林', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('271', 'server8511.fangyoupei_8511', '方有培', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('272', 'server8511.wanggendi_8511', '王根弟', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('273', 'server8511.sunweimin_8511', '孙卫民', '第四研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('274', 'server8511.houyunfei_8511', '侯云飞', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('275', 'server8511.langongdun_8511', '兰功盾', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('276', 'server8511.zhangfan_8511', '张帆', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('277', 'server8511.chenwangjie_8511', '陈望杰', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('278', 'server8511.zhaobin_8511', '赵斌', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('279', 'server8511.chencheng_8511', '陈程', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('280', 'server8511.xiaonan_8511', '肖楠', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('281', 'server8511.chengyihan_8511', '程亦涵', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('282', 'server8511.sunhao_8511', '孙昊', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('283', 'server8511.jiayiqun_8511', '贾逸群', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('284', 'server8511.lichen1_8511', '李晨', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('285', 'server8511.doufawang_8511', '窦法旺', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('286', 'server8511.guqiwei_8511', '顾琦炜', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('287', 'server8511.heshihao_8511', '何士浩', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('288', 'server8511.gongyexuan_8511', '贡业轩', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('289', 'server8511.zhouyu_8511', '周宇', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('290', 'server8511.lixianfa_8511', '李仙法', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('291', 'server8511.lichen2_8511', '李琛', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('292', 'server8511.zhangjianwei_8511', '张健伟', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('293', 'server8511.taoyuanrong_8511', '陶远荣', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('294', 'server8511.yuzhiliang_8511', '于志良', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('295', 'server8511.subaoyu_8511', '苏保禹', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('296', 'server8511.zhangpanpan_8511', '张盼盼', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('297', 'server8511.gaoqi_8511', '高祺', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('298', 'server8511.xiedongliang_8511', '解东亮', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('299', 'server8511.chenyu_8511', '陈羽', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('300', 'server8511.songdawei_8511', '宋大伟', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('301', 'server8511.liuhuan_8511', '刘欢', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('302', 'server8511.zhangqi_8511', '张棋', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('303', 'server8511.guxuwen_8511', '顾旭文', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('304', 'server8511.huanbo_8511', '胡安波', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('305', 'server8511.jikaibo_8511', '季凯波', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('306', 'server8511.jiayi_8511', '贾毅', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('307', 'server8511.liqipeng_8511', '李麒鹏', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('308', 'server8511.liuchenchen_8511', '刘晨晨', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('309', 'server8511.yangdonglin_8511', '杨东林', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('310', 'server8511.chengliangping_8511', '程良平', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('311', 'server8511.yehanqing_8511', '业瀚青', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('312', 'server8511.liuyongling_8511', '刘泳伶', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('313', 'server8511.daiyaoze_8511', '戴曜泽', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('314', 'server8511.wuyumeng_8511', '吴玉孟', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('315', 'server8511.guhaijun_8511', '顾海军', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('316', 'server8511.shangbinbin_8511', '尚斌斌', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('317', 'server8511.xuchengliang_8511', '许丞梁', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('318', 'server8511.caobaolong_8511', '曹宝龙', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('319', 'server8511.lizhipeng_8511', '李志鹏', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('320', 'server8511.raoxianbin_8511', '饶县斌', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('321', 'server8511.chenyun_8511', '陈韵', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('322', 'server8511.jijiawen_8511', '姬嘉文', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('323', 'server8511.jindong_8511', '靳东', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('324', 'server8511.zhumingming_8511', '朱明明', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('325', 'server8511.yuchenhui_8511', '余晨晖', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('326', 'server8511.mayibiao_8511', '马义彪', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('327', 'server8511.gaoxingjian_8511', '高兴建', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('328', 'server8511.liujian_8511', '刘建', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('329', 'server8511.pengjiaen_8511', '彭茄恩', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('330', 'server8511.luyiming_8511', '陆依明', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('331', 'server8511.wanghuijuan_8511', '王慧娟', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('332', 'server8511.lengkui_8511', '冷魁', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('333', 'server8511.guohui_8511', '郭辉', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('334', 'server8511.zhoujian_8511', '周健', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('335', 'server8511.hejunhui_8511', '何俊辉', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('336', 'server8511.zhouquan_8511', '周泉', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('337', 'server8511.shimin_8511', '史敏', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('338', 'server8511.yangjian_8511', '杨健', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('339', 'server8511.tangqiu_8511', '唐遒', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('340', 'server8511.liujunfei_8511', '刘俊飞', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('341', 'server8511.wuyongwu_8511', '吴永武', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('342', 'server8511.marui_8511', '马蕊', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('343', 'server8511.tangweifeng_8511', '唐伟峰', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('344', 'server8511.xuwenyan_8511', '徐文艳', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('345', 'server8511.huangchengfeng_8511', '黄成峰', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('346', 'server8511.xuchang_8511', '徐畅', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('347', 'server8511.weifei_8511', '位飞', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('348', 'server8511.dongguozheng_8511', '董国正', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('349', 'server8511.luoguoxing_8511', '罗国星', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('350', 'server8511.wangzongfeng_8511', '王宗凤', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('351', 'server8511.zhangjun_8511', '张君', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('352', 'server8511.wuchunyan2_8511', '吴春燕', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('353', 'server8511.zhaihongjun_8511', '翟宏骏', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('354', 'server8511.baochenghao_8511', '鲍成浩', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('355', 'server8511.suhuancheng_8511', '苏焕程', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('356', 'server8511.lilei_8511', '李磊', '第五研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('357', 'server8511.yukui_8511', '余魁', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('358', 'server8511.daijinliang_8511', '戴金亮', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('359', 'server8511.gengbinbin_8511', '耿彬彬', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('360', 'server8511.duwen_8511', '杜雯', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('361', 'server8511.songluyang_8511', '宋鲁杨', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('362', 'server8511.liang_8511', '李昂', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('363', 'server8511.mahongli_8511', '马洪丽', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('364', 'server8511.mengxiu_8511', '孟秀', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('365', 'server8511.peichunying_8511', '裴春英', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('366', 'server8511.caixuelian_8511', '蔡雪莲', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('367', 'server8511.lianshuqing_8511', '连淑卿', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('368', 'server8511.hanqingxia_8511', '韩青霞', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('369', 'server8511.feimixinxidaoru_8511', '非密信息导入', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('370', 'server8511.dunqin_8511', '顿琴', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('371', 'server8511.zhangmengyan_8511', '张萌妍', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('372', 'server8511.yeshuran_8511', '叶舒然', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('373', 'server8511.wuziyan_8511', '吴紫妍', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('374', 'server8511.dongjingming_8511', '董景明', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('375', 'server8511.luyaqi_8511', '陆亚奇', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('376', 'server8511.wangfenming_8511', '王芬明', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('377', 'server8511.zhangruihua_8511', '张睿华', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('378', 'server8511.zhanganjian_8511', '张安健', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('379', 'server8511.libowen_8511', '李博文', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('380', 'server8511.wangliping_8511', '汪立萍', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('381', 'server8511.guoyubing_8511', '郭玉冰', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('382', 'server8511.wangxiaoli_8511', '王小莉', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('383', 'server8511.zhangyu_8511', '张宇', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('384', 'server8511.wangminghao_8511', '王明皓', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('385', 'server8511.guoziyi_8511', '郭子义', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('386', 'server8511.zhangyuanlei_8511', '张原雷', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('387', 'server8511.dongjunjian_8511', '董俊健', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('388', 'server8511.guotao_8511', '郭涛', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('389', 'server8511.wuchunyan_8511', '吴春燕', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('390', 'server8511.fengpeihua_8511', '丰沛华', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('391', 'server8511.dujuhua_8511', '杜菊华', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('392', 'server8511.chenjinshi_8511', '陈金仕', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('393', 'server8511.jiangqinqin_8511', '姜芹芹', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('394', 'server8511.liujingsheng_8511', '刘敬生', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('395', 'server8511.zhaoshuang_8511', '赵霜', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('396', 'server8511.caiyamei_8511', '蔡亚梅', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('397', 'server8511.chenliling_8511', '陈利玲', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('398', 'server8511.yeshaoxiao_8511', '叶少肖', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('399', 'server8511.lirui_8511', '李睿', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('400', 'server8511.xumengyi_8511', '徐萌忆', '科研保障部/8511所/一院');
INSERT INTO `user_info` VALUES ('401', 'server8511.yangheng_8511', '杨恒', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('402', 'server8511.weizhixia_8511', '尉志霞', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('403', 'server8511.mengyanhua_8511', '孟艳华', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('404', 'server8511.qiubipeng_8511', '仇必鹏', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('405', 'server8511.dongenhao_8511', '董恩皓', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('406', 'server8511.chenle_8511', '陈乐', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('407', 'server8511.hanjunxiang_8511', '韩君祥', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('408', 'server8511.chenmin_8511', '陈敏', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('409', 'server8511.tangweiguo_8511', '唐为国', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('410', 'server8511.wangxinggang_8511', '王兴刚', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('411', 'server8511.wangyong_8511', '王勇', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('412', 'server8511.zhaoyupo_8511', '赵玉坡', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('413', 'server8511.humengjie_8511', '胡梦婕', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('414', 'server8511.tengyanqiang_8511', '滕衍强', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('415', 'server8511.guxingyi_8511', '顾星煜', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('416', 'server8511.wangjian_8511', '王健', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('417', 'server8511.wangshiyu_8511', '王世宇', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('418', 'server8511.xieboyi_8511', '解博易', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('419', 'server8511.jiaoying_8511', '焦莹', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('420', 'server8511.huashengyue_8511', '花盛悦', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('421', 'server8511.suxiang_8511', '苏翔', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('422', 'server8511.liuweiwei_8511', '刘微微', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('423', 'server8511.lvlianlong_8511', '吕连龙', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('424', 'server8511.sunwenyi_8511', '孙文逸', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('425', 'server8511.lingliaoyuan_8511', '领料员', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('426', 'server8511.shaochuang_8511', '邵闯', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('427', 'server8511.wuhong_8511', '吴宏', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('428', 'server8511.songxiaogang_8511', '宋小刚', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('429', 'server8511.baojie_8511', '包杰', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('430', 'server8511.shentianchen_8511', '沈天尘', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('431', 'server8511.zhuyin_8511', '朱吟', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('432', 'server8511.chenjin_8511', '陈晋', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('433', 'server8511.liuyanghao_8511', '刘杨豪', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('434', 'server8511.zhuhaiqing_8511', '朱海青', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('435', 'server8511.tengbenben_8511', '滕奔奔', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('436', 'server8511.shuweifa_8511', '舒伟发', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('437', 'server8511.sunrong_8511', '孙荣', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('438', 'server8511.yuzhilu_8511', '余志禄', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('439', 'server8511.tongwenbin_8511', '童文斌', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('440', 'server8511.lixu_8511', '李旭', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('441', 'server8511.huangzhaofu_8511', '黄昭富', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('442', 'server8511.zuyibin_8511', '祖贻斌', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('443', 'server8511.shijunyi_8511', '石俊逸', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('444', 'server8511.wuxinghan_8511', '吴星寒', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('445', 'server8511.kongyong_8511', '孔勇', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('446', 'server8511.zhangxiaoliang_8511', '张晓亮', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('447', 'server8511.huyuran_8511', '胡宇冉', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('448', 'server8511.jiangnanping', '蒋南平', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('449', 'server8511.dingweiqi_8511', '丁玮琦', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('450', 'server8511.wanghan_8511', '王瀚', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('451', 'server8511.zhanghao_8511', '张浩', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('452', 'server8511.zhangyaping_8511', '张亚平', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('453', 'server8511.yuanchunhui_8511', '袁春辉', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('454', 'server8511.xuzhenchen_8511', '徐振晨', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('455', 'server8511.weijunyu_8511', '卫君彧', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('456', 'server8511.mengxiangmei_8511', '孟祥梅', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('457', 'server8511.yuanliang_8511', '袁亮', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('458', 'server8511.liuyunpeng_8511', '刘云鹏', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('459', 'server8511.lilin_8511', '李林', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('460', 'server8511.yuzhao_8511', '於昭', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('461', 'server8511.tianxinwei_8511', '田新伟', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('462', 'server8511.sunshengli_8511', '孙胜利', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('463', 'server8511.huangfeng_8511', '黄烽', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('464', 'server8511.gaojingxiu_8511', '高京修', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('465', 'server8511.chenjian_8511', '陈腱', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('466', 'server8511.caijun_8511', '蔡俊', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('467', 'server8511.wujinqiu_8511', '武金秋', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('468', 'server8511.fanmin_8511', '范敏', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('469', 'server8511.liting_8511', '李庭', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('470', 'server8511.sunhailang_8511', '孙海浪', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('471', 'server8511.guqi_8511', '顾骐', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('472', 'server8511.xumeng_8511', '许猛', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('473', 'server8511.hangcheng_8511', '杭成', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('474', 'server8511.tengyahui_8511', '滕雅慧', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('475', 'server8511.wangminchao_8511', '王民超', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('476', 'server8511.xulingling_8511', '徐凌凌', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('477', 'server8511.kangwei_8511', '康炜', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('478', 'server8511.liuyifeng_8511', '刘一峰', '产品部/8511所/一院');
INSERT INTO `user_info` VALUES ('479', 'server8511.pengchaoyang_8511', '彭朝阳', '安全保卫处/8511所/一院');
INSERT INTO `user_info` VALUES ('480', 'server8511.zhoujun_8511', '周军', '安全保卫处/8511所/一院');
INSERT INTO `user_info` VALUES ('481', 'server8511.lichao_8511', '李超', '安全保卫处/8511所/一院');
INSERT INTO `user_info` VALUES ('482', 'server8511.suming_8511', '苏明', '安全保卫处/8511所/一院');
INSERT INTO `user_info` VALUES ('483', 'server8511.jiajianzeng_8511', '贾建增', '安全保卫处/8511所/一院');
INSERT INTO `user_info` VALUES ('484', 'server8511.yanyuan_8511', '颜源', '安全保卫处/8511所/一院');
INSERT INTO `user_info` VALUES ('485', 'server8511.zhangshuguang_8511', '张曙光', '安全保卫处/8511所/一院');
INSERT INTO `user_info` VALUES ('486', 'server8511.shemixinxidaoruyuan_8511', '涉密信息导入员', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('487', 'server8511.bianjiang_8511', '卞江', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('488', 'server8511.xuexiaoyu_8511', '薛晓宇', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('489', 'server8511.wanhui_8511', '万辉', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('490', 'server8511.daorudaochumimi_8511', '导入导出秘密', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('491', 'server8511.wangbao_8511', '王宝', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('492', 'server8511.zhujunmei1_8511', '朱峻梅1', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('493', 'server8511.zhujunmei_8511', '朱峻梅', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('494', 'server8511.daorudaochumimi1_8511', '机密导入导出新区', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('495', 'server8511.shemidaochu_8511', '涉密导出', '保密处/8511所/一院');
INSERT INTO `user_info` VALUES ('496', 'server8511.huangxiaoyan_8511', '黄小燕', '审计法务处/8511所/一院');
INSERT INTO `user_info` VALUES ('497', 'server8511.wangrui_8511', '王睿', '审计法务处/8511所/一院');
INSERT INTO `user_info` VALUES ('498', 'server8511.liuchenxin_8511', '刘称新', '审计法务处/8511所/一院');
INSERT INTO `user_info` VALUES ('499', 'server8511.xujianan_8511', '许剑南', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('500', 'server8511.liweilei_8511', '李维磊', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('501', 'server8511.zhangfulong_8511', '张夫龙', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('502', 'server8511.songzhiyu_8511', '宋之玉', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('503', 'server8511.haoshuanzhu_8511', '郝栓柱', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('504', 'server8511.wangxiaohong_8511', '汪小红', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('505', 'server8511.huangpeng_8511', '黄鹏', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('506', 'server8511.xudazhao_8511', '徐大钊', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('507', 'server8511.xuran_8511', '徐冉', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('508', 'server8511.weixinyang_8511', '魏信阳', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('509', 'server8511.jianglei_8511', '姜磊', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('510', 'server8511.liaozhicheng_8511', '廖志成', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('511', 'server8511.zhangtao_8511', '张涛', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('512', 'server8511.wumingyu_8511', '吴明宇', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('513', 'server8511.yaogaojun_8511', '姚高军', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('514', 'server8511.wangqi_8511', '王琦', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('515', 'server8511.lvchaofeng_8511', '吕超峰', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('516', 'server8511.huangjingang_8511', '黄金刚', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('517', 'server8511.wangpeiqiang_8511', '王培强', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('518', 'server8511.litao_8511', '李涛', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('519', 'server8511.zhangchao_8511', '张超', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('520', 'server8511.guyangyang_8511', '顾阳阳', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('521', 'server8511.zhenxiaopeng_8511', '甄晓鹏', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('522', 'server8511.wangchenghai_8511', '王成海', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('523', 'server8511.tangyonghao_8511', '汤永浩', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('524', 'server8511.liujun_8511', '刘俊', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('525', 'server8511.zhangshuo_8511', '张硕', '第二研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('526', 'server8511.lichao2_8511', '李超2', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('527', 'server8511.wanggang_8511', '王刚', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('528', 'server8511.liuguosheng_8511', '刘国生', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('529', 'server8511.gaochuanwei_8511', '高传卫', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('530', 'server8511.renjinhua_8511', '任金华', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('531', 'server8511.wangpeng_8511', '王鹏', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('532', 'server8511.tongqi_8511', '佟岐', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('533', 'server8511.zhuojinfa_8511', '卓进发', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('534', 'server8511.wanchun_8511', '万纯', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('535', 'server8511.chenning_8511', '陈宁', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('536', 'server8511.zhoujianbo_8511', '周建波', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('537', 'server8511.chenpingping_8511', '陈萍萍', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('538', 'server8511.chenliang_8511', '陈亮', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('539', 'server8511.wangfang_8511', '王芳', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('540', 'server8511.huajia_8511', '华佳', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('541', 'server8511.maxianjie_8511', '马贤杰', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('542', 'server8511.liuyuehan_8511', '刘玥晗', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('543', 'server8511.chenyuantai_8511', '陈元泰', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('544', 'server8511.nikaijie_8511', '倪凯捷', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('545', 'server8511.mabang_8511', '马榜', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('546', 'server8511.yangmeisen_8511', '杨梅森', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('547', 'server8511.yuxiezheng_8511', '余协正', '第七研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('548', 'server8511.qiyoujie_8511', '祁友杰', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('549', 'server8511.miupengzhi_8511', '缪鹏志', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('550', 'server8511.zhouhang_8511', '周航', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('551', 'server8511.zengdeguo_8511', '曾德国', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('552', 'server8511.zhumeimei_8511', '朱梅梅', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('553', 'server8511.chenxinwei_8511', '陈歆炜', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('554', 'server8511.wuzhipeng_8511', '仵志鹏', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('555', 'server8511.wangxin2_8511', '王鑫', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('556', 'server8511.zhengziyang_8511', '郑子扬', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('557', 'server8511.wangpei_8511', '王佩', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('558', 'server8511.zhengyang_8511', '郑扬', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('559', 'server8511.qinjin_8511', '秦晋', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('560', 'server8511.fengchenfeng_8511', '冯晨峰', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('561', 'server8511.jiangyingbo_8511', '江迎波', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('562', 'server8511.zhaohaobo_8511', '赵浩波', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('563', 'server8511.hujin_8511', '胡进', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('564', 'server8511.liuxinglin_8511', '刘兴林', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('565', 'server8511.wangzhiyin_8511', '王志印', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('566', 'server8511.xufuyuan_8511', '徐富元', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('567', 'server8511.weimingyu_8511', '魏鸣宇', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('568', 'server8511.luzhilong_8511', '卢志龙', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('569', 'server8511.lujiazhan_8511', '鲁加战', '第八研究室/8511所/一院');
INSERT INTO `user_info` VALUES ('570', 'server8511.luowei_8511', '罗薇', '产业发展处/8511所/一院');
INSERT INTO `user_info` VALUES ('571', 'server8511.liuxiaojun_8511', '刘晓俊', '产业发展处/8511所/一院');
INSERT INTO `user_info` VALUES ('572', 'server8511.luoqunfei_8511', '罗群飞', '产业发展处/8511所/一院');
INSERT INTO `user_info` VALUES ('573', 'server8511.baojie2_8511', '鲍杰', '投资处/8511所/一院');
INSERT INTO `user_info` VALUES ('574', 'server8511.zhangshiyan_8511', '张石艳', '投资处/8511所/一院');
INSERT INTO `user_info` VALUES ('575', 'server8511.xiguiqi_8511', '习瑰琦', '投资处/8511所/一院');
INSERT INTO `user_info` VALUES ('576', 'server8511.liuzhitao_8511', '刘志涛', '投资处/8511所/一院');
