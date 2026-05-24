<template>
  <div class="page-container">
    <!-- 顶部医保核心指标卡片 -->
    <div class="top-cards">
      <div class="tech-panel card" v-for="(kpi, index) in kpiData" :key="index">
        <div class="card-icon">{{ kpi.icon }}</div>
        <div class="card-info">
          <div class="card-title text-gradient">{{ kpi.title }}</div>
          <div class="card-value">{{ kpi.value }}<span class="unit">{{ kpi.unit }}</span></div>
          <div class="card-footer" :class="kpi.status">
            同比 {{ kpi.trend }}
          </div>
        </div>
      </div>
    </div>

    <div class="main-content">
      <!-- 左侧分类统计与AI分析 -->
      <div class="left-panel tech-panel">
        <h3 class="panel-title text-gradient">💳 医保类型分布</h3>
        <div class="data-list mb-20">
          <div class="list-item"><span>职工医保</span><span class="val">53%</span></div>
          <div class="list-item"><span>居民医保</span><span class="val">42%</span></div>
          <div class="list-item"><span>新农合</span><span class="val">3%</span></div>
          <div class="list-item"><span>自费</span><span class="val">2%</span></div>
        </div>

        <h3 class="panel-title text-gradient">📊 结算方式分析</h3>
        <div class="data-list mb-20">
          <div class="list-item"><span>DRG 结算</span><span class="val">1.8亿 (63%)</span></div>
          <div class="list-item"><span>DIP 结算</span><span class="val">0.85亿 (30%)</span></div>
          <div class="list-item"><span>按项目结算</span><span class="val">0.2亿 (7%)</span></div>
        </div>

        <div class="ai-box">
          <div class="ai-title"><i class="icon">🤖</i> AI拒付优化建议</div>
          <div class="ai-content">
            <strong>核心问题：</strong>本月拒付 80万，主要由“材料不符(50%)”和“诊断不符(35%)”引起。<br/><br/>
            <strong>优化方案：</strong><br/>
            1. 建立医保材料目录对照提醒系统。<br/>
            2. 加强骨科与心内科医师的病案书写培训。<br/>
            3. 药师/收费处增加人工复核卡点。
          </div>
        </div>
      </div>

      <!-- 右侧图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">医保结算收入与支出趋势</h3>
          <div ref="trendChartRef" class="chart-box"></div>
        </div>

        <div class="middle-charts">
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">DRG结算盈亏分布</h3>
            <div ref="drgPieChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">拒付原因分析</h3>
            <div ref="rejectReasonChartRef" class="chart-box"></div>
          </div>
        </div>

        <div class="bottom-charts">
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">科室医保结余排名 TOP5</h3>
            <div ref="deptBalanceChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">医保拒付科室风险预警</h3>
            <div class="table-container">
              <table>
                <thead>
                  <tr>
                    <th>排名</th>
                    <th>科室</th>
                    <th>拒付类型</th>
                    <th>拒付金额</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(item, i) in rejectList" :key="i">
                    <td><span class="rank-badge" :class="'top'+(i+1)">{{ i+1 }}</span></td>
                    <td>{{ item.dept }}</td>
                    <td class="type-cell">{{ item.type }}</td>
                    <td class="money-cell">{{ item.money }}万</td>
                  </tr>
                </tbody>
              </table>
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
  { title: '医保收入', value: '2.85', unit: '亿元', trend: '↑7.5%', status: 'up', icon: '🏦' },
  { title: '医保支出', value: '2.60', unit: '亿元', trend: '↑5.2%', status: 'up', icon: '💳' },
  { title: '医保结余', value: '0.25', unit: '亿元', trend: '↑15.3%', status: 'up', icon: '💹' },
  { title: 'DRG结算入组', value: '97', unit: '%', trend: '↑2%', status: 'up', icon: '📑' },
  { title: 'DIP结算入组', value: '95', unit: '%', trend: '↑1.5%', status: 'up', icon: '📁' },
  { title: '拒付金额', value: '80', unit: '万元', trend: '↓20%', status: 'down', icon: '🚫' }
])

const rejectList = ref([
  { dept: '骨科', type: '材料不符', money: 35 },
  { dept: '心内科', type: '诊断不符', money: 25 },
  { dept: '普外科', type: '违规操作', money: 12 },
  { dept: '神经外科', type: '材料不符', money: 5 },
  { dept: '肿瘤科', type: '诊断不符', money: 3 }
])

const trendChartRef = ref(null)
const drgPieChartRef = ref(null)
const rejectReasonChartRef = ref(null)
const deptBalanceChartRef = ref(null)

let trendChart, drgPieChart, rejectReasonChart, deptBalanceChart

const initTrendChart = () => {
  trendChart = echarts.init(trendChartRef.value)
  const option = {
    tooltip: { trigger: 'axis' },
    legend: { textStyle: { color: '#a0aabf' }, top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: {
      type: 'category',
      boundaryGap: false,
      data: ['1月', '2月', '3月', '4月', '5月'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      name: '金额(亿元)',
      nameTextStyle: { color: '#a0aabf' },
      axisLabel: { color: '#a0aabf' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)', type: 'dashed' } }
    },
    series: [
      {
        name: '医保收入',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#00e5ff' },
        areaStyle: {
          color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
            { offset: 0, color: 'rgba(0, 229, 255, 0.3)' },
            { offset: 1, color: 'rgba(0, 229, 255, 0)' }
          ])
        },
        data: [2.2, 2.3, 2.6, 2.75, 2.85]
      },
      {
        name: '医保支出',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#ff4d4f' },
        data: [2.1, 2.25, 2.5, 2.55, 2.60]
      }
    ]
  }
  trendChart.setOption(option)
}

