import request from '@/utils/request'

export const ReceivableApi = {
  list: (params) => request({ url: '/drm/receivable/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/receivable/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/receivable', method: 'post', data }),
  update: (data) => request({ url: '/drm/receivable', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/receivable/${ids}`, method: 'delete' }),
}
