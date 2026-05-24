<template>
  <div class="page-container">
    <!-- 顶部核心指标卡片 -->
    <div class="top-cards">
      <div class="tech-panel card" v-for="(kpi, index) in kpiData" :key="index">
        <div class="card-title text-gradient"><span class="kpi-icon">{{ kpi.icon }}</span> {{ kpi.title }}</div>
        <div class="card-value">{{ kpi.value }}<span class="unit">{{ kpi.unit }}</span></div>
        <div class="card-footer" :class="kpi.status">
          {{ kpi.trend }}
        </div>
      </div>
    </div>

    <div class="main-content">
      <!-- 左侧病组列表 -->
      <div class="left-panel tech-panel">
        <h3 class="panel-title text-gradient">💰 盈利病组 TOP5</h3>
        <div class="group-list mb-20">
          <div class="group-item" v-for="(item, i) in profitGroups" :key="'p'+i">
            <div class="group-header">
              <span class="code">{{ item.code }}</span>
              <span class="name">{{ item.name }}</span>
            </div>
            <div class="group-data">
              <span class="val up">+{{ item.val }}万</span>
            </div>
          </div>
        </div>

        <h3 class="panel-title text-gradient">💸 亏损病组 TOP5</h3>
        <div class="group-list mb-20">
          <div class="group-item" v-for="(item, i) in lossGroups" :key="'l'+i">
            <div class="group-header">
              <span class="code">{{ item.code }}</span>
              <span class="name">{{ item.name }}</span>
            </div>
            <div class="group-data">
              <span class="val down">{{ item.val }}万</span>
            </div>
          </div>
        </div>

        <div class="ai-box">
          <div class="ai-title"><i class="icon">🤖</i> AI诊断：FM23 严重亏损</div>
          <div class="ai-content">
            主因：支架材料成本上升（超出行业均值 23%）。<br/>
            建议：优化耗材采购谈判，目标降低10%成本；加强临床路径管理。
          </div>
        </div>
      </div>

      <!-- 右侧图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">DRG盈亏趋势与入组分布</h3>
          <div ref="trendChartRef" class="chart-box"></div>
        </div>

        <div class="bottom-charts">
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">盈利病组结余分析</h3>
            <div ref="profitBarRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">亏损病组金额分析</h3>
            <div ref="lossBarRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">重点科室DRG能力雷达</h3>
            <div ref="radarChartRef" class="chart-box"></div>
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
  { title: 'CMI值', value: '1.05', unit: '', trend: '↑ 0.03', status: 'up', icon: '🌟' },
  { title: '入组率', value: '97.2', unit: '%', trend: '↑ 1.2%', status: 'up', icon: '📥' },
  { title: '结余率', value: '68.5', unit: '%', trend: '↑ 2.5%', status: 'up', icon: '📈' },
  { title: '盈利病组', value: '425', unit: '组', trend: '↑ 12组', status: 'up', icon: '😊' },
  { title: '亏损病组', value: '196', unit: '组', trend: '↓ 5组', status: 'down', icon: '😢' },
  { title: '时间费用指数', value: '0.98', unit: '', trend: '优于标准', status: 'normal', icon: '⏱️' }
])

const profitGroups = ref([
  { code: 'FL11', name: '骨科植入', val: '2300' },
  { code: 'FM19', name: '心内介入', val: '1800' },
  { code: 'BS15', name: '神经外手术', val: '1500' },
  { code: 'AA15', name: '呼吸重症', val: '1200' },
  { code: 'GC15', name: '消化大手术', val: '950' }
])

const lossGroups = ref([
  { code: 'FM23', name: '支架植入', val: '-1800' },
  { code: 'FL19', name: '脊柱内固定', val: '-1200' },
  { code: 'BM19', name: '起搏器植入', val: '-850' },
  { code: 'AM15', name: '长程呼吸机', val: '-600' },
  { code: 'KM15', name: '血液透析', val: '-450' }
])

const trendChartRef = ref(null)
const profitBarRef = ref(null)
const lossBarRef = ref(null)
const radarChartRef = ref(null)

let trendChart, profitBar, lossBar, radarChart

const initTrendChart = () => {
  trendChart = echarts.init(trendChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'cross' } },
    legend: { textStyle: { color: '#a0aabf' }, top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: [
      {
        type: 'category',
        boundaryGap: false,
        data: ['1月', '2月', '3月', '4月', '5月'],
        axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
        axisLabel: { color: '#a0aabf' }
      }
    ],
    yAxis: [
      {
        type: 'value',
        axisLabel: { color: '#a0aabf', formatter: '{value}%' },
        splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }
      }
    ],
    series: [
      {
        name: '盈利病组占比',
        type: 'line',
        stack: 'Total',
        areaStyle: {},
        emphasis: { focus: 'series' },
        itemStyle: { color: '#00e5ff' },
        data: [62, 63, 65, 67, 68.5]
      },
      {
        name: '持平病组占比',
        type: 'line',
        stack: 'Total',
        areaStyle: {},
        emphasis: { focus: 'series' },
        itemStyle: { color: '#faad14' },
        data: [15, 14, 13, 12, 11]
      },
      {
        name: '亏损病组占比',
        type: 'line',
        stack: 'Total',
        areaStyle: {},
        emphasis: { focus: 'series' },
        itemStyle: { color: '#ff4d4f' },
        data: [23, 23, 22, 21, 20.5]
      }
    ]
  }
  trendChart.setOption(option)
}

