<template>
  <div class="page-container">
    <!-- 顶部预警KPI -->
    <div class="top-cards">
      <div class="tech-panel card alert-card" v-for="(kpi, index) in kpiData" :key="index">
        <div class="card-title text-gradient"><span class="kpi-icon">{{ kpi.icon }}</span> {{ kpi.title }}</div>
        <div class="card-value" :class="kpi.color">{{ kpi.value }}<span class="unit">{{ kpi.unit }}</span></div>
        <div class="card-footer">
          {{ kpi.desc }} <span :class="kpi.trend > 0 ? 'up' : 'down'">{{ kpi.trend > 0 ? '↑' : '↓' }} {{ Math.abs(kpi.trend) }}</span>
        </div>
        <!-- 呼吸灯效果 -->
        <div class="breathing-light" :class="kpi.color" v-if="kpi.isUrgent"></div>
      </div>
    </div>

    <div class="main-content">
      <!-- 左侧分类与排名 -->
      <div class="left-panel">
        <div class="tech-panel chart-box-small">
          <h3 class="panel-title text-gradient">预警分类分布</h3>
          <div ref="pieChartRef" class="chart-box"></div>
        </div>

        <div class="tech-panel rank-card">
          <h3 class="panel-title text-gradient">科室预警黑榜 TOP5</h3>
          <div class="rank-list">
            <div class="rank-item" v-for="(item, i) in deptRank" :key="'dept'+i">
              <span class="rank-num">{{ i+1 }}</span>
              <span class="dept-name">{{ item.name }}</span>
              <div class="progress-bar">
                <div class="progress-inner" :style="{ width: (item.count / 10) * 100 + '%', background: i < 2 ? '#f5222d' : '#faad14' }"></div>
              </div>
              <span class="count">{{ item.count }}条</span>
            </div>
          </div>
        </div>
      </div>

      <!-- 右侧雷达图与滚动列表 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">多维度预警分布（雷达图）</h3>
          <div ref="radarChartRef" class="chart-box"></div>
        </div>

        <div class="tech-panel scroll-container">
          <h3 class="panel-title text-gradient">实时预警事件流</h3>
          <div class="scroll-wrapper">
            <div class="scroll-list" :class="{ 'scrolling': true }">
              <div class="event-item" v-for="(event, i) in eventList" :key="i">
                <span class="time">[{{ event.time }}]</span>
                <span class="level" :class="event.level">{{ event.levelText }}</span>
                <span class="type">[{{ event.type }}]</span>
                <span class="desc">{{ event.desc }}</span>
              </div>
              <!-- 重复一遍用于无缝滚动 -->
              <div class="event-item" v-for="(event, i) in eventList" :key="'copy'+i">
                <span class="time">[{{ event.time }}]</span>
                <span class="level" :class="event.level">{{ event.levelText }}</span>
                <span class="type">[{{ event.type }}]</span>
                <span class="desc">{{ event.desc }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import * as echarts from 'echarts'

const kpiData = ref([
  { title: '未处理预警', value: '24', unit: '条', desc: '环比新增', trend: 5, color: 'text-red', isUrgent: true, icon: '🚨' },
  { title: '严重预警', value: '5', unit: '条', desc: '较昨日', trend: 2, color: 'text-red', isUrgent: true, icon: '🛑' },
  { title: '中度预警', value: '12', unit: '条', desc: '较昨日', trend: -3, color: 'text-yellow', isUrgent: false, icon: '⚠️' },
  { title: '轻度预警', value: '7', unit: '条', desc: '较昨日', trend: 0, color: 'text-blue', isUrgent: false, icon: 'ℹ️' },
  { title: '平均处理', value: '2.5', unit: '小时', desc: '处理提速', trend: -0.5, color: 'text-green', isUrgent: false, icon: '⏱️' },
  { title: '预警消除率', value: '92', unit: '%', desc: '消除率', trend: 1.5, color: 'text-green', isUrgent: false, icon: '✅' }
])

const deptRank = ref([
  { name: '儿科', count: 8 },
  { name: '骨科', count: 6 },
  { name: '急诊科', count: 4 },
  { name: '呼吸内科', count: 3 },
  { name: '药剂科', count: 3 }
])

const eventList = ref([
  { time: '10:05', level: 'danger', levelText: '严重', type: '医疗质量', desc: '骨科发生手术并发症预警，请核查！' },
  { time: '09:30', level: 'danger', levelText: '严重', type: '资源配置', desc: '儿科床位使用率达98%，建议分流。' },
  { time: '08:15', level: 'warning', levelText: '中度', type: '财务管控', desc: '药剂科本月成本超支8%。' },
  { time: '07:45', level: 'info', levelText: '轻度', type: '运营效率', desc: '普外科平均住院日偏长。' },
  { time: '06:20', level: 'danger', levelText: '严重', type: '资源配置', desc: '急诊ICU床位满负荷运转。' },
  { time: '昨日', level: 'warning', levelText: '中度', type: '医疗质量', desc: '呼吸科抗菌药使用率接近红线。' },
  { time: '昨日', level: 'warning', levelText: '中度', type: '药品耗材', desc: '骨科高值耗材异常增长。' }
])

const pieChartRef = ref(null)
const radarChartRef = ref(null)
let pieChart, radarChart

const initPieChart = () => {
  pieChart = echarts.init(pieChartRef.value)
  const option = {
    tooltip: { trigger: 'item' },
    legend: { top: 'bottom', textStyle: { color: '#a0aabf' } },
    series: [
      {
        name: '预警分类',
        type: 'pie',
        radius: ['50%', '70%'],
        center: ['50%', '40%'],
        avoidLabelOverlap: false,
        itemStyle: {
          borderRadius: 5,
          borderColor: '#030409',
          borderWidth: 2
        },
        label: { show: false, position: 'center' },
        emphasis: {
          label: { show: true, fontSize: 16, fontWeight: 'bold', color: '#fff' }
        },
        labelLine: { show: false },
        data: [
          { value: 8, name: '医疗质量', itemStyle: { color: '#ff4d4f' } },
          { value: 6, name: '运营效率', itemStyle: { color: '#faad14' } },
          { value: 5, name: '财务管控', itemStyle: { color: '#1890ff' } },
          { value: 3, name: '资源配置', itemStyle: { color: '#722ed1' } },
          { value: 2, name: '药品耗材', itemStyle: { color: '#13c2c2' } }
        ]
      }
    ]
  }
  pieChart.setOption(option)
}

const initRadarChart = () => {
  radarChart = echarts.init(radarChartRef.value)
  const option = {
    tooltip: {},
    radar: {
      indicator: [
        { name: '医疗质量', max: 10 },
        { name: '运营效率', max: 10 },
        { name: '财务管控', max: 10 },
        { name: '药品耗材', max: 10 },
        { name: '资源配置', max: 10 },
        { name: '院感控制', max: 10 }
      ],
      splitArea: { areaStyle: { color: ['rgba(0,229,255,0.05)', 'rgba(0,229,255,0.1)'] } },
      splitLine: { lineStyle: { color: 'rgba(0,229,255,0.3)' } },
      axisLine: { lineStyle: { color: 'rgba(0,229,255,0.3)' } },
      axisName: { color: '#00e5ff', fontSize: 14 }
    },
    series: [
      {
        name: '预警分布',
        type: 'radar',
        data: [
          {
            value: [8, 6, 5, 2, 3, 1],
            name: '当前预警数',
            itemStyle: { color: '#ff4d4f' },
            areaStyle: { color: 'rgba(255, 77, 79, 0.4)' }
          },
          {
            value: [3, 4, 2, 1, 1, 0],
            name: '上周同期',
            itemStyle: { color: '#faad14' },
            areaStyle: { color: 'rgba(250, 173, 20, 0.2)' }
          }
        ]
      }
    ]
  }
  radarChart.setOption(option)
}

const handleResize = () => {
  pieChart?.resize()
  radarChart?.resize()
}

onMounted(() => {
  initPieChart()
  initRadarChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  pieChart?.dispose()
  radarChart?.dispose()
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
  height: 110px;
}

.alert-card {
  flex: 1;
  padding: 15px 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  position: relative;
  overflow: hidden;
}

.breathing-light {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.1;
  pointer-events: none;
  animation: breathe 2s infinite alternate;
}
.breathing-light.text-red { background: #ff4d4f; }

@keyframes breathe {
  0% { opacity: 0; }
  100% { opacity: 0.2; }
}

.card-title { font-size: 16px; font-weight: bold; margin-bottom: 5px; }
.card-value { 
  font-size: 32px; 
  font-weight: bold; 
  font-family: "Impact", sans-serif; 
  letter-spacing: 2px;
  display: flex;
  align-items: baseline;
  gap: 5px;
}
.unit {
  font-size: 14px;
  color: var(--text-secondary);
  font-family: "PingFang SC", sans-serif;
  letter-spacing: 0;
}
.card-footer { font-size: 13px; color: var(--text-secondary); margin-top: 5px; }

.text-red { color: #ff4d4f; text-shadow: 0 0 10px rgba(255, 77, 79, 0.5); }
.text-yellow { color: #faad14; text-shadow: 0 0 10px rgba(250, 173, 20, 0.5); }
.text-blue { color: #00e5ff; text-shadow: 0 0 10px rgba(0, 229, 255, 0.5); }
.text-green { color: #52c41a; text-shadow: 0 0 10px rgba(82, 196, 26, 0.5); }
.up { color: #ff4d4f; }
.down { color: #52c41a; }

.main-content {
  flex: 1;
  display: flex;
  gap: 20px;
  height: calc(100% - 130px);
}

.left-panel {
  width: 380px;
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.chart-box-small {
  flex: 1;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.rank-card {
  flex: 1.2;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.panel-title {
  font-size: 18px;
  margin-bottom: 15px;
  padding-bottom: 10px;
  border-bottom: 1px solid rgba(0, 229, 255, 0.2);
  position: relative;
}
.panel-title::after {
  content: '';
  position: absolute;
  bottom: -1px;
  left: 0;
  width: 50px;
  height: 2px;
  background: var(--theme-color);
  box-shadow: 0 0 10px var(--theme-color);
}

.rank-list {
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  gap: 10px;
}

.rank-item {
  display: flex;
  align-items: center;
  gap: 12px;
}
.rank-num { font-weight: bold; color: var(--theme-color); width: 20px; font-size: 16px;}
.dept-name { width: 70px; color: #e6f7ff; font-size: 14px;}
.progress-bar {
  flex: 1;
  height: 8px;
  background: rgba(255,255,255,0.1);
  border-radius: 4px;
  overflow: hidden;
}
.progress-inner {
  height: 100%;
  border-radius: 4px;
  box-shadow: 0 0 5px rgba(255,255,255,0.3);
}
.count { width: 30px; text-align: right; font-size: 14px; color: #fff; }

.center-panel {
  flex: 1;
  display: flex;
  gap: 20px;
}

.chart-container-top {
  flex: 1;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.scroll-container {
  flex: 1.2;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.chart-box {
  flex: 1;
  width: 100%;
  height: 100%;
  min-height: 0;
}

.scroll-wrapper {
  flex: 1;
  overflow: hidden;
  position: relative;
  background: rgba(0, 229, 255, 0.02);
  border: 1px solid rgba(0, 229, 255, 0.1);
  padding: 10px;
  border-radius: 4px;
}

.scroll-list {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.scrolling {
  animation: scrollUp 20s linear infinite;
}
.scrolling:hover {
  animation-play-state: paused;
}

@keyframes scrollUp {
  0% { transform: translateY(0); }
  100% { transform: translateY(-50%); }
}

.event-item {
  display: flex;
  align-items: flex-start;
  gap: 10px;
  padding: 12px;
  background: rgba(255, 255, 255, 0.03);
  border-radius: 4px;
  border-left: 3px solid transparent;
  transition: background 0.3s;
}
.event-item:hover {
  background: rgba(255, 255, 255, 0.1);
}
.time { color: var(--text-secondary); font-size: 13px; white-space: nowrap; }
.level { font-size: 13px; font-weight: bold; white-space: nowrap; }
.level.danger { color: #ff4d4f; }
.level.warning { color: #faad14; }
.level.info { color: #00e5ff; }

.type { color: #1890ff; font-size: 13px; white-space: nowrap; }
.desc { color: #e6f7ff; font-size: 14px; line-height: 1.5; }
</style>
