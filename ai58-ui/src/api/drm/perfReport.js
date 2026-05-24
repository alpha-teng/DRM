import request from '@/utils/request'

export const PerfReportApi = {
  list: (params) => request({ url: '/drm/performance/perfReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/performance/perfReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/performance/perfReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/performance/perfReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/performance/perfReport/${ids}`, method: 'delete' }),
}
