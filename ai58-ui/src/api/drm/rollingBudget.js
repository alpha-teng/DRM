import request from '@/utils/request'

export const RollingBudgetApi = {
  list(query) { return request({ url: '/drm/rollingBudget/list', method: 'get', params: query }) },
  get(id) { return request({ url: '/drm/rollingBudget/' + id, method: 'get' }) },
  add(data) { return request({ url: '/drm/rollingBudget', method: 'post', data: data }) },
  update(data) { return request({ url: '/drm/rollingBudget', method: 'put', data: data }) },
  remove(ids) { return request({ url: '/drm/rollingBudget/' + ids, method: 'delete' }) },
  export(query) { return request({ url: '/drm/rollingBudget/export', method: 'get', params: query, responseType: 'blob' }) },
}
