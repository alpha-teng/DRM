import request from '@/utils/request'

export const InpatientApi = {
  list: (params) => request({ url: '/drm/operation/inpatient/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/operation/inpatient/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/operation/inpatient', method: 'post', data }),
  update: (data) => request({ url: '/drm/operation/inpatient', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/operation/inpatient/${ids}`, method: 'delete' }),
}
