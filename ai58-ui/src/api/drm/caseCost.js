import request from '@/utils/request'

export const CaseCostApi = {
  list: (params) => request({ url: '/drm/cost/caseCost/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/cost/caseCost/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cost/caseCost', method: 'post', data }),
  update: (data) => request({ url: '/drm/cost/caseCost', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/cost/caseCost/${ids}`, method: 'delete' }),
}