const initDrgPieChart = () => {
  drgPieChart = echarts.init(drgPieChartRef.value)
  const option = {
    tooltip: { trigger: 'item', formatter: '{b}: {d}%' },
    legend: { bottom: '0', textStyle: { color: '#a0aabf' } },
    series: [
      {
        name: '盈亏分布',
        type: 'pie',
        radius: ['50%', '70%'],
        center: ['50%', '45%'],
        itemStyle: { borderRadius: 5, borderColor: '#030409', borderWidth: 2 },
        label: { show: false },
        data: [
          { value: 70, name: '盈利病组', itemStyle: { color: '#52c41a' } },
          { value: 20, name: '持平病组', itemStyle: { color: '#faad14' } },
          { value: 10, name: '亏损病组', itemStyle: { color: '#ff4d4f' } }
        ]
      }
    ]
  }
  drgPieChart.setOption(option)
}

const initRejectReasonChart = () => {
  rejectReasonChart = echarts.init(rejectReasonChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '15%', bottom: '5%', top: '5%', containLabel: true },
    xAxis: { type: 'value', show: false },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['材料不符', '诊断不符', '违规操作'],
      axisLine: { show: false },
      axisTick: { show: false },
      axisLabel: { color: '#a0aabf' }
    },
    series: [
      {
        name: '占比(%)',
        type: 'bar',
        barWidth: 15,
        itemStyle: {
          color: new echarts.graphic.LinearGradient(1, 0, 0, 0, [
            { offset: 0, color: '#faad14' },
            { offset: 1, color: 'rgba(250, 173, 20, 0.1)' }
          ]),
          borderRadius: [0, 8, 8, 0]
        },
        label: { show: true, position: 'right', color: '#faad14', formatter: '{c}%' },
        data: [50, 35, 15]
      }
    ]
  }
  rejectReasonChart.setOption(option)
}

const initDeptBalanceChart = () => {
  deptBalanceChart = echarts.init(deptBalanceChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '15%', bottom: '5%', top: '5%', containLabel: true },
    xAxis: { type: 'value', show: false },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['骨科', '神经外科', '心内科', '普外科', '肿瘤科'],
      axisLine: { show: false },
      axisTick: { show: false },
      axisLabel: { color: '#a0aabf' }
    },
    series: [
      {
        name: '结余(万元)',
        type: 'bar',
        barWidth: 15,
        itemStyle: {
          color: new echarts.graphic.LinearGradient(1, 0, 0, 0, [
            { offset: 0, color: '#00e5ff' },
            { offset: 1, color: 'rgba(0, 229, 255, 0.1)' }
          ]),
          borderRadius: [0, 8, 8, 0]
        },
        label: { show: true, position: 'right', color: '#00e5ff', formatter: '+{c}万' },
        data: [2800, 1200, 900, 500, 400]
      }
    ]
  }
  deptBalanceChart.setOption(option)
}

const handleResize = () => {
  trendChart?.resize()
  drgPieChart?.resize()
  rejectReasonChart?.resize()
  deptBalanceChart?.resize()
}

onMounted(() => {
  initTrendChart()
  initDrgPieChart()
  initRejectReasonChart()
  initDeptBalanceChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  trendChart?.dispose()
  drgPieChart?.dispose()
  rejectReasonChart?.dispose()
  deptBalanceChart?.dispose()
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
  color: #fff;
  font-family: "Impact", sans-serif; 
  letter-spacing: 1px;
}
.unit { font-size: 13px; color: var(--text-secondary); margin-left: 4px; font-family: "PingFang SC", sans-serif; }
.card-footer { font-size: 14px; margin-top: 4px; }
.card-footer.up { color: #ff4d4f; }
.card-footer.down { color: #52c41a; }

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

.data-list {
  display: flex;
  flex-direction: column;
  gap: 8px;
}
.list-item {
  display: flex;
  justify-content: space-between;
  padding: 10px;
  background: rgba(255,255,255,0.03);
  border-radius: 4px;
  color: #e6f7ff;
  font-size: 14px;
}
.list-item .val { font-weight: bold; color: var(--theme-color); }

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
  flex: 0.8;
  display: flex;
  gap: 20px;
}

.bottom-charts {
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

.table-container {
  flex: 1;
  overflow: hidden;
  padding-top: 10px;
}
table {
  width: 100%;
  border-collapse: collapse;
  text-align: left;
}
th {
  color: var(--text-secondary);
  font-weight: normal;
  font-size: 13px;
  padding: 8px 10px;
  border-bottom: 1px solid rgba(255,255,255,0.1);
}
td {
  padding: 10px;
  color: #e6f7ff;
  font-size: 14px;
  border-bottom: 1px dashed rgba(255,255,255,0.05);
}
.rank-badge {
  display: inline-block;
  width: 20px;
  height: 20px;
  line-height: 20px;
  text-align: center;
  border-radius: 4px;
  background: rgba(255,255,255,0.1);
  font-size: 12px;
}
.rank-badge.top1 { background: #ff4d4f; }
.rank-badge.top2 { background: #faad14; }
.rank-badge.top3 { background: #1890ff; }
.type-cell { color: #a0aabf; }
.money-cell { color: #ff4d4f; font-weight: bold; }
</style>
