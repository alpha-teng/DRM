import request from '@/utils/request'

export const ExpenseApi = {
  list: (params) => request({ url: '/drm/finance/expense/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/finance/expense/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/finance/expense', method: 'post', data }),
  update: (data) => request({ url: '/drm/finance/expense', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/finance/expense/${ids}`, method: 'delete' }),
}
