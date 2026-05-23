<template>
  <div class="dashboard-container">
    <!-- 顶部统计卡片 -->
    <el-row :gutter="20" class="top-row">
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background-color: #409EFF;">
              <i class="el-icon-s-opportunity"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">招商项目总数</div>
              <div class="stat-value">48</div>
              <div class="stat-subtitle">
                <span class="increase">12.5% <i class="el-icon-top"></i></span> 较上月
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background-color: #67C23A;">
              <i class="el-icon-document-checked"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">签约企业数</div>
              <div class="stat-value">36</div>
              <div class="stat-subtitle">
                <span class="increase">8.3% <i class="el-icon-top"></i></span> 较上月
              </div>
            </div>
          </div>
          </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background-color: #E6A23C;">
              <i class="el-icon-s-home"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">园区使用率</div>
              <div class="stat-value">86%</div>
              <div class="stat-subtitle">
                <span class="increase">5.2% <i class="el-icon-top"></i></span> 较上月
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="stat-card">
          <div class="stat-item">
            <div class="stat-icon" style="background-color: #F56C6C;">
              <i class="el-icon-s-order"></i>
            </div>
            <div class="stat-content">
              <div class="stat-title">待办任务</div>
              <div class="stat-value">15</div>
              <div class="stat-subtitle">
                <span class="decrease">3 <i class="el-icon-bottom"></i></span> 较上周
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 主要图表区域 -->
    <el-row :gutter="20" class="chart-row">
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-data-line"></i> 招商漏斗分析</span>
            <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>
          </div>
          <div id="funnelChart" style="width: 100%; height: 350px;"></div>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-s-marketing"></i> 企业行业分布</span>
            <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>
          </div>
          <div id="pieChart" style="width: 100%; height: 350px;"></div>
        </el-card>
      </el-col>
    </el-row>

    <el-row :gutter="20" class="chart-row">
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-s-grid"></i> 空间利用率</span>
            <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>
          </div>
          <div id="barChart" style="width: 100%; height: 320px;"></div>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-s-data"></i> 招商任务统计</span>
            <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>
          </div>
          <div id="taskChart" style="width: 100%; height: 320px;"></div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 底部两栏 -->
    <el-row :gutter="20" class="bottom-row">
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot=".header" class="clearfix">
            <span><i class="el-icon-s-finance"></i> 招商绩效排名</span>
            <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>
          </div>
          <el-table :data="performanceRank" style="width: 100%" height="300">
            <el-table-column prop="rank" label="排名" width="80" align="center">
              <template slot-scope="scope">
                <el-tag :type="scope.row.rank <= 3 ? 'danger' : 'info'">
                  {{ scope.row.rank }}
                </el-tag>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="招商人员" width="120"></el-table-column>
            <el-table-column prop="department" label="部门" width="120"></el-table-column>
            <el-table-column prop="signed" label="签约数" width="100" align="center"></el-table-column>
            <el-table-column prop="amount" label="招商金额(万元)" align="center">
              <template slot-scope="scope">
                <span style="color: #f56c6c; font-weight: bold;">{{ scope.row.amount }}</span>
              </template>
            </el-table-column>
          </el-table>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card shadow="hover" class="chart-card">
          <div slot="header" class="clearfix">
            <span><i class="el-icon-message-solid"></i> 最新招商动态</span>
            <el-button style="float: right; padding: 3px 0" type="text">更多</el-button>
          </div>
          <el-timeline style="padding: 20px;">
            <el-timeline-item v-for="(item, index) in latestNews" :key="index" :timestamp="item.time" placement="top">
              <el-card>
                <h4>{{ item.title }}</h4>
                <p>{{ item.summary }}</p>
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
import {
  getFunnelData,
  getProgressData,
  getSpaceUtilization,
  getIndustryDist,
  getTaskStats,
  getLatestNews,
  getPerformanceRank
} from '@/api/dashboard'

