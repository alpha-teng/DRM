import request from '@/utils/request'

export const MobileWarningApi = {
  list: (params) => request({ url: '/drm/mobile/mobileWarning/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/mobile/mobileWarning/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/mobile/mobileWarning', method: 'post', data }),
  update: (data) => request({ url: '/drm/mobile/mobileWarning', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/mobile/mobileWarning/${ids}`, method: 'delete' }),
}
