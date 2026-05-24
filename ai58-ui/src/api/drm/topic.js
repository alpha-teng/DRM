import request from '@/utils/request'

export const TopicApi = {
  list: (params) => request({ url: '/drm/operation/topic/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/operation/topic/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/operation/topic', method: 'post', data }),
  update: (data) => request({ url: '/drm/operation/topic', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/operation/topic/${ids}`, method: 'delete' }),
  export: (params) => request({ url: '/drm/operation/topic/export', method: 'post', params }),
}
