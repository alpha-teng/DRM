import request from '@/utils/request'

export const WarningCenterApi = {
  list: (params) => request({ url: '/drm/cockpit/warningCenter/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/cockpit/warningCenter/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cockpit/warningCenter', method: 'post', data }),
  update: (data) => request({ url: '/drm/cockpit/warningCenter', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/cockpit/warningCenter/${ids}`, method: 'delete' }),
}
