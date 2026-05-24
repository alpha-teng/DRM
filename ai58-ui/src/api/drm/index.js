import request from '@/utils/request'

// ============ 院长驾驶舱 ============
// 注意：部分功能可能后端还未实现，路径待确认
export const cockpit = {
  getStatistics: (params) => request({ url: '/drm/bigScreen/statistics', method: 'get', params }),
  getWarningList: (params) => request({ url: '/drm/earlyWarning/list', method: 'get', params }),
  getTrendData: (params) => request({ url: '/drm/operationReport/trend', method: 'get', params }),
  getDeptOverview: (params) => request({ url: '/drm/inpatientStats/dept/overview', method: 'get', params }),
  getDrgOverview: (params) => request({ url: '/drm/drgAnalysis/overview', method: 'get', params }),
  getCostOverview: (params) => request({ url: '/drm/costData/overview', method: 'get', params }),
  listBigScreen: (params) => request({ url: '/drm/bigScreen/list', method: 'get', params }),
  getBigScreen: (id) => request({ url: `/drm/bigScreen/${id}`, method: 'get' }),
  addBigScreen: (data) => request({ url: '/drm/bigScreen', method: 'post', data }),
  updateBigScreen: (data) => request({ url: '/drm/bigScreen', method: 'put', data }),
  delBigScreen: (ids) => request({ url: `/drm/bigScreen/${ids}`, method: 'delete' }),
}

// ============ 运营分析 ============
export const operation = {
  listOutpatient: (params) => request({ url: '/drm/outpatientStats/list', method: 'get', params }),
  listInpatient: (params) => request({ url: '/drm/inpatientStats/list', method: 'get', params }),
  listSurgery: (params) => request({ url: '/drm/surgeryStats/list', method: 'get', params }),
  getComprehensive: (params) => request({ url: '/drm/operationReport/comprehensive', method: 'get', params }),
  listReport: (params) => request({ url: '/drm/operationReport/list', method: 'get', params }),
  listTopic: (params) => request({ url: '/drm/operationReport/topic/list', method: 'get', params }),
}

// ============ 财务管控 ============
export const finance = {
  listIncome: (params) => request({ url: '/drm/income/list', method: 'get', params }),
  listExpense: (params) => request({ url: '/drm/expense/list', method: 'get', params }),
  getBalance: (params) => request({ url: '/drm/income/balance', method: 'get', params }),
  listReceivable: (params) => request({ url: '/drm/receivable/list', method: 'get', params }),
  listFinanceReport: (params) => request({ url: '/drm/operationReport/finance', method: 'get', params }),
}

// ============ 成本核算 ============
export const cost = {
  listCostData: (params) => request({ url: '/drm/costData/list', method: 'get', params }),
  listDeptCost: (params) => request({ url: '/drm/costAllocation/dept/list', method: 'get', params }),
  listProjectCost: (params) => request({ url: '/drm/costAllocation/project/list', method: 'get', params }),
  listCaseCost: (params) => request({ url: '/drm/costAllocation/case/list', method: 'get', params }),
  listCostReport: (params) => request({ url: '/drm/costData/report/list', method: 'get', params }),
}

// ============ 绩效管理 ============
export const performance = {
  listPerfPlan: (params) => request({ url: '/drm/perfPlan/list', method: 'get', params }),
  listRbrvs: (params) => request({ url: '/drm/perfResult/rbrvs/list', method: 'get', params }),
  listDrgPerf: (params) => request({ url: '/drm/perfResult/drg/list', method: 'get', params }),
  listQualityPerf: (params) => request({ url: '/drm/qualityIndicator/list', method: 'get', params }),
  listEfficiencyPerf: (params) => request({ url: '/drm/perfResult/efficiency/list', method: 'get', params }),
  listPerfResult: (params) => request({ url: '/drm/perfResult/list', method: 'get', params }),
  listPerfReport: (params) => request({ url: '/drm/perfResult/report/list', method: 'get', params }),
}

