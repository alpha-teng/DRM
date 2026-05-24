<template>
  <div class="page-container">
    <!-- 顶部核心指标卡片 -->
    <div class="top-cards">
      <div class="tech-panel card" v-for="(kpi, index) in kpiData" :key="index">
        <div class="card-title text-gradient"><span class="kpi-icon">{{ kpi.icon }}</span> {{ kpi.title }}</div>
        <div class="card-value">{{ kpi.value }}<span class="unit">{{ kpi.unit }}</span></div>
        <div class="card-footer" :class="kpi.status">
          同比 {{ kpi.trend }}
        </div>
      </div>
    </div>

    <div class="main-content">
      <!-- 左侧分类与不良事件 -->
      <div class="left-panel tech-panel">
        <h3 class="panel-title text-gradient">📋 质控项目检查</h3>
        <div class="check-list mb-20">
          <div class="check-item"><span class="label">病历质控</span><span class="val">95.2%</span></div>
          <div class="check-item"><span class="label">处方点评</span><span class="val">97.8%</span></div>
          <div class="check-item"><span class="label">手术安全</span><span class="val">99.2%</span></div>
          <div class="check-item"><span class="label">院感监控</span><span class="val">96.8%</span></div>
        </div>

        <h3 class="panel-title text-gradient">⚠️ 本月不良事件 (12件)</h3>
        <div class="event-stats mb-20">
          <div class="stat-row">
            <span class="level iv">Ⅳ级</span>
            <div class="bar"><div class="fill" style="width: 17%; background: #ff4d4f;"></div></div>
            <span class="count">2件</span>
          </div>
          <div class="stat-row">
            <span class="level iii">Ⅲ级</span>
            <div class="bar"><div class="fill" style="width: 25%; background: #faad14;"></div></div>
            <span class="count">3件</span>
          </div>
          <div class="stat-row">
            <span class="level ii">Ⅱ级</span>
            <div class="bar"><div class="fill" style="width: 0%; background: #1890ff;"></div></div>
            <span class="count">0件</span>
          </div>
          <div class="stat-row">
            <span class="level i">Ⅰ级</span>
            <div class="bar"><div class="fill" style="width: 58%; background: #52c41a;"></div></div>
            <span class="count">7件</span>
          </div>
        </div>

        <h3 class="panel-title text-gradient">📊 科室质量预警</h3>
        <div class="warn-list">
          <div class="warn-item">
            <div class="dept-info">
              <span class="name">儿科</span>
              <span class="desc">病历质控 85% (低于目标 95%)</span>
            </div>
            <span class="status danger">预警</span>
          </div>
          <div class="warn-item">
            <div class="dept-info">
              <span class="name">烧伤科</span>
              <span class="desc">综合得分 82分 (整体偏低)</span>
            </div>
            <span class="status warning">关注</span>
          </div>
        </div>
      </div>

      <!-- 右侧图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">医疗质量指标趋势监控</h3>
          <div ref="trendChartRef" class="chart-box"></div>
        </div>

        <div class="middle-section">
          <div class="tech-panel chart-half">
            <h3 class="panel-title text-gradient">科室质量六维对比</h3>
            <div ref="radarChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-half table-panel">
            <h3 class="panel-title text-gradient">核心质量指标排名表</h3>
            <div class="table-container">
              <table>
                <thead>
                  <tr>
                    <th>排名</th>
                    <th>科室</th>
                    <th>质控合格</th>
                    <th>处方合格</th>
                    <th>并发症</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(item, i) in rankData" :key="i">
                    <td><span class="rank-badge" :class="'top'+(i+1)">{{ i+1 }}</span></td>
                    <td>{{ item.name }}</td>
                    <td class="success">{{ item.qc }}%</td>
                    <td class="success">{{ item.rx }}%</td>
                    <td class="highlight">{{ item.comp }}%</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>

        <div class="tech-panel chart-bottom">
          <h3 class="panel-title text-gradient">📅 本月质量事件时间轴监控</h3>
          <div class="timeline-container">
            <div class="timeline-line"></div>
            <div class="timeline-item" v-for="(item, i) in timelineData" :key="i" :style="{ left: item.pos + '%' }">
              <div class="dot" :class="item.type"></div>
              <div class="date">{{ item.date }}</div>
              <div class="content-box">
                <div class="title" :class="item.type">{{ item.title }}</div>
                <div class="desc">{{ item.desc }}</div>
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
  { title: '质控合格率', value: '95.2', unit: '%', trend: '↑ 1.2%', status: 'up', icon: '✅' },
  { title: '处方合格率', value: '97.8', unit: '%', trend: '↑ 0.5%', status: 'up', icon: '📝' },
  { title: '手术并发症', value: '0.8', unit: '%', trend: '↓ 0.2%', status: 'down', icon: '🩺' },
  { title: '院感发生率', value: '3.2', unit: '%', trend: '↓ 0.5%', status: 'down', icon: '🦠' },
  { title: '低风险死亡', value: '0.05', unit: '%', trend: '↓ 0.01%', status: 'down', icon: '📉' },
  { title: '不良事件', value: '12', unit: '件', trend: '↓ 3件', status: 'down', icon: '⚠️' }
])

