import request from '@/utils/request'

export const AdverseEventApi = {
  list: (params) => request({ url: '/drm/quality/adverseEvent/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/quality/adverseEvent/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/quality/adverseEvent', method: 'post', data }),
  update: (data) => request({ url: '/drm/quality/adverseEvent', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/quality/adverseEvent/${ids}`, method: 'delete' }),
}
