<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="预警日期" prop="warnDate">
        <el-date-picker v-model="queryParams.warnDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 150px" />
      </el-form-item>
      <el-form-item label="预警类型" prop="warnType">
        <el-select v-model="queryParams.warnType" placeholder="请选择预警类型" clearable style="width: 200px">
          <el-option label="全部类型" value="" />
          <el-option label="费用预警" value="费用预警" />
          <el-option label="效率预警" value="效率预警" />
          <el-option label="质量预警" value="质量预警" />
          <el-option label="DRG预警" value="DRG预警" />
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
      <el-table-column label="预警ID" align="center" prop="warningId" width="100" />
      <el-table-column label="预警日期" align="center" prop="warnDate" width="120" />
      <el-table-column label="预警类型" align="center" prop="warnType" width="120" />
      <el-table-column label="预警级别" align="center" prop="warnLevel" width="100">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.warnLevel === '高'" type="danger">高</el-tag>
          <el-tag v-else-if="scope.row.warnLevel === '中'" type="warning">中</el-tag>
          <el-tag v-else type="info">低</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="科室" align="center" prop="deptName" width="150" />
      <el-table-column label="预警内容" align="center" prop="warnContent" :show-overflow-tooltip="true" />
      <el-table-column label="处理状态" align="center" prop="handleStatus" width="100">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.handleStatus === '待处理'" type="warning">待处理</el-tag>
          <el-tag v-else-if="scope.row.handleStatus === '处理中'" type="primary">处理中</el-tag>
          <el-tag v-else type="success">已完成</el-tag>
        </template>
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
        <el-form-item label="预警日期" prop="warnDate"><el-date-picker v-model="form.warnDate" type="date" value-format="yyyy-MM-dd" placeholder="选择日期" style="width: 100%" /></el-form-item>
        <el-form-item label="预警类型" prop="warnType">
          <el-select v-model="form.warnType" placeholder="请选择预警类型" style="width: 100%">
            <el-option label="费用预警" value="费用预警" />
            <el-option label="效率预警" value="效率预警" />
            <el-option label="质量预警" value="质量预警" />
            <el-option label="DRG预警" value="DRG预警" />
          </el-select>
        </el-form-item>
        <el-form-item label="预警级别" prop="warnLevel">
          <el-radio-group v-model="form.warnLevel"><el-radio label="高">高</el-radio><el-radio label="中">中</el-radio><el-radio label="低">低</el-radio></el-radio-group>
        </el-form-item>
        <el-form-item label="科室名称" prop="deptName"><el-input v-model="form.deptName" placeholder="请输入科室名称" /></el-form-item>
        <el-form-item label="预警内容" prop="warnContent"><el-input v-model="form.warnContent" type="textarea" :rows="4" placeholder="请输入预警内容" /></el-form-item>
        <el-form-item label="AI建议" prop="aiSuggestion"><el-input v-model="form.aiSuggestion" type="textarea" :rows="3" placeholder="AI处理建议" /></el-form-item>
        <el-form-item label="处理状态" prop="handleStatus">
          <el-select v-model="form.handleStatus" placeholder="请选择处理状态" style="width: 100%">
            <el-option label="待处理" value="待处理" />
            <el-option label="处理中" value="处理中" />
            <el-option label="已完成" value="已完成" />
          </el-select>
        </el-form-item>
        <el-form-item label="处理结果" prop="handleResult"><el-input v-model="form.handleResult" type="textarea" placeholder="请输入处理结果" /></el-form-item>
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
import { WarningCenterApi } from '@/api/drm/warningCenter'

export default {
  name: "Warningcenter",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, warnDate: '', warnType: '' },
      dialogTitle: '',
      dialogVisible: false,
      form: {},
      rules: {
        warnDate: [{ required: true, message: '预警日期不能为空', trigger: 'blur' }],
        warnType: [{ required: true, message: '请选择预警类型', trigger: 'change' }],
        warnLevel: [{ required: true, message: '请选择预警级别', trigger: 'change' }],
        deptName: [{ required: true, message: '科室名称不能为空', trigger: 'blur' }],
        warnContent: [{ required: true, message: '预警内容不能为空', trigger: 'blur' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      WarningCenterApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.warningId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.warningId : this.ids[0]
      WarningCenterApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const ids = row ? [row.warningId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => WarningCenterApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; WarningCenterApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.warningId ? WarningCenterApi.update(this.form) : WarningCenterApi.add(this.form)
          action.then(() => { this.$message.success(this.form.warningId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() {
      this.form = {
        warnDate: new Date().toISOString().split('T')[0],
        warnType: '费用预警',
        warnLevel: '中',
        handleStatus: '待处理'
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
