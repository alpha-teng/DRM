DROP TABLE IF EXISTS `drm_rolling_budget`;
CREATE TABLE `drm_rolling_budget` (
  `budget_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `budget_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室',
  `budget_amount` decimal(10,2) DEFAULT NULL COMMENT '预算金额',
  `status` char(1) DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`budget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='滚动预算';

INSERT INTO `drm_rolling_budget` (`budget_name`, `dept_name`, `budget_amount`, `status`, `create_by`, `create_time`, `remark`) VALUES
('第一季度医疗耗材预算', '内科', 150000.00, '0', 'admin', sysdate(), '测试1'),
('第二季度设备维护预算', '外科', 80000.00, '0', 'admin', sysdate(), '测试2'),
('年度培训经费预算', '儿科', 30000.00, '1', 'admin', sysdate(), '测试3');

