DROP TABLE IF EXISTS `drm_sync_task`;
CREATE TABLE `drm_sync_task` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `task_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `task_value` varchar(255) DEFAULT NULL COMMENT '数值',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步任务';

INSERT INTO `drm_sync_task` (`task_name`, `dept_name`, `task_value`, `status`, `create_by`, `create_time`, `remark`) VALUES
('同步任务A', '信息科', '100', '0', 'admin', sysdate(), '测试1'),
('同步任务B', '财务科', '200', '0', 'admin', sysdate(), '测试2'),
('同步任务C', '病案室', '300', '1', 'admin', sysdate(), '测试3');

