<template>
  <div class="page-container">
    <!-- 顶部绩效维度切换 -->
    <div class="top-nav tech-panel">
      <div class="nav-item" :class="{ active: currentTab === '综合' }" @click="currentTab = '综合'">🌟 综合绩效</div>
      <div class="nav-item" :class="{ active: currentTab === '工作量' }" @click="currentTab = '工作量'">💪 工作量绩效</div>
      <div class="nav-item" :class="{ active: currentTab === '质量' }" @click="currentTab = '质量'">🛡️ 质量绩效</div>
      <div class="nav-item" :class="{ active: currentTab === '效率' }" @click="currentTab = '效率'">⚡ 效率绩效</div>
      <div class="nav-item" :class="{ active: currentTab === 'DRG' }" @click="currentTab = 'DRG'">💰 DRG绩效</div>
      <div class="nav-item" :class="{ active: currentTab === '成本' }" @click="currentTab = '成本'">📉 成本绩效</div>
    </div>

    <div class="main-content">
      <!-- 左侧信息区 -->
      <div class="left-panel tech-panel">
        <h3 class="panel-title text-gradient">📊 绩效等级分布</h3>
        <div class="level-list mb-20">
          <div class="level-item" v-for="(item, index) in levelData" :key="'lvl'+index">
            <span class="label">{{ item.label }}</span>
            <span class="val" :class="{ danger: item.danger }">{{ item.count }}个科室</span>
          </div>
        </div>

        <h3 class="panel-title text-gradient">🏆 TOP3 优秀科室</h3>
        <div class="rank-list mb-20">
          <div class="rank-item" v-for="(item, index) in topDepts" :key="'top'+index">
            <span class="rank-icon">{{ item.icon }}</span> {{ item.name }} <span class="score">{{ item.score }}分</span>
          </div>
        </div>

        <h3 class="panel-title text-gradient">⚠️ 待改进科室预警</h3>
        <div class="warn-list mb-20">
          <div class="warn-item" v-for="(item, index) in warnDepts" :key="'warn'+index">
            <span class="name">{{ item.name }}</span><span class="score danger">{{ item.score }}分</span>
          </div>
        </div>

        <div class="ai-box">
          <div class="ai-title"><i class="icon">🤖</i> AI提升建议</div>
          <div class="ai-content">
            <strong>针对：{{ aiAdvice.target }}</strong><br/>
            💡 {{ aiAdvice.text }}
          </div>
        </div>
      </div>

      <!-- 右侧图表区 -->
      <div class="center-panel">
        <div class="tech-panel chart-container-top">
          <h3 class="panel-title text-gradient">科室综合绩效排名</h3>
          <div ref="rankChartRef" class="chart-box"></div>
        </div>

        <div class="bottom-charts">
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">骨科绩效构成 (堆积图)</h3>
            <div ref="composeChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">骨科五维能力雷达图</h3>
            <div ref="radarChartRef" class="chart-box"></div>
          </div>
          <div class="tech-panel chart-third">
            <h3 class="panel-title text-gradient">综合绩效同环比趋势</h3>
            <div ref="trendChartRef" class="chart-box"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted, watch } from 'vue'
import * as echarts from 'echarts'

const currentTab = ref('综合')

const levelData = ref([
  { label: '优秀 (>90分)', count: 2, danger: false },
  { label: '良好 (80-90)', count: 3, danger: false },
  { label: '合格 (70-80)', count: 4, danger: false },
  { label: '待改进 (<70)', count: 1, danger: true }
])
const topDepts = ref([
  { name: '骨科', score: 95, icon: '🥇' },
  { name: '神经外科', score: 92, icon: '🥈' },
  { name: '心内科', score: 88, icon: '🥉' }
])
const warnDepts = ref([
  { name: '儿科', score: 68 }
])
const aiAdvice = ref({
  target: '骨科',
  text: 'RBRVS与DRG双模式激励效果极佳，微创手术占比提升明显。建议经验推广至全院，并进一步优化微创标准化流程。'
})

const rankChartRef = ref(null)
const composeChartRef = ref(null)
const radarChartRef = ref(null)
const trendChartRef = ref(null)

let rankChart, composeChart, radarChart, trendChart

