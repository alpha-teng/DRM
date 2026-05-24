import request from '@/utils/request'

export const DrgDoctorApi = {
  list: (params) => request({ url: '/drm/drgDoctor/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drgDoctor/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drgDoctor', method: 'post', data }),
  update: (data) => request({ url: '/drm/drgDoctor', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drgDoctor/${ids}`, method: 'delete' }),
}
