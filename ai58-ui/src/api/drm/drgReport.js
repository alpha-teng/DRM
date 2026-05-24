import request from '@/utils/request'

export const DrgReportApi = {
  list: (params) => request({ url: '/drm/drgReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drgReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drgReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/drgReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drgReport/${ids}`, method: 'delete' }),
}
