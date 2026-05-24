import request from '@/utils/request'

export const QualityPerfApi = {
  list: (params) => request({ url: '/drm/performance/qualityPerf/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/performance/qualityPerf/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/performance/qualityPerf', method: 'post', data }),
  update: (data) => request({ url: '/drm/performance/qualityPerf', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/performance/qualityPerf/${ids}`, method: 'delete' }),
}
