<template>
  <div class="page-container">
    <!-- 顶部KPI卡片 -->
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
      <!-- 左侧成本结构与异常预警 -->
      <div class="left-panel tech-panel">
        <h3 class="panel-title text-gradient">📊 成本构成</h3>
        <div class="structure-list mb-20">
          <div class="list-item" v-for="(item, i) in structureData" :key="i">
            <span class="label">{{ item.label }}</span>
            <span class="val">{{ item.val }}%</span>
            <div class="mini-bar">
              <div class="mini-bar-fill" :style="{ width: item.val + '%' }"></div>
            </div>
          </div>
        </div>

        <h3 class="panel-title text-gradient">⚠️ 成本预警</h3>
        <div class="alert-list mb-20">
          <div class="alert-item" v-for="(alert, i) in alertData" :key="i">
            <span class="dot" :class="alert.level"></span>
            <span class="text">{{ alert.text }}</span>
          </div>
        </div>

        <div class="ai-box">
          <div class="ai-title"><i class="icon">🤖</i> AI 成本优化建议</div>
          <div class="ai-content">
            <strong>选中：骨科</strong><br/>
            💡 建议：<br/>
            • 启动集中采购谈判，重点压低植入物耗材价格。<br/>
            • 优化临床路径，避免不必要的术前高值检查。<br/>
            • 推广加速康复外科（ERAS），缩短住院天数。
          </div>
        </div>
      </div>

      <!-- 右侧图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">全院各项成本趋势分析</h3>
          <div ref="trendChartRef" class="chart-box"></div>
        </div>

        <div class="middle-charts">
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">四级分摊核算结构（桑基图）</h3>
            <div ref="sankeyChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">科室成本率对比</h3>
            <div ref="rateChartRef" class="chart-box"></div>
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
  { title: '本月总成本', value: '3.28', unit: '亿元', trend: '↑ 3.2%', status: 'up', icon: '💴' },
  { title: '成本率', value: '85.2', unit: '%', trend: '↑ 2.1%', status: 'up', icon: '📉' },
  { title: '人员成本', value: '1.15', unit: '亿元', trend: '↑ 2.5%', status: 'up', icon: '👨‍⚕️' },
  { title: '药品成本', value: '0.92', unit: '亿元', trend: '↑ 1.8%', status: 'up', icon: '💊' },
  { title: '材料成本', value: '0.72', unit: '亿元', trend: '↑ 3.5%', status: 'up', icon: '🧰' },
  { title: '成本异常', value: '5', unit: '个', trend: '🔴 预警', status: 'danger', icon: '⚠️' }
])

const structureData = ref([
  { label: '人员', val: 35 },
  { label: '药品', val: 28 },
  { label: '材料', val: 22 },
  { label: '折旧', val: 10 },
  { label: '其他', val: 5 }
])

const alertData = ref([
  { text: '药剂科成本超支 8%', level: 'danger' },
  { text: '设备科成本超支 12%', level: 'danger' },
  { text: '后勤成本上升 6%', level: 'warning' },
  { text: '骨科材料成本上升 15%', level: 'warning' }
])

const trendChartRef = ref(null)
const sankeyChartRef = ref(null)
const rateChartRef = ref(null)

let trendChart, sankeyChart, rateChart

