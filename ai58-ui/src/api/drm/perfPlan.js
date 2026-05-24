import request from '@/utils/request'

export const PerfPlanApi = {
  list: (params) => request({ url: '/drm/performance/perfPlan/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/performance/perfPlan/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/performance/perfPlan', method: 'post', data }),
  update: (data) => request({ url: '/drm/performance/perfPlan', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/performance/perfPlan/${ids}`, method: 'delete' }),
}