const initRankChart = () => {
  rankChart = echarts.init(rankChartRef.value)
  const option = {
    tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
    grid: { left: '3%', right: '10%', bottom: '3%', top: '5%', containLabel: true },
    xAxis: { type: 'value', max: 100, splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }, axisLabel: { color: '#a0aabf' } },
    yAxis: {
      type: 'category',
      inverse: true,
      data: ['骨科', '神经外科', '心内科', '普外科', '肿瘤科', '呼吸内科', '消化内科', '泌尿外科', '妇产科', '儿科'],
      axisLine: { show: false },
      axisTick: { show: false },
      axisLabel: { color: '#e6f7ff', fontSize: 13 }
    },
    series: [
      {
        name: '综合评分',
        type: 'bar',
        barWidth: 15,
        itemStyle: {
          color: (params) => {
            if (params.value >= 90) return new echarts.graphic.LinearGradient(1, 0, 0, 0, [{ offset: 0, color: '#f5222d' }, { offset: 1, color: 'rgba(245, 34, 45, 0.1)' }])
            if (params.value >= 80) return new echarts.graphic.LinearGradient(1, 0, 0, 0, [{ offset: 0, color: '#faad14' }, { offset: 1, color: 'rgba(250, 173, 20, 0.1)' }])
            if (params.value < 70) return new echarts.graphic.LinearGradient(1, 0, 0, 0, [{ offset: 0, color: '#a0aabf' }, { offset: 1, color: 'rgba(160, 170, 191, 0.1)' }])
            return new echarts.graphic.LinearGradient(1, 0, 0, 0, [{ offset: 0, color: '#00e5ff' }, { offset: 1, color: 'rgba(0, 229, 255, 0.1)' }])
          },
          borderRadius: [0, 8, 8, 0]
        },
        label: { show: true, position: 'right', color: '#fff', formatter: '{c}分' },
        data: [95, 92, 88, 85, 82, 78, 76, 74, 72, 68]
      }
    ]
  }
  rankChart.setOption(option)
}

const initComposeChart = () => {
  composeChart = echarts.init(composeChartRef.value)
  const option = {
    tooltip: { trigger: 'item' },
    legend: { textStyle: { color: '#a0aabf' }, bottom: 0 },
    series: [
      {
        name: '骨科绩效构成',
        type: 'pie',
        radius: ['40%', '70%'],
        center: ['50%', '45%'],
        itemStyle: { borderRadius: 4, borderColor: '#030409', borderWidth: 2 },
        label: { show: false },
        data: [
          { value: 28, name: '工作量', itemStyle: { color: '#00e5ff' } },
          { value: 24, name: '质量', itemStyle: { color: '#52c41a' } },
          { value: 19, name: '效率', itemStyle: { color: '#faad14' } },
          { value: 14, name: 'DRG', itemStyle: { color: '#1890ff' } },
          { value: 10, name: '成本', itemStyle: { color: '#ff4d4f' } }
        ]
      }
    ]
  }
  composeChart.setOption(option)
}

const initRadarChart = () => {
  radarChart = echarts.init(radarChartRef.value)
  const option = {
    tooltip: {},
    radar: {
      indicator: [
        { name: '工作量 (30分)', max: 30 },
        { name: '质量 (25分)', max: 25 },
        { name: '效率 (20分)', max: 20 },
        { name: 'DRG (15分)', max: 15 },
        { name: '成本 (10分)', max: 10 }
      ],
      splitArea: { areaStyle: { color: ['rgba(0,229,255,0.02)', 'rgba(0,229,255,0.08)'] } },
      axisName: { color: '#00e5ff' }
    },
    series: [
      {
        name: '能力',
        type: 'radar',
        data: [
          {
            value: [28, 24, 19, 14, 10],
            name: '骨科得分布',
            itemStyle: { color: '#00e5ff' },
            areaStyle: { color: 'rgba(0, 229, 255, 0.4)' }
          }
        ]
      }
    ]
  }
  radarChart.setOption(option)
}

const initTrendChart = () => {
  trendChart = echarts.init(trendChartRef.value)
  const option = {
    tooltip: { trigger: 'axis' },
    grid: { left: '3%', right: '4%', bottom: '3%', top: '15%', containLabel: true },
    xAxis: {
      type: 'category',
      data: ['1月', '2月', '3月', '4月', '5月', '6月'],
      axisLine: { lineStyle: { color: 'rgba(0, 229, 255, 0.3)' } },
      axisLabel: { color: '#a0aabf' }
    },
    yAxis: {
      type: 'value',
      min: 70,
      max: 100,
      axisLabel: { color: '#a0aabf' },
      splitLine: { lineStyle: { color: 'rgba(255,255,255,0.05)' } }
    },
    series: [
      {
        name: '综合绩效得分',
        type: 'line',
        smooth: true,
        itemStyle: { color: '#f5222d' },
        lineStyle: { width: 3, shadowColor: 'rgba(245, 34, 45, 0.5)', shadowBlur: 10 },
        areaStyle: {
          color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
            { offset: 0, color: 'rgba(245, 34, 45, 0.3)' },
            { offset: 1, color: 'rgba(245, 34, 45, 0)' }
          ])
        },
        data: [85, 88, 90, 89, 92, 95]
      }
    ]
  }
  trendChart.setOption(option)
}

