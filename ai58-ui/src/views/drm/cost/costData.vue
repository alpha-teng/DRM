<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="成本日期" prop="costDate">
        <el-date-picker v-model="queryParams.costDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 150px" />
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
      <el-table-column label="成本ID" align="center" prop="costId" width="100" />
      <el-table-column label="成本日期" align="center" prop="costDate" width="120" />
      <el-table-column label="科室名称" align="center" prop="deptName" width="150" />
      <el-table-column label="成本类型" align="center" prop="costType" width="120" />
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
        <el-form-item label="成本日期" prop="costDate"><el-date-picker v-model="form.costDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 100%" /></el-form-item>
        <el-form-item label="科室名称" prop="deptName"><el-input v-model="form.deptName" placeholder="请输入科室名称" /></el-form-item>
        <el-form-item label="成本类型" prop="costType">
          <el-select v-model="form.costType" placeholder="请选择成本类型" style="width: 100%">
            <el-option label="直接成本" value="直接成本" />
            <el-option label="间接成本" value="间接成本" />
            <el-option label="人力成本" value="人力成本" />
            <el-option label="设备成本" value="设备成本" />
            <el-option label="材料成本" value="材料成本" />
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
import { CostDataApi } from '@/api/drm/costData'

export default {
  name: "CostData",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, costDate: '', deptName: '' },
      dialogTitle: '',
      dialogVisible: false,
      form: {},
      rules: {
        costDate: [{ required: true, message: '成本日期不能为空', trigger: 'blur' }],
        deptName: [{ required: true, message: '科室名称不能为空', trigger: 'blur' }],
        costType: [{ required: true, message: '请选择成本类型', trigger: 'change' }],
        amount: [{ required: true, message: '金额不能为空', trigger: 'blur' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      CostDataApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.costId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.costId : this.ids[0]
      CostDataApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const ids = row ? [row.costId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => CostDataApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; CostDataApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.costId ? CostDataApi.update(this.form) : CostDataApi.add(this.form)
          action.then(() => { this.$message.success(this.form.costId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() {
      this.form = {
        costDate: new Date().toISOString().split('T')[0],
        costType: '直接成本'
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
