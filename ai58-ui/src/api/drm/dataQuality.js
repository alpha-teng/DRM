import request from '@/utils/request'

export const DataQualityApi = {
  list: (params) => request({ url: '/drm/dataQuality/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/dataQuality/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/dataQuality', method: 'post', data }),
  update: (data) => request({ url: '/drm/dataQuality', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/dataQuality/${ids}`, method: 'delete' }),
}