const initProfitBar = () => {
  profitBar = echarts.init(profitBarRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '15%', bottom: '3%', top: '5%', containLabel: true },
    xAxis: { type: 'value', show: false },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['FL11', 'FM19', 'BS15', 'AA15', 'GC15'],
      axisLine: { show: false },
      axisTick: { show: false },
      axisLabel: { color: '#a0aabf' }
    },
    series: [
      {
        name: '结余(万元)',
        type: 'bar',
        barWidth: 12,
        itemStyle: {
          color: new echarts.graphic.LinearGradient(1, 0, 0, 0, [
            { offset: 0, color: '#00e5ff' },
            { offset: 1, color: 'rgba(0, 229, 255, 0.1)' }
          ]),
          borderRadius: [0, 6, 6, 0]
        },
        label: { show: true, position: 'right', color: '#00e5ff', formatter: '+{c}' },
        data: [2300, 1800, 1500, 1200, 950]
      }
    ]
  }
  profitBar.setOption(option)
}

const initLossBar = () => {
  lossBar = echarts.init(lossBarRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '15%', bottom: '3%', top: '5%', containLabel: true },
    xAxis: { type: 'value', show: false },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['FM23', 'FL19', 'BM19', 'AM15', 'KM15'],
      axisLine: { show: false },
      axisTick: { show: false },
      axisLabel: { color: '#a0aabf' }
    },
    series: [
      {
        name: '亏损(万元)',
        type: 'bar',
        barWidth: 12,
        itemStyle: {
          color: new echarts.graphic.LinearGradient(1, 0, 0, 0, [
            { offset: 0, color: '#ff4d4f' },
            { offset: 1, color: 'rgba(255, 77, 79, 0.1)' }
          ]),
          borderRadius: [0, 6, 6, 0]
        },
        label: { show: true, position: 'right', color: '#ff4d4f', formatter: '{c}' },
        data: [-1800, -1200, -850, -600, -450]
      }
    ]
  }
  lossBar.setOption(option)
}

const initRadarChart = () => {
  radarChart = echarts.init(radarChartRef.value)
  const option = {
    tooltip: {},
    legend: { data: ['骨科', '心内科'], top: 0, textStyle: { color: '#a0aabf' } },
    radar: {
      indicator: [
        { name: 'CMI值', max: 1.5 },
        { name: '入组率', max: 100 },
        { name: '结余率', max: 30 },
        { name: '时间消耗', max: 1.5 },
        { name: '费用消耗', max: 1.5 },
        { name: '并发症', max: 5 }
      ],
      splitArea: { areaStyle: { color: ['rgba(0,229,255,0.02)', 'rgba(0,229,255,0.08)'] } },
      axisName: { color: '#00e5ff' }
    },
    series: [
      {
        name: '科室对比',
        type: 'radar',
        data: [
          {
            value: [1.25, 98, 26, 0.9, 0.85, 1],
            name: '骨科',
            itemStyle: { color: '#00e5ff' },
            areaStyle: { color: 'rgba(0, 229, 255, 0.3)' }
          },
          {
            value: [1.18, 96, 16, 1.1, 1.05, 2],
            name: '心内科',
            itemStyle: { color: '#faad14' },
            areaStyle: { color: 'rgba(250, 173, 20, 0.3)' }
          }
        ]
      }
    ]
  }
  radarChart.setOption(option)
}

const handleResize = () => {
  trendChart?.resize()
  profitBar?.resize()
  lossBar?.resize()
  radarChart?.resize()
}

onMounted(() => {
  initTrendChart()
  initProfitBar()
  initLossBar()
  initRadarChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  trendChart?.dispose()
  profitBar?.dispose()
  lossBar?.dispose()
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
  height: 100px;
}

.card {
  flex: 1;
  padding: 12px 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.card-title { font-size: 15px; font-weight: bold; margin-bottom: 5px; }
.card-value { 
  font-size: 28px; 
  font-weight: bold; 
  color: #fff;
  font-family: "Impact", sans-serif; 
  letter-spacing: 1px;
}
.unit { font-size: 13px; color: var(--text-secondary); margin-left: 4px; font-family: "PingFang SC", sans-serif; }
.card-footer { font-size: 14px; margin-top: 4px; }
.card-footer.up { color: #ff4d4f; }
.card-footer.down { color: #52c41a; }
.card-footer.normal { color: #00e5ff; }

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

.group-list {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.group-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background: rgba(255,255,255,0.03);
  border-radius: 4px;
}
.group-header { display: flex; align-items: center; gap: 10px; }
.code { font-weight: bold; color: var(--theme-color); font-size: 14px; }
.name { color: #e6f7ff; font-size: 14px; }
.val { font-weight: bold; font-family: "Impact", sans-serif; }
.val.up { color: #ff4d4f; }
.val.down { color: #52c41a; }

.ai-box {
  background: rgba(0, 229, 255, 0.05);
  border: 1px dashed rgba(0, 229, 255, 0.4);
  padding: 12px;
  border-radius: 4px;
  margin-top: auto;
}
.ai-title { color: #00e5ff; font-weight: bold; margin-bottom: 5px; font-size: 14px; }
.ai-content { color: #a0aabf; font-size: 13px; line-height: 1.6; }

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

.bottom-charts {
  flex: 1;
  display: flex;
  gap: 20px;
}

.chart-third {
  flex: 1;
  padding: 15px;
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
