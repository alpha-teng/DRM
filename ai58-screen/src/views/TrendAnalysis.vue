<template>
  <div class="page-container">
    <!-- 顶部时间维度切换与宏观指标 -->
    <div class="top-bar tech-panel">
      <div class="time-filters">
        <div class="filter-btn" :class="{ active: activeTime === 'week' }" @click="activeTime = 'week'">本周</div>
        <div class="filter-btn" :class="{ active: activeTime === 'month' }" @click="activeTime = 'month'">本月</div>
        <div class="filter-btn" :class="{ active: activeTime === 'quarter' }" @click="activeTime = 'quarter'">本季</div>
        <div class="filter-btn" :class="{ active: activeTime === 'year' }" @click="activeTime = 'year'">本年</div>
      </div>
      <div class="macro-kpi">
        <template v-for="(kpi, index) in macroKpiData" :key="index">
          <div class="kpi-item">
            <span class="label">{{ kpi.label }}：</span>
            <span class="value text-gradient">{{ kpi.value }}</span>
            <span class="trend" :class="kpi.trend > 0 ? 'up' : 'down'">
              {{ kpi.trend > 0 ? '↑' : '↓' }} {{ Math.abs(kpi.trend) }}%
            </span>
          </div>
          <div class="kpi-divider" v-if="index < macroKpiData.length - 1"></div>
        </template>
      </div>
    </div>

    <div class="main-content">
      <!-- 左侧科室对比排名 -->
      <div class="left-panel">
        <div class="tech-panel rank-card">
          <h3 class="panel-title text-gradient">收入同比 TOP3</h3>
          <div class="rank-list">
            <div class="rank-item" v-for="(item, i) in incomeRank" :key="'inc'+i">
              <span class="rank-num" :class="'top'+(i+1)">{{ i+1 }}</span>
              <span class="dept-name">{{ item.name }}</span>
              <span class="trend up">+{{ item.rate }}%</span>
            </div>
          </div>
        </div>

        <div class="tech-panel rank-card">
          <h3 class="panel-title text-gradient">门诊同比 TOP3</h3>
          <div class="rank-list">
            <div class="rank-item" v-for="(item, i) in clinicRank" :key="'cli'+i">
              <span class="rank-num" :class="'top'+(i+1)">{{ i+1 }}</span>
              <span class="dept-name">{{ item.name }}</span>
              <span class="trend up">+{{ item.rate }}%</span>
            </div>
          </div>
        </div>

        <div class="tech-panel rank-card">
          <h3 class="panel-title text-gradient">负增长预警科室</h3>
          <div class="rank-list">
            <div class="rank-item" v-for="(item, i) in warnRank" :key="'warn'+i">
              <span class="rank-num warn-icon">⚠️</span>
              <span class="dept-name">{{ item.name }}</span>
              <span class="trend down">{{ item.rate }}%</span>
            </div>
          </div>
        </div>
      </div>

      <!-- 右侧图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-large">
          <h3 class="panel-title text-gradient">全院核心指标同环比趋势</h3>
          <div ref="mainTrendChartRef" class="chart-box"></div>
        </div>

        <div class="bottom-charts">
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">门诊/住院转化率趋势</h3>
            <div ref="conversionChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">全院收入结构演变趋势</h3>
            <div ref="structureAreaChartRef" class="chart-box"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted, watch } from 'vue'
import * as echarts from 'echarts'

const activeTime = ref('month')

const macroKpiData = ref([
  { label: '总收入', value: '3.85亿', trend: 6.5 },
  { label: '门诊人次', value: '12.5万', trend: 8.2 },
  { label: '出院人次', value: '8,520', trend: 5.1 }
])

const incomeRank = ref([
  { name: '骨科', rate: 15.2 },
  { name: '神经外科', rate: 12.8 },
  { name: '心内科', rate: 8.5 }
])
const clinicRank = ref([
  { name: '儿科', rate: 25.4 },
  { name: '呼吸内科', rate: 18.2 },
  { name: '普外科', rate: 10.6 }
])
const warnRank = ref([
  { name: '肿瘤科', rate: -5.2 },
  { name: '消化内科', rate: -2.1 }
])

const mainTrendChartRef = ref(null)
const conversionChartRef = ref(null)
const structureAreaChartRef = ref(null)

let mainTrendChart, conversionChart, structureAreaChart

