import request from '@/utils/request'

export const OutpatientApi = {
  list: (params) => request({ url: '/drm/outpatientStats/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/outpatientStats/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/outpatientStats', method: 'post', data }),
  update: (data) => request({ url: '/drm/outpatientStats', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/outpatientStats/${ids}`, method: 'delete' }),
  export: (params) => request({ url: '/drm/outpatientStats/export', method: 'get', params }),
}
