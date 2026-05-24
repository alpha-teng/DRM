<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="报告类型" prop="reportType">
        <el-select v-model="queryParams.reportType" placeholder="请选择报告类型" clearable style="width: 200px">
          <el-option label="全部类型" value="" />
          <el-option label="门诊统计" value="门诊统计" />
          <el-option label="住院统计" value="住院统计" />
          <el-option label="手术统计" value="手术统计" />
        </el-select>
      </el-form-item>
      <el-form-item label="周期类型" prop="periodType">
        <el-select v-model="queryParams.periodType" placeholder="请选择周期类型" clearable style="width: 200px">
          <el-option label="全部周期" value="" />
          <el-option label="日报" value="daily" />
          <el-option label="周报" value="weekly" />
          <el-option label="月报" value="monthly" />
          <el-option label="季报" value="quarterly" />
          <el-option label="年报" value="yearly" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5"><el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleAdd">新增</el-button></el-col>
      <el-col :span="1.5"><el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate">修改</el-button></el-col>
      <el-col :span="1.5"><el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multiple" @click="handleDelete">删除</el-button></el-col>
      <el-col :span="1.5"><el-button type="warning" plain icon="el-icon-download" size="mini" @click="handleExport">导出</el-button></el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList" />
    </el-row>
    <el-table v-loading="loading" :data="dataList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="50" align="center" />
      <el-table-column label="报告ID" align="center" prop="reportId" width="80" />
      <el-table-column label="报告标题" align="center" prop="reportTitle" :show-overflow-tooltip="true" />
      <el-table-column label="报告类型" align="center" prop="reportType" width="120" />
      <el-table-column label="周期类型" align="center" prop="periodType" width="100">
        <template slot-scope="scope">
          <span v-if="scope.row.periodType === 'daily'">日报</span>
          <span v-else-if="scope.row.periodType === 'weekly'">周报</span>
          <span v-else-if="scope.row.periodType === 'monthly'">月报</span>
          <span v-else-if="scope.row.periodType === 'quarterly'">季报</span>
          <span v-else-if="scope.row.periodType === 'yearly'">年报</span>
          <span v-else>{{ scope.row.periodType }}</span>
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="status" width="80">
        <template slot-scope="scope"><el-tag v-if="scope.row.status === '0'" type="success">正常</el-tag><el-tag v-else type="danger">异常</el-tag></template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="160">
        <template slot-scope="scope"><span>{{ parseTime(scope.row.createTime) }}</span></template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
        <template slot-scope="scope"><el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">修改</el-button><el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button></template>
      </el-table-column>
    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
    <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="100px">
        <el-form-item label="报告标题" prop="reportTitle"><el-input v-model="form.reportTitle" placeholder="请输入报告标题" /></el-form-item>
        <el-form-item label="报告类型" prop="reportType">
          <el-select v-model="form.reportType" placeholder="请选择报告类型" style="width: 100%">
            <el-option label="门诊统计" value="门诊统计" />
            <el-option label="住院统计" value="住院统计" />
            <el-option label="手术统计" value="手术统计" />
          </el-select>
        </el-form-item>
        <el-form-item label="周期类型" prop="periodType">
          <el-select v-model="form.periodType" placeholder="请选择周期类型" style="width: 100%">
            <el-option label="日报" value="daily" />
            <el-option label="周报" value="weekly" />
            <el-option label="月报" value="monthly" />
            <el-option label="季报" value="quarterly" />
            <el-option label="年报" value="yearly" />
          </el-select>
        </el-form-item>
        <el-form-item label="报告内容" prop="reportContent">
          <el-input v-model="form.reportContent" type="textarea" :rows="6" placeholder="请输入报告内容" />
        </el-form-item>
        <el-form-item label="状态" prop="status"><el-radio-group v-model="form.status"><el-radio label="0">正常</el-radio><el-radio label="1">异常</el-radio></el-radio-group></el-form-item>
        <el-form-item label="备注" prop="remark"><el-input v-model="form.remark" type="textarea" placeholder="请输入备注" /></el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { ReportApi } from '@/api/drm/report'

export default {
  name: "Report",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, reportType: '', periodType: '' },
      dialogTitle: '',
      dialogVisible: false,
      form: {},
      rules: {
        reportTitle: [{ required: true, message: '报告标题不能为空', trigger: 'blur' }],
        reportType: [{ required: true, message: '请选择报告类型', trigger: 'change' }],
        periodType: [{ required: true, message: '请选择周期类型', trigger: 'change' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      ReportApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.reportId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.reportId : this.ids[0]
      ReportApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const ids = row ? [row.reportId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => ReportApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; ReportApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.reportId ? ReportApi.update(this.form) : ReportApi.add(this.form)
          action.then(() => { this.$message.success(this.form.reportId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() {
      this.form = {
        status: '0',
        reportType: '门诊统计',
        periodType: 'monthly'
      }
      this.$nextTick(() => {
        if (this.$refs.form) this.$refs.form.clearValidate()
      })
    }
  }
}
</script>

<style scoped>
</style>
