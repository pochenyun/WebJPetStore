/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : mypetstore

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-03-22 17:51:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) NOT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('a', 'a', 'a', 'a', null, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', null, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('whs', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"../images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"../images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"../images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"../images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"../images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `itemId` varchar(10) NOT NULL DEFAULT '',
  `productId` varchar(10) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `instock` int(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('EST-13', 'RP-LI-02', 'Green Adult', '1', '1', '18.5', '18.5');
INSERT INTO `cart` VALUES ('EST-18', 'AV-CB-01', 'Adult Male', '1', '3', '193.5', '580.5');
INSERT INTO `cart` VALUES ('EST-12', 'RP-SN-01', 'Rattleless', '1', '3', '18.5', '55.5');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', '10000');
INSERT INTO `inventory` VALUES ('EST-10', '10000');
INSERT INTO `inventory` VALUES ('EST-11', '10000');
INSERT INTO `inventory` VALUES ('EST-12', '10000');
INSERT INTO `inventory` VALUES ('EST-13', '10000');
INSERT INTO `inventory` VALUES ('EST-14', '10000');
INSERT INTO `inventory` VALUES ('EST-15', '10000');
INSERT INTO `inventory` VALUES ('EST-16', '10000');
INSERT INTO `inventory` VALUES ('EST-17', '10000');
INSERT INTO `inventory` VALUES ('EST-18', '10000');
INSERT INTO `inventory` VALUES ('EST-19', '10000');
INSERT INTO `inventory` VALUES ('EST-2', '10000');
INSERT INTO `inventory` VALUES ('EST-20', '10000');
INSERT INTO `inventory` VALUES ('EST-21', '10000');
INSERT INTO `inventory` VALUES ('EST-22', '10000');
INSERT INTO `inventory` VALUES ('EST-23', '10000');
INSERT INTO `inventory` VALUES ('EST-24', '10000');
INSERT INTO `inventory` VALUES ('EST-25', '10000');
INSERT INTO `inventory` VALUES ('EST-26', '10000');
INSERT INTO `inventory` VALUES ('EST-27', '10000');
INSERT INTO `inventory` VALUES ('EST-28', '10000');
INSERT INTO `inventory` VALUES ('EST-3', '10000');
INSERT INTO `inventory` VALUES ('EST-4', '10000');
INSERT INTO `inventory` VALUES ('EST-5', '10000');
INSERT INTO `inventory` VALUES ('EST-6', '10000');
INSERT INTO `inventory` VALUES ('EST-7', '10000');
INSERT INTO `inventory` VALUES ('EST-8', '10000');
INSERT INTO `inventory` VALUES ('EST-9', '10000');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Large', null, null, null, null);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotted Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Venomless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Rattleless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', '18.50', '12.00', '1', 'P', 'Green Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', '58.50', '12.00', '1', 'P', 'Tailless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', '23.50', '12.00', '1', 'P', 'With tail', null, null, null, null);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', '193.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', '15.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Small', null, null, null, null);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', '5.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', '5.29', '1.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', '135.50', '100.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', '145.49', '100.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', '255.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', '325.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', '125.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', '18.50', '12.00', '1', 'P', 'Toothless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotted', null, null, null, null);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Male Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Female Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', '18.50', '12.00', '1', 'P', 'Male Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotless Male Puppy', null, null, null, null);

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lineitem
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logUserId` varchar(255) NOT NULL,
  `logInfo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('j2ee', '2020-11-15 17:01:09     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-15 17:01:16     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-15 17:01:17     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2020-11-15 17:01:18     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-15 17:01:22     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:26:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:27:11     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:27:13     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@55f881c4');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:27:19     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:27:20     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:27:27     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:27:30     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@656e9c20');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:28:24     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-16 18:29:19     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@539b1d07');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:23:19     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:23:21     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:23:22     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:23:23     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 (EST-18-null)数量+1 ');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:10     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:11     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:12     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:13     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:27     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:27     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:25:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:26:36     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:26:37     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@4398f535');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:26:39     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:26:40     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:26:41     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:09     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:09     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 (EST-6-null)数量+1 ');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:25     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:48     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@4398f535');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:49     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-18 (EST-18-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:50     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-6 (EST-6-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:51     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-7 (EST-7-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:54     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:55     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:27:56     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:28:38     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:28:39     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FI-SW-02 查看产品 Tiger Shark');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:28:40     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-3 添加物品 (EST-3-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:57:55     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:57:56     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:57:57     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 01:57:58     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:00:12     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:00:13     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:00:14     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:00:15     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:00:17     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:03:07     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:03:08     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:03:10     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:03:12     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:03:13     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-17 添加物品 (EST-17-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:04:52     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:04:53     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:04:54     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:13:54     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:13:56     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:13:57     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:13:58     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-27 添加物品 (EST-27-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:14:08     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-27 (EST-27-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:14:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:06     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:08     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:09     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:35     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-16 (EST-16-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:38     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@511db9c2');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:38     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@511db9c2');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:47     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:48     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:50     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:18:58     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-7 (EST-7-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:22:01     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:22:06     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:22:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:22:08     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-DL-01 查看产品 Dalmation');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:22:09     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-10 添加物品 (EST-10-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:22:22     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-10 (EST-10-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:07     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:09     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:10     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:13     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:13     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:15     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:15     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:17     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:26:27     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-16 (EST-16-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:28:42     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:28:43     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:28:44     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:28:46     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:28:55     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-19 (EST-19-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:38:21     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:38:22     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:38:23     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-RT-02 查看产品 Labrador Retriever');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:38:25     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-24 添加物品 (EST-24-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:38:34     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-24 (EST-24-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:41:51     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:41:52     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:41:54     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:41:58     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:42:08     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-7 (EST-7-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:47:26     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:47:27     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:47:28     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:47:29     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:47:36     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-19 (EST-19-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:48:47     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:48:48     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:48:50     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:48:51     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:49:01     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-12 (EST-12-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:52:52     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:52:54     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:52:55     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:53:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:53:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:53:58     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:53:59     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:08     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:12     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:13     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-RT-02 查看产品 Labrador Retriever');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:16     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:17     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:18     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:19     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:28     http://localhost:8080/mypetstore_war_exploded/viewItem?itemId=EST-19 查看具体商品 (EST-19-null)');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:54:44     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-19 (EST-19-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:58:23     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:58:24     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:58:25     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:58:31     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-6 (EST-6-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:59:05     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:59:06     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FI-FW-02 查看产品 Goldfish');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:59:07     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-21 添加物品 (EST-21-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 02:59:13     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-21 (EST-21-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:15:32     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:15:37     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:15:38     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:15:40     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:15:57     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-11 (EST-11-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:21:39     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:21:40     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:21:42     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:21:43     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:21:50     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-11 (EST-11-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:36:24     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:36:25     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:36:27     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:36:28     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-17 10:36:44     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-6 (EST-6-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:52:53     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:52:59     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:53:00     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:53:02     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:53:03     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:53:13     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:54:45     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:54:46     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:54:47     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:54:49     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:54:56     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 19:55:58     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-11 (EST-11-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:15:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:15:59     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:16:00     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:16:01     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:21:26     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:21:37     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:21:39     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@4b944347');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:22:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:22:59     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:23:01     http://localhost:8080/mypetstore_war_exploded/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@42d88a4c, org.csu.mypetstore.domain.Order@4bd74de1, org.csu.mypetstore.domain.Order@361e234d]');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:23:18     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:23:23     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:23:24     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:23:25     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:23:28     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 20:23:29     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@517ab83d');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:02:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:04:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:04:51     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@25f1fa88');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:04:55     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:04:56     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:04:57     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-15 添加物品 (EST-15-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:36     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:05:47     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@5185658');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:06:30     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:06:32     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@387bbf8d');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:04     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:06     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@3e768435');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:09     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:12     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:12     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:10:12     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:01     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:03     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@215e00b2');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:08     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:10     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:11     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:21     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:26     http://localhost:8080/mypetstore_war_exploded/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:37     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:13:39     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@3e708f5d');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:16:24     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@65403b85');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:16:44     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:16:45     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:16:46     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:17:05     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:17:06     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1e1c910c');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:29:43     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:29:52     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@6fe2d90b');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:29:55     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:29:55     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:31:28     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:31:30     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@32705396');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:33:12     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:33:13     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:33:15     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-RT-01 查看产品 Golden Retriever');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:33:16     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-28 添加物品 (EST-28-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:40:33     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:40:35     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@7a9edf5f');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:42:00     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:42:01     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:42:02     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:42:16     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@17bb87ea');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:42:17     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@b288000');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:48:52     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:48:53     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@14589816');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:52:06     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:52:07     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:52:09     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@6a049edd');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:52:11     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:52:15     http://localhost:8080/mypetstore_war_exploded/viewOrder?orderId=1002 查看订单 org.csu.mypetstore.domain.Order@6a049edd');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:59:09     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:59:10     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1f10b27d');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:59:22     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:59:25     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:59:26     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@32cc963e');
INSERT INTO `log` VALUES ('j2ee', '2020-11-18 21:59:30     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@62c4d871');
INSERT INTO `log` VALUES ('whs', '2021-01-31 23:09:54     http://localhost:8080/mypetstore_war_exploded/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:32:59     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:33:05     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:33:09     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:33:10     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:33:11     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:52:40     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:52:42     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:52:43     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:52:44     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:52:50     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:57:13     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:57:16     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:57:18     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2021-02-01 21:57:23     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:39:25     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:39:27     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:39:28     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:39:29     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:42:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:42:25     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:42:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:43:37     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:48:38     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:48:39     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:48:40     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:48:41     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:48:49     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:50:32     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:59:38     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:59:40     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:59:42     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 19:59:43     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:00:38     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:00:45     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:00:54     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 更改收货地址');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:01:05     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:01:56     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:02:00     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 更改收货地址');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:03:47     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:03:56     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:03:58     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:04:00     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:04:27     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:04:42     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:04:55     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 更改收货地址');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:03     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:05     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:18     http://localhost:8080/mypetstore_war_exploded/saveAccount?null 账号信息更改');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:20     http://localhost:8080/mypetstore_war_exploded/saveAccount?null 账号信息更改');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:22     http://localhost:8080/mypetstore_war_exploded/saveAccount?null 账号信息更改');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:30     http://localhost:8080/mypetstore_war_exploded/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:44     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:45     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2d99c44a');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:43:47     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2021-02-02 20:46:36     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipstate` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) NOT NULL,
  `billzip` varchar(20) NOT NULL,
  `billcountry` varchar(20) NOT NULL,
  `courier` varchar(80) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) NOT NULL,
  `billtolastname` varchar(80) NOT NULL,
  `shiptofirstname` varchar(80) NOT NULL,
  `shiptolastname` varchar(80) NOT NULL,
  `creditcard` varchar(80) NOT NULL,
  `exprdate` varchar(7) NOT NULL,
  `cardtype` varchar(80) NOT NULL,
  `locale` varchar(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1000', 'j2ee', '2020-11-15', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1001', 'j2ee', '2020-11-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1002', 'j2ee', '2020-11-18', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '15.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1003', 'j2ee', '2020-11-18', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1004', 'j2ee', '2020-11-18', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '173.79', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1005', 'j2ee', '2020-11-18', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '173.79', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1006', 'j2ee', '2020-11-18', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '173.79', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES ('1000', '1000', '2020-11-15', 'P');
INSERT INTO `orderstatus` VALUES ('1001', '1001', '2020-11-16', 'P');
INSERT INTO `orderstatus` VALUES ('1002', '1002', '2020-11-18', 'P');
INSERT INTO `orderstatus` VALUES ('1003', '1003', '2020-11-18', 'P');
INSERT INTO `orderstatus` VALUES ('1004', '1004', '2020-11-18', 'P');
INSERT INTO `orderstatus` VALUES ('1005', '1005', '2020-11-18', 'P');
INSERT INTO `orderstatus` VALUES ('1006', '1006', '2020-11-18', 'P');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"images/bird2.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat3.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog5.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard2.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"images/lizard3.gif\">Doubles as a watch dog');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('a', 'japanese', 'DOGS', null, null);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', '1', '1');
INSERT INTO `profile` VALUES ('j2ee', 'english', 'DOGS', '1', '1');
INSERT INTO `profile` VALUES ('whs', 'english', 'DOGS', null, null);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('linenum', '1000');
INSERT INTO `sequence` VALUES ('ordernum', '1007');

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('a', 'a');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('j2ee', 'j2ee');
INSERT INTO `signon` VALUES ('whs', '12345');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES ('2', 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');
