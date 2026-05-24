import request from '@/utils/request'

export const PerfResultApi = {
  list: (params) => request({ url: '/drm/performance/perfResult/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/performance/perfResult/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/performance/perfResult', method: 'post', data }),
  update: (data) => request({ url: '/drm/performance/perfResult', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/performance/perfResult/${ids}`, method: 'delete' }),
}
