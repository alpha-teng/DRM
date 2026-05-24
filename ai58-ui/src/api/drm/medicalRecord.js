import request from '@/utils/request'

export const MedicalRecordApi = {
  list: (params) => request({ url: '/drm/medicalRecord/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/medicalRecord/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/medicalRecord', method: 'post', data }),
  update: (data) => request({ url: '/drm/medicalRecord', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/medicalRecord/${ids}`, method: 'delete' }),
}
