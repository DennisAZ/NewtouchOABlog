/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : oablog

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-06-19 23:10:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesslog
-- ----------------------------
DROP TABLE IF EXISTS `accesslog`;
CREATE TABLE `accesslog` (
  `ID` varchar(32) DEFAULT NULL,
  `LandIP` varchar(255) DEFAULT NULL,
  `LandDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `AccessPage` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `rectangle` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `AccountNum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `ID` varchar(32) NOT NULL,
  `name` varchar(2000) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `submitTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` char(2) DEFAULT NULL,
  UNIQUE KEY `InformationID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
