import request from '@/utils/request'

export const CaseCostApi = {
  list: (params) => request({ url: '/drm/costData/caseCost/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/costData/caseCost/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/costData/caseCost', method: 'post', data }),
  update: (data) => request({ url: '/drm/costData/caseCost', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/costData/caseCost/${ids}`, method: 'delete' }),
}
