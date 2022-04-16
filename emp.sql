/*
 Navicat MySQL Data Transfer

 Source Server         : Falling
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3603
 Source Schema         : crud

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 07/04/2022 20:16:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE,
  INDEX `fk`(`d_id`) USING BTREE,
  CONSTRAINT `fk` FOREIGN KEY (`d_id`) REFERENCES `dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (102, '张三', 'M', 'zhangsan@qq.com', 1);
INSERT INTO `emp` VALUES (103, '红薯加土豆', 'M', 'lemon327@qq.com', 1);
INSERT INTO `emp` VALUES (104, '123456', 'M', '12346@qq.com', 1);
INSERT INTO `emp` VALUES (105, '逯志行', 'M', 'lemon327@qq.com', 1);
INSERT INTO `emp` VALUES (106, '土豆泥', 'M', 'yliu@123.com', 2);
INSERT INTO `emp` VALUES (107, '你是猪吧', 'F', 'haha@qq.com', 2);

SET FOREIGN_KEY_CHECKS = 1;
