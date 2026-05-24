-- ----------------------------
-- Table drm_ai_chat_log
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_chat_log`;
CREATE TABLE `drm_ai_chat_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `question` varchar(255),
  `answer` varchar(255),
  `dept_name` varchar(255),
  `user_id` varchar(255),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_ai_config
-- ----------------------------
DROP TABLE IF EXISTS `drm_ai_config`;
CREATE TABLE `drm_ai_config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `config_key` varchar(255),
  `config_value` varchar(255),
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_big_screen
-- ----------------------------
DROP TABLE IF EXISTS `drm_big_screen`;
CREATE TABLE `drm_big_screen` (
  `screen_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `screen_name` varchar(255),
  `screen_type` varchar(255),
  `layout_config` text,
  `theme` varchar(255),
  `status` char(1),
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_budget_edit
-- ----------------------------
DROP TABLE IF EXISTS `drm_budget_edit`;
CREATE TABLE `drm_budget_edit` (
  `budget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `budget_year` varchar(255),
  `budget_type` varchar(255),
  `dept_name` varchar(255),
  `budget_amount` decimal(10,2),
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`budget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_budget_execute
-- ----------------------------
DROP TABLE IF EXISTS `drm_budget_execute`;
CREATE TABLE `drm_budget_execute` (
  `execute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `budget_id` bigint(20),
  `execute_year` varchar(255),
  `execute_month` varchar(255),
  `dept_name` varchar(255),
  `budget_amount` decimal(10,2),
  `actual_amount` decimal(10,2),
  `execute_rate` decimal(10,2),
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`execute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_case_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_case_cost`;
CREATE TABLE `drm_case_cost` (
  `case_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(255),
  `dept_name` varchar(255),
  `case_code` varchar(255),
  `total_cost` decimal(10,2),
  `drug_cost` decimal(10,2),
  `material_cost` decimal(10,2),
  `service_cost` decimal(10,2),
  `avg_stay_days` int(11),
  `cost_date` varchar(255),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_cost_allocation
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_allocation`;
CREATE TABLE `drm_cost_allocation` (
  `allocation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `period` varchar(255),
  `level` int(11),
  `dept_name` varchar(255),
  `direct_cost` decimal(10,2),
  `indirect_cost` decimal(10,2),
  `total_cost` decimal(10,2),
  PRIMARY KEY (`allocation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_cost_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_data`;
CREATE TABLE `drm_cost_data` (
  `cost_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `cost_date` varchar(255),
  `dept_name` varchar(255),
  `cost_type` varchar(255),
  `amount` decimal(10,2),
  PRIMARY KEY (`cost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_cost_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_cost_report`;
CREATE TABLE `drm_cost_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255),
  `report_period` varchar(255),
  `report_type` varchar(255),
  `target_dept` varchar(255),
  `content` text,
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_data_mapping
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_mapping`;
CREATE TABLE `drm_data_mapping` (
  `mapping_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `source_table` varchar(255),
  `target_table` varchar(255),
  `mapping_rules` varchar(255),
  `status` char(1),
  PRIMARY KEY (`mapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_data_quality
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_quality`;
CREATE TABLE `drm_data_quality` (
  `quality_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `check_date` varchar(255),
  `source_name` varchar(255),
  `table_name` varchar(255),
  `total_cnt` bigint(20),
  `error_cnt` bigint(20),
  `accuracy_rate` decimal(10,2),
  PRIMARY KEY (`quality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_data_source
-- ----------------------------
DROP TABLE IF EXISTS `drm_data_source`;
CREATE TABLE `drm_data_source` (
  `source_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `source_name` varchar(255),
  `source_type` varchar(255),
  `connection_url` varchar(255),
  `username` varchar(255),
  `password` varchar(255),
  `status` char(1),
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_dept_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_dept_cost`;
CREATE TABLE `drm_dept_cost` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255),
  `cost_date` varchar(255),
  `personnel_cost` decimal(10,2),
  `equipment_cost` decimal(10,2),
  `material_cost` decimal(10,2),
  `drug_cost` decimal(10,2),
  `other_cost` decimal(10,2),
  `total_cost` decimal(10,2),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_drg_analysis
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_analysis`;
CREATE TABLE `drm_drg_analysis` (
  `analysis_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `analysis_type` varchar(255),
  `dept_name` varchar(255),
  `drg_code` varchar(255),
  `indicator_value` decimal(10,2),
  `indicator_name` varchar(255),
  PRIMARY KEY (`analysis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_drg_data
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_data`;
CREATE TABLE `drm_drg_data` (
  `drg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `stat_date` varchar(255),
  `drg_code` varchar(255),
  `drg_name` varchar(255),
  `case_cnt` int(11),
  `avg_cost` decimal(10,2),
  `avg_days` decimal(10,2),
  `cmi` decimal(10,2),
  `surplus_amount` decimal(10,2),
  PRIMARY KEY (`drg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_drg_doctor
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_doctor`;
CREATE TABLE `drm_drg_doctor` (
  `doctor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255),
  `dept_name` varchar(255),
  `drg_code` varchar(255),
  `case_cnt` int(11),
  `avg_cost` decimal(10,2),
  `cmi` decimal(10,2),
  `perf_score` decimal(10,2),
  `stat_date` varchar(255),
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_drg_perf
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_perf`;
CREATE TABLE `drm_drg_perf` (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255),
  `drg_code` varchar(255),
  `drg_name` varchar(255),
  `case_cnt` int(11),
  `perf_score` decimal(10,2),
  `perf_amount` decimal(10,2),
  `calc_date` varchar(255),
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`perf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_drg_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_drg_report`;
CREATE TABLE `drm_drg_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255),
  `report_period` varchar(255),
  `target_dept` varchar(255),
  `drg_analysis` varchar(255),
  `content` text,
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_early_warning
-- ----------------------------
DROP TABLE IF EXISTS `drm_early_warning`;
CREATE TABLE `drm_early_warning` (
  `warning_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `warn_date` varchar(255),
  `warn_type` varchar(255),
  `warn_level` varchar(255),
  `warn_content` varchar(255),
  `dept_name` varchar(255),
  `handle_status` varchar(255),
  `handle_result` varchar(255),
  `ai_suggestion` varchar(255),
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_efficiency_perf
-- ----------------------------
DROP TABLE IF EXISTS `drm_efficiency_perf`;
CREATE TABLE `drm_efficiency_perf` (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255),
  `efficiency_score` decimal(10,2),
  `work_load` decimal(10,2),
  `bed_utilization` decimal(10,2),
  `equip_utilization` decimal(10,2),
  `calc_date` varchar(255),
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`perf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_expense
-- ----------------------------
DROP TABLE IF EXISTS `drm_expense`;
CREATE TABLE `drm_expense` (
  `expense_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `expense_date` varchar(255),
  `dept_name` varchar(255),
  `expense_type` varchar(255),
  `amount` decimal(10,2),
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_finance_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_finance_report`;
CREATE TABLE `drm_finance_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255),
  `report_type` varchar(255),
  `report_period` varchar(255),
  `target_dept` varchar(255),
  `total_income` decimal(10,2),
  `total_expense` decimal(10,2),
  `balance` decimal(10,2),
  `income_growth` varchar(255),
  `expense_growth` varchar(255),
  `content` text,
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_income
-- ----------------------------
DROP TABLE IF EXISTS `drm_income`;
CREATE TABLE `drm_income` (
  `income_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `income_date` varchar(255),
  `dept_name` varchar(255),
  `income_type` varchar(255),
  `amount` decimal(10,2),
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_inpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_inpatient_stats`;
CREATE TABLE `drm_inpatient_stats` (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `stat_date` varchar(255),
  `dept_name` varchar(255),
  `in_cnt` int(11),
  `out_cnt` int(11),
  `bed_occupy_cnt` int(11),
  `bed_occupy_rate` decimal(10,2),
  `avg_stay_days` decimal(10,2),
  `revenue` decimal(10,2),
  PRIMARY KEY (`stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_knowledge_category
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_category`;
CREATE TABLE `drm_knowledge_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `category_name` varchar(255),
  `parent_id` bigint(20),
  `order_num` int(11),
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_knowledge_content
-- ----------------------------
DROP TABLE IF EXISTS `drm_knowledge_content`;
CREATE TABLE `drm_knowledge_content` (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `category_id` bigint(20),
  `title` varchar(255),
  `content` text,
  `author` varchar(255),
  `view_count` int(11),
  `status` char(1),
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_operation_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_operation_report`;
CREATE TABLE `drm_operation_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `report_type` varchar(255),
  `period_type` varchar(255),
  `report_title` varchar(255),
  `report_content` varchar(255),
  `status` char(1),
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_operation_topic
-- ----------------------------
DROP TABLE IF EXISTS `drm_operation_topic`;
CREATE TABLE `drm_operation_topic` (
  `topic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(255),
  `topic_type` varchar(255),
  `target_dept` varchar(255),
  `analysis_model` varchar(255),
  `data_config` text,
  `chart_config` text,
  `status` char(1),
  `ai_insights` varchar(255),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_outpatient_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_outpatient_stats`;
CREATE TABLE `drm_outpatient_stats` (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `stat_date` varchar(255),
  `dept_name` varchar(255),
  `register_cnt` int(11),
  `visit_cnt` int(11),
  `revenue` decimal(10,2),
  `avg_cost` decimal(10,2),
  PRIMARY KEY (`stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_perf_plan
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_plan`;
CREATE TABLE `drm_perf_plan` (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `plan_name` varchar(255),
  `plan_type` varchar(255),
  `effective_date` varchar(255),
  `status` char(1),
  `formula_config` text,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_perf_report
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_report`;
CREATE TABLE `drm_perf_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255),
  `report_period` varchar(255),
  `report_type` varchar(255),
  `target_dept` varchar(255),
  `content` text,
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_perf_result
-- ----------------------------
DROP TABLE IF EXISTS `drm_perf_result`;
CREATE TABLE `drm_perf_result` (
  `result_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `plan_id` bigint(20),
  `dept_name` varchar(255),
  `doctor_name` varchar(255),
  `perf_score` decimal(10,2),
  `perf_amount` decimal(10,2),
  `calc_date` varchar(255),
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_prescription_review
-- ----------------------------
DROP TABLE IF EXISTS `drm_prescription_review`;
CREATE TABLE `drm_prescription_review` (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `review_date` varchar(255),
  `dept_name` varchar(255),
  `doctor_name` varchar(255),
  `prescription_cnt` int(11),
  `qualified_cnt` int(11),
  `unqualified_reason` varchar(255),
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_project_cost
-- ----------------------------
DROP TABLE IF EXISTS `drm_project_cost`;
CREATE TABLE `drm_project_cost` (
  `project_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255),
  `project_type` varchar(255),
  `dept_name` varchar(255),
  `budget_amount` varchar(255),
  `actual_amount` varchar(255),
  `cost_date` varchar(255),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_quality_event
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_event`;
CREATE TABLE `drm_quality_event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `event_date` varchar(255),
  `dept_name` varchar(255),
  `event_type` varchar(255),
  `event_level` varchar(255),
  `event_desc` varchar(255),
  `handling_status` varchar(255),
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_quality_indicator
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_indicator`;
CREATE TABLE `drm_quality_indicator` (
  `indicator_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `indicator_date` varchar(255),
  `dept_name` varchar(255),
  `indicator_code` varchar(255),
  `indicator_name` varchar(255),
  `indicator_value` decimal(10,2),
  `target_value` decimal(10,2),
  PRIMARY KEY (`indicator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_quality_perf
-- ----------------------------
DROP TABLE IF EXISTS `drm_quality_perf`;
CREATE TABLE `drm_quality_perf` (
  `perf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255),
  `quality_score` decimal(10,2),
  `qualified_rate` decimal(10,2),
  `excellent_rate` decimal(10,2),
  `incident_cnt` int(11),
  `calc_date` varchar(255),
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`perf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_rbrvs
-- ----------------------------
DROP TABLE IF EXISTS `drm_rbrvs`;
CREATE TABLE `drm_rbrvs` (
  `rbrvs_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255),
  `item_code` varchar(255),
  `dept_name` varchar(255),
  `base_point` decimal(10,2),
  `difficulty_coeff` decimal(10,2),
  `perf_amount` decimal(10,2),
  `eff_date` varchar(255),
  `status` char(1),
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  PRIMARY KEY (`rbrvs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_receivable
-- ----------------------------
DROP TABLE IF EXISTS `drm_receivable`;
CREATE TABLE `drm_receivable` (
  `receivable_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `patient_name` varchar(255),
  `dept_name` varchar(255),
  `bill_date` varchar(255),
  `amount` decimal(10,2),
  `paid_amount` decimal(10,2),
  `status` char(1),
  PRIMARY KEY (`receivable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table drm_surgery_stats
-- ----------------------------
DROP TABLE IF EXISTS `drm_surgery_stats`;
CREATE TABLE `drm_surgery_stats` (
  `stats_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255),
  `create_time` datetime,
  `update_by` varchar(255),
  `update_time` datetime,
  `remark` varchar(255),
  `stat_date` varchar(255),
  `dept_name` varchar(255),
  `surgery_cnt` int(11),
  `emergency_cnt` int(11),
  `revenue` decimal(10,2),
  PRIMARY KEY (`stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ----------------------------

-- ----------------------------
-- Auto-generated Sample Data
-- ----------------------------
INSERT INTO `drm_ai_chat_log` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `question`, `answer`, `dept_name`, `user_id`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), '模拟测试数据', '分类/项目-7', '分类/项目-5', '妇产科', '分类/项目-2');
INSERT INTO `drm_ai_chat_log` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `question`, `answer`, `dept_name`, `user_id`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), '模拟测试数据', '分类/项目-3', '分类/项目-1', '儿科', '分类/项目-4');
INSERT INTO `drm_ai_chat_log` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `question`, `answer`, `dept_name`, `user_id`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), '模拟测试数据', '分类/项目-1', '分类/项目-5', '儿科', '分类/项目-8');
INSERT INTO `drm_ai_chat_log` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `question`, `answer`, `dept_name`, `user_id`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), '模拟测试数据', '分类/项目-6', '分类/项目-4', '儿科', '分类/项目-1');
INSERT INTO `drm_ai_chat_log` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `question`, `answer`, `dept_name`, `user_id`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), '模拟测试数据', '分类/项目-9', '分类/项目-10', '儿科', '分类/项目-5');

INSERT INTO `drm_ai_config` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `config_key`, `config_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), '模拟测试数据', '分类/项目-4', '分类/项目-6');
INSERT INTO `drm_ai_config` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `config_key`, `config_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), '模拟测试数据', '分类/项目-9', '分类/项目-10');
INSERT INTO `drm_ai_config` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `config_key`, `config_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), '模拟测试数据', '分类/项目-8', '分类/项目-4');
INSERT INTO `drm_ai_config` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `config_key`, `config_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据', '分类/项目-3', '分类/项目-7');
INSERT INTO `drm_ai_config` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `config_key`, `config_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据', '分类/项目-6', '分类/项目-5');

INSERT INTO `drm_big_screen` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `screen_name`, `screen_type`, `layout_config`, `theme`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 2 DAY), '模拟测试数据', '2026年第一季度绩效分析报告', '分类/项目-1', '分类/项目-8', '分类/项目-5', '0');
INSERT INTO `drm_big_screen` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `screen_name`, `screen_type`, `layout_config`, `theme`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), '模拟测试数据', '全院医疗质量管控报告', '分类/项目-5', '分类/项目-5', '分类/项目-6', '0');
INSERT INTO `drm_big_screen` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `screen_name`, `screen_type`, `layout_config`, `theme`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), '模拟测试数据', '全院医疗质量管控报告', '分类/项目-3', '分类/项目-6', '分类/项目-9', '0');
INSERT INTO `drm_big_screen` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `screen_name`, `screen_type`, `layout_config`, `theme`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据', '重点科室成本核算报告', '分类/项目-5', '分类/项目-10', '分类/项目-10', '0');
INSERT INTO `drm_big_screen` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `screen_name`, `screen_type`, `layout_config`, `theme`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), '模拟测试数据', '重点科室成本核算报告', '分类/项目-4', '分类/项目-4', '分类/项目-6', '0');

