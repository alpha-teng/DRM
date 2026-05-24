DROP TABLE IF EXISTS `drm_medical_record`;
CREATE TABLE `drm_medical_record` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `record_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `record_value` varchar(255) DEFAULT NULL COMMENT '数值',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='病案质量';

INSERT INTO `drm_medical_record` (`record_name`, `dept_name`, `record_value`, `status`, `create_by`, `create_time`, `remark`) VALUES
('测试记录A', '内科', '100', '0', 'admin', sysdate(), '测试1'),
('测试记录B', '骨科', '200', '0', 'admin', sysdate(), '测试2'),
('测试记录C', '急诊科', '300', '1', 'admin', sysdate(), '测试3');

DROP TABLE IF EXISTS `drm_quality_report`;
CREATE TABLE `drm_quality_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `report_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `report_value` varchar(255) DEFAULT NULL COMMENT '数值',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量报告';

INSERT INTO `drm_quality_report` (`report_name`, `dept_name`, `report_value`, `status`, `create_by`, `create_time`, `remark`) VALUES
('测试记录A', '内科', '100', '0', 'admin', sysdate(), '测试1'),
('测试记录B', '骨科', '200', '0', 'admin', sysdate(), '测试2'),
('测试记录C', '急诊科', '300', '1', 'admin', sysdate(), '测试3');

