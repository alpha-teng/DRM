<template>
  <div class="app-container">
    <el-row :gutter="20">
      <el-col :span="18">
        <div class="chat-container">
          <div class="chat-header"><i class="el-icon-chat-dot-round"></i> AI 智能助手</div>
          <div ref="chatList" class="chat-list">
            <div v-for="(msg, idx) in chatMessages" :key="idx" :class="['chat-msg', msg.role]">
              <div class="msg-avatar"><i :class="msg.role === 'user' ? 'el-icon-user' : 'el-icon-cpu'"></i></div>
              <div class="msg-content">
                <div class="msg-role-label">{ msg.role === 'user' ? '我' : 'AI助手' }</div>
                <div class="msg-bubble">{ msg.content }</div>
                <div class="msg-time">{ msg.time }</div>
              </div>
            </div>
          </div>
          <div class="chat-input-area">
            <el-input v-model="inputMessage" type="textarea" :rows="3" placeholder="请输入问题，按 Enter 发送，Shift+Enter 换行..." @keydown.native="handleKeydown" style="margin-bottom: 10px" />
            <el-button type="primary" icon="el-icon-s-promotion" @click="sendMessage" :loading="sending">发送</el-button>
            <el-button icon="el-icon-delete" @click="clearChat">清空对话</el-button>
          </div>
        </div>
      </el-col>
      <el-col :span="6">
        <div class="quick-questions">
          <div class="quick-title"><i class="el-icon-question"></i> 快捷问题</div>
          <el-button v-for="q in quickQuestions" :key="q" type="text" class="quick-btn" @click="askQuestion(q)">{ q }</el-button>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  name: "Mobileai",
  data() {
    return { inputMessage: '', sending: false, chatMessages: [], quickQuestions: ['本月门诊收入是多少?', '住院床位使用率趋势', '重点科室运营分析', 'DRG盈亏情况汇总'] }
  },
  mounted() {
    this.chatMessages.push({ role: 'ai', content: '您好！我是医院运营决策分析系统的AI助手，可以帮您查询各类运营数据、分析趋势、生成报告。请问有什么可以帮您？', time: this.getCurrentTime() })
  },
  methods: {
    sendMessage() {
      if (!this.inputMessage.trim()) return
      this.chatMessages.push({ role: 'user', content: this.inputMessage, time: this.getCurrentTime() })
      const question = this.inputMessage
      this.inputMessage = ''
      this.sending = true
      setTimeout(() => {
        this.chatMessages.push({ role: 'ai', content: '正在分析"' + question + '"相关数据，请稍候...', time: this.getCurrentTime() })
        this.sending = false
        this.$nextTick(() => { if (this.$refs.chatList) this.$refs.chatList.scrollTop = this.$refs.chatList.scrollHeight })
      }, 800)
    },
    clearChat() { this.chatMessages = [{ role: 'ai', content: '对话已清空，请开始新的话题。', time: this.getCurrentTime() }] },
    askQuestion(q) { this.inputMessage = q; this.sendMessage() },
    handleKeydown(e) { if (e.key === 'Enter' && !e.shiftKey) { e.preventDefault(); this.sendMessage() } },
    getCurrentTime() { const d = new Date(); return d.getHours().toString().padStart(2, '0') + ':' + d.getMinutes().toString().padStart(2, '0') }
  }
}
</script>

<style scoped>
.chat-container { background: #fff; border-radius: 8px; box-shadow: 0 2px 12px rgba(0,0,0,.06); display: flex; flex-direction: column; height: 600px; }
.chat-header { padding: 15px 20px; border-bottom: 1px solid #eee; font-size: 16px; font-weight: bold; color: #409EFF; }
.chat-list { flex: 1; overflow-y: auto; padding: 20px; }
.chat-msg { display: flex; margin-bottom: 20px; }
.chat-msg.user { flex-direction: row-reverse; }
.msg-avatar { width: 36px; height: 36px; border-radius: 50%; background: #409EFF; color: #fff; display: flex; align-items: center; justify-content: center; font-size: 18px; margin: 0 10px; }
.msg-content { max-width: 70%; }
.msg-role-label { font-size: 12px; color: #999; margin-bottom: 5px; }
.msg-bubble { background: #f4f4f4; padding: 12px 16px; border-radius: 8px; line-height: 1.6; }
.chat-msg.user .msg-bubble { background: #409EFF; color: #fff; }
.msg-time { font-size: 11px; color: #bbb; margin-top: 5px; }
.chat-input-area { padding: 15px 20px; border-top: 1px solid #eee; }
.quick-questions { background: #fff; border-radius: 8px; box-shadow: 0 2px 12px rgba(0,0,0,.06); padding: 15px; height: 600px; }
.quick-title { font-size: 14px; font-weight: bold; color: #333; margin-bottom: 15px; padding-bottom: 10px; border-bottom: 1px solid #eee; }
.quick-btn { display: block; width: 100%; text-align: left; margin-bottom: 8px; color: #666; }
.quick-btn:hover { color: #409EFF; }
</style>