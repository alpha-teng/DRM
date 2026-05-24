<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="患者姓名" prop="patientName">
        <el-input v-model="queryParams.patientName" placeholder="请输入患者姓名" clearable style="width: 200px" />
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
      <el-table-column label="应收ID" align="center" prop="receivableId" width="100" />
      <el-table-column label="患者姓名" align="center" prop="patientName" width="120" />
      <el-table-column label="科室名称" align="center" prop="deptName" width="150" />
      <el-table-column label="账单日期" align="center" prop="billDate" width="120" />
      <el-table-column label="应收金额(元)" align="center" prop="amount" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.amount).toLocaleString() }}</span></template>
      </el-table-column>
      <el-table-column label="已付金额(元)" align="center" prop="paidAmount" width="120">
        <template slot-scope="scope"><span>{{ Number(scope.row.paidAmount).toLocaleString() }}</span></template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="status" width="100">
        <template slot-scope="scope"><el-tag v-if="scope.row.status === '0'" type="success">未结清</el-tag><el-tag v-else type="info">已结清</el-tag></template>
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
        <el-form-item label="患者姓名" prop="patientName"><el-input v-model="form.patientName" placeholder="请输入患者姓名" /></el-form-item>
        <el-form-item label="科室名称" prop="deptName"><el-input v-model="form.deptName" placeholder="请输入科室名称" /></el-form-item>
        <el-form-item label="账单日期" prop="billDate"><el-date-picker v-model="form.billDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 100%" /></el-form-item>
        <el-form-item label="应收金额" prop="amount"><el-input-number v-model="form.amount" :precision="2" :min="0" style="width: 100%" /></el-form-item>
        <el-form-item label="已付金额" prop="paidAmount"><el-input-number v-model="form.paidAmount" :precision="2" :min="0" style="width: 100%" /></el-form-item>
        <el-form-item label="状态" prop="status">
          <el-radio-group v-model="form.status"><el-radio label="0">未结清</el-radio><el-radio label="1">已结清</el-radio></el-radio-group>
        </el-form-item>
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
import { ReceivableApi } from '@/api/drm/receivable'

export default {
  name: "Receivable",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, patientName: '', deptName: '' },
      dialogTitle: '',
      dialogVisible: false,
      form: {},
      rules: {
        patientName: [{ required: true, message: '患者姓名不能为空', trigger: 'blur' }],
        deptName: [{ required: true, message: '科室名称不能为空', trigger: 'blur' }],
        billDate: [{ required: true, message: '账单日期不能为空', trigger: 'blur' }],
        amount: [{ required: true, message: '应收金额不能为空', trigger: 'blur' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      ReceivableApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.receivableId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.receivableId : this.ids[0]
      ReceivableApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const ids = row ? [row.receivableId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => ReceivableApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; ReceivableApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.receivableId ? ReceivableApi.update(this.form) : ReceivableApi.add(this.form)
          action.then(() => { this.$message.success(this.form.receivableId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() {
      this.form = {
        billDate: new Date().toISOString().split('T')[0],
        status: '0',
        paidAmount: 0
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
