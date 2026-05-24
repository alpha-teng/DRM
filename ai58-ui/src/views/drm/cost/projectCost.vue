<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="80px">
      <el-form-item label="查询月份" prop="costDate">
        <el-date-picker v-model="queryParams.costDate" type="month" value-format="yyyy-MM" placeholder="选择月份" style="width: 200px" />
      </el-form-item>
      <el-form-item label="项目名称" prop="projectName">
        <el-input v-model="queryParams.projectName" placeholder="请输入项目名称" clearable style="width: 200px" />
      </el-form-item>
      <el-form-item label="科室" prop="deptName">
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
      <el-table-column label="项目ID" align="center" prop="projectId" width="80" />
      <el-table-column label="项目名称" align="center" prop="projectName" :show-overflow-tooltip="true" />
      <el-table-column label="项目类型" align="center" prop="projectType" width="120" />
      <el-table-column label="科室" align="center" prop="deptName" width="120" />
      <el-table-column label="预算金额" align="center" prop="budgetAmount" width="120">
        <template slot-scope="scope">{{ scope.row.budgetAmount || '0.00' }}</template>
      </el-table-column>
      <el-table-column label="实际金额" align="center" prop="actualAmount" width="120">
        <template slot-scope="scope">{{ scope.row.actualAmount || '0.00' }}</template>
      </el-table-column>
      <el-table-column label="成本日期" align="center" prop="costDate" width="120" />
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
            <el-form-item label="项目名称" prop="projectName">
              <el-input v-model="form.projectName" placeholder="请输入项目名称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="项目类型" prop="projectType">
              <el-select v-model="form.projectType" placeholder="请选择项目类型" style="width: 100%">
                <el-option label="医疗设备" value="medical_equipment" />
                <el-option label="科研项目" value="research" />
                <el-option label="建设项目" value="construction" />
                <el-option label="信息化项目" value="it_project" />
                <el-option label="其他" value="other" />
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="科室" prop="deptName">
              <el-input v-model="form.deptName" placeholder="请输入科室名称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="成本日期" prop="costDate">
              <el-date-picker v-model="form.costDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 100%" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="预算金额" prop="budgetAmount">
              <el-input-number v-model="form.budgetAmount" :precision="2" :min="0" style="width: 100%" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="实际金额" prop="actualAmount">
              <el-input-number v-model="form.actualAmount" :precision="2" :min="0" style="width: 100%" />
            </el-form-item>
          </el-col>
        </el-row>
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
import { ProjectCostApi } from '@/api/drm/projectCost'

export default {
  name: "Projectcost",
  data() {
    return {
      loading: true, showSearch: true, ids: [], single: true, multiple: true, total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, costDate: '', projectName: '', deptName: '' },
      dialogTitle: '', dialogVisible: false,
      form: {},
      rules: {
        projectName: [{ required: true, message: '项目名称不能为空', trigger: 'blur' }],
        projectType: [{ required: true, message: '项目类型不能为空', trigger: 'change' }],
        deptName: [{ required: true, message: '科室名称不能为空', trigger: 'blur' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      ProjectCostApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []; this.total = res.total || 0; this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.projectId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增项目成本'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const projectId = row ? row.projectId : this.ids[0]
      ProjectCostApi.get(projectId).then(res => { this.form = res.data; this.dialogTitle = '修改项目成本'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const projectIds = row ? [row.projectId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => ProjectCostApi.del(projectIds)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; ProjectCostApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.projectId ? ProjectCostApi.update(this.form) : ProjectCostApi.add(this.form)
          action.then(() => { this.$message.success(this.form.projectId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() { this.form = {}; this.$nextTick(() => { if (this.$refs.form) this.$refs.form.clearValidate() }) }
  }
}
</script>
