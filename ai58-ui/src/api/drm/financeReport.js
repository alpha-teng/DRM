import request from '@/utils/request'

export const FinanceReportApi = {
  list: (params) => request({ url: '/drm/finance/financeReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/finance/financeReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/finance/financeReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/finance/financeReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/finance/financeReport/${ids}`, method: 'delete' }),
}