const initMainTrendChart = () => {
  mainTrendChart = echarts.init(mainTrendChartRef.value)
  const option = {
    tooltip: { trigger: 'axis' },
    legend: { textStyle: { color: '#a0aabf' }, top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: {
      type: 'category',
      boundaryGap: false,
      data: ['1日', '5日', '10日', '15日', '20日', '25日', '30日'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      name: '收入(万元)',
      nameTextStyle: { color: '#a0aabf' },
      axisLabel: { color: '#a0aabf' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)', type: 'dashed' } }
    },
    series: [
      {
        name: '本期收入',
        type: 'line',
        smooth: true,
        symbol: 'circle',
        symbolSize: 8,
        itemStyle: { color: '#00e5ff' },
        lineStyle: { width: 3, shadowColor: 'rgba(0, 229, 255, 0.5)', shadowBlur: 10 },
        data: [120, 132, 101, 134, 190, 230, 210]
      },
      {
        name: '同期收入',
        type: 'line',
        smooth: true,
        symbol: 'emptyCircle',
        symbolSize: 8,
        itemStyle: { color: '#faad14' },
        lineStyle: { width: 2, type: 'dashed' },
        data: [100, 110, 95, 120, 175, 200, 185]
      }
    ]
  }
  mainTrendChart.setOption(option)
}

const initConversionChart = () => {
  conversionChart = echarts.init(conversionChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', formatter: '{b}<br/>转化率: {c}%' },
    grid: { left: '3%', right: '4%', bottom: '3%', top: '15%', containLabel: true },
    xAxis: {
      type: 'category',
      data: ['1月', '2月', '3月', '4月', '5月', '6月'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      name: '转化率(%)',
      nameTextStyle: { color: '#a0aabf' },
      axisLabel: { color: '#a0aabf', formatter: '{value}%' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }
    },
    series: [
      {
        name: '转化率',
        type: 'line',
        smooth: true,
        symbolSize: 8,
        itemStyle: { color: '#722ed1' },
        areaStyle: {
          color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
            { offset: 0, color: 'rgba(114, 46, 209, 0.3)' },
            { offset: 1, color: 'rgba(114, 46, 209, 0)' }
          ])
        },
        data: [6.8, 7.2, 7.5, 8.1, 8.5, 8.8]
      }
    ]
  }
  conversionChart.setOption(option)
}

const initStructureAreaChart = () => {
  structureAreaChart = echarts.init(structureAreaChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'cross', label: { backgroundColor: '#6a7985' } } },
    legend: { textStyle: { color: '#a0aabf' }, top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', top: '15%', containLabel: true },
    xAxis: [
      {
        type: 'category',
        boundaryGap: false,
        data: ['1月', '2月', '3月', '4月', '5月', '6月'],
        axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
        axisLabel: { color: '#a0aabf' }
      }
    ],
    yAxis: [
      {
        type: 'value',
        axisLabel: { color: '#a0aabf' },
        splitLine: { show: false }
      }
    ],
    series: [
      {
        name: '药品收入',
        type: 'line',
        stack: 'Total',
        areaStyle: {},
        emphasis: { focus: 'series' },
        itemStyle: { color: '#00e5ff' },
        data: [120, 132, 101, 134, 90, 230]
      },
      {
        name: '检查收入',
        type: 'line',
        stack: 'Total',
        areaStyle: {},
        emphasis: { focus: 'series' },
        itemStyle: { color: '#1890ff' },
        data: [220, 182, 191, 234, 290, 330]
      },
      {
        name: '手术收入',
        type: 'line',
        stack: 'Total',
        areaStyle: {},
        emphasis: { focus: 'series' },
        itemStyle: { color: '#722ed1' },
        data: [150, 232, 201, 154, 190, 330]
      }
    ]
  }
  structureAreaChart.setOption(option)
}

