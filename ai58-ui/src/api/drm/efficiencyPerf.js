import request from '@/utils/request'

export const EfficiencyPerfApi = {
  list: (params) => request({ url: '/drm/efficiencyPerf/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/efficiencyPerf/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/efficiencyPerf', method: 'post', data }),
  update: (data) => request({ url: '/drm/efficiencyPerf', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/efficiencyPerf/${ids}`, method: 'delete' }),
}
