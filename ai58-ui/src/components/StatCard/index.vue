<template>
  <el-card shadow="hover" class="stat-card">
    <div class="card-content">
      <div class="icon-wrapper" :style="{ backgroundColor: iconBgColor }">
        <i :class="icon" :style="{ color: color }"></i>
      </div>
      <div class="stat-info">
        <div class="title">{{ title }}</div>
        <div class="value" :style="{ color: color }">{{ value }}</div>
        <div class="trend">
          <span v-if="trend !== undefined">
            <i :class="['el-icon', trend > 0 ? 'el-icon-top' : 'el-icon-bottom']" 
               :style="{ color: trend > 0 ? '#67C23A' : '#F56C6C' }"></i>
            {{ Math.abs(trend) }}%
          </span>
          <span v-else class="no-data">暂无数据</span>
          <span class="compare-text">同比</span>
        </div>
      </div>
    </div>
  </el-card>
</template>
<script>
export default {
  name: 'StatCard',
  props: {
    title: {
      type: String,
      default: ''
    },
    value: {
      type: [String, Number],
      default: ''
    },
    icon: {
      type: String,
      default: 'el-icon-data-line'
    },
    color: {
      type: String,
      default: '#409EFF'
    },
    trend: {
      type: Number,
      default: undefined
    }
  },
  computed: {
    iconBgColor() {
      // 根据主色生成淡色背景
      const hexColor = this.color.replace('#', '')
      const r = parseInt(hexColor.substring(0, 2), 16)
      const g = parseInt(hexColor.substring(2, 4), 16)
      const b = parseInt(hexColor.substring(4, 6), 16)
      return `rgba(${r}, ${g}, ${b}, 0.1)`
    }
  }
}
</script>
<style scoped>
.stat-card {
  height: 100%;
}
.card-content {
  display: flex;
  align-items: center;
}
.icon-wrapper {
  width: 50px;
  height: 50px;
  border-radius: 8px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 15px;
}
.icon-wrapper i {
  font-size: 24px;
}
.stat-info {
  flex: 1;
}
.title {
  font-size: 14px;
  color: #909399;
  margin-bottom: 5px;
}
.value {
  font-size: 22px;
  font-weight: bold;
  margin-bottom: 5px;
}
.trend {
  font-size: 12px;
}
.trend .el-icon {
  font-size: 12px;
}
.compare-text {
  color: #909399;
  margin-left: 5px;
}
.no-data {
  color: #909399;
}
</style>