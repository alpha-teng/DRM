import request from '@/utils/request'

export const QualityPerfApi = {
  list: (params) => request({ url: '/drm/qualityPerf/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/qualityPerf/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/qualityPerf', method: 'post', data }),
  update: (data) => request({ url: '/drm/qualityPerf', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/qualityPerf/${ids}`, method: 'delete' }),
}
