import request from '@/utils/request'

export const DataSourceApi = {
  list: (params) => request({ url: '/drm/dataSource/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/dataSource/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/dataSource', method: 'post', data }),
  update: (data) => request({ url: '/drm/dataSource', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/dataSource/${ids}`, method: 'delete' }),
}
