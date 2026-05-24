import request from '@/utils/request'

export const IncomeApi = {
  list: (params) => request({ url: '/drm/finance/income/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/finance/income/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/finance/income', method: 'post', data }),
  update: (data) => request({ url: '/drm/finance/income', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/finance/income/${ids}`, method: 'delete' }),
}