INSERT INTO `drm_budget_edit` (`budget_year`, `budget_type`, `dept_name`, `budget_amount`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('分类/项目-4', '分类/项目-5', '心内科', 49565.98, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据');
INSERT INTO `drm_budget_edit` (`budget_year`, `budget_type`, `dept_name`, `budget_amount`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('分类/项目-3', '分类/项目-4', '心内科', 7765.09, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), '模拟测试数据');
INSERT INTO `drm_budget_edit` (`budget_year`, `budget_type`, `dept_name`, `budget_amount`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('分类/项目-9', '分类/项目-9', '呼吸内科', 11977.73, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据');
INSERT INTO `drm_budget_edit` (`budget_year`, `budget_type`, `dept_name`, `budget_amount`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('分类/项目-6', '分类/项目-9', '神经外科', 34874.29, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), '模拟测试数据');
INSERT INTO `drm_budget_edit` (`budget_year`, `budget_type`, `dept_name`, `budget_amount`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('分类/项目-3', '分类/项目-2', '骨科', 35728.08, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据');

INSERT INTO `drm_budget_execute` (`budget_id`, `execute_year`, `execute_month`, `dept_name`, `budget_amount`, `actual_amount`, `execute_rate`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (67, '分类/项目-2', '分类/项目-5', '骨科', 6380.52, 19604.18, 87.71, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据');
INSERT INTO `drm_budget_execute` (`budget_id`, `execute_year`, `execute_month`, `dept_name`, `budget_amount`, `actual_amount`, `execute_rate`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (234, '分类/项目-1', '分类/项目-8', '儿科', 14624.30, 37592.42, 88.68, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据');
INSERT INTO `drm_budget_execute` (`budget_id`, `execute_year`, `execute_month`, `dept_name`, `budget_amount`, `actual_amount`, `execute_rate`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (256, '分类/项目-10', '分类/项目-7', '心内科', 46175.93, 19583.08, 85.57, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 2 DAY), '模拟测试数据');
INSERT INTO `drm_budget_execute` (`budget_id`, `execute_year`, `execute_month`, `dept_name`, `budget_amount`, `actual_amount`, `execute_rate`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (451, '分类/项目-4', '分类/项目-9', '儿科', 2541.08, 48442.70, 93.65, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');
INSERT INTO `drm_budget_execute` (`budget_id`, `execute_year`, `execute_month`, `dept_name`, `budget_amount`, `actual_amount`, `execute_rate`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (54, '分类/项目-3', '分类/项目-8', '呼吸内科', 29551.09, 9721.24, 93.79, '0', 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');

INSERT INTO `drm_case_cost` (`case_name`, `dept_name`, `case_code`, `total_cost`, `drug_cost`, `material_cost`, `service_cost`, `avg_stay_days`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '急诊科', '分类/项目-9', 36994.80, 36378.22, 5273.12, 20617.53, 321, '2026-02', 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), '模拟测试数据');
INSERT INTO `drm_case_cost` (`case_name`, `dept_name`, `case_code`, `total_cost`, `drug_cost`, `material_cost`, `service_cost`, `avg_stay_days`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '妇产科', '分类/项目-6', 24860.52, 45662.33, 22360.68, 37246.56, 385, '2026-04', 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据');
INSERT INTO `drm_case_cost` (`case_name`, `dept_name`, `case_code`, `total_cost`, `drug_cost`, `material_cost`, `service_cost`, `avg_stay_days`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', '妇产科', '分类/项目-4', 39287.55, 27498.94, 14364.45, 37692.48, 401, '2026-02', 'admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据');
INSERT INTO `drm_case_cost` (`case_name`, `dept_name`, `case_code`, `total_cost`, `drug_cost`, `material_cost`, `service_cost`, `avg_stay_days`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '骨科', '分类/项目-7', 1980.32, 47040.97, 42752.38, 16516.20, 351, '2026-03', 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据');
INSERT INTO `drm_case_cost` (`case_name`, `dept_name`, `case_code`, `total_cost`, `drug_cost`, `material_cost`, `service_cost`, `avg_stay_days`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', '呼吸内科', '分类/项目-1', 17035.96, 34635.54, 7542.61, 44209.69, 214, '2026-02', 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), '模拟测试数据');

INSERT INTO `drm_cost_allocation` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `period`, `level`, `dept_name`, `direct_cost`, `indirect_cost`, `total_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), '模拟测试数据', '分类/项目-5', 451, '儿科', 13857.53, 43047.97, 5027.92);
INSERT INTO `drm_cost_allocation` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `period`, `level`, `dept_name`, `direct_cost`, `indirect_cost`, `total_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), '模拟测试数据', '分类/项目-10', 103, '儿科', 47487.97, 25913.30, 30136.82);
INSERT INTO `drm_cost_allocation` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `period`, `level`, `dept_name`, `direct_cost`, `indirect_cost`, `total_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), '模拟测试数据', '分类/项目-2', 464, '呼吸内科', 22485.24, 48520.35, 21788.96);
INSERT INTO `drm_cost_allocation` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `period`, `level`, `dept_name`, `direct_cost`, `indirect_cost`, `total_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据', '分类/项目-6', 417, '心内科', 16470.89, 16820.09, 17035.00);
INSERT INTO `drm_cost_allocation` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `period`, `level`, `dept_name`, `direct_cost`, `indirect_cost`, `total_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据', '分类/项目-7', 358, '儿科', 25631.62, 19166.34, 44821.80);

INSERT INTO `drm_cost_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `cost_date`, `dept_name`, `cost_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), '模拟测试数据', '2026-02', '妇产科', '分类/项目-4', 27613.67);
INSERT INTO `drm_cost_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `cost_date`, `dept_name`, `cost_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '2026-03', '儿科', '分类/项目-3', 4063.34);
INSERT INTO `drm_cost_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `cost_date`, `dept_name`, `cost_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), '模拟测试数据', '2026-01', '骨科', '分类/项目-6', 1209.14);
INSERT INTO `drm_cost_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `cost_date`, `dept_name`, `cost_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据', '2026-03', '神经外科', '分类/项目-3', 8961.24);
INSERT INTO `drm_cost_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `cost_date`, `dept_name`, `cost_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据', '2026-01', '妇产科', '分类/项目-10', 16899.63);

INSERT INTO `drm_cost_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', '分类/项目-1', 'monthly', '骨科', '分类/项目-5', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');
INSERT INTO `drm_cost_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-3', 'quarterly', '急诊科', '分类/项目-8', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据');
INSERT INTO `drm_cost_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-5', 'monthly', '心内科', '分类/项目-6', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据');
INSERT INTO `drm_cost_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-9', 'quarterly', '妇产科', '分类/项目-4', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), '模拟测试数据');
INSERT INTO `drm_cost_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-9', 'monthly', '心内科', '分类/项目-3', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), '模拟测试数据');

INSERT INTO `drm_data_mapping` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_table`, `target_table`, `mapping_rules`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), '模拟测试数据', '分类/项目-6', '分类/项目-8', '分类/项目-2', '0');
INSERT INTO `drm_data_mapping` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_table`, `target_table`, `mapping_rules`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据', '分类/项目-6', '分类/项目-4', '分类/项目-8', '0');
INSERT INTO `drm_data_mapping` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_table`, `target_table`, `mapping_rules`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '分类/项目-8', '分类/项目-9', '分类/项目-3', '0');
INSERT INTO `drm_data_mapping` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_table`, `target_table`, `mapping_rules`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据', '分类/项目-1', '分类/项目-6', '分类/项目-5', '0');
INSERT INTO `drm_data_mapping` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_table`, `target_table`, `mapping_rules`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), '模拟测试数据', '分类/项目-1', '分类/项目-4', '分类/项目-7', '0');

INSERT INTO `drm_data_quality` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `check_date`, `source_name`, `table_name`, `total_cnt`, `error_cnt`, `accuracy_rate`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据', '2026-04', '全院医疗质量管控报告', '全院医疗质量管控报告', 214, 160, 88.93);
INSERT INTO `drm_data_quality` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `check_date`, `source_name`, `table_name`, `total_cnt`, `error_cnt`, `accuracy_rate`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '2026-04', '内科月度DRG结算分析', '内科月度DRG结算分析', 120, 243, 85.91);
INSERT INTO `drm_data_quality` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `check_date`, `source_name`, `table_name`, `total_cnt`, `error_cnt`, `accuracy_rate`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据', '2026-04', '全院医疗质量管控报告', '内科月度DRG结算分析', 72, 473, 92.71);
INSERT INTO `drm_data_quality` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `check_date`, `source_name`, `table_name`, `total_cnt`, `error_cnt`, `accuracy_rate`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), '模拟测试数据', '2026-04', '重点科室成本核算报告', '重点科室成本核算报告', 257, 369, 98.75);
INSERT INTO `drm_data_quality` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `check_date`, `source_name`, `table_name`, `total_cnt`, `error_cnt`, `accuracy_rate`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), '模拟测试数据', '2026-02', '全院医疗质量管控报告', '重点科室成本核算报告', 28, 448, 92.35);

INSERT INTO `drm_data_source` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_name`, `source_type`, `connection_url`, `username`, `password`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据', '全院医疗质量管控报告', '分类/项目-10', '分类/项目-1', '全院医疗质量管控报告', '分类/项目-10', '0');
INSERT INTO `drm_data_source` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_name`, `source_type`, `connection_url`, `username`, `password`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据', '全院医疗质量管控报告', '分类/项目-1', '分类/项目-4', '重点科室成本核算报告', '分类/项目-3', '0');
INSERT INTO `drm_data_source` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_name`, `source_type`, `connection_url`, `username`, `password`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), '模拟测试数据', '全院医疗质量管控报告', '分类/项目-7', '分类/项目-9', '重点科室成本核算报告', '分类/项目-2', '0');
INSERT INTO `drm_data_source` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_name`, `source_type`, `connection_url`, `username`, `password`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据', '全院医疗质量管控报告', '分类/项目-6', '分类/项目-10', '全院医疗质量管控报告', '分类/项目-7', '0');
INSERT INTO `drm_data_source` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `source_name`, `source_type`, `connection_url`, `username`, `password`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), '模拟测试数据', '全院医疗质量管控报告', '分类/项目-10', '分类/项目-3', '2026年第一季度绩效分析报告', '分类/项目-1', '0');

INSERT INTO `drm_dept_cost` (`dept_name`, `cost_date`, `personnel_cost`, `equipment_cost`, `material_cost`, `drug_cost`, `other_cost`, `total_cost`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('急诊科', '2026-02', 17914.89, 28011.20, 24978.95, 5866.65, 8688.51, 11730.02, 'admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据');
INSERT INTO `drm_dept_cost` (`dept_name`, `cost_date`, `personnel_cost`, `equipment_cost`, `material_cost`, `drug_cost`, `other_cost`, `total_cost`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('妇产科', '2026-01', 27135.31, 43948.26, 37615.51, 34431.98, 49523.01, 6114.49, 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), '模拟测试数据');
INSERT INTO `drm_dept_cost` (`dept_name`, `cost_date`, `personnel_cost`, `equipment_cost`, `material_cost`, `drug_cost`, `other_cost`, `total_cost`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('骨科', '2026-04', 32403.77, 12359.70, 17483.05, 33854.71, 19185.09, 24508.22, 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据');
INSERT INTO `drm_dept_cost` (`dept_name`, `cost_date`, `personnel_cost`, `equipment_cost`, `material_cost`, `drug_cost`, `other_cost`, `total_cost`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('神经外科', '2026-01', 36584.07, 7185.54, 32742.11, 8839.99, 11374.13, 33067.09, 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), '模拟测试数据');
INSERT INTO `drm_dept_cost` (`dept_name`, `cost_date`, `personnel_cost`, `equipment_cost`, `material_cost`, `drug_cost`, `other_cost`, `total_cost`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('心内科', '2026-05', 49476.36, 39824.26, 15293.04, 4590.96, 45540.42, 49368.50, 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), '模拟测试数据');

INSERT INTO `drm_drg_analysis` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `analysis_type`, `dept_name`, `drg_code`, `indicator_value`, `indicator_name`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据', '分类/项目-7', '妇产科', 'GB29', 22847.47, '全院医疗质量管控报告');
INSERT INTO `drm_drg_analysis` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `analysis_type`, `dept_name`, `drg_code`, `indicator_value`, `indicator_name`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '分类/项目-4', '儿科', 'PU19', 4383.55, '重点科室成本核算报告');
INSERT INTO `drm_drg_analysis` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `analysis_type`, `dept_name`, `drg_code`, `indicator_value`, `indicator_name`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), '模拟测试数据', '分类/项目-10', '骨科', 'RE19', 35442.23, '重点科室成本核算报告');
INSERT INTO `drm_drg_analysis` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `analysis_type`, `dept_name`, `drg_code`, `indicator_value`, `indicator_name`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), '模拟测试数据', '分类/项目-2', '神经外科', 'FM19', 19361.86, '内科月度DRG结算分析');
INSERT INTO `drm_drg_analysis` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `analysis_type`, `dept_name`, `drg_code`, `indicator_value`, `indicator_name`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '分类/项目-8', '急诊科', 'PU19', 32088.04, '全院医疗质量管控报告');

INSERT INTO `drm_drg_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `drg_code`, `drg_name`, `case_cnt`, `avg_cost`, `avg_days`, `cmi`, `surplus_amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据', '2026-03', 'FM19', '自然分娩', 423, 23397.70, 41994.88, 43937.60, 15196.81);
INSERT INTO `drm_drg_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `drg_code`, `drg_name`, `case_cnt`, `avg_cost`, `avg_days`, `cmi`, `surplus_amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '2026-02', 'MD19', '急性阑尾炎伴并发症', 55, 22629.68, 5554.93, 24179.67, 11976.33);
INSERT INTO `drm_drg_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `drg_code`, `drg_name`, `case_cnt`, `avg_cost`, `avg_days`, `cmi`, `surplus_amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), '模拟测试数据', '2026-05', 'MD19', '不伴合并症的心力衰竭', 62, 1978.30, 23263.38, 49470.87, 22273.12);
INSERT INTO `drm_drg_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `drg_code`, `drg_name`, `case_cnt`, `avg_cost`, `avg_days`, `cmi`, `surplus_amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), '模拟测试数据', '2026-01', 'PU19', '不伴合并症的心力衰竭', 244, 37908.11, 34614.77, 15653.62, 5439.19);
INSERT INTO `drm_drg_data` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `drg_code`, `drg_name`, `case_cnt`, `avg_cost`, `avg_days`, `cmi`, `surplus_amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), '模拟测试数据', '2026-05', 'PU19', '急性阑尾炎伴并发症', 399, 44126.56, 30796.02, 4041.95, 32745.16);

INSERT INTO `drm_drg_doctor` (`doctor_name`, `dept_name`, `drg_code`, `case_cnt`, `avg_cost`, `cmi`, `perf_score`, `stat_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('扁鹊', '急诊科', 'MD19', 208, 36421.14, 9529.45, 85.65, '2026-02', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据');
INSERT INTO `drm_drg_doctor` (`doctor_name`, `dept_name`, `drg_code`, `case_cnt`, `avg_cost`, `cmi`, `perf_score`, `stat_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('扁鹊', '妇产科', 'FM19', 410, 12028.36, 21712.40, 99.06, '2026-01', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), '模拟测试数据');
INSERT INTO `drm_drg_doctor` (`doctor_name`, `dept_name`, `drg_code`, `case_cnt`, `avg_cost`, `cmi`, `perf_score`, `stat_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('张仲景', '儿科', 'FM19', 159, 13990.95, 41501.32, 89.11, '2026-02', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), '模拟测试数据');
INSERT INTO `drm_drg_doctor` (`doctor_name`, `dept_name`, `drg_code`, `case_cnt`, `avg_cost`, `cmi`, `perf_score`, `stat_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('华佗', '儿科', 'RE19', 469, 45739.03, 24216.60, 94.10, '2026-05', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据');
INSERT INTO `drm_drg_doctor` (`doctor_name`, `dept_name`, `drg_code`, `case_cnt`, `avg_cost`, `cmi`, `perf_score`, `stat_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('皇甫谧', '急诊科', 'PU19', 74, 39591.84, 48229.27, 91.83, '2026-01', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 2 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据');

INSERT INTO `drm_drg_perf` (`dept_name`, `drg_code`, `drg_name`, `case_cnt`, `perf_score`, `perf_amount`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('心内科', 'MD19', '慢性阻塞性肺疾病', 93, 85.08, 21886.18, '2026-05', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据');
INSERT INTO `drm_drg_perf` (`dept_name`, `drg_code`, `drg_name`, `case_cnt`, `perf_score`, `perf_amount`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('儿科', 'FM19', '急性阑尾炎伴并发症', 43, 97.14, 28036.81, '2026-02', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), '模拟测试数据');
INSERT INTO `drm_drg_perf` (`dept_name`, `drg_code`, `drg_name`, `case_cnt`, `perf_score`, `perf_amount`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('急诊科', 'GB29', '自然分娩', 476, 99.75, 41422.55, '2026-01', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), '模拟测试数据');
INSERT INTO `drm_drg_perf` (`dept_name`, `drg_code`, `drg_name`, `case_cnt`, `perf_score`, `perf_amount`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('心内科', 'FM19', '急性阑尾炎伴并发症', 80, 96.54, 40786.54, '2026-03', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), '模拟测试数据');
INSERT INTO `drm_drg_perf` (`dept_name`, `drg_code`, `drg_name`, `case_cnt`, `perf_score`, `perf_amount`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('急诊科', 'RE19', '急性阑尾炎伴并发症', 181, 99.87, 3272.92, '2026-03', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据');

INSERT INTO `drm_drg_report` (`report_title`, `report_period`, `target_dept`, `drg_analysis`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', '分类/项目-6', '妇产科', '分类/项目-6', '分类/项目-9', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 2 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据');
INSERT INTO `drm_drg_report` (`report_title`, `report_period`, `target_dept`, `drg_analysis`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('全院医疗质量管控报告', '分类/项目-4', '骨科', '分类/项目-2', '分类/项目-1', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), '模拟测试数据');
INSERT INTO `drm_drg_report` (`report_title`, `report_period`, `target_dept`, `drg_analysis`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-8', '心内科', '分类/项目-4', '分类/项目-8', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');
INSERT INTO `drm_drg_report` (`report_title`, `report_period`, `target_dept`, `drg_analysis`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('全院医疗质量管控报告', '分类/项目-9', '神经外科', '分类/项目-4', '分类/项目-3', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据');
INSERT INTO `drm_drg_report` (`report_title`, `report_period`, `target_dept`, `drg_analysis`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-4', '儿科', '分类/项目-8', '分类/项目-1', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据');

INSERT INTO `drm_early_warning` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `warn_date`, `warn_type`, `warn_level`, `warn_content`, `dept_name`, `handle_status`, `handle_result`, `ai_suggestion`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), '模拟测试数据', '2026-01', '分类/项目-1', '分类/项目-7', '分类/项目-8', '儿科', '分类/项目-3', '分类/项目-5', '分类/项目-6');
INSERT INTO `drm_early_warning` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `warn_date`, `warn_type`, `warn_level`, `warn_content`, `dept_name`, `handle_status`, `handle_result`, `ai_suggestion`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据', '2026-05', '分类/项目-9', '分类/项目-9', '分类/项目-9', '妇产科', '分类/项目-10', '分类/项目-2', '分类/项目-8');
INSERT INTO `drm_early_warning` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `warn_date`, `warn_type`, `warn_level`, `warn_content`, `dept_name`, `handle_status`, `handle_result`, `ai_suggestion`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), '模拟测试数据', '2026-03', '分类/项目-7', '分类/项目-10', '分类/项目-4', '妇产科', '分类/项目-2', '分类/项目-2', '分类/项目-8');
INSERT INTO `drm_early_warning` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `warn_date`, `warn_type`, `warn_level`, `warn_content`, `dept_name`, `handle_status`, `handle_result`, `ai_suggestion`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据', '2026-05', '分类/项目-9', '分类/项目-9', '分类/项目-2', '妇产科', '分类/项目-4', '分类/项目-2', '分类/项目-2');
INSERT INTO `drm_early_warning` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `warn_date`, `warn_type`, `warn_level`, `warn_content`, `dept_name`, `handle_status`, `handle_result`, `ai_suggestion`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '2026-01', '分类/项目-6', '分类/项目-3', '分类/项目-6', '神经外科', '分类/项目-2', '分类/项目-5', '分类/项目-10');

INSERT INTO `drm_efficiency_perf` (`dept_name`, `efficiency_score`, `work_load`, `bed_utilization`, `equip_utilization`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('呼吸内科', 95.03, 12230.61, 46570.11, 16112.10, '2026-04', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据');
INSERT INTO `drm_efficiency_perf` (`dept_name`, `efficiency_score`, `work_load`, `bed_utilization`, `equip_utilization`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('神经外科', 95.96, 30484.80, 41139.88, 15513.40, '2026-03', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), '模拟测试数据');
INSERT INTO `drm_efficiency_perf` (`dept_name`, `efficiency_score`, `work_load`, `bed_utilization`, `equip_utilization`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('心内科', 95.38, 14040.80, 11021.05, 21064.40, '2026-01', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');
INSERT INTO `drm_efficiency_perf` (`dept_name`, `efficiency_score`, `work_load`, `bed_utilization`, `equip_utilization`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('心内科', 85.91, 9807.25, 25165.08, 40497.99, '2026-02', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据');
INSERT INTO `drm_efficiency_perf` (`dept_name`, `efficiency_score`, `work_load`, `bed_utilization`, `equip_utilization`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('儿科', 94.93, 47785.50, 11964.28, 30364.35, '2026-05', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');

INSERT INTO `drm_expense` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `expense_date`, `dept_name`, `expense_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), '模拟测试数据', '2026-03', '神经外科', '分类/项目-5', 30635.64);
INSERT INTO `drm_expense` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `expense_date`, `dept_name`, `expense_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据', '2026-04', '呼吸内科', '分类/项目-6', 36509.63);
INSERT INTO `drm_expense` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `expense_date`, `dept_name`, `expense_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 2 DAY), '模拟测试数据', '2026-03', '心内科', '分类/项目-9', 44058.90);
INSERT INTO `drm_expense` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `expense_date`, `dept_name`, `expense_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), '模拟测试数据', '2026-01', '骨科', '分类/项目-7', 28415.92);
INSERT INTO `drm_expense` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `expense_date`, `dept_name`, `expense_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据', '2026-02', '呼吸内科', '分类/项目-1', 2434.21);

INSERT INTO `drm_finance_report` (`report_title`, `report_type`, `report_period`, `target_dept`, `total_income`, `total_expense`, `balance`, `income_growth`, `expense_growth`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', 'monthly', '分类/项目-4', '儿科', 24762.52, 3552.86, 25687.87, '分类/项目-3', '分类/项目-4', '分类/项目-9', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), '模拟测试数据');
INSERT INTO `drm_finance_report` (`report_title`, `report_type`, `report_period`, `target_dept`, `total_income`, `total_expense`, `balance`, `income_growth`, `expense_growth`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', 'quarterly', '分类/项目-4', '神经外科', 19289.59, 39663.06, 18642.41, '分类/项目-3', '分类/项目-7', '分类/项目-3', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), '模拟测试数据');
INSERT INTO `drm_finance_report` (`report_title`, `report_type`, `report_period`, `target_dept`, `total_income`, `total_expense`, `balance`, `income_growth`, `expense_growth`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('全院医疗质量管控报告', 'monthly', '分类/项目-9', '儿科', 17581.21, 36247.47, 15499.33, '分类/项目-4', '分类/项目-10', '分类/项目-6', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');
INSERT INTO `drm_finance_report` (`report_title`, `report_type`, `report_period`, `target_dept`, `total_income`, `total_expense`, `balance`, `income_growth`, `expense_growth`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', 'quarterly', '分类/项目-3', '心内科', 13770.06, 11456.89, 47939.93, '分类/项目-1', '分类/项目-4', '分类/项目-3', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), '模拟测试数据');
INSERT INTO `drm_finance_report` (`report_title`, `report_type`, `report_period`, `target_dept`, `total_income`, `total_expense`, `balance`, `income_growth`, `expense_growth`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', 'monthly', '分类/项目-3', '心内科', 1144.53, 17950.83, 40848.55, '分类/项目-3', '分类/项目-2', '分类/项目-10', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), '模拟测试数据');

INSERT INTO `drm_income` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `income_date`, `dept_name`, `income_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), '模拟测试数据', '2026-01', '骨科', '分类/项目-3', 16856.85);
INSERT INTO `drm_income` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `income_date`, `dept_name`, `income_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据', '2026-04', '呼吸内科', '分类/项目-6', 46358.95);
INSERT INTO `drm_income` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `income_date`, `dept_name`, `income_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '2026-01', '儿科', '分类/项目-7', 25625.95);
INSERT INTO `drm_income` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `income_date`, `dept_name`, `income_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据', '2026-05', '急诊科', '分类/项目-3', 39933.50);
INSERT INTO `drm_income` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `income_date`, `dept_name`, `income_type`, `amount`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), '模拟测试数据', '2026-01', '妇产科', '分类/项目-10', 43848.25);

INSERT INTO `drm_inpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `in_cnt`, `out_cnt`, `bed_occupy_cnt`, `bed_occupy_rate`, `avg_stay_days`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), '模拟测试数据', '2026-01', '呼吸内科', 254, 90, 51, 98.41, 34678.43, 35009.24);
INSERT INTO `drm_inpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `in_cnt`, `out_cnt`, `bed_occupy_cnt`, `bed_occupy_rate`, `avg_stay_days`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 2 DAY), '模拟测试数据', '2026-01', '儿科', 436, 302, 118, 93.57, 21792.19, 24991.99);
INSERT INTO `drm_inpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `in_cnt`, `out_cnt`, `bed_occupy_cnt`, `bed_occupy_rate`, `avg_stay_days`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), '模拟测试数据', '2026-05', '心内科', 132, 405, 380, 91.44, 32900.50, 25999.59);
INSERT INTO `drm_inpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `in_cnt`, `out_cnt`, `bed_occupy_cnt`, `bed_occupy_rate`, `avg_stay_days`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), '模拟测试数据', '2026-05', '儿科', 324, 469, 432, 94.73, 42693.87, 43464.96);
INSERT INTO `drm_inpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `in_cnt`, `out_cnt`, `bed_occupy_cnt`, `bed_occupy_rate`, `avg_stay_days`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), '模拟测试数据', '2026-03', '儿科', 365, 401, 296, 94.10, 5126.01, 6609.71);

INSERT INTO `drm_knowledge_category` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_name`, `parent_id`, `order_num`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), '模拟测试数据', '重点科室成本核算报告', 0, 239);
INSERT INTO `drm_knowledge_category` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_name`, `parent_id`, `order_num`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据', '重点科室成本核算报告', 0, 159);
INSERT INTO `drm_knowledge_category` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_name`, `parent_id`, `order_num`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), '模拟测试数据', '内科月度DRG结算分析', 0, 258);
INSERT INTO `drm_knowledge_category` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_name`, `parent_id`, `order_num`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据', '内科月度DRG结算分析', 0, 428);
INSERT INTO `drm_knowledge_category` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_name`, `parent_id`, `order_num`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), '模拟测试数据', '内科月度DRG结算分析', 0, 487);

INSERT INTO `drm_knowledge_content` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_id`, `title`, `content`, `author`, `view_count`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据', 141, '内科月度DRG结算分析', '分类/项目-2', '张仲景', 142, '0');
INSERT INTO `drm_knowledge_content` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_id`, `title`, `content`, `author`, `view_count`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), '模拟测试数据', 43, '内科月度DRG结算分析', '分类/项目-8', '张仲景', 248, '0');
INSERT INTO `drm_knowledge_content` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_id`, `title`, `content`, `author`, `view_count`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据', 15, '2026年第一季度绩效分析报告', '分类/项目-2', '李时珍', 251, '0');
INSERT INTO `drm_knowledge_content` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_id`, `title`, `content`, `author`, `view_count`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), '模拟测试数据', 478, '内科月度DRG结算分析', '分类/项目-6', '华佗', 123, '0');
INSERT INTO `drm_knowledge_content` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `category_id`, `title`, `content`, `author`, `view_count`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), '模拟测试数据', 235, '内科月度DRG结算分析', '分类/项目-7', '扁鹊', 402, '0');

