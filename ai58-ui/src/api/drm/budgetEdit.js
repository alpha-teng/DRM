import request from '@/utils/request'

export const BudgetEditApi = {
  list: (params) => request({ url: '/drm/budgetEdit/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/budgetEdit/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/budgetEdit', method: 'post', data }),
  update: (data) => request({ url: '/drm/budgetEdit', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/budgetEdit/${ids}`, method: 'delete' }),
}
