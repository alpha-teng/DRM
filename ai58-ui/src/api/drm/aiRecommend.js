import request from '@/utils/request'

export const AiRecommendApi = {
  list(query) { return request({ url: '/drm/aiRecommend/list', method: 'get', params: query }) },
  get(id) { return request({ url: '/drm/aiRecommend/' + id, method: 'get' }) },
  add(data) { return request({ url: '/drm/aiRecommend', method: 'post', data: data }) },
  update(data) { return request({ url: '/drm/aiRecommend', method: 'put', data: data }) },
  remove(ids) { return request({ url: '/drm/aiRecommend/' + ids, method: 'delete' }) },
  export(query) { return request({ url: '/drm/aiRecommend/export', method: 'get', params: query, responseType: 'blob' }) }
}