// ============ DRG分析 ============
export const drg = {
  listDrgData: (params) => request({ url: '/drm/drgData/list', method: 'get', params }),
  getDrgAnalysis: (params) => request({ url: '/drm/drgAnalysis', method: 'get', params }),
  getDrgDept: (params) => request({ url: '/drm/drgAnalysis/dept', method: 'get', params }),
  getDrgGroup: (params) => request({ url: '/drm/drgAnalysis/group', method: 'get', params }),
  listDrgDoctor: (params) => request({ url: '/drm/drgData/doctor/list', method: 'get', params }),
  getDrgProfit: (params) => request({ url: '/drm/drgAnalysis/profit', method: 'get', params }),
  listDrgReport: (params) => request({ url: '/drm/drgAnalysis/report', method: 'get', params }),
}

// ============ 预算管理 ============
export const budget = {
  listBudgetEdit: (params) => request({ url: '/drm/perfPlan/budget/list', method: 'get', params }),
  listBudgetExecute: (params) => request({ url: '/drm/perfPlan/execute/list', method: 'get', params }),
  getBudgetAnalysis: (params) => request({ url: '/drm/perfPlan/analysis', method: 'get', params }),
  listRollingBudget: (params) => request({ url: '/drm/perfPlan/rolling/list', method: 'get', params }),
}

// ============ 医疗质量 ============
export const quality = {
  getQualityMonitor: (params) => request({ url: '/drm/qualityIndicator/monitor', method: 'get', params }),
  listMedicalRecord: (params) => request({ url: '/drm/qualityIndicator/medicalrecord/list', method: 'get', params }),
  listPrescription: (params) => request({ url: '/drm/prescriptionReview/list', method: 'get', params }),
  listAdverseEvent: (params) => request({ url: '/drm/qualityEvent/list', method: 'get', params }),
  getInfection: (params) => request({ url: '/drm/qualityIndicator/infection', method: 'get', params }),
  listQualityReport: (params) => request({ url: '/drm/qualityIndicator/report/list', method: 'get', params }),
}

// ============ AI智能助手 ============
export const ai = {
  chat: (data) => request({ url: '/drm/aiChatLog', method: 'post', data }),
  generateReport: (params) => request({ url: '/drm/aiConfig/report', method: 'get', params }),
  listAiWarning: (params) => request({ url: '/drm/earlyWarning/list', method: 'get', params }),
  getAiAnalysis: (params) => request({ url: '/drm/aiConfig/analysis', method: 'get', params }),
  listAiRecommend: (params) => request({ url: '/drm/aiConfig/recommend', method: 'get', params }),
}

// ============ 知识库 ============
export const knowledge = {
  listCategory: (params) => request({ url: '/drm/knowledgeCategory/list', method: 'get', params }),
  listContent: (params) => request({ url: '/drm/knowledgeContent/list', method: 'get', params }),
  getKnowledgeGraph: (params) => request({ url: '/drm/knowledgeContent/graph', method: 'get', params }),
  listAiqaConfig: (params) => request({ url: '/drm/aiConfig/list', method: 'get', params }),
}

// ============ 数据源 ============
export const datasource = {
  listDataSource: (params) => request({ url: '/drm/dataSource/list', method: 'get', params }),
  listDataMapping: (params) => request({ url: '/drm/dataMapping/list', method: 'get', params }),
  listSyncTask: (params) => request({ url: '/drm/dataMapping/sync/list', method: 'get', params }),
  listDataQuality: (params) => request({ url: '/drm/dataQuality/list', method: 'get', params }),
  getDataLineage: (params) => request({ url: '/drm/dataMapping/lineage', method: 'get', params }),
}

// ============ 移动端 ============
export const mobile = {
  getMobileCockpit: (params) => request({ url: '/drm/bigScreen/mobile', method: 'get', params }),
  listMobileReport: (params) => request({ url: '/drm/operationReport/mobile', method: 'get', params }),
  listMobileWarning: (params) => request({ url: '/drm/earlyWarning/mobile', method: 'get', params }),
  chatMobile: (data) => request({ url: '/drm/aiChatLog/mobile', method: 'post', data }),
  listMobileMessage: (params) => request({ url: '/drm/aiConfig/message', method: 'get', params }),
}
