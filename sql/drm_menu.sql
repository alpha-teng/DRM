-- =============================================
-- DRM 医院运营决策分析系统 菜单数据
-- 13个目录 72个菜单
-- =============================================

-- 目录ID分配：2000=院长驾驶舱, 2100=运营分析, 2200=财务管控, 2300=成本核算
--              2400=绩效管理, 2500=DRG分析, 2600=预算管理, 2700=医疗质量
--              2800=AI智能助手, 2900=知识库管理, 3000=数据源管理, 3100=移动端
-- 菜单ID分配：每个目录下从2001/2101/2201...开始递增

-- 一级目录：院长驾驶舱
INSERT INTO `sys_menu` VALUES (2000,'院长驾驶舱',0,1,'cockpit',NULL,'',1,0,'M','0','0','','dashboard','admin',NOW(),'admin',NOW(),'可视化大屏目录');

-- 1.1 院长驾驶舱首页
INSERT INTO `sys_menu` VALUES (2001,'驾驶舱首页',2000,1,'cockpitIndex','drm/cockpit/index','',1,0,'C','0','0','drm:cockpit:index','dashboard','admin',NOW(),'admin',NOW(),'院长驾驶舱首页');

-- 1.2 运营趋势分析
INSERT INTO `sys_menu` VALUES (2002,'运营趋势',2000,2,'trend','drm/cockpit/trend','',1,0,'C','0','0','drm:cockpit:trend','chart','admin',NOW(),'admin',NOW(),'运营趋势分析');

-- 1.3 科室运营总览
INSERT INTO `sys_menu` VALUES (2003,'科室总览',2000,3,'deptOverview','drm/cockpit/deptOverview','',1,0,'C','0','0','drm:cockpit:deptOverview','peoples','admin',NOW(),'admin',NOW(),'科室运营总览');

-- 1.4 DRG运营总览
INSERT INTO `sys_menu` VALUES (2004,'DRG总览',2000,4,'drgOverview','drm/cockpit/drgOverview','',1,0,'C','0','0','drm:cockpit:drgOverview','money','admin',NOW(),'admin',NOW(),'DRG运营总览');

-- 1.5 成本概览
INSERT INTO `sys_menu` VALUES (2005,'成本概览',2000,5,'costOverview','drm/cockpit/costOverview','',1,0,'C','0','0','drm:cockpit:costOverview',' expenditure','admin',NOW(),'admin',NOW(),'成本概览');

-- 1.6 预警中心
INSERT INTO `sys_menu` VALUES (2006,'预警中心',2000,6,'warningCenter','drm/cockpit/warningCenter','',1,0,'C','0','0','drm:cockpit:warningCenter','warning','admin',NOW(),'admin',NOW(),'预警中心');

-- 1.7 大屏管理
INSERT INTO `sys_menu` VALUES (2007,'大屏管理',2000,7,'bigScreen','drm/cockpit/bigScreen','',1,0,'C','0','0','drm:cockpit:bigScreen','component','admin',NOW(),'admin',NOW(),'大屏管理');

-- 按钮：大屏管理增删改查
INSERT INTO `sys_menu` VALUES (2008,'大屏查询',2007,1,'','',' ',1,0,'F','0','0','drm:bigScreen:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2009,'大屏新增',2007,2,'','',' ',1,0,'F','0','0','drm:bigScreen:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2010,'大屏修改',2007,3,'','',' ',1,0,'F','0','0','drm:bigScreen:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2011,'大屏删除',2007,4,'','',' ',1,0,'F','0','0','drm:bigScreen:remove','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2012,'大屏导出',2007,5,'','',' ',1,0,'F','0','0','drm:bigScreen:export','#','admin',NOW(),'admin',NOW(),'');

-- 一级目录：运营分析
INSERT INTO `sys_menu` VALUES (2100,'运营分析',0,2,'operation',NULL,'',1,0,'M','0','0','','chart','admin',NOW(),'admin',NOW(),'运营分析目录');