const initTrendChart = () => {
  trendChart = echarts.init(trendChartRef.value)
  const option = {
    tooltip: { trigger: 'axis' },
    legend: { textStyle: { color: '#a0aabf' }, top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: {
      type: 'category',
      boundaryGap: false,
      data: ['1月', '2月', '3月', '4月', '5月', '6月'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      name: '成本(亿元)',
      nameTextStyle: { color: '#a0aabf' },
      axisLabel: { color: '#a0aabf' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)', type: 'dashed' } }
    },
    series: [
      {
        name: '总成本',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#00e5ff' },
        lineStyle: { width: 4 },
        data: [2.9, 2.7, 3.2, 3.0, 3.28, 3.4]
      },
      {
        name: '人员成本',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#faad14' },
        data: [1.0, 1.0, 1.05, 1.1, 1.15, 1.15]
      },
      {
        name: '药品成本',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#ff4d4f' },
        data: [0.85, 0.82, 0.9, 0.88, 0.92, 0.95]
      },
      {
        name: '材料成本',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#722ed1' },
        data: [0.6, 0.58, 0.65, 0.68, 0.72, 0.75]
      }
    ]
  }
  trendChart.setOption(option)
}

const initSankeyChart = () => {
  sankeyChart = echarts.init(sankeyChartRef.value)
  const option = {
    tooltip: { trigger: 'item', triggerOn: 'mousemove' },
    series: [
      {
        type: 'sankey',
        data: [
          { name: '总成本' },
          { name: '直接成本' },
          { name: '间接成本' },
          { name: '临床科室分摊' },
          { name: '医技科室分摊' },
          { name: '行政后勤分摊' }
        ],
        links: [
          { source: '总成本', target: '直接成本', value: 285 },
          { source: '总成本', target: '间接成本', value: 43 },
          { source: '直接成本', target: '临床科室分摊', value: 250 },
          { source: '直接成本', target: '医技科室分摊', value: 35 },
          { source: '间接成本', target: '行政后勤分摊', value: 43 },
          { source: '行政后勤分摊', target: '临床科室分摊', value: 25 },
          { source: '行政后勤分摊', target: '医技科室分摊', value: 18 }
        ],
        itemStyle: { borderWidth: 0, borderColor: '#1a1a1a' },
        lineStyle: { color: 'source', curveness: 0.5, opacity: 0.4 },
        label: { color: '#fff', fontSize: 12 }
      }
    ]
  }
  sankeyChart.setOption(option)
}

const initRateChart = () => {
  rateChart = echarts.init(rateChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    legend: { textStyle: { color: '#a0aabf' }, top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: {
      type: 'category',
      data: ['骨科', '心内科', '神经外科', '普外科', '儿科', '呼吸科', '全院平均'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      name: '成本率(%)',
      nameTextStyle: { color: '#a0aabf' },
      axisLabel: { color: '#a0aabf', formatter: '{value}%' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }
    },
    series: [
      {
        name: '成本率',
        type: 'bar',
        barWidth: 20,
        itemStyle: {
          color: (params) => {
            if (params.value > 100) return '#ff4d4f'
            if (params.value > 90) return '#faad14'
            return '#00e5ff'
          },
          borderRadius: [4, 4, 0, 0]
        },
        label: { show: true, position: 'top', color: '#fff', formatter: '{c}%' },
        data: [73.7, 83.3, 85.7, 84.2, 120.0, 92.4, 85.2]
      },
      {
        name: '警戒线',
        type: 'line',
        itemStyle: { color: '#ff4d4f' },
        lineStyle: { type: 'dashed', width: 2 },
        markLine: {
          data: [{ yAxis: 100, name: '亏损线' }],
          lineStyle: { color: '#ff4d4f' },
          label: { color: '#ff4d4f', formatter: '亏损线 100%' }
        }
      }
    ]
  }
  rateChart.setOption(option)
}

const handleResize = () => {
  trendChart?.resize()
  sankeyChart?.resize()
  rateChart?.resize()
}

onMounted(() => {
  initTrendChart()
  initSankeyChart()
  initRateChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  trendChart?.dispose()
  sankeyChart?.dispose()
  rateChart?.dispose()
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

.structure-list {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.list-item {
  display: flex;
  align-items: center;
  gap: 10px;
}
.list-item .label { width: 40px; color: #e6f7ff; font-size: 13px; }
.list-item .val { width: 35px; color: #fff; font-weight: bold; font-size: 13px; }
.mini-bar {
  flex: 1;
  height: 6px;
  background: rgba(255,255,255,0.1);
  border-radius: 3px;
  overflow: hidden;
}
.mini-bar-fill {
  height: 100%;
  background: var(--theme-color);
  border-radius: 3px;
}

.alert-list {
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.alert-item {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 10px;
  background: rgba(255,255,255,0.03);
  border-radius: 4px;
}
.dot { width: 8px; height: 8px; border-radius: 50%; }
.dot.danger { background: #ff4d4f; box-shadow: 0 0 8px #ff4d4f; }
.dot.warning { background: #faad14; box-shadow: 0 0 8px #faad14; }
.alert-item .text { color: #a0aabf; font-size: 13px; }

.ai-box {
  background: rgba(0, 229, 255, 0.05);
  border: 1px dashed rgba(0, 229, 255, 0.4);
  padding: 15px;
  border-radius: 4px;
  margin-top: auto;
}
.ai-title { color: #00e5ff; font-weight: bold; margin-bottom: 8px; font-size: 14px; }
.ai-content { color: #a0aabf; font-size: 13px; line-height: 1.6; }
.ai-content strong { color: #fff; }

.center-panel {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.chart-container-top {
  flex: 1;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.middle-charts {
  flex: 1.2;
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
