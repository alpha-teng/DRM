/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.128
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : 192.168.1.128:3306
 Source Schema         : drm

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 25/05/2026 00:18:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drm_ai_chat_log
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_chat_log`;
CREATE TABLE `drm_ai_chat_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_ai_chat_log
-- ----------------------------
INSERT INTO `drm_ai_chat_log` VALUES (1, 'admin', '2026-05-18 15:45:45', 'admin', '2026-05-12 15:45:45', '模拟测试数据', '分类/项目-7', '分类/项目-5', '妇产科', '分类/项目-2');
INSERT INTO `drm_ai_chat_log` VALUES (2, 'admin', '2026-05-15 15:45:45', 'admin', '2026-05-01 15:45:45', '模拟测试数据', '分类/项目-3', '分类/项目-1', '儿科', '分类/项目-4');
INSERT INTO `drm_ai_chat_log` VALUES (3, 'admin', '2026-04-29 15:45:45', 'admin', '2026-04-24 15:45:45', '模拟测试数据', '分类/项目-1', '分类/项目-5', '儿科', '分类/项目-8');
INSERT INTO `drm_ai_chat_log` VALUES (4, 'admin', '2026-05-06 15:45:45', 'admin', '2026-05-12 15:45:45', '模拟测试数据', '分类/项目-6', '分类/项目-4', '儿科', '分类/项目-1');
INSERT INTO `drm_ai_chat_log` VALUES (5, 'admin', '2026-05-14 15:45:45', 'admin', '2026-05-09 15:45:45', '模拟测试数据', '分类/项目-9', '分类/项目-10', '儿科', '分类/项目-5');

