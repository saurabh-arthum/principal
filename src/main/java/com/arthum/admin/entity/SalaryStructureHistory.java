package com.arthum.admin.entity;


import java.time.LocalDateTime;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
@Entity
@Table(name = "corporate_hrms_salary_structure_hist")
public class SalaryStructureHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "HIST_ID")
    private Integer histId;

    @Column(name = "ID")
    private Integer id;

    @Column(name = "COMPANY_ID", length = 100)
    private String companyId;

    @Column(name = "TAG_NAME", length = 50)
    private String tagName;

    @Column(name = "TAG_ID", length = 100)
    private String tagId;

    @Column(name = "COMPLIANCE_STATUS", length = 10)
    private String complianceStatus;

    @Column(name = "BASIC_DETAILS", length = 2000)
    private String basicDetails;

    @Column(name = "MONTH_DETAILS", length = 500)
    private String monthDetails;

    @Lob
    @Column(name = "EARNING_DETAILS", columnDefinition = "TEXT")
    private String earningDetails;

    @Lob
    @Column(name = "DEDUCTION_DETAILS", columnDefinition = "TEXT")
    private String deductionDetails;

    @Column(name = "STATUS", length = 20)
    private String status;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Lob
    @Column(name = "FORMULA_DETAILS", columnDefinition = "TEXT")
    private String formulaDetails;

    @Lob
    @Column(name = "INPUT_DETAILS", columnDefinition = "TEXT")
    private String inputDetails;

    @Column(name = "FIXED_INPUT_DETAILS", length = 2000)
    private String fixedInputDetails;

    @Lob
    @Column(name = "EXPENSE_FORMULA_DETAILS", columnDefinition = "TEXT")
    private String expenseFormulaDetails;

    @Lob
    @Column(name = "EXPENSE_DETAILS", columnDefinition = "TEXT")
    private String expenseDetails;

    @Lob
    @Column(name = "INCOME_DETAILS", columnDefinition = "TEXT")
    private String incomeDetails;

    @Lob
    @Column(name = "INCOME_FORMULA_DETAILS", columnDefinition = "TEXT")
    private String incomeFormulaDetails;

    @Lob
    @Column(name = "INTERMEDIATE_DETAILS", columnDefinition = "TEXT")
    private String intermediateDetails;

    @Lob
    @Column(name = "BTR_DETAILS", columnDefinition = "TEXT")
    private String btrDetails;

    @Column(name = "INSERT_TS")
    private LocalDateTime insertTs;

    public Integer getHistId() {
        return histId;
    }

    public void setHistId(Integer histId) {
        this.histId = histId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public String getTagId() {
        return tagId;
    }

    public void setTagId(String tagId) {
        this.tagId = tagId;
    }

    public String getComplianceStatus() {
        return complianceStatus;
    }

    public void setComplianceStatus(String complianceStatus) {
        this.complianceStatus = complianceStatus;
    }

    public String getBasicDetails() {
        return basicDetails;
    }

    public void setBasicDetails(String basicDetails) {
        this.basicDetails = basicDetails;
    }

    public String getMonthDetails() {
        return monthDetails;
    }

    public void setMonthDetails(String monthDetails) {
        this.monthDetails = monthDetails;
    }

    public String getEarningDetails() {
        return earningDetails;
    }

    public void setEarningDetails(String earningDetails) {
        this.earningDetails = earningDetails;
    }

    public String getDeductionDetails() {
        return deductionDetails;
    }

    public void setDeductionDetails(String deductionDetails) {
        this.deductionDetails = deductionDetails;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }

    public LocalDateTime getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    public String getFormulaDetails() {
        return formulaDetails;
    }

    public void setFormulaDetails(String formulaDetails) {
        this.formulaDetails = formulaDetails;
    }

    public String getInputDetails() {
        return inputDetails;
    }

    public void setInputDetails(String inputDetails) {
        this.inputDetails = inputDetails;
    }

    public String getFixedInputDetails() {
        return fixedInputDetails;
    }

    public void setFixedInputDetails(String fixedInputDetails) {
        this.fixedInputDetails = fixedInputDetails;
    }

    public String getExpenseFormulaDetails() {
        return expenseFormulaDetails;
    }

    public void setExpenseFormulaDetails(String expenseFormulaDetails) {
        this.expenseFormulaDetails = expenseFormulaDetails;
    }

    public String getExpenseDetails() {
        return expenseDetails;
    }

    public void setExpenseDetails(String expenseDetails) {
        this.expenseDetails = expenseDetails;
    }

    public String getIncomeDetails() {
        return incomeDetails;
    }

    public void setIncomeDetails(String incomeDetails) {
        this.incomeDetails = incomeDetails;
    }

    public String getIncomeFormulaDetails() {
        return incomeFormulaDetails;
    }

    public void setIncomeFormulaDetails(String incomeFormulaDetails) {
        this.incomeFormulaDetails = incomeFormulaDetails;
    }

    public String getIntermediateDetails() {
        return intermediateDetails;
    }

    public void setIntermediateDetails(String intermediateDetails) {
        this.intermediateDetails = intermediateDetails;
    }

    public String getBtrDetails() {
        return btrDetails;
    }

    public void setBtrDetails(String btrDetails) {
        this.btrDetails = btrDetails;
    }

    public LocalDateTime getInsertTs() {
        return insertTs;
    }

    public void setInsertTs(LocalDateTime insertTs) {
        this.insertTs = insertTs;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSalaryStructureHist{" +
                "histId=" + histId +
                ", id=" + id +
                ", companyId='" + companyId + '\'' +
                ", tagName='" + tagName + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
