/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : thefifthweek

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2021-12-05 23:49:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for choose
-- ----------------------------
DROP TABLE IF EXISTS `choose`;
CREATE TABLE `choose` (
  `SNO` varchar(20) DEFAULT NULL,
  `CourseID` varchar(30) DEFAULT NULL,
  `Score` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choose
-- ----------------------------
INSERT INTO `choose` VALUES ('S00001', 'C1', '95.00');
INSERT INTO `choose` VALUES ('S00001', 'C2', '80.00');
INSERT INTO `choose` VALUES ('S00001', 'C3', '84.00');
INSERT INTO `choose` VALUES ('S00002', 'C1', '80.00');
INSERT INTO `choose` VALUES ('S00002', 'C2', '85.00');
INSERT INTO `choose` VALUES ('S00003', 'C1', '78.00');
INSERT INTO `choose` VALUES ('S00003', 'C3', '70.00');

-- ----------------------------
-- Table structure for choosebb
-- ----------------------------
DROP TABLE IF EXISTS `choosebb`;
CREATE TABLE `choosebb` (
  `Bb1` varchar(30) DEFAULT NULL,
  `Bb2` int(11) DEFAULT NULL,
  `Bb3` decimal(6,0) DEFAULT NULL,
  `Bb4` varchar(20) NOT NULL DEFAULT '系统测试值',
  `Bb5` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Bb5`),
  KEY `Index_bb4` (`Bb4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choosebb
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CourseID` varchar(15) DEFAULT NULL,
  `CourseName` varchar(30) DEFAULT NULL,
  `CourseBeforeID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('C1', '计算机引论', null);
INSERT INTO `course` VALUES ('C2', 'C 语言', 'C1');
INSERT INTO `course` VALUES ('C3', '数据结构', 'C2');

-- ----------------------------
-- Table structure for courseaa
-- ----------------------------
DROP TABLE IF EXISTS `courseaa`;
CREATE TABLE `courseaa` (
  `Aa1` varchar(20) DEFAULT NULL,
  `Aa2` int(11) DEFAULT NULL,
  `Aa3` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseaa
-- ----------------------------

-- ----------------------------
-- Table structure for cqupt_student
-- ----------------------------
DROP TABLE IF EXISTS `cqupt_student`;
CREATE TABLE `cqupt_student` (
  `studentid` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Fee` decimal(10,2) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `memo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cqupt_student
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `SNO` varchar(20) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `College` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('S00001', '张三', '20', '计算机学院');
INSERT INTO `student` VALUES ('S00002', '李四', '19', '通信学院');
INSERT INTO `student` VALUES ('S00003', '王五', '21', '计算机学院');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `Name` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Score` decimal(10,2) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('赵一', '20', '585.00', '重邮宿舍 12-3-5');
INSERT INTO `test` VALUES ('钱二', '18', '545.00', '南福苑 5-2-9');
INSERT INTO `test` VALUES ('周五', '20', '500.50', '学生新区 23-4-8');
INSERT INTO `test` VALUES ('吴六', '18', '440.00', '南福苑 2-5-12');
INSERT INTO `test` VALUES ('张八', '19', '565.00', '南福苑 3-3-3');
INSERT INTO `test` VALUES ('王九', '10', '520.00', '学生新区 19-7-1');

-- ----------------------------
-- Table structure for test_temp
-- ----------------------------
DROP TABLE IF EXISTS `test_temp`;
CREATE TABLE `test_temp` (
  `Name` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Score` decimal(10,2) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_temp
-- ----------------------------
INSERT INTO `test_temp` VALUES ('郑七', '21', '490.50', '重邮宿舍 11-2-1');
INSERT INTO `test_temp` VALUES ('张八', '20', '560.00', '南福苑 3-3-3');
INSERT INTO `test_temp` VALUES ('王九', '10', '515.00', '学生新区 19-7-1');
