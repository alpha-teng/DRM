<template>
  <div class="contract-home-container">
    <!-- 页面标题 -->
        <!-- 合同数量统计区域 -->
    <div class="stats-section">
        <el-row :gutter="20">
        <el-col :span="6" v-for="(stat, index) in contractStats" :key="index">
          <el-card shadow="hover" class="stat-card">
            <div class="stat-content">
              <div class="stat-icon" :style="{backgroundColor: stat.color}">
                <i :class="stat.icon"></i>
              </div>
              <div class="stat-info">
                <div class="stat-count">{{ stat.count }}</div>
                <div class="stat-title">{{ stat.title }}</div>
              </div>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </div>

    <!-- 合同统计交互区域 -->
    <div class="interactive-section">
      <el-row :gutter="20">
        <!-- 合同统计表格 -->
        <el-col :span="16">
          <el-card shadow="hover" class="table-card">
            <div class="table-header">
              <h3>合同清单</h3>
              <el-input
                placeholder="搜索合同..."
                v-model="searchQuery"
                class="search-input"
                prefix-icon="el-icon-search"
                clearable
                @clear="handleSearchClear"
              ></el-input>
            </div>
            <el-table
              :data="filteredContractList"
              border
              style="width: 100%"
              height="400"
            >
              <el-table-column
                prop="name"
                label="合同名称"
                width="180"
              ></el-table-column>
              <el-table-column
                prop="partyA"
                label="甲方"
                width="120"
              ></el-table-column>
              <el-table-column
                prop="partyB"
                label="乙方"
                width="120"
              ></el-table-column>
              <el-table-column
                prop="startDate"
                label="开始时间"
                width="120"
              ></el-table-column>
              <el-table-column
                prop="endDate"
                label="结束时间"
                width="120"
              ></el-table-column>
              <el-table-column
                prop="createTime"
                label="创建时间"
                width="150"
              ></el-table-column>
              <el-table-column
                prop="status"
                label="状态"
                width="100"
              >
                <template slot-scope="scope">
                  <el-tag
                    :type="statusTagType(scope.row.status)"
                    size="small"
                  >{{ scope.row.status }}</el-tag>
                </template>
              </el-table-column>
              <el-table-column
                label="操作"
                width="80"
              >
                <template slot-scope="scope">
                  <el-button size="mini" @click="handleDetail(scope.row)">详情</el-button>
                </template>
              </el-table-column>
            </el-table>
            <div class="pagination-wrapper">
              <el-pagination
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
                :current-page="currentPage"
                :page-sizes="[10, 20, 50, 100]"
                :page-size="pageSize"
                layout="total, sizes, prev, pager, next, jumper"
                :total="totalContracts"
              ></el-pagination>
            </div>
          </el-card>
        </el-col>

        <!-- AI智能交互区域 -->
        <el-col :span="8">
          <el-card shadow="hover" class="ai-card">
            <h3>AI合同助手</h3>
            <div class="ai-chat-container">
              <div class="ai-chat-messages" ref="messagesContainer">
                <div v-for="(msg, index) in messages" :key="index" :class="['message', msg.role]">
                  <div class="message-content">
                    <div class="message-avatar">
                      <i class="el-icon-user-solid" v-if="msg.role === 'user'"></i>
                      <i class="el-icon-ai" v-else></i>
                    </div>
                    <div class="message-text">{{ msg.content }}</div>
                  </div>
                </div>
              </div>
              <div class="ai-input-area">
                <el-input
                  v-model="aiQuery"
                  placeholder="您可以询问合同的各类情况..."
                  @keyup.enter.native="sendQuery"
                ></el-input>
                <el-button
                  type="primary"
                  icon="el-icon-s-promotion"
                  @click="sendQuery"
                >发送</el-button>
              </div>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ContractHome',
  data() {
    return {
      searchQuery: '',
      currentPage: 1,
      pageSize: 10,
      totalContracts: 50,
      aiQuery: '',
      messages: [
        {
          role: 'ai',
          content: '您好！我是合同管理AI助手，可以帮您查询合同状态、条款解释、风险分析等。请问有什么可以帮助您的？'
        }
      ],
      contractStats: [
        {
          title: '审批中的合同',
          count: 12,
          icon: 'el-icon-document-checked',
          color: '#ffc107'
        },
        {
          title: '履行中的合同',
          count: 28,
          icon: 'el-icon-files',
          color: '#007bff'
        },
        {
          title: '完结的合同',
          count: 34,
          icon: 'el-icon-finished',
          color: '#28a745'
        },
        {
          title: '到期的合同',
          count: 5,
          icon: 'el-icon-timer',
          color: '#dc3545'
        }
      ],
      contractList: [
        {
          id: 1,
          name: '2023年度采购框架协议',
          partyA: 'ABC科技有限公司',
          partyB: 'XYZ供应商',
          startDate: '2023-01-01',
          endDate: '2023-12-31',
          createTime: '2022-12-15 14:30',
          status: '履行中'
        },
        {
          id: 2,
          name: '办公场地租赁合同',
          partyA: 'ABC科技有限公司',
          partyB: '地产发展集团',
          startDate: '2022-06-01',
          endDate: '2025-05-31',
          createTime: '2022-05-20 09:15',
          status: '履行中'
        },
        {
          id: 3,
          name: '员工保密协议',
          partyA: 'ABC科技有限公司',
          partyB: '张三',
          startDate: '2023-03-01',
          endDate: '2028-02-28',
          createTime: '2023-02-28 16:45',
          status: '履行中'
        },
        {
          id: 4,
          name: '技术服务合同(2023-Q3)',
          partyA: 'ABC科技有限公司',
          partyB: '技术服务公司',
          startDate: '2023-07-01',
          endDate: '2023-09-30',
          createTime: '2023-06-25 11:20',
          status: '已完结'
        },
        {
          id: 5,
          name: '品牌推广合作协议',
          partyA: 'ABC科技有限公司',
          partyB: '传媒广告公司',
          startDate: '2023-04-01',
          endDate: '2023-12-31',
          createTime: '2023-03-28 10:00',
          status: '审批中'
        },
        {
          id: 6,
          name: '云服务采购协议',
          partyA: 'ABC科技有限公司',
          partyB: '云服务提供商',
          startDate: '2022-01-01',
          endDate: '2024-12-31',
          createTime: '2021-12-10 15:30',
          status: '履行中'
        },
        {
          id: 7,
          name: '市场调研服务合同',
          partyA: 'ABC科技有限公司',
          partyB: '数据调研公司',
          startDate: '2023-05-15',
          endDate: '2023-08-14',
          createTime: '2023-05-10 13:45',
          status: '已完结'
        },
        {
          id: 8,
          name: '劳动合同补充协议',
          partyA: 'ABC科技有限公司',
          partyB: '李四',
          startDate: '2023-09-01',
          endDate: '2026-08-31',
          createTime: '2023-08-28 17:00',
          status: '履行中'
        },
        {
          id: 9,
          name: '设备采购合同',
          partyA: 'ABC科技有限公司',
          partyB: '设备制造商',
          startDate: '2023-07-10',
          endDate: '2023-07-11',
          createTime: '2023-07-05 09:30',
          status: '已到期'
        },
        {
          id: 10,
          name: '年度审计服务协议',
          partyA: 'ABC科技有限公司',
          partyB: '会计师事务所',
          startDate: '2023-01-15',
          endDate: '2023-12-15',
          createTime: '2022-12-28 14:00',
          status: '履行中'
        }
      ]
    }
  },
  computed: {
    filteredContractList() {
      return this.contractList.filter(contract => {
        return (
          contract.name.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
          contract.partyA.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
          contract.partyB.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
          contract.status.toLowerCase().includes(this.searchQuery.toLowerCase())
        )
      })
    }
  },
  methods: {
    statusTagType(status) {
      const typeMap = {
        '审批中': 'warning',
        '履行中': 'primary',
        '已完结': 'success',
        '已到期': 'danger'
      }
      return typeMap[status] || ''
    },
    handleDetail(row) {
      this.$message.info(`查看合同详情: ${row.name}`)
      // 实际项目中这里会跳转到详情页或打开详情对话框
    },
    handleSizeChange(val) {
      this.pageSize = val
      // 实际项目中这里需要调用API获取新数据
    },
    handleCurrentChange(val) {
      this.currentPage = val
      // 实际项目中这里需要调用API获取新数据
    },
    handleSearchClear() {
      this.searchQuery = ''
    },
    sendQuery() {
      if (!this.aiQuery.trim()) return
      
      // 用户消息
      this.messages.push({
        role: 'user',
        content: this.aiQuery
      })
      
      // 简单模拟AI回复 - 实际项目中这里会调用AI接口
      const userQuery = this.aiQuery.toLowerCase()
      let aiResponse = ''
      
      if (userQuery.includes('审批') || userQuery.includes('待审批')) {
        aiResponse = `当前有${this.contractStats[0].count}份合同处于审批状态。您可以通过上方的合同清单查看具体审批中的合同。`
      } else if (userQuery.includes('履行中') || userQuery.includes('执行中')) {
        aiResponse = `系统显示共有${this.contractStats[1].count}份合同正在履行中。其中10份合同将在未来30天内到期，您可以查看"到期的合同"分类获取详细信息。`
      } else if (userQuery.includes('到期的') || userQuery.includes('即将到期')) {
        aiResponse = `目前有${this.contractStats[3].count}份合同已经到期。建议您及时处理这些合同，以避免潜在的合规风险。`
      } else if (userQuery.includes('搜索') || userQuery.includes('查找')) {
        const keyword = this.aiQuery.replace(/搜索|查找/g, '').trim()
        aiResponse = `您想搜索包含"${keyword}"的合同吗？您可以直接在上方的搜索框中输入关键字，系统会自动筛选相关合同。`
      } else {
        aiResponse = `我已记录您的问题"${this.aiQuery}"。关于合同查询，您可以通过上方表格查看所有合同信息；对于条款解读或风险评估，请提供具体的合同名称或条款内容。`
      }
      
      setTimeout(() => {
        this.messages.push({
          role: 'ai',
          content: aiResponse
        })
        this.scrollToBottom()
      }, 800)
      
      this.aiQuery = ''
    },
    scrollToBottom() {
      this.$nextTick(() => {
        const container = this.$refs.messagesContainer
        container.scrollTop = container.scrollHeight
      })
    }
  }
}
</script>

