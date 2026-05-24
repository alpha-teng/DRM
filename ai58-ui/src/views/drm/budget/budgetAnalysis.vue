<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" label-width="80px" style="margin-bottom: 10px">
      <el-form-item label="时间范围">
        <el-date-picker v-model="dateRange" type="daterange" range-separator="-" start-placeholder="开始日期" end-placeholder="结束日期" value-format="yyyy-MM-dd" style="width: 280px" />
      </el-form-item>
      <el-form-item label="科室">
        <el-select v-model="queryParams.deptId" placeholder="请选择" clearable style="width: 180px">
          <el-option label="全部科室" value="" />
          <el-option label="内科" value="1" /><el-option label="外科" value="2" />
          <el-option label="儿科" value="3" /><el-option label="妇产科" value="4" /><el-option label="急诊科" value="5" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">查询</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>
    <el-row :gutter="20" style="margin-bottom: 20px">
      <el-col :span="12">
        <div class="chart-box">
          <div class="chart-title">指标趋势</div>
          <div ref="lineChart" style="height: 300px"></div>
        </div>
      </el-col>
      <el-col :span="12">
        <div class="chart-box">
          <div class="chart-title">构成分析</div>
          <div ref="barChart" style="height: 300px"></div>
        </div>
      </el-col>
    </el-row>
    <el-row :gutter="20" style="margin-bottom: 20px">
      <el-col :span="24">
        <div class="chart-box">
          <div class="chart-title">数据明细</div>
          <el-table :data="tableData" v-loading="loading" border>
            <el-table-column label="科室" align="center" prop="deptName" />
            <el-table-column label="指标1" align="center" prop="value1" />
            <el-table-column label="指标2" align="center" prop="value2" />
            <el-table-column label="同比" align="center" prop="yoy">
              <template slot-scope="scope"><span :class="scope.row.yoy >= 0 ? 'text-red' : 'text-green'">{{ scope.row.yoy }}%</span></template>
            </el-table-column>
            <el-table-column label="环比" align="center" prop="qoq">
              <template slot-scope="scope"><span :class="scope.row.qoq >= 0 ? 'text-red' : 'text-green'">{{ scope.row.qoq }}%</span></template>
            </el-table-column>
          </el-table>
          <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getData" />
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import * as echarts from 'echarts'

export default {
  name: "Budgetanalysis",
  data() {
    return { loading: false, dateRange: [], queryParams: { pageNum: 1, pageSize: 10, deptId: '' }, tableData: [], total: 0, lineChart: null, barChart: null }
  },
  mounted() { this.getData(); this.$nextTick(() => { this.initCharts() }); window.addEventListener('resize', this.handleResize) },
  beforeDestroy() { window.removeEventListener('resize', this.handleResize) },
  methods: {
    getData() {
      this.loading = true
      setTimeout(() => {
        this.tableData = [
          { deptName: '内科', value1: 1250, value2: 980, yoy: 5.2, qoq: -1.3 },
          { deptName: '外科', value1: 890, value2: 750, yoy: 8.1, qoq: 3.5 },
          { deptName: '儿科', value1: 680, value2: 620, yoy: -2.1, qoq: -0.8 },
          { deptName: '妇产科', value1: 560, value2: 480, yoy: 12.5, qoq: 6.2 }
        ]
        this.total = 4; this.loading = false
        this.$nextTick(() => { this.updateCharts() })
      }, 400)
    },
    initCharts() { this.lineChart = echarts.init(this.$refs.lineChart); this.barChart = echarts.init(this.$refs.barChart) },
    updateCharts() {
      const lineOption = { tooltip: { trigger: 'axis' }, legend: { data: ['本月', '上月'] }, grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true }, xAxis: { type: 'category', data: ['1月', '2月', '3月', '4月', '5月', '6月'] }, yAxis: { type: 'value' }, series: [{ name: '本月', type: 'line', smooth: true, data: [820, 932, 901, 934, 1290, 1330] }, { name: '上月', type: 'line', smooth: true, data: [720, 812, 791, 834, 1090, 1130] }] }
      const barOption = { tooltip: { trigger: 'axis' }, legend: { data: ['指标A', '指标B'] }, grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true }, xAxis: { type: 'category', data: ['内科', '外科', '儿科', '妇产科'] }, yAxis: { type: 'value' }, series: [{ name: '指标A', type: 'bar', data: [1250, 890, 680, 560] }, { name: '指标B', type: 'bar', data: [980, 750, 620, 480] }] }
      this.lineChart && this.lineChart.setOption(lineOption)
      this.barChart && this.barChart.setOption(barOption)
    },
    handleResize() { this.lineChart && this.lineChart.resize(); this.barChart && this.barChart.resize() },
    handleQuery() { this.getData() },
    resetQuery() { this.dateRange = []; this.queryParams.deptId = ''; this.getData() }
  }
}
</script>

<style scoped>
.chart-box { background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 12px rgba(0,0,0,.06); }
.chart-title { font-size: 16px; font-weight: bold; color: #333; margin-bottom: 15px; padding-left: 10px; border-left: 3px solid #409EFF; }
.text-red { color: #F56C6C; }
.text-green { color: #67C23A; }
</style>