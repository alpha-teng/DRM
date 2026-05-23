import request from '@/utils/request'
// 获取招商漏斗数据
export function getFunnelData() {
  return request({
    url: '/dashboard/funnel',
    method: 'get'
  })
}
// 获取招商进度数据
export function getProgressData() {
  return request({
    url: '/dashboard/progress',
    method: 'get'
  })
}
// 获取空间利用率数据
export function getSpaceUtilization() {
  return request({
    url: '/dashboard/spaceUtilization',
    method: 'get'
  })
}
// 获取企业行业分布数据
export function getIndustryDist() {
  return request({
    url: '/dashboard/industryDist',
    method: 'get'
  })
}
// 获取招商任务统计数据
export function getTaskStats() {
  return request({
    url: '/dashboard/taskStats',
    method: 'get'
  })
}
// 获取最新招商动态
export function getLatestNews() {
  return request({
    url: '/dashboard/latestNews',
    method: 'get'
  })
}
// 获取招商绩效排名
export function getPerformanceRank() {
  return request({
    url: '/dashboard/performanceRank',
    method: 'get'
  })
}