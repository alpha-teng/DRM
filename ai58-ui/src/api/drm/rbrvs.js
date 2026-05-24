import request from '@/utils/request'

export const RbrvsApi = {
  list: (params) => request({ url: '/drm/performance/rbrvs/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/performance/rbrvs/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/performance/rbrvs', method: 'post', data }),
  update: (data) => request({ url: '/drm/performance/rbrvs', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/performance/rbrvs/${ids}`, method: 'delete' }),
}