INSERT INTO `drm_operation_report` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `report_type`, `period_type`, `report_title`, `report_content`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), '模拟测试数据', 'monthly', '分类/项目-2', '重点科室成本核算报告', '分类/项目-1', '0');
INSERT INTO `drm_operation_report` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `report_type`, `period_type`, `report_title`, `report_content`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), '模拟测试数据', 'quarterly', '分类/项目-3', '全院医疗质量管控报告', '分类/项目-6', '0');
INSERT INTO `drm_operation_report` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `report_type`, `period_type`, `report_title`, `report_content`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据', 'monthly', '分类/项目-9', '全院医疗质量管控报告', '分类/项目-9', '0');
INSERT INTO `drm_operation_report` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `report_type`, `period_type`, `report_title`, `report_content`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据', 'quarterly', '分类/项目-6', '2026年第一季度绩效分析报告', '分类/项目-7', '0');
INSERT INTO `drm_operation_report` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `report_type`, `period_type`, `report_title`, `report_content`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据', 'monthly', '分类/项目-8', '内科月度DRG结算分析', '分类/项目-3', '0');

INSERT INTO `drm_operation_topic` (`topic_name`, `topic_type`, `target_dept`, `analysis_model`, `data_config`, `chart_config`, `status`, `ai_insights`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', '分类/项目-10', '儿科', '分类/项目-5', '分类/项目-3', '分类/项目-9', '0', '分类/项目-2', 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据');
INSERT INTO `drm_operation_topic` (`topic_name`, `topic_type`, `target_dept`, `analysis_model`, `data_config`, `chart_config`, `status`, `ai_insights`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-5', '心内科', '分类/项目-4', '分类/项目-9', '分类/项目-4', '0', '分类/项目-7', 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');
INSERT INTO `drm_operation_topic` (`topic_name`, `topic_type`, `target_dept`, `analysis_model`, `data_config`, `chart_config`, `status`, `ai_insights`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('全院医疗质量管控报告', '分类/项目-4', '骨科', '分类/项目-10', '分类/项目-2', '分类/项目-3', '0', '分类/项目-2', 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据');
INSERT INTO `drm_operation_topic` (`topic_name`, `topic_type`, `target_dept`, `analysis_model`, `data_config`, `chart_config`, `status`, `ai_insights`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('全院医疗质量管控报告', '分类/项目-6', '骨科', '分类/项目-6', '分类/项目-10', '分类/项目-10', '0', '分类/项目-2', 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据');
INSERT INTO `drm_operation_topic` (`topic_name`, `topic_type`, `target_dept`, `analysis_model`, `data_config`, `chart_config`, `status`, `ai_insights`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', '分类/项目-10', '儿科', '分类/项目-7', '分类/项目-5', '分类/项目-7', '0', '分类/项目-7', 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), '模拟测试数据');

INSERT INTO `drm_outpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `register_cnt`, `visit_cnt`, `revenue`, `avg_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据', '2026-05', '骨科', 343, 435, 29758.39, 30812.25);
INSERT INTO `drm_outpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `register_cnt`, `visit_cnt`, `revenue`, `avg_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '2026-01', '心内科', 91, 340, 27138.72, 39568.52);
INSERT INTO `drm_outpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `register_cnt`, `visit_cnt`, `revenue`, `avg_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据', '2026-04', '妇产科', 349, 126, 8063.80, 15251.41);
INSERT INTO `drm_outpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `register_cnt`, `visit_cnt`, `revenue`, `avg_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据', '2026-03', '神经外科', 384, 13, 3451.78, 34913.54);
INSERT INTO `drm_outpatient_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `register_cnt`, `visit_cnt`, `revenue`, `avg_cost`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', '2026-05', '神经外科', 377, 195, 39359.18, 39190.20);

INSERT INTO `drm_perf_plan` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_name`, `plan_type`, `effective_date`, `status`, `formula_config`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), '模拟测试数据', '重点科室成本核算报告', 'monthly', '2026-01', '0', '分类/项目-6');
INSERT INTO `drm_perf_plan` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_name`, `plan_type`, `effective_date`, `status`, `formula_config`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), '模拟测试数据', '2026年第一季度绩效分析报告', 'quarterly', '2026-04', '0', '分类/项目-5');
INSERT INTO `drm_perf_plan` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_name`, `plan_type`, `effective_date`, `status`, `formula_config`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据', '2026年第一季度绩效分析报告', 'monthly', '2026-04', '0', '分类/项目-1');
INSERT INTO `drm_perf_plan` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_name`, `plan_type`, `effective_date`, `status`, `formula_config`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), '模拟测试数据', '内科月度DRG结算分析', 'quarterly', '2026-01', '0', '分类/项目-6');
INSERT INTO `drm_perf_plan` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_name`, `plan_type`, `effective_date`, `status`, `formula_config`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), '模拟测试数据', '内科月度DRG结算分析', 'monthly', '2026-05', '0', '分类/项目-8');

