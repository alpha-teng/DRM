import request from '@/utils/request'

// ============ 院长驾驶舱 ============
export const cockpit = {
  getStatistics: (params) => request({ url: '/drm/cockpit/statistics', method: 'get', params }),
  getWarningList: (params) => request({ url: '/drm/cockpit/warning/list', method: 'get', params }),
  getTrendData: (params) => request({ url: '/drm/cockpit/trend', method: 'get', params }),
  getDeptOverview: (params) => request({ url: '/drm/cockpit/dept/overview', method: 'get', params }),
  getDrgOverview: (params) => request({ url: '/drm/cockpit/drg/overview', method: 'get', params }),
  getCostOverview: (params) => request({ url: '/drm/cockpit/cost/overview', method: 'get', params }),
  listBigScreen: (params) => request({ url: '/drm/cockpit/bigscreen/list', method: 'get', params }),
  getBigScreen: (id) => request({ url: `/drm/cockpit/bigscreen/${id}`, method: 'get' }),
  addBigScreen: (data) => request({ url: '/drm/cockpit/bigscreen', method: 'post', data }),
  updateBigScreen: (data) => request({ url: '/drm/cockpit/bigscreen', method: 'put', data }),
  delBigScreen: (ids) => request({ url: `/drm/cockpit/bigscreen/${ids}`, method: 'delete' }),
}

// ============ 运营分析 ============
export const operation = {
  listOutpatient: (params) => request({ url: '/drm/operation/outpatient/list', method: 'get', params }),
  listInpatient: (params) => request({ url: '/drm/operation/inpatient/list', method: 'get', params }),
  listSurgery: (params) => request({ url: '/drm/operation/surgery/list', method: 'get', params }),
  getComprehensive: (params) => request({ url: '/drm/operation/comprehensive', method: 'get', params }),
  listReport: (params) => request({ url: '/drm/operation/report/list', method: 'get', params }),
  listTopic: (params) => request({ url: '/drm/operation/topic/list', method: 'get', params }),
}

// ============ 财务管控 ============
export const finance = {
  listIncome: (params) => request({ url: '/drm/finance/income/list', method: 'get', params }),
  listExpense: (params) => request({ url: '/drm/finance/expense/list', method: 'get', params }),
  getBalance: (params) => request({ url: '/drm/finance/balance', method: 'get', params }),
  listReceivable: (params) => request({ url: '/drm/finance/receivable/list', method: 'get', params }),
  listFinanceReport: (params) => request({ url: '/drm/finance/report/list', method: 'get', params }),
}

// ============ 成本核算 ============
export const cost = {
  listCostData: (params) => request({ url: '/drm/cost/data/list', method: 'get', params }),
  listDeptCost: (params) => request({ url: '/drm/cost/dept/list', method: 'get', params }),
  listProjectCost: (params) => request({ url: '/drm/cost/project/list', method: 'get', params }),
  listCaseCost: (params) => request({ url: '/drm/cost/case/list', method: 'get', params }),
  listCostReport: (params) => request({ url: '/drm/cost/report/list', method: 'get', params }),
}

// ============ 绩效管理 ============
export const performance = {
  listPerfPlan: (params) => request({ url: '/drm/perf/plan/list', method: 'get', params }),
  listRbrvs: (params) => request({ url: '/drm/perf/rbrvs/list', method: 'get', params }),
  listDrgPerf: (params) => request({ url: '/drm/perf/drg/list', method: 'get', params }),
  listQualityPerf: (params) => request({ url: '/drm/perf/quality/list', method: 'get', params }),
  listEfficiencyPerf: (params) => request({ url: '/drm/perf/efficiency/list', method: 'get', params }),
  listPerfResult: (params) => request({ url: '/drm/perf/result/list', method: 'get', params }),
  listPerfReport: (params) => request({ url: '/drm/perf/report/list', method: 'get', params }),
}

