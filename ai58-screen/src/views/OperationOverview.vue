<template>
  <div class="page-container">
    <div class="top-cards">
      <div class="tech-panel card" v-for="(kpi, index) in kpiData" :key="index">
        <div class="card-title text-gradient"><span class="kpi-icon">{{ kpi.icon }}</span> {{ kpi.title }}</div>
        <div class="card-value">{{ kpi.value }}<span class="unit">{{ kpi.unit }}</span></div>
        <div class="card-footer" :class="kpi.trend > 0 ? 'up' : 'down'">
          同比 {{ kpi.trend > 0 ? '↑' : '↓' }} {{ Math.abs(kpi.trend) }}%
        </div>
      </div>
    </div>
    
    <div class="main-content">
      <!-- 左侧预警栏 -->
      <div class="tech-panel left-panel">
        <h3 class="panel-title text-gradient">智能预警中心</h3>
        
        <div class="alert-section">
          <h4 class="alert-type"><span class="dot red"></span>严重预警</h4>
          <div class="alert-item red-bg">
            <div class="alert-title">儿科床位使用率 98%</div>
            <div class="alert-desc">流感季爆发，床位严重不足，已持续3天。</div>
          </div>
          <div class="alert-item red-bg">
            <div class="alert-title">药剂科成本超支 8%</div>
            <div class="alert-desc">新药采购成本上升，需审核使用合理性。</div>
          </div>
        </div>

        <div class="alert-section">
          <h4 class="alert-type"><span class="dot yellow"></span>中度预警</h4>
          <div class="alert-item yellow-bg">
            <div class="alert-title">骨科耗材占比 65%</div>
            <div class="alert-desc">本月骨科耗材占比超过60%红线，请关注。</div>
          </div>
          <div class="alert-item yellow-bg">
            <div class="alert-title">心内科医师超负荷</div>
            <div class="alert-desc">人均管理床位超过15张，可能影响医疗质量。</div>
          </div>
        </div>
        
        <div class="ai-suggestion">
          <h4 class="ai-title"><i class="icon-ai">🤖</i> AI调度建议</h4>
          <p>分析当前全院床位资源，普外科目前空置床位 12 张。建议：<br/><strong>临时调配普外科 5 张床位收治儿科轻症患者，以缓解儿科压力。</strong></p>
        </div>
      </div>

      <!-- 中间图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container">
          <h3 class="panel-title text-gradient">全院收入与业务量趋势</h3>
          <div ref="trendChartRef" class="chart-box"></div>
        </div>
        <div class="bottom-charts">
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">科室收入排名 TOP10</h3>
            <div ref="rankChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">医疗收入结构分析</h3>
            <div ref="structureChartRef" class="chart-box"></div>
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
  { title: '医疗收入', value: '3.85', unit: '亿元', trend: 6.5, icon: '💰' },
  { title: '门诊人次', value: '12.5', unit: '万人', trend: 8.2, icon: '🏥' },
  { title: '出院人次', value: '8,520', unit: '人', trend: 5.1, icon: '🛏️' },
  { title: '手术台次', value: '3,250', unit: '台', trend: 12.0, icon: '🔪' },
  { title: '平均住院', value: '7.2', unit: '天', trend: -4.1, icon: '⏳' },
  { title: '床位使用率', value: '92.5', unit: '%', trend: 2.1, icon: '📊' }
])

const trendChartRef = ref(null)
const rankChartRef = ref(null)
const structureChartRef = ref(null)

let trendChart, rankChart, structureChart

const initTrendChart = () => {
  trendChart = echarts.init(trendChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'cross' } },
    legend: { textStyle: { color: '#a0aabf' }, top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: {
      type: 'category',
      data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: [
      {
        type: 'value',
        name: '收入(千万)',
        nameTextStyle: { color: '#a0aabf' },
        axisLabel: { color: '#a0aabf' },
        splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }
      },
      {
        type: 'value',
        name: '门诊(万人)',
        nameTextStyle: { color: '#a0aabf' },
        axisLabel: { color: '#a0aabf' },
        splitLine: { show: false }
      }
    ],
    series: [
      {
        name: '门诊人次',
        type: 'bar',
        yAxisIndex: 1,
        barWidth: '30%',
        itemStyle: {
          color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
            { offset: 0, color: 'rgba(0, 229, 255, 0.8)' },
            { offset: 1, color: 'rgba(0, 229, 255, 0.1)' }
          ]),
          borderRadius: [4, 4, 0, 0]
        },
        data: [11.2, 9.8, 13.5, 12.8, 12.5, 14.2, 15.1, 14.8, 13.0, 12.5, 11.8, 12.2]
      },
      {
        name: '医疗收入',
        type: 'line',
        smooth: true,
        symbol: 'circle',
        symbolSize: 8,
        itemStyle: { color: '#00e5ff' },
        lineStyle: { width: 3, shadowColor: 'rgba(0, 229, 255, 0.5)', shadowBlur: 10 },
        areaStyle: {
          color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
            { offset: 0, color: 'rgba(0, 229, 255, 0.3)' },
            { offset: 1, color: 'rgba(0, 229, 255, 0)' }
          ])
        },
        data: [3.2, 2.8, 3.9, 3.6, 3.85, 4.1, 4.3, 4.2, 3.8, 3.7, 3.5, 3.6]
      }
    ]
  }
  trendChart.setOption(option)
}