INSERT INTO `drm_perf_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-10', 'monthly', '心内科', '分类/项目-5', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据');
INSERT INTO `drm_perf_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('内科月度DRG结算分析', '分类/项目-3', 'quarterly', '儿科', '分类/项目-8', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据');
INSERT INTO `drm_perf_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-8', 'monthly', '儿科', '分类/项目-4', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), '模拟测试数据');
INSERT INTO `drm_perf_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-1', 'quarterly', '神经外科', '分类/项目-8', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), '模拟测试数据');
INSERT INTO `drm_perf_report` (`report_title`, `report_period`, `report_type`, `target_dept`, `content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-3', 'monthly', '骨科', '分类/项目-4', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据');

INSERT INTO `drm_perf_result` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_id`, `dept_name`, `doctor_name`, `perf_score`, `perf_amount`, `calc_date`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 28 DAY), '模拟测试数据', 256, '神经外科', '吴普', 94.52, 22972.57, '2026-05');
INSERT INTO `drm_perf_result` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_id`, `dept_name`, `doctor_name`, `perf_score`, `perf_amount`, `calc_date`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据', 166, '心内科', '李时珍', 98.56, 48227.34, '2026-04');
INSERT INTO `drm_perf_result` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_id`, `dept_name`, `doctor_name`, `perf_score`, `perf_amount`, `calc_date`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据', 372, '呼吸内科', '吴普', 96.69, 19070.99, '2026-01');
INSERT INTO `drm_perf_result` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_id`, `dept_name`, `doctor_name`, `perf_score`, `perf_amount`, `calc_date`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), '模拟测试数据', 334, '神经外科', '吴普', 97.61, 16605.14, '2026-04');
INSERT INTO `drm_perf_result` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `plan_id`, `dept_name`, `doctor_name`, `perf_score`, `perf_amount`, `calc_date`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 16 DAY), '模拟测试数据', 79, '儿科', '吴普', 88.86, 41647.84, '2026-02');

INSERT INTO `drm_prescription_review` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `review_date`, `dept_name`, `doctor_name`, `prescription_cnt`, `qualified_cnt`, `unqualified_reason`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), '模拟测试数据', '2026-04', '妇产科', '张仲景', 476, 213, '分类/项目-3');
INSERT INTO `drm_prescription_review` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `review_date`, `dept_name`, `doctor_name`, `prescription_cnt`, `qualified_cnt`, `unqualified_reason`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), '模拟测试数据', '2026-04', '急诊科', '扁鹊', 68, 383, '分类/项目-8');
INSERT INTO `drm_prescription_review` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `review_date`, `dept_name`, `doctor_name`, `prescription_cnt`, `qualified_cnt`, `unqualified_reason`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), '模拟测试数据', '2026-01', '妇产科', '扁鹊', 112, 182, '分类/项目-5');
INSERT INTO `drm_prescription_review` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `review_date`, `dept_name`, `doctor_name`, `prescription_cnt`, `qualified_cnt`, `unqualified_reason`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), '模拟测试数据', '2026-01', '骨科', '华佗', 421, 335, '分类/项目-6');
INSERT INTO `drm_prescription_review` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `review_date`, `dept_name`, `doctor_name`, `prescription_cnt`, `qualified_cnt`, `unqualified_reason`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), '模拟测试数据', '2026-05', '急诊科', '吴普', 325, 191, '分类/项目-4');

INSERT INTO `drm_project_cost` (`project_name`, `project_type`, `dept_name`, `budget_amount`, `actual_amount`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-8', '儿科', '分类/项目-7', '分类/项目-4', '2026-02', 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据');
INSERT INTO `drm_project_cost` (`project_name`, `project_type`, `dept_name`, `budget_amount`, `actual_amount`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-4', '呼吸内科', '分类/项目-2', '分类/项目-10', '2026-05', 'admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), '模拟测试数据');
INSERT INTO `drm_project_cost` (`project_name`, `project_type`, `dept_name`, `budget_amount`, `actual_amount`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-4', '骨科', '分类/项目-5', '分类/项目-9', '2026-01', 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), '模拟测试数据');
INSERT INTO `drm_project_cost` (`project_name`, `project_type`, `dept_name`, `budget_amount`, `actual_amount`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-6', '呼吸内科', '分类/项目-1', '分类/项目-7', '2026-02', 'admin', DATE_SUB(sysdate(), INTERVAL 14 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), '模拟测试数据');
INSERT INTO `drm_project_cost` (`project_name`, `project_type`, `dept_name`, `budget_amount`, `actual_amount`, `cost_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-7', '急诊科', '分类/项目-10', '分类/项目-6', '2026-03', 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据');

