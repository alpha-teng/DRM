import request from '@/utils/request'

export const DataMappingApi = {
  list: (params) => request({ url: '/drm/dataMapping/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/dataMapping/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/dataMapping', method: 'post', data }),
  update: (data) => request({ url: '/drm/dataMapping', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/dataMapping/${ids}`, method: 'delete' }),
}
