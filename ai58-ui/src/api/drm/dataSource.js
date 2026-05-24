import request from '@/utils/request'

export const DataSourceApi = {
  list: (params) => request({ url: '/drm/datasource/dataSource/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/datasource/dataSource/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/datasource/dataSource', method: 'post', data }),
  update: (data) => request({ url: '/drm/datasource/dataSource', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/datasource/dataSource/${ids}`, method: 'delete' }),
}
