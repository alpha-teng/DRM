import request from '@/utils/request'

export const RollingBudgetApi = {
  list: (params) => request({ url: '/drm/budget/rollingBudget/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/budget/rollingBudget/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/budget/rollingBudget', method: 'post', data }),
  update: (data) => request({ url: '/drm/budget/rollingBudget', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/budget/rollingBudget/${ids}`, method: 'delete' }),
}
