import request from '@/utils/request'

export const AiWarningApi = {
  list(query) { return request({ url: '/drm/aiWarning/list', method: 'get', params: query }) },
  get(id) { return request({ url: '/drm/aiWarning/' + id, method: 'get' }) },
  add(data) { return request({ url: '/drm/aiWarning', method: 'post', data: data }) },
  update(data) { return request({ url: '/drm/aiWarning', method: 'put', data: data }) },
  remove(ids) { return request({ url: '/drm/aiWarning/' + ids, method: 'delete' }) },
  export(query) { return request({ url: '/drm/aiWarning/export', method: 'get', params: query, responseType: 'blob' }) }
}
