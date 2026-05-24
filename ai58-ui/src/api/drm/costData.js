import request from '@/utils/request'

export const CostDataApi = {
  list: (params) => request({ url: '/drm/cost/costData/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/cost/costData/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cost/costData', method: 'post', data }),
  update: (data) => request({ url: '/drm/cost/costData', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/cost/costData/${ids}`, method: 'delete' }),
}
