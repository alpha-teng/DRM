import request from '@/utils/request'

export const PerfReportApi = {
  list: (params) => request({ url: '/drm/perfReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/perfReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/perfReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/perfReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/perfReport/${ids}`, method: 'delete' }),
}
