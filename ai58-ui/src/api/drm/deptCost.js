import request from '@/utils/request'

export const DeptCostApi = {
  list: (params) => request({ url: '/drm/cost/deptCost/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/cost/deptCost/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cost/deptCost', method: 'post', data }),
  update: (data) => request({ url: '/drm/cost/deptCost', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/cost/deptCost/${ids}`, method: 'delete' }),
}
