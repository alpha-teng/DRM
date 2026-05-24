import request from '@/utils/request'

export const DataQualityApi = {
  list: (params) => request({ url: '/drm/datasource/dataQuality/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/datasource/dataQuality/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/datasource/dataQuality', method: 'post', data }),
  update: (data) => request({ url: '/drm/datasource/dataQuality', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/datasource/dataQuality/${ids}`, method: 'delete' }),
}