const updateData = () => {
  // Randomize level data
  let excellent = Math.floor(Math.random() * 3 + 1)
  let good = Math.floor(Math.random() * 4 + 2)
  let pass = Math.floor(Math.random() * 5 + 2)
  let bad = Math.floor(Math.random() * 2 + 1)
  levelData.value = [
    { label: '优秀 (>90分)', count: excellent, danger: false },
    { label: '良好 (80-90)', count: good, danger: false },
    { label: '合格 (70-80)', count: pass, danger: false },
    { label: '待改进 (<70)', count: bad, danger: true }
  ]

  // Randomize top depts
  const depts = ['骨科', '神经外科', '心内科', '普外科', '肿瘤科', '呼吸内科', '消化内科', '儿科', '妇产科']
  const shuffled = depts.sort(() => 0.5 - Math.random())
  topDepts.value = [
    { name: shuffled[0], score: Math.floor(Math.random() * 5 + 95), icon: '🥇' },
    { name: shuffled[1], score: Math.floor(Math.random() * 5 + 90), icon: '🥈' },
    { name: shuffled[2], score: Math.floor(Math.random() * 5 + 85), icon: '🥉' }
  ]

  // Randomize warn depts
  warnDepts.value = [
    { name: shuffled[shuffled.length - 1], score: Math.floor(Math.random() * 10 + 60) }
  ]

  // AI Advice
  aiAdvice.value = {
    target: topDepts.value[0].name,
    text: `在“${currentTab.value}”维度表现突出，建议将该科室的管理经验总结为SOP并全院推广。`
  }

  // Update Charts
  if (rankChart) {
    rankChart.setOption({
      series: [
        { data: Array.from({length: 10}, () => Math.floor(Math.random() * 30 + 70)).sort((a,b)=>a-b) }
      ]
    })
  }

  if (composeChart) {
    composeChart.setOption({
      series: [
        { data: Array.from({length: 4}, () => Math.floor(Math.random() * 10 + 20)) },
        { data: Array.from({length: 4}, () => Math.floor(Math.random() * 10 + 20)) },
        { data: Array.from({length: 4}, () => Math.floor(Math.random() * 10 + 10)) },
        { data: Array.from({length: 4}, () => Math.floor(Math.random() * 10 + 5)) },
        { data: Array.from({length: 4}, () => Math.floor(Math.random() * 10 + 5)) }
      ]
    })
  }

  if (radarChart) {
    radarChart.setOption({
      series: [
        {
          data: [
            {
              value: Array.from({length: 5}, (_, i) => Math.floor(Math.random() * [30, 25, 20, 15, 10][i] * 0.8 + [30, 25, 20, 15, 10][i] * 0.2)),
              name: topDepts.value[0].name + '得分布',
              itemStyle: { color: '#00e5ff' },
              areaStyle: { color: 'rgba(0, 229, 255, 0.4)' }
            }
          ]
        }
      ]
    })
  }

  if (trendChart) {
    trendChart.setOption({
      series: [
        { data: Array.from({length: 6}, () => Math.floor(Math.random() * 20 + 75)) }
      ]
    })
  }
}

watch(currentTab, () => {
  updateData()
})

const handleResize = () => {
  rankChart?.resize()
  composeChart?.resize()
  radarChart?.resize()
  trendChart?.resize()
}

onMounted(() => {
  initRankChart()
  initComposeChart()
  initRadarChart()
  initTrendChart()
  window.addEventListener('resize', handleResize)
})

onUnmounted(() => {
  rankChart?.dispose()
  composeChart?.dispose()
  radarChart?.dispose()
  trendChart?.dispose()
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

.top-nav {
  display: flex;
  padding: 10px 20px;
  gap: 20px;
  height: 60px;
  align-items: center;
}

.nav-item {
  padding: 8px 20px;
  color: #a0aabf;
  cursor: pointer;
  border-radius: 20px;
  border: 1px solid transparent;
  transition: all 0.3s;
  font-size: 15px;
}

.nav-item:hover { color: #fff; background: rgba(0, 229, 255, 0.1); }
.nav-item.active {
  color: #fff;
  border-color: var(--theme-color);
  background: rgba(0, 229, 255, 0.15);
  box-shadow: 0 0 10px rgba(0, 229, 255, 0.3);
  font-weight: bold;
}

.main-content {
  flex: 1;
  display: flex;
  gap: 20px;
  height: calc(100% - 80px);
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

.level-list {
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.level-item {
  display: flex;
  justify-content: space-between;
  padding: 10px;
  background: rgba(255,255,255,0.03);
  border-radius: 4px;
  font-size: 14px;
}
.level-item .label { color: #a0aabf; }
.level-item .val { color: #fff; font-weight: bold; }
.val.danger { color: #ff4d4f; }

.rank-list {
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.rank-item {
  padding: 12px;
  background: rgba(0, 229, 255, 0.05);
  border-radius: 4px;
  display: flex;
  align-items: center;
  font-size: 15px;
  color: #e6f7ff;
}
.rank-icon { margin-right: 10px; font-size: 18px;}
.score { margin-left: auto; font-weight: bold; color: var(--theme-color); }

.warn-list {
  display: flex;
  flex-direction: column;
}
.warn-item {
  display: flex;
  justify-content: space-between;
  padding: 10px;
  background: rgba(255, 77, 79, 0.1);
  border-left: 3px solid #ff4d4f;
  border-radius: 4px;
  color: #fff;
}
.score.danger { color: #ff4d4f; }

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
