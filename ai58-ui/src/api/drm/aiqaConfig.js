import request from '@/utils/request'

export const AiqaConfigApi = {
  list: (params) => request({ url: '/drm/aiConfig/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/aiConfig/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/aiConfig', method: 'post', data }),
  update: (data) => request({ url: '/drm/aiConfig', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/aiConfig/${ids}`, method: 'delete' }),
}
