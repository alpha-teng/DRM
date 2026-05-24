import request from '@/utils/request'

export const BigscreenApi = {
  list: (params) => request({ url: '/drm/bigScreen/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/bigScreen/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/bigScreen', method: 'post', data }),
  update: (data) => request({ url: '/drm/bigScreen', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/bigScreen/${ids}`, method: 'delete' }),
}
