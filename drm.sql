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

 Date: 24/05/2026 22:40:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drm_ai_chat_log
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_chat_log`;
CREATE TABLE `drm_ai_chat_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '问题',
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回答',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '提问时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'AI问答日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_ai_chat_log
-- ----------------------------
INSERT INTO `drm_ai_chat_log` VALUES (1, '手术收入环比增长了多少？', '根据系统数据分析，泌尿外科的相关指标如下：详细数据请查看对应模块。', '泌尿外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (2, '请预测下个月的门诊量', '根据系统数据分析，ICU的相关指标如下：详细数据请查看对应模块。', 'ICU', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (3, '本月门诊收入最高的科室是哪个？', '根据系统数据分析，泌尿外科的相关指标如下：详细数据请查看对应模块。', '泌尿外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (4, '本月门诊收入最高的科室是哪个？', '根据系统数据分析，神经内科的相关指标如下：详细数据请查看对应模块。', '神经内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (5, '住院患者平均住院日是多少天？', '根据系统数据分析，儿科的相关指标如下：详细数据请查看对应模块。', '儿科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (6, '住院患者平均住院日是多少天？', '根据系统数据分析，消化内科的相关指标如下：详细数据请查看对应模块。', '消化内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (7, '请预测下个月的门诊量', '根据系统数据分析，心内科的相关指标如下：详细数据请查看对应模块。', '心内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (8, '请预测下个月的门诊量', '根据系统数据分析，泌尿外科的相关指标如下：详细数据请查看对应模块。', '泌尿外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (9, '药品不良反应事件有哪些？', '根据系统数据分析，妇产科的相关指标如下：详细数据请查看对应模块。', '妇产科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (10, 'DRG分析中费用超支的病组有哪些？', '根据系统数据分析，心内科的相关指标如下：详细数据请查看对应模块。', '心内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (11, 'DRG分析中费用超支的病组有哪些？', '根据系统数据分析，泌尿外科的相关指标如下：详细数据请查看对应模块。', '泌尿外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (12, 'DRG分析中费用超支的病组有哪些？', '根据系统数据分析，妇产科的相关指标如下：详细数据请查看对应模块。', '妇产科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (13, 'DRG分析中费用超支的病组有哪些？', '根据系统数据分析，心内科的相关指标如下：详细数据请查看对应模块。', '心内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (14, '本月质量指标达标情况如何？', '根据系统数据分析，消化内科的相关指标如下：详细数据请查看对应模块。', '消化内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (15, '药品不良反应事件有哪些？', '根据系统数据分析，妇产科的相关指标如下：详细数据请查看对应模块。', '妇产科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (16, '住院患者平均住院日是多少天？', '根据系统数据分析，呼吸内科的相关指标如下：详细数据请查看对应模块。', '呼吸内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (17, '药品不良反应事件有哪些？', '根据系统数据分析，眼科的相关指标如下：详细数据请查看对应模块。', '眼科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (18, 'DRG分析中费用超支的病组有哪些？', '根据系统数据分析，泌尿外科的相关指标如下：详细数据请查看对应模块。', '泌尿外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (19, '本月门诊收入最高的科室是哪个？', '根据系统数据分析，儿科的相关指标如下：详细数据请查看对应模块。', '儿科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (20, '请分析一下成本分摊情况', '根据系统数据分析，妇产科的相关指标如下：详细数据请查看对应模块。', '妇产科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (21, '药品不良反应事件有哪些？', '根据系统数据分析，内科的相关指标如下：详细数据请查看对应模块。', '内科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (22, '住院患者平均住院日是多少天？', '根据系统数据分析，儿科的相关指标如下：详细数据请查看对应模块。', '儿科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (23, '请预测下个月的门诊量', '根据系统数据分析，外科的相关指标如下：详细数据请查看对应模块。', '外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (24, 'DRG分析中费用超支的病组有哪些？', '根据系统数据分析，皮肤科的相关指标如下：详细数据请查看对应模块。', '皮肤科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (25, '请分析一下成本分摊情况', '根据系统数据分析，中医科的相关指标如下：详细数据请查看对应模块。', '中医科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (26, '请预测下个月的门诊量', '根据系统数据分析，中医科的相关指标如下：详细数据请查看对应模块。', '中医科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (27, 'DRG分析中费用超支的病组有哪些？', '根据系统数据分析，外科的相关指标如下：详细数据请查看对应模块。', '外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (28, '请预测下个月的门诊量', '根据系统数据分析，耳鼻喉科的相关指标如下：详细数据请查看对应模块。', '耳鼻喉科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (29, '药品不良反应事件有哪些？', '根据系统数据分析，耳鼻喉科的相关指标如下：详细数据请查看对应模块。', '耳鼻喉科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);
INSERT INTO `drm_ai_chat_log` VALUES (30, '本月质量指标达标情况如何？', '根据系统数据分析，泌尿外科的相关指标如下：详细数据请查看对应模块。', '泌尿外科', 'admin', '2026-05-24 06:59:11', 'admin', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_ai_config
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_config`;
CREATE TABLE `drm_ai_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置键',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '配置值',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE,
  UNIQUE INDEX `uk_config_key`(`config_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'AI配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_ai_config
-- ----------------------------
INSERT INTO `drm_ai_config` VALUES (1, 'model_provider', 'SiliconFlow', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (2, 'embedding_model', 'BAAI/bge-large-zh-v1.5', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (3, 'chat_model', 'Qwen/Qwen2.5-7B-Instruct', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (4, 'api_endpoint', 'https://api.siliconflow.cn/v1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (5, 'api_key', 'sk-***', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (6, 'vector_enabled', 'true', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (7, 'vector_threshold', '0.75', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (8, 'auto_summary', 'true', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_ai_config` VALUES (9, 'warn_threshold', '0.9', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_big_screen
-- ----------------------------
DROP TABLE IF EXISTS `drm_big_screen`;
CREATE TABLE `drm_big_screen`  (
  `screen_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '大屏ID',
  `screen_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '大屏名称',
  `screen_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '大屏类型',
  `layout_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '布局配置JSON',
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'default' COMMENT '主题样式',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`screen_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '大屏配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_big_screen
-- ----------------------------
INSERT INTO `drm_big_screen` VALUES (1, '门诊实时大屏', 'outpatient', '{\"layouts\":\"grid\",\"refresh\":5}', 'hospital_green', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_big_screen` VALUES (2, '住院实时大屏', 'inpatient', '{\"layouts\":\"grid\",\"refresh\":5}', 'hospital_green', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_big_screen` VALUES (3, '手术实时看板', 'surgery', '{\"layouts\":\"timeline\",\"refresh\":3}', 'hospital_green', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_big_screen` VALUES (4, '收入统计大屏', 'income', '{\"layouts\":\"chart\",\"refresh\":30}', 'hospital_green', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_big_screen` VALUES (5, 'DRG分析看板', 'drg', '{\"layouts\":\"table+chart\",\"refresh\":60}', 'hospital_green', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_big_screen` VALUES (6, '院长驾驶舱', 'dashboard', '{\"layouts\":\"mixed\",\"refresh\":30}', 'hospital_green', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_case_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_case_cost`;
CREATE TABLE `drm_case_cost`  (
  `case_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '病例ID',
  `case_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '病种名称',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `case_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '病种编码',
  `total_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '总成本',
  `drug_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '药品成本',
  `material_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '材料成本',
  `service_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '服务成本',
  `avg_stay_days` int(11) NULL DEFAULT NULL COMMENT '平均住院日',
  `cost_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成本日期',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`case_id`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE,
  INDEX `idx_cost_date`(`cost_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '病种成本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_case_cost
-- ----------------------------
INSERT INTO `drm_case_cost` VALUES (1, '肺炎', '呼吸内科', 'J15.903', 8500.00, 3200.00, 1800.00, 3500.00, 7, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_case_cost` VALUES (2, '糖尿病', '内分泌科', 'E11.901', 9200.00, 3800.00, 2100.00, 3300.00, 8, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_case_cost` VALUES (3, '冠心病', '心血管内科', 'I25.101', 12800.00, 5200.00, 3100.00, 4500.00, 10, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_case_cost` VALUES (4, '骨折', '骨科', 'S72.001', 7800.00, 2500.00, 2200.00, 3100.00, 12, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_case_cost` VALUES (5, '阑尾炎', '普通外科', 'K35.801', 4500.00, 1200.00, 800.00, 2500.00, 5, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);

-- ----------------------------
-- Table structure for drm_cost_allocation
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_allocation`;
CREATE TABLE `drm_cost_allocation`  (
  `allocation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分摊ID',
  `period` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '核算周期',
  `level` int(11) NULL DEFAULT 1 COMMENT '层级',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `direct_cost` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '直接成本',
  `indirect_cost` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '间接成本',
  `total_cost` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '总成本',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`allocation_id`) USING BTREE,
  INDEX `idx_period`(`period`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '成本分摊结果表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_cost_allocation
-- ----------------------------
INSERT INTO `drm_cost_allocation` VALUES (1, '2025-Q1', 1, '中医科', 28468.17, 21131.07, 49599.24, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (2, '2025-Q1', 1, 'ICU', 46121.91, 21774.43, 67896.34, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (3, '2025-Q1', 1, '儿科', 72099.10, 1561.48, 73660.58, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (4, '2025-Q1', 1, '外科', 51658.24, 16729.35, 68387.59, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (5, '2025-Q1', 1, '眼科', 23908.28, 23298.53, 47206.81, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (6, '2025-Q1', 1, '妇产科', 54482.65, 6055.19, 60537.84, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (7, '2025-Q1', 1, '皮肤科', 74367.15, 15507.00, 89874.15, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (8, '2025-Q1', 1, '消化内科', 28534.77, 28747.44, 57282.21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (9, '2025-Q1', 2, '内科', 45005.28, 1655.68, 46660.96, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (10, '2025-Q1', 2, '中医科', 52454.33, 16859.15, 69313.48, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (11, '2025-Q1', 2, '心内科', 30366.55, 21825.06, 52191.61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (12, '2025-Q1', 2, '外科', 21750.64, 4645.86, 26396.50, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (13, '2025-Q1', 2, '皮肤科', 42194.17, 19523.22, 61717.39, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (14, '2025-Q1', 2, '妇产科', 14123.66, 29605.36, 43729.02, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (15, '2025-Q1', 2, '骨科', 31696.66, 25959.03, 57655.69, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (16, '2025-Q1', 2, '儿科', 75024.28, 21184.77, 96209.05, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (17, '2025-Q1', 3, '骨科', 42683.32, 20631.33, 63314.65, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (18, '2025-Q1', 3, '内科', 77853.48, 7209.20, 85062.68, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (19, '2025-Q1', 3, '眼科', 27327.66, 23115.56, 50443.22, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (20, '2025-Q1', 3, '消化内科', 61327.38, 3147.76, 64475.14, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (21, '2025-Q1', 3, '神经内科', 26152.28, 29324.20, 55476.48, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (22, '2025-Q1', 3, '儿科', 33278.02, 8833.60, 42111.62, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (23, '2025-Q1', 3, '呼吸内科', 44463.58, 26205.75, 70669.33, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (24, '2025-Q1', 3, '中医科', 59771.46, 21568.12, 81339.58, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (25, '2025-Q1', 4, '内科', 17813.50, 8786.28, 26599.78, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (26, '2025-Q1', 4, '耳鼻喉科', 38907.42, 4869.96, 43777.38, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (27, '2025-Q1', 4, '外科', 34632.36, 24163.51, 58795.87, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (28, '2025-Q1', 4, 'ICU', 59927.97, 7424.48, 67352.45, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (29, '2025-Q1', 4, '中医科', 73194.53, 19526.75, 92721.28, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (30, '2025-Q1', 4, '呼吸内科', 69765.35, 4493.96, 74259.31, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (31, '2025-Q1', 4, '骨科', 74836.08, 7962.41, 82798.49, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (32, '2025-Q1', 4, '眼科', 78582.85, 18744.40, 97327.25, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (33, '2025-Q2', 1, '儿科', 55534.57, 14608.03, 70142.60, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (34, '2025-Q2', 1, '神经内科', 44484.14, 9934.42, 54418.56, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (35, '2025-Q2', 1, '耳鼻喉科', 31015.69, 27444.67, 58460.36, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (36, '2025-Q2', 1, '妇产科', 25602.45, 12629.80, 38232.25, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (37, '2025-Q2', 1, '消化内科', 64037.55, 27733.14, 91770.69, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (38, '2025-Q2', 1, '中医科', 62302.41, 16299.60, 78602.01, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (39, '2025-Q2', 1, '骨科', 41615.67, 9829.43, 51445.10, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (40, '2025-Q2', 1, '皮肤科', 59375.69, 5913.92, 65289.61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (41, '2025-Q2', 2, '儿科', 12394.19, 22308.81, 34703.00, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (42, '2025-Q2', 2, '骨科', 65259.42, 19940.30, 85199.72, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (43, '2025-Q2', 2, '呼吸内科', 25074.68, 13432.22, 38506.90, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (44, '2025-Q2', 2, '内科', 58029.62, 2572.11, 60601.73, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (45, '2025-Q2', 2, '皮肤科', 18286.30, 27098.65, 45384.95, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (46, '2025-Q2', 2, '心内科', 74700.14, 12839.55, 87539.69, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (47, '2025-Q2', 2, '急诊科', 62416.01, 19464.03, 81880.04, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (48, '2025-Q2', 2, '消化内科', 36095.16, 10323.21, 46418.37, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (49, '2025-Q2', 3, '眼科', 32997.59, 20672.71, 53670.30, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (50, '2025-Q2', 3, '急诊科', 11152.58, 24532.83, 35685.41, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (51, '2025-Q2', 3, 'ICU', 28082.54, 12990.11, 41072.65, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (52, '2025-Q2', 3, '心内科', 60437.82, 4618.02, 65055.84, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (53, '2025-Q2', 3, '耳鼻喉科', 45783.46, 2111.61, 47895.07, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (54, '2025-Q2', 3, '妇产科', 12756.24, 16591.19, 29347.43, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (55, '2025-Q2', 3, '内科', 47323.86, 14037.82, 61361.68, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (56, '2025-Q2', 3, '外科', 59361.90, 18628.91, 77990.81, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (57, '2025-Q2', 4, '外科', 34047.48, 26462.16, 60509.64, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (58, '2025-Q2', 4, '骨科', 78731.21, 22457.49, 101188.70, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (59, '2025-Q2', 4, '耳鼻喉科', 18629.02, 2790.71, 21419.73, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (60, '2025-Q2', 4, '妇产科', 58318.55, 13834.59, 72153.14, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (61, '2025-Q2', 4, '眼科', 17048.26, 25327.23, 42375.49, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (62, '2025-Q2', 4, '神经内科', 34649.80, 3616.44, 38266.24, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (63, '2025-Q2', 4, '急诊科', 56604.77, 26055.33, 82660.10, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (64, '2025-Q2', 4, '呼吸内科', 30838.34, 9155.80, 39994.14, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (65, '2025-Q3', 1, 'ICU', 52770.21, 24646.51, 77416.72, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (66, '2025-Q3', 1, '眼科', 47791.28, 23163.61, 70954.89, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (67, '2025-Q3', 1, '中医科', 48628.13, 8335.79, 56963.92, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (68, '2025-Q3', 1, '妇产科', 15046.17, 10048.83, 25095.00, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (69, '2025-Q3', 1, '皮肤科', 64332.20, 9743.67, 74075.87, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (70, '2025-Q3', 1, '心内科', 54869.63, 22878.98, 77748.61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (71, '2025-Q3', 1, '耳鼻喉科', 45845.90, 8422.00, 54267.90, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (72, '2025-Q3', 1, '骨科', 44726.50, 17446.81, 62173.31, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (73, '2025-Q3', 2, '皮肤科', 29659.09, 4955.19, 34614.28, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (74, '2025-Q3', 2, '消化内科', 34163.14, 17987.46, 52150.60, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (75, '2025-Q3', 2, '儿科', 37899.77, 12822.11, 50721.88, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (76, '2025-Q3', 2, '呼吸内科', 31976.41, 6449.69, 38426.10, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (77, '2025-Q3', 2, '骨科', 14982.85, 6184.48, 21167.33, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (78, '2025-Q3', 2, '心内科', 20820.37, 26033.07, 46853.44, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (79, '2025-Q3', 2, 'ICU', 28726.52, 17789.51, 46516.03, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (80, '2025-Q3', 2, '神经内科', 69454.02, 10583.57, 80037.59, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (81, '2025-Q3', 3, '眼科', 33894.64, 17037.86, 50932.50, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (82, '2025-Q3', 3, '妇产科', 64278.84, 20323.01, 84601.85, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (83, '2025-Q3', 3, '中医科', 68803.72, 8712.19, 77515.91, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (84, '2025-Q3', 3, '骨科', 69980.86, 2977.54, 72958.40, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (85, '2025-Q3', 3, '泌尿外科', 48507.70, 22533.17, 71040.87, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (86, '2025-Q3', 3, '内科', 17392.84, 6915.24, 24308.08, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (87, '2025-Q3', 3, '皮肤科', 49818.29, 17166.68, 66984.97, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (88, '2025-Q3', 3, '呼吸内科', 21152.84, 6726.49, 27879.33, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (89, '2025-Q3', 4, '儿科', 50131.99, 5130.72, 55262.71, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (90, '2025-Q3', 4, '呼吸内科', 37860.23, 18792.37, 56652.60, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (91, '2025-Q3', 4, '泌尿外科', 11557.00, 27911.01, 39468.01, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (92, '2025-Q3', 4, '耳鼻喉科', 31686.40, 2588.24, 34274.64, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (93, '2025-Q3', 4, '外科', 60376.19, 23159.75, 83535.94, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (94, '2025-Q3', 4, '皮肤科', 75359.39, 10138.34, 85497.73, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (95, '2025-Q3', 4, 'ICU', 25667.22, 21850.42, 47517.64, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (96, '2025-Q3', 4, '内科', 20704.45, 15707.72, 36412.17, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (97, '2025-Q4', 1, '外科', 30541.89, 23311.55, 53853.44, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (98, '2025-Q4', 1, '中医科', 71192.81, 3567.44, 74760.25, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (99, '2025-Q4', 1, '消化内科', 14690.99, 12897.08, 27588.07, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (100, '2025-Q4', 1, '神经内科', 60751.76, 14898.39, 75650.15, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (101, '2025-Q4', 1, '内科', 52276.96, 9074.55, 61351.51, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (102, '2025-Q4', 1, '骨科', 51114.66, 28338.18, 79452.84, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (103, '2025-Q4', 1, '耳鼻喉科', 76645.74, 27908.58, 104554.32, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (104, '2025-Q4', 1, '心内科', 13550.60, 13553.23, 27103.83, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (105, '2025-Q4', 2, '心内科', 62777.95, 25901.51, 88679.46, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (106, '2025-Q4', 2, '呼吸内科', 54532.36, 9955.96, 64488.32, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (107, '2025-Q4', 2, '耳鼻喉科', 67378.73, 7091.05, 74469.78, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (108, '2025-Q4', 2, '中医科', 63885.60, 19829.42, 83715.02, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (109, '2025-Q4', 2, '泌尿外科', 12692.46, 26074.36, 38766.82, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (110, '2025-Q4', 2, '急诊科', 15237.88, 10124.84, 25362.72, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (111, '2025-Q4', 2, '眼科', 70637.84, 7487.98, 78125.82, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (112, '2025-Q4', 2, '外科', 48462.74, 17922.07, 66384.81, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (113, '2025-Q4', 3, '儿科', 12815.91, 27617.26, 40433.17, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (114, '2025-Q4', 3, '消化内科', 24235.27, 11025.77, 35261.04, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (115, '2025-Q4', 3, '中医科', 17438.72, 17236.40, 34675.12, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (116, '2025-Q4', 3, '耳鼻喉科', 74116.64, 9404.55, 83521.19, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (117, '2025-Q4', 3, '神经内科', 16042.05, 21382.03, 37424.08, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (118, '2025-Q4', 3, 'ICU', 76531.41, 18142.11, 94673.52, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (119, '2025-Q4', 3, '心内科', 20200.14, 15927.21, 36127.35, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (120, '2025-Q4', 3, '泌尿外科', 53774.33, 14230.53, 68004.86, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (121, '2025-Q4', 4, '外科', 72538.15, 2018.87, 74557.02, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (122, '2025-Q4', 4, '急诊科', 24544.42, 9998.37, 34542.79, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (123, '2025-Q4', 4, '骨科', 19498.29, 24109.27, 43607.56, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (124, '2025-Q4', 4, '泌尿外科', 22306.35, 29587.70, 51894.05, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (125, '2025-Q4', 4, '消化内科', 43095.51, 21246.30, 64341.81, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (126, '2025-Q4', 4, '妇产科', 72045.73, 1249.49, 73295.22, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (127, '2025-Q4', 4, '呼吸内科', 15036.23, 27806.53, 42842.76, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_allocation` VALUES (128, '2025-Q4', 4, '中医科', 62261.89, 6043.26, 68305.15, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_cost_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_data`;
CREATE TABLE `drm_cost_data`  (
  `cost_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '成本ID',
  `cost_date` date NOT NULL COMMENT '成本日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `cost_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成本类型',
  `amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '金额',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`cost_id`) USING BTREE,
  INDEX `idx_cost_date`(`cost_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '成本数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_cost_data
-- ----------------------------
INSERT INTO `drm_cost_data` VALUES (1, '2025-12-12', '消化内科', '设备折旧', 14387.50, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (2, '2025-11-24', '皮肤科', '药品成本', 34639.61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (3, '2025-04-14', '心内科', '直接人力成本', 89945.22, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (4, '2025-01-12', '呼吸内科', '药品成本', 49750.65, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (5, '2025-03-16', '妇产科', '药品成本', 22117.41, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (6, '2025-12-12', '儿科', '设备折旧', 14238.21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (7, '2025-09-16', '中医科', '药品成本', 52279.54, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (8, '2025-07-27', '呼吸内科', '信息成本', 68109.64, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (9, '2025-06-25', '妇产科', '药品成本', 13122.01, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (10, '2025-09-11', '泌尿外科', '药品成本', 49684.06, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (11, '2025-08-24', '急诊科', '管理成本', 17511.05, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (12, '2025-02-01', '神经内科', '管理成本', 24849.03, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (13, '2025-04-06', '心内科', '耗材成本', 34789.79, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (14, '2025-02-11', 'ICU', '管理成本', 72489.82, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (15, '2025-09-23', '心内科', '信息成本', 92012.83, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (16, '2025-11-18', '眼科', '药品成本', 39441.41, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (17, '2025-11-13', '消化内科', '管理成本', 13565.11, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (18, '2025-11-21', '内科', '耗材成本', 29076.73, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (19, '2025-01-11', '急诊科', '药品成本', 71918.80, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (20, '2025-12-28', '眼科', '水电能耗', 69306.21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (21, '2025-02-08', '消化内科', '信息成本', 22656.43, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (22, '2025-03-23', '眼科', '信息成本', 7355.10, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (23, '2025-08-08', '妇产科', '设备折旧', 96024.25, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (24, '2025-11-08', '外科', '信息成本', 72118.55, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (25, '2025-11-27', '妇产科', '药品成本', 9996.46, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (26, '2025-05-11', '外科', '科研教学成本', 9979.85, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (27, '2025-11-18', '心内科', '信息成本', 95331.26, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (28, '2025-03-26', '皮肤科', '信息成本', 19087.56, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (29, '2025-03-13', '泌尿外科', '科研教学成本', 41703.60, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (30, '2025-09-26', '消化内科', '直接人力成本', 56097.94, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (31, '2025-01-18', '外科', '信息成本', 48708.17, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (32, '2025-09-08', '眼科', '耗材成本', 20658.00, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (33, '2025-03-09', '皮肤科', '水电能耗', 42707.55, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (34, '2025-04-27', '消化内科', '科研教学成本', 22924.91, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (35, '2025-09-17', '中医科', '直接人力成本', 32124.16, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (36, '2025-09-12', '急诊科', '管理成本', 65443.40, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (37, '2025-03-08', '皮肤科', '科研教学成本', 37738.24, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (38, '2025-05-10', '中医科', '耗材成本', 92510.13, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (39, '2025-04-17', '呼吸内科', '科研教学成本', 51399.10, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (40, '2025-06-09', '妇产科', '药品成本', 34498.70, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (41, '2025-07-23', 'ICU', '直接人力成本', 19250.10, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (42, '2025-07-14', '急诊科', '科研教学成本', 81071.06, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (43, '2025-01-27', '妇产科', '水电能耗', 26397.36, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (44, '2025-04-09', '消化内科', '耗材成本', 16677.39, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (45, '2025-10-14', '外科', '直接人力成本', 39346.30, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (46, '2025-05-12', '骨科', '管理成本', 59812.47, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (47, '2025-12-11', '心内科', '设备折旧', 26022.04, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (48, '2025-04-25', '急诊科', '设备折旧', 29376.37, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (49, '2025-09-18', '泌尿外科', '管理成本', 16486.82, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (50, '2025-03-07', 'ICU', '耗材成本', 8594.53, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (51, '2025-01-16', '急诊科', '信息成本', 38190.33, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (52, '2025-03-14', '泌尿外科', '水电能耗', 26211.03, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (53, '2025-03-06', '内科', '药品成本', 86232.64, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (54, '2025-08-13', '皮肤科', '信息成本', 84926.09, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (55, '2025-11-24', '中医科', '管理成本', 76172.31, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (56, '2025-12-15', '神经内科', '耗材成本', 7095.44, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (57, '2025-11-02', '泌尿外科', '药品成本', 43172.85, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (58, '2025-01-20', '眼科', '信息成本', 73782.83, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (59, '2025-09-23', '皮肤科', '科研教学成本', 68524.00, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_cost_data` VALUES (60, '2025-03-25', '消化内科', '直接人力成本', 18839.50, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_cost_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_report`;
CREATE TABLE `drm_cost_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报告ID',
  `report_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报告标题',
  `report_period` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报告周期',
  `report_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报告类型',
  `target_dept` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标科室',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '报告内容',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`report_id`) USING BTREE,
  INDEX `idx_report_type`(`report_type`) USING BTREE,
  INDEX `idx_target_dept`(`target_dept`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '成本报告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_cost_report
-- ----------------------------
INSERT INTO `drm_cost_report` VALUES (1, '2025年5月全院成本分析报告', '2025-05', '月报', NULL, '<p>本月全院总成本为850万元，同比增长5.2%。其中人力成本占比32%，材料成本占比28%。</p>', '0', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_cost_report` VALUES (2, '骨科第一季度成本分析', '2025-Q1', '季报', '骨科', '<p>骨科Q1总成本为620万元，主要成本集中在设备折旧和耗材支出。</p>', '0', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_cost_report` VALUES (3, '2024年度全院成本总结', '2024', '年报', NULL, '<p>2024年全院总成本为9800万元，较上年增长8.5%。</p>', '0', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);

-- ----------------------------
-- Table structure for drm_data_mapping
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_mapping`;
CREATE TABLE `drm_data_mapping`  (
  `mapping_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '映射ID',
  `source_table` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '源表名',
  `target_table` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '目标表名',
  `mapping_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '映射规则JSON',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`mapping_id`) USING BTREE,
  INDEX `idx_source_table`(`source_table`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据映射配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_data_mapping
-- ----------------------------
INSERT INTO `drm_data_mapping` VALUES (1, 'his_patient', 'drm_income', '{\"income_date\":\"visit_date\",\"amount\":\"income_amt\"}', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_mapping` VALUES (2, 'his_charge', 'drm_expense', '{\"expense_date\":\"charge_date\",\"amount\":\"expense_amt\"}', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_mapping` VALUES (3, 'lis_result', 'drm_quality_indicator', '{\"indicator_date\":\"test_date\"}', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_mapping` VALUES (4, 'emr_record', 'drm_drg_data', '{\"drg_code\":\"emr_drg\",\"case_cnt\":\"emr_count\"}', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_data_quality
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_quality`;
CREATE TABLE `drm_data_quality`  (
  `quality_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '质量ID',
  `check_date` date NOT NULL COMMENT '检查日期',
  `source_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `total_cnt` bigint(20) NULL DEFAULT 0 COMMENT '总记录数',
  `error_cnt` bigint(20) NULL DEFAULT 0 COMMENT '错误数',
  `accuracy_rate` decimal(6, 4) NULL DEFAULT 0.0000 COMMENT '准确率',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`quality_id`) USING BTREE,
  INDEX `idx_check_date`(`check_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据质量检查表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_data_quality
-- ----------------------------
INSERT INTO `drm_data_quality` VALUES (1, '2025-03-07', 'LIS系统', 'order_record', 6517, 262, 95.9797, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (2, '2025-07-09', 'HIS系统', 'patient', 66679, 818, 98.7732, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (3, '2025-08-21', 'PACS系统', 'order_record', 21351, 995, 95.3398, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (4, '2025-02-25', 'LIS系统', 'charge', 34971, 586, 98.3243, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (5, '2025-10-23', 'LIS系统', 'patient', 21789, 840, 96.1448, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (6, '2025-12-07', 'LIS系统', 'prescription', 87331, 2843, 96.7446, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (7, '2025-05-16', 'LIS系统', 'patient', 30541, 1070, 96.4965, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (8, '2025-08-11', 'PACS系统', 'prescription', 65922, 1718, 97.3939, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (9, '2025-09-11', 'PACS系统', 'prescription', 36231, 1243, 96.5692, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (10, '2025-01-15', 'LIS系统', 'patient', 27343, 991, 96.3757, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (11, '2025-12-28', 'HIS系统', 'prescription', 21838, 897, 95.8925, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (12, '2025-03-12', 'PACS系统', 'patient', 87570, 1355, 98.4527, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (13, '2025-08-10', 'PACS系统', 'order_record', 48115, 2343, 95.1304, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (14, '2025-02-26', '病案系统', 'order_record', 13172, 636, 95.1716, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (15, '2025-04-19', 'HIS系统', 'patient', 66429, 2335, 96.4850, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (16, '2025-09-24', 'HIS系统', 'charge', 54659, 1082, 98.0205, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (17, '2025-04-08', 'HIS系统', 'charge', 47377, 1196, 97.4756, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (18, '2025-03-11', 'PACS系统', 'prescription', 10151, 458, 95.4881, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (19, '2025-12-06', 'HIS系统', 'charge', 70466, 860, 98.7796, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (20, '2025-03-07', 'LIS系统', 'order_record', 42984, 1213, 97.1780, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (21, '2025-03-08', 'LIS系统', 'charge', 85126, 359, 99.5783, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (22, '2025-06-09', 'LIS系统', 'prescription', 54321, 382, 99.2968, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (23, '2025-02-12', 'PACS系统', 'prescription', 57251, 24, 99.9581, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (24, '2025-02-01', 'PACS系统', 'prescription', 18486, 719, 96.1106, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (25, '2025-11-08', 'PACS系统', 'charge', 19679, 666, 96.6157, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (26, '2025-01-24', 'LIS系统', 'patient', 62441, 811, 98.7012, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (27, '2025-07-08', 'PACS系统', 'prescription', 18618, 871, 95.3217, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (28, '2025-12-17', 'HIS系统', 'order_record', 55220, 1495, 97.2926, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (29, '2025-05-26', 'PACS系统', 'charge', 35611, 828, 97.6749, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (30, '2025-12-22', 'LIS系统', 'order_record', 29083, 1415, 95.1346, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (31, '2025-07-08', 'LIS系统', 'order_record', 68000, 1035, 98.4779, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (32, '2025-03-23', 'LIS系统', 'charge', 78888, 2015, 97.4457, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (33, '2025-09-13', 'HIS系统', 'charge', 70605, 300, 99.5751, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (34, '2025-04-12', 'HIS系统', 'order_record', 27255, 551, 97.9784, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (35, '2025-03-02', 'PACS系统', 'patient', 51566, 966, 98.1267, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (36, '2025-08-02', 'LIS系统', 'order_record', 87535, 4285, 95.1048, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (37, '2025-11-06', 'HIS系统', 'charge', 61156, 1053, 98.2782, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (38, '2025-04-05', 'LIS系统', 'prescription', 32749, 627, 98.0854, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (39, '2025-01-21', 'LIS系统', 'charge', 92236, 2266, 97.5433, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_quality` VALUES (40, '2025-02-03', 'LIS系统', 'order_record', 40860, 1969, 95.1811, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_data_source
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_source`;
CREATE TABLE `drm_data_source`  (
  `source_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '数据源ID',
  `source_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据源名称',
  `source_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源类型',
  `connection_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '连接地址',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`source_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据源配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_data_source
-- ----------------------------
INSERT INTO `drm_data_source` VALUES (1, 'HIS系统', 'MySQL', 'jdbc:mysql://192.168.1.100:3306/his', 'his_user', 'his123', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_source` VALUES (2, 'LIS系统', 'MySQL', 'jdbc:mysql://192.168.1.101:3306/lis', 'lis_user', 'lis123', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_source` VALUES (3, 'PACS系统', 'PostgreSQL', 'jdbc:postgresql://192.168.1.102:5432/pacs', 'pacs_user', 'pacs123', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_source` VALUES (4, '病案系统', 'SQLServer', 'jdbc:sqlserver://192.168.1.103:1433', 'emr_user', 'emr123', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_data_source` VALUES (5, 'HRP系统', 'MySQL', 'jdbc:mysql://192.168.1.104:3306/hrp', 'hrp_user', 'hrp123', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_dept_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_dept_cost`;
CREATE TABLE `drm_dept_cost`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '科室ID',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '科室名称',
  `cost_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '成本日期',
  `personnel_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '人力成本',
  `equipment_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '设备成本',
  `material_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '材料成本',
  `drug_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '药品成本',
  `other_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '其他成本',
  `total_cost` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '总成本',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`dept_id`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE,
  INDEX `idx_cost_date`(`cost_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '科室成本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_dept_cost
-- ----------------------------
INSERT INTO `drm_dept_cost` VALUES (1, '骨科', '2025-05', 850000.00, 320000.00, 280000.00, 520000.00, 120000.00, 2090000.00, 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_dept_cost` VALUES (2, '心内科', '2025-05', 780000.00, 280000.00, 220000.00, 480000.00, 95000.00, 1855000.00, 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_dept_cost` VALUES (3, '普通外科', '2025-05', 720000.00, 250000.00, 190000.00, 410000.00, 88000.00, 1658000.00, 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_dept_cost` VALUES (4, '儿科', '2025-05', 650000.00, 180000.00, 150000.00, 320000.00, 75000.00, 1375000.00, 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_dept_cost` VALUES (5, '妇产科', '2025-05', 680000.00, 190000.00, 160000.00, 350000.00, 82000.00, 1462000.00, 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);

-- ----------------------------
-- Table structure for drm_drg_analysis
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_analysis`;
CREATE TABLE `drm_drg_analysis`  (
  `analysis_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分析ID',
  `analysis_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分析类型',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `drg_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'DRG编码',
  `indicator_value` decimal(12, 4) NULL DEFAULT 0.0000 COMMENT '指标值',
  `indicator_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '指标名称',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`analysis_id`) USING BTREE,
  INDEX `idx_analysis_type`(`analysis_type`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'DRG分析表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_drg_analysis
-- ----------------------------
INSERT INTO `drm_drg_analysis` VALUES (1, '成本控制', '神经内科', '抗菌药物使用率', 0.8416, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (2, '费用效率', '耳鼻喉科', '药品比例', 1.0386, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (3, '时间效率', '心内科', '药品比例', 1.2101, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (4, '时间效率', '心内科', '死亡率', 0.7665, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (5, '费用效率', '妇产科', '死亡率', 0.6683, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (6, '费用效率', '呼吸内科', '时间消耗指数', 0.7828, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (7, '成本控制', '呼吸内科', '抗菌药物使用率', 1.3418, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (8, '质量评分', '内科', '药品比例', 0.9343, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (9, '质量评分', '泌尿外科', '院感发生率', 1.0084, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (10, '质量评分', '内科', '死亡率', 1.4584, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (11, '质量评分', '耳鼻喉科', '费用偏离度', 0.8846, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (12, '时间效率', '中医科', '时间消耗指数', 1.3323, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (13, '费用效率', '内科', '药品比例', 1.2327, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (14, '质量评分', '皮肤科', '费用偏离度', 0.9282, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (15, '质量评分', '耳鼻喉科', '耗材比例', 0.9499, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (16, '时间效率', 'ICU', '院感发生率', 1.4983, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (17, '成本控制', '心内科', '再入院率', 1.0903, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (18, '时间效率', '骨科', '费用偏离度', 1.1661, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (19, '成本控制', '眼科', '费用偏离度', 0.7465, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (20, '时间效率', '消化内科', '时间消耗指数', 1.2909, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (21, '质量评分', '急诊科', '院感发生率', 0.7348, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (22, '成本控制', '眼科', '药品比例', 0.6088, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (23, '时间效率', '消化内科', '抗菌药物使用率', 1.3148, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (24, '质量评分', '眼科', '抗菌药物使用率', 1.0600, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (25, '费用效率', '神经内科', '药品比例', 1.2347, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (26, '时间效率', '眼科', '死亡率', 0.5386, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (27, '时间效率', '儿科', '抗菌药物使用率', 1.3749, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (28, '时间效率', '心内科', '抗菌药物使用率', 0.9417, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (29, '费用效率', '神经内科', '耗材比例', 0.6615, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (30, '成本控制', '眼科', '院感发生率', 1.2529, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (31, '成本控制', '外科', '药品比例', 0.6374, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (32, '时间效率', '呼吸内科', '再入院率', 0.9698, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (33, '成本控制', '妇产科', '费用偏离度', 0.9245, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (34, '成本控制', 'ICU', '耗材比例', 1.4558, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (35, '费用效率', '中医科', '耗材比例', 1.0655, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (36, '成本控制', '耳鼻喉科', '死亡率', 1.4435, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (37, '时间效率', '急诊科', '院感发生率', 0.8970, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (38, '质量评分', '泌尿外科', '时间消耗指数', 0.8078, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (39, '质量评分', '急诊科', '耗材比例', 0.5142, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (40, '时间效率', '皮肤科', '抗菌药物使用率', 1.2013, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (41, '成本控制', '儿科', '耗材比例', 1.4315, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (42, '质量评分', '眼科', '院感发生率', 1.2155, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (43, '时间效率', '心内科', '抗菌药物使用率', 1.0578, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (44, '成本控制', '泌尿外科', '时间消耗指数', 0.8420, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (45, '质量评分', '儿科', '抗菌药物使用率', 1.4744, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (46, '费用效率', '眼科', '死亡率', 1.4258, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (47, '成本控制', '外科', '抗菌药物使用率', 0.5604, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (48, '成本控制', '中医科', '死亡率', 1.0280, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (49, '质量评分', '急诊科', '再入院率', 1.4029, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (50, '时间效率', '骨科', '药品比例', 0.9492, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (51, '时间效率', '消化内科', '院感发生率', 1.1466, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (52, '时间效率', '心内科', '耗材比例', 1.0624, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (53, '成本控制', '泌尿外科', '耗材比例', 0.9760, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (54, '成本控制', '泌尿外科', '费用偏离度', 1.2176, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (55, '费用效率', '骨科', '药品比例', 0.6494, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (56, '时间效率', '骨科', '抗菌药物使用率', 1.2336, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (57, '质量评分', '皮肤科', '死亡率', 0.7097, 'BL06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (58, '时间效率', 'ICU', '院感发生率', 1.4596, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (59, '时间效率', '急诊科', '院感发生率', 0.7342, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (60, '质量评分', '骨科', '药品比例', 0.8835, 'BL03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (61, '时间效率', '耳鼻喉科', '费用偏离度', 1.0523, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (62, '费用效率', '妇产科', '时间消耗指数', 0.7765, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (63, '费用效率', '妇产科', '院感发生率', 1.4050, 'BL07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (64, '时间效率', '呼吸内科', '抗菌药物使用率', 1.1152, 'BL08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (65, '时间效率', '消化内科', '时间消耗指数', 1.4572, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (66, '质量评分', '眼科', '再入院率', 1.0054, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (67, '费用效率', '耳鼻喉科', '时间消耗指数', 1.1462, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (68, '质量评分', '耳鼻喉科', '时间消耗指数', 1.0984, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (69, '质量评分', '内科', '时间消耗指数', 1.2839, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (70, '质量评分', '皮肤科', '费用偏离度', 1.4193, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (71, '成本控制', '皮肤科', '再入院率', 1.0675, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (72, '费用效率', '心内科', '再入院率', 0.5861, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (73, '成本控制', '骨科', '时间消耗指数', 0.5312, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (74, '质量评分', '神经内科', '再入院率', 0.5573, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (75, '费用效率', '儿科', '再入院率', 1.1602, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (76, '成本控制', '内科', '耗材比例', 1.3645, 'BL04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (77, '时间效率', '外科', '时间消耗指数', 1.0642, 'BL02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (78, '时间效率', '呼吸内科', '费用偏离度', 1.2780, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (79, '成本控制', '神经内科', '费用偏离度', 1.4140, 'BL01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_analysis` VALUES (80, '质量评分', '妇产科', '再入院率', 0.6626, 'BL05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_drg_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_data`;
CREATE TABLE `drm_drg_data`  (
  `drg_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'DRG ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `drg_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'DRG编码',
  `drg_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'DRG名称',
  `case_cnt` int(11) NULL DEFAULT 0 COMMENT '病例数',
  `avg_cost` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '平均费用',
  `avg_days` decimal(6, 2) NULL DEFAULT 0.00 COMMENT '平均住院天数',
  `cmi` decimal(6, 4) NULL DEFAULT 1.0000 COMMENT 'CMI值',
  `surplus_amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '结余金额',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`drg_id`) USING BTREE,
  INDEX `idx_stat_date`(`stat_date`) USING BTREE,
  INDEX `idx_drg_code`(`drg_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'DRG数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_drg_data
-- ----------------------------
INSERT INTO `drm_drg_data` VALUES (1, '2025-12-01', 'JZ19', '阑尾炎', 71, 22342.18, 11.68, 1.4427, -16832.00, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (2, '2025-03-01', 'AJ19', '肺炎', 79, 7668.50, 7.81, 0.9118, -47534.85, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (3, '2025-12-01', 'AG19', '特发性高血压', 19, 13302.24, 8.88, 2.5682, 19714.60, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (4, '2025-02-01', 'AB19', '脑梗死', 43, 17319.33, 7.96, 2.8359, 20788.66, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (5, '2025-05-01', 'CB19', '膝关节手术', 60, 4766.10, 10.87, 1.3796, 7159.43, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (6, '2025-11-01', 'RA19', '妊娠/分娩', 32, 15053.93, 12.12, 1.0114, 31900.89, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (7, '2025-08-01', 'BJ19', '消化不良', 61, 18686.18, 5.22, 1.1468, 42619.31, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (8, '2025-03-01', 'KB19', '胆囊炎', 63, 8831.22, 14.11, 2.0027, 30448.78, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (9, '2025-03-01', 'JZ19', '阑尾炎', 71, 4316.92, 8.64, 2.0376, 26161.21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (10, '2025-01-01', 'AG36', '心律失常', 22, 3507.46, 19.44, 2.9242, -431.36, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (11, '2025-09-01', 'JZ19', '阑尾炎', 14, 19684.31, 18.29, 1.4961, -8248.94, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (12, '2025-08-01', 'RA19', '妊娠/分娩', 61, 14824.10, 19.06, 2.4431, -39770.50, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (13, '2025-06-01', 'AB19', '脑梗死', 37, 23875.68, 19.15, 1.2014, -45744.39, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (14, '2025-01-01', 'BJ19', '消化不良', 44, 6815.66, 19.83, 1.5559, -17349.32, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (15, '2025-06-01', 'CB19', '膝关节手术', 32, 27164.70, 7.33, 1.8775, 10559.89, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (16, '2025-07-01', 'AG36', '心律失常', 75, 12048.91, 10.26, 2.8699, -9481.94, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (17, '2025-06-01', 'JZ19', '阑尾炎', 20, 14952.13, 13.32, 2.0282, 37276.83, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (18, '2025-10-01', 'IZ19', '呼吸衰竭', 64, 29219.48, 11.45, 2.9855, 26296.56, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (19, '2025-07-01', 'AA19', '颅内出血', 50, 18850.81, 12.86, 0.8792, -34735.09, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (20, '2025-05-01', 'AG35', '心绞痛', 33, 10214.50, 18.00, 2.2751, 14663.71, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (21, '2025-08-01', 'AG35', '心绞痛', 41, 13064.45, 11.31, 2.2992, -19438.95, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (22, '2025-10-01', 'AG19', '特发性高血压', 44, 17560.80, 16.37, 2.1485, 5693.55, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (23, '2025-05-01', 'BJ19', '消化不良', 76, 21858.15, 17.73, 2.9999, -12881.94, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (24, '2025-10-01', 'BJ19', '消化不良', 59, 20856.10, 7.82, 2.8719, 17885.90, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (25, '2025-06-01', 'CB19', '膝关节手术', 34, 19566.25, 4.11, 1.7284, -4949.19, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (26, '2025-04-01', 'RA39', '剖宫产', 20, 22578.20, 7.87, 2.6553, 19350.64, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (27, '2025-06-01', 'CB29', '髋关节手术', 69, 27571.22, 5.95, 1.9863, 25332.03, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (28, '2025-08-01', 'SA19', '新生儿黄疸', 14, 15397.14, 19.92, 1.6891, -18483.27, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (29, '2025-09-01', 'RA39', '剖宫产', 16, 19762.06, 8.10, 2.8211, 3140.06, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (30, '2025-01-01', 'AG35', '心绞痛', 48, 10341.01, 14.90, 2.9343, 38025.99, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (31, '2025-12-01', 'AA19', '颅内出血', 36, 9898.58, 5.54, 0.6046, -20533.82, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (32, '2025-10-01', 'AG35', '心绞痛', 31, 28856.86, 6.15, 1.1286, -35374.01, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (33, '2025-10-01', 'AG19', '特发性高血压', 75, 13501.12, 10.99, 1.9255, -29007.37, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (34, '2025-10-01', 'AG36', '心律失常', 51, 6205.51, 12.77, 1.1249, -23937.48, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (35, '2025-08-01', 'BJ19', '消化不良', 40, 28096.16, 10.55, 1.9396, -23009.61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (36, '2025-12-01', 'RA19', '妊娠/分娩', 41, 21096.51, 16.08, 2.7753, 20669.48, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (37, '2025-07-01', 'KB19', '胆囊炎', 18, 12817.53, 3.27, 1.1606, 41265.05, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (38, '2025-03-01', 'CB19', '膝关节手术', 52, 20339.00, 11.90, 1.7619, -42556.64, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (39, '2025-02-01', 'CB19', '膝关节手术', 16, 20298.17, 16.77, 0.8150, -23826.98, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (40, '2025-09-01', 'KB19', '胆囊炎', 64, 25189.52, 15.07, 1.9850, 36605.93, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (41, '2025-08-01', 'AJ19', '肺炎', 71, 27704.94, 8.13, 2.2180, -17499.91, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (42, '2025-12-01', 'AG36', '心律失常', 59, 6188.65, 18.36, 0.7389, 42857.31, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (43, '2025-04-01', 'BJ19', '消化不良', 29, 25527.29, 16.55, 0.7800, 24681.26, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (44, '2025-06-01', 'AB19', '脑梗死', 34, 23469.68, 11.16, 2.7035, -28744.17, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (45, '2025-12-01', 'SA19', '新生儿黄疸', 69, 23248.09, 11.30, 0.8822, 969.62, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (46, '2025-04-01', 'CB29', '髋关节手术', 54, 27529.28, 12.23, 2.5913, -47005.14, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (47, '2025-07-01', 'AB19', '脑梗死', 76, 19260.90, 18.73, 0.9808, -43038.89, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (48, '2025-07-01', 'AJ19', '肺炎', 45, 29307.07, 3.90, 1.0305, -31081.23, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (49, '2025-05-01', 'CB19', '膝关节手术', 30, 10732.97, 9.78, 0.8713, -8927.16, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (50, '2025-12-01', 'RA19', '妊娠/分娩', 7, 15958.82, 10.84, 2.7818, 16409.77, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (51, '2025-07-01', 'AG19', '特发性高血压', 33, 6543.16, 19.92, 1.4411, 12482.44, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (52, '2025-03-01', 'CB29', '髋关节手术', 34, 5133.42, 5.32, 0.7663, 24939.36, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (53, '2025-04-01', 'CB29', '髋关节手术', 74, 14733.18, 13.69, 0.7122, -36863.42, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (54, '2025-03-01', 'AG19', '特发性高血压', 40, 25800.44, 16.05, 1.8266, 30136.80, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (55, '2025-05-01', 'JZ19', '阑尾炎', 38, 24867.46, 15.55, 1.0379, -7650.99, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (56, '2025-11-01', 'CB19', '膝关节手术', 55, 3900.40, 12.07, 1.3667, -42450.37, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (57, '2025-07-01', 'RA19', '妊娠/分娩', 41, 15980.37, 12.95, 2.8050, -18960.81, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (58, '2025-04-01', 'JZ19', '阑尾炎', 79, 23202.91, 8.88, 0.7830, -25113.09, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (59, '2025-02-01', 'IZ19', '呼吸衰竭', 77, 12027.06, 18.71, 2.4524, 40134.66, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_drg_data` VALUES (60, '2025-01-01', 'AJ19', '肺炎', 37, 20732.10, 14.36, 2.8257, 36833.61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_early_warning
-- ----------------------------
DROP TABLE IF EXISTS `drm_early_warning`;
CREATE TABLE `drm_early_warning`  (
  `warning_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预警ID',
  `warn_date` date NOT NULL COMMENT '预警日期',
  `warn_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预警类型',
  `warn_level` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '预警级别（1提示 2警告 3紧急）',
  `warn_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '预警内容',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `handle_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '处理状态（0未处理 1处理中 2已处理）',
  `handle_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '处理结果',
  `ai_suggestion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'AI建议',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`warning_id`) USING BTREE,
  INDEX `idx_warn_date`(`warn_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '预警信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_early_warning
-- ----------------------------
INSERT INTO `drm_early_warning` VALUES (1, '2025-11-06', '住院超时预警', '3', 'ICU床位占用率超过95%', '急诊科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (2, '2025-02-14', '床位预警', '1', '大处方预警（单笔费用超5000元）', '骨科', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (3, '2025-07-07', '费用超支预警', '1', '科室本月费用超出预算20%', '骨科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (4, '2025-01-17', '处方预警', '2', '抗菌药物使用强度超标预警', '泌尿外科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (5, '2025-01-01', '费用超支预警', '1', '大处方预警（单笔费用超5000元）', '耳鼻喉科', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (6, '2025-01-20', '处方预警', '2', '患者住院天数超过30天', '眼科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (7, '2025-10-02', '手术排程预警', '1', 'ICU床位占用率超过95%', '神经内科', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (8, '2025-08-21', '手术排程预警', '1', '抗菌药物使用强度超标预警', '内科', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (9, '2025-04-02', '费用超支预警', '2', '大处方预警（单笔费用超5000元）', '皮肤科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (10, '2025-03-03', '处方预警', '3', '患者住院天数超过30天', '皮肤科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (11, '2025-07-23', '费用超支预警', '2', 'ICU床位占用率超过95%', '内科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (12, '2025-05-05', '床位预警', '3', '手术排程冲突预警', '眼科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (13, '2025-07-15', '手术排程预警', '3', '手术排程冲突预警', '耳鼻喉科', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (14, '2025-01-10', '费用超支预警', '2', '手术排程冲突预警', '耳鼻喉科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (15, '2025-12-08', '处方预警', '2', '患者住院天数超过30天', 'ICU', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (16, '2025-06-18', '药品预警', '1', 'ICU床位占用率超过95%', '呼吸内科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (17, '2025-06-15', '手术排程预警', '3', '患者住院天数超过30天', 'ICU', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (18, '2025-12-28', '住院超时预警', '3', '科室本月费用超出预算20%', '心内科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (19, '2025-05-09', '住院超时预警', '2', '患者住院天数超过30天', '心内科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (20, '2025-10-23', '床位预警', '3', '抗菌药物使用强度超标预警', '内科', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (21, '2025-10-11', '费用超支预警', '2', '大处方预警（单笔费用超5000元）', '皮肤科', '1', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (22, '2025-12-09', '处方预警', '3', 'ICU床位占用率超过95%', '耳鼻喉科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (23, '2025-06-01', '处方预警', '1', '手术排程冲突预警', '急诊科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (24, '2025-09-28', '费用超支预警', '2', '患者住院天数超过30天', '皮肤科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (25, '2025-11-05', '处方预警', '1', 'ICU床位占用率超过95%', '急诊科', '2', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (26, '2025-10-22', '处方预警', '2', '大处方预警（单笔费用超5000元）', 'ICU', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (27, '2025-11-19', '住院超时预警', '2', '抗菌药物使用强度超标预警', '内科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (28, '2025-04-14', '住院超时预警', '2', '大处方预警（单笔费用超5000元）', '急诊科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (29, '2025-10-19', '药品预警', '1', '患者住院天数超过30天', '急诊科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_early_warning` VALUES (30, '2025-07-01', '费用超支预警', '1', '科室本月费用超出预算20%', '耳鼻喉科', '0', NULL, '建议及时处理：查看详细病历信息，评估是否需要调整治疗方案或费用管控措施。', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_expense
-- ----------------------------
DROP TABLE IF EXISTS `drm_expense`;
CREATE TABLE `drm_expense`  (
  `expense_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支出ID',
  `expense_date` date NOT NULL COMMENT '支出日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `expense_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支出类型',
  `amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '金额',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`expense_id`) USING BTREE,
  INDEX `idx_expense_date`(`expense_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支出管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_expense
-- ----------------------------
INSERT INTO `drm_expense` VALUES (1, '2025-01-19', '外科', '科研经费', 24654.90, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (2, '2025-10-10', '心内科', '耗材采购', 38547.26, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (3, '2025-09-20', '中医科', '物业费', 28774.25, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (4, '2025-11-01', '消化内科', '设备维护', 74629.76, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (5, '2025-01-20', '泌尿外科', '耗材采购', 13302.57, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (6, '2025-12-26', '内科', '人员经费', 30912.84, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (7, '2025-11-07', '儿科', '物业费', 19904.02, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (8, '2025-09-19', '中医科', '人员经费', 19406.91, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (9, '2025-01-24', '皮肤科', '药品采购', 55051.31, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (10, '2025-02-03', '内科', '信息维护', 23446.09, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (11, '2025-05-05', '中医科', '信息维护', 75748.61, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (12, '2025-09-22', '妇产科', '药品采购', 65325.34, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (13, '2025-01-07', '妇产科', '设备维护', 61222.42, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (14, '2025-02-21', '心内科', '人员经费', 27355.64, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (15, '2025-06-17', '皮肤科', '设备维护', 53724.98, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (16, '2025-01-08', '神经内科', '药品采购', 57918.38, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (17, '2025-05-01', '中医科', '科研经费', 55475.56, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (18, '2025-01-17', '皮肤科', '信息维护', 71027.05, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (19, '2025-09-19', '心内科', '科研经费', 69965.74, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (20, '2025-10-24', '急诊科', '物业费', 38074.14, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (21, '2025-01-24', 'ICU', '耗材采购', 31890.74, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (22, '2025-04-08', '耳鼻喉科', '信息维护', 12141.25, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (23, '2025-01-06', '消化内科', '耗材采购', 5615.01, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (24, '2025-11-13', '妇产科', '药品采购', 46305.23, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (25, '2025-12-05', '皮肤科', '人员经费', 55378.59, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (26, '2025-03-20', '妇产科', '人员经费', 26862.40, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (27, '2025-07-04', '内科', '水电费', 70288.11, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (28, '2025-08-13', '内科', '科研经费', 40700.18, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (29, '2025-03-12', '内科', '水电费', 70179.55, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (30, '2025-09-23', '儿科', '信息维护', 78080.01, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (31, '2025-06-15', '眼科', '设备维护', 19235.89, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (32, '2025-09-27', '中医科', '科研经费', 45056.84, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (33, '2025-09-26', '内科', '药品采购', 7251.31, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (34, '2025-06-19', 'ICU', '科研经费', 49625.07, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (35, '2025-09-20', '泌尿外科', '水电费', 72185.68, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (36, '2025-03-28', '中医科', '耗材采购', 78430.92, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (37, '2025-10-03', '泌尿外科', '科研经费', 59223.94, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (38, '2025-07-17', '呼吸内科', '科研经费', 32993.42, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (39, '2025-03-07', '急诊科', '设备维护', 47809.36, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (40, '2025-12-03', 'ICU', '设备维护', 53832.45, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (41, '2025-12-26', '骨科', '耗材采购', 18720.40, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (42, '2025-04-05', '心内科', '设备维护', 3457.93, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (43, '2025-03-23', '急诊科', '信息维护', 59639.58, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (44, '2025-08-25', '消化内科', '耗材采购', 68869.16, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (45, '2025-06-12', '眼科', '人员经费', 77430.84, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (46, '2025-04-23', '消化内科', '科研经费', 4562.58, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (47, '2025-08-21', '外科', '设备维护', 70895.56, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (48, '2025-07-04', 'ICU', '人员经费', 36369.12, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (49, '2025-11-18', 'ICU', '耗材采购', 4650.22, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_expense` VALUES (50, '2025-07-28', 'ICU', '药品采购', 50564.61, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_finance_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_finance_report`;
CREATE TABLE `drm_finance_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报告ID',
  `report_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报告标题',
  `report_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报告类型（月报/季报/年报）',
  `report_period` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报告周期（2025-05）',
  `target_dept` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标科室（全院报告为空）',
  `total_income` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '总收入（元）',
  `total_expense` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '总支出（元）',
  `balance` decimal(15, 2) NULL DEFAULT 0.00 COMMENT '结余（元）',
  `income_growth` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收入增长率',
  `expense_growth` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支出增长率',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '报告内容（富文本）',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`report_id`) USING BTREE,
  INDEX `idx_report_type`(`report_type`) USING BTREE,
  INDEX `idx_report_period`(`report_period`) USING BTREE,
  INDEX `idx_target_dept`(`target_dept`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '财务报告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_finance_report
-- ----------------------------
INSERT INTO `drm_finance_report` VALUES (1, '2025年5月全院财务报告', '月报', '2025-05', NULL, 15800000.00, 12300000.00, 3500000.00, '+8.5%', '+6.2%', NULL, '0', 'admin', '2026-05-24 14:04:46', '', '2026-05-24 14:04:46', '2025年5月全院收支情况总结');
INSERT INTO `drm_finance_report` VALUES (2, '骨科2025年第一季度财务报告', '季报', '2025-Q1', '骨科', 3200000.00, 2800000.00, 400000.00, '+12.3%', '+10.5%', NULL, '0', 'admin', '2026-05-24 14:04:46', '', '2026-05-24 14:04:46', '骨科第一季度财务分析');
INSERT INTO `drm_finance_report` VALUES (3, '心内科2025年4月财务报告', '月报', '2025-04', '心内科', 1850000.00, 1620000.00, 230000.00, '+5.8%', '+4.2%', NULL, '0', 'admin', '2026-05-24 14:04:46', '', '2026-05-24 14:04:46', '心内科4月份财务状况');
INSERT INTO `drm_finance_report` VALUES (4, '全院2024年度财务报告', '年报', '2024', NULL, 185000000.00, 158000000.00, 27000000.00, '+15.2%', '+12.8%', NULL, '0', 'admin', '2026-05-24 14:04:46', '', '2026-05-24 14:04:46', '2024年全院年度财务总结');

-- ----------------------------
-- Table structure for drm_income
-- ----------------------------
DROP TABLE IF EXISTS `drm_income`;
CREATE TABLE `drm_income`  (
  `income_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收入ID',
  `income_date` date NOT NULL COMMENT '收入日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `income_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收入类型',
  `amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '金额',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`income_id`) USING BTREE,
  INDEX `idx_income_date`(`income_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收入管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_income
-- ----------------------------
INSERT INTO `drm_income` VALUES (1, '2025-10-19', '呼吸内科', '检查收入', 95628.14, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (2, '2025-12-04', '耳鼻喉科', '治疗收入', 87898.84, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (3, '2025-07-03', '内科', '药品收入', 52729.44, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (4, '2025-12-15', '神经内科', '检查收入', 12812.51, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (5, '2025-03-11', '中医科', '检查收入', 91200.62, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (6, '2025-07-24', '神经内科', '检查收入', 83999.97, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (7, '2025-11-11', '急诊科', '治疗收入', 88928.37, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (8, '2025-11-10', '骨科', '检查收入', 67636.00, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (9, '2025-04-19', '外科', '门诊收入', 103857.89, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (10, '2025-05-08', '呼吸内科', '药品收入', 141010.02, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (11, '2025-06-06', '皮肤科', '手术收入', 110732.88, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (12, '2025-05-18', '神经内科', '治疗收入', 9581.21, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (13, '2025-10-08', '心内科', '住院收入', 7887.21, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (14, '2025-09-21', '急诊科', '门诊收入', 130572.18, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (15, '2025-02-18', '中医科', '手术收入', 140312.81, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (16, '2025-11-04', '妇产科', '检查收入', 92676.85, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (17, '2025-09-02', '中医科', '门诊收入', 97575.95, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (18, '2025-08-27', '急诊科', '手术收入', 23954.70, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (19, '2025-06-19', '儿科', '住院收入', 107893.51, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (20, '2025-01-22', '中医科', '治疗收入', 29727.38, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (21, '2025-09-27', 'ICU', '治疗收入', 43892.45, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (22, '2025-06-03', '内科', '住院收入', 113443.54, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (23, '2025-02-19', '中医科', '手术收入', 12711.41, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (24, '2025-11-09', '皮肤科', '检查收入', 11877.09, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (25, '2025-03-13', '耳鼻喉科', '住院收入', 65978.68, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (26, '2025-05-19', '皮肤科', '治疗收入', 59389.99, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (27, '2025-05-19', '泌尿外科', '住院收入', 134679.07, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (28, '2025-05-27', '心内科', '住院收入', 62151.94, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (29, '2025-07-01', '泌尿外科', '药品收入', 94516.83, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (30, '2025-11-15', '中医科', '住院收入', 88805.55, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (31, '2025-05-15', '急诊科', '检查收入', 22486.27, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (32, '2025-08-19', '神经内科', '检查收入', 19661.19, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (33, '2025-07-10', '妇产科', '门诊收入', 76220.73, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (34, '2025-09-11', '眼科', '住院收入', 101876.42, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (35, '2025-10-13', 'ICU', '药品收入', 111148.38, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (36, '2025-08-08', '急诊科', '治疗收入', 52675.64, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (37, '2025-06-20', '耳鼻喉科', '门诊收入', 91546.54, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (38, '2025-03-23', '眼科', '门诊收入', 80218.10, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (39, '2025-12-22', '急诊科', '检查收入', 84296.29, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (40, '2025-05-19', '耳鼻喉科', '治疗收入', 82470.07, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (41, '2025-10-02', '心内科', '检查收入', 11892.10, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (42, '2025-10-07', '中医科', '手术收入', 73109.19, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (43, '2025-04-04', '神经内科', '药品收入', 23792.73, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (44, '2025-07-04', '眼科', '治疗收入', 57426.47, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (45, '2025-03-16', 'ICU', '住院收入', 94694.69, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (46, '2025-02-11', '中医科', '门诊收入', 48302.04, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (47, '2025-08-16', '内科', '门诊收入', 50506.31, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (48, '2025-01-21', '呼吸内科', '门诊收入', 148044.41, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (49, '2025-08-17', '急诊科', '治疗收入', 129611.51, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_income` VALUES (50, '2025-03-10', '神经内科', '药品收入', 122955.07, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_inpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_inpatient_stats`;
CREATE TABLE `drm_inpatient_stats`  (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `in_cnt` int(11) NULL DEFAULT 0 COMMENT '入院人数',
  `out_cnt` int(11) NULL DEFAULT 0 COMMENT '出院人数',
  `bed_occupy_cnt` int(11) NULL DEFAULT 0 COMMENT '占用床位数',
  `bed_occupy_rate` decimal(5, 2) NULL DEFAULT 0.00 COMMENT '床位占用率',
  `avg_stay_days` decimal(6, 2) NULL DEFAULT 0.00 COMMENT '平均住院天数',
  `revenue` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '收入金额',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stats_id`) USING BTREE,
  INDEX `idx_stat_date`(`stat_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '住院运营数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_inpatient_stats
-- ----------------------------
INSERT INTO `drm_inpatient_stats` VALUES (1, '2025-10-13', '急诊科', 28, 33, 14, 66.73, 12.52, 133108.92, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (2, '2025-12-03', '内科', 21, 20, 50, 77.61, 13.76, 148342.86, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (3, '2025-03-20', 'ICU', 9, 32, 25, 69.45, 3.35, 106990.35, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (4, '2025-02-15', 'ICU', 17, 25, 35, 87.99, 8.70, 134637.63, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (5, '2025-12-03', '外科', 11, 5, 14, 80.50, 8.62, 175564.72, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (6, '2025-02-22', '骨科', 10, 23, 44, 62.77, 8.06, 188028.43, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (7, '2025-12-26', '中医科', 30, 15, 33, 77.51, 9.37, 166384.44, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (8, '2025-06-08', '泌尿外科', 37, 11, 25, 66.95, 5.62, 120853.66, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (9, '2025-11-08', '外科', 13, 21, 14, 67.42, 5.29, 197663.22, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (10, '2025-10-27', '内科', 22, 27, 19, 63.67, 9.81, 159876.62, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (11, '2025-04-08', '眼科', 35, 31, 12, 89.59, 5.30, 111842.25, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (12, '2025-04-12', '神经内科', 34, 22, 27, 62.91, 10.15, 29616.01, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (13, '2025-02-06', '泌尿外科', 9, 23, 43, 62.04, 8.07, 135276.37, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (14, '2025-07-07', '耳鼻喉科', 12, 38, 22, 82.56, 10.67, 113278.39, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (15, '2025-09-01', '耳鼻喉科', 22, 12, 37, 90.13, 8.79, 146168.66, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (16, '2025-05-19', '耳鼻喉科', 15, 11, 42, 86.27, 11.65, 26506.20, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (17, '2025-07-07', '急诊科', 27, 34, 24, 91.17, 12.28, 181643.35, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (18, '2025-09-08', '急诊科', 5, 33, 43, 89.89, 5.76, 87027.37, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (19, '2025-06-23', '儿科', 23, 26, 44, 68.47, 7.62, 112793.94, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (20, '2025-11-20', '中医科', 7, 16, 30, 95.92, 5.03, 65599.15, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (21, '2025-06-17', 'ICU', 33, 23, 19, 64.92, 9.07, 164373.49, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (22, '2025-11-15', '眼科', 38, 9, 36, 73.85, 14.81, 109577.83, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (23, '2025-01-25', '内科', 39, 23, 13, 84.48, 10.50, 90634.46, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (24, '2025-03-06', '消化内科', 35, 35, 24, 90.23, 8.56, 56360.42, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (25, '2025-04-06', '泌尿外科', 36, 38, 11, 87.49, 14.80, 193588.23, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (26, '2025-10-10', '儿科', 28, 36, 29, 79.97, 4.41, 46508.11, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (27, '2025-04-07', '儿科', 37, 36, 33, 88.39, 3.52, 168674.82, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (28, '2025-07-12', '泌尿外科', 40, 36, 10, 73.98, 4.37, 101915.32, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (29, '2025-03-26', '妇产科', 40, 10, 46, 94.07, 9.00, 100413.71, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (30, '2025-06-02', '骨科', 15, 20, 13, 80.92, 8.16, 147599.41, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (31, '2025-07-18', '妇产科', 26, 33, 11, 85.87, 10.97, 113275.59, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (32, '2025-02-28', '消化内科', 33, 16, 13, 68.55, 10.99, 72186.91, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (33, '2025-02-16', '心内科', 26, 5, 48, 64.24, 9.41, 113740.88, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (34, '2025-11-27', '妇产科', 8, 34, 34, 84.81, 12.93, 118448.60, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (35, '2025-01-25', '中医科', 39, 22, 34, 80.27, 8.22, 130045.26, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (36, '2025-04-21', '眼科', 36, 35, 37, 79.31, 10.72, 73961.12, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (37, '2025-02-15', '骨科', 24, 7, 16, 93.05, 12.72, 132876.68, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (38, '2025-12-10', '儿科', 36, 11, 23, 95.39, 6.29, 139676.47, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (39, '2025-01-13', '内科', 40, 20, 44, 78.08, 14.21, 177668.46, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (40, '2025-03-11', '骨科', 18, 21, 44, 90.88, 12.02, 96781.19, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (41, '2025-12-17', '急诊科', 25, 12, 15, 89.79, 3.55, 75674.95, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (42, '2025-06-02', '中医科', 6, 19, 29, 96.00, 10.57, 144412.54, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (43, '2025-11-18', '消化内科', 39, 5, 17, 63.81, 12.79, 33856.00, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (44, '2025-06-23', '消化内科', 38, 16, 39, 78.17, 4.63, 142177.46, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (45, '2025-01-19', '儿科', 14, 19, 20, 79.23, 7.04, 194579.23, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (46, '2025-01-05', '儿科', 25, 29, 18, 91.89, 7.28, 157598.27, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (47, '2025-01-08', '耳鼻喉科', 26, 16, 29, 70.56, 5.02, 101540.61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (48, '2025-03-04', 'ICU', 40, 29, 28, 80.18, 9.08, 140012.45, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (49, '2025-11-12', '儿科', 18, 38, 17, 88.08, 5.82, 70010.34, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (50, '2025-10-12', '心内科', 7, 26, 33, 85.99, 9.34, 157285.74, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (51, '2025-06-21', '呼吸内科', 16, 11, 46, 88.41, 13.18, 91820.74, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (52, '2025-03-16', '眼科', 24, 22, 25, 96.25, 14.44, 161248.83, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (53, '2025-03-24', '急诊科', 10, 24, 50, 73.78, 9.63, 163030.56, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (54, '2025-03-19', '儿科', 29, 23, 11, 78.33, 13.42, 116316.69, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (55, '2025-07-13', '外科', 16, 4, 38, 87.92, 12.99, 149785.46, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (56, '2025-01-06', '妇产科', 17, 17, 33, 91.79, 7.08, 34090.50, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (57, '2025-03-22', '眼科', 10, 9, 12, 84.17, 4.87, 88450.63, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (58, '2025-07-17', '妇产科', 37, 32, 43, 80.96, 3.90, 178323.45, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (59, '2025-05-28', '耳鼻喉科', 5, 35, 37, 84.74, 7.01, 159112.24, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_inpatient_stats` VALUES (60, '2025-02-23', '泌尿外科', 20, 11, 45, 75.36, 6.96, 50726.21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_knowledge_category
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_category`;
CREATE TABLE `drm_knowledge_category`  (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父分类ID',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '知识分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_knowledge_category
-- ----------------------------
INSERT INTO `drm_knowledge_category` VALUES (1, '诊疗规范', NULL, 1, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (2, '管理制度', NULL, 2, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (3, '操作规程', NULL, 3, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (4, '应急预案', NULL, 4, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (5, '药品说明', NULL, 5, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (6, 'DRG专栏', NULL, 6, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (7, '临床路径', 1, 11, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (8, '指南共识', 1, 12, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (9, '财务制度', 2, 21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (10, '人事制度', 2, 22, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (11, '护理操作', 3, 31, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (12, '检验操作', 3, 32, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (13, '火灾预案', 4, 41, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (14, '停电预案', 4, 42, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (15, '抗生素使用', 5, 51, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (16, '麻醉药品', 5, 52, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (17, 'DRG分组规则', 6, 61, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_category` VALUES (18, 'DRG付费政策', 6, 62, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_knowledge_content
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_content`;
CREATE TABLE `drm_knowledge_content`  (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '内容ID',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '分类ID',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文内容',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `view_count` int(11) NULL DEFAULT 0 COMMENT '浏览次数',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`content_id`) USING BTREE,
  INDEX `idx_category_id`(`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '知识内容表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_knowledge_content
-- ----------------------------
INSERT INTO `drm_knowledge_content` VALUES (1, 1, '抗菌药物临床应用指导原则', '本文档规范了抗菌药物的合理使用，包括预防用药、治疗用药及联合用药的指征和方案。', '医务科', 264, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (2, 1, '临床路径管理制度', '各科室应按标准临床路径执行诊疗工作，确保医疗质量同质化管理。', '医务科', 130, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (3, 2, '医院财务管理制度', '规范医院财务收支、成本核算、预算管理等全流程管理要求。', '医务科', 36, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (4, 2, '绩效考核管理办法', '明确RBRVS、收支结余等多种绩效核算方式及分配原则。', '医务科', 321, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (5, 3, '手术安全核查制度', '手术前、手术中、手术后必须进行三方核查，确保手术安全。', '医务科', 155, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (6, 4, '医院火灾应急预案', '发现火情立即报警，启动灭火预案，组织患者疏散，保障人身安全。', '医务科', 234, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (7, 5, '麻醉药品使用规范', '严格遵守麻醉药品\"五专\"管理，确保用药安全。', '医务科', 59, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (8, 6, 'DRG分组方案（2025版）', '本院DRG分组规则及权重配置，适用于DRG付费和绩效评价。', '医务科', 307, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_knowledge_content` VALUES (9, 6, 'DRG付费清算办法', '按DRG付费标准与医院实际发生的医疗费用进行差额清算。', '医务科', 235, '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_operation_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_operation_report`;
CREATE TABLE `drm_operation_report`  (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报告ID',
  `report_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报告类型',
  `period_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '周期类型',
  `report_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报告标题',
  `report_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '报告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1草稿 2已发布）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '运营报告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_operation_report
-- ----------------------------
INSERT INTO `drm_operation_report` VALUES (1, '门诊统计', 'monthly', '门诊月报', '<p>本报告为门诊统计monthly分析报告，数据来源于医院信息系统。</p>', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_operation_report` VALUES (2, '住院统计', 'monthly', '住院月报', '<p>本报告为住院统计monthly分析报告，数据来源于医院信息系统。</p>', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_operation_report` VALUES (3, '手术统计', 'quarterly', '手术季报', '<p>本报告为手术统计quarterly分析报告，数据来源于医院信息系统。</p>', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_operation_report` VALUES (4, 'DRG分析', 'yearly', 'DRG年报', '<p>本报告为DRG分析yearly分析报告，数据来源于医院信息系统。</p>', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_operation_report` VALUES (5, '收支统计', 'monthly', '财务月报', '<p>本报告为收支统计monthly分析报告，数据来源于医院信息系统。</p>', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_operation_report` VALUES (6, '质量指标', 'quarterly', '质量季报', '<p>本报告为质量指标quarterly分析报告，数据来源于医院信息系统。</p>', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_operation_topic
-- ----------------------------
DROP TABLE IF EXISTS `drm_operation_topic`;
CREATE TABLE `drm_operation_topic`  (
  `topic_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '专题ID',
  `topic_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专题名称',
  `topic_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专题类型（科室分析/病种分析/DRG分析/成本分析等）',
  `target_dept` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标科室',
  `analysis_model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分析模型（对比分析/趋势分析/分布分析/关联分析等）',
  `data_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '数据配置（JSON格式，存储选择的数据维度和指标）',
  `chart_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图表配置（JSON格式，存储图表类型和配置）',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `ai_insights` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'AI分析洞察',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`topic_id`) USING BTREE,
  INDEX `idx_topic_type`(`topic_type`) USING BTREE,
  INDEX `idx_target_dept`(`target_dept`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '专题分析表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_operation_topic
-- ----------------------------
INSERT INTO `drm_operation_topic` VALUES (1, '骨科运营分析', '科室分析', '骨科', '对比分析', '{\"metrics\":[\"门诊量\",\"住院量\",\"手术量\",\"收入\"],\"period\":\"last30days\"}', NULL, '0', NULL, 'admin', '2026-05-24 13:59:56', '', '2026-05-24 13:59:56', NULL);
INSERT INTO `drm_operation_topic` VALUES (2, '心内科DRG分析', 'DRG分析', '心内科', '趋势分析', '{\"metrics\":[\"DRG组数\",\"CMI值\",\"费用消耗指数\",\"时间消耗指数\"],\"period\":\"last90days\"}', NULL, '0', NULL, 'admin', '2026-05-24 13:59:56', '', '2026-05-24 13:59:56', NULL);
INSERT INTO `drm_operation_topic` VALUES (3, '全院成本分析', '成本分析', NULL, '分布分析', '{\"metrics\":[\"人力成本\",\"材料成本\",\"设备成本\",\"药品成本\"],\"period\":\"lastmonth\"}', NULL, '0', NULL, 'admin', '2026-05-24 13:59:56', '', '2026-05-24 13:59:56', NULL);

-- ----------------------------
-- Table structure for drm_outpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_outpatient_stats`;
CREATE TABLE `drm_outpatient_stats`  (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `register_cnt` int(11) NULL DEFAULT 0 COMMENT '挂号数量',
  `visit_cnt` int(11) NULL DEFAULT 0 COMMENT '就诊数量',
  `revenue` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '收入金额',
  `avg_cost` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '人均费用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stats_id`) USING BTREE,
  INDEX `idx_stat_date`(`stat_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '门诊运营数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_outpatient_stats
-- ----------------------------
INSERT INTO `drm_outpatient_stats` VALUES (1, '2025-09-04', 'ICU', 288, 183, 9210.68, 50.33, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (2, '2025-10-03', '外科', 93, 254, 79118.29, 311.49, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (3, '2025-06-20', '消化内科', 43, 213, 20494.11, 96.22, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (4, '2025-06-20', '儿科', 163, 148, 78031.84, 527.24, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (5, '2025-12-09', '儿科', 91, 202, 43129.94, 213.51, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (6, '2025-06-15', '皮肤科', 254, 167, 42112.47, 252.17, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (7, '2025-05-27', '消化内科', 215, 38, 52800.08, 1389.48, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (8, '2025-03-12', '妇产科', 163, 167, 39901.75, 238.93, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (9, '2025-04-13', '泌尿外科', 205, 130, 71544.64, 550.34, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (10, '2025-09-17', '内科', 83, 44, 40101.21, 911.39, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (11, '2025-08-21', '急诊科', 258, 244, 27713.61, 113.58, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (12, '2025-04-25', '消化内科', 294, 210, 10329.27, 49.19, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (13, '2025-07-06', '眼科', 234, 94, 25908.44, 275.62, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (14, '2025-07-27', '呼吸内科', 63, 190, 38753.30, 203.96, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (15, '2025-11-12', '神经内科', 263, 76, 47097.18, 619.70, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (16, '2025-08-24', '皮肤科', 100, 232, 7421.74, 31.99, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (17, '2025-10-15', '皮肤科', 214, 65, 46977.84, 722.74, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (18, '2025-07-17', 'ICU', 42, 266, 13807.21, 51.91, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (19, '2025-03-26', '外科', 114, 133, 43803.05, 329.35, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (20, '2025-06-21', '内科', 171, 259, 70398.70, 271.81, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (21, '2025-07-07', '神经内科', 152, 277, 41724.22, 150.63, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (22, '2025-01-05', '骨科', 221, 164, 5542.82, 33.80, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (23, '2025-11-01', '儿科', 75, 174, 13016.50, 74.81, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (24, '2025-03-03', '内科', 290, 222, 14558.43, 65.58, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (25, '2025-03-16', '急诊科', 114, 253, 75022.57, 296.53, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (26, '2025-11-20', '中医科', 261, 189, 68921.24, 364.66, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (27, '2025-03-21', '儿科', 199, 176, 14163.52, 80.47, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (28, '2025-09-22', '皮肤科', 63, 270, 41299.87, 152.96, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (29, '2025-04-24', '内科', 279, 145, 26345.42, 181.69, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (30, '2025-10-25', '耳鼻喉科', 69, 165, 58294.49, 353.30, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (31, '2025-09-15', '耳鼻喉科', 289, 170, 55819.90, 328.35, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (32, '2025-08-11', '中医科', 170, 130, 74826.73, 575.59, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (33, '2025-11-20', '外科', 156, 173, 56195.48, 324.83, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (34, '2025-07-03', '呼吸内科', 45, 36, 49054.61, 1362.63, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (35, '2025-05-25', '心内科', 267, 117, 33184.82, 283.63, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (36, '2025-01-18', '内科', 230, 99, 40894.23, 413.07, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (37, '2025-11-06', '呼吸内科', 164, 189, 64549.70, 341.53, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (38, '2025-01-24', '内科', 179, 144, 33182.76, 230.44, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (39, '2025-01-12', '眼科', 125, 171, 47489.72, 277.72, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (40, '2025-11-18', '急诊科', 219, 56, 51248.49, 915.15, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (41, '2025-01-28', '急诊科', 73, 264, 9106.71, 34.50, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (42, '2025-05-13', '急诊科', 234, 142, 49630.98, 349.51, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (43, '2025-09-08', 'ICU', 45, 196, 70868.37, 361.57, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (44, '2025-10-02', '心内科', 128, 80, 27924.08, 349.05, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (45, '2025-03-10', '皮肤科', 143, 26, 23694.18, 911.31, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (46, '2025-05-28', '骨科', 37, 195, 29917.08, 153.42, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (47, '2025-01-12', '神经内科', 300, 69, 26530.90, 384.51, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (48, '2025-07-07', '皮肤科', 183, 155, 26223.34, 169.18, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (49, '2025-05-22', '外科', 207, 124, 15738.49, 126.92, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (50, '2025-02-19', '内科', 69, 42, 9182.39, 218.63, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (51, '2025-12-21', '神经内科', 216, 277, 35894.31, 129.58, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (52, '2025-12-21', '内科', 289, 279, 50716.57, 181.78, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (53, '2025-03-01', '泌尿外科', 195, 262, 62997.62, 240.45, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (54, '2025-10-15', '皮肤科', 141, 254, 63396.21, 249.59, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (55, '2025-11-24', '内科', 180, 278, 15262.60, 54.90, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (56, '2025-11-07', '儿科', 32, 132, 75075.94, 568.76, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (57, '2025-01-06', 'ICU', 263, 158, 62097.59, 393.02, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (58, '2025-08-11', '消化内科', 184, 236, 12289.27, 52.07, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (59, '2025-07-10', '妇产科', 48, 221, 44942.64, 203.36, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_outpatient_stats` VALUES (60, '2025-06-23', '呼吸内科', 298, 39, 36062.36, 924.68, 'admin', '2026-05-24 06:59:10', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_perf_plan
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_plan`;
CREATE TABLE `drm_perf_plan`  (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '方案ID',
  `plan_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '方案名称',
  `plan_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方案类型',
  `effective_date` date NULL DEFAULT NULL COMMENT '生效日期',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0草稿 1启用 2停用）',
  `formula_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '公式配置JSON',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '绩效方案表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_perf_plan
-- ----------------------------
INSERT INTO `drm_perf_plan` VALUES (1, 'RBRVS绩效方案', 'RBRVS', '2025-01-01', '0', '{\"weight\":{\"revenue\":0.4,\"quality\":0.3,\"efficiency\":0.3}}', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_plan` VALUES (2, '收支结余方案', '收支结余', '2025-01-01', '0', '{\"weight\":{\"revenue\":0.3,\"quality\":0.4,\"efficiency\":0.3}}', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_plan` VALUES (3, '工作量积分方案', '工作量积分', '2025-04-01', '0', '{\"weight\":{\"revenue\":0.4,\"quality\":0.3,\"efficiency\":0.3}}', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_plan` VALUES (4, 'DRG效能方案', 'DRG效能', '2025-07-01', '0', '{\"weight\":{\"revenue\":0.4,\"quality\":0.3,\"efficiency\":0.3}}', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_plan` VALUES (5, '综合目标考核', '目标管理', '2025-01-01', '0', '{\"weight\":{\"revenue\":0.3,\"quality\":0.4,\"efficiency\":0.3}}', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_perf_result
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_result`;
CREATE TABLE `drm_perf_result`  (
  `result_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '结果ID',
  `plan_id` bigint(20) NOT NULL COMMENT '方案ID',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `doctor_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `perf_score` decimal(6, 2) NULL DEFAULT 0.00 COMMENT '绩效评分',
  `perf_amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '绩效金额',
  `calc_date` date NULL DEFAULT NULL COMMENT '计算日期',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`result_id`) USING BTREE,
  INDEX `idx_plan_id`(`plan_id`) USING BTREE,
  INDEX `idx_calc_date`(`calc_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '绩效结果表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_perf_result
-- ----------------------------
INSERT INTO `drm_perf_result` VALUES (1, 2, '眼科', '赵明', 73.25, 7745.91, '2025-03-11', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (2, 4, '急诊科', '陈晓', 85.03, 17693.26, '2025-01-16', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (3, 2, '妇产科', '刘洋', 79.77, 36253.49, '2025-01-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (4, 1, '急诊科', '王芳', 99.59, 33428.65, '2025-04-08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (5, 4, 'ICU', '李敏', 94.40, 43591.95, '2025-11-08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (6, 3, '急诊科', '周涛', 82.14, 25475.67, '2025-01-24', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (7, 2, '皮肤科', '赵红', 83.01, 20604.61, '2025-07-26', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (8, 3, '外科', '赵明', 71.20, 7581.00, '2025-10-26', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (9, 3, '内科', '李娜', 77.49, 14409.05, '2025-05-15', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (10, 3, '妇产科', '赵红', 84.06, 38192.14, '2025-12-23', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (11, 1, '外科', '李娜', 62.73, 15415.64, '2025-08-11', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (12, 5, '呼吸内科', '赵红', 97.60, 14180.19, '2025-07-20', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (13, 1, '呼吸内科', '冯军', 67.60, 31517.09, '2025-02-03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (14, 4, '急诊科', '周涛', 78.47, 26280.38, '2025-12-16', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (15, 2, '神经内科', '刘洋', 83.87, 17414.93, '2025-08-17', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (16, 3, '内科', '孙杰', 86.45, 24255.35, '2025-06-20', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (17, 1, '急诊科', '刘洋', 65.86, 21677.76, '2025-05-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (18, 5, '妇产科', '冯军', 88.21, 31220.44, '2025-04-19', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (19, 3, '神经内科', '孙杰', 74.25, 7671.78, '2025-09-15', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (20, 5, 'ICU', '王磊', 83.81, 13553.43, '2025-04-07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (21, 2, 'ICU', '刘强', 60.53, 27293.60, '2025-01-22', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (22, 1, '呼吸内科', '吴婷', 81.86, 37986.41, '2025-09-27', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (23, 3, '外科', '冯军', 69.01, 19684.40, '2025-06-10', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (24, 3, '儿科', '孙丽', 92.67, 22213.41, '2025-12-02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (25, 1, '呼吸内科', '赵明', 75.58, 8270.24, '2025-04-03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (26, 2, '消化内科', '周涛', 81.59, 29154.50, '2025-02-10', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (27, 4, '内科', '孙丽', 93.14, 38422.33, '2025-03-15', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (28, 2, '妇产科', '张伟', 91.89, 38222.16, '2025-02-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (29, 3, '眼科', '王磊', 80.59, 35759.17, '2025-12-06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (30, 1, '消化内科', '郑凯', 86.64, 20848.06, '2025-10-27', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (31, 1, '妇产科', '孙杰', 68.71, 8484.11, '2025-08-11', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (32, 1, '外科', '张伟', 93.27, 19687.85, '2025-06-17', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (33, 3, '妇产科', '李敏', 93.86, 24060.65, '2025-01-23', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (34, 4, '妇产科', '李敏', 82.08, 14559.37, '2025-07-27', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (35, 5, '内科', '赵红', 98.87, 48080.99, '2025-09-20', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (36, 3, '内科', '陈静', 74.97, 31901.05, '2025-10-03', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (37, 4, '呼吸内科', '周燕', 63.41, 6703.87, '2025-07-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (38, 3, '内科', '张伟', 97.57, 24443.37, '2025-07-07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (39, 1, '泌尿外科', '周燕', 71.00, 19635.41, '2025-12-01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (40, 2, '内科', '郑丽', 90.67, 43571.04, '2025-06-16', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (41, 5, '呼吸内科', '李娜', 95.14, 24350.89, '2025-02-14', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (42, 1, '皮肤科', '刘强', 61.92, 30178.11, '2025-06-04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (43, 1, '泌尿外科', '刘强', 82.75, 19536.97, '2025-08-05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (44, 1, '耳鼻喉科', '王磊', 93.45, 16157.18, '2025-02-24', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (45, 1, '泌尿外科', '赵明', 64.92, 11556.90, '2025-02-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (46, 2, '消化内科', '郑凯', 60.73, 10039.61, '2025-06-10', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (47, 3, '内科', '刘强', 98.45, 28710.39, '2025-09-01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (48, 1, '神经内科', '赵红', 70.19, 14809.59, '2025-12-14', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (49, 3, 'ICU', '周涛', 61.10, 11662.09, '2025-03-15', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (50, 3, '神经内科', '周燕', 70.66, 26791.55, '2025-02-24', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (51, 2, '骨科', '孙丽', 71.26, 7306.34, '2025-06-20', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (52, 4, '泌尿外科', '刘强', 63.25, 13852.80, '2025-12-01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (53, 1, '骨科', '孙杰', 73.44, 22367.90, '2025-04-27', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (54, 2, '骨科', '张伟', 74.75, 29495.16, '2025-04-22', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (55, 2, '急诊科', '王磊', 69.95, 12276.54, '2025-11-27', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (56, 2, '心内科', '张伟', 91.36, 40778.13, '2025-02-16', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (57, 1, '泌尿外科', '郑凯', 67.61, 20760.98, '2025-08-28', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (58, 4, '内科', '周涛', 64.36, 15319.68, '2025-01-15', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (59, 3, '消化内科', '周涛', 86.59, 12629.99, '2025-06-02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (60, 4, '妇产科', '王磊', 60.25, 16779.69, '2025-07-10', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (61, 5, '急诊科', '周燕', 76.44, 9549.93, '2025-02-23', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (62, 5, '儿科', '郑凯', 69.45, 19379.23, '2025-12-10', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (63, 5, '中医科', '陈晓', 61.54, 22801.00, '2025-06-09', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (64, 2, '皮肤科', '赵红', 60.66, 27967.54, '2025-11-18', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (65, 5, '心内科', '周涛', 97.41, 38023.14, '2025-06-09', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (66, 1, '耳鼻喉科', '冯军', 99.43, 46085.31, '2025-06-16', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (67, 1, '消化内科', '赵红', 86.65, 40566.82, '2025-07-17', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (68, 2, '耳鼻喉科', '张伟', 93.04, 27862.15, '2025-10-04', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (69, 2, '心内科', '刘洋', 75.19, 37296.52, '2025-07-01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (70, 4, '骨科', '李娜', 81.45, 29986.60, '2025-02-27', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (71, 5, '儿科', '陈晓', 86.64, 30867.03, '2025-07-06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (72, 3, '消化内科', '刘洋', 92.84, 37624.86, '2025-02-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (73, 2, '泌尿外科', '郑凯', 65.63, 30806.14, '2025-03-07', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (74, 2, '中医科', '周燕', 84.45, 13986.44, '2025-02-13', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (75, 2, '消化内科', '冯军', 73.33, 23601.69, '2025-07-19', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (76, 4, '中医科', '王磊', 68.57, 19871.81, '2025-01-16', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (77, 1, '儿科', '张伟', 79.17, 23889.68, '2025-10-08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (78, 4, '妇产科', '赵明', 73.65, 15574.45, '2025-09-12', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (79, 5, '外科', '孙丽', 78.91, 24907.25, '2025-03-05', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (80, 5, '耳鼻喉科', '孙丽', 67.95, 31489.39, '2025-07-09', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (81, 2, '皮肤科', '周涛', 70.96, 10351.98, '2025-07-13', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (82, 2, '神经内科', '周涛', 78.88, 17138.33, '2025-11-24', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (83, 5, '妇产科', '吴昊', 97.22, 13242.22, '2025-08-25', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (84, 4, '耳鼻喉科', '陈晓', 73.06, 9301.51, '2025-10-23', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (85, 1, '心内科', '冯军', 93.40, 43775.76, '2025-02-13', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (86, 3, '急诊科', '孙丽', 99.80, 15399.41, '2025-05-08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (87, 2, '儿科', '郑丽', 90.05, 36372.19, '2025-07-09', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (88, 5, '急诊科', '王芳', 86.16, 43064.75, '2025-12-01', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (89, 3, '中医科', '陈晓', 72.25, 9007.33, '2025-09-27', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (90, 5, '眼科', '郑凯', 81.61, 28464.84, '2025-03-09', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (91, 1, '外科', '王芳', 63.59, 29740.70, '2025-07-08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (92, 2, '眼科', '吴昊', 92.80, 34088.33, '2025-12-08', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (93, 3, '妇产科', '郑凯', 78.14, 27322.14, '2025-03-12', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (94, 3, 'ICU', '王芳', 99.84, 21612.43, '2025-07-02', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (95, 1, '耳鼻喉科', '陈静', 67.73, 13762.09, '2025-02-23', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (96, 3, '急诊科', '刘强', 82.15, 11197.59, '2025-01-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (97, 3, 'ICU', '赵红', 83.84, 38626.96, '2025-10-28', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (98, 2, '消化内科', '陈静', 71.24, 24901.85, '2025-08-20', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (99, 1, '骨科', '王磊', 92.03, 35183.11, '2025-05-21', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_perf_result` VALUES (100, 4, '儿科', '刘强', 74.67, 32105.62, '2025-11-06', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_prescription_review
-- ----------------------------
DROP TABLE IF EXISTS `drm_prescription_review`;
CREATE TABLE `drm_prescription_review`  (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '点评ID',
  `review_date` date NOT NULL COMMENT '点评日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `doctor_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `prescription_cnt` int(11) NULL DEFAULT 0 COMMENT '处方数量',
  `qualified_cnt` int(11) NULL DEFAULT 0 COMMENT '合格数量',
  `unqualified_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '不合格原因',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`review_id`) USING BTREE,
  INDEX `idx_review_date`(`review_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '处方点评表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_prescription_review
-- ----------------------------
INSERT INTO `drm_prescription_review` VALUES (1, '2025-08-21', '皮肤科', '刘洋', 60, 49, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (2, '2025-05-19', '泌尿外科', '李敏', 20, 18, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (3, '2025-02-24', '神经内科', '王芳', 46, 38, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (4, '2025-06-22', '中医科', '张伟', 65, 59, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (5, '2025-07-13', '内科', '王磊', 34, 34, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (6, '2025-02-06', '儿科', '李敏', 69, 50, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (7, '2025-12-06', '心内科', '孙杰', 23, 17, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (8, '2025-05-09', 'ICU', '刘洋', 55, 39, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (9, '2025-09-22', '急诊科', '王磊', 62, 54, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (10, '2025-06-16', '妇产科', '王磊', 31, 28, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (11, '2025-10-04', '神经内科', '刘强', 96, 69, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (12, '2025-02-21', '儿科', '刘洋', 43, 33, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (13, '2025-05-17', '耳鼻喉科', '陈静', 51, 50, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (14, '2025-11-01', '眼科', '郑丽', 52, 46, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (15, '2025-06-17', '妇产科', '赵明', 59, 57, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (16, '2025-04-27', '神经内科', '吴婷', 38, 33, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (17, '2025-11-03', '儿科', '孙杰', 93, 80, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (18, '2025-09-08', '皮肤科', '刘洋', 59, 44, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (19, '2025-06-12', '急诊科', '吴昊', 25, 24, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (20, '2025-09-05', '泌尿外科', '冯军', 48, 35, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (21, '2025-11-19', '妇产科', '冯军', 45, 43, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (22, '2025-06-12', '泌尿外科', '周燕', 63, 59, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (23, '2025-07-17', '妇产科', '郑丽', 93, 70, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (24, '2025-11-01', '耳鼻喉科', '刘强', 67, 58, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (25, '2025-07-06', '急诊科', '陈晓', 47, 35, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (26, '2025-12-13', '耳鼻喉科', '赵红', 43, 34, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (27, '2025-05-07', '神经内科', '李娜', 44, 36, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (28, '2025-12-20', '急诊科', '郑丽', 42, 34, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (29, '2025-11-10', '呼吸内科', '李敏', 74, 71, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (30, '2025-01-14', '神经内科', '李娜', 30, 21, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (31, '2025-09-10', '心内科', '赵明', 89, 75, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (32, '2025-05-26', '神经内科', '李敏', 42, 29, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (33, '2025-01-27', '眼科', '王芳', 53, 48, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (34, '2025-08-27', '眼科', '吴昊', 20, 18, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (35, '2025-10-27', '骨科', '冯军', 30, 22, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (36, '2025-02-27', '耳鼻喉科', '陈晓', 30, 26, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (37, '2025-06-17', '心内科', '郑凯', 52, 40, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (38, '2025-02-05', '儿科', '郑丽', 55, 39, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (39, '2025-03-13', '消化内科', '刘洋', 23, 21, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (40, '2025-05-24', '神经内科', '陈晓', 66, 56, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (41, '2025-02-11', '消化内科', '周燕', 94, 66, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (42, '2025-10-09', '儿科', '李敏', 65, 54, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (43, '2025-04-15', '眼科', '冯军', 99, 84, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (44, '2025-07-14', '心内科', '李敏', 35, 25, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (45, '2025-12-15', '心内科', '孙丽', 81, 59, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (46, '2025-12-10', '眼科', '赵明', 83, 78, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (47, '2025-05-25', 'ICU', '郑凯', 99, 89, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (48, '2025-06-28', '外科', '赵红', 70, 53, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (49, '2025-04-26', '心内科', '李娜', 39, 28, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_prescription_review` VALUES (50, '2025-03-09', '外科', '张伟', 39, 33, NULL, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_project_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_project_cost`;
CREATE TABLE `drm_project_cost`  (
  `project_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `project_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目类型',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `budget_amount` decimal(15, 2) NULL DEFAULT NULL COMMENT '预算金额',
  `actual_amount` decimal(15, 2) NULL DEFAULT NULL COMMENT '实际金额',
  `cost_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成本日期',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`project_id`) USING BTREE,
  INDEX `idx_project_type`(`project_type`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE,
  INDEX `idx_cost_date`(`cost_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '项目成本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_project_cost
-- ----------------------------
INSERT INTO `drm_project_cost` VALUES (1, '骨科设备更新', '设备采购', '骨科', 500000.00, 485000.00, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_project_cost` VALUES (2, '心内科介入治疗', '治疗项目', '心内科', 300000.00, 315000.00, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_project_cost` VALUES (3, '手术室改造', '基建项目', '普通外科', 800000.00, 780000.00, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_project_cost` VALUES (4, '儿科体检设备', '设备采购', '儿科', 200000.00, 195000.00, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);
INSERT INTO `drm_project_cost` VALUES (5, '病房信息系统', '信息化', '信息科', 150000.00, 145000.00, '2025-05', 'admin', '2026-05-24 14:11:12', '', '2026-05-24 14:11:12', NULL);

-- ----------------------------
-- Table structure for drm_quality_event
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_event`;
CREATE TABLE `drm_quality_event`  (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '事件ID',
  `event_date` date NOT NULL COMMENT '发生日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `event_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '事件类型',
  `event_level` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '事件级别（1一般 2严重 3重大）',
  `event_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '事件描述',
  `handling_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '处理状态（0待处理 1处理中 2已处理）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`event_id`) USING BTREE,
  INDEX `idx_event_date`(`event_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '不良事件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_quality_event
-- ----------------------------
INSERT INTO `drm_quality_event` VALUES (1, '2025-07-28', '儿科', '输液反应', '1', '耳鼻喉科张伟发生医患纠纷', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (2, '2025-02-02', '神经内科', '医患纠纷', '1', '心内科刘强发生手术并发症', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (3, '2025-01-21', '呼吸内科', '医患纠纷', '3', '皮肤科赵明发生药品不良反应', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (4, '2025-03-23', '急诊科', '输液反应', '2', '眼科周涛发生手术并发症', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (5, '2025-06-21', '神经内科', '输液反应', '2', '眼科李敏发生药品不良反应', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (6, '2025-10-14', '急诊科', '器械不良', '1', '外科孙丽发生输液反应', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (7, '2025-03-27', 'ICU', '器械不良', '3', '神经内科周涛发生医患纠纷', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (8, '2025-03-20', '耳鼻喉科', '药品不良反应', '1', '消化内科赵红发生医患纠纷', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (9, '2025-04-23', '外科', '药品不良反应', '3', '呼吸内科陈静发生医患纠纷', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (10, '2025-10-08', '泌尿外科', '输液反应', '3', '儿科吴昊发生院内感染', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (11, '2025-10-15', '儿科', '药品不良反应', '2', '耳鼻喉科吴昊发生输液反应', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (12, '2025-07-07', '急诊科', '手术并发症', '3', '外科冯军发生跌倒坠床', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (13, '2025-02-21', '心内科', '院内感染', '2', '急诊科赵红发生手术并发症', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (14, '2025-05-03', '外科', '器械不良', '2', '外科李娜发生院内感染', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (15, '2025-02-09', '儿科', '跌倒坠床', '2', '耳鼻喉科李敏发生跌倒坠床', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (16, '2025-06-06', '骨科', '医患纠纷', '1', '眼科孙杰发生院内感染', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (17, '2025-05-26', '眼科', '院内感染', '2', '心内科郑凯发生器械不良', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (18, '2025-12-06', '中医科', '手术并发症', '2', '儿科刘洋发生跌倒坠床', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (19, '2025-08-27', '泌尿外科', '院内感染', '2', '皮肤科陈晓发生输液反应', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (20, '2025-01-26', '耳鼻喉科', '器械不良', '2', '泌尿外科周燕发生医患纠纷', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (21, '2025-11-26', '骨科', '手术并发症', '1', '内科王芳发生输液反应', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (22, '2025-11-06', '中医科', '医患纠纷', '3', '呼吸内科赵红发生器械不良', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (23, '2025-07-22', '消化内科', '器械不良', '3', '眼科孙丽发生器械不良', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (24, '2025-06-06', '眼科', '药品不良反应', '2', '心内科周燕发生手术并发症', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (25, '2025-11-17', '呼吸内科', '药品不良反应', '3', '骨科孙丽发生跌倒坠床', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (26, '2025-10-15', '消化内科', '器械不良', '2', '内科李敏发生跌倒坠床', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (27, '2025-11-08', '神经内科', '医患纠纷', '3', '外科王芳发生手术并发症', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (28, '2025-09-16', '心内科', '手术并发症', '1', '内科郑丽发生输液反应', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (29, '2025-05-13', '外科', '输液反应', '1', '眼科赵明发生手术并发症', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (30, '2025-01-26', '外科', '手术并发症', '1', 'ICU郑丽发生医患纠纷', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (31, '2025-03-11', '神经内科', '手术并发症', '1', 'ICU李娜发生医患纠纷', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (32, '2025-10-04', '中医科', '器械不良', '1', '外科孙杰发生院内感染', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (33, '2025-11-08', '皮肤科', '院内感染', '1', '皮肤科张伟发生药品不良反应', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (34, '2025-03-21', 'ICU', '医患纠纷', '2', '消化内科张伟发生跌倒坠床', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (35, '2025-09-09', '中医科', '输液反应', '2', '消化内科郑丽发生医患纠纷', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (36, '2025-06-20', '外科', '跌倒坠床', '3', 'ICU陈晓发生输液反应', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (37, '2025-03-12', '心内科', '跌倒坠床', '3', '骨科张伟发生手术并发症', '2', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (38, '2025-12-28', '眼科', '手术并发症', '2', '外科郑丽发生药品不良反应', '0', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (39, '2025-10-23', '外科', '药品不良反应', '2', '骨科李敏发生院内感染', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_event` VALUES (40, '2025-03-28', '骨科', '院内感染', '1', '呼吸内科陈晓发生院内感染', '1', 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_quality_indicator
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_indicator`;
CREATE TABLE `drm_quality_indicator`  (
  `indicator_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '指标ID',
  `indicator_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `indicator_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '指标编码',
  `indicator_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '指标名称',
  `indicator_value` decimal(12, 4) NULL DEFAULT 0.0000 COMMENT '指标值',
  `target_value` decimal(12, 4) NULL DEFAULT 0.0000 COMMENT '目标值',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`indicator_id`) USING BTREE,
  INDEX `idx_indicator_date`(`indicator_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '质量指标表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_quality_indicator
-- ----------------------------
INSERT INTO `drm_quality_indicator` VALUES (1, '2025-06-11', '妇产科', 'QI05', '平均住院日', 9.3340, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (2, '2025-12-12', '耳鼻喉科', 'QI07', '危急值报告及时率', 80.8369, 98.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (3, '2025-09-02', '消化内科', 'QI06', '药品不良反应报告率', 0.2868, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (4, '2025-02-27', '外科', 'QI06', '药品不良反应报告率', 0.3411, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (5, '2025-09-03', '神经内科', 'QI01', '甲级病案率', 88.7403, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (6, '2025-12-24', '呼吸内科', 'QI05', '平均住院日', 9.4943, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (7, '2025-06-28', '外科', 'QI03', '手术并发症发生率', 0.4063, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (8, '2025-08-19', '泌尿外科', 'QI10', '医患纠纷发生率', 0.5956, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (9, '2025-01-19', '外科', 'QI02', '院感发生率', 1.6103, 1.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (10, '2025-12-17', '泌尿外科', 'QI04', '院内再住院率', 5.4866, 5.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (11, '2025-06-25', 'ICU', 'QI03', '手术并发症发生率', 0.4204, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (12, '2025-10-18', '外科', 'QI08', '处方合格率', 86.2340, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (13, '2025-01-08', '急诊科', 'QI10', '医患纠纷发生率', 0.4346, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (14, '2025-08-21', '急诊科', 'QI10', '医患纠纷发生率', 0.5004, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (15, '2025-06-19', '外科', 'QI04', '院内再住院率', 5.5802, 5.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (16, '2025-08-05', '耳鼻喉科', 'QI09', '输血反应发生率', 0.0823, 0.1000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (17, '2025-10-25', '急诊科', 'QI09', '输血反应发生率', 0.0864, 0.1000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (18, '2025-10-04', '呼吸内科', 'QI02', '院感发生率', 1.6523, 1.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (19, '2025-03-05', '眼科', 'QI04', '院内再住院率', 5.2058, 5.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (20, '2025-08-17', 'ICU', 'QI09', '输血反应发生率', 0.0939, 0.1000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (21, '2025-02-27', '急诊科', 'QI03', '手术并发症发生率', 0.5175, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (22, '2025-03-02', '妇产科', 'QI05', '平均住院日', 8.1562, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (23, '2025-10-28', '妇产科', 'QI01', '甲级病案率', 103.4736, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (24, '2025-10-05', '外科', 'QI06', '药品不良反应报告率', 0.3547, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (25, '2025-08-07', '泌尿外科', 'QI05', '平均住院日', 7.0318, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (26, '2025-03-25', '呼吸内科', 'QI05', '平均住院日', 8.1365, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (27, '2025-03-24', '骨科', 'QI04', '院内再住院率', 4.2156, 5.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (28, '2025-04-02', '呼吸内科', 'QI08', '处方合格率', 87.2143, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (29, '2025-12-27', '泌尿外科', 'QI08', '处方合格率', 112.6385, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (30, '2025-05-17', '呼吸内科', 'QI01', '甲级病案率', 88.8035, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (31, '2025-02-10', '骨科', 'QI09', '输血反应发生率', 0.0949, 0.1000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (32, '2025-07-27', 'ICU', 'QI06', '药品不良反应报告率', 0.2848, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (33, '2025-12-09', '儿科', 'QI07', '危急值报告及时率', 115.8365, 98.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (34, '2025-09-26', '妇产科', 'QI08', '处方合格率', 98.8742, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (35, '2025-12-19', '骨科', 'QI03', '手术并发症发生率', 0.4990, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (36, '2025-09-11', '皮肤科', 'QI03', '手术并发症发生率', 0.4298, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (37, '2025-12-04', '儿科', 'QI05', '平均住院日', 8.5353, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (38, '2025-03-06', '妇产科', 'QI05', '平均住院日', 9.0626, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (39, '2025-12-18', '中医科', 'QI08', '处方合格率', 98.6568, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (40, '2025-02-07', '中医科', 'QI02', '院感发生率', 1.2384, 1.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (41, '2025-04-23', '骨科', 'QI01', '甲级病案率', 95.3672, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (42, '2025-08-09', '皮肤科', 'QI01', '甲级病案率', 91.2833, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (43, '2025-05-19', '皮肤科', 'QI09', '输血反应发生率', 0.1148, 0.1000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (44, '2025-09-01', 'ICU', 'QI02', '院感发生率', 1.5800, 1.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (45, '2025-12-10', '泌尿外科', 'QI01', '甲级病案率', 104.8391, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (46, '2025-10-04', '耳鼻喉科', 'QI10', '医患纠纷发生率', 0.4682, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (47, '2025-02-06', '妇产科', 'QI03', '手术并发症发生率', 0.5500, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (48, '2025-09-22', '儿科', 'QI08', '处方合格率', 84.5269, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (49, '2025-10-11', '耳鼻喉科', 'QI10', '医患纠纷发生率', 0.5705, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (50, '2025-09-10', '消化内科', 'QI10', '医患纠纷发生率', 0.4123, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (51, '2025-02-20', '外科', 'QI02', '院感发生率', 1.5824, 1.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (52, '2025-06-26', '内科', 'QI09', '输血反应发生率', 0.0868, 0.1000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (53, '2025-02-14', '内科', 'QI07', '危急值报告及时率', 91.7125, 98.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (54, '2025-06-08', '神经内科', 'QI06', '药品不良反应报告率', 0.2427, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (55, '2025-05-08', '中医科', 'QI01', '甲级病案率', 94.1734, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (56, '2025-09-11', '内科', 'QI07', '危急值报告及时率', 85.3081, 98.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (57, '2025-04-13', '呼吸内科', 'QI04', '院内再住院率', 5.9099, 5.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (58, '2025-11-14', '泌尿外科', 'QI08', '处方合格率', 95.0525, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (59, '2025-09-01', '心内科', 'QI06', '药品不良反应报告率', 0.2910, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (60, '2025-05-17', '呼吸内科', 'QI01', '甲级病案率', 94.0731, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (61, '2025-12-16', '骨科', 'QI07', '危急值报告及时率', 80.7675, 98.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (62, '2025-10-03', '中医科', 'QI01', '甲级病案率', 83.8949, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (63, '2025-01-24', '骨科', 'QI01', '甲级病案率', 90.7516, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (64, '2025-12-20', '呼吸内科', 'QI08', '处方合格率', 112.6550, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (65, '2025-09-10', '呼吸内科', 'QI06', '药品不良反应报告率', 0.2519, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (66, '2025-08-15', '消化内科', 'QI06', '药品不良反应报告率', 0.2866, 0.3000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (67, '2025-05-19', '中医科', 'QI10', '医患纠纷发生率', 0.4920, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (68, '2025-08-15', '呼吸内科', 'QI10', '医患纠纷发生率', 0.4077, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (69, '2025-12-27', '泌尿外科', 'QI02', '院感发生率', 1.2272, 1.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (70, '2025-05-08', '急诊科', 'QI05', '平均住院日', 7.9403, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (71, '2025-11-27', '泌尿外科', 'QI05', '平均住院日', 6.8177, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (72, '2025-09-12', '中医科', 'QI05', '平均住院日', 8.7491, 8.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (73, '2025-09-02', '内科', 'QI10', '医患纠纷发生率', 0.4085, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (74, '2025-09-12', '心内科', 'QI08', '处方合格率', 90.4040, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (75, '2025-07-06', 'ICU', 'QI10', '医患纠纷发生率', 0.5947, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (76, '2025-02-17', '呼吸内科', 'QI07', '危急值报告及时率', 115.2852, 98.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (77, '2025-12-18', '骨科', 'QI09', '输血反应发生率', 0.1187, 0.1000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (78, '2025-06-18', '神经内科', 'QI08', '处方合格率', 87.7738, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (79, '2025-10-09', '儿科', 'QI03', '手术并发症发生率', 0.4759, 0.5000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_quality_indicator` VALUES (80, '2025-01-21', '耳鼻喉科', 'QI08', '处方合格率', 106.8054, 95.0000, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_receivable
-- ----------------------------
DROP TABLE IF EXISTS `drm_receivable`;
CREATE TABLE `drm_receivable`  (
  `receivable_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '应收ID',
  `patient_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '患者姓名',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `bill_date` date NULL DEFAULT NULL COMMENT '账单日期',
  `amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '应收金额',
  `paid_amount` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '已收金额',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0未清 1部分 2结清）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`receivable_id`) USING BTREE,
  INDEX `idx_bill_date`(`bill_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '应收账款表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_receivable
-- ----------------------------
INSERT INTO `drm_receivable` VALUES (1, '患者3005', '急诊科', '2025-03-07', 45915.09, 21376.48, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (2, '患者7886', '皮肤科', '2025-05-28', 39363.78, 13092.07, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (3, '患者6261', '外科', '2025-11-05', 39117.21, 357.45, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (4, '患者3714', '骨科', '2025-06-05', 10644.58, 362.65, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (5, '患者7462', '外科', '2025-06-20', 30452.89, 289.39, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (6, '患者8034', '泌尿外科', '2025-04-20', 33736.81, 32363.12, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (7, '患者2166', '中医科', '2025-02-17', 12304.08, 1405.91, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (8, '患者1880', '消化内科', '2025-01-28', 32288.38, 31158.48, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (9, '患者2623', '皮肤科', '2025-02-24', 12887.72, 3448.28, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (10, '患者1940', '中医科', '2025-09-03', 49216.32, 3712.80, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (11, '患者3027', '皮肤科', '2025-11-08', 37804.32, 22732.54, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (12, '患者6875', '神经内科', '2025-11-20', 11178.42, 7410.24, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (13, '患者3335', '妇产科', '2025-03-22', 10706.42, 5901.82, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (14, '患者7566', '神经内科', '2025-07-14', 39268.01, 4491.85, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (15, '患者9315', '消化内科', '2025-06-16', 43019.91, 25987.11, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (16, '患者7346', '消化内科', '2025-08-04', 17933.58, 14801.01, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (17, '患者1957', 'ICU', '2025-01-16', 33148.00, 20708.42, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (18, '患者7838', '骨科', '2025-11-06', 40985.60, 23227.66, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (19, '患者1915', '神经内科', '2025-02-23', 36737.04, 2474.68, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (20, '患者5617', '消化内科', '2025-08-20', 1616.30, 1301.61, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (21, '患者3287', '中医科', '2025-04-22', 6911.61, 4157.55, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (22, '患者4779', '泌尿外科', '2025-06-20', 15537.69, 9143.13, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (23, '患者3764', '消化内科', '2025-08-08', 11250.21, 6769.33, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (24, '患者3859', '呼吸内科', '2025-07-02', 42317.49, 13175.76, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (25, '患者5115', '泌尿外科', '2025-04-17', 24145.69, 9350.41, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (26, '患者3516', 'ICU', '2025-07-10', 16088.05, 9064.35, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (27, '患者4781', 'ICU', '2025-03-20', 6404.43, 7.71, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (28, '患者3061', '耳鼻喉科', '2025-04-02', 11549.83, 1621.87, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (29, '患者9642', '急诊科', '2025-05-04', 10239.45, 7827.00, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (30, '患者9587', '神经内科', '2025-02-17', 25179.09, 15814.38, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (31, '患者5102', '外科', '2025-05-08', 11105.44, 4302.39, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (32, '患者2560', '眼科', '2025-04-21', 12219.92, 1956.02, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (33, '患者4807', 'ICU', '2025-02-24', 10814.19, 2240.44, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (34, '患者9667', '皮肤科', '2025-09-22', 36248.67, 32819.38, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (35, '患者7830', '中医科', '2025-08-08', 5490.91, 3231.08, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (36, '患者5095', '眼科', '2025-08-22', 25501.97, 777.40, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (37, '患者2783', '神经内科', '2025-05-15', 38471.12, 18188.59, '0', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (38, '患者3253', '消化内科', '2025-08-23', 44020.71, 2039.04, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (39, '患者5561', '泌尿外科', '2025-02-03', 31518.49, 11603.29, '1', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);
INSERT INTO `drm_receivable` VALUES (40, '患者4127', '急诊科', '2025-05-17', 35148.48, 24272.59, '2', 'admin', '2026-05-24 06:59:10', '', NULL, NULL);

-- ----------------------------
-- Table structure for drm_surgery_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_surgery_stats`;
CREATE TABLE `drm_surgery_stats`  (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `surgery_cnt` int(11) NULL DEFAULT 0 COMMENT '手术数量',
  `emergency_cnt` int(11) NULL DEFAULT 0 COMMENT '急诊手术数量',
  `revenue` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '手术收入',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stats_id`) USING BTREE,
  INDEX `idx_stat_date`(`stat_date`) USING BTREE,
  INDEX `idx_dept_name`(`dept_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手术运营数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drm_surgery_stats
-- ----------------------------
INSERT INTO `drm_surgery_stats` VALUES (1, '2025-11-27', '妇产科', 24, 4, 70014.55, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (2, '2025-10-25', '外科', 30, 6, 79370.85, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (3, '2025-06-08', '耳鼻喉科', 13, 3, 58423.14, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (4, '2025-10-26', '骨科', 21, 4, 70081.40, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (5, '2025-07-04', '骨科', 9, 7, 24329.21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (6, '2025-04-02', '泌尿外科', 20, 1, 45710.38, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (7, '2025-10-14', '妇产科', 7, 2, 14594.66, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (8, '2025-12-13', '耳鼻喉科', 24, 1, 84477.80, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (9, '2025-01-06', '眼科', 13, 7, 7912.42, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (10, '2025-12-23', '眼科', 15, 8, 61410.79, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (11, '2025-10-12', '骨科', 10, 1, 38400.25, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (12, '2025-06-15', '外科', 27, 8, 64864.99, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (13, '2025-10-13', '泌尿外科', 19, 5, 59004.31, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (14, '2025-09-25', '泌尿外科', 7, 7, 8232.08, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (15, '2025-06-25', '泌尿外科', 18, 7, 59084.11, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (16, '2025-08-10', '泌尿外科', 21, 8, 21781.82, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (17, '2025-09-27', '骨科', 30, 6, 64399.98, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (18, '2025-07-28', '外科', 17, 1, 56822.20, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (19, '2025-11-04', '外科', 25, 1, 94192.43, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (20, '2025-02-11', '眼科', 8, 1, 73899.39, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (21, '2025-07-18', '外科', 4, 3, 19876.85, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (22, '2025-03-23', '外科', 11, 1, 78009.27, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (23, '2025-11-17', '骨科', 15, 2, 68607.24, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (24, '2025-03-27', '耳鼻喉科', 14, 7, 5329.80, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (25, '2025-09-26', '泌尿外科', 22, 3, 38908.18, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (26, '2025-07-14', '耳鼻喉科', 14, 8, 99258.19, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (27, '2025-05-18', '骨科', 21, 7, 52396.16, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (28, '2025-06-26', '眼科', 11, 4, 42588.51, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (29, '2025-03-16', '骨科', 25, 5, 58443.15, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (30, '2025-06-07', '耳鼻喉科', 24, 5, 41694.56, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (31, '2025-02-04', '耳鼻喉科', 29, 4, 77263.11, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (32, '2025-02-16', '眼科', 13, 6, 20953.35, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (33, '2025-06-04', '耳鼻喉科', 25, 3, 81688.92, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (34, '2025-07-28', '耳鼻喉科', 12, 8, 27024.21, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (35, '2025-04-19', '耳鼻喉科', 9, 6, 29820.87, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (36, '2025-07-05', '泌尿外科', 6, 6, 97211.76, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (37, '2025-05-22', '外科', 3, 6, 18123.99, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (38, '2025-12-02', '骨科', 23, 6, 49159.28, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (39, '2025-06-07', '泌尿外科', 12, 6, 83451.39, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);
INSERT INTO `drm_surgery_stats` VALUES (40, '2025-06-14', '眼科', 6, 2, 60257.73, 'admin', '2026-05-24 06:59:11', '', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 213 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_menu` VALUES (2000, '院长驾驶舱', 0, 1, 'cockpit', NULL, '', 1, 0, 'M', '0', '0', '', 'dashboard', 'admin', '2026-05-24 02:52:27', 'admin', '2026-05-24 02:52:27', '可视化大屏目录');
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
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_user` VALUES (3, NULL, 'admin', '管理员', '00', 'admin@example.com', '13800138000', '0', '', '$2b$12$ZbIjnA4R.Ehkdb.6drjUkuolGi9VJJL0ih110sRt62adeThyxbbIy', '0', '0', '127.0.0.1', '2026-05-24 21:08:41', 'admin', '2026-05-24 02:59:28', 'admin', '2026-05-24 13:08:40', '系统管理员');

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
