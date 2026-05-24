<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="报告标题" prop="reportTitle">
        <el-input v-model="queryParams.reportTitle" placeholder="请输入报告标题" clearable style="width: 200px" />
      </el-form-item>
      <el-form-item label="报告类型" prop="reportType">
        <el-select v-model="queryParams.reportType" placeholder="请选择报告类型" clearable style="width: 200px">
          <el-option label="全部类型" value="" />
          <el-option label="月报" value="月报" />
          <el-option label="季报" value="季报" />
          <el-option label="年报" value="年报" />
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
      <el-table-column label="报告类型" align="center" prop="reportType" width="100" />
      <el-table-column label="报告周期" align="center" prop="reportPeriod" width="100" />
      <el-table-column label="目标科室" align="center" prop="targetDept" width="120" />
      <el-table-column label="总收入(元)" align="center" prop="totalIncome" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.totalIncome).toLocaleString() }}</span></template>
      </el-table-column>
      <el-table-column label="总支出(元)" align="center" prop="totalExpense" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.totalExpense).toLocaleString() }}</span></template>
      </el-table-column>
      <el-table-column label="结余(元)" align="center" prop="balance" width="120">
        <template slot-scope="scope"><span :class="Number(scope.row.balance) >= 0 ? 'text-green' : 'text-red'">{{ Number(scope.row.balance).toLocaleString() }}</span></template>
      </el-table-column>
      <el-table-column label="收入增长" align="center" prop="incomeGrowth" width="100" />
      <el-table-column label="支出增长" align="center" prop="expenseGrowth" width="100" />
      <el-table-column label="状态" align="center" prop="status" width="80">
        <template slot-scope="scope"><el-tag v-if="scope.row.status === '0'" type="success">正常</el-tag><el-tag v-else type="danger">停用</el-tag></template>
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
      <el-form ref="form" :model="form" :rules="rules" label-width="120px">
        <el-row>
          <el-col :span="12">
            <el-form-item label="报告标题" prop="reportTitle"><el-input v-model="form.reportTitle" placeholder="请输入报告标题" /></el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="报告类型" prop="reportType">
              <el-select v-model="form.reportType" placeholder="请选择报告类型" style="width: 100%">
                <el-option label="月报" value="月报" />
                <el-option label="季报" value="季报" />
                <el-option label="年报" value="年报" />
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="报告周期" prop="reportPeriod">
              <el-input v-model="form.reportPeriod" placeholder="如：2025-05 或 2025-Q1" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="目标科室" prop="targetDept">
              <el-input v-model="form.targetDept" placeholder="全院报告留空" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="8">
            <el-form-item label="总收入(元)" prop="totalIncome"><el-input-number v-model="form.totalIncome" :precision="2" style="width: 100%" /></el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="总支出(元)" prop="totalExpense"><el-input-number v-model="form.totalExpense" :precision="2" style="width: 100%" /></el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="结余(元)" prop="balance"><el-input-number v-model="form.balance" :precision="2" style="width: 100%" /></el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="收入增长率" prop="incomeGrowth">
              <el-input v-model="form.incomeGrowth" placeholder="如：+8.5%" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="支出增长率" prop="expenseGrowth">
              <el-input v-model="form.expenseGrowth" placeholder="如：+6.2%" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-form-item label="报告内容" prop="content">
          <el-input v-model="form.content" type="textarea" :rows="4" placeholder="请输入报告内容" />
        </el-form-item>
        <el-row>
          <el-col :span="12">
            <el-form-item label="状态" prop="status">
              <el-radio-group v-model="form.status"><el-radio label="0">正常</el-radio><el-radio label="1">停用</el-radio></el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
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
import { FinanceReportApi } from '@/api/drm/financeReport'

export default {
  name: "Financereport",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, reportTitle: '', reportType: '' },
      dialogTitle: '',
      dialogVisible: false,
      form: {},
      rules: {
        reportTitle: [{ required: true, message: '报告标题不能为空', trigger: 'blur' }],
        reportType: [{ required: true, message: '请选择报告类型', trigger: 'change' }],
        reportPeriod: [{ required: true, message: '报告周期不能为空', trigger: 'blur' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      FinanceReportApi.list(this.queryParams).then(res => {
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
      FinanceReportApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const ids = row ? [row.reportId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => FinanceReportApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; FinanceReportApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.reportId ? FinanceReportApi.update(this.form) : FinanceReportApi.add(this.form)
          action.then(() => { this.$message.success(this.form.reportId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() {
      this.form = {
        reportPeriod: new Date().toISOString().slice(0, 7),
        reportType: '月报',
        status: '0',
        totalIncome: 0,
        totalExpense: 0,
        balance: 0
      }
      this.$nextTick(() => {
        if (this.$refs.form) this.$refs.form.clearValidate()
      })
    }
  }
}
</script>

<style scoped>
.text-green {
  color: #67C23A;
}
.text-red {
  color: #F56C6C;
}
</style>
