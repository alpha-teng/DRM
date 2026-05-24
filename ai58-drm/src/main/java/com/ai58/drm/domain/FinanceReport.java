package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 财务报告 drm_finance_report
 *
 * @author ai58
 */
public class FinanceReport extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long reportId;
    private String reportTitle;
    private String reportType;
    private String reportPeriod;
    private String targetDept;
    private BigDecimal totalIncome;
    private BigDecimal totalExpense;
    private BigDecimal balance;
    private String incomeGrowth;
    private String expenseGrowth;
    private String content;
    private String status;

    public Long getReportId() {
        return reportId;
    }

    public void setReportId(Long reportId) {
        this.reportId = reportId;
    }

    public String getReportTitle() {
        return reportTitle;
    }

    public void setReportTitle(String reportTitle) {
        this.reportTitle = reportTitle;
    }

    public String getReportType() {
        return reportType;
    }

    public void setReportType(String reportType) {
        this.reportType = reportType;
    }

    public String getReportPeriod() {
        return reportPeriod;
    }

    public void setReportPeriod(String reportPeriod) {
        this.reportPeriod = reportPeriod;
    }

    public String getTargetDept() {
        return targetDept;
    }

    public void setTargetDept(String targetDept) {
        this.targetDept = targetDept;
    }

    public BigDecimal getTotalIncome() {
        return totalIncome;
    }

    public void setTotalIncome(BigDecimal totalIncome) {
        this.totalIncome = totalIncome;
    }

    public BigDecimal getTotalExpense() {
        return totalExpense;
    }

    public void setTotalExpense(BigDecimal totalExpense) {
        this.totalExpense = totalExpense;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getIncomeGrowth() {
        return incomeGrowth;
    }

    public void setIncomeGrowth(String incomeGrowth) {
        this.incomeGrowth = incomeGrowth;
    }

    public String getExpenseGrowth() {
        return expenseGrowth;
    }

    public void setExpenseGrowth(String expenseGrowth) {
        this.expenseGrowth = expenseGrowth;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("reportId", getReportId())
            .append("reportTitle", getReportTitle())
            .append("reportType", getReportType())
            .append("reportPeriod", getReportPeriod())
            .append("totalIncome", getTotalIncome())
            .append("totalExpense", getTotalExpense())
            .append("balance", getBalance())
            .toString();
    }
}
