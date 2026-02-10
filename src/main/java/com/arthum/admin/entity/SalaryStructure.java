package com.arthum.admin.entity;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_salary_structure")
public class SalaryStructure {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "COMPANY_ID", length = 100)
    private String companyId;

    @Column(name = "TAG_NAME", length = 50)
    private String tagName;

    @Column(name = "TAG_ID", length = 100)
    private String tagId;

    @Column(name = "FORMULA_NAME", length = 250)
    private String formulaName;

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

    @Lob
    @Column(name = "INPUT_DETAILS", columnDefinition = "TEXT")
    private String inputDetails;

    @Column(name = "STATUS", length = 20)
    private String status;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Column(name = "FIXED_INPUT_DETAILS", length = 5000)
    private String fixedInputDetails;

    @Lob
    @Column(name = "FORMULA_DETAILS", columnDefinition = "TEXT")
    private String formulaDetails;

    @Lob
    @Column(name = "EXPENSE_DETAILS", columnDefinition = "TEXT")
    private String expenseDetails;

    @Lob
    @Column(name = "EXPENSE_FORMULA_DETAILS", columnDefinition = "TEXT")
    private String expenseFormulaDetails;

    @Lob
    @Column(name = "INCOME_DETAILS", columnDefinition = "TEXT")
    private String incomeDetails;

    @Lob
    @Column(name = "INCOME_FORMULA_DETAILS", columnDefinition = "TEXT")
    private String incomeFormulaDetails;

    @Lob
    @Column(name = "BTR_DETAILS", columnDefinition = "TEXT")
    private String btrDetails;

    @Lob
    @Column(name = "INTERMEDIATE_DETAILS", columnDefinition = "TEXT")
    private String intermediateDetails;

    @Column(name = "MAIN_FORMULA_ID")
    private Integer mainFormulaId;

    @Column(name = "FORMULA_TYPE", length = 5)
    private String formulaType;

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

    public String getFormulaName() {
        return formulaName;
    }

    public void setFormulaName(String formulaName) {
        this.formulaName = formulaName;
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

    public String getInputDetails() {
        return inputDetails;
    }

    public void setInputDetails(String inputDetails) {
        this.inputDetails = inputDetails;
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

    public String getFixedInputDetails() {
        return fixedInputDetails;
    }

    public void setFixedInputDetails(String fixedInputDetails) {
        this.fixedInputDetails = fixedInputDetails;
    }

    public String getFormulaDetails() {
        return formulaDetails;
    }

    public void setFormulaDetails(String formulaDetails) {
        this.formulaDetails = formulaDetails;
    }

    public String getExpenseDetails() {
        return expenseDetails;
    }

    public void setExpenseDetails(String expenseDetails) {
        this.expenseDetails = expenseDetails;
    }

    public String getExpenseFormulaDetails() {
        return expenseFormulaDetails;
    }

    public void setExpenseFormulaDetails(String expenseFormulaDetails) {
        this.expenseFormulaDetails = expenseFormulaDetails;
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

    public String getBtrDetails() {
        return btrDetails;
    }

    public void setBtrDetails(String btrDetails) {
        this.btrDetails = btrDetails;
    }

    public String getIntermediateDetails() {
        return intermediateDetails;
    }

    public void setIntermediateDetails(String intermediateDetails) {
        this.intermediateDetails = intermediateDetails;
    }

    public Integer getMainFormulaId() {
        return mainFormulaId;
    }

    public void setMainFormulaId(Integer mainFormulaId) {
        this.mainFormulaId = mainFormulaId;
    }

    public String getFormulaType() {
        return formulaType;
    }

    public void setFormulaType(String formulaType) {
        this.formulaType = formulaType;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSalaryStructure{" +
                "id=" + id +
                ", companyId='" + companyId + '\'' +
                ", formulaName='" + formulaName + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
