-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mypetstore
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('a','wev','wevg','wg',NULL,'wevwev','wevwev','wev','wev','wev','wev','4848946'),('j2ee','rq','dq','rqw',NULL,'twe','treq','reytu','oiy','o','rf','rq');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannerdata`
--

DROP TABLE IF EXISTS `bannerdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannerdata`
--

LOCK TABLES `bannerdata` WRITE;
/*!40000 ALTER TABLE `bannerdata` DISABLE KEYS */;
INSERT INTO `bannerdata` VALUES ('BIRDS','<image src=\"../images/banner_birds.gif\">'),('CATS','<image src=\"../images/banner_cats.gif\">'),('DOGS','<image src=\"../images/banner_dogs.gif\">'),('FISH','<image src=\"../images/banner_fish.gif\">'),('REPTILES','<image src=\"../images/banner_reptiles.gif\">');
/*!40000 ALTER TABLE `bannerdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `itemId` varchar(10) NOT NULL DEFAULT '',
  `productId` varchar(10) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `instock` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('BIRDS','Birds','<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>'),('CATS','Cats','<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>'),('DOGS','Dogs','<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>'),('FISH','Fish','<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>'),('REPTILES','Reptiles','<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('a',34),('AAA',100),('BBB',262),('EST-1',10000),('EST-10',10000),('EST-11',10000),('EST-12',10000),('EST-13',10000),('EST-14',10000),('EST-15',10000),('EST-16',10000),('EST-17',10000),('EST-18',10000),('EST-19',10000),('EST-2',10000),('EST-20',10000),('EST-21',10000),('EST-22',10000),('EST-23',10000),('EST-24',10000),('EST-25',10000),('EST-26',10000),('EST-27',10000),('EST-28',10000),('EST-3',10000),('EST-4',10000),('EST-5',10000),('EST-6',10000),('EST-7',10000),('EST-8',10000),('EST-9',10000);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int DEFAULT NULL,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('a','a',23.00,234.00,1,'P','sdg',NULL,NULL,NULL,NULL),('AAA','AV-CB-01',10.20,5.32,1,'P','evwsegfwe',NULL,NULL,NULL,NULL),('BBB','AV-CB-01',10.02,10.20,1,'P','sdvdsev',NULL,NULL,NULL,NULL),('EST-1','FI-SW-01',16.50,10.00,1,'P','Large',NULL,NULL,NULL,NULL),('EST-10','K9-DL-01',18.50,12.00,1,'P','Spotted Adult Female',NULL,NULL,NULL,NULL),('EST-11','RP-SN-01',18.50,12.00,1,'P','Venomless',NULL,NULL,NULL,NULL),('EST-12','RP-SN-01',18.50,12.00,1,'P','Rattleless',NULL,NULL,NULL,NULL),('EST-13','RP-LI-02',18.50,12.00,1,'P','Green Adult',NULL,NULL,NULL,NULL),('EST-14','FL-DSH-01',58.50,12.00,1,'P','Tailless',NULL,NULL,NULL,NULL),('EST-15','FL-DSH-01',23.50,12.00,1,'P','With tail',NULL,NULL,NULL,NULL),('EST-16','FL-DLH-02',93.50,12.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-17','FL-DLH-02',93.50,12.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-18','AV-CB-01',193.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-19','AV-SB-02',15.50,2.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-2','FI-SW-01',16.50,10.00,1,'P','Small',NULL,NULL,NULL,NULL),('EST-20','FI-FW-02',5.50,2.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-21','FI-FW-02',5.29,1.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-22','K9-RT-02',135.50,100.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-23','K9-RT-02',145.49,100.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-24','K9-RT-02',255.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-25','K9-RT-02',325.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-26','K9-CW-01',125.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-27','K9-CW-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-28','K9-RT-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-3','FI-SW-02',18.50,12.00,1,'P','Toothless',NULL,NULL,NULL,NULL),('EST-4','FI-FW-01',18.50,12.00,1,'P','Spotted',NULL,NULL,NULL,NULL),('EST-5','FI-FW-01',18.50,12.00,1,'P','Spotless',NULL,NULL,NULL,NULL),('EST-6','K9-BD-01',18.50,12.00,1,'P','Male Adult',NULL,NULL,NULL,NULL),('EST-7','K9-BD-01',18.50,12.00,1,'P','Female Puppy',NULL,NULL,NULL,NULL),('EST-8','K9-PO-02',18.50,12.00,1,'P','Male Puppy',NULL,NULL,NULL,NULL),('EST-9','K9-DL-01',18.50,12.00,1,'P','Spotless Male Puppy',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineitem`
--

DROP TABLE IF EXISTS `lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineitem` (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `unitprice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineitem`
--

LOCK TABLES `lineitem` WRITE;
/*!40000 ALTER TABLE `lineitem` DISABLE KEYS */;
INSERT INTO `lineitem` VALUES (1010,1,'EST-19',1,15.50),(1010,2,'EST-13',10,18.50),(1011,1,'EST-12',1,18.50);
/*!40000 ALTER TABLE `lineitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `logUserId` varchar(255) NOT NULL,
  `logInfo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('j2ee','2020-11-15 17:01:09     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-15 17:01:16     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-15 17:01:17     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot'),('j2ee','2020-11-15 17:01:18     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车'),('j2ee','2020-11-15 17:01:22     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面'),('j2ee','2020-11-16 18:26:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-16 18:27:11     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-16 18:27:13     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@55f881c4'),('j2ee','2020-11-16 18:27:19     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-16 18:27:20     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2020-11-16 18:27:27     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2020-11-16 18:27:30     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@656e9c20'),('j2ee','2020-11-16 18:28:24     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面'),('j2ee','2020-11-16 18:29:19     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@539b1d07'),('j2ee','2020-11-17 01:23:19     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 01:23:21     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 01:23:22     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot'),('j2ee','2020-11-17 01:23:23     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 (EST-18-null)数量+1 '),('j2ee','2020-11-17 01:25:10     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 01:25:11     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 01:25:12     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot'),('j2ee','2020-11-17 01:25:13     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车'),('j2ee','2020-11-17 01:25:27     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:25:27     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:25:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:25:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:25:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 01:26:36     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面'),('j2ee','2020-11-17 01:26:37     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@4398f535'),('j2ee','2020-11-17 01:26:39     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 01:26:40     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 01:26:41     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车'),('j2ee','2020-11-17 01:27:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 01:27:09     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 01:27:09     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 (EST-6-null)数量+1 '),('j2ee','2020-11-17 01:27:25     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车'),('j2ee','2020-11-17 01:27:48     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@4398f535'),('j2ee','2020-11-17 01:27:49     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-18 (EST-18-null) 已从购物车中移除'),('j2ee','2020-11-17 01:27:50     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-6 (EST-6-null) 已从购物车中移除'),('j2ee','2020-11-17 01:27:51     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-7 (EST-7-null) 已从购物车中移除'),('j2ee','2020-11-17 01:27:54     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS'),('j2ee','2020-11-17 01:27:55     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian'),('j2ee','2020-11-17 01:27:56     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车'),('j2ee','2020-11-17 01:28:38     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=FISH 跳转到商品种类 FISH'),('j2ee','2020-11-17 01:28:39     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FI-SW-02 查看产品 Tiger Shark'),('j2ee','2020-11-17 01:28:40     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-3 添加物品 (EST-3-null) 到购物车'),('j2ee','2020-11-17 01:57:55     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 01:57:56     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 01:57:57     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2020-11-17 01:57:58     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2020-11-17 02:00:12     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:00:13     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 02:00:14     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-17 02:00:15     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-17 02:00:17     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车'),('j2ee','2020-11-17 02:03:07     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:03:08     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 02:03:10     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS'),('j2ee','2020-11-17 02:03:12     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian'),('j2ee','2020-11-17 02:03:13     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-17 添加物品 (EST-17-null) 到购物车'),('j2ee','2020-11-17 02:04:52     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:04:53     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 02:04:54     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车'),('j2ee','2020-11-17 02:13:54     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:13:56     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:13:57     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-CW-01 查看产品 Chihuahua'),('j2ee','2020-11-17 02:13:58     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-27 添加物品 (EST-27-null) 到购物车'),('j2ee','2020-11-17 02:14:08     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-27 (EST-27-null) 已从购物车中移除'),('j2ee','2020-11-17 02:14:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-17 02:18:06     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:18:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS'),('j2ee','2020-11-17 02:18:08     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian'),('j2ee','2020-11-17 02:18:09     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车'),('j2ee','2020-11-17 02:18:35     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-16 (EST-16-null) 已从购物车中移除'),('j2ee','2020-11-17 02:18:38     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@511db9c2'),('j2ee','2020-11-17 02:18:38     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@511db9c2'),('j2ee','2020-11-17 02:18:47     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:18:48     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 02:18:50     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车'),('j2ee','2020-11-17 02:18:58     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-7 (EST-7-null) 已从购物车中移除'),('j2ee','2020-11-17 02:22:01     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:22:06     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:22:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:22:08     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-DL-01 查看产品 Dalmation'),('j2ee','2020-11-17 02:22:09     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-10 添加物品 (EST-10-null) 到购物车'),('j2ee','2020-11-17 02:22:22     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-10 (EST-10-null) 已从购物车中移除'),('j2ee','2020-11-17 02:26:07     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:26:09     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:26:10     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 02:26:13     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-17 02:26:13     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-17 02:26:15     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS'),('j2ee','2020-11-17 02:26:15     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian'),('j2ee','2020-11-17 02:26:17     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车'),('j2ee','2020-11-17 02:26:27     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-16 (EST-16-null) 已从购物车中移除'),('j2ee','2020-11-17 02:28:42     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:28:43     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 02:28:44     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2020-11-17 02:28:46     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2020-11-17 02:28:55     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-19 (EST-19-null) 已从购物车中移除'),('j2ee','2020-11-17 02:38:21     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:38:22     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:38:23     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-RT-02 查看产品 Labrador Retriever'),('j2ee','2020-11-17 02:38:25     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-24 添加物品 (EST-24-null) 到购物车'),('j2ee','2020-11-17 02:38:34     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-24 (EST-24-null) 已从购物车中移除'),('j2ee','2020-11-17 02:41:51     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:41:52     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:41:54     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 02:41:58     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车'),('j2ee','2020-11-17 02:42:08     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-7 (EST-7-null) 已从购物车中移除'),('j2ee','2020-11-17 02:47:26     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:47:27     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 02:47:28     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2020-11-17 02:47:29     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2020-11-17 02:47:36     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-19 (EST-19-null) 已从购物车中移除'),('j2ee','2020-11-17 02:48:47     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:48:48     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-17 02:48:50     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-17 02:48:51     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车'),('j2ee','2020-11-17 02:49:01     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-12 (EST-12-null) 已从购物车中移除'),('j2ee','2020-11-17 02:52:52     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-17 02:52:54     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-LI-02 查看产品 Iguana'),('j2ee','2020-11-17 02:52:55     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车'),('j2ee','2020-11-17 02:53:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:53:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 02:53:58     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS'),('j2ee','2020-11-17 02:53:59     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DSH-01 查看产品 Manx'),('j2ee','2020-11-17 02:54:07     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-17 02:54:08     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-17 02:54:12     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:54:13     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-RT-02 查看产品 Labrador Retriever'),('j2ee','2020-11-17 02:54:16     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:54:17     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-CW-01 查看产品 Chihuahua'),('j2ee','2020-11-17 02:54:18     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-17 02:54:19     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2020-11-17 02:54:28     http://localhost:8080/mypetstore_war_exploded/viewItem?itemId=EST-19 查看具体商品 (EST-19-null)'),('j2ee','2020-11-17 02:54:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2020-11-17 02:54:44     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-19 (EST-19-null) 已从购物车中移除'),('j2ee','2020-11-17 02:58:23     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 02:58:24     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 02:58:25     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车'),('j2ee','2020-11-17 02:58:31     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-6 (EST-6-null) 已从购物车中移除'),('j2ee','2020-11-17 02:59:05     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=FISH 跳转到商品种类 FISH'),('j2ee','2020-11-17 02:59:06     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FI-FW-02 查看产品 Goldfish'),('j2ee','2020-11-17 02:59:07     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-21 添加物品 (EST-21-null) 到购物车'),('j2ee','2020-11-17 02:59:13     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-21 (EST-21-null) 已从购物车中移除'),('j2ee','2020-11-17 10:15:32     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 10:15:37     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-17 10:15:38     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-17 10:15:40     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车'),('j2ee','2020-11-17 10:15:57     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-11 (EST-11-null) 已从购物车中移除'),('j2ee','2020-11-17 10:21:39     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 10:21:40     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-17 10:21:42     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-17 10:21:43     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车'),('j2ee','2020-11-17 10:21:50     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-11 (EST-11-null) 已从购物车中移除'),('j2ee','2020-11-17 10:36:24     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-17 10:36:25     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-17 10:36:27     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-17 10:36:28     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车'),('j2ee','2020-11-17 10:36:44     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-6 (EST-6-null) 已从购物车中移除'),('j2ee','2020-11-18 19:52:53     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 19:52:59     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 19:53:00     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-18 19:53:02     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2020-11-18 19:53:03     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2020-11-18 19:53:13     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 19:54:45     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 19:54:46     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-18 19:54:47     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-18 19:54:49     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车'),('j2ee','2020-11-18 19:54:56     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 19:55:58     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-11 (EST-11-null) 已从购物车中移除'),('j2ee','2020-11-18 20:15:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 20:15:59     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2020-11-18 20:16:00     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2020-11-18 20:16:01     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2020-11-18 20:21:26     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2020-11-18 20:21:37     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2020-11-18 20:21:39     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@4b944347'),('j2ee','2020-11-18 20:22:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 20:22:59     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面'),('j2ee','2020-11-18 20:23:01     http://localhost:8080/mypetstore_war_exploded/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@42d88a4c, org.csu.mypetstore.domain.Order@4bd74de1, org.csu.mypetstore.domain.Order@361e234d]'),('j2ee','2020-11-18 20:23:18     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-18 20:23:23     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-18 20:23:24     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车'),('j2ee','2020-11-18 20:23:25     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2020-11-18 20:23:28     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2020-11-18 20:23:29     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@517ab83d'),('j2ee','2020-11-18 21:02:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:04:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:04:51     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@25f1fa88'),('j2ee','2020-11-18 21:04:55     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS'),('j2ee','2020-11-18 21:04:56     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DSH-01 查看产品 Manx'),('j2ee','2020-11-18 21:04:57     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-15 添加物品 (EST-15-null) 到购物车'),('j2ee','2020-11-18 21:05:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:05:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:05:31     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:05:36     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:05:47     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@5185658'),('j2ee','2020-11-18 21:06:30     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:06:32     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@387bbf8d'),('j2ee','2020-11-18 21:10:04     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:10:06     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@3e768435'),('j2ee','2020-11-18 21:10:09     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:12     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:12     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:10:12     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:13:01     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:13:03     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@215e00b2'),('j2ee','2020-11-18 21:13:08     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-18 21:13:10     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-18 21:13:11     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车'),('j2ee','2020-11-18 21:13:21     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:13:26     http://localhost:8080/mypetstore_war_exploded/signOff?null 退出账号'),('j2ee','2020-11-18 21:13:37     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:13:39     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@3e708f5d'),('j2ee','2020-11-18 21:16:24     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@65403b85'),('j2ee','2020-11-18 21:16:44     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-18 21:16:45     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog'),('j2ee','2020-11-18 21:16:46     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车'),('j2ee','2020-11-18 21:17:05     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面'),('j2ee','2020-11-18 21:17:06     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1e1c910c'),('j2ee','2020-11-18 21:29:43     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:29:52     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@6fe2d90b'),('j2ee','2020-11-18 21:29:55     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:29:55     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2020-11-18 21:31:28     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:31:30     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@32705396'),('j2ee','2020-11-18 21:33:12     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:33:13     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS'),('j2ee','2020-11-18 21:33:15     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-RT-01 查看产品 Golden Retriever'),('j2ee','2020-11-18 21:33:16     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-28 添加物品 (EST-28-null) 到购物车'),('j2ee','2020-11-18 21:40:33     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:40:35     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@7a9edf5f'),('j2ee','2020-11-18 21:42:00     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2020-11-18 21:42:01     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake'),('j2ee','2020-11-18 21:42:02     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车'),('j2ee','2020-11-18 21:42:16     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@17bb87ea'),('j2ee','2020-11-18 21:42:17     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@b288000'),('j2ee','2020-11-18 21:48:52     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:48:53     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@14589816'),('j2ee','2020-11-18 21:52:06     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2020-11-18 21:52:07     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2020-11-18 21:52:09     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@6a049edd'),('j2ee','2020-11-18 21:52:11     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面'),('j2ee','2020-11-18 21:52:15     http://localhost:8080/mypetstore_war_exploded/viewOrder?orderId=1002 查看订单 org.csu.mypetstore.domain.Order@6a049edd'),('j2ee','2020-11-18 21:59:09     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2020-11-18 21:59:10     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1f10b27d'),('j2ee','2020-11-18 21:59:22     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2020-11-18 21:59:25     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2020-11-18 21:59:26     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@32cc963e'),('j2ee','2020-11-18 21:59:30     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@62c4d871'),('whs','2021-01-31 23:09:54     http://localhost:8080/mypetstore_war_exploded/newAccount?null 注册新账号'),('j2ee','2021-02-01 21:32:59     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-01 21:33:05     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-01 21:33:09     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2021-02-01 21:33:10     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot'),('j2ee','2021-02-01 21:33:11     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车'),('j2ee','2021-02-01 21:52:40     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-01 21:52:42     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2021-02-01 21:52:43     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot'),('j2ee','2021-02-01 21:52:44     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车'),('j2ee','2021-02-01 21:52:50     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2021-02-01 21:57:13     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-01 21:57:16     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2021-02-01 21:57:18     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面'),('j2ee','2021-02-01 21:57:23     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面'),('j2ee','2021-02-02 19:39:25     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-02 19:39:27     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES'),('j2ee','2021-02-02 19:39:28     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-LI-02 查看产品 Iguana'),('j2ee','2021-02-02 19:39:29     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车'),('j2ee','2021-02-02 19:42:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2021-02-02 19:42:25     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2021-02-02 19:42:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2021-02-02 19:43:37     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2021-02-02 19:48:38     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-02 19:48:39     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2021-02-02 19:48:40     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot'),('j2ee','2021-02-02 19:48:41     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车'),('j2ee','2021-02-02 19:48:49     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2021-02-02 19:50:32     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量'),('j2ee','2021-02-02 19:59:38     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-02 19:59:40     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2021-02-02 19:59:42     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2021-02-02 19:59:43     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2021-02-02 20:00:38     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2021-02-02 20:00:45     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2021-02-02 20:00:54     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 更改收货地址'),('j2ee','2021-02-02 20:01:05     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2021-02-02 20:01:56     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2021-02-02 20:02:00     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 更改收货地址'),('j2ee','2021-02-02 20:03:47     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-02 20:03:56     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS'),('j2ee','2021-02-02 20:03:58     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch'),('j2ee','2021-02-02 20:04:00     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车'),('j2ee','2021-02-02 20:04:27     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2021-02-02 20:04:42     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 '),('j2ee','2021-02-02 20:04:55     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 更改收货地址'),('j2ee','2021-02-02 20:43:03     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-02 20:43:05     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面'),('j2ee','2021-02-02 20:43:18     http://localhost:8080/mypetstore_war_exploded/saveAccount?null 账号信息更改'),('j2ee','2021-02-02 20:43:20     http://localhost:8080/mypetstore_war_exploded/saveAccount?null 账号信息更改'),('j2ee','2021-02-02 20:43:22     http://localhost:8080/mypetstore_war_exploded/saveAccount?null 账号信息更改'),('j2ee','2021-02-02 20:43:30     http://localhost:8080/mypetstore_war_exploded/signOff?null 退出账号'),('j2ee','2021-02-02 20:43:44     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录'),('j2ee','2021-02-02 20:43:45     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2d99c44a'),('j2ee','2021-02-02 20:43:47     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面'),('j2ee','2021-02-02 20:46:36     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `ID` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('admin','admin');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1010,'a','2021-04-10','wevwev','wevwev','wev','wev','wev','wevwev','wevwev','wev',NULL,'wev','wev','UPS',200.50,'wevg','wg','wevg','wg','999 9999 9999 9999','12/03','Visa','CA'),(1011,'a','2021-04-10','wevwev','wevwev','wev','wev','wev','wevwev','wevwev','wev',NULL,'wev','wev','UPS',18.50,'wevg','wg','wevg','wg','999 9999 9999 9999','12/03','Visa','CA');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstatus` (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
INSERT INTO `orderstatus` VALUES (1010,1010,'2021-04-10','P'),(1011,1011,'2021-04-10','P');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('a','FISH','a','<image src=\"../images/bird2.gif\">a'),('AV-CB-01','BIRDS','Amazon Parrot','<image src=\"images/bird2.gif\">Great companion for up to 75 years'),('AV-SB-02','BIRDS','Finch','<image src=\"images/bird1.gif\">Great stress reliever'),('FI-FW-01','FISH','Koi','<image src=\"images/fish3.gif\">Fresh Water fish from Japan'),('FI-FW-02','FISH','Goldfish','<image src=\"images/fish2.gif\">Fresh Water fish from China'),('FI-SW-01','FISH','Angelfish','<image src=\"images/fish1.gif\">Salt Water fish from Australia'),('FI-SW-02','FISH','Tiger Shark','<image src=\"images/fish4.gif\">Salt Water fish from Australia'),('FL-DLH-02','CATS','Persian','<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess'),('FL-DSH-01','CATS','Manx','<image src=\"images/cat3.gif\">Great for reducing mouse populations'),('K9-BD-01','DOGS','Bulldog','<image src=\"images/dog2.gif\">Friendly dog from England'),('K9-CW-01','DOGS','Chihuahua','<image src=\"images/dog4.gif\">Great companion dog'),('K9-DL-01','DOGS','Dalmation','<image src=\"images/dog5.gif\">Great dog for a Fire Station'),('K9-PO-02','DOGS','Poodle','<image src=\"images/dog6.gif\">Cute dog from France'),('K9-RT-01','DOGS','Golden Retriever','<image src=\"images/dog1.gif\">Great family dog'),('K9-RT-02','DOGS','Labrador Retriever','<image src=\"images/dog5.gif\">Great hunting dog'),('RP-LI-02','REPTILES','Iguana','<image src=\"images/lizard2.gif\">Friendly green friend'),('RP-SN-01','REPTILES','Rattlesnake','<image src=\"images/lizard3.gif\">Doubles as a watch dog');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES ('a','english','DOGS',NULL,NULL),('j2ee','english','DOGS',NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('linenum',1000),('ordernum',1011);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signon`
--

DROP TABLE IF EXISTS `signon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signon`
--

LOCK TABLES `signon` WRITE;
/*!40000 ALTER TABLE `signon` DISABLE KEYS */;
INSERT INTO `signon` VALUES ('a','0CC175B9C0F1B6A831C399E269772661'),('j2ee','82572290B86FC6AD41C0F05937410631');
/*!40000 ALTER TABLE `signon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `suppid` int NOT NULL,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'XYZ Pets','AC','600 Avon Way','','Los Angeles','CA','94024','212-947-0797'),(2,'ABC Pets','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-10  8:19:02
