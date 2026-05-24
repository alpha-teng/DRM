import request from '@/utils/request'

export const OutpatientApi = {
  list: (params) => request({ url: '/drm/operation/outpatient/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/operation/outpatient/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/operation/outpatient', method: 'post', data }),
  update: (data) => request({ url: '/drm/operation/outpatient', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/operation/outpatient/${ids}`, method: 'delete' }),
}
