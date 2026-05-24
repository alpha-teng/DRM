-- 专题分析表
CREATE TABLE drm_operation_topic (
    topic_id BIGINT AUTO_INCREMENT COMMENT '专题ID',
    topic_name VARCHAR(100) NOT NULL COMMENT '专题名称',
    topic_type VARCHAR(50) COMMENT '专题类型（科室分析/病种分析/DRG分析/成本分析等）',
    target_dept VARCHAR(100) COMMENT '目标科室',
    analysis_model VARCHAR(50) COMMENT '分析模型（对比分析/趋势分析/分布分析/关联分析等）',
    data_config TEXT COMMENT '数据配置（JSON格式，存储选择的数据维度和指标）',
    chart_config TEXT COMMENT '图表配置（JSON格式，存储图表类型和配置）',
    status VARCHAR(20) DEFAULT '0' COMMENT '状态（0正常 1停用）',
    ai_insights TEXT COMMENT 'AI分析洞察',
    create_by VARCHAR(64) DEFAULT '' COMMENT '创建者',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by VARCHAR(64) DEFAULT '' COMMENT '更新者',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark TEXT COMMENT '备注',
    PRIMARY KEY (topic_id),
    KEY idx_topic_type (topic_type),
    KEY idx_target_dept (target_dept),
    KEY idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='专题分析表';

-- 插入示例数据
INSERT INTO drm_operation_topic (topic_name, topic_type, target_dept, analysis_model, data_config, status, create_by) VALUES
('骨科运营分析', '科室分析', '骨科', '对比分析', '{"metrics":["门诊量","住院量","手术量","收入"],"period":"last30days"}', '0', 'admin'),
('心内科DRG分析', 'DRG分析', '心内科', '趋势分析', '{"metrics":["DRG组数","CMI值","费用消耗指数","时间消耗指数"],"period":"last90days"}', '0', 'admin'),
('全院成本分析', '成本分析', NULL, '分布分析', '{"metrics":["人力成本","材料成本","设备成本","药品成本"],"period":"lastmonth"}', '0', 'admin');
