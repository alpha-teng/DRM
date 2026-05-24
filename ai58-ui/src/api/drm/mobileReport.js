import request from '@/utils/request'

export const MobileReportApi = {
  list: (params) => request({ url: '/drm/mobile/mobileReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/mobile/mobileReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/mobile/mobileReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/mobile/mobileReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/mobile/mobileReport/${ids}`, method: 'delete' }),
}
