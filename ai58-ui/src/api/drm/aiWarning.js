import request from '@/utils/request'

export const AiWarningApi = {
  list: (params) => request({ url: '/drm/aiChatLogaiWarning/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/aiChatLogaiWarning/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/aiChatLogaiWarning', method: 'post', data }),
  update: (data) => request({ url: '/drm/aiChatLogaiWarning', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/aiChatLogaiWarning/${ids}`, method: 'delete' }),
}
