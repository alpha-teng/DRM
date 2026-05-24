import request from '@/utils/request'

export const CostReportApi = {
  list: (params) => request({ url: '/drm/cost/costReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/cost/costReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cost/costReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/cost/costReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/cost/costReport/${ids}`, method: 'delete' }),
}
