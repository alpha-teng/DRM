import request from '@/utils/request'

export const BudgetExecuteApi = {
  list: (params) => request({ url: '/drm/budget/budgetExecute/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/budget/budgetExecute/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/budget/budgetExecute', method: 'post', data }),
  update: (data) => request({ url: '/drm/budget/budgetExecute', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/budget/budgetExecute/${ids}`, method: 'delete' }),
}
