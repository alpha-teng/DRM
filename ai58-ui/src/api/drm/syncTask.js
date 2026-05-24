import request from '@/utils/request'

export const SyncTaskApi = {
  list: (params) => request({ url: '/drm/syncTask/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/syncTask/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/syncTask', method: 'post', data }),
  update: (data) => request({ url: '/drm/syncTask', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/syncTask/${ids}`, method: 'delete' }),
}
