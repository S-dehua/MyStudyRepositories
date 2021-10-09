/*
 Navicat MySQL Data Transfer

 Source Server         : coffee
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3306
 Source Schema         : peasant

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 04/08/2021 10:09:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_family
-- ----------------------------
DROP TABLE IF EXISTS `base_family`;
CREATE TABLE `base_family`  (
  `familyId` bigint(20) NOT NULL,
  `peasantId` bigint(20) NULL DEFAULT NULL,
  `familyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `familyIdentity` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `familySex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `familyBirthday` date NULL DEFAULT NULL,
  `familyRelation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `familyState` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`familyId`) USING BTREE,
  INDEX `FK_Relationship_1`(`peasantId`) USING BTREE,
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`peasantId`) REFERENCES `base_peasant` (`peasantId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of base_family
-- ----------------------------

-- ----------------------------
-- Table structure for base_income
-- ----------------------------
DROP TABLE IF EXISTS `base_income`;
CREATE TABLE `base_income`  (
  `peasantid` bigint(20) NOT NULL,
  `peasantname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typename` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`peasantid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of base_income
-- ----------------------------
INSERT INTO `base_income` VALUES (177100992461017088, 'Test3', 'Test3', 64);
INSERT INTO `base_income` VALUES (177169848273604608, 'Tom', '打工', 1500);
INSERT INTO `base_income` VALUES (177169956629254144, '小明', '种庄稼', 2000);
INSERT INTO `base_income` VALUES (177170117476618240, '小明', '养猪', 6000);

-- ----------------------------
-- Table structure for base_peasant
-- ----------------------------
DROP TABLE IF EXISTS `base_peasant`;
CREATE TABLE `base_peasant`  (
  `peasantid` bigint(20) NOT NULL,
  `peasantname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `peasantaddr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `peasantstate` int(11) NULL DEFAULT NULL COMMENT '1.贫困\r\n            2.小康\r\n            3.富有',
  PRIMARY KEY (`peasantid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of base_peasant
-- ----------------------------
INSERT INTO `base_peasant` VALUES (176738760061489152, 'Tom', '成都', 1);
INSERT INTO `base_peasant` VALUES (176760836289859584, 'Test2', 'Test2', 3);
INSERT INTO `base_peasant` VALUES (176844857896210432, 'Test5', '湖南长沙', 1);
INSERT INTO `base_peasant` VALUES (177122663280545792, 'mike', '北京', 1);
INSERT INTO `base_peasant` VALUES (177133298156441600, 'coff', '北京', 2);

-- ----------------------------
-- Table structure for base_produce
-- ----------------------------
DROP TABLE IF EXISTS `base_produce`;
CREATE TABLE `base_produce`  (
  `produceid` bigint(20) NOT NULL,
  `producename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `produceaddr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `produceprice` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`produceid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of base_produce
-- ----------------------------
INSERT INTO `base_produce` VALUES (176844122307563520, '大白菜', '甘肃', 1235);
INSERT INTO `base_produce` VALUES (176868483169128448, '小白菜', '湖南', 135);
INSERT INTO `base_produce` VALUES (176869955776679936, '白菜', '成都', 168);
INSERT INTO `base_produce` VALUES (176877719898951680, '白菜', '成都', 168);
INSERT INTO `base_produce` VALUES (176877726475620352, '白菜', '成都', 168);
INSERT INTO `base_produce` VALUES (176889762085474304, '红烧肉', '福建', 123);

SET FOREIGN_KEY_CHECKS = 1;