-- 2.1 门诊运营分析
INSERT INTO `sys_menu` VALUES (2101,'门诊分析',2100,1,'outpatient','drm/operation/outpatient','',1,0,'C','0','0','drm:operation:outpatient','stethoscope','admin',NOW(),'admin',NOW(),'门诊运营分析');
INSERT INTO `sys_menu` VALUES (2102,'门诊查询',2101,1,'','','',1,0,'F','0','0','drm:outpatient:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2103,'门诊导出',2101,2,'','','',1,0,'F','0','0','drm:outpatient:export','#','admin',NOW(),'admin',NOW(),'');

-- 2.2 住院运营分析
INSERT INTO `sys_menu` VALUES (2104,'住院分析',2100,2,'inpatient','drm/operation/inpatient','',1,0,'C','0','0','drm:operation:inpatient','bed','admin',NOW(),'admin',NOW(),'住院运营分析');
INSERT INTO `sys_menu` VALUES (2105,'住院查询',2104,1,'','','',1,0,'F','0','0','drm:inpatient:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2106,'住院导出',2104,2,'','','',1,0,'F','0','0','drm:inpatient:export','#','admin',NOW(),'admin',NOW(),'');

-- 2.3 手术运营分析
INSERT INTO `sys_menu` VALUES (2107,'手术分析',2100,3,'surgery','drm/operation/surgery','',1,0,'C','0','0','drm:operation:surgery','first-aid-kit','admin',NOW(),'admin',NOW(),'手术运营分析');
INSERT INTO `sys_menu` VALUES (2108,'手术查询',2107,1,'','','',1,0,'F','0','0','drm:surgery:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2109,'手术导出',2107,2,'','','',1,0,'F','0','0','drm:surgery:export','#','admin',NOW(),'admin',NOW(),'');

-- 2.4 综合运营分析
INSERT INTO `sys_menu` VALUES (2110,'综合分析',2100,4,'comprehensive','drm/operation/comprehensive','',1,0,'C','0','0','drm:operation:comprehensive','analysis','admin',NOW(),'admin',NOW(),'综合运营分析');

-- 2.5 运营报告
INSERT INTO `sys_menu` VALUES (2111,'运营报告',2100,5,'report','drm/operation/report','',1,0,'C','0','0','drm:operation:report','document','admin',NOW(),'admin',NOW(),'运营报告');
INSERT INTO `sys_menu` VALUES (2112,'报告查询',2111,1,'','','',1,0,'F','0','0','drm:report:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2113,'报告新增',2111,2,'','','',1,0,'F','0','0','drm:report:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2114,'报告修改',2111,3,'','','',1,0,'F','0','0','drm:report:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2115,'报告删除',2111,4,'','','',1,0,'F','0','0','drm:report:remove','#','admin',NOW(),'admin',NOW(),'');

-- 2.6 专题分析
INSERT INTO `sys_menu` VALUES (2116,'专题分析',2100,6,'topic','drm/operation/topic','',1,0,'C','0','0','drm:operation:topic','tree-table','admin',NOW(),'admin',NOW(),'专题分析');

-- 一级目录：财务管控
INSERT INTO `sys_menu` VALUES (2200,'财务管控',0,3,'finance',NULL,'',1,0,'M','0','0','','financial','admin',NOW(),'admin',NOW(),'财务管控目录');

-- 3.1 收入管理
INSERT INTO `sys_menu` VALUES (2201,'收入管理',2200,1,'income','drm/finance/income','',1,0,'C','0','0','drm:finance:income','money','admin',NOW(),'admin',NOW(),'收入管理');
INSERT INTO `sys_menu` VALUES (2202,'收入查询',2201,1,'','','',1,0,'F','0','0','drm:income:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2203,'收入新增',2201,2,'','','',1,0,'F','0','0','drm:income:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2204,'收入修改',2201,3,'','','',1,0,'F','0','0','drm:income:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2205,'收入删除',2201,4,'','','',1,0,'F','0','0','drm:income:remove','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2206,'收入导出',2201,5,'','','',1,0,'F','0','0','drm:income:export','#','admin',NOW(),'admin',NOW(),'');

-- 3.2 支出管理
INSERT INTO `sys_menu` VALUES (2207,'支出管理',2200,2,'expense','drm/finance/expense','',1,0,'C','0','0','drm:finance:expense',' expenditure','admin',NOW(),'admin',NOW(),'支出管理');
INSERT INTO `sys_menu` VALUES (2208,'支出查询',2207,1,'','','',1,0,'F','0','0','drm:expense:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2209,'支出新增',2207,2,'','','',1,0,'F','0','0','drm:expense:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2210,'支出修改',2207,3,'','','',1,0,'F','0','0','drm:expense:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2211,'支出删除',2207,4,'','','',1,0,'F','0','0','drm:expense:remove','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2212,'支出导出',2207,5,'','','',1,0,'F','0','0','drm:expense:export','#','admin',NOW(),'admin',NOW(),'');

-- 3.3 收支分析
INSERT INTO `sys_menu` VALUES (2213,'收支分析',2200,3,'balance','drm/finance/balance','',1,0,'C','0','0','drm:finance:balance','trend','admin',NOW(),'admin',NOW(),'收支分析');

-- 3.4 应收账款
INSERT INTO `sys_menu` VALUES (2214,'应收账款',2200,4,'receivable','drm/finance/receivable','',1,0,'C','0','0','drm:finance:receivable','document','admin',NOW(),'admin',NOW(),'应收账款');
INSERT INTO `sys_menu` VALUES (2215,'应收查询',2214,1,'','','',1,0,'F','0','0','drm:receivable:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2216,'应收新增',2214,2,'','','',1,0,'F','0','0','drm:receivable:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2217,'应收修改',2214,3,'','','',1,0,'F','0','0','drm:receivable:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2218,'应收删除',2214,4,'','','',1,0,'F','0','0','drm:receivable:remove','#','admin',NOW(),'admin',NOW(),'');

-- 3.5 财务统计报表
INSERT INTO `sys_menu` VALUES (2219,'财务报表',2200,5,'financeReport','drm/finance/financeReport','',1,0,'C','0','0','drm:finance:report','clipboard','admin',NOW(),'admin',NOW(),'财务统计报表');

-- 一级目录：成本核算
INSERT INTO `sys_menu` VALUES (2300,'成本核算',0,4,'cost',NULL,'',1,0,'M','0','0','','cost','admin',NOW(),'admin',NOW(),'成本核算目录');

-- 4.1 成本数据管理
INSERT INTO `sys_menu` VALUES (2301,'成本数据',2300,1,'costData','drm/cost/costData','',1,0,'C','0','0','drm:cost:data','list','admin',NOW(),'admin',NOW(),'成本数据管理');
INSERT INTO `sys_menu` VALUES (2302,'成本查询',2301,1,'','','',1,0,'F','0','0','drm:cost:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2303,'成本新增',2301,2,'','','',1,0,'F','0','0','drm:cost:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2304,'成本修改',2301,3,'','','',1,0,'F','0','0','drm:cost:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2305,'成本删除',2301,4,'','','',1,0,'F','0','0','drm:cost:remove','#','admin',NOW(),'admin',NOW(),'');

-- 4.2 科室成本核算
INSERT INTO `sys_menu` VALUES (2306,'科室成本',2300,2,'deptCost','drm/cost/deptCost','',1,0,'C','0','0','drm:cost:dept','peoples','admin',NOW(),'admin',NOW(),'科室成本核算');

-- 4.3 项目成本核算
INSERT INTO `sys_menu` VALUES (2307,'项目成本',2300,3,'projectCost','drm/cost/projectCost','',1,0,'C','0','0','drm:cost:project','project','admin',NOW(),'admin',NOW(),'项目成本核算');

-- 4.4 病种成本核算
INSERT INTO `sys_menu` VALUES (2308,'病种成本',2300,4,'caseCost','drm/cost/caseCost','',1,0,'C','0','0','drm:cost:case','drug','admin',NOW(),'admin',NOW(),'病种成本核算');

-- 4.5 成本分析报表
INSERT INTO `sys_menu` VALUES (2309,'成本报表',2300,5,'costReport','drm/cost/costReport','',1,0,'C','0','0','drm:cost:report','chart','admin',NOW(),'admin',NOW(),'成本分析报表');

-- 一级目录：绩效管理
INSERT INTO `sys_menu` VALUES (2400,'绩效管理',0,5,'performance',NULL,'',1,0,'M','0','0','','performance','admin',NOW(),'admin',NOW(),'绩效管理目录');

-- 5.1 绩效方案管理
INSERT INTO `sys_menu` VALUES (2401,'绩效方案',2400,1,'perfPlan','drm/performance/perfPlan','',1,0,'C','0','0','drm:perf:plan','plan','admin',NOW(),'admin',NOW(),'绩效方案管理');
INSERT INTO `sys_menu` VALUES (2402,'方案查询',2401,1,'','','',1,0,'F','0','0','drm:perf:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2403,'方案新增',2401,2,'','','',1,0,'F','0','0','drm:perf:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2404,'方案修改',2401,3,'','','',1,0,'F','0','0','drm:perf:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2405,'方案删除',2401,4,'','','',1,0,'F','0','0','drm:perf:remove','#','admin',NOW(),'admin',NOW(),'');

-- 5.2 RBRVS绩效核算
INSERT INTO `sys_menu` VALUES (2406,'RBRVS核算',2400,2,'rbrvs','drm/performance/rbrvs','',1,0,'C','0','0','drm:perf:rbrvs',' star','admin',NOW(),'admin',NOW(),'RBRVS绩效核算');

-- 5.3 DRG绩效核算
INSERT INTO `sys_menu` VALUES (2407,'DRG核算',2400,3,'drgPerf','drm/performance/drgPerf','',1,0,'C','0','0','drm:perf:drg','money','admin',NOW(),'admin',NOW(),'DRG绩效核算');

-- 5.4 质量绩效核算
INSERT INTO `sys_menu` VALUES (2408,'质量绩效',2400,4,'qualityPerf','drm/performance/qualityPerf','',1,0,'C','0','0','drm:perf:quality','check','admin',NOW(),'admin',NOW(),'质量绩效核算');

-- 5.5 效率绩效核算
INSERT INTO `sys_menu` VALUES (2409,'效率绩效',2400,5,'efficiencyPerf','drm/performance/efficiencyPerf','',1,0,'C','0','0','drm:perf:efficiency','speed','admin',NOW(),'admin',NOW(),'效率绩效核算');

-- 5.6 绩效结果分析
INSERT INTO `sys_menu` VALUES (2410,'绩效结果',2400,6,'perfResult','drm/performance/perfResult','',1,0,'C','0','0','drm:perf:result','result','admin',NOW(),'admin',NOW(),'绩效结果分析');

-- 5.7 绩效报表
INSERT INTO `sys_menu` VALUES (2411,'绩效报表',2400,7,'perfReport','drm/performance/perfReport','',1,0,'C','0','0','drm:perf:report','document','admin',NOW(),'admin',NOW(),'绩效报表');

-- 一级目录：DRG分析
INSERT INTO `sys_menu` VALUES (2500,'DRG分析',0,6,'drg',NULL,'',1,0,'M','0','0','','drg','admin',NOW(),'admin',NOW(),'DRG分析目录');

-- 6.1 DRG数据管理
INSERT INTO `sys_menu` VALUES (2501,'DRG数据',2500,1,'drgData','drm/drg/drgData','',1,0,'C','0','0','drm:drg:data','database','admin',NOW(),'admin',NOW(),'DRG数据管理');
INSERT INTO `sys_menu` VALUES (2502,'DRG查询',2501,1,'','','',1,0,'F','0','0','drm:drg:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2503,'DRG新增',2501,2,'','','',1,0,'F','0','0','drm:drg:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2504,'DRG修改',2501,3,'','','',1,0,'F','0','0','drm:drg:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2505,'DRG删除',2501,4,'','','',1,0,'F','0','0','drm:drg:remove','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2506,'DRG导出',2501,5,'','','',1,0,'F','0','0','drm:drg:export','#','admin',NOW(),'admin',NOW(),'');

-- 6.2 DRG综合分析
INSERT INTO `sys_menu` VALUES (2507,'综合分析',2500,2,'drgAnalysis','drm/drg/drgAnalysis','',1,0,'C','0','0','drm:drg:analysis','analysis','admin',NOW(),'admin',NOW(),'DRG综合分析');

-- 6.3 DRG科室分析
INSERT INTO `sys_menu` VALUES (2508,'科室分析',2500,3,'drgDept','drm/drg/drgDept','',1,0,'C','0','0','drm:drg:dept','peoples','admin',NOW(),'admin',NOW(),'DRG科室分析');

-- 6.4 DRG病组分析
INSERT INTO `sys_menu` VALUES (2509,'病组分析',2500,4,'drgGroup','drm/drg/drgGroup','',1,0,'C','0','0','drm:drg:group','folder','admin',NOW(),'admin',NOW(),'DRG病组分析');

-- 6.5 DRG医师分析
INSERT INTO `sys_menu` VALUES (2510,'医师分析',2500,5,'drgDoctor','drm/drg/drgDoctor','',1,0,'C','0','0','drm:drg:doctor','doctor','admin',NOW(),'admin',NOW(),'DRG医师分析');

-- 6.6 DRG盈亏分析
INSERT INTO `sys_menu` VALUES (2511,'盈亏分析',2500,6,'drgProfit','drm/drg/drgProfit','',1,0,'C','0','0','drm:drg:profit','trend','admin',NOW(),'admin',NOW(),'DRG盈亏分析');

-- 6.7 DRG报表
INSERT INTO `sys_menu` VALUES (2512,'DRG报表',2500,7,'drgReport','drm/drg/drgReport','',1,0,'C','0','0','drm:drg:report','document','admin',NOW(),'admin',NOW(),'DRG报表');

-- 一级目录：预算管理
INSERT INTO `sys_menu` VALUES (2600,'预算管理',0,7,'budget',NULL,'',1,0,'M','0','0','','budget','admin',NOW(),'admin',NOW(),'预算管理目录');

-- 7.1 预算编制
INSERT INTO `sys_menu` VALUES (2601,'预算编制',2600,1,'budgetEdit','drm/budget/budgetEdit','',1,0,'C','0','0','drm:budget:edit','edit','admin',NOW(),'admin',NOW(),'预算编制');
INSERT INTO `sys_menu` VALUES (2602,'编制查询',2601,1,'','','',1,0,'F','0','0','drm:budget:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2603,'编制新增',2601,2,'','','',1,0,'F','0','0','drm:budget:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2604,'编制修改',2601,3,'','','',1,0,'F','0','0','drm:budget:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2605,'编制删除',2601,4,'','','',1,0,'F','0','0','drm:budget:remove','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2606,'编制提交',2601,5,'','','',1,0,'F','0','0','drm:budget:submit','#','admin',NOW(),'admin',NOW(),'');

-- 7.2 预算执行
INSERT INTO `sys_menu` VALUES (2607,'预算执行',2600,2,'budgetExecute','drm/budget/budgetExecute','',1,0,'C','0','0','drm:budget:execute','play','admin',NOW(),'admin',NOW(),'预算执行');

-- 7.3 预算分析
INSERT INTO `sys_menu` VALUES (2608,'预算分析',2600,3,'budgetAnalysis','drm/budget/budgetAnalysis','',1,0,'C','0','0','drm:budget:analysis','analysis','admin',NOW(),'admin',NOW(),'预算分析');

-- 7.4 滚动预算
INSERT INTO `sys_menu` VALUES (2609,'滚动预算',2600,4,'rollingBudget','drm/budget/rollingBudget','',1,0,'C','0','0','drm:budget:rolling','refresh','admin',NOW(),'admin',NOW(),'滚动预算');

-- 一级目录：医疗质量
INSERT INTO `sys_menu` VALUES (2700,'医疗质量',0,8,'quality',NULL,'',1,0,'M','0','0','','quality','admin',NOW(),'admin',NOW(),'医疗质量目录');

-- 8.1 质量指标监控
INSERT INTO `sys_menu` VALUES (2701,'指标监控',2700,1,'qualityMonitor','drm/quality/qualityMonitor','',1,0,'C','0','0','drm:quality:monitor','dashboard','admin',NOW(),'admin',NOW(),'质量指标监控');
INSERT INTO `sys_menu` VALUES (2702,'指标查询',2701,1,'','','',1,0,'F','0','0','drm:indicator:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2703,'指标新增',2701,2,'','','',1,0,'F','0','0','drm:indicator:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2704,'指标修改',2701,3,'','','',1,0,'F','0','0','drm:indicator:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2705,'指标删除',2701,4,'','','',1,0,'F','0','0','drm:indicator:remove','#','admin',NOW(),'admin',NOW(),'');

-- 8.2 病历质控
INSERT INTO `sys_menu` VALUES (2706,'病历质控',2700,2,'medicalRecord','drm/quality/medicalRecord','',1,0,'C','0','0','drm:quality:record','document','admin',NOW(),'admin',NOW(),'病历质控');

-- 8.3 处方点评
INSERT INTO `sys_menu` VALUES (2707,'处方点评',2700,3,'prescription','drm/quality/prescription','',1,0,'C','0','0','drm:quality:prescription','drug','admin',NOW(),'admin',NOW(),'处方点评');
INSERT INTO `sys_menu` VALUES (2708,'点评查询',2707,1,'','','',1,0,'F','0','0','drm:prescription:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2709,'点评新增',2707,2,'','','',1,0,'F','0','0','drm:prescription:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2710,'点评修改',2707,3,'','','',1,0,'F','0','0','drm:prescription:edit','#','admin',NOW(),'admin',NOW(),'');

-- 8.4 不良事件
INSERT INTO `sys_menu` VALUES (2711,'不良事件',2700,4,'adverseEvent','drm/quality/adverseEvent','',1,0,'C','0','0','drm:quality:event','warning','admin',NOW(),'admin',NOW(),'不良事件');
INSERT INTO `sys_menu` VALUES (2712,'事件查询',2711,1,'','','',1,0,'F','0','0','drm:event:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2713,'事件新增',2711,2,'','','',1,0,'F','0','0','drm:event:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2714,'事件修改',2711,3,'','','',1,0,'F','0','0','drm:event:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2715,'事件删除',2711,4,'','','',1,0,'F','0','0','drm:event:remove','#','admin',NOW(),'admin',NOW(),'');

-- 8.5 院感监控
INSERT INTO `sys_menu` VALUES (2716,'院感监控',2700,5,'infection','drm/quality/infection','',1,0,'C','0','0','drm:quality:infection','shield','admin',NOW(),'admin',NOW(),'院感监控');

-- 8.6 质量分析报表
INSERT INTO `sys_menu` VALUES (2717,'质量报表',2700,6,'qualityReport','drm/quality/qualityReport','',1,0,'C','0','0','drm:quality:report','chart','admin',NOW(),'admin',NOW(),'质量分析报表');

-- 一级目录：AI智能助手
INSERT INTO `sys_menu` VALUES (2800,'AI智能助手',0,9,'ai',NULL,'',1,0,'M','0','0','','ai','admin',NOW(),'admin',NOW(),'AI智能助手目录');

-- 9.1 智能问答
INSERT INTO `sys_menu` VALUES (2801,'智能问答',2800,1,'aiChat','drm/ai/aiChat','',1,0,'C','0','0','drm:ai:chat','chat','admin',NOW(),'admin',NOW(),'智能问答');

-- 9.2 智能报告生成
INSERT INTO `sys_menu` VALUES (2802,'报告生成',2800,2,'aiReport','drm/ai/aiReport','',1,0,'C','0','0','drm:ai:report','document','admin',NOW(),'admin',NOW(),'智能报告生成');
INSERT INTO `sys_menu` VALUES (2803,'报告查询',2802,1,'','','',1,0,'F','0','0','drm:aiReport:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2804,'报告生成',2802,2,'','','',1,0,'F','0','0','drm:aiReport:generate','#','admin',NOW(),'admin',NOW(),'');

-- 9.3 智能预警
INSERT INTO `sys_menu` VALUES (2805,'智能预警',2800,3,'aiWarning','drm/ai/aiWarning','',1,0,'C','0','0','drm:ai:warning','alarm','admin',NOW(),'admin',NOW(),'智能预警');

-- 9.4 归因分析
INSERT INTO `sys_menu` VALUES (2806,'归因分析',2800,4,'aiAnalysis','drm/ai/aiAnalysis','',1,0,'C','0','0','drm:ai:analysis','analysis','admin',NOW(),'admin',NOW(),'归因分析');

-- 9.5 智能推荐
INSERT INTO `sys_menu` VALUES (2807,'智能推荐',2800,5,'aiRecommend','drm/ai/aiRecommend','',1,0,'C','0','0','drm:ai:recommend','star','admin',NOW(),'admin',NOW(),'智能推荐');

-- 一级目录：知识库管理
INSERT INTO `sys_menu` VALUES (2900,'知识库管理',0,10,'knowledge',NULL,'',1,0,'M','0','0','','book','admin',NOW(),'admin',NOW(),'知识库管理目录');

-- 10.1 知识分类管理
INSERT INTO `sys_menu` VALUES (2901,'知识分类',2900,1,'knowledgeCategory','drm/knowledge/knowledgeCategory','',1,0,'C','0','0','drm:knowledge:category','tree','admin',NOW(),'admin',NOW(),'知识分类管理');
INSERT INTO `sys_menu` VALUES (2902,'分类查询',2901,1,'','','',1,0,'F','0','0','drm:category:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2903,'分类新增',2901,2,'','','',1,0,'F','0','0','drm:category:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2904,'分类修改',2901,3,'','','',1,0,'F','0','0','drm:category:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2905,'分类删除',2901,4,'','','',1,0,'F','0','0','drm:category:remove','#','admin',NOW(),'admin',NOW(),'');

-- 10.2 知识内容管理
INSERT INTO `sys_menu` VALUES (2906,'知识内容',2900,2,'knowledgeContent','drm/knowledge/knowledgeContent','',1,0,'C','0','0','drm:knowledge:content','document','admin',NOW(),'admin',NOW(),'知识内容管理');
INSERT INTO `sys_menu` VALUES (2907,'内容查询',2906,1,'','','',1,0,'F','0','0','drm:content:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2908,'内容新增',2906,2,'','','',1,0,'F','0','0','drm:content:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2909,'内容修改',2906,3,'','','',1,0,'F','0','0','drm:content:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (2910,'内容删除',2906,4,'','','',1,0,'F','0','0','drm:content:remove','#','admin',NOW(),'admin',NOW(),'');

-- 10.3 知识图谱
INSERT INTO `sys_menu` VALUES (2911,'知识图谱',2900,3,'knowledgeGraph','drm/knowledge/knowledgeGraph','',1,0,'C','0','0','drm:knowledge:graph','connection','admin',NOW(),'admin',NOW(),'知识图谱');

-- 10.4 智能问答配置
INSERT INTO `sys_menu` VALUES (2912,'问答配置',2900,4,'aiqaConfig','drm/knowledge/aiqaConfig','',1,0,'C','0','0','drm:knowledge:qaConfig','setting','admin',NOW(),'admin',NOW(),'智能问答配置');

-- 一级目录：数据源管理
INSERT INTO `sys_menu` VALUES (3000,'数据源管理',0,11,'datasource',NULL,'',1,0,'M','0','0','','database','admin',NOW(),'admin',NOW(),'数据源管理目录');

-- 11.1 数据源配置
INSERT INTO `sys_menu` VALUES (3001,'数据源',3000,1,'dataSource','drm/datasource/dataSource','',1,0,'C','0','0','drm:datasource:source','server','admin',NOW(),'admin',NOW(),'数据源配置');
INSERT INTO `sys_menu` VALUES (3002,'源查询',3001,1,'','','',1,0,'F','0','0','drm:source:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3003,'源新增',3001,2,'','','',1,0,'F','0','0','drm:source:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3004,'源修改',3001,3,'','','',1,0,'F','0','0','drm:source:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3005,'源删除',3001,4,'','','',1,0,'F','0','0','drm:source:remove','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3006,'源连接测试',3001,5,'','','',1,0,'F','0','0','drm:source:test','#','admin',NOW(),'admin',NOW(),'');

-- 11.2 数据映射配置
INSERT INTO `sys_menu` VALUES (3007,'数据映射',3000,2,'dataMapping','drm/datasource/dataMapping','',1,0,'C','0','0','drm:datasource:mapping','connection','admin',NOW(),'admin',NOW(),'数据映射配置');
INSERT INTO `sys_menu` VALUES (3008,'映射查询',3007,1,'','','',1,0,'F','0','0','drm:mapping:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3009,'映射新增',3007,2,'','','',1,0,'F','0','0','drm:mapping:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3010,'映射修改',3007,3,'','','',1,0,'F','0','0','drm:mapping:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3011,'映射删除',3007,4,'','','',1,0,'F','0','0','drm:mapping:remove','#','admin',NOW(),'admin',NOW(),'');

-- 11.3 同步任务管理
INSERT INTO `sys_menu` VALUES (3012,'同步任务',3000,3,'syncTask','drm/datasource/syncTask','',1,0,'C','0','0','drm:datasource:sync','refresh','admin',NOW(),'admin',NOW(),'同步任务管理');
INSERT INTO `sys_menu` VALUES (3013,'任务查询',3012,1,'','','',1,0,'F','0','0','drm:sync:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3014,'任务新增',3012,2,'','','',1,0,'F','0','0','drm:sync:add','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3015,'任务修改',3012,3,'','','',1,0,'F','0','0','drm:sync:edit','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3016,'任务删除',3012,4,'','','',1,0,'F','0','0','drm:sync:remove','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3017,'任务执行',3012,5,'','','',1,0,'F','0','0','drm:sync:execute','#','admin',NOW(),'admin',NOW(),'');

-- 11.4 数据质量管理
INSERT INTO `sys_menu` VALUES (3018,'数据质量',3000,4,'dataQuality','drm/datasource/dataQuality','',1,0,'C','0','0','drm:datasource:quality','check','admin',NOW(),'admin',NOW(),'数据质量管理');
INSERT INTO `sys_menu` VALUES (3019,'质量查询',3018,1,'','','',1,0,'F','0','0','drm:quality:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3020,'质量检查',3018,2,'','','',1,0,'F','0','0','drm:quality:check','#','admin',NOW(),'admin',NOW(),'');

-- 11.5 数据血缘
INSERT INTO `sys_menu` VALUES (3021,'数据血缘',3000,5,'dataLineage','drm/datasource/dataLineage','',1,0,'C','0','0','drm:datasource:lineage','flow','admin',NOW(),'admin',NOW(),'数据血缘');

-- 一级目录：移动端
INSERT INTO `sys_menu` VALUES (3100,'移动端',0,12,'mobile',NULL,'',1,0,'M','0','0','','mobile','admin',NOW(),'admin',NOW(),'移动端目录');

-- 12.1 移动驾驶舱
INSERT INTO `sys_menu` VALUES (3101,'移动驾驶舱',3100,1,'mobileCockpit','drm/mobile/mobileCockpit','',1,0,'C','0','0','drm:mobile:cockpit','dashboard','admin',NOW(),'admin',NOW(),'移动驾驶舱');

-- 12.2 移动报表
INSERT INTO `sys_menu` VALUES (3102,'移动报表',3100,2,'mobileReport','drm/mobile/mobileReport','',1,0,'C','0','0','drm:mobile:report','document','admin',NOW(),'admin',NOW(),'移动报表');

-- 12.3 移动预警
INSERT INTO `sys_menu` VALUES (3103,'移动预警',3100,3,'mobileWarning','drm/mobile/mobileWarning','',1,0,'C','0','0','drm:mobile:warning','alarm','admin',NOW(),'admin',NOW(),'移动预警');

-- 12.4 移动AI助手
INSERT INTO `sys_menu` VALUES (3104,'移动AI',3100,4,'mobileAi','drm/mobile/mobileAi','',1,0,'C','0','0','drm:mobile:ai','ai','admin',NOW(),'admin',NOW(),'移动AI助手');

-- 12.5 消息中心
INSERT INTO `sys_menu` VALUES (3105,'消息中心',3100,5,'mobileMessage','drm/mobile/mobileMessage','',1,0,'C','0','0','drm:mobile:message','message','admin',NOW(),'admin',NOW(),'消息中心');
INSERT INTO `sys_menu` VALUES (3106,'消息查询',3105,1,'','','',1,0,'F','0','0','drm:message:query','#','admin',NOW(),'admin',NOW(),'');
INSERT INTO `sys_menu` VALUES (3107,'消息删除',3105,2,'','','',1,0,'F','0','0','drm:message:remove','#','admin',NOW(),'admin',NOW(),'');
