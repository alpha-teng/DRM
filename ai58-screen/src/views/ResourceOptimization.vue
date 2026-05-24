<template>
  <div class="page-container">
    <!-- 顶部资源指标卡片 -->
    <div class="top-cards">
      <div class="tech-panel card" v-for="(kpi, index) in kpiData" :key="index">
        <div class="card-icon">{{ kpi.icon }}</div>
        <div class="card-info">
          <div class="card-title text-gradient">{{ kpi.title }}</div>
          <div class="card-value">{{ kpi.value }}<span class="unit">{{ kpi.unit }}</span></div>
          <div class="card-footer" :class="kpi.status">
            {{ kpi.trend }}
          </div>
        </div>
      </div>
    </div>

    <div class="main-content">
      <!-- 左侧资源结构与预警 -->
      <div class="left-panel tech-panel">
        <h3 class="panel-title text-gradient">📌 资源存量总览</h3>
        
        <div class="resource-block">
          <div class="res-title">🛏️ 床位资源 (共500张)</div>
          <div class="res-stat">在院: <span class="val highlight">460</span> 张 | 空床: <span class="val">40</span> 张</div>
        </div>
        
        <div class="resource-block">
          <div class="res-title">🔪 手术室 (共12间)</div>
          <div class="res-stat">运行中: <span class="val highlight">11</span> 间 | 维修: <span class="val warning">1</span> 间</div>
        </div>
        
        <div class="resource-block">
          <div class="res-title">🏥 大型设备 (共6台)</div>
          <div class="res-stat">CT: 3台 | MRI: 2台 | DSA: 1台</div>
        </div>
        
        <div class="resource-block mb-20">
          <div class="res-title">👨‍⚕️ 人力资源 (共700人)</div>
          <div class="res-stat">医师: 280人 | 护士: 420人</div>
        </div>

        <h3 class="panel-title text-gradient">🔴 资源紧张科室 TOP3</h3>
        <div class="warn-list mb-20">
          <div class="warn-item" v-for="(item, i) in tightData" :key="'t'+i">
            <span class="name">{{ item.name }}</span>
            <div class="progress-bg"><div class="progress-fill danger" :style="{ width: item.val + '%' }"></div></div>
            <span class="score danger">{{ item.val }}%</span>
          </div>
        </div>

        <h3 class="panel-title text-gradient">🟢 资源闲置预警</h3>
        <div class="warn-list">
          <div class="warn-item" v-for="(item, i) in idleData" :key="'i'+i">
            <span class="name">{{ item.name }}</span>
            <div class="progress-bg"><div class="progress-fill success" :style="{ width: item.val + '%' }"></div></div>
            <span class="score success">{{ item.val }}%</span>
          </div>
        </div>
      </div>

      <!-- 右侧图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">科室床位使用率监控</h3>
          <div ref="bedChartRef" class="chart-box"></div>
        </div>

        <div class="middle-charts">
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">手术室时段利用率分布</h3>
            <div ref="opRoomChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">大型设备日均利用率</h3>
            <div ref="deviceChartRef" class="chart-box"></div>
          </div>
        </div>

        <div class="tech-panel chart-bottom">
          <h3 class="panel-title text-gradient">重点科室医师工作量散点分布</h3>
          <div ref="scatterChartRef" class="chart-box"></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import * as echarts from 'echarts'

const kpiData = ref([
  { title: '全院床位使用率', value: '92.5', unit: '%', trend: '↑ 3%', status: 'up', icon: '🛏️' },
  { title: '手术室利用率', value: '88.3', unit: '%', trend: '↑ 2.5%', status: 'up', icon: '🚪' },
  { title: '设备利用率', value: '76.8', unit: '%', trend: '↑ 5.2%', status: 'up', icon: '🔬' },
  { title: '医师工作量', value: '中等', unit: '', trend: '负荷均衡', status: 'normal', icon: '👨‍⚕️' },
  { title: '护士配置', value: '合理', unit: '', trend: '配置达标', status: 'normal', icon: '👩‍⚕️' },
  { title: '资源紧张', value: '3', unit: '科室', trend: '🔴预警', status: 'danger', icon: '🚨' }
])

const tightData = ref([
  { name: '骨科', val: 96 },
  { name: '心内科', val: 92 },
  { name: '神经外科', val: 88 }
])

const idleData = ref([
  { name: '儿科', val: 65 },
  { name: '烧伤科', val: 60 }
])

const bedChartRef = ref(null)
const opRoomChartRef = ref(null)
const deviceChartRef = ref(null)
const scatterChartRef = ref(null)

let bedChart, opRoomChart, deviceChart, scatterChart

