import request from '@/utils/request'

export const AiRecommendApi = {
  list: (params) => request({ url: '/drm/ai/aiRecommend/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/ai/aiRecommend/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/ai/aiRecommend', method: 'post', data }),
  update: (data) => request({ url: '/drm/ai/aiRecommend', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/ai/aiRecommend/${ids}`, method: 'delete' }),
}
