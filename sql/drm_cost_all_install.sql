-- =====================================================
-- 成本核算模块数据库表安装脚本
-- 包含：病种成本、科室成本、项目成本、成本报告
-- =====================================================

-- 1. 病种成本表
DROP TABLE IF EXISTS drm_case_cost;

CREATE TABLE drm_case_cost (
    case_id BIGINT AUTO_INCREMENT COMMENT '病例ID',
    case_name VARCHAR(100) NOT NULL COMMENT '病种名称',
    dept_name VARCHAR(100) COMMENT '科室名称',
    case_code VARCHAR(50) COMMENT '病种编码',
    total_cost DECIMAL(15,2) DEFAULT 0 COMMENT '总成本',
    drug_cost DECIMAL(15,2) DEFAULT 0 COMMENT '药品成本',
    material_cost DECIMAL(15,2) DEFAULT 0 COMMENT '材料成本',
    service_cost DECIMAL(15,2) DEFAULT 0 COMMENT '服务成本',
    avg_stay_days INT COMMENT '平均住院日',
    cost_date VARCHAR(20) COMMENT '成本日期',
    create_by VARCHAR(64) DEFAULT '' COMMENT '创建者',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by VARCHAR(64) DEFAULT '' COMMENT '更新者',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark TEXT COMMENT '备注',
    PRIMARY KEY (case_id),
    KEY idx_dept_name (dept_name),
    KEY idx_cost_date (cost_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='病种成本表';

-- 2. 科室成本表
DROP TABLE IF EXISTS drm_dept_cost;

CREATE TABLE drm_dept_cost (
    dept_id BIGINT AUTO_INCREMENT COMMENT '科室ID',
    dept_name VARCHAR(100) NOT NULL COMMENT '科室名称',
    cost_date VARCHAR(20) NOT NULL COMMENT '成本日期',
    personnel_cost DECIMAL(15,2) DEFAULT 0 COMMENT '人力成本',
    equipment_cost DECIMAL(15,2) DEFAULT 0 COMMENT '设备成本',
    material_cost DECIMAL(15,2) DEFAULT 0 COMMENT '材料成本',
    drug_cost DECIMAL(15,2) DEFAULT 0 COMMENT '药品成本',
    other_cost DECIMAL(15,2) DEFAULT 0 COMMENT '其他成本',
    total_cost DECIMAL(15,2) DEFAULT 0 COMMENT '总成本',
    create_by VARCHAR(64) DEFAULT '' COMMENT '创建者',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by VARCHAR(64) DEFAULT '' COMMENT '更新者',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark TEXT COMMENT '备注',
    PRIMARY KEY (dept_id),
    KEY idx_dept_name (dept_name),
    KEY idx_cost_date (cost_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='科室成本表';

-- 3. 项目成本表
DROP TABLE IF EXISTS drm_project_cost;

CREATE TABLE drm_project_cost (
    project_id BIGINT AUTO_INCREMENT COMMENT '项目ID',
    project_name VARCHAR(100) NOT NULL COMMENT '项目名称',
    project_type VARCHAR(50) COMMENT '项目类型',
    dept_name VARCHAR(100) COMMENT '科室名称',
    budget_amount DECIMAL(15,2) COMMENT '预算金额',
    actual_amount DECIMAL(15,2) COMMENT '实际金额',
    cost_date VARCHAR(20) COMMENT '成本日期',
    create_by VARCHAR(64) DEFAULT '' COMMENT '创建者',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by VARCHAR(64) DEFAULT '' COMMENT '更新者',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark TEXT COMMENT '备注',
    PRIMARY KEY (project_id),
    KEY idx_project_type (project_type),
    KEY idx_dept_name (dept_name),
    KEY idx_cost_date (cost_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目成本表';

-- 4. 成本报告表
DROP TABLE IF EXISTS drm_cost_report;

CREATE TABLE drm_cost_report (
    report_id BIGINT AUTO_INCREMENT COMMENT '报告ID',
    report_title VARCHAR(100) NOT NULL COMMENT '报告标题',
    report_period VARCHAR(20) COMMENT '报告周期',
    report_type VARCHAR(50) COMMENT '报告类型',
    target_dept VARCHAR(100) COMMENT '目标科室',
    content TEXT COMMENT '报告内容',
    status VARCHAR(20) DEFAULT '0' COMMENT '状态（0正常 1停用）',
    create_by VARCHAR(64) DEFAULT '' COMMENT '创建者',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by VARCHAR(64) DEFAULT '' COMMENT '更新者',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark TEXT COMMENT '备注',
    PRIMARY KEY (report_id),
    KEY idx_report_type (report_type),
    KEY idx_target_dept (target_dept),
    KEY idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='成本报告表';

-- =====================================================
-- 插入示例数据
-- =====================================================

-- 病种成本示例数据
INSERT INTO drm_case_cost (case_name, dept_name, case_code, total_cost, drug_cost, material_cost, service_cost, avg_stay_days, cost_date, create_by) VALUES
('肺炎', '呼吸内科', 'J15.903', 8500.00, 3200.00, 1800.00, 3500.00, 7, '2025-05', 'admin'),
('糖尿病', '内分泌科', 'E11.901', 9200.00, 3800.00, 2100.00, 3300.00, 8, '2025-05', 'admin'),
('冠心病', '心血管内科', 'I25.101', 12800.00, 5200.00, 3100.00, 4500.00, 10, '2025-05', 'admin'),
('骨折', '骨科', 'S72.001', 7800.00, 2500.00, 2200.00, 3100.00, 12, '2025-05', 'admin'),
('阑尾炎', '普通外科', 'K35.801', 4500.00, 1200.00, 800.00, 2500.00, 5, '2025-05', 'admin');

-- 科室成本示例数据
INSERT INTO drm_dept_cost (dept_name, cost_date, personnel_cost, equipment_cost, material_cost, drug_cost, other_cost, total_cost, create_by) VALUES
('骨科', '2025-05', 850000.00, 320000.00, 280000.00, 520000.00, 120000.00, 2090000.00, 'admin'),
('心内科', '2025-05', 780000.00, 280000.00, 220000.00, 480000.00, 95000.00, 1855000.00, 'admin'),
('普通外科', '2025-05', 720000.00, 250000.00, 190000.00, 410000.00, 88000.00, 1658000.00, 'admin'),
('儿科', '2025-05', 650000.00, 180000.00, 150000.00, 320000.00, 75000.00, 1375000.00, 'admin'),
('妇产科', '2025-05', 680000.00, 190000.00, 160000.00, 350000.00, 82000.00, 1462000.00, 'admin');

-- 项目成本示例数据
INSERT INTO drm_project_cost (project_name, project_type, dept_name, budget_amount, actual_amount, cost_date, create_by) VALUES
('骨科设备更新', '设备采购', '骨科', 500000.00, 485000.00, '2025-05', 'admin'),
('心内科介入治疗', '治疗项目', '心内科', 300000.00, 315000.00, '2025-05', 'admin'),
('手术室改造', '基建项目', '普通外科', 800000.00, 780000.00, '2025-05', 'admin'),
('儿科体检设备', '设备采购', '儿科', 200000.00, 195000.00, '2025-05', 'admin'),
('病房信息系统', '信息化', '信息科', 150000.00, 145000.00, '2025-05', 'admin');

-- 成本报告示例数据
INSERT INTO drm_cost_report (report_title, report_period, report_type, target_dept, content, status, create_by) VALUES
('2025年5月全院成本分析报告', '2025-05', '月报', NULL, '<p>本月全院总成本为850万元，同比增长5.2%。其中人力成本占比32%，材料成本占比28%。</p>', '0', 'admin'),
('骨科第一季度成本分析', '2025-Q1', '季报', '骨科', '<p>骨科Q1总成本为620万元，主要成本集中在设备折旧和耗材支出。</p>', '0', 'admin'),
('2024年度全院成本总结', '2024', '年报', NULL, '<p>2024年全院总成本为9800万元，较上年增长8.5%。</p>', '0', 'admin');
