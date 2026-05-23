<template>
  <div class="app-container home">
    <el-row :gutter="10">
      <el-col :span="6">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <i class="el-icon-s-management"></i>
            <span>审批中的合同</span>
          </div>
          <div style="text-align: center; font-size: 20px;">{{checking}}个</div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <i class="el-icon-s-opportunity"></i>
            <span>履行中的合同</span>
          </div>
          <div style="text-align: center; font-size: 20px;">{{valid}}个</div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <i class="el-icon-success"></i>
            <span>完结的合同</span>
          </div>
          <div style="text-align: center; font-size: 20px;">{{finished}}个</div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <i class="el-icon-s-goods"></i>
            <span>到期提醒</span>
          </div>
          <div style="text-align: center; font-size: 20px;">{{overdue}}个</div>
        </el-card>
      </el-col>
    </el-row>
    
    <el-row :gutter="10" style="margin-top:20px">
      <el-col :span="18">
        <el-card class="box-card">
          <div slot="header" class="clearfix" style="float:left">
            <i class="el-icon-s-platform"></i>
            <span>待办任务</span>
          </div>
          <div style="width: 100%; height: 600px;">
            <el-tabs v-model="activeName" @tab-click="handleClick">
        <el-tabs>
        </el-tabs><el-tab-pane label="待审批" name="dsp">
          <el-table :data="dsh_data" style="width: 100%;" height="520">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="合同名称" label="合同名称" width="150"></el-table-column>
      <el-table-column prop="合同编号" label="合同编号" width="100"></el-table-column>
      <el-table-column prop="流程类型" label="流程类型" width="80"></el-table-column>
      <el-table-column prop="申请时间" label="申请时间" width="140"></el-table-column>
      <el-table-column prop="申请人" label="申请人" width="80"></el-table-column>
      <el-table-column prop="合同摘要" label="合同摘要" width="200"></el-table-column>
      <el-table-column label="操作"  width="250">
        <template slot-scope="scope">
          <el-button @click="handleView(scope.$index, scope.row)" type="primary" plain size="small" icon="el-icon-search">查看</el-button>
          <el-button @click="handlePass(scope.$index, scope.row)" type="success" plain size="small" icon="el-icon-success">通过</el-button>
          <el-button @click="handleReject(scope.$index, scope.row)" type="danger"  plain size="small" icon="el-icon-error">驳回</el-button>
        </template>
      </el-table-column>
    </el-table>
        </el-tab-pane>
        <el-tab-pane label="待归档" name="dgd">
          <el-table :data="archive_Data" style="width: 100%" height="520">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="合同名称" label="合同名称" width="150"></el-table-column>
      <el-table-column prop="合同编号" label="合同编号" width="100"></el-table-column>
      <el-table-column prop="合作方" label="合作方" width="150"></el-table-column>
      <el-table-column prop="合同类型" label="合同类型" width="120"></el-table-column>
      <el-table-column prop="审批状态" label="审批状态" width="120"></el-table-column>
      <el-table-column prop="创建人" label="创建人" width="120"></el-table-column>
      <el-table-column label="操作" width="250">
        <template slot-scope="scope">
          <el-button @click="handleView(scope.$index, scope.row)" type="primary" plain size="small" icon="el-icon-search">查看</el-button>
          <el-button @click="handleArchive(scope.$index, scope.row)" type="success" plain size="small" icon="el-icon-success">登记</el-button>
          <el-button @click="handleArchiveReject(scope.$index, scope.row)" type="danger"  plain size="small" icon="el-icon-error">驳回</el-button>
        </template>
      </el-table-column>
    </el-table>
        </el-tab-pane>
        <el-tab-pane label="即将到期" name="jjdq">
          <el-table :data="expireData" style="width: 100%" height="520">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="合同名称" label="合同名称" width="150"></el-table-column>
      <el-table-column prop="合同编号" label="合同编号" width="100"></el-table-column>
      <el-table-column prop="合作方" label="合作方" width="150"></el-table-column>
      <el-table-column prop="审批状态" label="审批状态" width="120"></el-table-column>
      <el-table-column prop="续签状态" label="续签状态" width="120"></el-table-column>
      <el-table-column prop="生效日期" label="生效日期" width="110"></el-table-column>
      <el-table-column prop="结束日期" label="结束日期" width="110"></el-table-column>
      <el-table-column prop="距离到期" label="距离到期" width="100"></el-table-column>
      <el-table-column prop="负责人" label="负责人" width="80"></el-table-column>
      <el-table-column prop="收支类型" label="收支类型" width="80"></el-table-column>
      <el-table-column prop="合同金额" label="合同金额" width="150"></el-table-column>
      <el-table-column label="操作" width="250">
        <template slot-scope="scope">
          <el-button @click="handleView(scope.$index, scope.row)" type="primary" plain size="small" icon="el-icon-search">查看</el-button>
        </template>
      </el-table-column>
    </el-table>

        </el-tab-pane>
        <el-tab-pane label="待用印" name="dyy">
          <el-table :data="sealData" style="width: 100%" height="520">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="合同名称" label="合同名称" width="150"></el-table-column>
      <el-table-column prop="合同编号" label="合同编号" width="100"></el-table-column>
      <el-table-column prop="申请人" label="申请人" width="150"></el-table-column>
      <el-table-column prop="审批通过时间" label="审批通过时间" width="180"></el-table-column>
      <el-table-column prop="发起时间" label="发起时间" width="180"></el-table-column>
      <el-table-column label="操作" width="250">
        <template slot-scope="scope" >
          <el-button @click="handleView(scope.$index, scope.row)" type="primary" plain size="small" icon="el-icon-search">查看</el-button>
          <el-button @click="handleRegister(scope.$index, scope.row)" type="success" plain size="small" icon="el-icon-success">登记</el-button>
          <el-button @click="handleReject(scope.$index, scope.row)" type="danger"  plain size="small" icon="el-icon-error">驳回</el-button>
        </template>
      </el-table-column>
    </el-table>

        </el-tab-pane>
        <el-tab-pane label="待复核" name="dfh">
          <el-table :data="reviewData" style="width: 100%" height="520">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="合同名称" label="合同名称" width="150"></el-table-column>
      <el-table-column prop="合同编号" label="合同编号" width="100"></el-table-column>
      <el-table-column prop="合作方" label="合作方" width="100"></el-table-column>
      <el-table-column prop="所属项目" label="所属项目" width="150"></el-table-column>
      <el-table-column prop="拟稿人" label="拟稿人" width="100"></el-table-column>
      <el-table-column prop="负责人" label="负责人" width="100"></el-table-column>
      <el-table-column prop="上传双章时间" label="上传双章时间" width="180"></el-table-column>
      <el-table-column label="操作"  width="250">
        <template slot-scope="scope">
          <el-button @click="handleView(scope.$index, scope.row)" type="primary" plain size="small" icon="el-icon-search">查看</el-button>
          <el-button @click="handleReview(scope.$index, scope.row)" type="success" plain size="small" icon="el-icon-success">复核</el-button>
          <el-button @click="handleReject(scope.$index, scope.row)" type="danger"  plain size="small" icon="el-icon-error">驳回</el-button>
        </template>
      </el-table-column>
    </el-table>

        </el-tab-pane>
        <el-tab-pane label="履约任务" name="lyrw">
          <el-table :data="taskData" style="width: 100%; " height="520">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="任务名称" label="任务名称" width="150"></el-table-column>
      <el-table-column prop="合同编号" label="合同编号" width="100"></el-table-column>
      <el-table-column prop="合同名称" label="合同名称" width="150"></el-table-column>
      <el-table-column prop="金额" label="金额" width="150"></el-table-column>
      <el-table-column prop="截止时间" label="截止时间" width="180"></el-table-column>
      <el-table-column label="操作"  width="250">
        <template slot-scope="scope">
          <el-button @click="handleView(scope.$index, scope.row)" type="primary" plain size="small" icon="el-icon-search">查看</el-button>
        </template>
      </el-table-column>
    </el-table>

        </el-tab-pane>
        <el-tab-pane label="借阅审批" name="jysp">
          <el-table :data="borrow_data" style="width: 100%" height="520">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="合同名称" label="合同名称" width="150"></el-table-column>
      <el-table-column prop="合同编号" label="合同编号" width="100"></el-table-column>
      <el-table-column prop="流程类型" label="流程类型" width="80"></el-table-column>
      <el-table-column prop="申请时间" label="申请时间" width="140"></el-table-column>
      <el-table-column prop="申请人" label="申请人" width="80"></el-table-column>
      <el-table-column prop="合同摘要" label="合同摘要" width="200"></el-table-column>
      <el-table-column label="操作"  width="250">
        <template slot-scope="scope">
          <el-button @click="handleView(scope.$index, scope.row)" type="primary" plain size="small" icon="el-icon-search">查看</el-button>
          <el-button @click="handlePass(scope.$index, scope.row)" type="success" plain size="small" icon="el-icon-success">通过</el-button>
          <el-button @click="handleReject(scope.$index, scope.row)" type="danger"  plain size="small" icon="el-icon-error">驳回</el-button>
        </template>
      </el-table-column>
    </el-table>

        </el-tab-pane>

      </el-tabs>
          </div>
        </el-card>          
        

      </el-col>
      <el-col :span="6">
        <el-card class="box-card">
          <div slot="header" class="clearfix" style="float:left">
            <i class="el-icon-s-platform"></i>
            <span>快捷操作</span>
          </div>
          <div style="width: 100%; height: 600px;">
            <el-button @click="pushUrl('/htgl/cjht')" plain type="primary" icon="el-icon-edit"  class="bt" >创建合同</el-button><br/>
            <el-button @click="pushUrl('/htgl/spjd')"  plain type="primary" icon="el-icon-finished" class="bt" >审批进度</el-button><br/>
            <el-button @click="pushUrl('/htgl/lxgz')"  plain type="primary" icon="el-icon-document-copy" class="bt" >履约跟踪</el-button><br/>
            <el-button @click="pushUrl('/htgl/jjdq')"  plain type="primary" icon="el-icon-chat-line-round" class="bt" >即将预警</el-button><br/>
            <el-button @click="pushUrl('/htsq/yygl')"  plain type="primary" icon="el-icon-s-check" class="bt" >用印管理</el-button><br/>
            <el-button @click="pushUrl('/gdjy/jysq')"  plain type="primary" icon="el-icon-set-up" class="bt" >借阅申请</el-button><br/>
            <el-button @click="pushUrl('/bbtj/htbb')"  plain type="primary" icon="el-icon-document" class="bt" >合同报表</el-button><br/>
            <el-button @click="pushUrl('/jcsz/hzfgl')"  plain type="primary" icon="el-icon-s-custom" class="bt" >合作方管理</el-button><br/>

          </div>
          </el-card>
      </el-col>
    </el-row>
  </div>
