import request from '@/utils/request'

export const SyncTaskApi = {
  list: (params) => request({ url: '/drm/datasource/syncTask/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/datasource/syncTask/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/datasource/syncTask', method: 'post', data }),
  update: (data) => request({ url: '/drm/datasource/syncTask', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/datasource/syncTask/${ids}`, method: 'delete' }),
}
