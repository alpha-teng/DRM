import request from '@/utils/request'

export const DrgPerfApi = {
  list: (params) => request({ url: '/drm/performance/drgPerf/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/performance/drgPerf/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/performance/drgPerf', method: 'post', data }),
  update: (data) => request({ url: '/drm/performance/drgPerf', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/performance/drgPerf/${ids}`, method: 'delete' }),
}
