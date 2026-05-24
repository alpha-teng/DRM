<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="80px">
      <el-form-item label="方案名称" prop="planName">
        <el-input v-model="queryParams.planName" placeholder="请输入方案名称" clearable style="width: 200px" />
      </el-form-item>
      <el-form-item label="方案类型" prop="planType">
        <el-select v-model="queryParams.planType" placeholder="请选择方案类型" clearable style="width: 200px">
          <el-option label="月度方案" value="monthly" />
          <el-option label="季度方案" value="quarterly" />
          <el-option label="年度方案" value="yearly" />
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
      <el-table-column label="方案ID" align="center" prop="planId" width="80" />
      <el-table-column label="方案名称" align="center" prop="planName" :show-overflow-tooltip="true" />
      <el-table-column label="方案类型" align="center" prop="planType" width="120">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.planType === 'monthly'" type="primary">月度方案</el-tag>
          <el-tag v-else-if="scope.row.planType === 'quarterly'" type="success">季度方案</el-tag>
          <el-tag v-else-if="scope.row.planType === 'yearly'" type="warning">年度方案</el-tag>
          <el-tag v-else type="info">{{ scope.row.planType }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="生效日期" align="center" prop="effectiveDate" width="120" />
      <el-table-column label="状态" align="center" prop="status" width="80">
        <template slot-scope="scope"><el-tag v-if="scope.row.status === '0'" type="success">正常</el-tag><el-tag v-else type="danger">停用</el-tag></template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="160">
        <template slot-scope="scope"><span>{{ parseTime(scope.row.createTime) }}</span></template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">修改</el-button>
          <el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
    <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="700px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="120px">
        <el-row>
          <el-col :span="12">
            <el-form-item label="方案名称" prop="planName">
              <el-input v-model="form.planName" placeholder="请输入方案名称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="方案类型" prop="planType">
              <el-select v-model="form.planType" placeholder="请选择方案类型" style="width: 100%">
                <el-option label="月度方案" value="monthly" />
                <el-option label="季度方案" value="quarterly" />
                <el-option label="年度方案" value="yearly" />
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="生效日期" prop="effectiveDate">
              <el-date-picker v-model="form.effectiveDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 100%" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="状态" prop="status">
              <el-radio-group v-model="form.status">
                <el-radio label="0">正常</el-radio>
                <el-radio label="1">停用</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
        <el-form-item label="公式配置" prop="formulaConfig">
          <el-input v-model="form.formulaConfig" type="textarea" :rows="4" placeholder="请输入公式配置" />
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入备注" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { PerfPlanApi } from '@/api/drm/perfPlan'

export default {
  name: "Perfplan",
  data() {
    return {
      loading: true, showSearch: true, ids: [], single: true, multiple: true, total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, planName: '', planType: '' },
      dialogTitle: '', dialogVisible: false,
      form: {},
      rules: {
        planName: [{ required: true, message: '方案名称不能为空', trigger: 'blur' }],
        planType: [{ required: true, message: '方案类型不能为空', trigger: 'change' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      PerfPlanApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []; this.total = res.total || 0; this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.planId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增绩效方案'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const planId = row ? row.planId : this.ids[0]
      PerfPlanApi.get(planId).then(res => { this.form = res.data; this.dialogTitle = '修改绩效方案'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const planIds = row ? [row.planId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => PerfPlanApi.del(planIds)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; PerfPlanApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.planId ? PerfPlanApi.update(this.form) : PerfPlanApi.add(this.form)
          action.then(() => { this.$message.success(this.form.planId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() { this.form = { status: '0' }; this.$nextTick(() => { if (this.$refs.form) this.$refs.form.clearValidate() }) }
  }
}
</script>
