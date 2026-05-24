import request from '@/utils/request'

export const ProjectCostApi = {
  list: (params) => request({ url: '/drm/cost/projectCost/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/cost/projectCost/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cost/projectCost', method: 'post', data }),
  update: (data) => request({ url: '/drm/cost/projectCost', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/cost/projectCost/${ids}`, method: 'delete' }),
}
