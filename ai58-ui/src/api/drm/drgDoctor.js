import request from '@/utils/request'

export const DrgDoctorApi = {
  list: (params) => request({ url: '/drm/drg/drgDoctor/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drg/drgDoctor/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drg/drgDoctor', method: 'post', data }),
  update: (data) => request({ url: '/drm/drg/drgDoctor', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drg/drgDoctor/${ids}`, method: 'delete' }),
}
