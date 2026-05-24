import request from '@/utils/request'

export const SurgeryApi = {
  list: (params) => request({ url: '/drm/operation/surgery/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/operation/surgery/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/operation/surgery', method: 'post', data }),
  update: (data) => request({ url: '/drm/operation/surgery', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/operation/surgery/${ids}`, method: 'delete' }),
}
