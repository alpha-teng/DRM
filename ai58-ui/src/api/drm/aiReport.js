import request from '@/utils/request'

export const AiReportApi = {
  list: (params) => request({ url: '/drm/ai/aiReport/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/ai/aiReport/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/ai/aiReport', method: 'post', data }),
  update: (data) => request({ url: '/drm/ai/aiReport', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/ai/aiReport/${ids}`, method: 'delete' }),
}
