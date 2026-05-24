import request from '@/utils/request'

export const SurgeryApi = {
  list: (params) => request({ url: '/drm/surgeryStats/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/surgeryStats/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/surgeryStats', method: 'post', data }),
  update: (data) => request({ url: '/drm/surgeryStats', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/surgeryStats/${ids}`, method: 'delete' }),
  export: (params) => request({ url: '/drm/surgeryStats/export', method: 'post', params }),
}