const initRankChart = () => {
  rankChart = echarts.init(rankChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '10%', bottom: '3%', top: '5%', containLabel: true },
    xAxis: { type: 'value', show: false },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['骨科', '心内科', '神经外科', '普外科', '肿瘤科', '呼吸科', '消化科', '妇产科', '儿科', '泌尿外科'],
      axisLine: { show: false },
      axisTick: { show: false },
      axisLabel: { color: '#a0aabf', fontSize: 13 }
    },
    series: [
      {
        name: '收入(万元)',
        type: 'bar',
        barWidth: 15,
        itemStyle: {
          color: new echarts.graphic.LinearGradient(1, 0, 0, 0, [
            { offset: 0, color: '#00e5ff' },
            { offset: 1, color: 'rgba(0, 229, 255, 0.1)' }
          ]),
          borderRadius: [0, 8, 8, 0]
        },
        label: {
          show: true,
          position: 'right',
          color: '#fff',
          formatter: '{c}万'
        },
        data: [5700, 4200, 2800, 1900, 1200, 920, 780, 620, 400, 380]
      }
    ]
  }
  rankChart.setOption(option)
}

const initStructureChart = () => {
  structureChart = echarts.init(structureChartRef.value)
  const option = {
    tooltip: { trigger: 'item', formatter: '{b} : {c}亿元 ({d}%)' },
    legend: { top: 'bottom', textStyle: { color: '#a0aabf' } },
    series: [
      {
        name: '收入结构',
        type: 'pie',
        radius: ['40%', '70%'],
        center: ['50%', '45%'],
        roseType: 'radius',
        itemStyle: {
          borderRadius: 5,
          borderColor: '#030409',
          borderWidth: 2
        },
        label: { show: true, color: '#fff' },
        data: [
          { value: 1.23, name: '药品收入', itemStyle: { color: '#00e5ff' } },
          { value: 1.08, name: '手术收入', itemStyle: { color: '#1890ff' } },
          { value: 0.96, name: '检查收入', itemStyle: { color: '#722ed1' } },
          { value: 0.38, name: '化验收入', itemStyle: { color: '#eb2f96' } },
          { value: 0.20, name: '耗材收入', itemStyle: { color: '#fa8c16' } }
        ]
      }
    ]
  }
  structureChart.setOption(option)
}

const handleResize = () => {
  trendChart?.resize()
  rankChart?.resize()
  structureChart?.resize()
}

onMounted(() => {
  initTrendChart()
  initRankChart()
  initStructureChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  trendChart?.dispose()
  rankChart?.dispose()
  structureChart?.dispose()
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

.card {
  flex: 1;
  padding: 15px 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  position: relative;
  overflow: hidden;
}

.card::before {
  content: '';
  position: absolute;
  top: -20px;
  right: -20px;
  width: 60px;
  height: 60px;
  background: radial-gradient(circle, rgba(0,229,255,0.2) 0%, transparent 70%);
  border-radius: 50%;
}

.card-title { font-size: 16px; font-weight: bold; margin-bottom: 5px; }
.card-value { 
  font-size: 32px; 
  color: #fff; 
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
.card-footer { font-size: 14px; margin-top: 5px; }
.card-footer.up { color: var(--red-alert); }
.card-footer.down { color: var(--green-alert); }

.main-content {
  flex: 1;
  display: flex;
  gap: 20px;
  height: calc(100% - 130px);
}

.left-panel {
  width: 380px;
  padding: 20px;
  display: flex;
  flex-direction: column;
  gap: 15px;
  overflow-y: auto;
}
.left-panel::-webkit-scrollbar { width: 4px; }
.left-panel::-webkit-scrollbar-thumb { background: rgba(0, 229, 255, 0.3); border-radius: 4px; }

.panel-title {
  font-size: 18px;
  margin-bottom: 5px;
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

.alert-section { margin-bottom: 10px; }
.alert-type { font-size: 16px; color: #fff; display: flex; align-items: center; gap: 8px; margin-bottom: 10px; }
.dot { width: 8px; height: 8px; border-radius: 50%; }
.dot.red { background: var(--red-alert); box-shadow: 0 0 8px var(--red-alert); }
.dot.yellow { background: #faad14; box-shadow: 0 0 8px #faad14; }

.alert-item {
  padding: 12px;
  border-radius: 4px;
  margin-bottom: 10px;
  border-left: 3px solid transparent;
}
.alert-item.red-bg {
  background: linear-gradient(90deg, rgba(255, 77, 79, 0.15) 0%, rgba(255, 77, 79, 0.05) 100%);
  border-left-color: var(--red-alert);
}
.alert-item.yellow-bg {
  background: linear-gradient(90deg, rgba(250, 173, 20, 0.15) 0%, rgba(250, 173, 20, 0.05) 100%);
  border-left-color: #faad14;
}

.alert-title { font-size: 14px; color: #fff; font-weight: bold; margin-bottom: 6px; }
.alert-desc { font-size: 13px; color: var(--text-secondary); line-height: 1.5; }

.ai-suggestion {
  margin-top: auto;
  padding: 15px;
  background: rgba(0, 229, 255, 0.1);
  border: 1px dashed rgba(0, 229, 255, 0.5);
  border-radius: 4px;
}
.ai-title { color: var(--theme-color); font-size: 15px; margin-bottom: 8px; display: flex; align-items: center; gap: 6px; }
.ai-suggestion p { font-size: 13px; color: #a0aabf; line-height: 1.6; margin: 0; }
.ai-suggestion strong { color: #fff; }

.center-panel {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.chart-container {
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
