-- ----------------------------
-- 1. RBRVS 绩效数据表 (drm_rbrvs)
-- ----------------------------
DROP TABLE IF EXISTS `drm_rbrvs`;
CREATE TABLE `drm_rbrvs` (
  `rbrvs_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'RBRVS ID',
  `item_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `item_code` varchar(50) DEFAULT NULL COMMENT '项目编码',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `base_point` decimal(10,2) DEFAULT NULL COMMENT '基础点数',
  `difficulty_coeff` decimal(10,2) DEFAULT NULL COMMENT '难度系数',
  `perf_amount` decimal(10,2) DEFAULT NULL COMMENT '绩效金额',
  `eff_date` date DEFAULT NULL COMMENT '生效日期',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`rbrvs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='RBRVS数据表';

-- ----------------------------
-- 2. 效率绩效表 (drm_efficiency_perf)
-- ----------------------------
DROP TABLE IF EXISTS `drm_efficiency_perf`;
CREATE TABLE `drm_efficiency_perf` (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '绩效ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `efficiency_score` decimal(10,2) DEFAULT NULL COMMENT '效率分数',
  `work_load` decimal(10,2) DEFAULT NULL COMMENT '工作量',
  `bed_utilization` decimal(10,2) DEFAULT NULL COMMENT '床位利用率',
  `equip_utilization` decimal(10,2) DEFAULT NULL COMMENT '设备利用率',
  `calc_date` varchar(50) DEFAULT NULL COMMENT '计算日期',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`perf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='效率绩效表';

-- ----------------------------
-- 3. DRG绩效表 (drm_drg_perf)
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_perf`;
CREATE TABLE `drm_drg_perf` (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '绩效ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `drg_code` varchar(50) DEFAULT NULL COMMENT 'DRG编码',
  `drg_name` varchar(100) DEFAULT NULL COMMENT 'DRG名称',
  `case_cnt` int(11) DEFAULT NULL COMMENT '病例数',
  `perf_score` decimal(10,2) DEFAULT NULL COMMENT '绩效分数',
  `perf_amount` decimal(10,2) DEFAULT NULL COMMENT '绩效金额',
  `calc_date` varchar(50) DEFAULT NULL COMMENT '计算日期',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`perf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DRG绩效表';

-- ----------------------------
-- 4. 绩效方案表 (drm_perf_plan)
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_plan`;
CREATE TABLE `drm_perf_plan` (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '方案ID',
  `plan_name` varchar(100) DEFAULT NULL COMMENT '方案名称',
  `plan_type` varchar(50) DEFAULT NULL COMMENT '方案类型',
  `effective_date` date DEFAULT NULL COMMENT '生效日期',
  `formula_config` varchar(1000) DEFAULT NULL COMMENT '公式配置',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='绩效方案表';

-- ----------------------------
-- 5. 绩效报告表 (drm_perf_report)
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_report`;
CREATE TABLE `drm_perf_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报告ID',
  `report_name` varchar(100) DEFAULT NULL COMMENT '报告名称',
  `report_type` varchar(50) DEFAULT NULL COMMENT '报告类型',
  `report_period` varchar(50) DEFAULT NULL COMMENT '报告周期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='绩效报告表';

-- ----------------------------
-- 6. 绩效结果表 (drm_perf_result)
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_result`;
CREATE TABLE `drm_perf_result` (
  `result_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '结果ID',
  `plan_id` bigint(20) DEFAULT NULL COMMENT '方案ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `doctor_name` varchar(100) DEFAULT NULL COMMENT '医生',
  `perf_score` decimal(10,2) DEFAULT NULL COMMENT '绩效分数',
  `perf_amount` decimal(10,2) DEFAULT NULL COMMENT '绩效金额',
  `calc_date` varchar(50) DEFAULT NULL COMMENT '计算日期',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='绩效结果表';

-- ----------------------------
-- 7. 质量绩效表 (drm_quality_perf)
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_perf`;
CREATE TABLE `drm_quality_perf` (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '绩效ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `quality_score` decimal(10,2) DEFAULT NULL COMMENT '质量得分',
  `qualified_rate` decimal(10,2) DEFAULT NULL COMMENT '合格率',
  `excellent_rate` decimal(10,2) DEFAULT NULL COMMENT '优秀率',
  `incident_cnt` int(11) DEFAULT NULL COMMENT '不良事件数',
  `calc_date` varchar(50) DEFAULT NULL COMMENT '计算日期',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`perf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量绩效表';

-- ----------------------------
-- 8. DRG分析表 (drm_drg_analysis)
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_analysis`;
CREATE TABLE `drm_drg_analysis` (
  `analysis_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分析ID',
  `analysis_type` varchar(50) DEFAULT NULL COMMENT '分析类型',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `drg_code` varchar(50) DEFAULT NULL COMMENT 'DRG编码',
  `indicator_value` decimal(10,2) DEFAULT NULL COMMENT '指标值',
  `indicator_name` varchar(100) DEFAULT NULL COMMENT '指标名称',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`analysis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DRG分析表';

-- ----------------------------
-- 9. 知识分类表 (drm_knowledge_category)
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_category`;
CREATE TABLE `drm_knowledge_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级ID',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='知识分类表';

-- 插入一些演示数据以便页面查看
INSERT INTO `drm_rbrvs` VALUES (1, '专家门诊', 'OP001', '内科', 50.00, 1.20, 60.00, '2026-05-01', '0', 'admin', sysdate(), '', null, '测试数据1');
INSERT INTO `drm_efficiency_perf` VALUES (1, '外科', 95.5, 1200.0, 92.5, 88.0, '2026-05', '0', 'admin', sysdate(), '', null, '测试数据');
INSERT INTO `drm_drg_perf` VALUES (1, '妇产科', 'DRG001', '正常分娩', 150, 98.0, 5000.0, '2026-05', '0', 'admin', sysdate(), '', null, '测试数据');
INSERT INTO `drm_perf_plan` VALUES (1, '2026年5月绩效方案', 'monthly', '2026-05-01', 'score * 100', '0', 'admin', sysdate(), '', null, '测试数据');
INSERT INTO `drm_quality_perf` VALUES (1, '儿科', '甲级病案率', 95.0, 98.0, 100.0, '2026-05', '0', 'admin', sysdate(), '', null, '测试数据');
INSERT INTO `drm_drg_analysis` VALUES (1, '费用分析', '内科', 'DRG002', 12500.00, '平均费用', 'admin', sysdate(), '', null, '测试数据');
INSERT INTO `drm_knowledge_category` VALUES (1, '临床指南', 0, 1, 'admin', sysdate(), '', null, '测试数据');
