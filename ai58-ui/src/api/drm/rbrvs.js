import request from '@/utils/request'

export const RbrvsApi = {
  list: (params) => request({ url: '/drm/rbrvs/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/rbrvs/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/rbrvs', method: 'post', data }),
  update: (data) => request({ url: '/drm/rbrvs', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/rbrvs/${ids}`, method: 'delete' }),
}
