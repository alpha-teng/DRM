<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="支出日期" prop="expenseDate">
        <el-date-picker v-model="queryParams.expenseDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 150px" />
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
      <el-col :span="1.5"><el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleAdd">新增</el-button></el-col>
      <el-col :span="1.5"><el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate">修改</el-button></el-col>
      <el-col :span="1.5"><el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multiple" @click="handleDelete">删除</el-button></el-col>
      <el-col :span="1.5"><el-button type="warning" plain icon="el-icon-download" size="mini" @click="handleExport">导出</el-button></el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList" />
    </el-row>
    <el-table v-loading="loading" :data="dataList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="50" align="center" />
      <el-table-column label="支出ID" align="center" prop="expenseId" width="100" />
      <el-table-column label="支出日期" align="center" prop="expenseDate" width="120" />
      <el-table-column label="科室名称" align="center" prop="deptName" width="150" />
      <el-table-column label="支出类型" align="center" prop="expenseType" width="120" />
      <el-table-column label="金额(元)" align="center" prop="amount" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.amount).toLocaleString() }}</span></template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="160">
        <template slot-scope="scope"><span>{{ parseTime(scope.row.createTime) }}</span></template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
        <template slot-scope="scope"><el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">修改</el-button><el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button></template>
      </el-table-column>
    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
    <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="600px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="100px">
        <el-form-item label="支出日期" prop="expenseDate"><el-date-picker v-model="form.expenseDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 100%" /></el-form-item>
        <el-form-item label="科室名称" prop="deptName"><el-input v-model="form.deptName" placeholder="请输入科室名称" /></el-form-item>
        <el-form-item label="支出类型" prop="expenseType">
          <el-select v-model="form.expenseType" placeholder="请选择支出类型" style="width: 100%">
            <el-option label="设备采购" value="设备采购" />
            <el-option label="药品采购" value="药品采购" />
            <el-option label="人员工资" value="人员工资" />
            <el-option label="水电费用" value="水电费用" />
            <el-option label="其他支出" value="其他支出" />
          </el-select>
        </el-form-item>
        <el-form-item label="金额" prop="amount"><el-input-number v-model="form.amount" :precision="2" :min="0" style="width: 100%" /></el-form-item>
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
import { ExpenseApi } from '@/api/drm/expense'

export default {
  name: "Expense",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, expenseDate: '', deptName: '' },
      dialogTitle: '',
      dialogVisible: false,
      form: {},
      rules: {
        expenseDate: [{ required: true, message: '支出日期不能为空', trigger: 'blur' }],
        deptName: [{ required: true, message: '科室名称不能为空', trigger: 'blur' }],
        expenseType: [{ required: true, message: '请选择支出类型', trigger: 'change' }],
        amount: [{ required: true, message: '金额不能为空', trigger: 'blur' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      ExpenseApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.expenseId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.expenseId : this.ids[0]
      ExpenseApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const ids = row ? [row.expenseId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => ExpenseApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; ExpenseApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.expenseId ? ExpenseApi.update(this.form) : ExpenseApi.add(this.form)
          action.then(() => { this.$message.success(this.form.expenseId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() {
      this.form = {
        expenseDate: new Date().toISOString().split('T')[0],
        expenseType: '设备采购'
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
