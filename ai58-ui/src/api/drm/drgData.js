import request from '@/utils/request'

export const DrgDataApi = {
  list: (params) => request({ url: '/drm/drgData/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drgData/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drgData', method: 'post', data }),
  update: (data) => request({ url: '/drm/drgData', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drgData/${ids}`, method: 'delete' }),
}