// ============ DRG分析 ============
export const drg = {
  listDrgData: (params) => request({ url: '/drm/drg/data/list', method: 'get', params }),
  getDrgAnalysis: (params) => request({ url: '/drm/drg/analysis', method: 'get', params }),
  getDrgDept: (params) => request({ url: '/drm/drg/dept', method: 'get', params }),
  getDrgGroup: (params) => request({ url: '/drm/drg/group', method: 'get', params }),
  listDrgDoctor: (params) => request({ url: '/drm/drg/doctor/list', method: 'get', params }),
  getDrgProfit: (params) => request({ url: '/drm/drg/profit', method: 'get', params }),
  listDrgReport: (params) => request({ url: '/drm/drg/report/list', method: 'get', params }),
}

// ============ 预算管理 ============
export const budget = {
  listBudgetEdit: (params) => request({ url: '/drm/budget/edit/list', method: 'get', params }),
  listBudgetExecute: (params) => request({ url: '/drm/budget/execute/list', method: 'get', params }),
  getBudgetAnalysis: (params) => request({ url: '/drm/budget/analysis', method: 'get', params }),
  listRollingBudget: (params) => request({ url: '/drm/budget/rolling/list', method: 'get', params }),
}

// ============ 医疗质量 ============
export const quality = {
  getQualityMonitor: (params) => request({ url: '/drm/quality/monitor', method: 'get', params }),
  listMedicalRecord: (params) => request({ url: '/drm/quality/medicalrecord/list', method: 'get', params }),
  listPrescription: (params) => request({ url: '/drm/quality/prescription/list', method: 'get', params }),
  listAdverseEvent: (params) => request({ url: '/drm/quality/adverseevent/list', method: 'get', params }),
  getInfection: (params) => request({ url: '/drm/quality/infection', method: 'get', params }),
  listQualityReport: (params) => request({ url: '/drm/quality/report/list', method: 'get', params }),
}

// ============ AI智能助手 ============
export const ai = {
  chat: (data) => request({ url: '/drm/ai/chat', method: 'post', data }),
  generateReport: (data) => request({ url: '/drm/ai/report/generate', method: 'post', data }),
  listAiWarning: (params) => request({ url: '/drm/ai/warning/list', method: 'get', params }),
  getAiAnalysis: (params) => request({ url: '/drm/ai/analysis', method: 'get', params }),
  listAiRecommend: (params) => request({ url: '/drm/ai/recommend/list', method: 'get', params }),
}

// ============ 知识库 ============
export const knowledge = {
  listCategory: (params) => request({ url: '/drm/knowledge/category/list', method: 'get', params }),
  listContent: (params) => request({ url: '/drm/knowledge/content/list', method: 'get', params }),
  getKnowledgeGraph: (params) => request({ url: '/drm/knowledge/graph', method: 'get', params }),
  listAiqaConfig: (params) => request({ url: '/drm/knowledge/aiqa/list', method: 'get', params }),
}

// ============ 数据源 ============
export const datasource = {
  listDataSource: (params) => request({ url: '/drm/datasource/list', method: 'get', params }),
  listDataMapping: (params) => request({ url: '/drm/datasource/mapping/list', method: 'get', params }),
  listSyncTask: (params) => request({ url: '/drm/datasource/sync/list', method: 'get', params }),
  listDataQuality: (params) => request({ url: '/drm/datasource/quality/list', method: 'get', params }),
  getDataLineage: (params) => request({ url: '/drm/datasource/lineage', method: 'get', params }),
}

// ============ 移动端 ============
export const mobile = {
  getMobileCockpit: (params) => request({ url: '/drm/mobile/cockpit', method: 'get', params }),
  listMobileReport: (params) => request({ url: '/drm/mobile/report/list', method: 'get', params }),
  listMobileWarning: (params) => request({ url: '/drm/mobile/warning/list', method: 'get', params }),
  chatMobile: (data) => request({ url: '/drm/mobile/ai/chat', method: 'post', data }),
  listMobileMessage: (params) => request({ url: '/drm/mobile/message/list', method: 'get', params }),
}
