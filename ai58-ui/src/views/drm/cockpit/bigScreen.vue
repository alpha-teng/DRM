<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="80px">
      <el-form-item label="大屏名称" prop="screenName">
        <el-input v-model="queryParams.screenName" placeholder="请输入大屏名称" clearable style="width: 200px" @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="大屏类型" prop="screenType">
        <el-select v-model="queryParams.screenType" placeholder="请选择大屏类型" clearable style="width: 200px">
          <el-option label="全部" value="" />
          <el-option label="门诊实时大屏" value="outpatient" />
          <el-option label="住院实时大屏" value="inpatient" />
          <el-option label="手术实时看板" value="surgery" />
          <el-option label="收入统计大屏" value="income" />
          <el-option label="DRG分析看板" value="drg" />
          <el-option label="院长驾驶舱" value="dashboard" />
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
      <el-table-column label="编号" align="center" prop="screenId" width="80" />
      <el-table-column label="大屏名称" align="center" prop="screenName" :show-overflow-tooltip="true" />
      <el-table-column label="类型" align="center" prop="screenType">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.screenType === 'outpatient'">门诊</el-tag>
          <el-tag v-else-if="scope.row.screenType === 'inpatient'" type="success">住院</el-tag>
          <el-tag v-else-if="scope.row.screenType === 'surgery'" type="warning">手术</el-tag>
          <el-tag v-else-if="scope.row.screenType === 'income'" type="info">收入</el-tag>
          <el-tag v-else-if="scope.row.screenType === 'drg'" type="danger">DRG</el-tag>
          <el-tag v-else type="">{{ scope.row.screenType }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="主题" align="center" prop="theme" />
      <el-table-column label="刷新间隔(分钟)" align="center" prop="layoutConfig" width="120">
        <template slot-scope="scope">
          {{ getRefreshInterval(scope.row.layoutConfig) }}
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="status" width="80">
        <template slot-scope="scope"><el-tag v-if="scope.row.status === '0'" type="success">正常</el-tag><el-tag v-else type="danger">停用</el-tag></template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="160">
        <template slot-scope="scope"><span>{{ formatCreateTime(scope.row.createTime) }}</span></template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
        <template slot-scope="scope"><el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">修改</el-button><el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button></template>
      </el-table-column>
    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
    <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="600px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="大屏名称" prop="screenName"><el-input v-model="form.screenName" placeholder="请输入大屏名称" /></el-form-item>
        <el-form-item label="大屏类型" prop="screenType">
          <el-select v-model="form.screenType" placeholder="请选择大屏类型" style="width: 100%">
            <el-option label="门诊实时大屏" value="outpatient" />
            <el-option label="住院实时大屏" value="inpatient" />
            <el-option label="手术实时看板" value="surgery" />
            <el-option label="收入统计大屏" value="income" />
            <el-option label="DRG分析看板" value="drg" />
            <el-option label="院长驾驶舱" value="dashboard" />
          </el-select>
        </el-form-item>
        <el-form-item label="主题" prop="theme">
          <el-select v-model="form.theme" placeholder="请选择主题" style="width: 100%">
            <el-option label="医院绿色" value="hospital_green" />
            <el-option label="商务蓝色" value="business_blue" />
            <el-option label="科技深色" value="tech_dark" />
            <el-option label="简约白色" value="simple_white" />
          </el-select>
        </el-form-item>
        <el-form-item label="刷新间隔(分钟)" prop="layoutConfig">
          <el-input-number v-model="refreshInterval" :min="1" :max="60" placeholder="请输入刷新间隔" style="width: 200px" />
        </el-form-item>
        <el-form-item label="状态" prop="status"><el-radio-group v-model="form.status"><el-radio label="0">正常</el-radio><el-radio label="1">停用</el-radio></el-radio-group></el-form-item>
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
import { BigscreenApi } from '@/api/drm/bigScreen'

export default {
  name: "Bigscreen",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, screenName: '', screenType: '' },
      dialogTitle: '',
      dialogVisible: false,
      refreshInterval: 5,
      form: {},
      rules: {
        screenName: [{ required: true, message: '大屏名称不能为空', trigger: 'blur' }],
        screenType: [{ required: true, message: '请选择大屏类型', trigger: 'change' }],
        theme: [{ required: true, message: '请选择主题', trigger: 'change' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      BigscreenApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() {
      this.$refs.queryForm.resetFields()
      this.handleQuery()
    },
    handleSelectionChange(sel) {
      this.ids = sel.map(i => i.screenId)
      this.single = sel.length !== 1
      this.multiple = !sel.length
    },
    handleAdd() {
      this.reset()
      this.dialogTitle = '新增大屏'
      this.dialogVisible = true
    },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.screenId : this.ids[0]
      BigscreenApi.get(id).then(res => {
        this.form = res.data
        // 解析layoutConfig获取刷新间隔
        this.refreshInterval = this.getRefreshInterval(res.data.layoutConfig)
        this.dialogTitle = '修改大屏'
        this.dialogVisible = true
      })
    },
    handleDelete(row) {
      const ids = row ? [row.screenId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => BigscreenApi.remove(ids))
        .then(() => {
          this.getList()
          this.$message.success('删除成功')
        })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.loading = true
        BigscreenApi.export(this.queryParams).then(() => {
          this.loading = false
          this.$message.success('导出成功')
        }).catch(() => { this.loading = false })
      })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          // 构建layoutConfig
          const formData = { ...this.form }
          formData.layoutConfig = JSON.stringify({
            layouts: this.getLayoutType(formData.screenType),
            refresh: this.refreshInterval
          })

          const action = formData.screenId ? BigscreenApi.update(formData) : BigscreenApi.add(formData)
          action.then(() => {
            this.$message.success(formData.screenId ? '修改成功' : '新增成功')
            this.dialogVisible = false
            this.getList()
          })
        }
      })
    },
    reset() {
      this.form = {
        status: '0',
        theme: 'hospital_green'
      }
      this.refreshInterval = 5
      this.$nextTick(() => {
        if (this.$refs.form) this.$refs.form.clearValidate()
      })
    },
    formatCreateTime(time) {
      // 调用全局的parseTime方法
    },
    getRefreshInterval(layoutConfig) {
      try {
        const config = typeof layoutConfig === 'string' ? JSON.parse(layoutConfig) : layoutConfig
        return config?.refresh || 5
      } catch {
        return 5
      }
    },
    getLayoutType(screenType) {
      const layoutMap = {
        'outpatient': 'grid',
        'inpatient': 'grid',
        'surgery': 'timeline',
        'income': 'chart',
        'drg': 'table+chart',
        'dashboard': 'mixed'
      }
      return layoutMap[screenType] || 'grid'
    }
  }
}
</script>

<style scoped>
</style>