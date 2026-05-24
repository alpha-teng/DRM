import request from '@/utils/request'

export const PerfResultApi = {
  list: (params) => request({ url: '/drm/perfResult/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/perfResult/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/perfResult', method: 'post', data }),
  update: (data) => request({ url: '/drm/perfResult', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/perfResult/${ids}`, method: 'delete' }),
}
