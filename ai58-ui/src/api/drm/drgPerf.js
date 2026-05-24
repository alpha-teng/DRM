import request from '@/utils/request'

export const DrgPerfApi = {
  list: (params) => request({ url: '/drm/drgPerf/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drgPerf/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drgPerf', method: 'post', data }),
  update: (data) => request({ url: '/drm/drgPerf', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drgPerf/${ids}`, method: 'delete' }),
}
