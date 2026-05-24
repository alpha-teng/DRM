<template>
  <div class="page-container">
    <!-- 顶部财务 KPI -->
    <div class="top-cards">
      <div class="tech-panel card" v-for="(kpi, index) in kpiData" :key="index">
        <div class="card-title text-gradient"><span class="kpi-icon">{{ kpi.icon }}</span> {{ kpi.title }}</div>
        <div class="card-value">{{ kpi.value }}<span class="unit">{{ kpi.unit }}</span></div>
        <div class="card-footer" :class="kpi.status === 'down' ? 'down' : (kpi.status === 'up' ? 'up' : 'normal')">
          {{ kpi.desc }} {{ kpi.trend }}
        </div>
      </div>
    </div>

    <div class="main-content">
      <!-- 左侧收支结构文本与排名 -->
      <div class="left-panel tech-panel">
        <h3 class="panel-title text-gradient">收支结构速览</h3>
        <div class="structure-list">
          <div class="section-title"><span class="icon">💰</span> 收入构成</div>
          <div class="list-item"><span>诊疗</span> <span class="val">45%</span></div>
          <div class="list-item"><span>药品</span> <span class="val">25%</span></div>
          <div class="list-item"><span>材料</span> <span class="val">18%</span></div>
          <div class="list-item"><span>检查</span> <span class="val">12%</span></div>
        </div>
        <div class="structure-list">
          <div class="section-title"><span class="icon">💸</span> 支出构成</div>
          <div class="list-item"><span>人员</span> <span class="val">35%</span></div>
          <div class="list-item"><span>药品</span> <span class="val">28%</span></div>
          <div class="list-item"><span>材料</span> <span class="val">22%</span></div>
          <div class="list-item"><span>折旧</span> <span class="val">10%</span></div>
        </div>

        <h3 class="panel-title text-gradient mt-20">科室结余 TOP5</h3>
        <div class="rank-list">
          <div class="rank-item" v-for="(dept, i) in rankData" :key="i">
            <span class="rank-num">{{ i + 1 }}</span>
            <span class="name">{{ dept.name }}</span>
            <span class="val text-gradient">{{ dept.val }}</span>
          </div>
        </div>

        <div class="alert-box mt-20">
          <div class="alert-title">⚠️ 预算预警</div>
          <div class="alert-desc">• 材料成本超预算 5%<br/>• 设备采购超预算 8%</div>
        </div>
      </div>

      <!-- 右侧主体图表 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">收入与支出趋势分析</h3>
          <div ref="trendChartRef" class="chart-box"></div>
        </div>

        <div class="middle-charts">
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">收入结构</h3>
            <div ref="incomePieRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">支出结构</h3>
            <div ref="expensePieRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">科室收支结余排名</h3>
            <div ref="barChartRef" class="chart-box"></div>
          </div>
        </div>

        <div class="tech-panel chart-bottom">
          <h3 class="panel-title text-gradient">预算执行进度</h3>
          <div class="progress-container">
            <div class="progress-item" v-for="(item, i) in budgetData" :key="i">
              <div class="prog-label">{{ item.name }}</div>
              <div class="prog-bar-bg">
                <div class="prog-bar-fill" :class="{ 'warning': item.val > 45, 'danger': item.val > 50 }" :style="{ width: item.val + '%' }"></div>
              </div>
              <div class="prog-val">{{ item.val }}%</div>
              <div class="prog-icon" v-if="item.val > 45">⚠️</div>
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
  { title: '本月收入', value: '3.85', unit: '亿元', desc: '同比', trend: '↑6.5%', status: 'up', icon: '💰' },
  { title: '本月支出', value: '3.28', unit: '亿元', desc: '同比', trend: '↑3.2%', status: 'up', icon: '💸' },
  { title: '本月结余', value: '0.57', unit: '亿元', desc: '同比', trend: '↑20.1%', status: 'up', icon: '📈' },
  { title: '结余率', value: '14.8', unit: '%', desc: '同比', trend: '↑1.9%', status: 'up', icon: '📊' },
  { title: '预算执行', value: '42.3', unit: '%', desc: '状态', trend: '正常', status: 'normal', icon: '🎯' },
  { title: '应收账款', value: '0.12', unit: '亿元', desc: '同比', trend: '↓8.5%', status: 'down', icon: '🧾' }
])

const rankData = ref([
  { name: '骨科', val: '1500万' },
  { name: '心内科', val: '700万' },
  { name: '神经外科', val: '400万' },
  { name: '普外科', val: '300万' },
  { name: '肿瘤科', val: '200万' }
])

const budgetData = ref([
  { name: '人员成本', val: 41 },
  { name: '药品成本', val: 43 },
  { name: '材料成本', val: 50 },
  { name: '设备采购', val: 58 },
  { name: '能耗支出', val: 40 }
])

const trendChartRef = ref(null)
const incomePieRef = ref(null)
const expensePieRef = ref(null)
const barChartRef = ref(null)

let trendChart, incomePie, expensePie, barChart

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
      name: '金额(亿元)',
      nameTextStyle: { color: '#a0aabf' },
      axisLabel: { color: '#a0aabf' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }
    },
    series: [
      {
        name: '收入',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#00e5ff' },
        areaStyle: {
          color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
            { offset: 0, color: 'rgba(0, 229, 255, 0.3)' },
            { offset: 1, color: 'rgba(0, 229, 255, 0)' }
          ])
        },
        data: [3.2, 2.8, 3.9, 3.6, 3.85, 4.1]
      },
      {
        name: '支出',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#faad14' },
        data: [2.9, 2.6, 3.5, 3.1, 3.28, 3.5]
      }
    ]
  }
  trendChart.setOption(option)
}

