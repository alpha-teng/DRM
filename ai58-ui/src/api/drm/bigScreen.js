import request from '@/utils/request'

export const BigScreenApi = {
  list: (params) => request({ url: '/drm/cockpit/bigScreen/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/cockpit/bigScreen/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/cockpit/bigScreen', method: 'post', data }),
  update: (data) => request({ url: '/drm/cockpit/bigScreen', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/cockpit/bigScreen/${ids}`, method: 'delete' }),
}
