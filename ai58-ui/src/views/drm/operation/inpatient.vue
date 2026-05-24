<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="统计日期" prop="statDate">
        <el-date-picker v-model="queryParams.statDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 150px" />
      </el-form-item>
      <el-form-item label="科室名称" prop="deptName">
        <el-input v-model="queryParams.deptName" placeholder="请输入科室名称" clearable style="width: 200px" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5"><el-button type="warning" plain icon="el-icon-download" size="mini" @click="handleExport">导出</el-button></el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList" />
    </el-row>
    <el-table v-loading="loading" :data="dataList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="50" align="center" />
      <el-table-column label="统计ID" align="center" prop="statsId" width="80" />
      <el-table-column label="统计日期" align="center" prop="statDate" width="120" />
      <el-table-column label="科室" align="center" prop="deptName" />
      <el-table-column label="入院数" align="center" prop="inCnt" width="100" />
      <el-table-column label="出院数" align="center" prop="outCnt" width="100" />
      <el-table-column label="床位占用数" align="center" prop="bedOccupyCnt" width="110" />
      <el-table-column label="床位使用率(%)" align="center" prop="bedOccupyRate" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.bedOccupyRate).toFixed(2) }}</span></template>
      </el-table-column>
      <el-table-column label="平均住院天数" align="center" prop="avgStayDays" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.avgStayDays).toFixed(2) }}</span></template>
      </el-table-column>
      <el-table-column label="收入(元)" align="center" prop="revenue" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.revenue).toLocaleString() }}</span></template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="160">
        <template slot-scope="scope"><span>{{ formatCreateTime(scope.row.createTime) }}</span></template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
        <template slot-scope="scope"><el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">查看</el-button><el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button></template>
      </el-table-column>
    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
  </div>
</template>

<script>
import { InpatientApi } from '@/api/drm/inpatient'

export default {
  name: "Inpatient",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, statDate: '', deptName: '' }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      InpatientApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.statsId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleUpdate(row) {
      this.$message.info('查看统计ID: ' + row.statsId)
    },
    handleDelete(row) {
      const ids = row ? [row.statsId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => InpatientApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; InpatientApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    formatCreateTime(time) { return this.parseTime(time) }
  }
}
</script>

<style scoped>
</style>
