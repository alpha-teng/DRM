import request from '@/utils/request'

export const QualityReportApi = {
  list: (params) => request({ url: '/drm/quality/qualityReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/quality/qualityReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/quality/qualityReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/quality/qualityReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/quality/qualityReport/${ids}`, method: 'delete' }),
}
