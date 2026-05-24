import request from '@/utils/request'

export const AiqaConfigApi = {
  list: (params) => request({ url: '/drm/knowledge/aiqaConfig/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/knowledge/aiqaConfig/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/knowledge/aiqaConfig', method: 'post', data }),
  update: (data) => request({ url: '/drm/knowledge/aiqaConfig', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/knowledge/aiqaConfig/${ids}`, method: 'delete' }),
}