export default {
  name: 'Dashboard',
  data() {
    return {
      funnelData: {},
      progressData: {},
      spaceUtilData: {},
      industryDistData: {},
      taskStatsData: {},
      latestNews: [],
      performanceRank: [],
      funnelChart: null,
      pieChart: null,
      barChart: null,
      taskChart: null
    }
  },
  mounted() {
    this.initCharts()
    this.fetchData()
  },
  beforeDestroy() {
    if (this.funnelChart) {
      this.funnelChart.dispose()
    }
    if (this.pieChart) {
      this.pieChart.dispose()
    }
    if (this.barChart) {
      this.barChart.dispose()
    }
    if (this.taskChart) {
      this.taskChart.dispose()
    }
  },
  methods: {
    fetchData() {
      getFunnelData().then(response => {
        this.funnelData = response.data
        this.initFunnelChart()
      })

      getIndustryDist().then(response => {
        this.industryDistData = response.data
        this.initPieChart()
      })

      getSpaceUtilization().then(response => {
        this.spaceUtilData = response.data
        this.initBarChart()
      })

      getTaskStats().then(response => {
        this.taskStatsData = response.data
        this.initTaskChart()
      })

      getLatestNews().then(response => {
        this.latestNews = response.data
      })

      getPerformanceRank().then(response => {
        this.performanceRank = response.data
      })
    },
    initCharts() {
      this.funnelChart = echarts.init(document.getElementById('funnelChart'))
      this.pieChart = echarts.init(document.getElementById('pieChart'))
      this.barChart = echarts.init(document.getElementById('barChart'))
      this.taskChart = echarts.init(document.getElementById('taskChart'))
    },
    initFunnelChart() {
      const option = {
        title: {
          text: '招商转化漏斗',
          subtext: '数据更新至2023年7月'
        },
        tooltip: {
          trigger: 'item',
          formatter: `{a} 
{b} : {c}`
        },
        toolbox: {
          feature: {
            dataView: { readOnly: false },
            restore: {},
            saveAsImage: {}
          }
        },
        legend: {
          data: this.funnelData.stages
        },
        series: [
          {
            name: '招商漏斗',
            type: 'funnel',
            left: '10%',
            top: 60,
            bottom: 60,
            width: '80%',
            min: 0,
            max: Math.max(...this.funnelData.values),
            minSize: '0%',
            maxSize: '100%',
            sort: 'descending',
            gap: 2,
            label: {
              show: true,
              position: 'inside'
            },
            labelLine: {
              length: 10,
              lineStyle: {
                width: 1,
                type: 'solid'
              }
            },
            itemStyle: {
              borderColor: '#fff',
              borderWidth: 1
            },
            emphasis: {
              label: {
                fontSize: 20
              }
            },
            data: this.funnelData.stages.map((stage, index) => ({
              value: this.funnelData.values[index],
              name: stage,
              itemStyle: {
                color: ['#c23531', '#2f4554', '#61a0a8', '#d48265', '#91c7ae'][index]
              }
            }))
          }
        ]
      }
      this.funnelChart.setOption(option)
    },
    initPieChart() {
      const option = {
        title: {
          text: '企业行业分布',
          subtext: '园区入驻企业行业占比',
          left: 'center'
        },
        tooltip: {
          trigger: 'item',
          formatter: `{a} 
{b}: {c} ({d}%)`
        },
        legend: {
          orient: 'vertical',
          left: 'left',
          data: this.industryDistData.industries
        },
        series: [
          {
            name: '企业行业',
            type: 'pie',
            radius: ['40%', '70%'],
            avoidLabelOverlap: false,
            itemStyle: {
              borderRadius: 10,
              borderColor: '#fff',
              borderWidth: 2
            },
            label: {
              show: false,
              position: 'center'
            },
            emphasis: {
              label: {
                show: true,
                fontSize: '18',
                fontWeight: 'bold'
              }
            },
            labelLine: {
              show: false
            },
            data: this.industryDistData.industries.map((item, index) => ({
              value: this.industryDistData.counts[index],
              name: item,
              itemStyle: {
                color: [
                  '#5470C6', '#91CC75', '#FAC858', '#EE6666',
                  '#73C0DE', '#3BA272', '#FC8452', '#9A60B4'
                ][index % 8]
              }
            }))
          }
        ]
      }
      this.pieChart.setOption(option)
    },
    initBarChart() {
      const option = {
        title: {
          text: '各楼栋空间利用率',
          subtext: '2023年7月数据',
          left: 'center'
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'shadow'
          }
        },
        grid: {
          left: '3%',
          right: '4%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: {
          type: 'value',
          boundaryGap: [0, 0.01],
          axisLabel: {
            formatter: '{value}%'
          }
        },
        yAxis: {
          type: 'category',
          data: this.spaceUtilData.buildings
        },
        series: [
          {
            name: '使用率',
            type: 'bar',
            data: this.spaceUtilData.rates.map(rate => ({
              value: (rate * 100).toFixed(1),
              itemStyle: {
                color: function (params) {
                  const val = params.value
                  if (val > 85) return '#67C23A'
                  if (val > 70) return '#409EFF'
                  if (val > 50) return '#E6A23C'
                  return '#F56C6C'
                }
              }
            })),
            label: {
              show: true,
              position: 'right',
              formatter: '{c}%'
            }
          }
        ]
      }
      this.barChart.setOption(option)
    },
    initTaskChart() {
      const option = {
        title: {
          text: '招商任务状态分布',
          subtext: '当前月度任务统计',
          left: 'center'
        },
        tooltip: {
          trigger: 'item',
          formatter: `{a} 
{b}: {c} ({d}%)`
        },
        legend: {
          orient: 'vertical',
          left: 'left',
          data: this.taskStatsData.status
        },
        series: [
          {
            name: '任务状态',
            type: 'pie',
            radius: '55%',
            center: ['50%', '60%'],
            data: this.taskStatsData.status.map((item, index) => ({
              value: this.taskStatsData.counts[index],
              name: item,
              itemStyle: {
                color: ['#67C23A', '#409EFF', '#E6A23C', '#F56C6C'][index]
              }
            })),
            emphasis: {
              itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
            }
          }
        ]
      }
      this.taskChart.setOption(option)
    }
  }
}

</script>

