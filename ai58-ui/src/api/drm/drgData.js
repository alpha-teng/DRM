import request from '@/utils/request'

export const DrgDataApi = {
  list: (params) => request({ url: '/drm/drg/drgData/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drg/drgData/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drg/drgData', method: 'post', data }),
  update: (data) => request({ url: '/drm/drg/drgData', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drg/drgData/${ids}`, method: 'delete' }),
}
