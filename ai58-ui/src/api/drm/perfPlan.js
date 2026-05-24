import request from '@/utils/request'

export const PerfPlanApi = {
  list: (params) => request({ url: '/drm/perfPlan/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/perfPlan/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/perfPlan', method: 'post', data }),
  update: (data) => request({ url: '/drm/perfPlan', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/perfPlan/${ids}`, method: 'delete' }),
}
