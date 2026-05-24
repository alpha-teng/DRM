import request from '@/utils/request'

export const QualityReportApi = {
  list: (params) => request({ url: '/drm/qualityReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/qualityReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/qualityReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/qualityReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/qualityReport/${ids}`, method: 'delete' }),
}
