<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="80px">
      <el-form-item label="查询日期" prop="costDate">
        <el-date-picker v-model="queryParams.costDate" type="month" value-format="yyyy-MM" placeholder="选择月份" style="width: 200px" />
      </el-form-item>
      <el-form-item label="病案名称" prop="caseName">
        <el-input v-model="queryParams.caseName" placeholder="请输入病案名称" clearable style="width: 200px" />
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
      <el-table-column label="病案ID" align="center" prop="caseId" width="80" />
      <el-table-column label="病案编码" align="center" prop="caseCode" width="120" />
      <el-table-column label="病案名称" align="center" prop="caseName" :show-overflow-tooltip="true" />
      <el-table-column label="科室" align="center" prop="deptName" width="120" />
      <el-table-column label="总成本" align="center" prop="totalCost" width="100">
        <template slot-scope="scope">{{ scope.row.totalCost || '0.00' }}</template>
      </el-table-column>
      <el-table-column label="药品成本" align="center" prop="drugCost" width="100">
        <template slot-scope="scope">{{ scope.row.drugCost || '0.00' }}</template>
      </el-table-column>
      <el-table-column label="材料成本" align="center" prop="materialCost" width="100">
        <template slot-scope="scope">{{ scope.row.materialCost || '0.00' }}</template>
      </el-table-column>
      <el-table-column label="服务成本" align="center" prop="serviceCost" width="100">
        <template slot-scope="scope">{{ scope.row.serviceCost || '0.00' }}</template>
      </el-table-column>
      <el-table-column label="平均住院天数" align="center" prop="avgStayDays" width="120" />
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
            <el-form-item label="病案编码" prop="caseCode">
              <el-input v-model="form.caseCode" placeholder="请输入病案编码" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="病案名称" prop="caseName">
              <el-input v-model="form.caseName" placeholder="请输入病案名称" />
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
            <el-form-item label="总成本" prop="totalCost">
              <el-input-number v-model="form.totalCost" :precision="2" :min="0" style="width: 100%" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="药品成本" prop="drugCost">
              <el-input-number v-model="form.drugCost" :precision="2" :min="0" style="width: 100%" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="材料成本" prop="materialCost">
              <el-input-number v-model="form.materialCost" :precision="2" :min="0" style="width: 100%" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="服务成本" prop="serviceCost">
              <el-input-number v-model="form.serviceCost" :precision="2" :min="0" style="width: 100%" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="平均住院天数" prop="avgStayDays">
              <el-input-number v-model="form.avgStayDays" :precision="1" :min="0" style="width: 100%" />
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
import { CaseCostApi } from '@/api/drm/caseCost'

export default {
  name: "Casecost",
  data() {
    return {
      loading: true, showSearch: true, ids: [], single: true, multiple: true, total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, costDate: '', caseName: '', deptName: '' },
      dialogTitle: '', dialogVisible: false,
      form: {},
      rules: {
        caseCode: [{ required: true, message: '病案编码不能为空', trigger: 'blur' }],
        caseName: [{ required: true, message: '病案名称不能为空', trigger: 'blur' }],
        deptName: [{ required: true, message: '科室名称不能为空', trigger: 'blur' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      CaseCostApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []; this.total = res.total || 0; this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.caseId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增病案成本'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const caseId = row ? row.caseId : this.ids[0]
      CaseCostApi.get(caseId).then(res => { this.form = res.data; this.dialogTitle = '修改病案成本'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const caseIds = row ? [row.caseId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => CaseCostApi.del(caseIds)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; CaseCostApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.caseId ? CaseCostApi.update(this.form) : CaseCostApi.add(this.form)
          action.then(() => { this.$message.success(this.form.caseId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() { this.form = {}; this.$nextTick(() => { if (this.$refs.form) this.$refs.form.clearValidate() }) }
  }
}
</script>