const initBedChart = () => {
  bedChart = echarts.init(bedChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '4%', bottom: '3%', top: '15%', containLabel: true },
    xAxis: {
      type: 'category',
      data: ['骨科', '心内科', '神经外', '普外科', '肿瘤科', '呼吸内科', '消化内科', '泌尿外科', '妇产科', '儿科'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      max: 100,
      axisLabel: { color: '#a0aabf', formatter: '{value}%' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }
    },
    series: [
      {
        name: '床位使用率',
        type: 'bar',
        barWidth: 20,
        itemStyle: {
          color: (params) => {
            if (params.value >= 95) return '#ff4d4f'
            if (params.value >= 90) return '#faad14'
            if (params.value <= 65) return '#52c41a'
            return new echarts.graphic.LinearGradient(0, 0, 0, 1, [{ offset: 0, color: '#00e5ff' }, { offset: 1, color: 'rgba(0, 229, 255, 0.1)' }])
          },
          borderRadius: [4, 4, 0, 0]
        },
        label: { show: true, position: 'top', color: '#e6f7ff', formatter: '{c}%' },
        data: [96, 92, 88, 85, 82, 80, 75, 69, 67, 60]
      },
      {
        name: '紧张线',
        type: 'line',
        itemStyle: { color: '#ff4d4f' },
        markLine: {
          data: [{ yAxis: 95, name: '预警线' }],
          lineStyle: { color: '#ff4d4f', type: 'dashed' },
          label: { color: '#ff4d4f', formatter: '紧张 95%' }
        }
      }
    ]
  }
  bedChart.setOption(option)
}

const initOpRoomChart = () => {
  opRoomChart = echarts.init(opRoomChartRef.value)
  const option = {
    tooltip: { trigger: 'item', formatter: '{b}: {c}%' },
    legend: { right: '0', top: 'middle', orient: 'vertical', textStyle: { color: '#a0aabf' } },
    series: [
      {
        name: '时段利用率',
        type: 'pie',
        radius: ['40%', '70%'],
        center: ['40%', '50%'],
        itemStyle: { borderRadius: 4, borderColor: '#030409', borderWidth: 2 },
        label: { show: false },
        data: [
          { value: 92, name: '上午 (08:00-12:00)', itemStyle: { color: '#ff4d4f' } },
          { value: 85, name: '下午 (13:00-17:00)', itemStyle: { color: '#faad14' } },
          { value: 78, name: '晚上 (18:00-22:00)', itemStyle: { color: '#1890ff' } },
          { value: 45, name: '深夜 (22:00-08:00)', itemStyle: { color: '#52c41a' } }
        ]
      }
    ]
  }
  opRoomChart.setOption(option)
}

const initDeviceChart = () => {
  deviceChart = echarts.init(deviceChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '15%', bottom: '3%', top: '5%', containLabel: true },
    xAxis: { type: 'value', max: 100, show: false },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['CT机3', 'CT机1', 'MRI1', 'CT机2', 'MRI2', 'DSA'],
      axisLine: { show: false },
      axisTick: { show: false },
      axisLabel: { color: '#a0aabf' }
    },
    series: [
      {
        name: '利用率(%)',
        type: 'bar',
        barWidth: 12,
        itemStyle: {
          color: (params) => {
            if (params.value <= 50) return '#ff4d4f'
            return new echarts.graphic.LinearGradient(1, 0, 0, 0, [{ offset: 0, color: '#722ed1' }, { offset: 1, color: 'rgba(114, 46, 209, 0.1)' }])
          },
          borderRadius: [0, 6, 6, 0]
        },
        label: { show: true, position: 'right', color: '#e6f7ff', formatter: '{c}%' },
        data: [92, 83, 75, 67, 58, 50]
      }
    ]
  }
  deviceChart.setOption(option)
}

const initScatterChart = () => {
  scatterChart = echarts.init(scatterChartRef.value)
  // Generate random scatter data for simulation
  const scatterData = []
  const depts = ['骨科', '神经外科', '心内科', '普外科', '儿科']
  depts.forEach((dept, index) => {
    let baseLoad = 80;
    if (dept === '儿科') baseLoad = 50;
    if (dept === '骨科') baseLoad = 90;
    
    for (let i = 0; i < 15; i++) {
      // x is department index, y is workload
      const load = baseLoad + (Math.random() * 20 - 10)
      scatterData.push([index, Math.min(100, Math.max(0, load))])
    }
  })

  const option = {
    tooltip: { formatter: (params) => `${depts[params.value[0]]} 医师<br/>工作量评分: ${params.value[1].toFixed(1)}` },
    grid: { left: '3%', right: '4%', bottom: '15%', top: '10%', containLabel: true },
    xAxis: {
      type: 'category',
      data: depts,
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      name: '工作量评分',
      nameTextStyle: { color: '#a0aabf' },
      axisLabel: { color: '#a0aabf' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)', type: 'dashed' } }
    },
    series: [
      {
        name: '医师负荷',
        type: 'scatter',
        symbolSize: 10,
        itemStyle: {
          color: '#00e5ff',
          opacity: 0.7,
          shadowBlur: 10,
          shadowColor: 'rgba(0, 229, 255, 0.5)'
        },
        data: scatterData
      }
    ]
  }
  scatterChart.setOption(option)
}

