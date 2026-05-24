import request from '@/utils/request'

export const BudgetEditApi = {
  list: (params) => request({ url: '/drm/budget/budgetEdit/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/budget/budgetEdit/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/budget/budgetEdit', method: 'post', data }),
  update: (data) => request({ url: '/drm/budget/budgetEdit', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/budget/budgetEdit/${ids}`, method: 'delete' }),
}
