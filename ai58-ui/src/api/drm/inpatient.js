import request from '@/utils/request'

export const InpatientApi = {
  list: (params) => request({ url: '/drm/inpatientStats/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/inpatientStats/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/inpatientStats', method: 'post', data }),
  update: (data) => request({ url: '/drm/inpatientStats', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/inpatientStats/${ids}`, method: 'delete' }),
  export: (params) => request({ url: '/drm/inpatientStats/export', method: 'post', params }),
}