INSERT INTO `drm_quality_event` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `event_date`, `dept_name`, `event_type`, `event_level`, `event_desc`, `handling_status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), '模拟测试数据', '2026-02', '儿科', '分类/项目-1', '分类/项目-5', '分类/项目-2', '分类/项目-2');
INSERT INTO `drm_quality_event` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `event_date`, `dept_name`, `event_type`, `event_level`, `event_desc`, `handling_status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), '模拟测试数据', '2026-01', '心内科', '分类/项目-1', '分类/项目-5', '分类/项目-4', '分类/项目-3');
INSERT INTO `drm_quality_event` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `event_date`, `dept_name`, `event_type`, `event_level`, `event_desc`, `handling_status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据', '2026-04', '心内科', '分类/项目-5', '分类/项目-8', '分类/项目-5', '分类/项目-7');
INSERT INTO `drm_quality_event` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `event_date`, `dept_name`, `event_type`, `event_level`, `event_desc`, `handling_status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), '模拟测试数据', '2026-03', '急诊科', '分类/项目-3', '分类/项目-7', '分类/项目-5', '分类/项目-6');
INSERT INTO `drm_quality_event` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `event_date`, `dept_name`, `event_type`, `event_level`, `event_desc`, `handling_status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), '模拟测试数据', '2026-04', '骨科', '分类/项目-8', '分类/项目-3', '分类/项目-6', '分类/项目-3');

INSERT INTO `drm_quality_indicator` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `indicator_date`, `dept_name`, `indicator_code`, `indicator_name`, `indicator_value`, `target_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), '模拟测试数据', '2026-01', '呼吸内科', '分类/项目-8', '全院医疗质量管控报告', 13040.10, 34623.19);
INSERT INTO `drm_quality_indicator` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `indicator_date`, `dept_name`, `indicator_code`, `indicator_name`, `indicator_value`, `target_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), '模拟测试数据', '2026-01', '骨科', '分类/项目-4', '全院医疗质量管控报告', 48626.82, 42611.21);
INSERT INTO `drm_quality_indicator` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `indicator_date`, `dept_name`, `indicator_code`, `indicator_name`, `indicator_value`, `target_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 8 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), '模拟测试数据', '2026-02', '妇产科', '分类/项目-6', '全院医疗质量管控报告', 43506.19, 12280.22);
INSERT INTO `drm_quality_indicator` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `indicator_date`, `dept_name`, `indicator_code`, `indicator_name`, `indicator_value`, `target_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), '模拟测试数据', '2026-04', '心内科', '分类/项目-4', '全院医疗质量管控报告', 11059.87, 31856.59);
INSERT INTO `drm_quality_indicator` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `indicator_date`, `dept_name`, `indicator_code`, `indicator_name`, `indicator_value`, `target_value`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), '模拟测试数据', '2026-03', '心内科', '分类/项目-8', '重点科室成本核算报告', 23090.58, 11301.82);

INSERT INTO `drm_quality_perf` (`dept_name`, `quality_score`, `qualified_rate`, `excellent_rate`, `incident_cnt`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('妇产科', 88.99, 88.74, 94.36, 257, '2026-05', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), '模拟测试数据');
INSERT INTO `drm_quality_perf` (`dept_name`, `quality_score`, `qualified_rate`, `excellent_rate`, `incident_cnt`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('呼吸内科', 98.32, 90.04, 85.73, 197, '2026-03', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 25 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 1 DAY), '模拟测试数据');
INSERT INTO `drm_quality_perf` (`dept_name`, `quality_score`, `qualified_rate`, `excellent_rate`, `incident_cnt`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('急诊科', 97.11, 97.01, 92.05, 291, '2026-04', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 21 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 11 DAY), '模拟测试数据');
INSERT INTO `drm_quality_perf` (`dept_name`, `quality_score`, `qualified_rate`, `excellent_rate`, `incident_cnt`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('呼吸内科', 90.23, 93.79, 97.67, 64, '2026-05', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据');
INSERT INTO `drm_quality_perf` (`dept_name`, `quality_score`, `qualified_rate`, `excellent_rate`, `incident_cnt`, `calc_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('儿科', 98.05, 96.12, 91.12, 310, '2026-05', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 9 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 29 DAY), '模拟测试数据');

