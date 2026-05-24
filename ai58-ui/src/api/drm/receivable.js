import request from '@/utils/request'

export const ReceivableApi = {
  list: (params) => request({ url: '/drm/finance/receivable/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/finance/receivable/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/finance/receivable', method: 'post', data }),
  update: (data) => request({ url: '/drm/finance/receivable', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/finance/receivable/${ids}`, method: 'delete' }),
}
