import request from '@/utils/request'

export const ExpenseApi = {
  list: (params) => request({ url: '/drm/expense/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/expense/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/expense', method: 'post', data }),
  update: (data) => request({ url: '/drm/expense', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/expense/${ids}`, method: 'delete' }),
}
