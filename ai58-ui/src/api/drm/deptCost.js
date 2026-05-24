import request from '@/utils/request'

export const DeptCostApi = {
  list: (params) => request({ url: '/drm/costData/deptCost/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/costData/deptCost/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/costData/deptCost', method: 'post', data }),
  update: (data) => request({ url: '/drm/costData/deptCost', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/costData/deptCost/${ids}`, method: 'delete' }),
}