<style lang="scss" scoped>
.dashboard-container {
  padding: 20px;
  background-color: #f5f7fa;
  min-height: calc(100vh - 84px);

  .top-row {
    margin-bottom: 20px;

    .stat-card {
      border-radius: 8px;
      border: none;
      transition: all 0.3s ease;
      background: linear-gradient(145deg, #ffffff, #fafafa);
      box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.06);

      &:hover {
        transform: translateY(-3px);
        box-shadow: 0 4px 16px 0 rgba(0, 0, 0, 0.1);
      }

      .stat-item {
        display: flex;
        align-items: center;
        padding: 15px;

        .stat-icon {
          width: 60px;
          height: 60px;
          border-radius: 12px;
          display: flex;
          align-items: center;
          justify-content: center;
          color: white;
          font-size: 24px;
          margin-right: 16px;
          box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .stat-content {
          flex: 1;

          .stat-title {
            font-size: 14px;
            color: #909399;
            margin-bottom: 8px;
            font-weight: 500;
          }

          .stat-value {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 6px;
            color: #303133;
          }

          .stat-subtitle {
            font-size: 12px;
            color: #909399;
            display: flex;
            align-items: center;

            .increase {
              color: #f56c6c;
              margin-right: 5px;
              font-weight: 500;

              i {
                margin-left: 2px;
              }
            }

            .decrease {
              color: #67c23a;
              margin-right: 5px;
              font-weight: 500;

              i {
                margin-left: 2px;
              }
            }
          }
        }
      }
    }
  }

  .chart-row {
    margin-bottom: 20px;

    .chart-card {
      border-radius: 8px;
      border: none;
      transition: all 0.3s ease;
      background: linear-gradient(145deg, #ffffff, #fafafa);
      box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.06);

      &:hover {
        transform: translateY(-3px);
        box-shadow: 0 4px 16px 0 rgba(0, 0, 0, 0.1);
      }

      ::v-deep .el-card__header {
        padding: 12px 20px;
        font-size: 16px;
        font-weight: 600;
        color: #303133;
        border-bottom: none;
        background-color: rgba(245, 245, 245, 0.5);

        i {
          margin-right: 8px;
          color: #409eff;
        }

        .el-button {
          font-size: 12px;
          color: #409eff;

          &:hover {
            color: #66b1ff;
          }
        }
      }

      ::v-deep .el-card__body {
        padding: 15px;
        height: 350px;
      }
    }
  }

  .bottom-row {
    margin-bottom: 20px;

    .chart-card {
      border-radius: 8px;
      border: none;
      transition: all 0.3s ease;
      background: linear-gradient(145deg, #ffffff, #fafafa);
      box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.06);

      &:hover {
        transform: translateY(-3px);
        box-shadow: 0 4px 16px 0 rgba(0, 0, 0, 0.1);
      }

      ::v-deep .el-card__header {
        padding: 12px 20px;
        font-size: 16px;
        font-weight: 600;
        color: #303133;
        border-bottom: none;
        background-color: rgba(245, 245, 245, 0.5);

        i {
          margin-right: 8px;
          color: #409eff;
        }

        .el-button {
          font-size: 12px;
          color: #409eff;

          &:hover {
            color: #66b1ff;
          }
        }
      }

      ::v-deep .el-card__body {
        padding: 15px;
      }

      ::v-deep .el-timeline {
        padding-left: 15px;

        .el-timeline-item {
          padding-bottom: 15px;

          ::v-deep .el-timeline-item__node {
            background-color: #409eff;
            width: 12px;
            height: 12px;
          }

          ::v-deep .el-timeline-item__timestamp {
            font-size: 13px;
            color: #909399;
            margin-bottom: 5px;
          }

          .el-card {
            border-radius: 6px;
            border: 1px solid #ebeef5;
            background-color: #f9fafc;

            h4 {
              font-size: 15px;
              margin: 0 0 8px 0;
              color: #303133;
            }

            p {
              font-size: 13px;
              margin: 0;
              color: #606266;
              line-height: 1.6;
            }
          }
        }
      }

      ::v-deep .el-table {
        th {
          background-color: #f5f7fa;
          color: #606266;
          font-weight: 600;
        }

        td {
          padding: 12px 0;
        }

        .el-tag {
          border-radius: 50%;
          width: 24px;
          height: 24px;
          padding: 0;
          display: flex;
          align-items: center;
          justify-content: center;
        }
      }
    }
  }
}

@media screen and (max-width: 1200px) {
  .dashboard-container {
    .top-row {
      flex-wrap: wrap;

      .el-col {
        width: 50%;
        margin-bottom: 15px;
      }
    }

    .chart-row {
      flex-wrap: wrap;

      .el-col {
        width: 100%;
        margin-bottom: 15px;
      }
    }

    .bottom-row {
      flex-wrap: wrap;

      .el-col {
        width: 100%;
        margin-bottom: 15px;
      }
    }
  }
}

@media screen and (max-width: 768px) {
  .dashboard-container {
    .top-row {
      .el-col {
        width: 100%;
      }
    }
  }
}
</style>