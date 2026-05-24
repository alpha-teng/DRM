import request from '@/utils/request'

export const AiWarningApi = {
  list: (params) => request({ url: '/drm/ai/aiWarning/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/ai/aiWarning/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/ai/aiWarning', method: 'post', data }),
  update: (data) => request({ url: '/drm/ai/aiWarning', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/ai/aiWarning/${ids}`, method: 'delete' }),
}
