import request from '@/utils/request'

export const EfficiencyPerfApi = {
  list: (params) => request({ url: '/drm/performance/efficiencyPerf/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/performance/efficiencyPerf/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/performance/efficiencyPerf', method: 'post', data }),
  update: (data) => request({ url: '/drm/performance/efficiencyPerf', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/performance/efficiencyPerf/${ids}`, method: 'delete' }),
}