const initIncomePie = () => {
  incomePie = echarts.init(incomePieRef.value)
  const option = {
    tooltip: { trigger: 'item' },
    series: [
      {
        name: '收入结构',
        type: 'pie',
        radius: ['40%', '70%'],
        itemStyle: { borderRadius: 5, borderColor: '#030409', borderWidth: 2 },
        label: { show: false },
        data: [
          { value: 45, name: '诊疗', itemStyle: { color: '#00e5ff' } },
          { value: 25, name: '药品', itemStyle: { color: '#1890ff' } },
          { value: 18, name: '材料', itemStyle: { color: '#722ed1' } },
          { value: 12, name: '检查', itemStyle: { color: '#eb2f96' } }
        ]
      }
    ]
  }
  incomePie.setOption(option)
}

const initExpensePie = () => {
  expensePie = echarts.init(expensePieRef.value)
  const option = {
    tooltip: { trigger: 'item' },
    series: [
      {
        name: '支出结构',
        type: 'pie',
        radius: ['40%', '70%'],
        itemStyle: { borderRadius: 5, borderColor: '#030409', borderWidth: 2 },
        label: { show: false },
        data: [
          { value: 35, name: '人员', itemStyle: { color: '#faad14' } },
          { value: 28, name: '药品', itemStyle: { color: '#ff4d4f' } },
          { value: 22, name: '材料', itemStyle: { color: '#a0d911' } },
          { value: 10, name: '折旧', itemStyle: { color: '#13c2c2' } },
          { value: 5, name: '其他', itemStyle: { color: '#8c8c8c' } }
        ]
      }
    ]
  }
  expensePie.setOption(option)
}

const initBarChart = () => {
  barChart = echarts.init(barChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '4%', bottom: '3%', top: '5%', containLabel: true },
    xAxis: { type: 'value', show: false },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['骨科', '心内科', '神经外科', '普外科', '肿瘤科'],
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
        label: { show: true, position: 'right', color: '#fff' },
        data: [5700, 4200, 2800, 1900, 1200]
      }
    ]
  }
  barChart.setOption(option)
}

const handleResize = () => {
  trendChart?.resize()
  incomePie?.resize()
  expensePie?.resize()
  barChart?.resize()
}

onMounted(() => {
  initTrendChart()
  initIncomePie()
  initExpensePie()
  initBarChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  trendChart?.dispose()
  incomePie?.dispose()
  expensePie?.dispose()
  barChart?.dispose()
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
.card-footer { font-size: 13px; margin-top: 4px; }
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
  width: 300px;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.panel-title {
  font-size: 16px;
  margin-bottom: 12px;
  padding-bottom: 8px;
  border-bottom: 1px solid rgba(0, 229, 255, 0.2);
}
.mt-20 { margin-top: 20px; }

.structure-list { margin-bottom: 15px; }
.section-title { color: #e6f7ff; font-weight: bold; font-size: 14px; margin-bottom: 8px; display: flex; align-items: center; gap: 6px;}
.list-item {
  display: flex;
  justify-content: space-between;
  padding: 6px 10px;
  background: rgba(255,255,255,0.02);
  margin-bottom: 4px;
  border-radius: 4px;
  color: #a0aabf;
  font-size: 13px;
}
.list-item .val { color: #fff; font-weight: bold; }

.rank-list {
  display: flex;
  flex-direction: column;
  gap: 8px;
}
.rank-item {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 8px;
  background: rgba(0, 229, 255, 0.05);
  border-radius: 4px;
}
.rank-num { font-weight: bold; color: var(--theme-color); font-size: 14px; width: 16px;}
.rank-item .name { flex: 1; color: #e6f7ff; font-size: 14px;}
.rank-item .val { font-weight: bold; font-size: 14px;}

.alert-box {
  background: rgba(255, 77, 79, 0.1);
  border: 1px solid rgba(255, 77, 79, 0.3);
  padding: 12px;
  border-radius: 4px;
  margin-top: auto;
}
.alert-title { color: #ff4d4f; font-weight: bold; margin-bottom: 5px; font-size: 14px; }
.alert-desc { color: #a0aabf; font-size: 13px; line-height: 1.5; }

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

.chart-third {
  flex: 1;
  padding: 15px;
  display: flex;
  flex-direction: column;
}

.chart-bottom {
  flex: 0.8;
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

.progress-container {
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  padding-top: 10px;
}
.progress-item {
  display: flex;
  align-items: center;
  gap: 15px;
}
.prog-label { width: 70px; color: #a0aabf; font-size: 13px; }
.prog-bar-bg {
  flex: 1;
  height: 8px;
  background: rgba(255,255,255,0.1);
  border-radius: 4px;
  overflow: hidden;
}
.prog-bar-fill {
  height: 100%;
  background: var(--theme-color);
  border-radius: 4px;
  box-shadow: 0 0 5px var(--theme-color);
  transition: width 0.5s;
}
.prog-bar-fill.warning { background: #faad14; box-shadow: 0 0 5px #faad14; }
.prog-bar-fill.danger { background: #ff4d4f; box-shadow: 0 0 5px #ff4d4f; }
.prog-val { width: 40px; text-align: right; color: #fff; font-size: 13px; font-weight: bold; }
.prog-icon { color: #ff4d4f; font-size: 14px; }
</style>