const updateData = () => {
  let multiplier = 1
  if (activeTime.value === 'month') multiplier = 4
  else if (activeTime.value === 'quarter') multiplier = 12
  else if (activeTime.value === 'year') multiplier = 48

  // Update Macro KPIs
  macroKpiData.value = [
    { label: '总收入', value: ((Math.random() * 0.5 + 0.8) * multiplier).toFixed(2) + '亿', trend: (Math.random() * 20 - 5).toFixed(1) },
    { label: '门诊人次', value: ((Math.random() * 2 + 3) * multiplier).toFixed(1) + '万', trend: (Math.random() * 15 - 3).toFixed(1) },
    { label: '出院人次', value: Math.floor((Math.random() * 1000 + 1500) * multiplier), trend: (Math.random() * 10 - 2).toFixed(1) }
  ]

  // Update Ranks
  incomeRank.value.forEach(item => { item.rate = (Math.random() * 20 + 5).toFixed(1) })
  clinicRank.value.forEach(item => { item.rate = (Math.random() * 30 + 5).toFixed(1) })
  warnRank.value.forEach(item => { item.rate = (Math.random() * -10 - 1).toFixed(1) })

  // Update Charts
  if (mainTrendChart) {
    let xAxisData = []
    if (activeTime.value === 'week') xAxisData = ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
    else if (activeTime.value === 'month') xAxisData = ['1日', '5日', '10日', '15日', '20日', '25日', '30日']
    else if (activeTime.value === 'quarter') xAxisData = ['第1周', '第3周', '第5周', '第7周', '第9周', '第11周', '第13周']
    else xAxisData = ['1月', '3月', '5月', '7月', '9月', '11月', '12月']

    mainTrendChart.setOption({
      xAxis: { data: xAxisData },
      series: [
        { data: Array.from({length: 7}, () => Math.floor((Math.random() * 50 + 80) * (multiplier / 4))) },
        { data: Array.from({length: 7}, () => Math.floor((Math.random() * 50 + 70) * (multiplier / 4))) }
      ]
    })
  }

  if (conversionChart) {
    let xAxisData = []
    if (activeTime.value === 'week') xAxisData = ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
    else if (activeTime.value === 'month') xAxisData = ['1日', '5日', '10日', '15日', '20日', '25日', '30日']
    else if (activeTime.value === 'quarter') xAxisData = ['第1周', '第3周', '第5周', '第7周', '第9周', '第11周', '第13周']
    else xAxisData = ['1月', '3月', '5月', '7月', '9月', '11月', '12月']

    conversionChart.setOption({
      xAxis: { data: xAxisData.slice(0, 6) },
      series: [
        { data: Array.from({length: 6}, () => (Math.random() * 5 + 5).toFixed(1)) }
      ]
    })
  }

  if (structureAreaChart) {
    let xAxisData = []
    if (activeTime.value === 'week') xAxisData = ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
    else if (activeTime.value === 'month') xAxisData = ['1日', '5日', '10日', '15日', '20日', '25日', '30日']
    else if (activeTime.value === 'quarter') xAxisData = ['第1周', '第3周', '第5周', '第7周', '第9周', '第11周', '第13周']
    else xAxisData = ['1月', '3月', '5月', '7月', '9月', '11月', '12月']

    structureAreaChart.setOption({
      xAxis: [{ data: xAxisData.slice(0, 6) }],
      series: [
        { data: Array.from({length: 6}, () => Math.floor((Math.random() * 50 + 50) * (multiplier / 4))) },
        { data: Array.from({length: 6}, () => Math.floor((Math.random() * 50 + 100) * (multiplier / 4))) },
        { data: Array.from({length: 6}, () => Math.floor((Math.random() * 50 + 80) * (multiplier / 4))) }
      ]
    })
  }
}

watch(activeTime, () => {
  updateData()
})

const handleResize = () => {
  mainTrendChart?.resize()
  conversionChart?.resize()
  structureAreaChart?.resize()
}

onMounted(() => {
  initMainTrendChart()
  initConversionChart()
  initStructureAreaChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  mainTrendChart?.dispose()
  conversionChart?.dispose()
  structureAreaChart?.dispose()
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

.top-bar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px 30px;
  height: 70px;
}

.time-filters {
  display: flex;
  background: rgba(0, 229, 255, 0.05);
  border-radius: 4px;
  border: 1px solid rgba(0, 229, 255, 0.2);
  padding: 4px;
}
.filter-btn {
  padding: 6px 20px;
  color: #a0aabf;
  cursor: pointer;
  border-radius: 4px;
  transition: all 0.3s;
  font-size: 14px;
}
.filter-btn:hover { color: #e6f7ff; }
.filter-btn.active {
  background: rgba(0, 229, 255, 0.2);
  color: #00e5ff;
  font-weight: bold;
}

.macro-kpi {
  display: flex;
  align-items: center;
  gap: 25px;
}
.kpi-item { display: flex; align-items: baseline; gap: 8px; }
.label { color: #a0aabf; font-size: 14px; }
.value { font-size: 24px; font-weight: bold; font-family: "Impact", sans-serif; }
.trend { font-size: 13px; font-weight: bold; }
.trend.up { color: #ff4d4f; }
.trend.down { color: #52c41a; }
.kpi-divider { width: 1px; height: 20px; background: rgba(255,255,255,0.1); }

.main-content {
  flex: 1;
  display: flex;
  gap: 20px;
  height: calc(100% - 90px);
}

.left-panel {
  width: 380px;
  display: flex;
  flex-direction: column;
  gap: 20px;
}
.rank-card {
  flex: 1;
  padding: 20px;
  display: flex;
  flex-direction: column;
}
.panel-title {
  font-size: 16px;
  margin-bottom: 15px;
  padding-bottom: 10px;
  border-bottom: 1px solid rgba(0, 229, 255, 0.2);
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
  padding: 10px 15px;
  background: rgba(255, 255, 255, 0.02);
  border-radius: 4px;
  transition: background 0.3s;
}
.rank-item:hover { background: rgba(0, 229, 255, 0.05); }

.rank-num {
  width: 24px; height: 24px;
  line-height: 24px; text-align: center;
  border-radius: 4px;
  background: rgba(255,255,255,0.1);
  color: #e6f7ff; font-weight: bold; font-size: 13px;
  margin-right: 15px;
}
.rank-num.top1 { background: #ff4d4f; }
.rank-num.top2 { background: #faad14; }
.rank-num.top3 { background: #1890ff; }
.warn-icon { background: transparent; font-size: 16px; }

.dept-name { flex: 1; color: #e6f7ff; font-size: 15px; }

.center-panel {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.chart-container-large {
  flex: 1.5;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.bottom-charts {
  flex: 1;
  display: flex;
  gap: 20px;
}
.chart-half {
  flex: 1;
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
</style>
