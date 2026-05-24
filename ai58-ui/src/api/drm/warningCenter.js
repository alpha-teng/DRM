import request from '@/utils/request'

export const WarningCenterApi = {
  list: (params) => request({ url: '/drm/earlyWarning/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/earlyWarning/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cockpit/warningCenter', method: 'post', data }),
  update: (data) => request({ url: '/drm/cockpit/warningCenter', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/earlyWarning/${ids}`, method: 'delete' }),
}
