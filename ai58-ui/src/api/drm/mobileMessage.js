import request from '@/utils/request'

export const MobileMessageApi = {
  list: (params) => request({ url: '/drm/mobile/mobileMessage/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/mobile/mobileMessage/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/mobile/mobileMessage', method: 'post', data }),
  update: (data) => request({ url: '/drm/mobile/mobileMessage', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/mobile/mobileMessage/${ids}`, method: 'delete' }),
}
