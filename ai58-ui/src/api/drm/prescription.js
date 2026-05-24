import request from '@/utils/request'

export const PrescriptionApi = {
  list: (params) => request({ url: '/drm/prescriptionReview/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/prescriptionReview/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/quality/prescription', method: 'post', data }),
  update: (data) => request({ url: '/drm/quality/prescription', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/prescriptionReview/${ids}`, method: 'delete' }),
}
