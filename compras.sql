/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : r_d

Target Server Type    : MYSQL
Target Server Version : 50599
File Encoding         : 65001

Date: 2014-02-12 12:44:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `compras`
-- ----------------------------
DROP TABLE IF EXISTS `compras`;
CREATE TABLE `compras` (
`clave`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`descrip`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`cant_sol`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`cant_sur`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of compras
-- ----------------------------
BEGIN;
INSERT INTO `compras` VALUES ('101', 'ACIDO acetilsalicilico 20 tabletas 500mg', '19', '17'), ('104', 'PARACETAMOL 10 tabletas 500mg', '4', '4'), ('106', 'PARACETAMOL 100mg/ml env gotero 15ml', '21', '19'), ('109', 'METAMIZOL sodico sol iny 1g/2ml c/3 amp', '15', '12'), ('103', 'ACIDO Acetilsalicilico 20 tab solu 300mg', '40', '37'), ('104', 'PARACETAMOL 10 tabletas 500mg', '74', '73'), ('604560391', 'GUANTES EXP AMB EST L DES T MED C/100', '101', '100');
COMMIT;
