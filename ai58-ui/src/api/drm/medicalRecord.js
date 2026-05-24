import request from '@/utils/request'

export const MedicalRecordApi = {
  list: (params) => request({ url: '/drm/quality/medicalRecord/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/quality/medicalRecord/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/quality/medicalRecord', method: 'post', data }),
  update: (data) => request({ url: '/drm/quality/medicalRecord', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/quality/medicalRecord/${ids}`, method: 'delete' }),
}