const handleResize = () => {
  bedChart?.resize()
  opRoomChart?.resize()
  deviceChart?.resize()
  scatterChart?.resize()
}

onMounted(() => {
  initBedChart()
  initOpRoomChart()
  initDeviceChart()
  initScatterChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  bedChart?.dispose()
  opRoomChart?.dispose()
  deviceChart?.dispose()
  scatterChart?.dispose()
  window.removeEventListener('resize', handleResize)
})
</script>

<style scoped>
.page-container {
  display: flex;
  flex-direction: column;
  height: 100%;
  gap: 20px;
}

.top-cards {
  display: flex;
  justify-content: space-between;
  gap: 15px;
  height: 100px;
}

.card {
  flex: 1;
  padding: 15px 20px !important;
  display: flex;
  flex-direction: row;
  align-items: center;
  gap: 12px;
  position: relative;
  overflow: hidden;
}

.card-icon {
  font-size: 32px;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 48px;
  height: 48px;
  background: rgba(0, 229, 255, 0.1);
  border-radius: 8px;
  position: relative;
  z-index: 1;
}

.card-info {
  display: flex;
  flex-direction: column;
  justify-content: center;
  position: relative;
  z-index: 1;
}

.card-title { font-size: 15px; font-weight: bold; margin-bottom: 5px; }
.card-value { 
  font-size: 28px; 
  font-weight: bold; 
  color: #e6f7ff;
  font-family: "Impact", sans-serif; 
  letter-spacing: 1px;
}
.unit { font-size: 13px; color: var(--text-secondary); margin-left: 4px; font-family: "PingFang SC", sans-serif; }
.card-footer { font-size: 14px; margin-top: 4px; }
.card-footer.up { color: #ff4d4f; }
.card-footer.down { color: #52c41a; }
.card-footer.normal { color: #00e5ff; }
.card-footer.danger { color: #ff4d4f; font-weight: bold; }

.main-content {
  flex: 1;
  display: flex;
  gap: 20px;
  height: calc(100% - 120px);
}

.left-panel {
  width: 320px;
  padding: 20px;
  display: flex;
  flex-direction: column;
  overflow-y: auto;
}

.left-panel::-webkit-scrollbar { width: 4px; }
.left-panel::-webkit-scrollbar-thumb { background: rgba(0, 229, 255, 0.3); border-radius: 4px; }

.panel-title {
  font-size: 16px;
  margin-bottom: 12px;
  padding-bottom: 8px;
  border-bottom: 1px solid rgba(0, 229, 255, 0.2);
}

.mb-20 { margin-bottom: 20px; }

.resource-block {
  background: rgba(255,255,255,0.02);
  padding: 10px;
  border-radius: 4px;
  margin-bottom: 10px;
}
.res-title { color: #00e5ff; font-weight: bold; font-size: 14px; margin-bottom: 5px; }
.res-stat { color: #a0aabf; font-size: 13px; }
.val { color: #e6f7ff; font-weight: bold; }
.val.highlight { color: #00e5ff; }
.val.warning { color: #faad14; }

.warn-list { display: flex; flex-direction: column; gap: 8px; }
.warn-item {
  display: flex;
  align-items: center;
  gap: 10px;
}
.warn-item .name { width: 60px; color: #e6f7ff; font-size: 13px; }
.progress-bg {
  flex: 1;
  height: 6px;
  background: rgba(255,255,255,0.1);
  border-radius: 3px;
  overflow: hidden;
}
.progress-fill { height: 100%; border-radius: 3px; }
.progress-fill.danger { background: #ff4d4f; }
.progress-fill.success { background: #52c41a; }
.warn-item .score { width: 35px; text-align: right; font-weight: bold; font-size: 13px; }
.score.danger { color: #ff4d4f; }
.score.success { color: #52c41a; }

.center-panel {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.chart-container-top {
  flex: 1.2;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.middle-charts {
  flex: 1;
  display: flex;
  gap: 20px;
}

.chart-half {
  flex: 1;
  padding: 15px;
  display: flex;
  flex-direction: column;
}

.chart-bottom {
  flex: 1;
  padding: 15px 20px;
  display: flex;
  flex-direction: column;
}

.chart-box {
  flex: 1;
  width: 100%;
  height: 100%;
  min-height: 0;
}
</style>
