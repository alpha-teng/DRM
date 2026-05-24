import request from '@/utils/request'

export const KnowledgeCategoryApi = {
  list: (params) => request({ url: '/drm/knowledgeCategory/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/knowledgeCategory/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/knowledgeCategory', method: 'post', data }),
  update: (data) => request({ url: '/drm/knowledgeCategory', method: 'put', data }),
  del: (ids) => request({ url: `/drm/knowledgeCategory/${ids}`, method: 'delete' }),
  export: (params) => request({ url: '/drm/knowledgeCategory/export', method: 'post', params })
}
