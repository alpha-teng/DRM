import request from '@/utils/request'

export const KnowledgeContentApi = {
  list: (params) => request({ url: '/drm/knowledge/knowledgeContent/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/knowledge/knowledgeContent/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/knowledge/knowledgeContent', method: 'post', data }),
  update: (data) => request({ url: '/drm/knowledge/knowledgeContent', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/knowledge/knowledgeContent/${ids}`, method: 'delete' }),
}
