import request from '@/utils/request'

export const AdverseEventApi = {
  list: (params) => request({ url: '/drm/qualityEvent/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/qualityEvent/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/qualityEvent', method: 'post', data }),
  update: (data) => request({ url: '/drm/qualityEvent', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/qualityEvent/${ids}`, method: 'delete' }),
}
