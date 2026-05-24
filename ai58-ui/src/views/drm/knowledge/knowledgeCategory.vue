<template>
  <div class="app-container">
    <el-row :gutter="20">
      <el-col :span="4" :xs="24">
        <div class="head-container">
          <el-input v-model="filterText" placeholder="搜索分类" clearable size="small" prefix-icon="el-icon-search" style="margin-bottom: 20px" />
        </div>
        <el-tree ref="tree" :data="treeData" :props="defaultProps" default-expand-all @node-click="handleNodeClick" />
      </el-col>
      <el-col :span="20" :xs="24">
        <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="80px">
          <el-form-item label="名称" prop="name"><el-input v-model="queryParams.name" placeholder="请输入名称" clearable style="width: 200px" /></el-form-item>
          <el-form-item><el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button><el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button></el-form-item>
        </el-form>
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5"><el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleAdd">新增</el-button></el-col>
          <el-col :span="1.5"><el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate">修改</el-button></el-col>
          <el-col :span="1.5"><el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multiple" @click="handleDelete">删除</el-button></el-col>
          <right-toolbar :showSearch.sync="showSearch" @queryTable="getList" />
        </el-row>
        <el-table v-loading="loading" :data="dataList" @selection-change="handleSelectionChange">
          <el-table-column type="selection" width="50" align="center" />
          <el-table-column label="编号" align="center" prop="categoryId" width="80" />
          <el-table-column label="分类名称" align="center" prop="categoryName" :show-overflow-tooltip="true" />
          <el-table-column label="父级ID" align="center" prop="parentId" />
          <el-table-column label="排序" align="center" prop="orderNum" width="80" />
          <el-table-column label="创建时间" align="center" prop="createTime" width="160" />
          <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
            <template slot-scope="scope"><el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)">修改</el-button><el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)">删除</el-button></template>
          </el-table-column>
        </el-table>
        <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize" @pagination="getList" />
        <el-dialog :title="dialogTitle" :visible.sync="dialogVisible" width="600px" append-to-body>
          <el-form ref="form" :model="form" :rules="rules" label-width="100px">
            <el-form-item label="上级分类" prop="parentId"><el-tree-select v-model="form.parentId" :data="treeData" :props="defaultProps" check-strictly clearable placeholder="请选择上级分类" /></el-form-item>
            <el-form-item label="分类名称" prop="categoryName"><el-input v-model="form.categoryName" placeholder="请输入名称" /></el-form-item>
            <el-form-item label="排序" prop="orderNum"><el-input-number v-model="form.orderNum" :min="0" controls-position="right" /></el-form-item>
          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button @click="dialogVisible = false">取 消</el-button>
            <el-button type="primary" @click="submitForm">确 定</el-button>
          </div>
        </el-dialog>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import { KnowledgeCategoryApi } from '@/api/drm/knowledgeCategory'

export default {
  name: "Knowledgecategory",
  data() {
    return { loading: false, showSearch: true, filterText: '', treeData: [], defaultProps: { children: 'children', label: 'label' }, dataList: [], ids: [], single: true, multiple: true, total: 0, queryParams: { pageNum: 1, pageSize: 10, categoryName: '' }, dialogTitle: '', dialogVisible: false, form: {}, rules: { categoryName: [{ required: true, message: '名称不能为空', trigger: 'blur' }] } }
  },
  created() { this.getTree(); this.getList() },
  methods: {
    getTree() {
      this.treeData = [
        { id: 1, label: '临床科室', children: [{ id: 11, label: '内科' }, { id: 12, label: '外科' }] },
        { id: 2, label: '医技科室', children: [{ id: 21, label: '检验科' }, { id: 22, label: '影像科' }] },
        { id: 3, label: '职能科室', children: [{ id: 31, label: '医务科' }, { id: 32, label: '护理部' }] }
      ]
    },
    getList() {
      this.loading = true
      KnowledgeCategoryApi.list(this.queryParams).then(res => {
        this.dataList = res.rows || []
        this.total = res.total || 0
        this.loading = false
      }).catch(() => { this.loading = false })
    },
    handleNodeClick(data) { this.queryParams.parentId = data.id; this.getList() },
    handleQuery() { this.queryParams.pageNum = 1; this.getList() },
    resetQuery() { this.$refs.queryForm.resetFields(); this.handleQuery() },
    handleSelectionChange(sel) { this.ids = sel.map(i => i.categoryId); this.single = sel.length !== 1; this.multiple = !sel.length },
    handleAdd() { this.reset(); this.dialogTitle = '新增'; this.dialogVisible = true },
    handleUpdate(row) {
      this.reset()
      const id = row ? row.categoryId : this.ids[0]
      KnowledgeCategoryApi.get(id).then(res => {
        this.form = res.data
        this.dialogTitle = '修改'
        this.dialogVisible = true
      })
    },
    handleDelete(row) {
      const ids = row ? [row.categoryId] : this.ids
      this.$confirm('是否确认删除?', '警告', { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' }).then(() => {
        return KnowledgeCategoryApi.del(ids)
      }).then(() => {
        this.$message.success('删除成功')
        this.getList()
      })
    },
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          const action = this.form.categoryId ? KnowledgeCategoryApi.update(this.form) : KnowledgeCategoryApi.add(this.form)
          action.then(() => {
            this.$message.success(this.form.categoryId ? '修改成功' : '新增成功')
            this.dialogVisible = false
            this.getList()
          })
        }
      })
    },
    reset() { this.form = { orderNum: 0 } }
  }
}
</script>

<style scoped>
.mb8 { margin-bottom: 8px; }
</style>