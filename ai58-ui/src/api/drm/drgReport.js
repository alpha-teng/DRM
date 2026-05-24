import request from '@/utils/request'

export const DrgReportApi = {
  list: (params) => request({ url: '/drm/drg/drgReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drg/drgReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drg/drgReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/drg/drgReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drg/drgReport/${ids}`, method: 'delete' }),
}