const rankData = ref([
  { name: '骨科', qc: 96, rx: 98, comp: 0.5 },
  { name: '神经外科', qc: 94, rx: 97, comp: 0.8 },
  { name: '心内科', qc: 92, rx: 96, comp: 0.9 },
  { name: '普外科', qc: 90, rx: 95, comp: 1.2 },
  { name: '肿瘤科', qc: 88, rx: 94, comp: 1.5 }
])

const timelineData = ref([
  { pos: 10, date: '5月1日', type: 'info', title: '轻微不良事件', desc: '跌倒3件，管路滑脱2件，均为Ⅰ级无伤害。' },
  { pos: 40, date: '5月10日', type: 'warning', title: '处方问题集中预警', desc: '抗生素使用不规范，已由药师干预。' },
  { pos: 70, date: '5月20日', type: 'danger', title: '院感爆发预警', desc: '呼吸内科多重耐药菌5例，启动隔离消杀。' },
  { pos: 90, date: '5月25日', type: 'success', title: '质量月度总结', desc: '整体质量向好，不良事件同比下降20%。' }
])

const trendChartRef = ref(null)
const radarChartRef = ref(null)

let trendChart, radarChart

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
      min: 90,
      max: 100,
      axisLabel: { color: '#a0aabf', formatter: '{value}%' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)', type: 'dashed' } }
    },
    series: [
      {
        name: '质控合格率',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#00e5ff' },
        lineStyle: { width: 3 },
        data: [92, 93.5, 94, 94.8, 95.2]
      },
      {
        name: '处方合格率',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#52c41a' },
        lineStyle: { width: 3 },
        data: [95, 96.2, 97, 97.5, 97.8]
      }
    ]
  }
  trendChart.setOption(option)
}