<style scoped>
.contract-home-container {
  padding: 10px;
  max-width: 1800px;
  margin: 0 auto;
}

.page-header {
  text-align: center;
  margin-bottom: 30px;
}

.page-header h1 {
  font-size: 28px;
  color: #303133;
  margin-bottom: 10px;
}

.welcome-text {
  font-size: 16px;
  color: #909399;
}

.section-title {
  font-size: 20px;
  color: #303133;
  margin-bottom: 15px;
  padding-bottom: 10px;
  border-bottom: 1px solid #ebeef5;
}

.stats-section {
  margin-bottom: 30px;
}

.stat-card {
  margin-bottom: 20px;
  cursor: pointer;
  transition: transform 0.3s;
}

.stat-card:hover {
  transform: translateY(-5px);
}

.stat-content {
  display: flex;
  align-items: center;
  padding: 20px;
}

.stat-icon {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 15px;
  color: white;
  font-size: 24px;
}

.stat-count {
  font-size: 24px;
  font-weight: bold;
  color: #303133;
}

.stat-title {
  color: #909399;
  font-size: 14px;
}

.interactive-section {
  margin-top: 30px;
}

.table-card, .ai-card {
  height: 100%;
}

.table-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
}

.search-input {
  width: 250px;
}

.pagination-wrapper {
  margin-top: 15px;
  text-align: right;
}

.ai-chat-container {
  height: 500px;
  display: flex;
  flex-direction: column;
}

.ai-chat-messages {
  flex: 1;
  padding: 15px;
  overflow-y: auto;
  border: 1px solid #ebeef5;
  border-radius: 4px;
  margin-bottom: 15px;
  background-color: #fafafa;
}

.message {
  margin-bottom: 15px;
}

.message-content {
  display: flex;
}

.message-avatar {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background-color: #e1f5fe;
  color: #039be5;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 10px;
  flex-shrink: 0;
}

.message.ai .message-avatar {
  background-color: #e8f5e9;
  color: #43a047;
}

.message-text {
  padding: 8px 12px;
  border-radius: 4px;
  max-width: calc(100% - 50px);
}

.user .message-text {
  background-color: #e3f2fd;
}

.ai .message-text {
  background-color: #f1f8e9;
}

.ai-input-area {
  display: flex;
}

.ai-input-area .el-input {
  flex: 1;
  margin-right: 10px;
}

.el-icon-ai:before {
  content: "AI";
  font-size: 14px;
  font-weight: bold;
}
</style>
