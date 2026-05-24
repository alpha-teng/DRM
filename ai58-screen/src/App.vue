<template>
  <div class="screen-wrapper" ref="screenWrapper">
    <div class="screen-container" :style="transformStyle">
      <!-- Header -->
      <header class="screen-header">
        <div class="header-left">
          <img src="@/assets/logo.png" class="sys-logo" alt="logo" />
          <span class="sys-name text-gradient">医院运营决策分析平台</span>
        </div>
        <!-- Navigation -->
        <nav class="nav-menu">
          <router-link 
            v-for="item in menuItems" 
            :key="item.path" 
            :to="item.path"
            class="nav-item"
            active-class="nav-item-active"
          >
            {{ item.name }}
          </router-link>
        </nav>
        <div class="header-right">
          <div class="time-info">{{ currentTime }}</div>
          <div class="weather-info">天气：晴 25°C</div>
        </div>
      </header>

      <!-- Main Content Area -->
      <main class="screen-main">
        <router-view v-slot="{ Component }">
          <transition name="fade" mode="out-in">
            <component :is="Component" />
          </transition>
        </router-view>
      </main>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted, computed } from 'vue'

const menuItems = [
  { name: '运营总览', path: '/operation' },
  { name: '趋势分析', path: '/trend' },
  { name: '智能预警', path: '/warning' },
  { name: '财务管控', path: '/finance' },
  { name: 'DRG盈亏', path: '/drg' },
  { name: '科室绩效', path: '/performance' },
  { name: '成本管控', path: '/cost' },
  { name: '质量监控', path: '/quality' },
  { name: '资源优化', path: '/resource' },
  { name: '医保结算', path: '/medicare' }
]

const currentTime = ref('')
const transformStyle = ref('')

const updateTime = () => {
  const now = new Date()
  currentTime.value = now.toLocaleString('zh-CN', { hour12: false })
}

const handleResize = () => {
  const designWidth = 1920
  const designHeight = 1080
  const clientWidth = window.innerWidth
  const clientHeight = window.innerHeight

  const scaleX = clientWidth / designWidth
  const scaleY = clientHeight / designHeight
  const scale = Math.min(scaleX, scaleY)

  transformStyle.value = `transform: scale(${scale}) translate(-50%, -50%);`
}

let timer
onMounted(() => {
  updateTime()
  timer = setInterval(updateTime, 1000)
  
  handleResize()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  clearInterval(timer)
  window.removeEventListener('resize', handleResize)
})
</script>

<style scoped>
.screen-wrapper {
  width: 100vw;
  height: 100vh;
  position: relative;
  overflow: hidden;
}

.screen-container {
  width: 1920px;
  height: 1080px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform-origin: 0 0;
  display: flex;
  flex-direction: column;
}

.screen-header {
  height: 70px;
  position: relative;
  background: linear-gradient(180deg, rgba(0, 229, 255, 0.15) 0%, rgba(0, 229, 255, 0) 100%);
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 30px;
}

.screen-header::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, rgba(0,229,255,0.8), transparent);
  z-index: 1;
}

.header-left {
  display: flex;
  align-items: center;
  gap: 15px;
  width: 450px;
}

.sys-logo {
  height: 36px;
  width: auto;
  object-fit: contain;
}

.sys-name {
  font-size: 24px;
  font-weight: bold;
  letter-spacing: 2px;
  margin: 0;
}

.header-right {
  display: flex;
  align-items: center;
  justify-content: flex-end;
  gap: 20px;
  font-size: 16px;
  color: var(--text-secondary);
  width: 450px;
}

.nav-menu {
  flex: 1;
  display: flex;
  justify-content: center;
  gap: 10px;
  height: 100%;
  align-items: flex-end;
}

.nav-item {
  color: var(--text-secondary);
  text-decoration: none;
  font-size: 16px;
  padding: 8px 15px;
  transition: all 0.3s;
  position: relative;
  background: rgba(0, 229, 255, 0.05);
  border: 1px solid transparent;
  border-bottom: 2px solid transparent;
  border-radius: 4px 4px 0 0;
  display: flex;
  align-items: center;
  white-space: nowrap;
  z-index: 2;
}

.nav-item:hover {
  color: var(--theme-color);
  background: rgba(0, 229, 255, 0.1);
  border-color: rgba(0, 229, 255, 0.3);
  border-bottom: 2px solid transparent;
}

.nav-item-active {
  color: #e6f7ff;
  font-weight: bold;
  background: rgba(0, 229, 255, 0.2);
  border: 1px solid rgba(0, 229, 255, 0.5);
  border-bottom: 2px solid var(--theme-color);
  box-shadow: inset 0 -5px 15px rgba(0, 229, 255, 0.2);
}

.screen-main {
  flex: 1;
  padding: 20px;
  overflow: hidden;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