const initRadarChart = () => {
  radarChart = echarts.init(radarChartRef.value)
  const option = {
    tooltip: {},
    legend: { data: ['骨科', '心内科'], bottom: 0, textStyle: { color: '#a0aabf' } },
    radar: {
      indicator: [
        { name: '病历质控', max: 100 },
        { name: '处方合格', max: 100 },
        { name: '手术安全(反向)', max: 100 },
        { name: '院感控制(反向)', max: 100 },
        { name: '患者安全', max: 100 },
        { name: '综合评分', max: 100 }
      ],
      splitArea: { areaStyle: { color: ['rgba(0,229,255,0.02)', 'rgba(0,229,255,0.08)'] } },
      axisName: { color: '#00e5ff' }
    },
    series: [
      {
        name: '质量对比',
        type: 'radar',
        data: [
          {
            value: [96, 98, 99.5, 97.2, 95, 93],
            name: '骨科',
            itemStyle: { color: '#00e5ff' },
            areaStyle: { color: 'rgba(0, 229, 255, 0.3)' }
          },
          {
            value: [92, 96, 99.1, 96.0, 91, 88],
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
  radarChart?.resize()
}

onMounted(() => {
  initTrendChart()
  initRadarChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  trendChart?.dispose()
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

.check-list { display: flex; flex-direction: column; gap: 8px; }
.check-item {
  display: flex;
  justify-content: space-between;
  padding: 10px;
  background: rgba(255,255,255,0.03);
  border-radius: 4px;
}
.check-item .label { color: #a0aabf; font-size: 14px;}
.check-item .val { color: #00e5ff; font-weight: bold; font-size: 14px;}

.event-stats { display: flex; flex-direction: column; gap: 10px; }
.stat-row { display: flex; align-items: center; gap: 10px; }
.level { width: 35px; font-size: 13px; font-weight: bold; }
.level.iv { color: #ff4d4f; }
.level.iii { color: #faad14; }
.level.ii { color: #1890ff; }
.level.i { color: #52c41a; }
.bar { flex: 1; height: 8px; background: rgba(255,255,255,0.1); border-radius: 4px; overflow: hidden; }
.bar .fill { height: 100%; border-radius: 4px; }
.count { width: 30px; text-align: right; color: #e6f7ff; font-size: 13px; }

.warn-list { display: flex; flex-direction: column; gap: 10px; }
.warn-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 12px;
  background: rgba(255,255,255,0.02);
  border: 1px solid rgba(255, 77, 79, 0.2);
  border-radius: 4px;
}
.dept-info { display: flex; flex-direction: column; gap: 4px; }
.dept-info .name { color: #fff; font-weight: bold; font-size: 14px;}
.dept-info .desc { color: #a0aabf; font-size: 12px;}
.status { padding: 2px 8px; border-radius: 4px; font-size: 12px; font-weight: bold; }
.status.danger { background: rgba(255, 77, 79, 0.2); color: #ff4d4f; }
.status.warning { background: rgba(250, 173, 20, 0.2); color: #faad14; }

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

.middle-section {
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

.table-panel { padding-top: 15px; }
.table-container {
  flex: 1;
  overflow: hidden;
  margin-top: 10px;
}
table { width: 100%; border-collapse: collapse; text-align: left; }
th { color: var(--text-secondary); font-weight: normal; font-size: 13px; padding: 8px; border-bottom: 1px solid rgba(255,255,255,0.1); }
td { padding: 8px; color: #e6f7ff; font-size: 14px; border-bottom: 1px dashed rgba(255,255,255,0.05); }
.rank-badge { display: inline-block; width: 20px; height: 20px; line-height: 20px; text-align: center; border-radius: 4px; background: rgba(255,255,255,0.1); font-size: 12px; }
.rank-badge.top1 { background: #ff4d4f; }
.rank-badge.top2 { background: #faad14; }
.rank-badge.top3 { background: #1890ff; }
.success { color: #52c41a; font-weight: bold; }
.highlight { color: #00e5ff; font-weight: bold; }

.chart-bottom {
  flex: 0.6;
  padding: 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.timeline-container {
  position: relative;
  height: 80px;
  margin-top: 15px;
}
.timeline-line {
  position: absolute;
  top: 10px;
  left: 5%;
  right: 5%;
  height: 2px;
  background: rgba(0, 229, 255, 0.3);
}
.timeline-item {
  position: absolute;
  top: 6px;
  transform: translateX(-50%);
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 180px;
}
.dot {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background: #00e5ff;
  box-shadow: 0 0 10px #00e5ff;
  margin-bottom: 8px;
  z-index: 2;
}
.dot.info { background: #1890ff; box-shadow: 0 0 8px #1890ff; }
.dot.warning { background: #faad14; box-shadow: 0 0 8px #faad14; }
.dot.danger { background: #ff4d4f; box-shadow: 0 0 8px #ff4d4f; }
.dot.success { background: #52c41a; box-shadow: 0 0 8px #52c41a; }
.date { font-size: 12px; color: #a0aabf; margin-bottom: 5px; }
.content-box { text-align: center; }
.content-box .title { font-size: 13px; font-weight: bold; margin-bottom: 4px; }
.content-box .title.info { color: #1890ff; }
.content-box .title.warning { color: #faad14; }
.content-box .title.danger { color: #ff4d4f; }
.content-box .title.success { color: #52c41a; }
.content-box .desc { font-size: 12px; color: #8c8c8c; line-height: 1.4; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;}
</style>
