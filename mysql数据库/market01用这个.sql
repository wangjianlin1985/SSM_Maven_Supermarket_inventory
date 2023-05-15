/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : market01

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2020-01-24 21:23:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ckin`
-- ----------------------------
DROP TABLE IF EXISTS `ckin`;
CREATE TABLE `ckin` (
  `inid` int(7) NOT NULL auto_increment,
  `proid` int(7) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `num` int(25) unsigned default '100',
  `indate` date default NULL,
  `marks` varchar(25) default NULL,
  PRIMARY KEY  (`inid`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ckin
-- ----------------------------
INSERT INTO `ckin` VALUES ('121', '1260300', '苹果', '100', '2019-04-27', null);
INSERT INTO `ckin` VALUES ('122', '1260300', '苹果', '10000', '2019-04-27', null);
INSERT INTO `ckin` VALUES ('123', '5287527', '瓜子', '100', '2019-05-01', null);
INSERT INTO `ckin` VALUES ('124', '5287527', '瓜子', '100', '2019-05-02', null);
INSERT INTO `ckin` VALUES ('125', '8556504', '绿萝', '100', '2019-05-02', null);
INSERT INTO `ckin` VALUES ('126', '241677', '怡宝矿泉水', '100', '2019-05-12', null);
INSERT INTO `ckin` VALUES ('127', '241677', '怡宝矿泉水', '20', '2019-05-12', null);
INSERT INTO `ckin` VALUES ('128', '241677', '怡宝矿泉水', '100', '2019-05-12', null);
INSERT INTO `ckin` VALUES ('129', '241677', '怡宝矿泉水', '130', '2019-06-10', null);
INSERT INTO `ckin` VALUES ('130', '241677', '怡宝矿泉水', '11', '2019-06-10', null);
INSERT INTO `ckin` VALUES ('131', '241677', '怡宝矿泉水', '270', '2020-01-24', null);

-- ----------------------------
-- Table structure for `ckretire`
-- ----------------------------
DROP TABLE IF EXISTS `ckretire`;
CREATE TABLE `ckretire` (
  `inid` int(8) NOT NULL auto_increment,
  `proid` int(8) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `num` int(25) default NULL,
  `indate` date default NULL,
  `retdate` date default NULL,
  `reason` varchar(1000) default NULL,
  `marks` varchar(25) default NULL,
  PRIMARY KEY  (`inid`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ckretire
-- ----------------------------
INSERT INTO `ckretire` VALUES ('123', '5287527', '瓜子', '100', null, '2019-05-11', null, '');

-- ----------------------------
-- Table structure for `cusretire`
-- ----------------------------
DROP TABLE IF EXISTS `cusretire`;
CREATE TABLE `cusretire` (
  `saleid` int(25) NOT NULL,
  `proid` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `price` double(25,3) default NULL,
  `num` int(25) default NULL,
  `total` double(25,3) default NULL,
  `saledate` date default NULL,
  `retdate` date default NULL,
  `reason` varchar(1000) default NULL,
  `marks` varchar(25) default NULL,
  PRIMARY KEY  (`saleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cusretire
-- ----------------------------
INSERT INTO `cusretire` VALUES ('3718799', '1260300', '苹果', null, '10', null, null, '2019-04-12', null, '');
INSERT INTO `cusretire` VALUES ('5595579', '1260300', '苹果', null, '6', null, null, '2019-04-19', null, '');

-- ----------------------------
-- Table structure for `custom`
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom` (
  `cusid` int(25) NOT NULL,
  `cusname` varchar(25) NOT NULL,
  `tel` varchar(25) default NULL,
  `person` varchar(25) default NULL,
  `address` varchar(25) default NULL,
  `emali` varchar(25) default NULL,
  PRIMARY KEY  (`cusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of custom
-- ----------------------------
INSERT INTO `custom` VALUES ('5', '凤英超市', '13980381234', '王小明', '人民路10号', 'xiaoming@126.com');

