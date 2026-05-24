import request from '@/utils/request'

export const ReportApi = {
  list: (params) => request({ url: '/drm/operationReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/operationReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/operationReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/operationReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/operationReport/${ids}`, method: 'delete' }),
  export: (params) => request({ url: '/drm/operationReport/export', method: 'post', params }),
}
