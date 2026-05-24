import request from '@/utils/request'

export const KnowledgeContentApi = {
  list: (params) => request({ url: '/drm/knowledgeContent/list', method: 'get', params }),
  get: (id) => request({ url: `/drm/knowledgeContent/${id}`, method: 'get' }),
  add: (data) => request({ url: '/drm/knowledgeContent', method: 'post', data }),
  update: (data) => request({ url: '/drm/knowledgeContent', method: 'put', data }),
  remove: (ids) => request({ url: `/drm/knowledgeContent/${ids}`, method: 'delete' }),
}