-- ----------------------------
-- Table structure for `kcxx`
-- ----------------------------
DROP TABLE IF EXISTS `kcxx`;
CREATE TABLE `kcxx` (
  `proid` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `num` int(25) default NULL,
  `marks` varchar(25) default NULL,
  PRIMARY KEY  (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of kcxx
-- ----------------------------
INSERT INTO `kcxx` VALUES ('241677', '怡宝矿泉水', '540', '11');
INSERT INTO `kcxx` VALUES ('1260300', '苹果', '9513', '');
INSERT INTO `kcxx` VALUES ('5287527', '瓜子', '100', '');
INSERT INTO `kcxx` VALUES ('8556504', '绿萝', '2', null);

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `managerid` varchar(25) NOT NULL,
  `managername` varchar(25) NOT NULL,
  `card` varchar(25) NOT NULL,
  `sex` varchar(25) default NULL,
  `tel` varchar(25) default NULL,
  `stafftype` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  PRIMARY KEY  (`managerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('999', '管理员', '11111111', '男', '123456789', '管理员', '123456');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `proid` int(25) NOT NULL auto_increment,
  `pname` varchar(25) NOT NULL,
  `price` double(25,3) NOT NULL,
  `inprice` double(25,3) default NULL,
  `prodate` date default NULL,
  `reledate` date default NULL,
  `supname` varchar(25) default NULL,
  `protype` varchar(25) default NULL,
  `unit` varchar(25) default NULL,
  `marks` varchar(25) default NULL,
  PRIMARY KEY  (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=8556505 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('241677', '怡宝矿泉水', '2.000', '1.000', '2019-01-01', '2019-05-08', '怡宝', '矿泉水', '瓶', '');
INSERT INTO `product` VALUES ('1260300', '苹果', '23.000', '17.000', '2019-01-01', '2019-11-15', '百果园', '水果', '斤', '');
INSERT INTO `product` VALUES ('5287527', '瓜子', '5.000', '3.000', '2019-04-05', '2019-07-26', '恰恰', '零食', '袋', '');
INSERT INTO `product` VALUES ('8556504', '绿萝', '12.000', '7.000', '2019-05-17', '2019-05-25', '花鸟市场', '绿植盆栽', '盆', '');

-- ----------------------------
-- Table structure for `sale`
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `saleid` int(25) NOT NULL,
  `proid` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `price` double(25,3) default NULL,
  `num` int(25) default NULL,
  `total` varchar(25) default NULL,
  `saledate` date default NULL,
  `cusname` varchar(255) character set utf8 collate utf8_bin default NULL,
  `cusid` varchar(25) character set utf8 collate utf8_bin default NULL,
  `marks` varchar(25) default NULL,
  PRIMARY KEY  (`saleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('30579', '1260300', '苹果', '23.000', '600', '13800.0', '2020-01-23', '5', '5', '');
INSERT INTO `sale` VALUES ('3007323', '241677', '怡宝矿泉水', '2.000', '69', '138.0', '2020-01-16', 'hbh', '20', '');
INSERT INTO `sale` VALUES ('3718799', '1260300', '苹果', '23.000', '5', '115.0', '2020-01-24', '10', '324', '1');
INSERT INTO `sale` VALUES ('5595579', '1260300', '苹果', '23.000', '12', '276.0', '2020-01-11', '10', '2312', '');
INSERT INTO `sale` VALUES ('8749456', '241677', '怡宝矿泉水', '2.000', '12', '24.0', '2020-01-21', 'hbh', '134', '');
INSERT INTO `sale` VALUES ('9092816', '241677', '怡宝矿泉水', '2.000', '20', '40.0', '2020-01-21', 'hbh', '12', '');
INSERT INTO `sale` VALUES ('9841755', '1260300', '苹果', '23.000', '2', '46.0', '2020-01-23', '1', '2', '');

-- ----------------------------
-- Table structure for `staff`
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staffid` varchar(25) NOT NULL,
  `staffname` varchar(25) NOT NULL,
  `card` varchar(25) NOT NULL,
  `sex` varchar(25) default NULL,
  `tel` varchar(25) default NULL,
  `stafftype` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  PRIMARY KEY  (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('001', '张三', '111', '男', '11111', '普通员工', '123456');
INSERT INTO `staff` VALUES ('002', '李四', '222', '男', '22222', '普通员工', '123456');
INSERT INTO `staff` VALUES ('003', '王五', '333', '男', '33333', '普通员工', '123456');
INSERT INTO `staff` VALUES ('004', '赵六', '444', '男', '444444', '普通员工', '123456');

-- ----------------------------
-- Table structure for `supply`
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply` (
  `supid` int(25) NOT NULL auto_increment,
  `suppname` varchar(25) NOT NULL,
  `tel` varchar(25) default NULL,
  `person` varchar(25) default NULL,
  `address` varchar(25) default NULL,
  `emali` varchar(25) default NULL,
  PRIMARY KEY  (`supid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES ('16', '百果园', '13517064592', '某总', '吉安永新', '3078343267@qq.com');
INSERT INTO `supply` VALUES ('17', '恰恰', '13517064592', '贺天', '吉安永新', '3078343267@qq.com');
INSERT INTO `supply` VALUES ('18', '花鸟市场', null, null, null, null);
INSERT INTO `supply` VALUES ('19', '怡宝', null, null, null, null);

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `protypeid` int(25) unsigned NOT NULL auto_increment,
  `typename` varchar(25) NOT NULL,
  PRIMARY KEY  (`protypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('26', '水果');
INSERT INTO `type` VALUES ('27', '零食');
INSERT INTO `type` VALUES ('28', '绿植盆栽');
INSERT INTO `type` VALUES ('29', '矿泉水');
DROP TRIGGER IF EXISTS `xgjhxx`;
DELIMITER ;;
CREATE TRIGGER `xgjhxx` AFTER UPDATE ON `ckin` FOR EACH ROW begin
UPDATE kcxx set num=num+new.num-old.num where proid=new.proid;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `th`;
DELIMITER ;;
CREATE TRIGGER `th` AFTER INSERT ON `ckretire` FOR EACH ROW BEGIN
UPDATE kcxx set num=num-new.num where proid=new.proid;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `xgth`;
DELIMITER ;;
CREATE TRIGGER `xgth` AFTER UPDATE ON `ckretire` FOR EACH ROW BEGIN
update kcxx set num=num+old.num-new.num where proid=new.proid;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tg1`;
DELIMITER ;;
CREATE TRIGGER `tg1` AFTER INSERT ON `product` FOR EACH ROW begin 
set @flag3=(SELECT count(*)  from ckin where proid=NEW.proid);
if(@flag3=0)
THEN
INSERT into ckin(proid,pname,indate) VALUES (NEW.proid,NEW.pname,now());
end if;

set @flag4=(SELECT count(*)  from kcxx where proid=NEW.proid);
if(@flag4=0)
THEN
INSERT INTO kcxx(proid,pname,num) VALUES (NEW.proid,NEW.pname,100);
end if;

set @flag=(select COUNT(*) FROM type where typename=NEW.protype);
if(@flag=0)
then
INSERT INTO type(typename) VALUES(NEW.protype);
end if;

set @flag2=(SELECT count(*)  from supply where suppname=NEW.supname);
if(@flag2=0)
THEN
INSERT INTO supply(suppname) VALUES (NEW.supname);
end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `xglb`;
DELIMITER ;;
CREATE TRIGGER `xglb` AFTER UPDATE ON `type` FOR EACH ROW begin
update product set protype=new.typename where protype=old.typename;
end
;;
DELIMITER ;
