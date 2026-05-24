<template>
  <div class="dashboard-container">
    <!-- 顶部统计卡片 -->
    <el-row :gutter="20" class="top-row">
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background: linear-gradient(135deg, #409EFF, #66b1ff);">
              <i class="el-icon-user-solid"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">今日门诊</div>
              <div class="stat-value">1,847</div>
              <div class="stat-subtitle">
                <span class="increase">+8.2% <i class="el-icon-top"></i></span> 较昨日
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background: linear-gradient(135deg, #67C23A, #85ce61);">
              <i class="el-icon-s-grid"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">当前住院</div>
              <div class="stat-value">423</div>
              <div class="stat-subtitle">
                <span class="increase">+3.5% <i class="el-icon-top"></i></span> 较昨日
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background: linear-gradient(135deg, #E6A23C, #ebb563);">
              <i class="el-icon-s-marketing"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">今日手术</div>
              <div class="stat-value">28</div>
              <div class="stat-subtitle">
                <span class="neutral">已完成 22 台</span>
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background: linear-gradient(135deg, #F56C6C, #f78989);">
              <i class="el-icon-s-home"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">床位使用率</div>
              <div class="stat-value">87.3%</div>
              <div class="stat-subtitle">
                <span class="decrease">-1.2% <i class="el-icon-bottom"></i></span> 较昨日
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 主要图表区域 第一行 -->
    <el-row :gutter="20" class="chart-row">
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-data-line"></i> 月度门诊量走势</span>
          </div>
          <div id="outpatientTrendChart" style="width: 100%; height: 300px;"></div>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-pie-chart"></i> 科室收入构成</span>
          </div>
          <div id="deptRevenueChart" style="width: 100%; height: 300px;"></div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 主要图表区域 第二行 -->
    <el-row :gutter="20" class="chart-row">
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-s-data"></i> 科室成本对比（万元）</span>
          </div>
          <div id="deptCostChart" style="width: 100%; height: 300px;"></div>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-s-marketing"></i> DRG效率分析</span>
          </div>
          <div id="drgChart" style="width: 100%; height: 300px;"></div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 底部两栏 -->
    <el-row :gutter="20" class="bottom-row">
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-s-order"></i> 科室绩效排名</span>
          </div>
          <el-table :data="performanceRank" style="width: 100%" height="280" size="small">
            <el-table-column prop="rank" label="排名" width="70" align="center">
              <template slot-scope="scope">
                <el-tag :type="scope.row.rank === 1 ? 'danger' : scope.row.rank === 2 ? 'warning' : scope.row.rank === 3 ? 'success' : 'info'" size="small">
                  {{ scope.row.rank }}
                </el-tag>
              </template>
            </el-table-column>
            <el-table-column prop="deptName" label="科室"></el-table-column>
            <el-table-column prop="cases" label="收治数" width="90" align="center"></el-table-column>
            <el-table-column prop="cmi" label="CMI值" width="80" align="center"></el-table-column>
            <el-table-column prop="avgCost" label="均次费用" width="100" align="center"></el-table-column>
          </el-table>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-warning-outline"></i> 预警信息</span>
            <el-tag type="danger" size="small" style="float:right;">{{ alerts.length }} 条</el-tag>
          </div>
          <el-timeline style="padding: 10px 20px;">
            <el-timeline-item v-for="(item, index) in alerts" :key="index"
              :timestamp="item.time" placement="top"
              :color="item.level === 'critical' ? '#F56C6C' : item.level === 'warning' ? '#E6A23C' : '#67C23A'"
              :size="item.level === 'critical' ? 'large' : 'normal'">
              <el-card body-style="padding: 10px 15px;" style="border-left: 3px solid #409EFF;">
                <div style="display:flex; justify-content:space-between; align-items:center;">
                  <span style="font-weight:600; color:#303133;">{{ item.title }}</span>
                  <el-tag :type="item.level === 'critical' ? 'danger' : item.level === 'warning' ? 'warning' : 'success'" size="small">{{ item.type }}</el-tag>
                </div>
                <p style="margin:5px 0 0 0; font-size:12px; color:#606266;">{{ item.desc }}</p>
              </el-card>
            </el-timeline-item>
          </el-timeline>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import * as echarts from 'echarts'

export default {
  name: 'Dashboard',
  data() {
    return {
      outpatientTrendChart: null,
      deptRevenueChart: null,
      deptCostChart: null,
      drgChart: null,
      performanceRank: [
        { rank: 1, deptName: '心内科', cases: 486, cmi: 1.92, avgCost: 8560 },
        { rank: 2, deptName: '神经内科', cases: 412, cmi: 1.78, avgCost: 9230 },
        { rank: 3, deptName: '骨科', cases: 378, cmi: 2.15, avgCost: 12450 },
        { rank: 4, deptName: '普外科', cases: 356, cmi: 1.65, avgCost: 7890 },
        { rank: 5, deptName: '肿瘤科', cases: 298, cmi: 2.48, avgCost: 18670 },
        { rank: 6, deptName: '呼吸科', cases: 287, cmi: 1.42, avgCost: 6780 },
        { rank: 7, deptName: '泌尿外科', cases: 245, cmi: 1.58, avgCost: 7120 }
      ],
      alerts: [
        { time: '2024-07-15 14:32', title: 'ICU床位使用率超95%', type: '危急', level: 'critical', desc: 'ICU当前床位使用率已达96.2%，建议启动应急分流机制' },
        { time: '2024-07-15 11:20', title: '药品库存预警', type: '警告', level: 'warning', desc: '阿司匹林肠溶片库存不足，预计3天内耗尽，请及时采购' },
        { time: '2024-07-15 09:45', title: '平均住院日超标', type: '提醒', level: 'info', desc: '内分泌科平均住院日7.2天，超出目标值6.5天，请关注' },
        { time: '2024-07-14 16:10', title: '手术室利用率提升', type: '正常', level: 'info', desc: '本周手术室日均使用率78%，较上周提升5个百分点' }
      ]
    }
  },
  mounted() {
    this.initCharts()
  },
  beforeDestroy() {
    this.destroyCharts()
  },
  methods: {
    initCharts() {
      this.outpatientTrendChart = echarts.init(document.getElementById('outpatientTrendChart'))
      this.deptRevenueChart = echarts.init(document.getElementById('deptRevenueChart'))
      this.deptCostChart = echarts.init(document.getElementById('deptCostChart'))
      this.drgChart = echarts.init(document.getElementById('drgChart'))
      this.initOutpatientTrend()
      this.initDeptRevenue()
      this.initDeptCost()
      this.initDrgChart()
    },
    destroyCharts() {
      if (this.outpatientTrendChart) { this.outpatientTrendChart.dispose() }
      if (this.deptRevenueChart) { this.deptRevenueChart.dispose() }
      if (this.deptCostChart) { this.deptCostChart.dispose() }
      if (this.drgChart) { this.drgChart.dispose() }
    },
    initOutpatientTrend() {
      const option = {
        title: { text: '月度门诊量（2024年）', subtext: '单位：人次', left: 'center' },
        tooltip: { trigger: 'axis' },
        grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
        xAxis: {
          type: 'category',
          data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月'],
          boundaryGap: false,
          axisLine: { lineStyle: { color: '#d48265' } }
        },
        yAxis: { type: 'value', axisLine: { lineStyle: { color: '#d48265' } } },
        series: [
          {
            name: '门诊量',
            type: 'line',
            smooth: true,
            data: [48200, 41200, 53800, 51200, 56100, 52800, 48700],
            areaStyle: { color: { type: 'linear', x: 0, y: 0, x2: 0, y2: 1, colorStops: [{ offset: 0, color: 'rgba(64,158,255,0.4)' }, { offset: 1, color: 'rgba(64,158,255,0.05)' }] } },
            lineStyle: { color: '#409EFF', width: 3 },
            itemStyle: { color: '#409EFF' },
            markPoint: {
              data: [{ type: 'max', name: '最大值' }],
              label: { formatter: '{c}' }
            }
          }
        ]
      }
      this.outpatientTrendChart.setOption(option)
    },
    initDeptRevenue() {
      const option = {
        tooltip: { trigger: 'item', formatter: '{b}: {c}万 ({d}%)' },
        legend: { orient: 'vertical', left: 'left', top: 'middle' },
        series: [{
          name: '科室收入',
          type: 'pie',
          radius: ['40%', '70%'],
          center: ['55%', '50%'],
          avoidLabelOverlap: false,
          itemStyle: { borderRadius: 8, borderColor: '#fff', borderWidth: 2 },
          label: { show: false, position: 'center' },
          emphasis: { label: { show: true, fontSize: 16, fontWeight: 'bold' } },
          labelLine: { show: false },
          data: [
            { value: 2850, name: '内科', itemStyle: { color: '#409EFF' } },
            { value: 2120, name: '外科', itemStyle: { color: '#67C23A' } },
            { value: 1580, name: '妇产科', itemStyle: { color: '#E6A23C' } },
            { value: 1240, name: '儿科', itemStyle: { color: '#F56C6C' } },
            { value: 980, name: '急诊', itemStyle: { color: '#909399' } },
            { value: 760, name: '其他', itemStyle: { color: '#B37FEB' } }
          ]
        }]
      }
      this.deptRevenueChart.setOption(option)
    },
    initDeptCost() {
      const depts = ['心内科', '骨科', '肿瘤科', '神经内科', '呼吸科', '普外科', '泌尿外科']
      const costs = [386, 352, 428, 295, 267, 234, 198]
      const budget = [350, 320, 400, 280, 250, 220, 180]
      const option = {
        tooltip: { trigger: 'axis', axisPointer: { type: 'shadow' } },
        legend: { data: ['实际成本', '预算成本'], top: 0 },
        grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
        xAxis: { type: 'value', axisLabel: { formatter: '{value}万' } },
        yAxis: { type: 'category', data: depts.reverse() },
        series: [
          {
            name: '实际成本',
            type: 'bar',
            data: costs.reverse(),
            itemStyle: {
              color: function(params) {
                return params.value > budget[params.dataIndex] ? '#F56C6C' : '#67C23A'
              }
            },
            label: { show: true, position: 'right', formatter: '{c}万' }
          },
          {
            name: '预算成本',
            type: 'bar',
            data: budget.reverse(),
            barWidth: 8,
            itemStyle: { color: '#d3dce6' },
            barGap: '-100%'
          }
        ]
      }
      this.deptCostChart.setOption(option)
    },
    initDrgChart() {
      const option = {
        tooltip: {
          trigger: 'item',
          formatter: function(params) {
            return params.name + '<br/>均次费用: ' + params.value[0] + '元<br/>CMI: ' + params.value[1]
          }
        },
        xAxis: { type: 'value', name: '均次费用(元)', nameLocation: 'center', nameGap: 30, axisLabel: { formatter: '{value}' } },
        yAxis: { type: 'value', name: 'CMI值', nameLocation: 'center', nameGap: 35 },
        series: [{
          type: 'scatter',
          symbolSize: function(data) { return data[2] / 10 },
          data: [
            [8560, 1.92, 486], [12450, 2.15, 378], [18670, 2.48, 298],
            [9230, 1.78, 412], [6780, 1.42, 287], [7890, 1.65, 356], [7120, 1.58, 245]
          ],
          itemStyle: { color: '#409EFF', opacity: 0.75 },
          label: {
            show: true,
            formatter: function(params) {
              const names = ['心内科', '骨科', '肿瘤科', '神经内科', '呼吸科', '普外科', '泌尿外科']
              return names[params.dataIndex]
            },
            position: 'top',
            fontSize: 11
          }
        }]
      }
      this.drgChart.setOption(option)
    }
  }
}
</script>

<style lang="scss" scoped>
.dashboard-container {
  padding: 20px;
  background-color: #f0f2f5;
  min-height: calc(100vh - 84px);

  .top-row {
    margin-bottom: 20px;

    .stat-card {
      border-radius: 10px;
      border: none;
      background: #fff;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.06);
      transition: all 0.3s;

      &:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
      }

      .stat-item {
        display: flex;
        align-items: center;
        padding: 10px;

        .stat-icon {
          width: 56px;
          height: 56px;
          border-radius: 12px;
          display: flex;
          align-items: center;
          justify-content: center;
          color: #fff;
          font-size: 22px;
          margin-right: 14px;
          flex-shrink: 0;
        }

        .stat-content {
          .stat-title {
            font-size: 13px;
            color: #909399;
            margin-bottom: 6px;
          }

          .stat-value {
            font-size: 26px;
            font-weight: 700;
            color: #303133;
            margin-bottom: 4px;
          }

          .stat-subtitle {
            font-size: 12px;
            color: #909399;

            .increase { color: #f56c6c; font-weight: 600; margin-right: 4px; }
            .decrease { color: #67c23a; font-weight: 600; margin-right: 4px; }
            .neutral { color: #67c23a; }
          }
        }
      }
    }
  }

  .chart-row {
    margin-bottom: 20px;

    .chart-card {
      border-radius: 10px;
      border: none;
      background: #fff;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.06);

      ::v-deep .el-card__header {
        padding: 14px 20px;
        font-size: 15px;
        font-weight: 600;
        color: #303133;
        border-bottom: none;
        background: transparent;

        i { margin-right: 6px; color: #409EFF; }
      }

      ::v-deep .el-card__body {
        padding: 15px;
      }
    }
  }

  .bottom-row {
    .chart-card {
      border-radius: 10px;
      border: none;
      background: #fff;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.06);

      ::v-deep .el-card__header {
        padding: 14px 20px;
        font-size: 15px;
        font-weight: 600;
        color: #303133;
        border-bottom: none;
        background: transparent;

        i { margin-right: 6px; color: #409EFF; }
      }

      ::v-deep .el-timeline-item {
        padding-bottom: 12px;
      }
    }
  }
}
</style>
