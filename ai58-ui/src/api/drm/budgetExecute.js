import request from '@/utils/request'

export const BudgetExecuteApi = {
  list: (params) => request({ url: '/drm/budgetExecute/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/budgetExecute/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/budgetExecute', method: 'post', data }),
  update: (data) => request({ url: '/drm/budgetExecute', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/budgetExecute/${ids}`, method: 'delete' }),
}
