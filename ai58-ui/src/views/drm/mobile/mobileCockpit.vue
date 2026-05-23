<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" label-width="80px" style="margin-bottom: 10px">
      <el-form-item label="时间范围">
        <el-date-picker v-model="dateRange" type="daterange" range-separator="-" start-placeholder="开始日期" end-placeholder="结束日期" value-format="yyyy-MM-dd" style="width: 300px" @change="handleDateChange" />
      </el-form-item>
      <el-form-item label="科室">
        <el-select v-model="queryParams.deptId" placeholder="请选择科室" clearable style="width: 200px">
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

    <el-row :gutter="20" class="panel-group">
      <el-col :xs="12" :sm="12" :lg="6">
        <div class="card-panel">
          <div class="card-panel-icon-wrapper icon-blue"><i class="el-icon-user-solid card-panel-icon"></i></div>
          <div class="card-panel-description">
            <div class="card-panel-text">门急诊人次</div>
            <count-to :start-val="0" :end-val="statistics.outpatientCount || 0" :duration="2600" class="card-panel-num" />
          </div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="12" :lg="6">
        <div class="card-panel">
          <div class="card-panel-icon-wrapper icon-green"><i class="el-icon-s-check card-panel-icon"></i></div>
          <div class="card-panel-description">
            <div class="card-panel-text">住院人次</div>
            <count-to :start-val="0" :end-val="statistics.inpatientCount || 0" :duration="3000" class="card-panel-num" />
          </div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="12" :lg="6">
        <div class="card-panel">
          <div class="card-panel-icon-wrapper icon-orange"><i class="el-icon-wallet card-panel-icon"></i></div>
          <div class="card-panel-description">
            <div class="card-panel-text">总收入(万元)</div>
            <count-to :start-val="0" :end-val="statistics.totalIncome || 0" :duration="3200" class="card-panel-num" />
          </div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="12" :lg="6">
        <div class="card-panel">
          <div class="card-panel-icon-wrapper icon-purple"><i class="el-icon-s-data card-panel-icon"></i></div>
          <div class="card-panel-description">
            <div class="card-panel-text">床位使用率</div>
            <count-to :start-val="0" :end-val="statistics.bedUsageRate || 0" :duration="3600" class="card-panel-num" suffix="%" />
          </div>
        </div>
      </el-col>
    </el-row>

    <el-row :gutter="20" style="margin-top: 20px">
      <el-col :span="12">
        <div class="chart-container">
          <div class="chart-title">运营趋势</div>
          <div ref="trendChart" style="height: 300px"></div>
        </div>
      </el-col>
      <el-col :span="12">
        <div class="chart-container">
          <div class="chart-title">收入构成</div>
          <div ref="pieChart" style="height: 300px"></div>
        </div>
      </el-col>
    </el-row>

    <el-row style="margin-top: 20px">
      <el-col :span="24">
        <div class="chart-container">
          <div class="chart-title">预警信息</div>
          <el-table :data="warningList" style="width: 100%" v-loading="warningLoading">
            <el-table-column label="预警级别" align="center" width="100">
              <template slot-scope="scope">
                <el-tag v-if="scope.row.level === '1'" type="danger">红色</el-tag>
                <el-tag v-else-if="scope.row.level === '2'" type="warning">橙色</el-tag>
                <el-tag v-else type="info">蓝色</el-tag>
              </template>
            </el-table-column>
            <el-table-column label="预警内容" align="center" prop="content" :show-overflow-tooltip="true" />
            <el-table-column label="科室" align="center" prop="deptName" width="120" />
            <el-table-column label="时间" align="center" prop="createTime" width="160" />
            <el-table-column label="操作" align="center" width="100">
              <template slot-scope="scope"><el-button size="mini" type="text" @click="handleViewWarning(scope.row)">查看</el-button></template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import CountTo from 'vue-count-to'
import * as echarts from 'echarts'

