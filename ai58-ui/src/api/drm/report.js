import request from '@/utils/request'

export const ReportApi = {
  list: (params) => request({ url: '/drm/operation/report/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/operation/report/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/operation/report', method: 'post', data }),
  update: (data) => request({ url: '/drm/operation/report', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/operation/report/${ids}`, method: 'delete' }),
}