INSERT INTO `drm_rbrvs` (`item_name`, `item_code`, `dept_name`, `base_point`, `difficulty_coeff`, `perf_amount`, `eff_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-5', '儿科', 24897.32, 33897.81, 10977.55, '2026-01', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 30 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), '模拟测试数据');
INSERT INTO `drm_rbrvs` (`item_name`, `item_code`, `dept_name`, `base_point`, `difficulty_coeff`, `perf_amount`, `eff_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('2026年第一季度绩效分析报告', '分类/项目-8', '妇产科', 31272.66, 30036.59, 23299.71, '2026-04', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 15 DAY), '模拟测试数据');
INSERT INTO `drm_rbrvs` (`item_name`, `item_code`, `dept_name`, `base_point`, `difficulty_coeff`, `perf_amount`, `eff_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-1', '急诊科', 24192.90, 23231.34, 47349.19, '2026-04', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), '模拟测试数据');
INSERT INTO `drm_rbrvs` (`item_name`, `item_code`, `dept_name`, `base_point`, `difficulty_coeff`, `perf_amount`, `eff_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('全院医疗质量管控报告', '分类/项目-2', '心内科', 8657.14, 13077.51, 40288.84, '2026-01', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), '模拟测试数据');
INSERT INTO `drm_rbrvs` (`item_name`, `item_code`, `dept_name`, `base_point`, `difficulty_coeff`, `perf_amount`, `eff_date`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES ('重点科室成本核算报告', '分类/项目-6', '心内科', 32493.75, 43741.98, 25654.22, '2026-04', '0', 'admin', DATE_SUB(sysdate(), INTERVAL 24 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 6 DAY), '模拟测试数据');

INSERT INTO `drm_receivable` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `patient_name`, `dept_name`, `bill_date`, `amount`, `paid_amount`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 4 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据', '内科月度DRG结算分析', '急诊科', '2026-04', 7463.75, 20888.87, '0');
INSERT INTO `drm_receivable` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `patient_name`, `dept_name`, `bill_date`, `amount`, `paid_amount`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 23 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 12 DAY), '模拟测试数据', '2026年第一季度绩效分析报告', '神经外科', '2026-04', 21390.05, 45672.08, '0');
INSERT INTO `drm_receivable` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `patient_name`, `dept_name`, `bill_date`, `amount`, `paid_amount`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 20 DAY), '模拟测试数据', '重点科室成本核算报告', '妇产科', '2026-03', 2850.39, 16764.65, '0');
INSERT INTO `drm_receivable` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `patient_name`, `dept_name`, `bill_date`, `amount`, `paid_amount`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 10 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), '模拟测试数据', '2026年第一季度绩效分析报告', '神经外科', '2026-02', 38028.33, 1197.90, '0');
INSERT INTO `drm_receivable` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `patient_name`, `dept_name`, `bill_date`, `amount`, `paid_amount`, `status`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 22 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 27 DAY), '模拟测试数据', '内科月度DRG结算分析', '呼吸内科', '2026-02', 39422.53, 1806.64, '0');

INSERT INTO `drm_surgery_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `surgery_cnt`, `emergency_cnt`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 3 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 26 DAY), '模拟测试数据', '2026-03', '神经外科', 464, 80, 6522.39);
INSERT INTO `drm_surgery_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `surgery_cnt`, `emergency_cnt`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 2 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 17 DAY), '模拟测试数据', '2026-04', '呼吸内科', 106, 316, 34839.63);
INSERT INTO `drm_surgery_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `surgery_cnt`, `emergency_cnt`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 7 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), '模拟测试数据', '2026-03', '呼吸内科', 300, 56, 10587.08);
INSERT INTO `drm_surgery_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `surgery_cnt`, `emergency_cnt`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 5 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 13 DAY), '模拟测试数据', '2026-03', '儿科', 354, 317, 9703.52);
INSERT INTO `drm_surgery_stats` (`create_by`, `create_time`, `update_by`, `update_time`, `remark`, `stat_date`, `dept_name`, `surgery_cnt`, `emergency_cnt`, `revenue`) VALUES ('admin', DATE_SUB(sysdate(), INTERVAL 18 DAY), 'admin', DATE_SUB(sysdate(), INTERVAL 19 DAY), '模拟测试数据', '2026-01', '急诊科', 475, 185, 4642.46);

