import request from '@/utils/request'

export const ProjectCostApi = {
  list: (params) => request({ url: '/drm/costData/projectCost/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/costData/projectCost/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/costData/projectCost', method: 'post', data }),
  update: (data) => request({ url: '/drm/costData/projectCost', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/costData/projectCost/${ids}`, method: 'delete' }),
}
