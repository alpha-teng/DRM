<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="80px">
      <el-form-item label="查询月份" prop="queryDate">
        <el-date-picker v-model="queryParams.queryDate" type="month" value-format="yyyy-MM" placeholder="选择月份" style="width: 200px" />
      </el-form-item>
      <el-form-item label="科室" prop="deptId">
        <el-select v-model="queryParams.deptId" placeholder="请选择科室" clearable style="width: 200px">
          <el-option label="全部科室" value="" />
          <el-option label="内科" value="1" /><el-option label="外科" value="2" />
          <el-option label="儿科" value="3" /><el-option label="妇产科" value="4" />
          <el-option label="急诊科" value="5" />
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
      <el-table-column label="编号" align="center" prop="id" width="100" />
      <el-table-column label="名称" align="center" prop="name" :show-overflow-tooltip="true" />
      <el-table-column label="科室" align="center" prop="deptName" />
      <el-table-column label="数值" align="center" prop="value" />
      <el-table-column label="状态" align="center" prop="status">
        <template slot-scope="scope"><el-tag v-if="scope.row.status === '0'" type="success">正常</el-tag><el-tag v-else type="danger">异常</el-tag></template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="160">
        <template slot-scope="scope"><span>{ parseTime(scope.row.createTime) }</span></template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
        <template slot-scope="scope"><el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">修改</el-button><el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button></template>
      </el-table-column>
    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
    <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="600px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="100px">
        <el-form-item label="名称" prop="name"><el-input v-model="form.name" placeholder="请输入名称" /></el-form-item>
        <el-form-item label="科室" prop="deptId">
          <el-select v-model="form.deptId" placeholder="请选择科室" style="width: 100%">
            <el-option label="内科" value="1" /><el-option label="外科" value="2" />
            <el-option label="儿科" value="3" /><el-option label="妇产科" value="4" /><el-option label="急诊科" value="5" />
          </el-select>
        </el-form-item>
        <el-form-item label="数值" prop="value"><el-input v-model="form.value" placeholder="请输入数值" /></el-form-item>
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
import { PrescriptionApi } from '@/api/drm/prescription'

export default {
  name: "Prescription",
  data() {
    return {
      loading: true, showSearch: true, ids: [], single: true, multiple: true, total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, queryDate: '', deptId: '' },
      dialogTitle: '', dialogVisible: false,
      form: {}, rules: { name: [{ required: true, message: '名称不能为空', trigger: 'blur' }] }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      PrescriptionApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []; this.total = res.total || 0; this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.id); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.id : this.ids[0]
      PrescriptionApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleDelete(row) {
      const ids = row ? [row.id] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => PrescriptionApi.del(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; PrescriptionApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.id ? PrescriptionApi.update(this.form) : PrescriptionApi.add(this.form)
          action.then(() => { this.$message.success(this.form.id ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() { this.form = { status: '0' }; this.$nextTick(() => { if (this.$refs.form) this.$refs.form.clearValidate() }) },
    parseTime(time) { return time ? this.$parseTime(time) : '' }
  }
}
</script>

<style scoped>
</style>