import request from '@/utils/request'

export const AiReportApi = {
  list: (params) => request({ url: '/drm/aiChatLogaiReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/aiChatLogaiReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/aiChatLogaiReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/aiChatLogaiReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/aiChatLogaiReport/${ids}`, method: 'delete' }),
}
