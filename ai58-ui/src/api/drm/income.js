import request from '@/utils/request'

export const IncomeApi = {
  list: (params) => request({ url: '/drm/income/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/income/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/income', method: 'post', data }),
  update: (data) => request({ url: '/drm/income', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/income/${ids}`, method: 'delete' }),
}
