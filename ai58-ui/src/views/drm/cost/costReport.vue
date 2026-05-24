<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="80px">
      <el-form-item label="报告标题" prop="reportTitle">
        <el-input v-model="queryParams.reportTitle" placeholder="请输入报告标题" clearable style="width: 200px" />
      </el-form-item>
      <el-form-item label="报告类型" prop="reportType">
        <el-select v-model="queryParams.reportType" placeholder="请选择报告类型" clearable style="width: 200px">
          <el-option label="月报" value="monthly" />
          <el-option label="季报" value="quarterly" />
          <el-option label="年报" value="yearly" />
          <el-option label="专项报告" value="special" />
        </el-select>
      </el-form-item>
      <el-form-item label="目标科室" prop="targetDept">
        <el-input v-model="queryParams.targetDept" placeholder="请输入目标科室" clearable style="width: 200px" />
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
      <el-table-column label="报告周期" align="center" prop="reportPeriod" width="120" />
      <el-table-column label="报告类型" align="center" prop="reportType" width="100">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.reportType === 'monthly'" type="primary">月报</el-tag>
          <el-tag v-else-if="scope.row.reportType === 'quarterly'" type="success">季报</el-tag>
          <el-tag v-else-if="scope.row.reportType === 'yearly'" type="warning">年报</el-tag>
          <el-tag v-else-if="scope.row.reportType === 'special'" type="info">专项报告</el-tag>
          <el-tag v-else type="info">{{ scope.row.reportType }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="目标科室" align="center" prop="targetDept" width="120" />
      <el-table-column label="状态" align="center" prop="status" width="80">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.status === '0'" type="success">正常</el-tag>
          <el-tag v-else-if="scope.row.status === '1'" type="danger">停用</el-tag>
          <el-tag v-else type="info">{{ scope.row.status }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="160">
        <template slot-scope="scope"><span>{{ parseTime(scope.row.createTime) }}</span></template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button size="mini" type="text" icon="el-icon-view" @click="handleView(scope.row)">查看</el-button>
          <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">修改</el-button>
          <el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
    <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="120px">
        <el-row>
          <el-col :span="12">
            <el-form-item label="报告标题" prop="reportTitle">
              <el-input v-model="form.reportTitle" placeholder="请输入报告标题" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="报告周期" prop="reportPeriod">
              <el-input v-model="form.reportPeriod" placeholder="如：2024年第一季度" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="报告类型" prop="reportType">
              <el-select v-model="form.reportType" placeholder="请选择报告类型" style="width: 100%">
                <el-option label="月报" value="monthly" />
                <el-option label="季报" value="quarterly" />
                <el-option label="年报" value="yearly" />
                <el-option label="专项报告" value="special" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="目标科室" prop="targetDept">
              <el-input v-model="form.targetDept" placeholder="请输入目标科室" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="状态" prop="status">
              <el-radio-group v-model="form.status">
                <el-radio label="0">正常</el-radio>
                <el-radio label="1">停用</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
        <el-form-item label="报告内容" prop="content">
          <el-input v-model="form.content" type="textarea" :rows="8" placeholder="请输入报告内容" />
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
    <el-dialog title="查看成本报告" :visible.sync="viewDialogVisible" width="800px" append-to-body>
      <el-descriptions :column="2" border>
        <el-descriptions-item label="报告ID">{{ viewData.reportId }}</el-descriptions-item>
        <el-descriptions-item label="报告标题">{{ viewData.reportTitle }}</el-descriptions-item>
        <el-descriptions-item label="报告周期">{{ viewData.reportPeriod }}</el-descriptions-item>
        <el-descriptions-item label="报告类型">
          <el-tag v-if="viewData.reportType === 'monthly'" type="primary">月报</el-tag>
          <el-tag v-else-if="viewData.reportType === 'quarterly'" type="success">季报</el-tag>
          <el-tag v-else-if="viewData.reportType === 'yearly'" type="warning">年报</el-tag>
          <el-tag v-else-if="viewData.reportType === 'special'" type="info">专项报告</el-tag>
          <el-tag v-else type="info">{{ viewData.reportType }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="目标科室">{{ viewData.targetDept }}</el-descriptions-item>
        <el-descriptions-item label="状态">
          <el-tag v-if="viewData.status === '0'" type="success">正常</el-tag>
          <el-tag v-else-if="viewData.status === '1'" type="danger">停用</el-tag>
          <el-tag v-else type="info">{{ viewData.status }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="报告内容" :span="2">
          <div style="white-space: pre-wrap;">{{ viewData.content }}</div>
        </el-descriptions-item>
        <el-descriptions-item label="创建人">{{ viewData.createBy }}</el-descriptions-item>
        <el-descriptions-item label="创建时间">{{ parseTime(viewData.createTime) }}</el-descriptions-item>
        <el-descriptions-item label="更新人">{{ viewData.updateBy }}</el-descriptions-item>
        <el-descriptions-item label="更新时间">{{ parseTime(viewData.updateTime) }}</el-descriptions-item>
        <el-descriptions-item label="备注" :span="2">{{ viewData.remark }}</el-descriptions-item>
      </el-descriptions>
      <div slot="footer" class="dialog-footer">
        <el-button @click="viewDialogVisible = false">关 闭</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { CostReportApi } from '@/api/drm/costReport'

export default {
  name: "Costreport",
  data() {
    return {
      loading: true, showSearch: true, ids: [], single: true, multiple: true, total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, reportTitle: '', reportType: '', targetDept: '' },
      dialogTitle: '', dialogVisible: false,
      viewDialogVisible: false,
      viewData: {},
      form: {},
      rules: {
        reportTitle: [{ required: true, message: '报告标题不能为空', trigger: 'blur' }],
        reportPeriod: [{ required: true, message: '报告周期不能为空', trigger: 'blur' }],
        reportType: [{ required: true, message: '报告类型不能为空', trigger: 'change' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      CostReportApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []; this.total = res.total || 0; this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.reportId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增成本报告'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const reportId = row ? row.reportId : this.ids[0]
      CostReportApi.get(reportId).then(res => { this.form = res.data; this.dialogTitle = '修改成本报告'; this.dialogVisible = true })
    },
    handleView(row) {
      this.viewData = row
      this.viewDialogVisible = true
    },
    handleDelete(row) {
      const reportIds = row ? [row.reportId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => CostReportApi.del(reportIds)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; CostReportApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.reportId ? CostReportApi.update(this.form) : CostReportApi.add(this.form)
          action.then(() => { this.$message.success(this.form.reportId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() { this.form = { status: '0' }; this.$nextTick(() => { if (this.$refs.form) this.$refs.form.clearValidate() }) }
  }
}
</script>
