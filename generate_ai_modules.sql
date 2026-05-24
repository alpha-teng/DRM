DROP TABLE IF EXISTS `drm_ai_report`;
CREATE TABLE `drm_ai_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `report_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `report_type` varchar(255) DEFAULT NULL COMMENT '类型',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='AI分析报告';

INSERT INTO `drm_ai_report` (`report_title`, `dept_name`, `report_type`, `status`, `create_by`, `create_time`, `remark`) VALUES
('AiReport Test 1', '内科', '日常分析', '0', 'admin', sysdate(), '测试1'),
('AiReport Test 2', '外科', '异常波动', '0', 'admin', sysdate(), '测试2'),
('AiReport Test 3', '儿科', '优化建议', '1', 'admin', sysdate(), '测试3');

DROP TABLE IF EXISTS `drm_ai_warning`;
CREATE TABLE `drm_ai_warning` (
  `warning_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `warning_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `warning_level` varchar(255) DEFAULT NULL COMMENT '类型',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='AI智能预警';

INSERT INTO `drm_ai_warning` (`warning_title`, `dept_name`, `warning_level`, `status`, `create_by`, `create_time`, `remark`) VALUES
('AiWarning Test 1', '内科', '日常分析', '0', 'admin', sysdate(), '测试1'),
('AiWarning Test 2', '外科', '异常波动', '0', 'admin', sysdate(), '测试2'),
('AiWarning Test 3', '儿科', '优化建议', '1', 'admin', sysdate(), '测试3');

DROP TABLE IF EXISTS `drm_ai_recommend`;
CREATE TABLE `drm_ai_recommend` (
  `recommend_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `recommend_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `recommend_type` varchar(255) DEFAULT NULL COMMENT '类型',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`recommend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='AI智能推荐';

INSERT INTO `drm_ai_recommend` (`recommend_title`, `dept_name`, `recommend_type`, `status`, `create_by`, `create_time`, `remark`) VALUES
('AiRecommend Test 1', '内科', '日常分析', '0', 'admin', sysdate(), '测试1'),
('AiRecommend Test 2', '外科', '异常波动', '0', 'admin', sysdate(), '测试2'),
('AiRecommend Test 3', '儿科', '优化建议', '1', 'admin', sysdate(), '测试3');

