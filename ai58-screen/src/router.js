import { createRouter, createWebHashHistory } from 'vue-router'

const routes = [
  { path: '/', redirect: '/operation' },
  { path: '/operation', component: () => import('./views/OperationOverview.vue') },
  { path: '/trend', component: () => import('./views/TrendAnalysis.vue') },
  { path: '/warning', component: () => import('./views/SmartWarning.vue') },
  { path: '/finance', component: () => import('./views/FinanceControl.vue') },
  { path: '/drg', component: () => import('./views/DRGProfitLoss.vue') },
  { path: '/performance', component: () => import('./views/DepartmentPerformance.vue') },
  { path: '/cost', component: () => import('./views/CostControl.vue') },
  { path: '/quality', component: () => import('./views/QualityMonitor.vue') },
  { path: '/resource', component: () => import('./views/ResourceOptimization.vue') },
  { path: '/medicare', component: () => import('./views/MedicareSettlement.vue') }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
