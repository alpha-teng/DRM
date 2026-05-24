import request from '@/utils/request'

export const DataMappingApi = {
  list: (params) => request({ url: '/drm/datasource/dataMapping/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/datasource/dataMapping/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/datasource/dataMapping', method: 'post', data }),
  update: (data) => request({ url: '/drm/datasource/dataMapping', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/datasource/dataMapping/${ids}`, method: 'delete' }),
}
