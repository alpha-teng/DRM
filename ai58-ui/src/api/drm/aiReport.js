import request from '@/utils/request'

export const AiReportApi = {
  list(query) { return request({ url: '/drm/aiReport/list', method: 'get', params: query }) },
  get(id) { return request({ url: '/drm/aiReport/' + id, method: 'get' }) },
  add(data) { return request({ url: '/drm/aiReport', method: 'post', data: data }) },
  update(data) { return request({ url: '/drm/aiReport', method: 'put', data: data }) },
  remove(ids) { return request({ url: '/drm/aiReport/' + ids, method: 'delete' }) },
  export(query) { return request({ url: '/drm/aiReport/export', method: 'get', params: query, responseType: 'blob' }) }
}