</template>



<script>

export default {
  data() {
    return {
      checking:3,
      valid:13,
      finished:11,
      overdue:12,
      activeName: 'dsp',
      dsh_data: [
        {
          合同名称: '合同A',
          合同编号: '001',
          流程类型: '采购流程',
          申请时间: '2023-10-01 10:00',
          申请人: '张三',
          合同摘要: '这是一个关于采购合同的摘要'
        },
        {
          合同名称: '合同B',
          合同编号: '002',
          流程类型: '销售流程',
          申请时间: '2023-10-05 14:30',
          申请人: '李四',
          合同摘要: '这是一个关于销售合同的摘要'
        },
        {
          合同名称: '合同C',
          合同编号: '003',
          流程类型: '租赁流程',
          申请时间: '2023-10-10 09:45',
          申请人: '王五',
          合同摘要: '这是一个关于租赁合同的摘要'
        },
        {
          合同名称: '合同D',
          合同编号: '004',
          流程类型: '服务流程',
          申请时间: '2023-10-15 11:15',
          申请人: '赵六',
          合同摘要: '这是一个关于服务合同的摘要'
        }
      ],
      archive_Data: [
        {
          合同名称: '合同A',
          合同编号: '001',
          合作方: '对方A',
          合同类型: '采购合同',
          审批状态: '已审批',
          创建人: '张三'
        },
        {
          合同名称: '合同B',
          合同编号: '002',
          合作方: '对方B',
          合同类型: '销售合同',
          审批状态: '未审批',
          创建人: '李四'
        },
        {
          合同名称: '合同C',
          合同编号: '003',
          合作方: '对方C',
          合同类型: '租赁合同',
          审批状态: '已审批',
          创建人: '王五'
        },
        {
          合同名称: '合同D',
          合同编号: '004',
          合作方: '对方D',
          合同类型: '服务合同',
          审批状态: '未审批',
          创建人: '赵六'
        }
      ],
      expireData: [
        {
          合同名称: '合同A',
          合同编号: '001',
          合作方: '对方A',
          审批状态: '已审批',
          续签状态: '未续签',
          生效日期: '2023-10-01',
          结束日期: '2024-09-30',
          距离到期: '5个月',
          负责人: '张三',
          收支类型: '收入',
          合同金额: '1,000,000'
        },
        {
          合同名称: '合同B',
          合同编号: '002',
          合作方: '对方B',
          审批状态: '未审批',
          续签状态: '已续签',
          生效日期: '2023-11-01',
          结束日期: '2025-10-31',
          距离到期: '1个月',
          负责人: '李四',
          收支类型: '支出',
          合同金额: '500,000'
        },
        {
          合同名称: '合同C',
          合同编号: '003',
          合作方: '对方C',
          审批状态: '已审批',
          续签状态: '未续签',
          生效日期: '2023-12-01',
          结束日期: '2024-11-30',
          距离到期: '1个月',
          负责人: '王五',
          收支类型: '收入',
          合同金额: '800,000'
        },
        {
          合同名称: '合同D',
          合同编号: '004',
          合作方: '对方D',
          审批状态: '未审批',
          续签状态: '已续签',
          生效日期: '2024-01-01',
          结束日期: '2026-05-31',
          距离到期: '1个月',
          负责人: '赵六',
          收支类型: '支出',
          合同金额: '700,000'
        }
      ],
      sealData: [
        {
          合同名称: '合同A',
          合同编号: '001',
          申请人: '张三',
          审批通过时间: '2023-10-15 12:00',
          发起时间: '2023-10-14 10:00'
        },
        {
          合同名称: '合同B',
          合同编号: '002',
          申请人: '李四',
          审批通过时间: '2023-10-20 15:30',
          发起时间: '2023-10-19 14:00'
        },
        {
          合同名称: '合同C',
          合同编号: '003',
          申请人: '王五',
          审批通过时间: '2023-10-25 18:00',
          发起时间: '2023-10-24 16:30'
        },
        {
          合同名称: '合同D',
          合同编号: '004',
          申请人: '赵六',
          审批通过时间: '2023-10-30 21:00',
          发起时间: '2023-10-29 20:00'
        }
      ],
      reviewData: [
        {
          合同名称: '合同A',
          合同编号: '001',
          合作方: 'ABC公司',
          所属项目: '项目X',
          拟稿人: '张三',
          负责人: '李四',
          上传双章时间: '2023-10-15 12:00'
        },
        {
          合同名称: '合同B',
          合同编号: '002',
          合作方: 'XYZ公司',
          所属项目: '项目Y',
          拟稿人: '李四',
          负责人: '王五',
          上传双章时间: '2023-10-20 15:30'
        },
        {
          合同名称: '合同C',
          合同编号: '003',
          合作方: 'DEF公司',
          所属项目: '项目Z',
          拟稿人: '王五',
          负责人: '赵六',
          上传双章时间: '2023-10-25 18:00'
        },
        {
          合同名称: '合同D',
          合同编号: '004',
          合作方: 'GHI公司',
          所属项目: '项目W',
          拟稿人: '赵六',
          负责人: '李四',
          上传双章时间: '2023-10-30 21:00'
        }
      ],
      taskData: [
        {
          任务名称: '任务A',
          合同编号: '001',
          合同名称: '合同A',
          金额: '50,000元',
          截止时间: '2023-12-31'
        },
        {
          任务名称: '任务B',
          合同编号: '002',
          合同名称: '合同B',
          金额: '75,000元',
          截止时间: '2024-02-29'
        },
        {
          任务名称: '任务C',
          合同编号: '003',
          合同名称: '合同C',
          金额: '100,000元',
          截止时间: '2024-04-30'
        },
        {
          任务名称: '任务D',
          合同编号: '004',
          合同名称: '合同D',
          金额: '150,000元',
          截止时间: '2024-06-30'
        }
      ],
      borrow_data: [
        {
          合同名称: '合同A',
          合同编号: '001',
          流程类型: '采购流程',
          申请时间: '2023-10-01 10:00',
          申请人: '张三',
          合同摘要: '这是一个关于采购合同的摘要'
        },
        {
          合同名称: '合同B',
          合同编号: '002',
          流程类型: '销售流程',
          申请时间: '2023-10-05 14:30',
          申请人: '李四',
          合同摘要: '这是一个关于销售合同的摘要'
        },
        {
          合同名称: '合同C',
          合同编号: '003',
          流程类型: '租赁流程',
          申请时间: '2023-10-10 09:45',
          申请人: '王五',
          合同摘要: '这是一个关于租赁合同的摘要'
        },
        {
          合同名称: '合同D',
          合同编号: '004',
          流程类型: '服务流程',
          申请时间: '2023-10-15 11:15',
          申请人: '赵六',
          合同摘要: '这是一个关于服务合同的摘要'
        }
      ],
    };
  },
  mounted() {
    
  },
  methods: {
    handleClick(tab, event) {
        console.log(tab, event);
      },
  
      handlePass(index, row) {
      this.$confirm('确定要审批通过吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.tableData.splice(index, 1);
        this.$message({
          type: 'success',
          message: '审批通过成功!'
        });
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消审批通过'
        });
      });
    },
    handleReject(index, row) {
      this.$confirm('确定要驳回吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.tableData.splice(index, 1);
        this.$message({
          type: 'success',
          message: '驳回成功!'
        });
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消驳回'
        });
      });
    },
  
    handleArchive(index, row) {
      this.$confirm('确定要归档吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.tableData.splice(index, 1);
        this.$message({
          type: 'success',
          message: '归档成功!'
        });
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消归档'
        });
      });
    },
    handleArchiveReject(index, row) {
      this.$confirm('确定要驳回吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.tableData.splice(index, 1);
        this.$message({
          type: 'success',
          message: '驳回成功!'
        });
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消驳回'
        });
      });
    },
    pushUrl(url) {
      this.$router.push({path: url});
    },
    handleView(index, row) {
      this.$message.info('查看合同：' + row.合同名称);
    },
    handleRegister(index, row) {
      this.$message.success('登记合同：' + row.合同名称);
    },
    handleReview(index, row) {
      this.$message.success('复核合同：' + row.合同名称);
    },
    }
};
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .iot-platform-home {
  display: flex;
  flex-direction: column;
}
.box-card {
  text-align: center;
  font-size: 14px;
  color: #606266;
}
.bt
{
  height: 50px;
  width: 200px;
  margin-top: 10px;
}
  
}
</style>

