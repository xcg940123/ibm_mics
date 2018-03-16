/*
 Navicat Premium Data Transfer

 Source Server         : ibm
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : mics

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 11/03/2018 19:10:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allowance
-- ----------------------------
DROP TABLE IF EXISTS `allowance`;
CREATE TABLE `allowance` (
  `id` int(10) NOT NULL DEFAULT '0',
  `rangename` varchar(20) DEFAULT NULL,
  `pervalue` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allowance
-- ----------------------------
BEGIN;
INSERT INTO `allowance` VALUES (1, '住院误工津贴', '4');
INSERT INTO `allowance` VALUES (2, '救护车费用报销', '2000');
COMMIT;

-- ----------------------------
-- Table structure for baodan
-- ----------------------------
DROP TABLE IF EXISTS `baodan`;
CREATE TABLE `baodan` (
  `kind1` varchar(20) DEFAULT NULL,
  `range1` varchar(20) DEFAULT NULL,
  `customQuotation1` varchar(20) DEFAULT NULL,
  `kind2` varchar(20) DEFAULT NULL,
  `range2` varchar(20) DEFAULT NULL,
  `customQuotation2` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT '',
  `kind3` varchar(20) DEFAULT NULL,
  `range3` varchar(20) DEFAULT NULL,
  `customQuotation3` varchar(20) DEFAULT NULL,
  `kind4` varchar(20) DEFAULT NULL,
  `range4` varchar(20) DEFAULT NULL,
  `customQuotation4` varchar(20) DEFAULT NULL,
  `kind5` varchar(20) DEFAULT NULL,
  `range5` varchar(20) DEFAULT NULL,
  `customQuotation5` varchar(20) DEFAULT NULL,
  `kind6` varchar(20) DEFAULT NULL,
  `range6` varchar(20) DEFAULT NULL,
  `customQuotation6` varchar(20) DEFAULT NULL,
  `kind7` varchar(20) DEFAULT NULL,
  `range7` varchar(20) DEFAULT NULL,
  `customQuotation7` varchar(20) DEFAULT NULL,
  `kind8` varchar(20) DEFAULT NULL,
  `range8` varchar(20) DEFAULT NULL,
  `customQuotation8` varchar(20) DEFAULT NULL,
  `totalValue` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baodan
-- ----------------------------
BEGIN;
INSERT INTO `baodan` VALUES (NULL, NULL, '50000', NULL, NULL, '0', '', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, '50000', NULL, NULL, '0', '', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, '50000', NULL, NULL, '0', '2018/02/22', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, '50000', NULL, NULL, '0', '2018/02/06', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, '50000', NULL, NULL, '0', '2018/02/07', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '2017/05/31', NULL, NULL, '20', NULL, NULL, '2000', NULL, NULL, '1000000', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '100000', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '2017/05/31', NULL, NULL, '20', NULL, NULL, '2000', NULL, NULL, '1000000', NULL, NULL, '200000', NULL, NULL, '0', NULL, NULL, '100000', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '2018/02/14', NULL, NULL, '50', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '200000', NULL, NULL, '500000', NULL, NULL, '200000', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '2018/02/20', NULL, NULL, '0', NULL, NULL, '2000', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '2018/03/01', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '2018/03/01', NULL, NULL, '50', NULL, NULL, '2000', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, '2018/02/01', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/23', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '2000', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '300000', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '50000', '2018/03/07', '津贴及车费', '住院误工津贴', '50', '津贴及车费', '救护车费用报销', '2000', '交通意外', '飞机意外身故、伤残', '500000', '交通意外', '火车意外身故、伤残', '500000', '交通意外', '船舶意外身故、伤残', '500000', '交通意外', '汽车意外身故、伤残', '50000', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/15', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/24', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/22', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/14', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/11/03', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/21', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2019/04/06', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2019/04/06', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2017/10/19', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/21', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '2018/03/01', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
INSERT INTO `baodan` VALUES ('一般意外', '意外身故、伤残', '50000 ', '一般意外', '意外医疗', '0 ', '', '津贴及车费', '住院误工津贴', '0', '津贴及车费', '救护车费用报销', '0', '交通意外', '飞机意外身故、伤残', '0', '交通意外', '火车意外身故、伤残', '0', '交通意外', '船舶意外身故、伤残', '0', '交通意外', '汽车意外身故、伤残', '0', NULL);
COMMIT;

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `totalValue` varchar(20) DEFAULT NULL,
  `customQuotation8` varchar(20) DEFAULT NULL,
  `range8` varchar(20) DEFAULT NULL,
  `kind8` varchar(20) DEFAULT NULL,
  `customQuotation7` varchar(20) DEFAULT NULL,
  `range7` varchar(20) DEFAULT NULL,
  `kind7` varchar(20) DEFAULT NULL,
  `customQuotation6` varchar(20) DEFAULT NULL,
  `range6` varchar(20) DEFAULT NULL,
  `kind6` varchar(20) DEFAULT NULL,
  `customQuotation5` varchar(20) DEFAULT NULL,
  `range5` varchar(20) DEFAULT NULL,
  `kind5` varchar(20) DEFAULT NULL,
  `customQuotation4` varchar(20) DEFAULT NULL,
  `range4` varchar(20) DEFAULT NULL,
  `kind4` varchar(20) DEFAULT NULL,
  `customQuotation3` varchar(20) DEFAULT NULL,
  `range3` varchar(20) DEFAULT NULL,
  `kind3` varchar(20) DEFAULT NULL,
  `customQuotation2` varchar(20) DEFAULT NULL,
  `range2` varchar(20) DEFAULT NULL,
  `kind2` varchar(20) DEFAULT NULL,
  `customQuotation1` varchar(20) DEFAULT NULL,
  `range1` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `orderName` varchar(20) DEFAULT NULL,
  `kind1` varchar(20) DEFAULT NULL,
  `certifitype` varchar(20) DEFAULT NULL,
  `certifiNumber` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `orderstartDate` varchar(20) DEFAULT NULL,
  `orderendDate` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `orderedName` varchar(20) DEFAULT NULL,
  `relationship` varchar(20) DEFAULT NULL,
  `certifiType2` varchar(20) DEFAULT NULL,
  `certifiNumber2` varchar(20) DEFAULT NULL,
  `birthday2` varchar(20) DEFAULT NULL,
  `sex2` varchar(20) DEFAULT NULL,
  `phoneNumber2` varchar(20) DEFAULT NULL,
  `contractState` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `contractName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `contractId` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract
-- ----------------------------
BEGIN;
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0', '意外医疗', '一般意外', '50000', '意外身故、伤残', '2019/01/01', '恶女', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/02/27', '15691712061', '2019/01/01', '2019/12/31', '', '1442795696@qq.com', '恶女', '2', NULL, '320925199401230010', '2018/02/27', 'male', '15691712061', '1', '111', '一般意外', '陈', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0', '意外医疗', '一般意外', '50000', '意外身故、伤残', '2019/01/01', '恶女', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/02/27', '15691712061', '2019/01/01', '2019/12/31', '', '1442795696@qq.com', '恶女', '2', '2', '320925199401230010', '2018/02/27', 'male', '15691712061', '1', '555', '一般意外保险', '徐', NULL);
INSERT INTO `contract` VALUES ('56.8', '300000', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '2000', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0', '意外医疗', '一般意外', '50000', '意外身故、伤残', '2018/03/23', '而我却若', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/28', '15691712061', '2018/03/23', '2019/3/22', '121', '1442795696@qq.com', '而我却若', '2', '2', '320925199401230010', '2018/04/03', 'male', '15691712061', '1', '555', '一般意外保险', '陈', NULL);
INSERT INTO `contract` VALUES ('184.3', '50000', '汽车意外身故、伤残', '津贴及车费', '500000', '船舶意外身故、伤残', '津贴及车费', '500000', '火车意外身故、伤残', '津贴及车费', '500000', '飞机意外身故、伤残', '津贴及车费', '2000', '救护车费用报销', '津贴及车费', '50', '住院误工津贴', '津贴及车费', '50000', '意外医疗', '一般意外', '50000', '意外身故、伤残', '2018/03/07', '刘阳', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/21', '15691712061', '2018/03/07', '2019/3/6', '西安', '1442795696@qq.com', '刘阳', '2', '2', '320925199401230010', '2018/03/27', 'male', '15691712061', '1', '111', '一般意外保险', '徐', NULL);
INSERT INTO `contract` VALUES ('184.3', '50000', '汽车意外身故、伤残', '津贴及车费', '500000', '船舶意外身故、伤残', '津贴及车费', '500000', '火车意外身故、伤残', '津贴及车费', '500000', '飞机意外身故、伤残', '津贴及车费', '2000', '救护车费用报销', '津贴及车费', '50', '住院误工津贴', '津贴及车费', '50000', '意外医疗', '一般意外', '50000', '意外身故、伤残', '2018/03/07', '刘阳', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/21', '15691712061', '2018/03/07', '2019/3/6', '西安', '1442795696@qq.com', '刘阳', '2', '2', '320925199401230010', '2018/03/27', 'male', '15691712061', '1', '555', '一般意外保险', '徐', NULL);
INSERT INTO `contract` VALUES ('184.3', '0-50000W', '汽车意外身故、伤残', '津贴及车费', '0-500000W', '船舶意外身故、伤残', '津贴及车费', '0-500000W', '火车意外身故、伤残', '津贴及车费', '0-500000W', '飞机意外身故、伤残', '津贴及车费', '0-2000W', '救护车费用报销', '津贴及车费', '0-50W', '住院误工津贴', '津贴及车费', '0-50000W', '意外医疗', '一般意外', '0-50000 W', '意外身故、伤残', '2018/03/07', '刘阳', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/21', '15691712061', '2018/03/07', '2019/3/6', '西安', '1442795696@qq.com', '刘阳', '2', '2', '320925199401230010', '2018/03/27', 'male', '15691712061', '1', '111', '一般意外保险', '陈', NULL);
INSERT INTO `contract` VALUES ('184.3', '50000', '汽车意外身故、伤残', '津贴及车费', '500000', '船舶意外身故、伤残', '津贴及车费', '500000', '火车意外身故、伤残', '津贴及车费', '500000', '飞机意外身故、伤残', '津贴及车费', '2000', '救护车费用报销', '津贴及车费', '50', '住院误工津贴', '津贴及车费', '50000', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/03/07', '刘阳', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/21', '15691712061', '2018/03/07', '2019/3/6', '西安', '1442795696@qq.com', '刘阳', '2', '2', '320925199401230010', '2018/03/27', 'male', '15691712061', '1', '555', '一般意外保险', '陈', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '', '陈宣言', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/18', '15691712061', '', 'NaN/NaN/NaN', '1', '1442795696@qq.com', '陈宣言', '2', '2', '320925199401230010', '2018/03/27', 'male', '15691712061', '1', '111', '一般意外保险', '刘', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/11/03', '宋玉培', '一般意外', '320925199401230010', '320925199401230012', 'male', '2018/03/01', '15691712061', '2018/11/03', '2019/11/2', '1', '1442795696@qq.com', '宋玉培', '2', '2', '320925199401230010', '2018/03/29', 'male', '15691712061', '1', '555', '一般意外保险', '徐', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/11/03', '宋玉培', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/01', '15691712061', '2018/11/03', '2019/11/2', '1', '1442795696@qq.com', '宋玉培', '2', '2', '320925199401230010', '2018/03/29', 'male', '15691712061', '1', '111', '一般意外保险', '刘', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/11/03', '宋玉培', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/01', '15691712061', '2018/11/03', '2019/11/2', '1', '1442795696@qq.com', '宋玉培', '2', '2', '320925199401230010', '2018/03/29', 'male', '15691712061', '1', '555', '一般意外保险', '刘', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/11/03', '宋玉培', '一般意外', '320925199401230010', '320925199401230011', 'male', '1111111', '15691712061', '2018/11/03', '2019/11/2', '1', '1442795696@qq.com', '宋玉培', '2', '2', '320925199401230010', '2018/03/29', 'male', '15691712061', '1', '555', '一般意外保险', '刘', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/11/03', '宋玉培', '一般意外', '320925199401230010', '320925199401230011', 'male', '2018/03/01', '15691712061', '2018/11/03', '2019/11/2', '1', '1442795696@qq.com', '宋玉培', '2', '2', '320925199401230010', '2018/03/29', 'male', '15691712061', '1', '555', '一般意外保险', '刘', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/03/21', '惠路路傻逼', '一般意外', '320925199401230019', '320925199401230019', 'male', '2018/03/12', '15691712061', '2018/03/21', '2019/3/20', '111', '1442795696@qq.com', '惠路路傻逼', '2', '2', '320925199401230019', '2018/03/22', 'male', '15691712061', '1', '111', '一般意外保险', '徐', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/03/21', '徐成国国', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/23', '15691712061', '2018/03/21', '2019/3/20', '哇塞多', '1442795696@qq.com', '徐成国国', '2', '2', '320925199401230010', '2018/03/13', 'male', '15691712061', '1', '555', '一般意外保险', 'admin', NULL);
INSERT INTO `contract` VALUES ('43.8', '0', '汽车意外身故、伤残', '津贴及车费', '0', '船舶意外身故、伤残', '津贴及车费', '0', '火车意外身故、伤残', '津贴及车费', '0', '飞机意外身故、伤残', '津贴及车费', '0', '救护车费用报销', '津贴及车费', '0', '住院误工津贴', '津贴及车费', '0 ', '意外医疗', '一般意外', '50000 ', '意外身故、伤残', '2018/03/01', '程序', '一般意外', '320925199401230010', '320925199401230010', 'male', '2018/03/11', '15691712061', '2018/03/01', '2019/2/28', '11', '1442795696@qq.com', '程序', '2', '2', '320925199401230011', '2018/03/11', 'male', '15691712061', '1', '555', '一般意外保险', 'admin', 'contract');
COMMIT;

-- ----------------------------
-- Table structure for generalaccident
-- ----------------------------
DROP TABLE IF EXISTS `generalaccident`;
CREATE TABLE `generalaccident` (
  `id` int(10) NOT NULL,
  `rangename` varchar(20) DEFAULT NULL,
  `pervalue` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of generalaccident
-- ----------------------------
BEGIN;
INSERT INTO `generalaccident` VALUES (1, '意外身故、伤残', '43.8');
INSERT INTO `generalaccident` VALUES (2, '意外医疗', '4');
COMMIT;

-- ----------------------------
-- Table structure for medicalcare
-- ----------------------------
DROP TABLE IF EXISTS `medicalcare`;
CREATE TABLE `medicalcare` (
  `certifiNumber3` varchar(20) DEFAULT NULL,
  `certifyType3` varchar(20) DEFAULT NULL,
  `patientName` varchar(20) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `fanwei` varchar(20) DEFAULT NULL,
  `sex3` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `history` varchar(20) DEFAULT NULL,
  `miaoshu` varchar(20) DEFAULT NULL,
  `visitTime` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `zhuyuan` varchar(20) DEFAULT NULL,
  `payment` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of medicalcare
-- ----------------------------
BEGIN;
INSERT INTO `medicalcare` VALUES (NULL, NULL, NULL, 'xd', 'gds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fds');
INSERT INTO `medicalcare` VALUES (NULL, NULL, NULL, '一般意外', '意外身故、伤残', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '67');
INSERT INTO `medicalcare` VALUES (NULL, NULL, NULL, 'jsdfl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `medicalcare` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24356', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `medicalcare` VALUES ('qwe6', 'qwe5', 'qwe4', 'qwe1', 'qwe2', 'qwe8', 'qwe7', 'qwe10', 'qwe9', 'qwe8', 'qwe10', 'qwe9', 'qwe3');
INSERT INTO `medicalcare` VALUES ('567', '567', '567', '567', '567', '567', '567', '567', '567', '567', '567', '567', '567');
INSERT INTO `medicalcare` VALUES ('', '1', 'null', 'null', '612731199202033222', '', '', '会', '', '', '1', '1', '');
INSERT INTO `medicalcare` VALUES ('123', '123', '567', '567', '567', '567sex3', '567', '567', '567', '567', '567', '567zhuyuan', '567');
INSERT INTO `medicalcare` VALUES (NULL, NULL, '宋玉培', '一般意外', '意外医疗', '女', '55', '无', NULL, '2018/03/29', '解决', '2', '555');
INSERT INTO `medicalcare` VALUES (NULL, NULL, '徐成国', '一般意外', '意外身故、伤残', '男', '12', 'asdf', NULL, '2018/03/01', 'asdf', '3', '12');
INSERT INTO `medicalcare` VALUES ('320925199401230010', '身份证', '徐成国', '一般意外', '意外医疗', '男', '45', '阿斯蒂芬', NULL, '2018/03/15', '卡很舒服的', '2', '123456');
INSERT INTO `medicalcare` VALUES ('320925199401230010', '身份证', '说的', '一般意外', '意外身故、伤残', '男', '122', '士大夫', '阿斯蒂芬', '2018/03/07', '阿斯蒂芬', '2', '456');
INSERT INTO `medicalcare` VALUES ('320925199401230010', '身份证', '刘阳', '一般意外', '意外身故、伤残', '男', '23', '无', '感冒', '2018/03/11', '123', '2', '12456');
COMMIT;

-- ----------------------------
-- Table structure for orderedinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderedinfo`;
CREATE TABLE `orderedinfo` (
  `orderedName` varchar(20) DEFAULT NULL,
  `relationship` varchar(20) DEFAULT NULL,
  `certifiType2` varchar(20) DEFAULT NULL,
  `certifiNumber2` varchar(20) DEFAULT NULL,
  `birthday2` varchar(20) DEFAULT NULL,
  `sex2` varchar(20) DEFAULT NULL,
  `phoneNumber2` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderedinfo
-- ----------------------------
BEGIN;
INSERT INTO `orderedinfo` VALUES ('李超', '3', '2', '3456789', '5678', 'male', '456789');
INSERT INTO `orderedinfo` VALUES ('', '1', '1', '请输入正确的证件号码', '', 'male', '');
INSERT INTO `orderedinfo` VALUES ('', '1', '1', '请输入正确的证件号码', '', 'male', '');
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderedinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `orderName` varchar(20) DEFAULT NULL,
  `certifitype` varchar(20) DEFAULT NULL,
  `certifiNumber` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `orderstartDate` varchar(20) DEFAULT NULL,
  `orderendDate` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
BEGIN;
INSERT INTO `orderinfo` VALUES ('惠路路', '身份证', '4567', 'male', '45678', '7890', NULL, NULL, NULL, '45678');
INSERT INTO `orderinfo` VALUES ('', '身份证', '', 'male', '', '', NULL, NULL, NULL, '');
INSERT INTO `orderinfo` VALUES ('', '身份证', '', 'male', '', '', NULL, NULL, NULL, '');
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `orderinfo` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for settlement
-- ----------------------------
DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
  `contractId` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `worker` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(20) DEFAULT NULL,
  `settlementId` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for trafficaccident
-- ----------------------------
DROP TABLE IF EXISTS `trafficaccident`;
CREATE TABLE `trafficaccident` (
  `id` int(11) NOT NULL,
  `rangename` varchar(20) DEFAULT NULL,
  `pervalue` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trafficaccident
-- ----------------------------
BEGIN;
INSERT INTO `trafficaccident` VALUES (1, '飞机意外身故、伤残', '8');
INSERT INTO `trafficaccident` VALUES (2, '火车意外身故、伤残', '1.5');
INSERT INTO `trafficaccident` VALUES (3, '船舶意外身故、伤残', '2.4');
INSERT INTO `trafficaccident` VALUES (4, '汽车意外身故、伤残', '2');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userName` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('惠路路', 'bc894923423d4ab3c73a2b1445b2705e');
INSERT INTO `user` VALUES ('张三', '8021e5feee8c20c5dc7a338d2b43ecab');
INSERT INTO `user` VALUES ('555', '1a67f4bfab1bba4cf97d7015a32af82c');
INSERT INTO `user` VALUES ('111', 'f8a31fc9d1e0bf3cd59dff22b66a1fb9');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
