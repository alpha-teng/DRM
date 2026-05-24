-- 财务报告表
DROP TABLE IF EXISTS drm_finance_report;

CREATE TABLE drm_finance_report (
    report_id BIGINT AUTO_INCREMENT COMMENT '报告ID',
    report_title VARCHAR(100) NOT NULL COMMENT '报告标题',
    report_type VARCHAR(50) COMMENT '报告类型（月报/季报/年报）',
    report_period VARCHAR(20) COMMENT '报告周期（2025-05）',
    target_dept VARCHAR(100) COMMENT '目标科室（全院报告为空）',
    total_income DECIMAL(15,2) DEFAULT 0 COMMENT '总收入（元）',
    total_expense DECIMAL(15,2) DEFAULT 0 COMMENT '总支出（元）',
    balance DECIMAL(15,2) DEFAULT 0 COMMENT '结余（元）',
    income_growth VARCHAR(20) COMMENT '收入增长率',
    expense_growth VARCHAR(20) COMMENT '支出增长率',
    content TEXT COMMENT '报告内容（富文本）',
    status VARCHAR(20) DEFAULT '0' COMMENT '状态（0正常 1停用）',
    create_by VARCHAR(64) DEFAULT '' COMMENT '创建者',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by VARCHAR(64) DEFAULT '' COMMENT '更新者',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark TEXT COMMENT '备注',
    PRIMARY KEY (report_id),
    KEY idx_report_type (report_type),
    KEY idx_report_period (report_period),
    KEY idx_target_dept (target_dept),
    KEY idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='财务报告表';

-- 插入示例数据
INSERT INTO drm_finance_report (report_title, report_type, report_period, target_dept, total_income, total_expense, balance, income_growth, expense_growth, status, create_by, remark) VALUES
('2025年5月全院财务报告', '月报', '2025-05', NULL, 15800000.00, 12300000.00, 3500000.00, '+8.5%', '+6.2%', '0', 'admin', '2025年5月全院收支情况总结'),
('骨科2025年第一季度财务报告', '季报', '2025-Q1', '骨科', 3200000.00, 2800000.00, 400000.00, '+12.3%', '+10.5%', '0', 'admin', '骨科第一季度财务分析'),
('心内科2025年4月财务报告', '月报', '2025-04', '心内科', 1850000.00, 1620000.00, 230000.00, '+5.8%', '+4.2%', '0', 'admin', '心内科4月份财务状况'),
('全院2024年度财务报告', '年报', '2024', NULL, 185000000.00, 158000000.00, 27000000.00, '+15.2%', '+12.8%', '0', 'admin', '2024年全院年度财务总结');