-- ----------------------------
-- Table structure for drm_ai_config
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_config`;
CREATE TABLE `drm_ai_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `config_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_ai_config
-- ----------------------------
INSERT INTO `drm_ai_config` VALUES (1, 'admin', '2026-05-20 15:45:45', 'admin', '2026-05-10 15:45:45', '模拟测试数据', '分类/项目-4', '分类/项目-6');
INSERT INTO `drm_ai_config` VALUES (2, 'admin', '2026-05-17 15:45:45', 'admin', '2026-05-12 15:45:45', '模拟测试数据', '分类/项目-9', '分类/项目-10');
INSERT INTO `drm_ai_config` VALUES (3, 'admin', '2026-05-15 15:45:45', 'admin', '2026-04-28 15:45:45', '模拟测试数据', '分类/项目-8', '分类/项目-4');
INSERT INTO `drm_ai_config` VALUES (4, 'admin', '2026-05-12 15:45:45', 'admin', '2026-05-03 15:45:45', '模拟测试数据', '分类/项目-3', '分类/项目-7');
INSERT INTO `drm_ai_config` VALUES (5, 'admin', '2026-05-02 15:45:45', 'admin', '2026-04-25 15:45:45', '模拟测试数据', '分类/项目-6', '分类/项目-5');

-- ----------------------------
-- Table structure for drm_ai_recommend
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_recommend`;
CREATE TABLE `drm_ai_recommend`  (
  `recommend_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `recommend_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室',
  `recommend_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`recommend_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'AI智能推荐' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_ai_recommend
-- ----------------------------
INSERT INTO `drm_ai_recommend` VALUES (1, 'AiRecommend Test 1', '内科', '日常分析', '0', 'admin', '2026-05-24 16:15:33', '', NULL, '测试1');
INSERT INTO `drm_ai_recommend` VALUES (2, 'AiRecommend Test 2', '外科', '异常波动', '0', 'admin', '2026-05-24 16:15:33', '', NULL, '测试2');
INSERT INTO `drm_ai_recommend` VALUES (3, 'AiRecommend Test 3', '儿科', '优化建议', '1', 'admin', '2026-05-24 16:15:33', '', NULL, '测试3');

-- ----------------------------
-- Table structure for drm_ai_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_report`;
CREATE TABLE `drm_ai_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室',
  `report_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'AI分析报告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_ai_report
-- ----------------------------
INSERT INTO `drm_ai_report` VALUES (1, 'AiReport Test 1', '内科', '日常分析', '0', 'admin', '2026-05-24 16:15:32', '', NULL, '测试1');
INSERT INTO `drm_ai_report` VALUES (2, 'AiReport Test 2', '外科', '异常波动', '0', 'admin', '2026-05-24 16:15:32', '', NULL, '测试2');
INSERT INTO `drm_ai_report` VALUES (3, 'AiReport Test 3', '儿科', '优化建议', '1', 'admin', '2026-05-24 16:15:32', '', NULL, '测试3');

-- ----------------------------
-- Table structure for drm_ai_warning
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_warning`;
CREATE TABLE `drm_ai_warning`  (
  `warning_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `warning_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室',
  `warning_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`warning_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'AI智能预警' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_ai_warning
-- ----------------------------
INSERT INTO `drm_ai_warning` VALUES (1, 'AiWarning Test 1', '内科', '日常分析', '0', 'admin', '2026-05-24 16:15:33', '', NULL, '测试1');
INSERT INTO `drm_ai_warning` VALUES (2, 'AiWarning Test 2', '外科', '异常波动', '0', 'admin', '2026-05-24 16:15:33', '', NULL, '测试2');
INSERT INTO `drm_ai_warning` VALUES (3, 'AiWarning Test 3', '儿科', '优化建议', '1', 'admin', '2026-05-24 16:15:33', '', NULL, '测试3');

-- ----------------------------
-- Table structure for drm_big_screen
-- ----------------------------
DROP TABLE IF EXISTS `drm_big_screen`;
CREATE TABLE `drm_big_screen`  (
  `screen_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `screen_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `screen_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `layout_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`screen_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_big_screen
-- ----------------------------
INSERT INTO `drm_big_screen` VALUES (1, 'admin', '2026-04-25 15:45:45', 'admin', '2026-05-22 15:45:45', '模拟测试数据', '2026年第一季度绩效分析报告', '分类/项目-1', '分类/项目-8', '分类/项目-5', '0');
INSERT INTO `drm_big_screen` VALUES (2, 'admin', '2026-05-12 15:45:45', 'admin', '2026-05-14 15:45:45', '模拟测试数据', '全院医疗质量管控报告', '分类/项目-5', '分类/项目-5', '分类/项目-6', '0');
INSERT INTO `drm_big_screen` VALUES (3, 'admin', '2026-05-02 15:45:45', 'admin', '2026-05-18 15:45:45', '模拟测试数据', '全院医疗质量管控报告', '分类/项目-3', '分类/项目-6', '分类/项目-9', '0');
INSERT INTO `drm_big_screen` VALUES (4, 'admin', '2026-05-13 15:45:45', 'admin', '2026-04-29 15:45:45', '模拟测试数据', '重点科室成本核算报告', '分类/项目-5', '分类/项目-10', '分类/项目-10', '0');
INSERT INTO `drm_big_screen` VALUES (5, 'admin', '2026-04-28 15:45:45', 'admin', '2026-05-15 15:45:45', '模拟测试数据', '重点科室成本核算报告', '分类/项目-4', '分类/项目-4', '分类/项目-6', '0');

-- ----------------------------
-- Table structure for drm_budget_edit
-- ----------------------------
DROP TABLE IF EXISTS `drm_budget_edit`;
CREATE TABLE `drm_budget_edit`  (
  `budget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `budget_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `budget_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `budget_amount` decimal(10, 2) NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`budget_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_budget_edit
-- ----------------------------
INSERT INTO `drm_budget_edit` VALUES (1, '分类/项目-4', '分类/项目-5', '心内科', 49565.98, '0', 'admin', '2026-05-09 15:45:45', 'admin', '2026-05-13 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_edit` VALUES (2, '分类/项目-3', '分类/项目-4', '心内科', 7765.09, '0', 'admin', '2026-05-01 15:45:45', 'admin', '2026-05-19 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_edit` VALUES (3, '分类/项目-9', '分类/项目-9', '呼吸内科', 11977.73, '0', 'admin', '2026-05-04 15:45:45', 'admin', '2026-04-30 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_edit` VALUES (4, '分类/项目-6', '分类/项目-9', '神经外科', 34874.29, '0', 'admin', '2026-04-29 15:45:45', 'admin', '2026-05-19 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_edit` VALUES (5, '分类/项目-3', '分类/项目-2', '骨科', 35728.08, '0', 'admin', '2026-05-10 15:45:45', 'admin', '2026-04-30 15:45:45', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_budget_execute
-- ----------------------------
DROP TABLE IF EXISTS `drm_budget_execute`;
CREATE TABLE `drm_budget_execute`  (
  `execute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `budget_id` bigint(20) NULL DEFAULT NULL,
  `execute_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `execute_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `budget_amount` decimal(10, 2) NULL DEFAULT NULL,
  `actual_amount` decimal(10, 2) NULL DEFAULT NULL,
  `execute_rate` decimal(10, 2) NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`execute_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_budget_execute
-- ----------------------------
INSERT INTO `drm_budget_execute` VALUES (1, 67, '分类/项目-2', '分类/项目-5', '骨科', 6380.52, 19604.18, 87.71, '0', 'admin', '2026-04-28 15:45:45', 'admin', '2026-04-27 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_execute` VALUES (2, 234, '分类/项目-1', '分类/项目-8', '儿科', 14624.30, 37592.42, 88.68, '0', 'admin', '2026-05-05 15:45:45', 'admin', '2026-05-03 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_execute` VALUES (3, 256, '分类/项目-10', '分类/项目-7', '心内科', 46175.93, 19583.08, 85.57, '0', 'admin', '2026-05-04 15:45:45', 'admin', '2026-05-22 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_execute` VALUES (4, 451, '分类/项目-4', '分类/项目-9', '儿科', 2541.08, 48442.70, 93.65, '0', 'admin', '2026-04-26 15:45:45', 'admin', '2026-05-06 15:45:45', '模拟测试数据');
INSERT INTO `drm_budget_execute` VALUES (5, 54, '分类/项目-3', '分类/项目-8', '呼吸内科', 29551.09, 9721.24, 93.79, '0', 'admin', '2026-05-21 15:45:45', 'admin', '2026-05-06 15:45:45', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_case_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_case_cost`;
CREATE TABLE `drm_case_cost`  (
  `case_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `case_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_cost` decimal(10, 2) NULL DEFAULT NULL,
  `drug_cost` decimal(10, 2) NULL DEFAULT NULL,
  `material_cost` decimal(10, 2) NULL DEFAULT NULL,
  `service_cost` decimal(10, 2) NULL DEFAULT NULL,
  `avg_stay_days` int(11) NULL DEFAULT NULL,
  `cost_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`case_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_case_cost
-- ----------------------------
INSERT INTO `drm_case_cost` VALUES (1, '重点科室成本核算报告', '急诊科', '分类/项目-9', 36994.80, 36378.22, 5273.12, 20617.53, 321, '2026-02', 'admin', '2026-04-29 15:45:45', 'admin', '2026-05-21 15:45:45', '模拟测试数据');
INSERT INTO `drm_case_cost` VALUES (2, '2026年第一季度绩效分析报告', '妇产科', '分类/项目-6', 24860.52, 45662.33, 22360.68, 37246.56, 385, '2026-04', 'admin', '2026-04-29 15:45:45', 'admin', '2026-04-25 15:45:45', '模拟测试数据');
INSERT INTO `drm_case_cost` VALUES (3, '内科月度DRG结算分析', '妇产科', '分类/项目-4', 39287.55, 27498.94, 14364.45, 37692.48, 401, '2026-02', 'admin', '2026-05-07 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据');
INSERT INTO `drm_case_cost` VALUES (4, '2026年第一季度绩效分析报告', '骨科', '分类/项目-7', 1980.32, 47040.97, 42752.38, 16516.20, 351, '2026-03', 'admin', '2026-05-14 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据');
INSERT INTO `drm_case_cost` VALUES (5, '内科月度DRG结算分析', '呼吸内科', '分类/项目-1', 17035.96, 34635.54, 7542.61, 44209.69, 214, '2026-02', 'admin', '2026-05-23 15:45:45', 'admin', '2026-05-09 15:45:45', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_cost_allocation
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_allocation`;
CREATE TABLE `drm_cost_allocation`  (
  `allocation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `period` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `direct_cost` decimal(10, 2) NULL DEFAULT NULL,
  `indirect_cost` decimal(10, 2) NULL DEFAULT NULL,
  `total_cost` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`allocation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_cost_allocation
-- ----------------------------
INSERT INTO `drm_cost_allocation` VALUES (1, 'admin', '2026-05-20 15:45:45', 'admin', '2026-04-24 15:45:45', '模拟测试数据', '分类/项目-5', 451, '儿科', 13857.53, 43047.97, 5027.92);
INSERT INTO `drm_cost_allocation` VALUES (2, 'admin', '2026-05-01 15:45:45', 'admin', '2026-05-21 15:45:45', '模拟测试数据', '分类/项目-10', 103, '儿科', 47487.97, 25913.30, 30136.82);
INSERT INTO `drm_cost_allocation` VALUES (3, 'admin', '2026-05-23 15:45:45', 'admin', '2026-05-14 15:45:45', '模拟测试数据', '分类/项目-2', 464, '呼吸内科', 22485.24, 48520.35, 21788.96);
INSERT INTO `drm_cost_allocation` VALUES (4, 'admin', '2026-05-11 15:45:45', 'admin', '2026-05-13 15:45:45', '模拟测试数据', '分类/项目-6', 417, '心内科', 16470.89, 16820.09, 17035.00);
INSERT INTO `drm_cost_allocation` VALUES (5, 'admin', '2026-04-29 15:45:45', 'admin', '2026-05-20 15:45:45', '模拟测试数据', '分类/项目-7', 358, '儿科', 25631.62, 19166.34, 44821.80);

-- ----------------------------
-- Table structure for drm_cost_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_data`;
CREATE TABLE `drm_cost_data`  (
  `cost_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cost_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cost_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`cost_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_cost_data
-- ----------------------------
INSERT INTO `drm_cost_data` VALUES (1, 'admin', '2026-05-02 15:45:45', 'admin', '2026-05-12 15:45:45', '模拟测试数据', '2026-02', '妇产科', '分类/项目-4', 27613.67);
INSERT INTO `drm_cost_data` VALUES (2, 'admin', '2026-05-05 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据', '2026-03', '儿科', '分类/项目-3', 4063.34);
INSERT INTO `drm_cost_data` VALUES (3, 'admin', '2026-05-07 15:45:45', 'admin', '2026-05-10 15:45:45', '模拟测试数据', '2026-01', '骨科', '分类/项目-6', 1209.14);
INSERT INTO `drm_cost_data` VALUES (4, 'admin', '2026-05-05 15:45:45', 'admin', '2026-05-20 15:45:45', '模拟测试数据', '2026-03', '神经外科', '分类/项目-3', 8961.24);
INSERT INTO `drm_cost_data` VALUES (5, 'admin', '2026-05-20 15:45:45', 'admin', '2026-04-29 15:45:45', '模拟测试数据', '2026-01', '妇产科', '分类/项目-10', 16899.63);

-- ----------------------------
-- Table structure for drm_cost_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_report`;
CREATE TABLE `drm_cost_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_period` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `target_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_cost_report
-- ----------------------------
INSERT INTO `drm_cost_report` VALUES (1, '内科月度DRG结算分析', '分类/项目-1', 'monthly', '骨科', '分类/项目-5', '0', 'admin', '2026-04-24 15:45:45', 'admin', '2026-05-06 15:45:45', '模拟测试数据');
INSERT INTO `drm_cost_report` VALUES (2, '重点科室成本核算报告', '分类/项目-3', 'quarterly', '急诊科', '分类/项目-8', '0', 'admin', '2026-05-12 15:45:45', 'admin', '2026-05-02 15:45:45', '模拟测试数据');
INSERT INTO `drm_cost_report` VALUES (3, '2026年第一季度绩效分析报告', '分类/项目-5', 'monthly', '心内科', '分类/项目-6', '0', 'admin', '2026-05-08 15:45:45', 'admin', '2026-05-03 15:45:45', '模拟测试数据');
INSERT INTO `drm_cost_report` VALUES (4, '重点科室成本核算报告', '分类/项目-9', 'quarterly', '妇产科', '分类/项目-4', '0', 'admin', '2026-05-08 15:45:45', 'admin', '2026-05-04 15:45:45', '模拟测试数据');
INSERT INTO `drm_cost_report` VALUES (5, '重点科室成本核算报告', '分类/项目-9', 'monthly', '心内科', '分类/项目-3', '0', 'admin', '2026-05-03 15:45:45', 'admin', '2026-05-23 15:45:45', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_data_mapping
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_mapping`;
CREATE TABLE `drm_data_mapping`  (
  `mapping_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `target_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mapping_rules` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mapping_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_data_mapping
-- ----------------------------
INSERT INTO `drm_data_mapping` VALUES (1, 'admin', '2026-04-29 15:45:45', 'admin', '2026-05-17 15:45:45', '模拟测试数据', '分类/项目-6', '分类/项目-8', '分类/项目-2', '0');
INSERT INTO `drm_data_mapping` VALUES (2, 'admin', '2026-05-23 15:45:45', 'admin', '2026-05-20 15:45:45', '模拟测试数据', '分类/项目-6', '分类/项目-4', '分类/项目-8', '0');
INSERT INTO `drm_data_mapping` VALUES (3, 'admin', '2026-05-14 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据', '分类/项目-8', '分类/项目-9', '分类/项目-3', '0');
INSERT INTO `drm_data_mapping` VALUES (4, 'admin', '2026-05-21 15:45:45', 'admin', '2026-04-30 15:45:45', '模拟测试数据', '分类/项目-1', '分类/项目-6', '分类/项目-5', '0');
INSERT INTO `drm_data_mapping` VALUES (5, 'admin', '2026-04-28 15:45:45', 'admin', '2026-05-09 15:45:45', '模拟测试数据', '分类/项目-1', '分类/项目-4', '分类/项目-7', '0');

-- ----------------------------
-- Table structure for drm_data_quality
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_quality`;
CREATE TABLE `drm_data_quality`  (
  `quality_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `check_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_cnt` bigint(20) NULL DEFAULT NULL,
  `error_cnt` bigint(20) NULL DEFAULT NULL,
  `accuracy_rate` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`quality_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_data_quality
-- ----------------------------
INSERT INTO `drm_data_quality` VALUES (1, 'admin', '2026-05-07 15:45:45', 'admin', '2026-04-27 15:45:45', '模拟测试数据', '2026-04', '全院医疗质量管控报告', '全院医疗质量管控报告', 214, 160, 88.93);
INSERT INTO `drm_data_quality` VALUES (2, 'admin', '2026-05-07 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据', '2026-04', '内科月度DRG结算分析', '内科月度DRG结算分析', 120, 243, 85.91);
INSERT INTO `drm_data_quality` VALUES (3, 'admin', '2026-05-17 15:45:45', 'admin', '2026-05-13 15:45:45', '模拟测试数据', '2026-04', '全院医疗质量管控报告', '内科月度DRG结算分析', 72, 473, 92.71);
INSERT INTO `drm_data_quality` VALUES (4, 'admin', '2026-05-17 15:45:45', 'admin', '2026-05-05 15:45:45', '模拟测试数据', '2026-04', '重点科室成本核算报告', '重点科室成本核算报告', 257, 369, 98.75);
INSERT INTO `drm_data_quality` VALUES (5, 'admin', '2026-04-26 15:45:45', 'admin', '2026-05-18 15:45:45', '模拟测试数据', '2026-02', '全院医疗质量管控报告', '重点科室成本核算报告', 28, 448, 92.35);

-- ----------------------------
-- Table structure for drm_data_source
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_source`;
CREATE TABLE `drm_data_source`  (
  `source_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `connection_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`source_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_data_source
-- ----------------------------
INSERT INTO `drm_data_source` VALUES (1, 'admin', '2026-05-12 15:45:45', 'admin', '2026-04-25 15:45:45', '模拟测试数据', '全院医疗质量管控报告', '分类/项目-10', '分类/项目-1', '全院医疗质量管控报告', '分类/项目-10', '0');
INSERT INTO `drm_data_source` VALUES (2, 'admin', '2026-05-14 15:45:45', 'admin', '2026-04-30 15:45:45', '模拟测试数据', '全院医疗质量管控报告', '分类/项目-1', '分类/项目-4', '重点科室成本核算报告', '分类/项目-3', '0');
INSERT INTO `drm_data_source` VALUES (3, 'admin', '2026-05-03 15:45:45', 'admin', '2026-05-01 15:45:45', '模拟测试数据', '全院医疗质量管控报告', '分类/项目-7', '分类/项目-9', '重点科室成本核算报告', '分类/项目-2', '0');
INSERT INTO `drm_data_source` VALUES (4, 'admin', '2026-04-24 15:45:45', 'admin', '2026-05-20 15:45:45', '模拟测试数据', '全院医疗质量管控报告', '分类/项目-6', '分类/项目-10', '全院医疗质量管控报告', '分类/项目-7', '0');
INSERT INTO `drm_data_source` VALUES (5, 'admin', '2026-05-06 15:45:45', 'admin', '2026-05-08 15:45:45', '模拟测试数据', '全院医疗质量管控报告', '分类/项目-10', '分类/项目-3', '2026年第一季度绩效分析报告', '分类/项目-1', '0');

-- ----------------------------
-- Table structure for drm_dept_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_dept_cost`;
CREATE TABLE `drm_dept_cost`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cost_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `personnel_cost` decimal(10, 2) NULL DEFAULT NULL,
  `equipment_cost` decimal(10, 2) NULL DEFAULT NULL,
  `material_cost` decimal(10, 2) NULL DEFAULT NULL,
  `drug_cost` decimal(10, 2) NULL DEFAULT NULL,
  `other_cost` decimal(10, 2) NULL DEFAULT NULL,
  `total_cost` decimal(10, 2) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_dept_cost
-- ----------------------------
INSERT INTO `drm_dept_cost` VALUES (1, '急诊科', '2026-02', 17914.89, 28011.20, 24978.95, 5866.65, 8688.51, 11730.02, 'admin', '2026-05-17 15:45:45', 'admin', '2026-05-20 15:45:45', '模拟测试数据');
INSERT INTO `drm_dept_cost` VALUES (2, '妇产科', '2026-01', 27135.31, 43948.26, 37615.51, 34431.98, 49523.01, 6114.49, 'admin', '2026-05-03 15:45:45', 'admin', '2026-05-17 15:45:45', '模拟测试数据');
INSERT INTO `drm_dept_cost` VALUES (3, '骨科', '2026-04', 32403.77, 12359.70, 17483.05, 33854.71, 19185.09, 24508.22, 'admin', '2026-04-27 15:45:45', 'admin', '2026-04-29 15:45:45', '模拟测试数据');
INSERT INTO `drm_dept_cost` VALUES (4, '神经外科', '2026-01', 36584.07, 7185.54, 32742.11, 8839.99, 11374.13, 33067.09, 'admin', '2026-05-10 15:45:45', 'admin', '2026-05-14 15:45:45', '模拟测试数据');
INSERT INTO `drm_dept_cost` VALUES (5, '心内科', '2026-05', 49476.36, 39824.26, 15293.04, 4590.96, 45540.42, 49368.50, 'admin', '2026-05-20 15:45:45', 'admin', '2026-05-19 15:45:45', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_drg_analysis
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_analysis`;
CREATE TABLE `drm_drg_analysis`  (
  `analysis_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `analysis_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drg_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `indicator_value` decimal(10, 2) NULL DEFAULT NULL,
  `indicator_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`analysis_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_drg_analysis
-- ----------------------------
INSERT INTO `drm_drg_analysis` VALUES (1, 'admin', '2026-05-14 15:45:45', 'admin', '2026-04-27 15:45:45', '模拟测试数据', '分类/项目-7', '妇产科', 'GB29', 22847.47, '全院医疗质量管控报告');
INSERT INTO `drm_drg_analysis` VALUES (2, 'admin', '2026-04-24 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据', '分类/项目-4', '儿科', 'PU19', 4383.55, '重点科室成本核算报告');
INSERT INTO `drm_drg_analysis` VALUES (3, 'admin', '2026-05-11 15:45:45', 'admin', '2026-05-12 15:45:45', '模拟测试数据', '分类/项目-10', '骨科', 'RE19', 35442.23, '重点科室成本核算报告');
INSERT INTO `drm_drg_analysis` VALUES (4, 'admin', '2026-04-25 15:45:45', 'admin', '2026-05-18 15:45:45', '模拟测试数据', '分类/项目-2', '神经外科', 'FM19', 19361.86, '内科月度DRG结算分析');
INSERT INTO `drm_drg_analysis` VALUES (5, 'admin', '2026-04-24 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据', '分类/项目-8', '急诊科', 'PU19', 32088.04, '全院医疗质量管控报告');

-- ----------------------------
-- Table structure for drm_drg_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_data`;
CREATE TABLE `drm_drg_data`  (
  `drg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stat_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drg_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drg_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `case_cnt` int(11) NULL DEFAULT NULL,
  `avg_cost` decimal(10, 2) NULL DEFAULT NULL,
  `avg_days` decimal(10, 2) NULL DEFAULT NULL,
  `cmi` decimal(10, 2) NULL DEFAULT NULL,
  `surplus_amount` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`drg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_drg_data
-- ----------------------------
INSERT INTO `drm_drg_data` VALUES (1, 'admin', '2026-05-10 15:45:45', 'admin', '2026-05-06 15:45:45', '模拟测试数据', '2026-03', 'FM19', '自然分娩', 423, 23397.70, 41994.88, 43937.60, 15196.81);
INSERT INTO `drm_drg_data` VALUES (2, 'admin', '2026-04-24 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据', '2026-02', 'MD19', '急性阑尾炎伴并发症', 55, 22629.68, 5554.93, 24179.67, 11976.33);
INSERT INTO `drm_drg_data` VALUES (3, 'admin', '2026-05-07 15:45:45', 'admin', '2026-05-15 15:45:45', '模拟测试数据', '2026-05', 'MD19', '不伴合并症的心力衰竭', 62, 1978.30, 23263.38, 49470.87, 22273.12);
INSERT INTO `drm_drg_data` VALUES (4, 'admin', '2026-05-03 15:45:45', 'admin', '2026-05-10 15:45:45', '模拟测试数据', '2026-01', 'PU19', '不伴合并症的心力衰竭', 244, 37908.11, 34614.77, 15653.62, 5439.19);
INSERT INTO `drm_drg_data` VALUES (5, 'admin', '2026-05-16 15:45:45', 'admin', '2026-05-05 15:45:45', '模拟测试数据', '2026-05', 'PU19', '急性阑尾炎伴并发症', 399, 44126.56, 30796.02, 4041.95, 32745.16);

-- ----------------------------
-- Table structure for drm_drg_doctor
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_doctor`;
CREATE TABLE `drm_drg_doctor`  (
  `doctor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drg_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `case_cnt` int(11) NULL DEFAULT NULL,
  `avg_cost` decimal(10, 2) NULL DEFAULT NULL,
  `cmi` decimal(10, 2) NULL DEFAULT NULL,
  `perf_score` decimal(10, 2) NULL DEFAULT NULL,
  `stat_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`doctor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_drg_doctor
-- ----------------------------
INSERT INTO `drm_drg_doctor` VALUES (1, '扁鹊', '急诊科', 'MD19', 208, 36421.14, 9529.45, 85.65, '2026-02', '0', 'admin', '2026-05-20 15:45:45', 'admin', '2026-04-25 15:45:45', '模拟测试数据');
INSERT INTO `drm_drg_doctor` VALUES (2, '扁鹊', '妇产科', 'FM19', 410, 12028.36, 21712.40, 99.06, '2026-01', '0', 'admin', '2026-05-01 15:45:45', 'admin', '2026-05-14 15:45:45', '模拟测试数据');
INSERT INTO `drm_drg_doctor` VALUES (3, '张仲景', '儿科', 'FM19', 159, 13990.95, 41501.32, 89.11, '2026-02', '0', 'admin', '2026-04-29 15:45:45', 'admin', '2026-05-08 15:45:45', '模拟测试数据');
INSERT INTO `drm_drg_doctor` VALUES (4, '华佗', '儿科', 'RE19', 469, 45739.03, 24216.60, 94.10, '2026-05', '0', 'admin', '2026-05-12 15:45:45', 'admin', '2026-04-29 15:45:45', '模拟测试数据');
INSERT INTO `drm_drg_doctor` VALUES (5, '皇甫谧', '急诊科', 'PU19', 74, 39591.84, 48229.27, 91.83, '2026-01', '0', 'admin', '2026-05-22 15:45:45', 'admin', '2026-04-26 15:45:45', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_drg_perf
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_perf`;
CREATE TABLE `drm_drg_perf`  (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drg_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drg_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `case_cnt` int(11) NULL DEFAULT NULL,
  `perf_score` decimal(10, 2) NULL DEFAULT NULL,
  `perf_amount` decimal(10, 2) NULL DEFAULT NULL,
  `calc_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`perf_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_drg_perf
-- ----------------------------
INSERT INTO `drm_drg_perf` VALUES (1, '心内科', 'MD19', '慢性阻塞性肺疾病', 93, 85.08, 21886.18, '2026-05', '0', 'admin', '2026-04-30 15:45:45', 'admin', '2026-05-13 15:45:45', '模拟测试数据');
INSERT INTO `drm_drg_perf` VALUES (2, '儿科', 'FM19', '急性阑尾炎伴并发症', 43, 97.14, 28036.81, '2026-02', '0', 'admin', '2026-05-21 15:45:45', 'admin', '2026-05-01 15:45:45', '模拟测试数据');
INSERT INTO `drm_drg_perf` VALUES (3, '急诊科', 'GB29', '自然分娩', 476, 99.75, 41422.55, '2026-01', '0', 'admin', '2026-05-08 15:45:46', 'admin', '2026-05-17 15:45:46', '模拟测试数据');
INSERT INTO `drm_drg_perf` VALUES (4, '心内科', 'FM19', '急性阑尾炎伴并发症', 80, 96.54, 40786.54, '2026-03', '0', 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-18 15:45:46', '模拟测试数据');
INSERT INTO `drm_drg_perf` VALUES (5, '急诊科', 'RE19', '急性阑尾炎伴并发症', 181, 99.87, 3272.92, '2026-03', '0', 'admin', '2026-05-19 15:45:46', 'admin', '2026-05-20 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_drg_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_report`;
CREATE TABLE `drm_drg_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_period` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `target_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drg_analysis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_drg_report
-- ----------------------------
INSERT INTO `drm_drg_report` VALUES (1, '内科月度DRG结算分析', '分类/项目-6', '妇产科', '分类/项目-6', '分类/项目-9', '0', 'admin', '2026-05-22 15:45:46', 'admin', '2026-05-20 15:45:46', '模拟测试数据');
INSERT INTO `drm_drg_report` VALUES (2, '全院医疗质量管控报告', '分类/项目-4', '骨科', '分类/项目-2', '分类/项目-1', '0', 'admin', '2026-05-12 15:45:46', 'admin', '2026-05-04 15:45:46', '模拟测试数据');
INSERT INTO `drm_drg_report` VALUES (3, '2026年第一季度绩效分析报告', '分类/项目-8', '心内科', '分类/项目-4', '分类/项目-8', '0', 'admin', '2026-05-15 15:45:46', 'admin', '2026-05-06 15:45:46', '模拟测试数据');
INSERT INTO `drm_drg_report` VALUES (4, '全院医疗质量管控报告', '分类/项目-9', '神经外科', '分类/项目-4', '分类/项目-3', '0', 'admin', '2026-04-26 15:45:46', 'admin', '2026-05-20 15:45:46', '模拟测试数据');
INSERT INTO `drm_drg_report` VALUES (5, '重点科室成本核算报告', '分类/项目-4', '儿科', '分类/项目-8', '分类/项目-1', '0', 'admin', '2026-05-21 15:45:46', 'admin', '2026-05-03 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_early_warning
-- ----------------------------
DROP TABLE IF EXISTS `drm_early_warning`;
CREATE TABLE `drm_early_warning`  (
  `warning_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warn_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warn_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warn_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warn_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `handle_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `handle_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ai_suggestion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`warning_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_early_warning
-- ----------------------------
INSERT INTO `drm_early_warning` VALUES (1, 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-10 15:45:46', '模拟测试数据', '2026-01', '分类/项目-1', '分类/项目-7', '分类/项目-8', '儿科', '分类/项目-3', '分类/项目-5', '分类/项目-6');
INSERT INTO `drm_early_warning` VALUES (2, 'admin', '2026-04-28 15:45:46', 'admin', '2026-05-20 15:45:46', '模拟测试数据', '2026-05', '分类/项目-9', '分类/项目-9', '分类/项目-9', '妇产科', '分类/项目-10', '分类/项目-2', '分类/项目-8');
INSERT INTO `drm_early_warning` VALUES (3, 'admin', '2026-04-26 15:45:46', 'admin', '2026-05-18 15:45:46', '模拟测试数据', '2026-03', '分类/项目-7', '分类/项目-10', '分类/项目-4', '妇产科', '分类/项目-2', '分类/项目-2', '分类/项目-8');
INSERT INTO `drm_early_warning` VALUES (4, 'admin', '2026-05-07 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据', '2026-05', '分类/项目-9', '分类/项目-9', '分类/项目-2', '妇产科', '分类/项目-4', '分类/项目-2', '分类/项目-2');
INSERT INTO `drm_early_warning` VALUES (5, 'admin', '2026-05-15 15:45:46', 'admin', '2026-04-26 15:45:46', '模拟测试数据', '2026-01', '分类/项目-6', '分类/项目-3', '分类/项目-6', '神经外科', '分类/项目-2', '分类/项目-5', '分类/项目-10');

-- ----------------------------
-- Table structure for drm_efficiency_perf
-- ----------------------------
DROP TABLE IF EXISTS `drm_efficiency_perf`;
CREATE TABLE `drm_efficiency_perf`  (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `efficiency_score` decimal(10, 2) NULL DEFAULT NULL,
  `work_load` decimal(10, 2) NULL DEFAULT NULL,
  `bed_utilization` decimal(10, 2) NULL DEFAULT NULL,
  `equip_utilization` decimal(10, 2) NULL DEFAULT NULL,
  `calc_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`perf_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_efficiency_perf
-- ----------------------------
INSERT INTO `drm_efficiency_perf` VALUES (1, '呼吸内科', 95.03, 12230.61, 46570.11, 16112.10, '2026-04', '0', 'admin', '2026-05-23 15:45:46', 'admin', '2026-04-29 15:45:46', '模拟测试数据');
INSERT INTO `drm_efficiency_perf` VALUES (2, '神经外科', 95.96, 30484.80, 41139.88, 15513.40, '2026-03', '0', 'admin', '2026-05-13 15:45:46', 'admin', '2026-05-10 15:45:46', '模拟测试数据');
INSERT INTO `drm_efficiency_perf` VALUES (3, '心内科', 95.38, 14040.80, 11021.05, 21064.40, '2026-01', '0', 'admin', '2026-05-10 15:45:46', 'admin', '2026-05-06 15:45:46', '模拟测试数据');
INSERT INTO `drm_efficiency_perf` VALUES (4, '心内科', 85.91, 9807.25, 25165.08, 40497.99, '2026-02', '0', 'admin', '2026-04-30 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据');
INSERT INTO `drm_efficiency_perf` VALUES (5, '儿科', 94.93, 47785.50, 11964.28, 30364.35, '2026-05', '0', 'admin', '2026-05-14 15:45:46', 'admin', '2026-05-06 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_expense
-- ----------------------------
DROP TABLE IF EXISTS `drm_expense`;
CREATE TABLE `drm_expense`  (
  `expense_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expense_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expense_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`expense_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_expense
-- ----------------------------
INSERT INTO `drm_expense` VALUES (1, 'admin', '2026-05-11 15:45:46', 'admin', '2026-05-16 15:45:46', '模拟测试数据', '2026-03', '神经外科', '分类/项目-5', 30635.64);
INSERT INTO `drm_expense` VALUES (2, 'admin', '2026-04-24 15:45:46', 'admin', '2026-05-13 15:45:46', '模拟测试数据', '2026-04', '呼吸内科', '分类/项目-6', 36509.63);
INSERT INTO `drm_expense` VALUES (3, 'admin', '2026-05-10 15:45:46', 'admin', '2026-05-22 15:45:46', '模拟测试数据', '2026-03', '心内科', '分类/项目-9', 44058.90);
INSERT INTO `drm_expense` VALUES (4, 'admin', '2026-04-28 15:45:46', 'admin', '2026-05-04 15:45:46', '模拟测试数据', '2026-01', '骨科', '分类/项目-7', 28415.92);
INSERT INTO `drm_expense` VALUES (5, 'admin', '2026-05-18 15:45:46', 'admin', '2026-05-13 15:45:46', '模拟测试数据', '2026-02', '呼吸内科', '分类/项目-1', 2434.21);

-- ----------------------------
-- Table structure for drm_finance_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_finance_report`;
CREATE TABLE `drm_finance_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_period` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `target_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_income` decimal(10, 2) NULL DEFAULT NULL,
  `total_expense` decimal(10, 2) NULL DEFAULT NULL,
  `balance` decimal(10, 2) NULL DEFAULT NULL,
  `income_growth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expense_growth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_finance_report
-- ----------------------------
INSERT INTO `drm_finance_report` VALUES (1, '2026年第一季度绩效分析报告', 'monthly', '分类/项目-4', '儿科', 24762.52, 3552.86, 25687.87, '分类/项目-3', '分类/项目-4', '分类/项目-9', '0', 'admin', '2026-05-21 15:45:46', 'admin', '2026-04-28 15:45:46', '模拟测试数据');
INSERT INTO `drm_finance_report` VALUES (2, '重点科室成本核算报告', 'quarterly', '分类/项目-4', '神经外科', 19289.59, 39663.06, 18642.41, '分类/项目-3', '分类/项目-7', '分类/项目-3', '0', 'admin', '2026-05-07 15:45:46', 'admin', '2026-04-24 15:45:46', '模拟测试数据');
INSERT INTO `drm_finance_report` VALUES (3, '全院医疗质量管控报告', 'monthly', '分类/项目-9', '儿科', 17581.21, 36247.47, 15499.33, '分类/项目-4', '分类/项目-10', '分类/项目-6', '0', 'admin', '2026-05-20 15:45:46', 'admin', '2026-05-06 15:45:46', '模拟测试数据');
INSERT INTO `drm_finance_report` VALUES (4, '重点科室成本核算报告', 'quarterly', '分类/项目-3', '心内科', 13770.06, 11456.89, 47939.93, '分类/项目-1', '分类/项目-4', '分类/项目-3', '0', 'admin', '2026-05-14 15:45:46', 'admin', '2026-05-08 15:45:46', '模拟测试数据');
INSERT INTO `drm_finance_report` VALUES (5, '内科月度DRG结算分析', 'monthly', '分类/项目-3', '心内科', 1144.53, 17950.83, 40848.55, '分类/项目-3', '分类/项目-2', '分类/项目-10', '0', 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-21 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_income
-- ----------------------------
DROP TABLE IF EXISTS `drm_income`;
CREATE TABLE `drm_income`  (
  `income_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `income_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `income_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`income_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_income
-- ----------------------------
INSERT INTO `drm_income` VALUES (1, 'admin', '2026-05-05 15:45:46', 'admin', '2026-05-16 15:45:46', '模拟测试数据', '2026-01', '骨科', '分类/项目-3', 16856.85);
INSERT INTO `drm_income` VALUES (2, 'admin', '2026-05-01 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据', '2026-04', '呼吸内科', '分类/项目-6', 46358.95);
INSERT INTO `drm_income` VALUES (3, 'admin', '2026-05-12 15:45:46', 'admin', '2026-04-26 15:45:46', '模拟测试数据', '2026-01', '儿科', '分类/项目-7', 25625.95);
INSERT INTO `drm_income` VALUES (4, 'admin', '2026-04-24 15:45:46', 'admin', '2026-05-20 15:45:46', '模拟测试数据', '2026-05', '急诊科', '分类/项目-3', 39933.50);
INSERT INTO `drm_income` VALUES (5, 'admin', '2026-05-21 15:45:46', 'admin', '2026-05-19 15:45:46', '模拟测试数据', '2026-01', '妇产科', '分类/项目-10', 43848.25);

-- ----------------------------
-- Table structure for drm_inpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_inpatient_stats`;
CREATE TABLE `drm_inpatient_stats`  (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stat_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `in_cnt` int(11) NULL DEFAULT NULL,
  `out_cnt` int(11) NULL DEFAULT NULL,
  `bed_occupy_cnt` int(11) NULL DEFAULT NULL,
  `bed_occupy_rate` decimal(10, 2) NULL DEFAULT NULL,
  `avg_stay_days` decimal(10, 2) NULL DEFAULT NULL,
  `revenue` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`stats_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_inpatient_stats
-- ----------------------------
INSERT INTO `drm_inpatient_stats` VALUES (1, 'admin', '2026-05-12 15:45:46', 'admin', '2026-05-14 15:45:46', '模拟测试数据', '2026-01', '呼吸内科', 254, 90, 51, 98.41, 34678.43, 35009.24);
INSERT INTO `drm_inpatient_stats` VALUES (2, 'admin', '2026-05-11 15:45:46', 'admin', '2026-05-22 15:45:46', '模拟测试数据', '2026-01', '儿科', 436, 302, 118, 93.57, 21792.19, 24991.99);
INSERT INTO `drm_inpatient_stats` VALUES (3, 'admin', '2026-05-15 15:45:46', 'admin', '2026-05-20 15:45:46', '模拟测试数据', '2026-05', '心内科', 132, 405, 380, 91.44, 32900.50, 25999.59);
INSERT INTO `drm_inpatient_stats` VALUES (4, 'admin', '2026-05-13 15:45:46', 'admin', '2026-05-15 15:45:46', '模拟测试数据', '2026-05', '儿科', 324, 469, 432, 94.73, 42693.87, 43464.96);
INSERT INTO `drm_inpatient_stats` VALUES (5, 'admin', '2026-05-11 15:45:46', 'admin', '2026-05-05 15:45:46', '模拟测试数据', '2026-03', '儿科', 365, 401, 296, 94.10, 5126.01, 6609.71);

-- ----------------------------
-- Table structure for drm_knowledge_category
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_category`;
CREATE TABLE `drm_knowledge_category`  (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `order_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_knowledge_category
-- ----------------------------
INSERT INTO `drm_knowledge_category` VALUES (1, 'admin', '2026-05-03 15:45:46', 'admin', '2026-05-17 15:45:46', '模拟测试数据', '重点科室成本核算报告', 0, 239);
INSERT INTO `drm_knowledge_category` VALUES (2, 'admin', '2026-05-17 15:45:46', 'admin', '2026-05-13 15:45:46', '模拟测试数据', '重点科室成本核算报告', 0, 159);
INSERT INTO `drm_knowledge_category` VALUES (3, 'admin', '2026-05-07 15:45:46', 'admin', '2026-05-17 15:45:46', '模拟测试数据', '内科月度DRG结算分析', 0, 258);
INSERT INTO `drm_knowledge_category` VALUES (4, 'admin', '2026-04-24 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据', '内科月度DRG结算分析', 0, 428);
INSERT INTO `drm_knowledge_category` VALUES (5, 'admin', '2026-04-27 15:45:46', 'admin', '2026-05-16 15:45:46', '模拟测试数据', '内科月度DRG结算分析', 0, 487);

-- ----------------------------
-- Table structure for drm_knowledge_content
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_content`;
CREATE TABLE `drm_knowledge_content`  (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `view_count` int(11) NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`content_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_knowledge_content
-- ----------------------------
INSERT INTO `drm_knowledge_content` VALUES (1, 'admin', '2026-05-04 15:45:46', 'admin', '2026-04-25 15:45:46', '模拟测试数据', 141, '内科月度DRG结算分析', '分类/项目-2', '张仲景', 142, '0');
INSERT INTO `drm_knowledge_content` VALUES (2, 'admin', '2026-05-20 15:45:46', 'admin', '2026-05-16 15:45:46', '模拟测试数据', 43, '内科月度DRG结算分析', '分类/项目-8', '张仲景', 248, '0');
INSERT INTO `drm_knowledge_content` VALUES (3, 'admin', '2026-05-21 15:45:46', 'admin', '2026-04-30 15:45:46', '模拟测试数据', 15, '2026年第一季度绩效分析报告', '分类/项目-2', '李时珍', 251, '0');
INSERT INTO `drm_knowledge_content` VALUES (4, 'admin', '2026-05-20 15:45:46', 'admin', '2026-05-08 15:45:46', '模拟测试数据', 478, '内科月度DRG结算分析', '分类/项目-6', '华佗', 123, '0');
INSERT INTO `drm_knowledge_content` VALUES (5, 'admin', '2026-05-04 15:45:46', 'admin', '2026-05-11 15:45:46', '模拟测试数据', 235, '内科月度DRG结算分析', '分类/项目-7', '扁鹊', 402, '0');

-- ----------------------------
-- Table structure for drm_medical_record
-- ----------------------------
DROP TABLE IF EXISTS `drm_medical_record`;
CREATE TABLE `drm_medical_record`  (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `record_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室',
  `record_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数值',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '病案质量' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_medical_record
-- ----------------------------
INSERT INTO `drm_medical_record` VALUES (1, '测试记录A', '内科', '100', '0', 'admin', '2026-05-24 15:46:14', '', NULL, '测试1');
INSERT INTO `drm_medical_record` VALUES (2, '测试记录B', '骨科', '200', '0', 'admin', '2026-05-24 15:46:14', '', NULL, '测试2');
INSERT INTO `drm_medical_record` VALUES (3, '测试记录C', '急诊科', '300', '1', 'admin', '2026-05-24 15:46:14', '', NULL, '测试3');

-- ----------------------------
-- Table structure for drm_operation_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_operation_report`;
CREATE TABLE `drm_operation_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `period_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_operation_report
-- ----------------------------
INSERT INTO `drm_operation_report` VALUES (1, 'admin', '2026-04-26 15:45:46', 'admin', '2026-05-23 15:45:46', '模拟测试数据', 'monthly', '分类/项目-2', '重点科室成本核算报告', '分类/项目-1', '0');
INSERT INTO `drm_operation_report` VALUES (2, 'admin', '2026-05-12 15:45:46', 'admin', '2026-05-14 15:45:46', '模拟测试数据', 'quarterly', '分类/项目-3', '全院医疗质量管控报告', '分类/项目-6', '0');
INSERT INTO `drm_operation_report` VALUES (3, 'admin', '2026-05-19 15:45:46', 'admin', '2026-04-29 15:45:46', '模拟测试数据', 'monthly', '分类/项目-9', '全院医疗质量管控报告', '分类/项目-9', '0');
INSERT INTO `drm_operation_report` VALUES (4, 'admin', '2026-05-11 15:45:46', 'admin', '2026-04-27 15:45:46', '模拟测试数据', 'quarterly', '分类/项目-6', '2026年第一季度绩效分析报告', '分类/项目-7', '0');
INSERT INTO `drm_operation_report` VALUES (5, 'admin', '2026-05-03 15:45:46', 'admin', '2026-04-29 15:45:46', '模拟测试数据', 'monthly', '分类/项目-8', '内科月度DRG结算分析', '分类/项目-3', '0');

-- ----------------------------
-- Table structure for drm_operation_topic
-- ----------------------------
DROP TABLE IF EXISTS `drm_operation_topic`;
CREATE TABLE `drm_operation_topic`  (
  `topic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `topic_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `target_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `analysis_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `chart_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ai_insights` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_operation_topic
-- ----------------------------
INSERT INTO `drm_operation_topic` VALUES (1, '内科月度DRG结算分析', '分类/项目-10', '儿科', '分类/项目-5', '分类/项目-3', '分类/项目-9', '0', '分类/项目-2', 'admin', '2026-05-12 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据');
INSERT INTO `drm_operation_topic` VALUES (2, '2026年第一季度绩效分析报告', '分类/项目-5', '心内科', '分类/项目-4', '分类/项目-9', '分类/项目-4', '0', '分类/项目-7', 'admin', '2026-05-23 15:45:46', 'admin', '2026-05-06 15:45:46', '模拟测试数据');
INSERT INTO `drm_operation_topic` VALUES (3, '全院医疗质量管控报告', '分类/项目-4', '骨科', '分类/项目-10', '分类/项目-2', '分类/项目-3', '0', '分类/项目-2', 'admin', '2026-05-23 15:45:46', 'admin', '2026-04-25 15:45:46', '模拟测试数据');
INSERT INTO `drm_operation_topic` VALUES (4, '全院医疗质量管控报告', '分类/项目-6', '骨科', '分类/项目-6', '分类/项目-10', '分类/项目-10', '0', '分类/项目-2', 'admin', '2026-05-04 15:45:46', 'admin', '2026-05-06 15:45:46', '模拟测试数据');
INSERT INTO `drm_operation_topic` VALUES (5, '内科月度DRG结算分析', '分类/项目-10', '儿科', '分类/项目-7', '分类/项目-5', '分类/项目-7', '0', '分类/项目-7', 'admin', '2026-04-26 15:45:46', 'admin', '2026-04-24 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_outpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_outpatient_stats`;
CREATE TABLE `drm_outpatient_stats`  (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stat_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `register_cnt` int(11) NULL DEFAULT NULL,
  `visit_cnt` int(11) NULL DEFAULT NULL,
  `revenue` decimal(10, 2) NULL DEFAULT NULL,
  `avg_cost` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`stats_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_outpatient_stats
-- ----------------------------
INSERT INTO `drm_outpatient_stats` VALUES (1, 'admin', '2026-05-10 15:45:46', 'admin', '2026-04-27 15:45:46', '模拟测试数据', '2026-05', '骨科', 343, 435, 29758.39, 30812.25);
INSERT INTO `drm_outpatient_stats` VALUES (2, 'admin', '2026-04-28 15:45:46', 'admin', '2026-04-26 15:45:46', '模拟测试数据', '2026-01', '心内科', 91, 340, 27138.72, 39568.52);
INSERT INTO `drm_outpatient_stats` VALUES (3, 'admin', '2026-05-10 15:45:46', 'admin', '2026-05-03 15:45:46', '模拟测试数据', '2026-04', '妇产科', 349, 126, 8063.80, 15251.41);
INSERT INTO `drm_outpatient_stats` VALUES (4, 'admin', '2026-05-04 15:45:46', 'admin', '2026-05-13 15:45:46', '模拟测试数据', '2026-03', '神经外科', 384, 13, 3451.78, 34913.54);
INSERT INTO `drm_outpatient_stats` VALUES (5, 'admin', '2026-05-04 15:45:46', 'admin', '2026-04-26 15:45:46', '模拟测试数据', '2026-05', '神经外科', 377, 195, 39359.18, 39190.20);

-- ----------------------------
-- Table structure for drm_perf_plan
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_plan`;
CREATE TABLE `drm_perf_plan`  (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `effective_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `formula_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_perf_plan
-- ----------------------------
INSERT INTO `drm_perf_plan` VALUES (1, 'admin', '2026-05-19 15:45:46', 'admin', '2026-05-05 15:45:46', '模拟测试数据', '重点科室成本核算报告', 'monthly', '2026-01', '0', '分类/项目-6');
INSERT INTO `drm_perf_plan` VALUES (2, 'admin', '2026-05-23 15:45:46', 'admin', '2026-05-21 15:45:46', '模拟测试数据', '2026年第一季度绩效分析报告', 'quarterly', '2026-04', '0', '分类/项目-5');
INSERT INTO `drm_perf_plan` VALUES (3, 'admin', '2026-05-03 15:45:46', 'admin', '2026-05-13 15:45:46', '模拟测试数据', '2026年第一季度绩效分析报告', 'monthly', '2026-04', '0', '分类/项目-1');
INSERT INTO `drm_perf_plan` VALUES (4, 'admin', '2026-05-12 15:45:46', 'admin', '2026-05-01 15:45:46', '模拟测试数据', '内科月度DRG结算分析', 'quarterly', '2026-01', '0', '分类/项目-6');
INSERT INTO `drm_perf_plan` VALUES (5, 'admin', '2026-05-17 15:45:46', 'admin', '2026-05-05 15:45:46', '模拟测试数据', '内科月度DRG结算分析', 'monthly', '2026-05', '0', '分类/项目-8');

-- ----------------------------
-- Table structure for drm_perf_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_report`;
CREATE TABLE `drm_perf_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_period` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `report_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `target_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_perf_report
-- ----------------------------
INSERT INTO `drm_perf_report` VALUES (1, '重点科室成本核算报告', '分类/项目-10', 'monthly', '心内科', '分类/项目-5', '0', 'admin', '2026-05-13 15:45:46', 'admin', '2026-05-03 15:45:46', '模拟测试数据');
INSERT INTO `drm_perf_report` VALUES (2, '内科月度DRG结算分析', '分类/项目-3', 'quarterly', '儿科', '分类/项目-8', '0', 'admin', '2026-04-26 15:45:46', 'admin', '2026-05-03 15:45:46', '模拟测试数据');
INSERT INTO `drm_perf_report` VALUES (3, '2026年第一季度绩效分析报告', '分类/项目-8', 'monthly', '儿科', '分类/项目-4', '0', 'admin', '2026-04-24 15:45:46', 'admin', '2026-05-11 15:45:46', '模拟测试数据');
INSERT INTO `drm_perf_report` VALUES (4, '2026年第一季度绩效分析报告', '分类/项目-1', 'quarterly', '神经外科', '分类/项目-8', '0', 'admin', '2026-05-02 15:45:46', 'admin', '2026-05-04 15:45:46', '模拟测试数据');
INSERT INTO `drm_perf_report` VALUES (5, '2026年第一季度绩效分析报告', '分类/项目-3', 'monthly', '骨科', '分类/项目-4', '0', 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_perf_result
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_result`;
CREATE TABLE `drm_perf_result`  (
  `result_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_id` bigint(20) NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `doctor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `perf_score` decimal(10, 2) NULL DEFAULT NULL,
  `perf_amount` decimal(10, 2) NULL DEFAULT NULL,
  `calc_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`result_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_perf_result
-- ----------------------------
INSERT INTO `drm_perf_result` VALUES (1, 'admin', '2026-05-13 15:45:46', 'admin', '2026-04-26 15:45:46', '模拟测试数据', 256, '神经外科', '吴普', 94.52, 22972.57, '2026-05');
INSERT INTO `drm_perf_result` VALUES (2, 'admin', '2026-05-14 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据', 166, '心内科', '李时珍', 98.56, 48227.34, '2026-04');
INSERT INTO `drm_perf_result` VALUES (3, 'admin', '2026-05-08 15:45:46', 'admin', '2026-04-30 15:45:46', '模拟测试数据', 372, '呼吸内科', '吴普', 96.69, 19070.99, '2026-01');
INSERT INTO `drm_perf_result` VALUES (4, 'admin', '2026-05-16 15:45:46', 'admin', '2026-05-09 15:45:46', '模拟测试数据', 334, '神经外科', '吴普', 97.61, 16605.14, '2026-04');
INSERT INTO `drm_perf_result` VALUES (5, 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-08 15:45:46', '模拟测试数据', 79, '儿科', '吴普', 88.86, 41647.84, '2026-02');

-- ----------------------------
-- Table structure for drm_prescription_review
-- ----------------------------
DROP TABLE IF EXISTS `drm_prescription_review`;
CREATE TABLE `drm_prescription_review`  (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `review_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `doctor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `prescription_cnt` int(11) NULL DEFAULT NULL,
  `qualified_cnt` int(11) NULL DEFAULT NULL,
  `unqualified_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`review_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_prescription_review
-- ----------------------------
INSERT INTO `drm_prescription_review` VALUES (1, 'admin', '2026-05-19 15:45:46', 'admin', '2026-04-24 15:45:46', '模拟测试数据', '2026-04', '妇产科', '张仲景', 476, 213, '分类/项目-3');
INSERT INTO `drm_prescription_review` VALUES (2, 'admin', '2026-05-05 15:45:46', 'admin', '2026-05-04 15:45:46', '模拟测试数据', '2026-04', '急诊科', '扁鹊', 68, 383, '分类/项目-8');
INSERT INTO `drm_prescription_review` VALUES (3, 'admin', '2026-05-07 15:45:46', 'admin', '2026-05-03 15:45:46', '模拟测试数据', '2026-01', '妇产科', '扁鹊', 112, 182, '分类/项目-5');
INSERT INTO `drm_prescription_review` VALUES (4, 'admin', '2026-05-16 15:45:46', 'admin', '2026-04-24 15:45:46', '模拟测试数据', '2026-01', '骨科', '华佗', 421, 335, '分类/项目-6');
INSERT INTO `drm_prescription_review` VALUES (5, 'admin', '2026-05-07 15:45:46', 'admin', '2026-05-06 15:45:46', '模拟测试数据', '2026-05', '急诊科', '吴普', 325, 191, '分类/项目-4');

-- ----------------------------
-- Table structure for drm_project_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_project_cost`;
CREATE TABLE `drm_project_cost`  (
  `project_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `project_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `budget_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `actual_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cost_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_project_cost
-- ----------------------------
INSERT INTO `drm_project_cost` VALUES (1, '重点科室成本核算报告', '分类/项目-8', '儿科', '分类/项目-7', '分类/项目-4', '2026-02', 'admin', '2026-05-01 15:45:46', 'admin', '2026-05-13 15:45:46', '模拟测试数据');
INSERT INTO `drm_project_cost` VALUES (2, '2026年第一季度绩效分析报告', '分类/项目-4', '呼吸内科', '分类/项目-2', '分类/项目-10', '2026-05', 'admin', '2026-05-15 15:45:46', 'admin', '2026-04-28 15:45:46', '模拟测试数据');
INSERT INTO `drm_project_cost` VALUES (3, '重点科室成本核算报告', '分类/项目-4', '骨科', '分类/项目-5', '分类/项目-9', '2026-01', 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-19 15:45:46', '模拟测试数据');
INSERT INTO `drm_project_cost` VALUES (4, '2026年第一季度绩效分析报告', '分类/项目-6', '呼吸内科', '分类/项目-1', '分类/项目-7', '2026-02', 'admin', '2026-05-10 15:45:46', 'admin', '2026-05-21 15:45:46', '模拟测试数据');
INSERT INTO `drm_project_cost` VALUES (5, '2026年第一季度绩效分析报告', '分类/项目-7', '急诊科', '分类/项目-10', '分类/项目-6', '2026-03', 'admin', '2026-05-03 15:45:46', 'admin', '2026-04-30 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_quality_event
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_event`;
CREATE TABLE `drm_quality_event`  (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `event_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `event_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `event_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `event_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `handling_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_quality_event
-- ----------------------------
INSERT INTO `drm_quality_event` VALUES (1, 'admin', '2026-05-18 15:45:46', 'admin', '2026-05-23 15:45:46', '模拟测试数据', '2026-02', '儿科', '分类/项目-1', '分类/项目-5', '分类/项目-2', '分类/项目-2');
INSERT INTO `drm_quality_event` VALUES (2, 'admin', '2026-05-09 15:45:46', 'admin', '2026-05-02 15:45:46', '模拟测试数据', '2026-01', '心内科', '分类/项目-1', '分类/项目-5', '分类/项目-4', '分类/项目-3');
INSERT INTO `drm_quality_event` VALUES (3, 'admin', '2026-05-06 15:45:46', 'admin', '2026-04-27 15:45:46', '模拟测试数据', '2026-04', '心内科', '分类/项目-5', '分类/项目-8', '分类/项目-5', '分类/项目-7');
INSERT INTO `drm_quality_event` VALUES (4, 'admin', '2026-04-30 15:45:46', 'admin', '2026-05-07 15:45:46', '模拟测试数据', '2026-03', '急诊科', '分类/项目-3', '分类/项目-7', '分类/项目-5', '分类/项目-6');
INSERT INTO `drm_quality_event` VALUES (5, 'admin', '2026-05-15 15:45:46', 'admin', '2026-05-07 15:45:46', '模拟测试数据', '2026-04', '骨科', '分类/项目-8', '分类/项目-3', '分类/项目-6', '分类/项目-3');

-- ----------------------------
-- Table structure for drm_quality_indicator
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_indicator`;
CREATE TABLE `drm_quality_indicator`  (
  `indicator_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `indicator_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `indicator_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `indicator_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `indicator_value` decimal(10, 2) NULL DEFAULT NULL,
  `target_value` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`indicator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_quality_indicator
-- ----------------------------
INSERT INTO `drm_quality_indicator` VALUES (1, 'admin', '2026-05-15 15:45:46', 'admin', '2026-05-07 15:45:46', '模拟测试数据', '2026-01', '呼吸内科', '分类/项目-8', '全院医疗质量管控报告', 13040.10, 34623.19);
INSERT INTO `drm_quality_indicator` VALUES (2, 'admin', '2026-04-29 15:45:46', 'admin', '2026-04-29 15:45:46', '模拟测试数据', '2026-01', '骨科', '分类/项目-4', '全院医疗质量管控报告', 48626.82, 42611.21);
INSERT INTO `drm_quality_indicator` VALUES (3, 'admin', '2026-05-16 15:45:46', 'admin', '2026-04-28 15:45:46', '模拟测试数据', '2026-02', '妇产科', '分类/项目-6', '全院医疗质量管控报告', 43506.19, 12280.22);
INSERT INTO `drm_quality_indicator` VALUES (4, 'admin', '2026-05-02 15:45:46', 'admin', '2026-05-09 15:45:46', '模拟测试数据', '2026-04', '心内科', '分类/项目-4', '全院医疗质量管控报告', 11059.87, 31856.59);
INSERT INTO `drm_quality_indicator` VALUES (5, 'admin', '2026-04-25 15:45:46', 'admin', '2026-04-28 15:45:46', '模拟测试数据', '2026-03', '心内科', '分类/项目-8', '重点科室成本核算报告', 23090.58, 11301.82);

-- ----------------------------
-- Table structure for drm_quality_perf
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_perf`;
CREATE TABLE `drm_quality_perf`  (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quality_score` decimal(10, 2) NULL DEFAULT NULL,
  `qualified_rate` decimal(10, 2) NULL DEFAULT NULL,
  `excellent_rate` decimal(10, 2) NULL DEFAULT NULL,
  `incident_cnt` int(11) NULL DEFAULT NULL,
  `calc_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`perf_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_quality_perf
-- ----------------------------
INSERT INTO `drm_quality_perf` VALUES (1, '妇产科', 88.99, 88.74, 94.36, 257, '2026-05', '0', 'admin', '2026-05-11 15:45:46', 'admin', '2026-05-11 15:45:46', '模拟测试数据');
INSERT INTO `drm_quality_perf` VALUES (2, '呼吸内科', 98.32, 90.04, 85.73, 197, '2026-03', '0', 'admin', '2026-04-29 15:45:46', 'admin', '2026-05-23 15:45:46', '模拟测试数据');
INSERT INTO `drm_quality_perf` VALUES (3, '急诊科', 97.11, 97.01, 92.05, 291, '2026-04', '0', 'admin', '2026-05-03 15:45:46', 'admin', '2026-05-13 15:45:46', '模拟测试数据');
INSERT INTO `drm_quality_perf` VALUES (4, '呼吸内科', 90.23, 93.79, 97.67, 64, '2026-05', '0', 'admin', '2026-05-01 15:45:46', 'admin', '2026-04-25 15:45:46', '模拟测试数据');
INSERT INTO `drm_quality_perf` VALUES (5, '儿科', 98.05, 96.12, 91.12, 310, '2026-05', '0', 'admin', '2026-05-15 15:45:46', 'admin', '2026-04-25 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_quality_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_report`;
CREATE TABLE `drm_quality_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `report_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室',
  `report_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数值',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '质量报告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_quality_report
-- ----------------------------
INSERT INTO `drm_quality_report` VALUES (1, '测试记录A', '内科', '100', '0', 'admin', '2026-05-24 15:46:14', '', NULL, '测试1');
INSERT INTO `drm_quality_report` VALUES (2, '测试记录B', '骨科', '200', '0', 'admin', '2026-05-24 15:46:14', '', NULL, '测试2');
INSERT INTO `drm_quality_report` VALUES (3, '测试记录C', '急诊科', '300', '1', 'admin', '2026-05-24 15:46:14', '', NULL, '测试3');

-- ----------------------------
-- Table structure for drm_rbrvs
-- ----------------------------
DROP TABLE IF EXISTS `drm_rbrvs`;
CREATE TABLE `drm_rbrvs`  (
  `rbrvs_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `item_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `base_point` decimal(10, 2) NULL DEFAULT NULL,
  `difficulty_coeff` decimal(10, 2) NULL DEFAULT NULL,
  `perf_amount` decimal(10, 2) NULL DEFAULT NULL,
  `eff_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rbrvs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_rbrvs
-- ----------------------------
INSERT INTO `drm_rbrvs` VALUES (1, '2026年第一季度绩效分析报告', '分类/项目-5', '儿科', 24897.32, 33897.81, 10977.55, '2026-01', '0', 'admin', '2026-04-24 15:45:46', 'admin', '2026-04-30 15:45:46', '模拟测试数据');
INSERT INTO `drm_rbrvs` VALUES (2, '2026年第一季度绩效分析报告', '分类/项目-8', '妇产科', 31272.66, 30036.59, 23299.71, '2026-04', '0', 'admin', '2026-05-12 15:45:46', 'admin', '2026-05-09 15:45:46', '模拟测试数据');
INSERT INTO `drm_rbrvs` VALUES (3, '重点科室成本核算报告', '分类/项目-1', '急诊科', 24192.90, 23231.34, 47349.19, '2026-04', '0', 'admin', '2026-05-17 15:45:46', 'admin', '2026-05-14 15:45:46', '模拟测试数据');
INSERT INTO `drm_rbrvs` VALUES (4, '全院医疗质量管控报告', '分类/项目-2', '心内科', 8657.14, 13077.51, 40288.84, '2026-01', '0', 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-05 15:45:46', '模拟测试数据');
INSERT INTO `drm_rbrvs` VALUES (5, '重点科室成本核算报告', '分类/项目-6', '心内科', 32493.75, 43741.98, 25654.22, '2026-04', '0', 'admin', '2026-04-30 15:45:46', 'admin', '2026-05-18 15:45:46', '模拟测试数据');

-- ----------------------------
-- Table structure for drm_receivable
-- ----------------------------
DROP TABLE IF EXISTS `drm_receivable`;
CREATE TABLE `drm_receivable`  (
  `receivable_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `patient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bill_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  `paid_amount` decimal(10, 2) NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`receivable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_receivable
-- ----------------------------
INSERT INTO `drm_receivable` VALUES (1, 'admin', '2026-05-20 15:45:46', 'admin', '2026-04-27 15:45:46', '模拟测试数据', '内科月度DRG结算分析', '急诊科', '2026-04', 7463.75, 20888.87, '0');
INSERT INTO `drm_receivable` VALUES (2, 'admin', '2026-05-01 15:45:46', 'admin', '2026-05-12 15:45:46', '模拟测试数据', '2026年第一季度绩效分析报告', '神经外科', '2026-04', 21390.05, 45672.08, '0');
INSERT INTO `drm_receivable` VALUES (3, 'admin', '2026-05-07 15:45:46', 'admin', '2026-05-04 15:45:46', '模拟测试数据', '重点科室成本核算报告', '妇产科', '2026-03', 2850.39, 16764.65, '0');
INSERT INTO `drm_receivable` VALUES (4, 'admin', '2026-05-14 15:45:46', 'admin', '2026-05-07 15:45:46', '模拟测试数据', '2026年第一季度绩效分析报告', '神经外科', '2026-02', 38028.33, 1197.90, '0');
INSERT INTO `drm_receivable` VALUES (5, 'admin', '2026-05-02 15:45:46', 'admin', '2026-04-27 15:45:46', '模拟测试数据', '内科月度DRG结算分析', '呼吸内科', '2026-02', 39422.53, 1806.64, '0');

-- ----------------------------
-- Table structure for drm_rolling_budget
-- ----------------------------
DROP TABLE IF EXISTS `drm_rolling_budget`;
CREATE TABLE `drm_rolling_budget`  (
  `budget_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `budget_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室',
  `budget_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '预算金额',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`budget_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '滚动预算' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_rolling_budget
-- ----------------------------
INSERT INTO `drm_rolling_budget` VALUES (1, '第一季度医疗耗材预算', '内科', 150000.00, '0', 'admin', '2026-05-24 16:10:08', '', NULL, '测试1');
INSERT INTO `drm_rolling_budget` VALUES (2, '第二季度设备维护预算', '外科', 80000.00, '0', 'admin', '2026-05-24 16:10:08', '', NULL, '测试2');
INSERT INTO `drm_rolling_budget` VALUES (3, '年度培训经费预算', '儿科', 30000.00, '1', 'admin', '2026-05-24 16:10:08', '', NULL, '测试3');

-- ----------------------------
-- Table structure for drm_surgery_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_surgery_stats`;
CREATE TABLE `drm_surgery_stats`  (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stat_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `surgery_cnt` int(11) NULL DEFAULT NULL,
  `emergency_cnt` int(11) NULL DEFAULT NULL,
  `revenue` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`stats_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_surgery_stats
-- ----------------------------
INSERT INTO `drm_surgery_stats` VALUES (1, 'admin', '2026-05-21 15:45:46', 'admin', '2026-04-28 15:45:46', '模拟测试数据', '2026-03', '神经外科', 464, 80, 6522.39);
INSERT INTO `drm_surgery_stats` VALUES (2, 'admin', '2026-05-22 15:45:46', 'admin', '2026-05-07 15:45:46', '模拟测试数据', '2026-04', '呼吸内科', 106, 316, 34839.63);
INSERT INTO `drm_surgery_stats` VALUES (3, 'admin', '2026-05-17 15:45:46', 'admin', '2026-05-11 15:45:46', '模拟测试数据', '2026-03', '呼吸内科', 300, 56, 10587.08);
INSERT INTO `drm_surgery_stats` VALUES (4, 'admin', '2026-05-19 15:45:46', 'admin', '2026-05-11 15:45:46', '模拟测试数据', '2026-03', '儿科', 354, 317, 9703.52);
INSERT INTO `drm_surgery_stats` VALUES (5, 'admin', '2026-05-06 15:45:46', 'admin', '2026-05-05 15:45:46', '模拟测试数据', '2026-01', '急诊科', 475, 185, 4642.46);

-- ----------------------------
-- Table structure for drm_sync_task
-- ----------------------------
DROP TABLE IF EXISTS `drm_sync_task`;
CREATE TABLE `drm_sync_task`  (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室',
  `task_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数值',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '同步任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_sync_task
-- ----------------------------
INSERT INTO `drm_sync_task` VALUES (1, '同步任务A', '信息科', '100', '0', 'admin', '2026-05-24 15:54:32', '', NULL, '测试1');
INSERT INTO `drm_sync_task` VALUES (2, '同步任务B', '财务科', '200', '0', 'admin', '2026-05-24 15:54:32', '', NULL, '测试2');
INSERT INTO `drm_sync_task` VALUES (3, '同步任务C', '病案室', '300', '1', 'admin', '2026-05-24 15:54:32', '', NULL, '测试3');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (7, '是否开启验证码', 'sys.account.captchaEnabled', 'false', 'N', 'admin', '2026-05-24 03:00:41', 'admin', '2026-05-24 03:00:41', '关闭验证码登录');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 217 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '1', '验证码已失效', '2026-05-24 03:00:00');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '1', '用户不存在/密码错误', '2026-05-24 03:00:44');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 03:01:21');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 03:02:27');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 03:02:32');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 03:02:39');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 04:05:59');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:07:39');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:08:16');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:11:24');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:13:44');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:15:47');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:18:44');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:21:00');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:23:25');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:24:50');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:25:13');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:32:19');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2026-05-24 04:32:40');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 06:49:14');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 06:53:43');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 06:53:55');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 07:03:39');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 07:03:50');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 07:04:07');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 07:04:14');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 07:05:04');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 07:05:15');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 07:05:22');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 08:01:24');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 08:01:32');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 09:50:52');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 09:53:59');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 09:54:29');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 09:55:57');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 09:56:08');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 09:57:29');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 09:58:49');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 10:01:07');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 10:01:26');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '0', '登录成功', '2026-05-24 10:07:21');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2026-05-24 10:34:50');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '192.168.1.106', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-05-24 10:35:51');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-05-24 12:27:48');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-05-24 12:47:49');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-05-24 13:08:41');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '116.147.108.148', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-05-24 14:58:19');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '116.147.108.148', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-05-24 15:02:32');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '116.147.108.148', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-05-24 15:02:38');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-05-24 15:23:00');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3120 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 11, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-06-08 02:58:22', 'admin', '2025-02-01 13:15:53', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 12, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-06-08 02:58:22', 'admin', '2025-02-01 13:18:42', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 13, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-06-08 02:58:22', 'admin', '2025-02-01 13:18:46', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '智脑科技', 0, 14, 'http://ai58.com', NULL, '', 0, 0, 'M', '1', '0', '', 'guide', 'admin', '2024-06-08 02:58:22', 'admin', '2026-05-24 12:50:57', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-06-08 02:58:22', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-06-08 02:58:22', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-06-08 02:58:22', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-06-08 02:58:22', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-06-08 02:58:22', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-06-08 02:58:22', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-06-08 02:58:22', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-06-08 02:58:22', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-06-08 02:58:22', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-06-08 02:58:22', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-06-08 02:58:22', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-06-08 02:58:22', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-06-08 02:58:22', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-06-08 02:58:22', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-06-08 02:58:22', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-06-08 02:58:22', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-06-08 02:58:22', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-06-08 02:58:22', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-06-08 02:58:22', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-06-08 02:58:22', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-06-08 02:58:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '院长工作台', 0, 1, 'cockpit', NULL, '', 1, 0, 'M', '0', '0', '', 'dashboard', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 14:59:00', '可视化大屏目录');
INSERT INTO `sys_menu` VALUES (2001, '驾驶舱首页', 2000, 1, 'cockpitIndex', 'drm/cockpit/index', '', 1, 0, 'C', '1', '0', 'drm:cockpit:index', 'dashboard', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:48:39', '院长驾驶舱首页');
INSERT INTO `sys_menu` VALUES (2002, '运营趋势', 2000, 2, 'trend', 'drm/cockpit/trend', '', 1, 0, 'C', '0', '0', 'drm:cockpit:trend', 'chart', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '运营趋势分析');
INSERT INTO `sys_menu` VALUES (2003, '科室总览', 2000, 3, 'deptOverview', 'drm/cockpit/deptOverview', '', 1, 0, 'C', '0', '0', 'drm:cockpit:deptOverview', 'peoples', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '科室运营总览');
INSERT INTO `sys_menu` VALUES (2004, 'DRG总览', 2000, 4, 'drgOverview', 'drm/cockpit/drgOverview', '', 1, 0, 'C', '0', '0', 'drm:cockpit:drgOverview', 'money', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', 'DRG运营总览');
INSERT INTO `sys_menu` VALUES (2005, '成本概览', 2000, 5, 'costOverview', 'drm/cockpit/costOverview', '', 1, 0, 'C', '0', '0', 'drm:cockpit:costOverview', 'druid', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:51:44', '成本概览');
INSERT INTO `sys_menu` VALUES (2006, '预警中心', 2000, 6, 'warningCenter', 'drm/cockpit/warningCenter', '', 1, 0, 'C', '0', '0', 'drm:cockpit:warningCenter', 'message', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:51:53', '预警中心');
INSERT INTO `sys_menu` VALUES (2007, '大屏管理', 2000, 7, 'bigScreen', 'drm/cockpit/bigScreen', '', 1, 0, 'C', '0', '0', 'drm:cockpit:bigScreen', 'component', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '大屏管理');
INSERT INTO `sys_menu` VALUES (2008, '大屏查询', 2007, 1, '', '', ' ', 1, 0, 'F', '0', '0', 'drm:bigScreen:query', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2009, '大屏新增', 2007, 2, '', '', ' ', 1, 0, 'F', '0', '0', 'drm:bigScreen:add', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2010, '大屏修改', 2007, 3, '', '', ' ', 1, 0, 'F', '0', '0', 'drm:bigScreen:edit', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2011, '大屏删除', 2007, 4, '', '', ' ', 1, 0, 'F', '0', '0', 'drm:bigScreen:remove', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2012, '大屏导出', 2007, 5, '', '', ' ', 1, 0, 'F', '0', '0', 'drm:bigScreen:export', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2100, '运营分析', 0, 2, 'operation', NULL, '', 1, 0, 'M', '0', '0', '', 'chart', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '运营分析目录');
INSERT INTO `sys_menu` VALUES (2101, '门诊分析', 2100, 1, 'outpatient', 'drm/operation/outpatient', '', 1, 0, 'C', '0', '0', 'drm:operation:outpatient', 'monitor', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:52:28', '门诊运营分析');
INSERT INTO `sys_menu` VALUES (2102, '门诊查询', 2101, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:outpatient:query', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2103, '门诊导出', 2101, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:outpatient:export', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2104, '住院分析', 2100, 2, 'inpatient', 'drm/operation/inpatient', '', 1, 0, 'C', '0', '0', 'drm:operation:inpatient', 'peoples', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:52:35', '住院运营分析');
INSERT INTO `sys_menu` VALUES (2105, '住院查询', 2104, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:inpatient:query', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2106, '住院导出', 2104, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:inpatient:export', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2107, '手术分析', 2100, 3, 'surgery', 'drm/operation/surgery', '', 1, 0, 'C', '0', '0', 'drm:operation:surgery', 'list', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:52:43', '手术运营分析');
INSERT INTO `sys_menu` VALUES (2108, '手术查询', 2107, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:surgery:query', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2109, '手术导出', 2107, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:surgery:export', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2110, '综合分析', 2100, 4, 'comprehensive', 'drm/operation/comprehensive', '', 1, 0, 'C', '0', '0', 'drm:operation:comprehensive', 'redis-list', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:52:54', '综合运营分析');
INSERT INTO `sys_menu` VALUES (2111, '运营报告', 2100, 5, 'report', 'drm/operation/report', '', 1, 0, 'C', '0', '0', 'drm:operation:report', 'row', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 12:53:03', '运营报告');
INSERT INTO `sys_menu` VALUES (2112, '报告查询', 2111, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:report:query', '#', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '');
INSERT INTO `sys_menu` VALUES (2113, '报告新增', 2111, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:report:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2114, '报告修改', 2111, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:report:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2115, '报告删除', 2111, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:report:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2116, '专题分析', 2100, 6, 'topic', 'drm/operation/topic', '', 1, 0, 'C', '0', '0', 'drm:operation:topic', 'tree-table', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '专题分析');
INSERT INTO `sys_menu` VALUES (2200, '财务管控', 0, 3, 'finance', NULL, '', 1, 0, 'M', '0', '0', '', 'money', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:49:01', '财务管控目录');
INSERT INTO `sys_menu` VALUES (2201, '收入管理', 2200, 1, 'income', 'drm/finance/income', '', 1, 0, 'C', '0', '0', 'drm:finance:income', 'money', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '收入管理');
INSERT INTO `sys_menu` VALUES (2202, '收入查询', 2201, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:income:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2203, '收入新增', 2201, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:income:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2204, '收入修改', 2201, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:income:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2205, '收入删除', 2201, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:income:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2206, '收入导出', 2201, 5, '', '', '', 1, 0, 'F', '0', '0', 'drm:income:export', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2207, '支出管理', 2200, 2, 'expense', 'drm/finance/expense', '', 1, 0, 'C', '0', '0', 'drm:finance:expense', 'edit', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:53:21', '支出管理');
INSERT INTO `sys_menu` VALUES (2208, '支出查询', 2207, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:expense:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2209, '支出新增', 2207, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:expense:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2210, '支出修改', 2207, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:expense:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2211, '支出删除', 2207, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:expense:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2212, '支出导出', 2207, 5, '', '', '', 1, 0, 'F', '0', '0', 'drm:expense:export', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2213, '收支分析', 2200, 3, 'balance', 'drm/finance/balance', '', 1, 0, 'C', '0', '0', 'drm:finance:balance', 'dict', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:53:12', '收支分析');
INSERT INTO `sys_menu` VALUES (2214, '应收账款', 2200, 4, 'receivable', 'drm/finance/receivable', '', 1, 0, 'C', '0', '0', 'drm:finance:receivable', 'server', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:53:33', '应收账款');
INSERT INTO `sys_menu` VALUES (2215, '应收查询', 2214, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:receivable:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2216, '应收新增', 2214, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:receivable:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2217, '应收修改', 2214, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:receivable:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2218, '应收删除', 2214, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:receivable:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2219, '财务报表', 2200, 5, 'financeReport', 'drm/finance/financeReport', '', 1, 0, 'C', '0', '0', 'drm:finance:report', 'clipboard', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '财务统计报表');
INSERT INTO `sys_menu` VALUES (2300, '成本核算', 0, 4, 'cost', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:49:12', '成本核算目录');
INSERT INTO `sys_menu` VALUES (2301, '成本数据', 2300, 1, 'costData', 'drm/cost/costData', '', 1, 0, 'C', '0', '0', 'drm:cost:data', 'list', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '成本数据管理');
INSERT INTO `sys_menu` VALUES (2302, '成本查询', 2301, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:cost:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2303, '成本新增', 2301, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:cost:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2304, '成本修改', 2301, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:cost:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2305, '成本删除', 2301, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:cost:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2306, '科室成本', 2300, 2, 'deptCost', 'drm/cost/deptCost', '', 1, 0, 'C', '0', '0', 'drm:cost:dept', 'peoples', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '科室成本核算');
INSERT INTO `sys_menu` VALUES (2307, '项目成本', 2300, 3, 'projectCost', 'drm/cost/projectCost', '', 1, 0, 'C', '0', '0', 'drm:cost:project', 'date-range', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:53:48', '项目成本核算');
INSERT INTO `sys_menu` VALUES (2308, '病种成本', 2300, 4, 'caseCost', 'drm/cost/caseCost', '', 1, 0, 'C', '0', '0', 'drm:cost:case', 'row', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:53:57', '病种成本核算');
INSERT INTO `sys_menu` VALUES (2309, '成本报表', 2300, 5, 'costReport', 'drm/cost/costReport', '', 1, 0, 'C', '0', '0', 'drm:cost:report', 'chart', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '成本分析报表');
INSERT INTO `sys_menu` VALUES (2400, '绩效管理', 0, 5, 'performance', NULL, '', 1, 0, 'M', '0', '0', '', 'people', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:49:22', '绩效管理目录');
INSERT INTO `sys_menu` VALUES (2401, '绩效方案', 2400, 1, 'perfPlan', 'drm/performance/perfPlan', '', 1, 0, 'C', '0', '0', 'drm:perf:plan', 'druid', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:54:11', '绩效方案管理');
INSERT INTO `sys_menu` VALUES (2402, '方案查询', 2401, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:perf:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2403, '方案新增', 2401, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:perf:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2404, '方案修改', 2401, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:perf:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2405, '方案删除', 2401, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:perf:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2406, 'RBRVS核算', 2400, 2, 'rbrvs', 'drm/performance/rbrvs', '', 1, 0, 'C', '0', '0', 'drm:perf:rbrvs', 'excel', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:54:19', 'RBRVS绩效核算');
INSERT INTO `sys_menu` VALUES (2407, 'DRG核算', 2400, 3, 'drgPerf', 'drm/performance/drgPerf', '', 1, 0, 'C', '0', '0', 'drm:perf:drg', 'money', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', 'DRG绩效核算');
INSERT INTO `sys_menu` VALUES (2408, '质量绩效', 2400, 4, 'qualityPerf', 'drm/performance/qualityPerf', '', 1, 0, 'C', '0', '0', 'drm:perf:quality', 'cascader', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:54:27', '质量绩效核算');
INSERT INTO `sys_menu` VALUES (2409, '效率绩效', 2400, 5, 'efficiencyPerf', 'drm/performance/efficiencyPerf', '', 1, 0, 'C', '0', '0', 'drm:perf:efficiency', 'form', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:54:35', '效率绩效核算');
INSERT INTO `sys_menu` VALUES (2410, '绩效结果', 2400, 6, 'perfResult', 'drm/performance/perfResult', '', 1, 0, 'C', '0', '0', 'drm:perf:result', 'education', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:54:43', '绩效结果分析');
INSERT INTO `sys_menu` VALUES (2411, '绩效报表', 2400, 7, 'perfReport', 'drm/performance/perfReport', '', 1, 0, 'C', '0', '0', 'drm:perf:report', 'monitor', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:54:51', '绩效报表');
INSERT INTO `sys_menu` VALUES (2500, 'DRG分析', 0, 6, 'drg', NULL, '', 1, 0, 'M', '0', '0', '', 'job', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:49:35', 'DRG分析目录');
INSERT INTO `sys_menu` VALUES (2501, 'DRG数据', 2500, 1, 'drgData', 'drm/drg/drgData', '', 1, 0, 'C', '0', '0', 'drm:drg:data', 'component', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 14:29:12', 'DRG数据管理');
INSERT INTO `sys_menu` VALUES (2502, 'DRG查询', 2501, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:drg:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2503, 'DRG新增', 2501, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:drg:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2504, 'DRG修改', 2501, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:drg:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2505, 'DRG删除', 2501, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:drg:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2506, 'DRG导出', 2501, 5, '', '', '', 1, 0, 'F', '0', '0', 'drm:drg:export', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2507, '综合分析', 2500, 2, 'drgAnalysis', 'drm/drg/drgAnalysis', '', 1, 0, 'C', '0', '0', 'drm:drg:analysis', 'monitor', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 14:29:28', 'DRG综合分析');
INSERT INTO `sys_menu` VALUES (2508, '科室分析', 2500, 3, 'drgDept', 'drm/drg/drgDept', '', 1, 0, 'C', '0', '0', 'drm:drg:dept', 'peoples', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', 'DRG科室分析');
INSERT INTO `sys_menu` VALUES (2509, '病组分析', 2500, 4, 'drgGroup', 'drm/drg/drgGroup', '', 1, 0, 'C', '0', '0', 'drm:drg:group', 'tree-table', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 14:29:41', 'DRG病组分析');
INSERT INTO `sys_menu` VALUES (2510, '医师分析', 2500, 5, 'drgDoctor', 'drm/drg/drgDoctor', '', 1, 0, 'C', '0', '0', 'drm:drg:doctor', 'peoples', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 14:29:57', 'DRG医师分析');
INSERT INTO `sys_menu` VALUES (2511, '盈亏分析', 2500, 6, 'drgProfit', 'drm/drg/drgProfit', '', 1, 0, 'C', '0', '0', 'drm:drg:profit', 'money', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 14:30:06', 'DRG盈亏分析');
INSERT INTO `sys_menu` VALUES (2512, 'DRG报表', 2500, 7, 'drgReport', 'drm/drg/drgReport', '', 1, 0, 'C', '0', '0', 'drm:drg:report', 'number', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 14:30:18', 'DRG报表');
INSERT INTO `sys_menu` VALUES (2600, '预算管理', 0, 7, 'budget', NULL, '', 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:49:48', '预算管理目录');
INSERT INTO `sys_menu` VALUES (2601, '预算编制', 2600, 1, 'budgetEdit', 'drm/budget/budgetEdit', '', 1, 0, 'C', '0', '0', 'drm:budget:edit', 'edit', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '预算编制');
INSERT INTO `sys_menu` VALUES (2602, '编制查询', 2601, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:budget:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2603, '编制新增', 2601, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:budget:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2604, '编制修改', 2601, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:budget:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2605, '编制删除', 2601, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:budget:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2606, '编制提交', 2601, 5, '', '', '', 1, 0, 'F', '0', '0', 'drm:budget:submit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2607, '预算执行', 2600, 2, 'budgetExecute', 'drm/budget/budgetExecute', '', 1, 0, 'C', '0', '0', 'drm:budget:execute', 'education', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:55:10', '预算执行');
INSERT INTO `sys_menu` VALUES (2608, '预算分析', 2600, 3, 'budgetAnalysis', 'drm/budget/budgetAnalysis', '', 1, 0, 'C', '0', '0', 'drm:budget:analysis', 'monitor', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:55:16', '预算分析');
INSERT INTO `sys_menu` VALUES (2609, '滚动预算', 2600, 4, 'rollingBudget', 'drm/budget/rollingBudget', '', 1, 0, 'C', '0', '0', 'drm:budget:rolling', 'swagger', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:55:24', '滚动预算');
INSERT INTO `sys_menu` VALUES (2700, '医疗质量', 0, 8, 'quality', NULL, '', 1, 0, 'M', '0', '0', '', 'druid', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:50:00', '医疗质量目录');
INSERT INTO `sys_menu` VALUES (2701, '指标监控', 2700, 1, 'qualityMonitor', 'drm/quality/qualityMonitor', '', 1, 0, 'C', '0', '0', 'drm:quality:monitor', 'dashboard', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '质量指标监控');
INSERT INTO `sys_menu` VALUES (2702, '指标查询', 2701, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:indicator:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2703, '指标新增', 2701, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:indicator:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2704, '指标修改', 2701, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:indicator:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2705, '指标删除', 2701, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:indicator:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2706, '病历质控', 2700, 2, 'medicalRecord', 'drm/quality/medicalRecord', '', 1, 0, 'C', '0', '0', 'drm:quality:record', 'monitor', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:55:34', '病历质控');
INSERT INTO `sys_menu` VALUES (2707, '处方点评', 2700, 3, 'prescription', 'drm/quality/prescription', '', 1, 0, 'C', '0', '0', 'drm:quality:prescription', 'nested', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:55:41', '处方点评');
INSERT INTO `sys_menu` VALUES (2708, '点评查询', 2707, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:prescription:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2709, '点评新增', 2707, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:prescription:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2710, '点评修改', 2707, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:prescription:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2711, '不良事件', 2700, 4, 'adverseEvent', 'drm/quality/adverseEvent', '', 1, 0, 'C', '0', '0', 'drm:quality:event', 'monitor', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:55:52', '不良事件');
INSERT INTO `sys_menu` VALUES (2712, '事件查询', 2711, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:event:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2713, '事件新增', 2711, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:event:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2714, '事件修改', 2711, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:event:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2715, '事件删除', 2711, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:event:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2716, '院感监控', 2700, 5, 'infection', 'drm/quality/infection', '', 1, 0, 'C', '0', '0', 'drm:quality:infection', 'education', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:56:07', '院感监控');
INSERT INTO `sys_menu` VALUES (2717, '质量报表', 2700, 6, 'qualityReport', 'drm/quality/qualityReport', '', 1, 0, 'C', '0', '0', 'drm:quality:report', 'chart', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '质量分析报表');
INSERT INTO `sys_menu` VALUES (2800, 'AI智能助手', 0, 9, 'ai', NULL, '', 1, 0, 'M', '0', '0', '', 'eye-open', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:50:17', 'AI智能助手目录');
INSERT INTO `sys_menu` VALUES (2801, '智能问答', 2800, 1, 'aiChat', 'drm/ai/aiChat', '', 1, 0, 'C', '0', '0', 'drm:ai:chat', 'message', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:56:37', '智能问答');
INSERT INTO `sys_menu` VALUES (2802, '报告生成', 2800, 2, 'aiReport', 'drm/ai/aiReport', '', 1, 0, 'C', '0', '0', 'drm:ai:report', 'education', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:56:26', '智能报告生成');
INSERT INTO `sys_menu` VALUES (2803, '报告查询', 2802, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:aiReport:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2804, '报告生成', 2802, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:aiReport:generate', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2805, '智能预警', 2800, 3, 'aiWarning', 'drm/ai/aiWarning', '', 1, 0, 'C', '0', '0', 'drm:ai:warning', 'system', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:56:47', '智能预警');
INSERT INTO `sys_menu` VALUES (2806, '归因分析', 2800, 4, 'aiAnalysis', 'drm/ai/aiAnalysis', '', 1, 0, 'C', '0', '0', 'drm:ai:analysis', 'question', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:56:57', '归因分析');
INSERT INTO `sys_menu` VALUES (2807, '智能推荐', 2800, 5, 'aiRecommend', 'drm/ai/aiRecommend', '', 1, 0, 'C', '0', '0', 'drm:ai:recommend', 'star', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '智能推荐');
INSERT INTO `sys_menu` VALUES (2900, '知识库管理', 0, 10, 'knowledge', NULL, '', 1, 0, 'M', '0', '0', '', 'redis', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:50:34', '知识库管理目录');
INSERT INTO `sys_menu` VALUES (2901, '知识分类', 2900, 1, 'knowledgeCategory', 'drm/knowledge/knowledgeCategory', '', 1, 0, 'C', '0', '0', 'drm:knowledge:category', 'tree', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '知识分类管理');
INSERT INTO `sys_menu` VALUES (2902, '分类查询', 2901, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:category:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2903, '分类新增', 2901, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:category:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2904, '分类修改', 2901, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:category:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2905, '分类删除', 2901, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:category:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2906, '知识内容', 2900, 2, 'knowledgeContent', 'drm/knowledge/knowledgeContent', '', 1, 0, 'C', '0', '0', 'drm:knowledge:content', 'monitor', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:57:13', '知识内容管理');
INSERT INTO `sys_menu` VALUES (2907, '内容查询', 2906, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:content:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2908, '内容新增', 2906, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:content:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2909, '内容修改', 2906, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:content:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2910, '内容删除', 2906, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:content:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (2911, '知识图谱', 2900, 3, 'knowledgeGraph', 'drm/knowledge/knowledgeGraph', '', 1, 0, 'C', '0', '0', 'drm:knowledge:graph', 'nested', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:57:29', '知识图谱');
INSERT INTO `sys_menu` VALUES (2912, '问答配置', 2900, 4, 'aiqaConfig', 'drm/knowledge/aiqaConfig', '', 1, 0, 'C', '0', '0', 'drm:knowledge:qaConfig', 'system', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:57:42', '智能问答配置');
INSERT INTO `sys_menu` VALUES (3000, '数据源管理', 0, 11, 'datasource', NULL, '', 1, 0, 'M', '0', '0', '', 'tree-table', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:50:46', '数据源管理目录');
INSERT INTO `sys_menu` VALUES (3001, '数据源', 3000, 1, 'dataSource', 'drm/datasource/dataSource', '', 1, 0, 'C', '0', '0', 'drm:datasource:source', 'server', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '数据源配置');
INSERT INTO `sys_menu` VALUES (3002, '源查询', 3001, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:source:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3003, '源新增', 3001, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:source:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3004, '源修改', 3001, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:source:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3005, '源删除', 3001, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:source:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3006, '源连接测试', 3001, 5, '', '', '', 1, 0, 'F', '0', '0', 'drm:source:test', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3007, '数据映射', 3000, 2, 'dataMapping', 'drm/datasource/dataMapping', '', 1, 0, 'C', '0', '0', 'drm:datasource:mapping', 'swagger', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:57:57', '数据映射配置');
INSERT INTO `sys_menu` VALUES (3008, '映射查询', 3007, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:mapping:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3009, '映射新增', 3007, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:mapping:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3010, '映射修改', 3007, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:mapping:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3011, '映射删除', 3007, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:mapping:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3012, '同步任务', 3000, 3, 'syncTask', 'drm/datasource/syncTask', '', 1, 0, 'C', '0', '0', 'drm:datasource:sync', 'redis-list', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:58:05', '同步任务管理');
INSERT INTO `sys_menu` VALUES (3013, '任务查询', 3012, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:sync:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3014, '任务新增', 3012, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:sync:add', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3015, '任务修改', 3012, 3, '', '', '', 1, 0, 'F', '0', '0', 'drm:sync:edit', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3016, '任务删除', 3012, 4, '', '', '', 1, 0, 'F', '0', '0', 'drm:sync:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3017, '任务执行', 3012, 5, '', '', '', 1, 0, 'F', '0', '0', 'drm:sync:execute', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3018, '数据质量', 3000, 4, 'dataQuality', 'drm/datasource/dataQuality', '', 1, 0, 'C', '0', '0', 'drm:datasource:quality', 'example', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:58:23', '数据质量管理');
INSERT INTO `sys_menu` VALUES (3019, '质量查询', 3018, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:quality:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3020, '质量检查', 3018, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:quality:check', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3021, '数据血缘', 3000, 5, 'dataLineage', 'drm/datasource/dataLineage', '', 1, 0, 'C', '0', '0', 'drm:datasource:lineage', 'form', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:58:36', '数据血缘');
INSERT INTO `sys_menu` VALUES (3100, '移动端', 0, 12, 'mobile', NULL, '', 1, 0, 'M', '1', '0', '', 'mobile', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 12:50:52', '移动端目录');
INSERT INTO `sys_menu` VALUES (3101, '移动驾驶舱', 3100, 1, 'mobileCockpit', 'drm/mobile/mobileCockpit', '', 1, 0, 'C', '0', '0', 'drm:mobile:cockpit', 'dashboard', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '移动驾驶舱');
INSERT INTO `sys_menu` VALUES (3102, '移动报表', 3100, 2, 'mobileReport', 'drm/mobile/mobileReport', '', 1, 0, 'C', '0', '0', 'drm:mobile:report', 'document', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '移动报表');
INSERT INTO `sys_menu` VALUES (3103, '移动预警', 3100, 3, 'mobileWarning', 'drm/mobile/mobileWarning', '', 1, 0, 'C', '0', '0', 'drm:mobile:warning', 'alarm', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '移动预警');
INSERT INTO `sys_menu` VALUES (3104, '移动AI', 3100, 4, 'mobileAi', 'drm/mobile/mobileAi', '', 1, 0, 'C', '0', '0', 'drm:mobile:ai', 'ai', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '移动AI助手');
INSERT INTO `sys_menu` VALUES (3105, '消息中心', 3100, 5, 'mobileMessage', 'drm/mobile/mobileMessage', '', 1, 0, 'C', '0', '0', 'drm:mobile:message', 'message', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '消息中心');
INSERT INTO `sys_menu` VALUES (3106, '消息查询', 3105, 1, '', '', '', 1, 0, 'F', '0', '0', 'drm:message:query', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3107, '消息删除', 3105, 2, '', '', '', 1, 0, 'F', '0', '0', 'drm:message:remove', '#', 'admin', '2026-05-24 02:52:28', 'admin', '2026-05-24 02:52:28', '');
INSERT INTO `sys_menu` VALUES (3108, '成本分摊', 2300, 6, '', '', '', 1, 0, 'C', '1', '1', 'drm:cost:alloc', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3109, 'AI配置', 2800, 6, '', '', '', 1, 0, 'C', '1', '1', 'drm:ai:config', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3110, '预警中心', 2000, 8, '', '', '', 1, 0, 'C', '1', '1', 'drm:warning', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3111, 'DRG数据查询', 2501, 2, '', '', '', 1, 0, 'F', '1', '1', 'drm:drg:data:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3112, 'DRG分析查询', 2507, 3, '', '', '', 1, 0, 'F', '1', '1', 'drm:drg:analysis:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3113, '成本数据查询', 2301, 2, '', '', '', 1, 0, 'F', '1', '1', 'drm:cost:data:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3114, '成本分摊查询', 3108, 1, '', '', '', 1, 0, 'F', '1', '1', 'drm:cost:alloc:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3115, '绩效计划查询', 2401, 2, '', '', '', 1, 0, 'F', '1', '1', 'drm:perf:plan:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3116, '绩效结果查询', 2410, 2, '', '', '', 1, 0, 'F', '1', '1', 'drm:perf:result:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3117, '预警查询', 3110, 1, '', '', '', 1, 0, 'F', '1', '1', 'drm:warning:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3118, 'AI配置查询', 3109, 1, '', '', '', 1, 0, 'F', '1', '1', 'drm:ai:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3119, 'AI对话查询', 2801, 2, '', '', '', 1, 0, 'F', '1', '1', 'drm:ai:chat:query', '#', 'admin', '2026-05-24 10:06:20', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/cockpit/index\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"dashboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"驾驶舱首页\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"cockpitIndex\",\"perms\":\"drm:cockpit:index\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:48:39', 55);
INSERT INTO `sys_oper_log` VALUES (2, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2200,\"menuName\":\"财务管控\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"finance\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:49:01', 31);
INSERT INTO `sys_oper_log` VALUES (3, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2300,\"menuName\":\"成本核算\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"cost\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:49:12', 33);
INSERT INTO `sys_oper_log` VALUES (4, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2400,\"menuName\":\"绩效管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"performance\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:49:22', 30);
INSERT INTO `sys_oper_log` VALUES (5, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2500,\"menuName\":\"DRG分析\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"drg\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:49:35', 69);
INSERT INTO `sys_oper_log` VALUES (6, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2600,\"menuName\":\"预算管理\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"budget\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:49:48', 26);
INSERT INTO `sys_oper_log` VALUES (7, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2700,\"menuName\":\"医疗质量\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"quality\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:50:00', 34);
INSERT INTO `sys_oper_log` VALUES (8, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"eye-open\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2800,\"menuName\":\"AI智能助手\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"ai\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:50:17', 27);
INSERT INTO `sys_oper_log` VALUES (9, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"redis\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2900,\"menuName\":\"知识库管理\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"knowledge\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:50:34', 22);
INSERT INTO `sys_oper_log` VALUES (10, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"tree-table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3000,\"menuName\":\"数据源管理\",\"menuType\":\"M\",\"orderNum\":11,\"params\":{},\"parentId\":0,\"path\":\"datasource\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:50:46', 18);
INSERT INTO `sys_oper_log` VALUES (11, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"mobile\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3100,\"menuName\":\"移动端\",\"menuType\":\"M\",\"orderNum\":12,\"params\":{},\"parentId\":0,\"path\":\"mobile\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:50:52', 30);
INSERT INTO `sys_oper_log` VALUES (12, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-06-08 02:58:22\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"智脑科技\",\"menuType\":\"M\",\"orderNum\":14,\"params\":{},\"parentId\":0,\"path\":\"http://ai58.com\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:50:57', 23);
INSERT INTO `sys_oper_log` VALUES (13, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/cockpit/costOverview\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2005,\"menuName\":\"成本概览\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2000,\"path\":\"costOverview\",\"perms\":\"drm:cockpit:costOverview\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:51:44', 26);
INSERT INTO `sys_oper_log` VALUES (14, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/cockpit/warningCenter\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"预警中心\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2000,\"path\":\"warningCenter\",\"perms\":\"drm:cockpit:warningCenter\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:51:53', 19);
INSERT INTO `sys_oper_log` VALUES (15, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/operation/outpatient\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2101,\"menuName\":\"门诊分析\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2100,\"path\":\"outpatient\",\"perms\":\"drm:operation:outpatient\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:52:28', 62);
INSERT INTO `sys_oper_log` VALUES (16, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/operation/inpatient\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2104,\"menuName\":\"住院分析\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2100,\"path\":\"inpatient\",\"perms\":\"drm:operation:inpatient\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:52:35', 27);
INSERT INTO `sys_oper_log` VALUES (17, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/operation/surgery\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2107,\"menuName\":\"手术分析\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2100,\"path\":\"surgery\",\"perms\":\"drm:operation:surgery\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:52:43', 21);
INSERT INTO `sys_oper_log` VALUES (18, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/operation/comprehensive\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"redis-list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2110,\"menuName\":\"综合分析\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2100,\"path\":\"comprehensive\",\"perms\":\"drm:operation:comprehensive\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:52:54', 29);
INSERT INTO `sys_oper_log` VALUES (19, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/operation/report\",\"createTime\":\"2026-05-24 02:52:27\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2111,\"menuName\":\"运营报告\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2100,\"path\":\"report\",\"perms\":\"drm:operation:report\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:53:03', 24);
INSERT INTO `sys_oper_log` VALUES (20, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/finance/balance\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2213,\"menuName\":\"收支分析\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2200,\"path\":\"balance\",\"perms\":\"drm:finance:balance\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:53:12', 26);
INSERT INTO `sys_oper_log` VALUES (21, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/finance/expense\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2207,\"menuName\":\"支出管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2200,\"path\":\"expense\",\"perms\":\"drm:finance:expense\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:53:21', 41);
INSERT INTO `sys_oper_log` VALUES (22, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/finance/receivable\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2214,\"menuName\":\"应收账款\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2200,\"path\":\"receivable\",\"perms\":\"drm:finance:receivable\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:53:33', 23);
INSERT INTO `sys_oper_log` VALUES (23, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/cost/projectCost\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"date-range\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2307,\"menuName\":\"项目成本\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2300,\"path\":\"projectCost\",\"perms\":\"drm:cost:project\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:53:48', 21);
INSERT INTO `sys_oper_log` VALUES (24, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/cost/caseCost\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2308,\"menuName\":\"病种成本\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2300,\"path\":\"caseCost\",\"perms\":\"drm:cost:case\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:53:57', 22);
INSERT INTO `sys_oper_log` VALUES (25, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/performance/perfPlan\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2401,\"menuName\":\"绩效方案\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2400,\"path\":\"perfPlan\",\"perms\":\"drm:perf:plan\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:54:11', 22);
INSERT INTO `sys_oper_log` VALUES (26, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/performance/rbrvs\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2406,\"menuName\":\"RBRVS核算\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2400,\"path\":\"rbrvs\",\"perms\":\"drm:perf:rbrvs\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:54:19', 25);
INSERT INTO `sys_oper_log` VALUES (27, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/performance/qualityPerf\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2408,\"menuName\":\"质量绩效\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2400,\"path\":\"qualityPerf\",\"perms\":\"drm:perf:quality\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:54:27', 22);
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/performance/efficiencyPerf\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2409,\"menuName\":\"效率绩效\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2400,\"path\":\"efficiencyPerf\",\"perms\":\"drm:perf:efficiency\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:54:35', 33);
INSERT INTO `sys_oper_log` VALUES (29, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/performance/perfResult\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2410,\"menuName\":\"绩效结果\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2400,\"path\":\"perfResult\",\"perms\":\"drm:perf:result\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:54:43', 19);
INSERT INTO `sys_oper_log` VALUES (30, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/performance/perfReport\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2411,\"menuName\":\"绩效报表\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":2400,\"path\":\"perfReport\",\"perms\":\"drm:perf:report\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:54:51', 22);
INSERT INTO `sys_oper_log` VALUES (31, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/budget/budgetExecute\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2607,\"menuName\":\"预算执行\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2600,\"path\":\"budgetExecute\",\"perms\":\"drm:budget:execute\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:55:03', 25);
INSERT INTO `sys_oper_log` VALUES (32, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/budget/budgetExecute\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2607,\"menuName\":\"预算执行\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2600,\"path\":\"budgetExecute\",\"perms\":\"drm:budget:execute\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:55:10', 23);
INSERT INTO `sys_oper_log` VALUES (33, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/budget/budgetAnalysis\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2608,\"menuName\":\"预算分析\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2600,\"path\":\"budgetAnalysis\",\"perms\":\"drm:budget:analysis\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:55:16', 16);
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/budget/rollingBudget\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"swagger\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2609,\"menuName\":\"滚动预算\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2600,\"path\":\"rollingBudget\",\"perms\":\"drm:budget:rolling\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:55:24', 19);
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/quality/medicalRecord\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2706,\"menuName\":\"病历质控\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2700,\"path\":\"medicalRecord\",\"perms\":\"drm:quality:record\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:55:34', 19);
INSERT INTO `sys_oper_log` VALUES (36, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/quality/prescription\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"nested\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2707,\"menuName\":\"处方点评\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2700,\"path\":\"prescription\",\"perms\":\"drm:quality:prescription\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:55:41', 37);
INSERT INTO `sys_oper_log` VALUES (37, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/quality/adverseEvent\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2711,\"menuName\":\"不良事件\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2700,\"path\":\"adverseEvent\",\"perms\":\"drm:quality:event\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:55:52', 48);
INSERT INTO `sys_oper_log` VALUES (38, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/quality/infection\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2716,\"menuName\":\"院感监控\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2700,\"path\":\"infection\",\"perms\":\"drm:quality:infection\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:56:00', 17);
INSERT INTO `sys_oper_log` VALUES (39, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/quality/infection\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2716,\"menuName\":\"院感监控\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2700,\"path\":\"infection\",\"perms\":\"drm:quality:infection\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:56:07', 24);
INSERT INTO `sys_oper_log` VALUES (40, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/ai/aiChat\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"number\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2801,\"menuName\":\"智能问答\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2800,\"path\":\"aiChat\",\"perms\":\"drm:ai:chat\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:56:18', 20);
INSERT INTO `sys_oper_log` VALUES (41, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/ai/aiReport\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2802,\"menuName\":\"报告生成\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2800,\"path\":\"aiReport\",\"perms\":\"drm:ai:report\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:56:26', 23);
INSERT INTO `sys_oper_log` VALUES (42, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/ai/aiChat\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2801,\"menuName\":\"智能问答\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2800,\"path\":\"aiChat\",\"perms\":\"drm:ai:chat\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:56:37', 20);
INSERT INTO `sys_oper_log` VALUES (43, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/ai/aiWarning\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2805,\"menuName\":\"智能预警\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2800,\"path\":\"aiWarning\",\"perms\":\"drm:ai:warning\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:56:47', 23);
INSERT INTO `sys_oper_log` VALUES (44, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/ai/aiAnalysis\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"question\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2806,\"menuName\":\"归因分析\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2800,\"path\":\"aiAnalysis\",\"perms\":\"drm:ai:analysis\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:56:57', 18);
INSERT INTO `sys_oper_log` VALUES (45, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/knowledge/knowledgeContent\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2906,\"menuName\":\"知识内容\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2900,\"path\":\"knowledgeContent\",\"perms\":\"drm:knowledge:content\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:57:14', 23);
INSERT INTO `sys_oper_log` VALUES (46, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/knowledge/knowledgeGraph\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2911,\"menuName\":\"知识图谱\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2900,\"path\":\"knowledgeGraph\",\"perms\":\"drm:knowledge:graph\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:57:22', 17);
INSERT INTO `sys_oper_log` VALUES (47, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/knowledge/knowledgeGraph\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"nested\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2911,\"menuName\":\"知识图谱\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2900,\"path\":\"knowledgeGraph\",\"perms\":\"drm:knowledge:graph\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:57:29', 27);
INSERT INTO `sys_oper_log` VALUES (48, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/knowledge/aiqaConfig\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2912,\"menuName\":\"问答配置\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2900,\"path\":\"aiqaConfig\",\"perms\":\"drm:knowledge:qaConfig\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:57:42', 23);
INSERT INTO `sys_oper_log` VALUES (49, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/datasource/dataMapping\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"swagger\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3007,\"menuName\":\"数据映射\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":3000,\"path\":\"dataMapping\",\"perms\":\"drm:datasource:mapping\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:57:57', 18);
INSERT INTO `sys_oper_log` VALUES (50, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/datasource/syncTask\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"redis-list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3012,\"menuName\":\"同步任务\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":3000,\"path\":\"syncTask\",\"perms\":\"drm:datasource:sync\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:58:05', 22);
INSERT INTO `sys_oper_log` VALUES (51, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/datasource/dataQuality\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"redis-list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3018,\"menuName\":\"数据质量\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":3000,\"path\":\"dataQuality\",\"perms\":\"drm:datasource:quality\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:58:16', 21);
INSERT INTO `sys_oper_log` VALUES (52, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/datasource/dataQuality\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3018,\"menuName\":\"数据质量\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":3000,\"path\":\"dataQuality\",\"perms\":\"drm:datasource:quality\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:58:23', 19);
INSERT INTO `sys_oper_log` VALUES (53, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/datasource/dataLineage\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3021,\"menuName\":\"数据血缘\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":3000,\"path\":\"dataLineage\",\"perms\":\"drm:datasource:lineage\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 12:58:36', 24);
INSERT INTO `sys_oper_log` VALUES (54, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/drg/drgData\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2501,\"menuName\":\"DRG数据\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2500,\"path\":\"drgData\",\"perms\":\"drm:drg:data\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 14:29:12', 44);
INSERT INTO `sys_oper_log` VALUES (55, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/drg/drgAnalysis\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2507,\"menuName\":\"综合分析\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2500,\"path\":\"drgAnalysis\",\"perms\":\"drm:drg:analysis\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 14:29:28', 24);
INSERT INTO `sys_oper_log` VALUES (56, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/drg/drgGroup\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"tree-table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2509,\"menuName\":\"病组分析\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2500,\"path\":\"drgGroup\",\"perms\":\"drm:drg:group\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 14:29:41', 28);
INSERT INTO `sys_oper_log` VALUES (57, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/drg/drgDoctor\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2510,\"menuName\":\"医师分析\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2500,\"path\":\"drgDoctor\",\"perms\":\"drm:drg:doctor\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 14:29:57', 23);
INSERT INTO `sys_oper_log` VALUES (58, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/drg/drgProfit\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2511,\"menuName\":\"盈亏分析\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2500,\"path\":\"drgProfit\",\"perms\":\"drm:drg:profit\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 14:30:06', 20);
INSERT INTO `sys_oper_log` VALUES (59, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"drm/drg/drgReport\",\"createTime\":\"2026-05-24 02:52:28\",\"icon\":\"number\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2512,\"menuName\":\"DRG报表\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":2500,\"path\":\"drgReport\",\"perms\":\"drm:drg:report\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 14:30:18', 26);
INSERT INTO `sys_oper_log` VALUES (60, '菜单管理', 2, 'com.ai58.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '116.147.108.148', 'XX XX', '{\"children\":[],\"createTime\":\"2026-05-23 18:52:27\",\"icon\":\"dashboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"院长工作台\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"cockpit\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-24 14:59:00', 47);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (3, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2026-05-24 03:02:19', '', NULL, '系统超级管理员');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 2);
INSERT INTO `sys_role_menu` VALUES (3, 3);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 100);
INSERT INTO `sys_role_menu` VALUES (3, 101);
INSERT INTO `sys_role_menu` VALUES (3, 102);
INSERT INTO `sys_role_menu` VALUES (3, 103);
INSERT INTO `sys_role_menu` VALUES (3, 104);
INSERT INTO `sys_role_menu` VALUES (3, 105);
INSERT INTO `sys_role_menu` VALUES (3, 106);
INSERT INTO `sys_role_menu` VALUES (3, 107);
INSERT INTO `sys_role_menu` VALUES (3, 108);
INSERT INTO `sys_role_menu` VALUES (3, 109);
INSERT INTO `sys_role_menu` VALUES (3, 110);
INSERT INTO `sys_role_menu` VALUES (3, 111);
INSERT INTO `sys_role_menu` VALUES (3, 112);
INSERT INTO `sys_role_menu` VALUES (3, 113);
INSERT INTO `sys_role_menu` VALUES (3, 114);
INSERT INTO `sys_role_menu` VALUES (3, 115);
INSERT INTO `sys_role_menu` VALUES (3, 116);
INSERT INTO `sys_role_menu` VALUES (3, 117);
INSERT INTO `sys_role_menu` VALUES (3, 500);
INSERT INTO `sys_role_menu` VALUES (3, 501);
INSERT INTO `sys_role_menu` VALUES (3, 1000);
INSERT INTO `sys_role_menu` VALUES (3, 1001);
INSERT INTO `sys_role_menu` VALUES (3, 1002);
INSERT INTO `sys_role_menu` VALUES (3, 1003);
INSERT INTO `sys_role_menu` VALUES (3, 1004);
INSERT INTO `sys_role_menu` VALUES (3, 1005);
INSERT INTO `sys_role_menu` VALUES (3, 1006);
INSERT INTO `sys_role_menu` VALUES (3, 1007);
INSERT INTO `sys_role_menu` VALUES (3, 1008);
INSERT INTO `sys_role_menu` VALUES (3, 1009);
INSERT INTO `sys_role_menu` VALUES (3, 1010);
INSERT INTO `sys_role_menu` VALUES (3, 1011);
INSERT INTO `sys_role_menu` VALUES (3, 1012);
INSERT INTO `sys_role_menu` VALUES (3, 1013);
INSERT INTO `sys_role_menu` VALUES (3, 1014);
INSERT INTO `sys_role_menu` VALUES (3, 1015);
INSERT INTO `sys_role_menu` VALUES (3, 1016);
INSERT INTO `sys_role_menu` VALUES (3, 1017);
INSERT INTO `sys_role_menu` VALUES (3, 1018);
INSERT INTO `sys_role_menu` VALUES (3, 1019);
INSERT INTO `sys_role_menu` VALUES (3, 1020);
INSERT INTO `sys_role_menu` VALUES (3, 1021);
INSERT INTO `sys_role_menu` VALUES (3, 1022);
INSERT INTO `sys_role_menu` VALUES (3, 1023);
INSERT INTO `sys_role_menu` VALUES (3, 1024);
INSERT INTO `sys_role_menu` VALUES (3, 1025);
INSERT INTO `sys_role_menu` VALUES (3, 1026);
INSERT INTO `sys_role_menu` VALUES (3, 1027);
INSERT INTO `sys_role_menu` VALUES (3, 1028);
INSERT INTO `sys_role_menu` VALUES (3, 1029);
INSERT INTO `sys_role_menu` VALUES (3, 1030);
INSERT INTO `sys_role_menu` VALUES (3, 1031);
INSERT INTO `sys_role_menu` VALUES (3, 1032);
INSERT INTO `sys_role_menu` VALUES (3, 1033);
INSERT INTO `sys_role_menu` VALUES (3, 1034);
INSERT INTO `sys_role_menu` VALUES (3, 1035);
INSERT INTO `sys_role_menu` VALUES (3, 1036);
INSERT INTO `sys_role_menu` VALUES (3, 1037);
INSERT INTO `sys_role_menu` VALUES (3, 1038);
INSERT INTO `sys_role_menu` VALUES (3, 1039);
INSERT INTO `sys_role_menu` VALUES (3, 1040);
INSERT INTO `sys_role_menu` VALUES (3, 1041);
INSERT INTO `sys_role_menu` VALUES (3, 1042);
INSERT INTO `sys_role_menu` VALUES (3, 1043);
INSERT INTO `sys_role_menu` VALUES (3, 1044);
INSERT INTO `sys_role_menu` VALUES (3, 1045);
INSERT INTO `sys_role_menu` VALUES (3, 1046);
INSERT INTO `sys_role_menu` VALUES (3, 1047);
INSERT INTO `sys_role_menu` VALUES (3, 1048);
INSERT INTO `sys_role_menu` VALUES (3, 1049);
INSERT INTO `sys_role_menu` VALUES (3, 1050);
INSERT INTO `sys_role_menu` VALUES (3, 1051);
INSERT INTO `sys_role_menu` VALUES (3, 1052);
INSERT INTO `sys_role_menu` VALUES (3, 1053);
INSERT INTO `sys_role_menu` VALUES (3, 1054);
INSERT INTO `sys_role_menu` VALUES (3, 1055);
INSERT INTO `sys_role_menu` VALUES (3, 1056);
INSERT INTO `sys_role_menu` VALUES (3, 1057);
INSERT INTO `sys_role_menu` VALUES (3, 1058);
INSERT INTO `sys_role_menu` VALUES (3, 1059);
INSERT INTO `sys_role_menu` VALUES (3, 1060);
INSERT INTO `sys_role_menu` VALUES (3, 2000);
INSERT INTO `sys_role_menu` VALUES (3, 2001);
INSERT INTO `sys_role_menu` VALUES (3, 2002);
INSERT INTO `sys_role_menu` VALUES (3, 2003);
INSERT INTO `sys_role_menu` VALUES (3, 2004);
INSERT INTO `sys_role_menu` VALUES (3, 2005);
INSERT INTO `sys_role_menu` VALUES (3, 2006);
INSERT INTO `sys_role_menu` VALUES (3, 2007);
INSERT INTO `sys_role_menu` VALUES (3, 2008);
INSERT INTO `sys_role_menu` VALUES (3, 2009);
INSERT INTO `sys_role_menu` VALUES (3, 2010);
INSERT INTO `sys_role_menu` VALUES (3, 2011);
INSERT INTO `sys_role_menu` VALUES (3, 2012);
INSERT INTO `sys_role_menu` VALUES (3, 2100);
INSERT INTO `sys_role_menu` VALUES (3, 2101);
INSERT INTO `sys_role_menu` VALUES (3, 2102);
INSERT INTO `sys_role_menu` VALUES (3, 2103);
INSERT INTO `sys_role_menu` VALUES (3, 2104);
INSERT INTO `sys_role_menu` VALUES (3, 2105);
INSERT INTO `sys_role_menu` VALUES (3, 2106);
INSERT INTO `sys_role_menu` VALUES (3, 2107);
INSERT INTO `sys_role_menu` VALUES (3, 2108);
INSERT INTO `sys_role_menu` VALUES (3, 2109);
INSERT INTO `sys_role_menu` VALUES (3, 2110);
INSERT INTO `sys_role_menu` VALUES (3, 2111);
INSERT INTO `sys_role_menu` VALUES (3, 2112);
INSERT INTO `sys_role_menu` VALUES (3, 2113);
INSERT INTO `sys_role_menu` VALUES (3, 2114);
INSERT INTO `sys_role_menu` VALUES (3, 2115);
INSERT INTO `sys_role_menu` VALUES (3, 2116);
INSERT INTO `sys_role_menu` VALUES (3, 2200);
INSERT INTO `sys_role_menu` VALUES (3, 2201);
INSERT INTO `sys_role_menu` VALUES (3, 2202);
INSERT INTO `sys_role_menu` VALUES (3, 2203);
INSERT INTO `sys_role_menu` VALUES (3, 2204);
INSERT INTO `sys_role_menu` VALUES (3, 2205);
INSERT INTO `sys_role_menu` VALUES (3, 2206);
INSERT INTO `sys_role_menu` VALUES (3, 2207);
INSERT INTO `sys_role_menu` VALUES (3, 2208);
INSERT INTO `sys_role_menu` VALUES (3, 2209);
INSERT INTO `sys_role_menu` VALUES (3, 2210);
INSERT INTO `sys_role_menu` VALUES (3, 2211);
INSERT INTO `sys_role_menu` VALUES (3, 2212);
INSERT INTO `sys_role_menu` VALUES (3, 2213);
INSERT INTO `sys_role_menu` VALUES (3, 2214);
INSERT INTO `sys_role_menu` VALUES (3, 2215);
INSERT INTO `sys_role_menu` VALUES (3, 2216);
INSERT INTO `sys_role_menu` VALUES (3, 2217);
INSERT INTO `sys_role_menu` VALUES (3, 2218);
INSERT INTO `sys_role_menu` VALUES (3, 2219);
INSERT INTO `sys_role_menu` VALUES (3, 2300);
INSERT INTO `sys_role_menu` VALUES (3, 2301);
INSERT INTO `sys_role_menu` VALUES (3, 2302);
INSERT INTO `sys_role_menu` VALUES (3, 2303);
INSERT INTO `sys_role_menu` VALUES (3, 2304);
INSERT INTO `sys_role_menu` VALUES (3, 2305);
INSERT INTO `sys_role_menu` VALUES (3, 2306);
INSERT INTO `sys_role_menu` VALUES (3, 2307);
INSERT INTO `sys_role_menu` VALUES (3, 2308);
INSERT INTO `sys_role_menu` VALUES (3, 2309);
INSERT INTO `sys_role_menu` VALUES (3, 2400);
INSERT INTO `sys_role_menu` VALUES (3, 2401);
INSERT INTO `sys_role_menu` VALUES (3, 2402);
INSERT INTO `sys_role_menu` VALUES (3, 2403);
INSERT INTO `sys_role_menu` VALUES (3, 2404);
INSERT INTO `sys_role_menu` VALUES (3, 2405);
INSERT INTO `sys_role_menu` VALUES (3, 2406);
INSERT INTO `sys_role_menu` VALUES (3, 2407);
INSERT INTO `sys_role_menu` VALUES (3, 2408);
INSERT INTO `sys_role_menu` VALUES (3, 2409);
INSERT INTO `sys_role_menu` VALUES (3, 2410);
INSERT INTO `sys_role_menu` VALUES (3, 2411);
INSERT INTO `sys_role_menu` VALUES (3, 2500);
INSERT INTO `sys_role_menu` VALUES (3, 2501);
INSERT INTO `sys_role_menu` VALUES (3, 2502);
INSERT INTO `sys_role_menu` VALUES (3, 2503);
INSERT INTO `sys_role_menu` VALUES (3, 2504);
INSERT INTO `sys_role_menu` VALUES (3, 2505);
INSERT INTO `sys_role_menu` VALUES (3, 2506);
INSERT INTO `sys_role_menu` VALUES (3, 2507);
INSERT INTO `sys_role_menu` VALUES (3, 2508);
INSERT INTO `sys_role_menu` VALUES (3, 2509);
INSERT INTO `sys_role_menu` VALUES (3, 2510);
INSERT INTO `sys_role_menu` VALUES (3, 2511);
INSERT INTO `sys_role_menu` VALUES (3, 2512);
INSERT INTO `sys_role_menu` VALUES (3, 2600);
INSERT INTO `sys_role_menu` VALUES (3, 2601);
INSERT INTO `sys_role_menu` VALUES (3, 2602);
INSERT INTO `sys_role_menu` VALUES (3, 2603);
INSERT INTO `sys_role_menu` VALUES (3, 2604);
INSERT INTO `sys_role_menu` VALUES (3, 2605);
INSERT INTO `sys_role_menu` VALUES (3, 2606);
INSERT INTO `sys_role_menu` VALUES (3, 2607);
INSERT INTO `sys_role_menu` VALUES (3, 2608);
INSERT INTO `sys_role_menu` VALUES (3, 2609);
INSERT INTO `sys_role_menu` VALUES (3, 2700);
INSERT INTO `sys_role_menu` VALUES (3, 2701);
INSERT INTO `sys_role_menu` VALUES (3, 2702);
INSERT INTO `sys_role_menu` VALUES (3, 2703);
INSERT INTO `sys_role_menu` VALUES (3, 2704);
INSERT INTO `sys_role_menu` VALUES (3, 2705);
INSERT INTO `sys_role_menu` VALUES (3, 2706);
INSERT INTO `sys_role_menu` VALUES (3, 2707);
INSERT INTO `sys_role_menu` VALUES (3, 2708);
INSERT INTO `sys_role_menu` VALUES (3, 2709);
INSERT INTO `sys_role_menu` VALUES (3, 2710);
INSERT INTO `sys_role_menu` VALUES (3, 2711);
INSERT INTO `sys_role_menu` VALUES (3, 2712);
INSERT INTO `sys_role_menu` VALUES (3, 2713);
INSERT INTO `sys_role_menu` VALUES (3, 2714);
INSERT INTO `sys_role_menu` VALUES (3, 2715);
INSERT INTO `sys_role_menu` VALUES (3, 2716);
INSERT INTO `sys_role_menu` VALUES (3, 2717);
INSERT INTO `sys_role_menu` VALUES (3, 2800);
INSERT INTO `sys_role_menu` VALUES (3, 2801);
INSERT INTO `sys_role_menu` VALUES (3, 2802);
INSERT INTO `sys_role_menu` VALUES (3, 2803);
INSERT INTO `sys_role_menu` VALUES (3, 2804);
INSERT INTO `sys_role_menu` VALUES (3, 2805);
INSERT INTO `sys_role_menu` VALUES (3, 2806);
INSERT INTO `sys_role_menu` VALUES (3, 2807);
INSERT INTO `sys_role_menu` VALUES (3, 2900);
INSERT INTO `sys_role_menu` VALUES (3, 2901);
INSERT INTO `sys_role_menu` VALUES (3, 2902);
INSERT INTO `sys_role_menu` VALUES (3, 2903);
INSERT INTO `sys_role_menu` VALUES (3, 2904);
INSERT INTO `sys_role_menu` VALUES (3, 2905);
INSERT INTO `sys_role_menu` VALUES (3, 2906);
INSERT INTO `sys_role_menu` VALUES (3, 2907);
INSERT INTO `sys_role_menu` VALUES (3, 2908);
INSERT INTO `sys_role_menu` VALUES (3, 2909);
INSERT INTO `sys_role_menu` VALUES (3, 2910);
INSERT INTO `sys_role_menu` VALUES (3, 2911);
INSERT INTO `sys_role_menu` VALUES (3, 2912);
INSERT INTO `sys_role_menu` VALUES (3, 3000);
INSERT INTO `sys_role_menu` VALUES (3, 3001);
INSERT INTO `sys_role_menu` VALUES (3, 3002);
INSERT INTO `sys_role_menu` VALUES (3, 3003);
INSERT INTO `sys_role_menu` VALUES (3, 3004);
INSERT INTO `sys_role_menu` VALUES (3, 3005);
INSERT INTO `sys_role_menu` VALUES (3, 3006);
INSERT INTO `sys_role_menu` VALUES (3, 3007);
INSERT INTO `sys_role_menu` VALUES (3, 3008);
INSERT INTO `sys_role_menu` VALUES (3, 3009);
INSERT INTO `sys_role_menu` VALUES (3, 3010);
INSERT INTO `sys_role_menu` VALUES (3, 3011);
INSERT INTO `sys_role_menu` VALUES (3, 3012);
INSERT INTO `sys_role_menu` VALUES (3, 3013);
INSERT INTO `sys_role_menu` VALUES (3, 3014);
INSERT INTO `sys_role_menu` VALUES (3, 3015);
INSERT INTO `sys_role_menu` VALUES (3, 3016);
INSERT INTO `sys_role_menu` VALUES (3, 3017);
INSERT INTO `sys_role_menu` VALUES (3, 3018);
INSERT INTO `sys_role_menu` VALUES (3, 3019);
INSERT INTO `sys_role_menu` VALUES (3, 3020);
INSERT INTO `sys_role_menu` VALUES (3, 3021);
INSERT INTO `sys_role_menu` VALUES (3, 3100);
INSERT INTO `sys_role_menu` VALUES (3, 3101);
INSERT INTO `sys_role_menu` VALUES (3, 3102);
INSERT INTO `sys_role_menu` VALUES (3, 3103);
INSERT INTO `sys_role_menu` VALUES (3, 3104);
INSERT INTO `sys_role_menu` VALUES (3, 3105);
INSERT INTO `sys_role_menu` VALUES (3, 3106);
INSERT INTO `sys_role_menu` VALUES (3, 3107);
INSERT INTO `sys_role_menu` VALUES (3, 3108);
INSERT INTO `sys_role_menu` VALUES (3, 3109);
INSERT INTO `sys_role_menu` VALUES (3, 3110);
INSERT INTO `sys_role_menu` VALUES (3, 3111);
INSERT INTO `sys_role_menu` VALUES (3, 3112);
INSERT INTO `sys_role_menu` VALUES (3, 3113);
INSERT INTO `sys_role_menu` VALUES (3, 3114);
INSERT INTO `sys_role_menu` VALUES (3, 3115);
INSERT INTO `sys_role_menu` VALUES (3, 3116);
INSERT INTO `sys_role_menu` VALUES (3, 3117);
INSERT INTO `sys_role_menu` VALUES (3, 3118);
INSERT INTO `sys_role_menu` VALUES (3, 3119);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (3, NULL, 'admin', '管理员', '00', 'admin@example.com', '13800138000', '0', '', '$2b$12$ZbIjnA4R.Ehkdb.6drjUkuolGi9VJJL0ih110sRt62adeThyxbbIy', '0', '0', '127.0.0.1', '2026-05-24 23:22:59', 'admin', '2026-05-24 02:59:28', 'admin', '2026-05-24 15:22:59', '系统管理员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (3, 3);

SET FOREIGN_KEY_CHECKS = 1;
