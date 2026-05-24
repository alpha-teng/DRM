import request from '@/utils/request'

export const PrescriptionApi = {
  list: (params) => request({ url: '/drm/quality/prescription/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/quality/prescription/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/quality/prescription', method: 'post', data }),
  update: (data) => request({ url: '/drm/quality/prescription', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/quality/prescription/${ids}`, method: 'delete' }),
}
