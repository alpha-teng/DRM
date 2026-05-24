<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="专题名称" prop="topicName">
        <el-input v-model="queryParams.topicName" placeholder="请输入专题名称" clearable style="width: 200px" />
      </el-form-item>
      <el-form-item label="专题类型" prop="topicType">
        <el-select v-model="queryParams.topicType" placeholder="请选择专题类型" clearable style="width: 200px">
          <el-option label="全部类型" value="" />
          <el-option label="科室分析" value="科室分析" />
          <el-option label="病种分析" value="病种分析" />
          <el-option label="DRG分析" value="DRG分析" />
          <el-option label="成本分析" value="成本分析" />
          <el-option label="质量分析" value="质量分析" />
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
      <el-table-column label="专题ID" align="center" prop="topicId" width="80" />
      <el-table-column label="专题名称" align="center" prop="topicName" :show-overflow-tooltip="true" />
      <el-table-column label="专题类型" align="center" prop="topicType" width="120" />
      <el-table-column label="目标科室" align="center" prop="targetDept" width="120" />
      <el-table-column label="分析模型" align="center" prop="analysisModel" width="120" />
      <el-table-column label="状态" align="center" prop="status" width="80">
        <template slot-scope="scope"><el-tag v-if="scope.row.status === '0'" type="success">正常</el-tag><el-tag v-else type="danger">停用</el-tag></template>
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

    <!-- 添加/修改对话框 -->
    <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="专题名称" prop="topicName"><el-input v-model="form.topicName" placeholder="请输入专题名称" /></el-form-item>
        <el-form-item label="专题类型" prop="topicType">
          <el-select v-model="form.topicType" placeholder="请选择专题类型" style="width: 100%">
            <el-option label="科室分析" value="科室分析" />
            <el-option label="病种分析" value="病种分析" />
            <el-option label="DRG分析" value="DRG分析" />
            <el-option label="成本分析" value="成本分析" />
            <el-option label="质量分析" value="质量分析" />
          </el-select>
        </el-form-item>
        <el-form-item label="目标科室" prop="targetDept">
          <el-input v-model="form.targetDept" placeholder="请输入目标科室（全院分析可留空）" />
        </el-form-item>
        <el-form-item label="分析模型" prop="analysisModel">
          <el-select v-model="form.analysisModel" placeholder="请选择分析模型" style="width: 100%">
            <el-option label="对比分析" value="对比分析" />
            <el-option label="趋势分析" value="趋势分析" />
            <el-option label="分布分析" value="分布分析" />
            <el-option label="关联分析" value="关联分析" />
            <el-option label="聚类分析" value="聚类分析" />
          </el-select>
        </el-form-item>
        <el-form-item label="状态" prop="status">
          <el-radio-group v-model="form.status"><el-radio label="0">正常</el-radio><el-radio label="1">停用</el-radio></el-radio-group>
        </el-form-item>
        <el-form-item label="备注" prop="remark"><el-input v-model="form.remark" type="textarea" :rows="3" placeholder="请输入备注" /></el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm">确 定</el-button>
      </div>
    </el-dialog>

    <!-- 查看详情对话框 -->
    <el-dialog title="专题分析详情" :visible.sync="viewVisible" width="900px" append-to-body>
      <el-descriptions :column="2" border>
        <el-descriptions-item label="专题名称">{{ viewData.topicName }}</el-descriptions-item>
        <el-descriptions-item label="专题类型">{{ viewData.topicType }}</el-descriptions-item>
        <el-descriptions-item label="目标科室">{{ viewData.targetDept || '全院' }}</el-descriptions-item>
        <el-descriptions-item label="分析模型">{{ viewData.analysisModel }}</el-descriptions-item>
        <el-descriptions-item label="状态">
          <el-tag v-if="viewData.status === '0'" type="success">正常</el-tag>
          <el-tag v-else type="danger">停用</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="创建时间">{{ viewData.createTime }}</el-descriptions-item>
      </el-descriptions>
      <el-divider />
      <div class="chart-preview">
        <div class="chart-title">分析图表预览</div>
        <div class="chart-placeholder">
          <i class="el-icon-data-chart" style="font-size: 48px; color: #909399;"></i>
          <p style="color: #909399; margin-top: 10px;">图表功能开发中...</p>
        </div>
      </div>
      <el-divider v-if="viewData.aiInsights" />
      <div v-if="viewData.aiInsights" class="ai-insights">
        <div class="chart-title">AI分析洞察</div>
        <el-alert type="info" :closable="false">
          <div v-html="viewData.aiInsights.replace(/\n/g, '<br>')"></div>
        </el-alert>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { TopicApi } from '@/api/drm/topic'

export default {
  name: "Topic",
  data() {
    return {
      loading: true,
      showSearch: true,
      ids: [],
      single: true,
      multiple: true,
      total: 0,
      dataList: [],
      queryParams: { pageNum: 1, pageSize: 10, topicName: '', topicType: '' },
      dialogTitle: '',
      dialogVisible: false,
      viewVisible: false,
      viewData: {},
      form: {},
      rules: {
        topicName: [{ required: true, message: '专题名称不能为空', trigger: 'blur' }],
        topicType: [{ required: true, message: '请选择专题类型', trigger: 'change' }],
        analysisModel: [{ required: true, message: '请选择分析模型', trigger: 'change' }]
      }
    }
  },
  created() { this.getList() },
  methods: {
    getList() {
      this.loading = true
      TopicApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      })
    },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.topicId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.topicId : this.ids[0]
      TopicApi.get(id).then(res => { this.form = res.data; this.dialogTitle = '修改'; this.dialogVisible = true })
    },
    handleView(row) {
      this.viewData = row
      this.viewVisible = true
    },
    handleDelete(row) {
      const ids = row ? [row.topicId] : this.ids
      this.$confirm('是否确认删除选中的数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => TopicApi.remove(ids)).then(() => { this.getList(); this.$message.success('删除成功') })
    },
    handleExport() {
      this.$confirm('是否确认导出所有数据项?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' })
        .then(() => { this.loading = true; TopicApi.export(this.queryParams).then(() => { this.loading = false; this.$message.success('导出成功') }).catch(() => { this.loading = false }) })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.topicId ? TopicApi.update(this.form) : TopicApi.add(this.form)
          action.then(() => { this.$message.success(this.form.topicId ? '修改成功' : '新增成功'); this.dialogVisible = false; this.getList() })
        }
      })
    },
    reset() {
      this.form = {
        status: '0',
        topicType: '科室分析',
        analysisModel: '对比分析'
      }
      this.$nextTick(() => {
        if (this.$refs.form) this.$refs.form.clearValidate()
      })
    }
  }
}
</script>

<style scoped>
.chart-preview {
  margin-top: 20px;
}
.chart-title {
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 15px;
}
.chart-placeholder {
  height: 200px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: #f5f7fa;
  border-radius: 4px;
}
.ai-insights {
  margin-top: 20px;
}
</style>
