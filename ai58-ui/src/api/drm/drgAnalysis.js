import request from '@/utils/request'

export const DrgAnalysisApi = {
  list: (params) => request({ url: '/drm/drgAnalysis/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/drgAnalysis/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/drgAnalysis', method: 'post', data }),
  update: (data) => request({ url: '/drm/drgAnalysis', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/drgAnalysis/${ids}`, method: 'delete' }),
  export: (params) => request({ url: '/drm/drgAnalysis/export', method: 'post', params })
}