export default {
  name: "Mobilecockpit",
  components: { CountTo },
  data() {
    return { loading: false, warningLoading: false, dateRange: [], queryParams: { deptId: '' }, statistics: {}, warningList: [], trendChart: null, pieChart: null }
  },
  mounted() { this.getStatistics(); this.getWarningList(); this.$nextTick(() => { this.initCharts() }); window.addEventListener('resize', this.handleResize) },
  beforeDestroy() { window.removeEventListener('resize', this.handleResize) },
  methods: {
    getStatistics() {
      this.loading = true
      setTimeout(() => {
        this.statistics = { outpatientCount: 12580, inpatientCount: 3280, totalIncome: 892.5, bedUsageRate: 85.6 }
        this.loading = false
        this.$nextTick(() => { this.updateCharts() })
      }, 500)
    },
    getWarningList() {
      this.warningLoading = true
      setTimeout(() => {
        this.warningList = [
          { id: 1, level: '1', content: '内科住院床位使用率超过95%，请关注', deptName: '内科', createTime: '2026-05-24 08:00:00' },
          { id: 2, level: '2', content: '门诊候诊时间超过30分钟', deptName: '门诊部', createTime: '2026-05-24 09:00:00' },
          { id: 3, level: '3', content: '药品库存低于安全库存线', deptName: '药剂科', createTime: '2026-05-24 10:00:00' }
        ]
        this.warningLoading = false
      }, 300)
    },
    initCharts() { this.trendChart = echarts.init(this.$refs.trendChart); this.pieChart = echarts.init(this.$refs.pieChart) },
    updateCharts() {
      const trendOption = { tooltip: { trigger: 'axis' }, legend: { data: ['门急诊人次', '住院人次'] }, grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true }, xAxis: { type: 'category', boundaryGap: false, data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'] }, yAxis: { type: 'value' }, series: [{ name: '门急诊人次', type: 'line', smooth: true, data: [1200, 1350, 1280, 1420, 1390, 1100, 980] }, { name: '住院人次', type: 'line', smooth: true, data: [420, 450, 438, 460, 448, 400, 380] }] }
      const pieOption = { tooltip: { trigger: 'item' }, legend: { bottom: '5%', left: 'center' }, series: [{ name: '收入构成', type: 'pie', radius: ['40%', '70%'], avoidLabelOverlap: false, itemStyle: { borderRadius: 10, borderColor: '#fff', borderWidth: 2 }, label: { show: true, formatter: '{b}: {c}万 ({d}%)' }, data: [{ value: 350, name: '药品收入' }, { value: 280, name: '检查收入' }, { value: 150, name: '手术收入' }, { value: 112.5, name: '其他收入' }] }] }
      this.trendChart && this.trendChart.setOption(trendOption)
      this.pieChart && this.pieChart.setOption(pieOption)
    },
    handleResize() { this.trendChart && this.trendChart.resize(); this.pieChart && this.pieChart.resize() },
    handleDateChange() { this.getStatistics() },
    handleQuery() { this.getStatistics(); this.getWarningList() },
    resetQuery() { this.dateRange = []; this.queryParams = { deptId: '' }; this.handleQuery() },
    handleViewWarning(row) { this.$message.info('预警详情: ' + row.content) }
  }
}
</script>

<style scoped>
.panel-group { margin-top: 18px; }
.card-panel { height: 108px; cursor: pointer; font-size: 12px; position: relative; overflow: hidden; color: #666; background: #fff; box-shadow: 4px 4px 40px rgba(0,0,0,.05); border-color: rgba(0,0,0,.05); display: flex; align-items: center; padding: 0 20px; }
.card-panel:hover .card-panel-icon-wrapper { color: #fff; }
.card-panel-icon-wrapper { float: left; margin: 14px 0 0 14px; padding: 16px; transition: all .38s ease-out; border-radius: 6px; }
.card-panel-icon { float: left; font-size: 48px; }
.card-panel-description { float: right; font-weight: bold; margin: 26px; margin-left: 0px; }
.card-panel-text { line-height: 18px; color: rgba(0,0,0,.45); font-size: 16px; margin-bottom: 12px; }
.card-panel-num { font-size: 20px; }
.icon-blue { color: #36a3f7; }
.icon-green { color: #34bfa3; }
.icon-orange { color: #f4516c; }
.icon-purple { color: #eac; }
.chart-container { background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 12px rgba(0,0,0,.06); }
.chart-title { font-size: 16px; font-weight: bold; color: #333; margin-bottom: 15px; padding-left: 10px; border-left: 3px solid #409EFF; }
.mb8 { margin-bottom: 8px; }
</style>