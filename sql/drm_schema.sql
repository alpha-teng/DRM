-- =============================================
-- DRM 医院运营决策分析系统 数据库表结构
-- =============================================

-- ----------------------------
-- 1. 大屏配置表 drm_big_screen
-- ----------------------------
DROP TABLE IF EXISTS `drm_big_screen`;
CREATE TABLE `drm_big_screen` (
  `screen_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '大屏ID',
  `screen_name` varchar(100) NOT NULL COMMENT '大屏名称',
  `screen_type` varchar(50) DEFAULT NULL COMMENT '大屏类型',
  `layout_config` text COMMENT '布局配置JSON',
  `theme` varchar(50) DEFAULT 'default' COMMENT '主题样式',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='大屏配置表';

-- ----------------------------
-- 2. 门诊运营数据 drm_outpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_outpatient_stats`;
CREATE TABLE `drm_outpatient_stats` (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `register_cnt` int(11) DEFAULT 0 COMMENT '挂号数量',
  `visit_cnt` int(11) DEFAULT 0 COMMENT '就诊数量',
  `revenue` decimal(12,2) DEFAULT 0.00 COMMENT '收入金额',
  `avg_cost` decimal(10,2) DEFAULT 0.00 COMMENT '人均费用',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stats_id`),
  KEY `idx_stat_date` (`stat_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='门诊运营数据表';

-- ----------------------------
-- 3. 住院运营数据 drm_inpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_inpatient_stats`;
CREATE TABLE `drm_inpatient_stats` (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `in_cnt` int(11) DEFAULT 0 COMMENT '入院人数',
  `out_cnt` int(11) DEFAULT 0 COMMENT '出院人数',
  `bed_occupy_cnt` int(11) DEFAULT 0 COMMENT '占用床位数',
  `bed_occupy_rate` decimal(5,2) DEFAULT 0.00 COMMENT '床位占用率',
  `avg_stay_days` decimal(6,2) DEFAULT 0.00 COMMENT '平均住院天数',
  `revenue` decimal(12,2) DEFAULT 0.00 COMMENT '收入金额',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stats_id`),
  KEY `idx_stat_date` (`stat_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='住院运营数据表';

-- ----------------------------
-- 4. 手术运营数据 drm_surgery_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_surgery_stats`;
CREATE TABLE `drm_surgery_stats` (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `surgery_cnt` int(11) DEFAULT 0 COMMENT '手术数量',
  `emergency_cnt` int(11) DEFAULT 0 COMMENT '急诊手术数量',
  `revenue` decimal(12,2) DEFAULT 0.00 COMMENT '手术收入',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stats_id`),
  KEY `idx_stat_date` (`stat_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手术运营数据表';

-- ----------------------------
-- 5. 运营报告 drm_operation_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_operation_report`;
CREATE TABLE `drm_operation_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报告ID',
  `report_type` varchar(50) DEFAULT NULL COMMENT '报告类型',
  `period_type` varchar(20) DEFAULT NULL COMMENT '周期类型',
  `report_title` varchar(200) NOT NULL COMMENT '报告标题',
  `report_content` longtext COMMENT '报告内容',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1草稿 2已发布）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营报告表';

-- ----------------------------
-- 6. 收入管理 drm_income
-- ----------------------------
DROP TABLE IF EXISTS `drm_income`;
CREATE TABLE `drm_income` (
  `income_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收入ID',
  `income_date` date NOT NULL COMMENT '收入日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `income_type` varchar(50) DEFAULT NULL COMMENT '收入类型',
  `amount` decimal(12,2) DEFAULT 0.00 COMMENT '金额',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`income_id`),
  KEY `idx_income_date` (`income_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收入管理表';

-- ----------------------------
-- 7. 支出管理 drm_expense
-- ----------------------------
DROP TABLE IF EXISTS `drm_expense`;
CREATE TABLE `drm_expense` (
  `expense_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支出ID',
  `expense_date` date NOT NULL COMMENT '支出日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `expense_type` varchar(50) DEFAULT NULL COMMENT '支出类型',
  `amount` decimal(12,2) DEFAULT 0.00 COMMENT '金额',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`expense_id`),
  KEY `idx_expense_date` (`expense_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支出管理表';

-- ----------------------------
-- 8. 应收账款 drm_receivable
-- ----------------------------
DROP TABLE IF EXISTS `drm_receivable`;
CREATE TABLE `drm_receivable` (
  `receivable_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '应收ID',
  `patient_name` varchar(100) DEFAULT NULL COMMENT '患者姓名',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `bill_date` date DEFAULT NULL COMMENT '账单日期',
  `amount` decimal(12,2) DEFAULT 0.00 COMMENT '应收金额',
  `paid_amount` decimal(12,2) DEFAULT 0.00 COMMENT '已收金额',
  `status` char(1) DEFAULT '0' COMMENT '状态（0未清 1部分 2结清）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`receivable_id`),
  KEY `idx_bill_date` (`bill_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='应收账款表';

-- ----------------------------
-- 9. 成本数据 drm_cost_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_data`;
CREATE TABLE `drm_cost_data` (
  `cost_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '成本ID',
  `cost_date` date NOT NULL COMMENT '成本日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `cost_type` varchar(50) DEFAULT NULL COMMENT '成本类型',
  `amount` decimal(12,2) DEFAULT 0.00 COMMENT '金额',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`cost_id`),
  KEY `idx_cost_date` (`cost_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='成本数据表';

-- ----------------------------
-- 10. 成本分摊结果 drm_cost_allocation
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_allocation`;
CREATE TABLE `drm_cost_allocation` (
  `allocation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分摊ID',
  `period` varchar(20) NOT NULL COMMENT '核算周期',
  `level` int(11) DEFAULT 1 COMMENT '层级',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `direct_cost` decimal(12,2) DEFAULT 0.00 COMMENT '直接成本',
  `indirect_cost` decimal(12,2) DEFAULT 0.00 COMMENT '间接成本',
  `total_cost` decimal(12,2) DEFAULT 0.00 COMMENT '总成本',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`allocation_id`),
  KEY `idx_period` (`period`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='成本分摊结果表';

-- ----------------------------
-- 11. 绩效方案 drm_perf_plan
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_plan`;
CREATE TABLE `drm_perf_plan` (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '方案ID',
  `plan_name` varchar(100) NOT NULL COMMENT '方案名称',
  `plan_type` varchar(50) DEFAULT NULL COMMENT '方案类型',
  `effective_date` date DEFAULT NULL COMMENT '生效日期',
  `status` char(1) DEFAULT '0' COMMENT '状态（0草稿 1启用 2停用）',
  `formula_config` text COMMENT '公式配置JSON',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='绩效方案表';

-- ----------------------------
-- 12. 绩效结果 drm_perf_result
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_result`;
CREATE TABLE `drm_perf_result` (
  `result_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '结果ID',
  `plan_id` bigint(20) NOT NULL COMMENT '方案ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `doctor_name` varchar(100) DEFAULT NULL COMMENT '医生姓名',
  `perf_score` decimal(6,2) DEFAULT 0.00 COMMENT '绩效评分',
  `perf_amount` decimal(12,2) DEFAULT 0.00 COMMENT '绩效金额',
  `calc_date` date DEFAULT NULL COMMENT '计算日期',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`result_id`),
  KEY `idx_plan_id` (`plan_id`),
  KEY `idx_calc_date` (`calc_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='绩效结果表';

-- ----------------------------
-- 13. DRG数据 drm_drg_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_data`;
CREATE TABLE `drm_drg_data` (
  `drg_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'DRG ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `drg_code` varchar(50) NOT NULL COMMENT 'DRG编码',
  `drg_name` varchar(200) DEFAULT NULL COMMENT 'DRG名称',
  `case_cnt` int(11) DEFAULT 0 COMMENT '病例数',
  `avg_cost` decimal(12,2) DEFAULT 0.00 COMMENT '平均费用',
  `avg_days` decimal(6,2) DEFAULT 0.00 COMMENT '平均住院天数',
  `cmi` decimal(6,4) DEFAULT 1.0000 COMMENT 'CMI值',
  `surplus_amount` decimal(12,2) DEFAULT 0.00 COMMENT '结余金额',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`drg_id`),
  KEY `idx_stat_date` (`stat_date`),
  KEY `idx_drg_code` (`drg_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DRG数据表';

-- ----------------------------
-- 14. DRG分析 drm_drg_analysis
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_analysis`;
CREATE TABLE `drm_drg_analysis` (
  `analysis_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分析ID',
  `analysis_type` varchar(50) DEFAULT NULL COMMENT '分析类型',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `drg_code` varchar(50) DEFAULT NULL COMMENT 'DRG编码',
  `indicator_value` decimal(12,4) DEFAULT 0.0000 COMMENT '指标值',
  `indicator_name` varchar(100) DEFAULT NULL COMMENT '指标名称',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`analysis_id`),
  KEY `idx_analysis_type` (`analysis_type`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DRG分析表';

-- ----------------------------
-- 15. 质量指标 drm_quality_indicator
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_indicator`;
CREATE TABLE `drm_quality_indicator` (
  `indicator_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '指标ID',
  `indicator_date` date NOT NULL COMMENT '统计日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `indicator_code` varchar(50) NOT NULL COMMENT '指标编码',
  `indicator_name` varchar(200) DEFAULT NULL COMMENT '指标名称',
  `indicator_value` decimal(12,4) DEFAULT 0.0000 COMMENT '指标值',
  `target_value` decimal(12,4) DEFAULT 0.0000 COMMENT '目标值',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`indicator_id`),
  KEY `idx_indicator_date` (`indicator_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量指标表';

-- ----------------------------
-- 16. 不良事件 drm_quality_event
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_event`;
CREATE TABLE `drm_quality_event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '事件ID',
  `event_date` date NOT NULL COMMENT '发生日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `event_type` varchar(50) DEFAULT NULL COMMENT '事件类型',
  `event_level` char(1) DEFAULT '1' COMMENT '事件级别（1一般 2严重 3重大）',
  `event_desc` text COMMENT '事件描述',
  `handling_status` char(1) DEFAULT '0' COMMENT '处理状态（0待处理 1处理中 2已处理）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`event_id`),
  KEY `idx_event_date` (`event_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='不良事件表';

-- ----------------------------
-- 17. 处方点评 drm_prescription_review
-- ----------------------------
DROP TABLE IF EXISTS `drm_prescription_review`;
CREATE TABLE `drm_prescription_review` (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '点评ID',
  `review_date` date NOT NULL COMMENT '点评日期',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `doctor_name` varchar(100) DEFAULT NULL COMMENT '医生姓名',
  `prescription_cnt` int(11) DEFAULT 0 COMMENT '处方数量',
  `qualified_cnt` int(11) DEFAULT 0 COMMENT '合格数量',
  `unqualified_reason` text COMMENT '不合格原因',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`review_id`),
  KEY `idx_review_date` (`review_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='处方点评表';

-- ----------------------------
-- 18. AI配置 drm_ai_config
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_config`;
CREATE TABLE `drm_ai_config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `config_key` varchar(100) NOT NULL COMMENT '配置键',
  `config_value` text COMMENT '配置值',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `uk_config_key` (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='AI配置表';

-- ----------------------------
-- 19. AI问答日志 drm_ai_chat_log
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_chat_log`;
CREATE TABLE `drm_ai_chat_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `question` text NOT NULL COMMENT '问题',
  `answer` text COMMENT '回答',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '提问时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`log_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='AI问答日志表';

-- ----------------------------
-- 20. 知识分类 drm_knowledge_category
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_category`;
CREATE TABLE `drm_knowledge_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(100) NOT NULL COMMENT '分类名称',
  `parent_id` bigint(20) DEFAULT 0 COMMENT '父分类ID',
  `order_num` int(11) DEFAULT 0 COMMENT '显示顺序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='知识分类表';

-- ----------------------------
-- 21. 知识内容 drm_knowledge_content
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_content`;
CREATE TABLE `drm_knowledge_content` (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '内容ID',
  `category_id` bigint(20) DEFAULT NULL COMMENT '分类ID',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` longtext COMMENT '正文内容',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `view_count` int(11) DEFAULT 0 COMMENT '浏览次数',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`content_id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='知识内容表';

-- ----------------------------
-- 22. 数据源配置 drm_data_source
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_source`;
CREATE TABLE `drm_data_source` (
  `source_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '数据源ID',
  `source_name` varchar(100) NOT NULL COMMENT '数据源名称',
  `source_type` varchar(50) DEFAULT NULL COMMENT '数据源类型',
  `connection_url` varchar(500) DEFAULT NULL COMMENT '连接地址',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据源配置表';

-- ----------------------------
-- 23. 数据映射配置 drm_data_mapping
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_mapping`;
CREATE TABLE `drm_data_mapping` (
  `mapping_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '映射ID',
  `source_table` varchar(100) NOT NULL COMMENT '源表名',
  `target_table` varchar(100) NOT NULL COMMENT '目标表名',
  `mapping_rules` text COMMENT '映射规则JSON',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`mapping_id`),
  KEY `idx_source_table` (`source_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据映射配置表';

-- ----------------------------
-- 24. 数据质量检查 drm_data_quality
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_quality`;
CREATE TABLE `drm_data_quality` (
  `quality_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '质量ID',
  `check_date` date NOT NULL COMMENT '检查日期',
  `source_name` varchar(100) DEFAULT NULL COMMENT '数据源名称',
  `table_name` varchar(100) DEFAULT NULL COMMENT '表名',
  `total_cnt` bigint(20) DEFAULT 0 COMMENT '总记录数',
  `error_cnt` bigint(20) DEFAULT 0 COMMENT '错误数',
  `accuracy_rate` decimal(6,4) DEFAULT 0.0000 COMMENT '准确率',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`quality_id`),
  KEY `idx_check_date` (`check_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据质量检查表';

-- ----------------------------
-- 25. 预警信息 drm_early_warning
-- ----------------------------
DROP TABLE IF EXISTS `drm_early_warning`;
CREATE TABLE `drm_early_warning` (
  `warning_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预警ID',
  `warn_date` date NOT NULL COMMENT '预警日期',
  `warn_type` varchar(50) DEFAULT NULL COMMENT '预警类型',
  `warn_level` char(1) DEFAULT '1' COMMENT '预警级别（1提示 2警告 3紧急）',
  `warn_content` text NOT NULL COMMENT '预警内容',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `handle_status` char(1) DEFAULT '0' COMMENT '处理状态（0未处理 1处理中 2已处理）',
  `handle_result` text COMMENT '处理结果',
  `ai_suggestion` text COMMENT 'AI建议',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`warning_id`),
  KEY `idx_warn_date` (`warn_date`),
  KEY `idx_dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='预警信息表';
