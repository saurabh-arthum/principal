package com.arthum.admin.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_salary_data")
public class SalaryData {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "DATA_ID")
    private Integer dataId;

    @Column(name = "FILE_ID")
    private Integer fileId;

    @Column(name = "COMPANY_ID", length = 100)
    private String companyId;

    @Column(name = "TAG_NAME", length = 50)
    private String tagName;

    @Column(name = "TAG_ID", length = 100)
    private String tagId;

    @Column(name = "STRUCTURE_ID")
    private Integer structureId;

    @Column(name = "FORMULA_NAME", length = 250)
    private String formulaName;

    @Column(name = "EMPLOYEE_ID", length = 50)
    private String employeeId;

    @Column(name = "FACTORY_EMPLOYEE_ID", length = 50)
    private String factoryEmployeeId;

    @Column(name = "MONTH", length = 50)
    private String month;

    @Column(name = "BASIC_DETAILS", length = 4000)
    private String basicDetails;

    @Column(name = "MONTH_DETAILS", length = 1000)
    private String monthDetails;

    @Lob
    @Column(name = "INPUT_DETAILS", columnDefinition = "TEXT")
    private String inputDetails;

    @Lob
    @Column(name = "FIXED_INPUT_DETAILS", columnDefinition = "TEXT")
    private String fixedInputDetails;

    @Column(name = "EARNING_DETAILS", length = 2000)
    private String earningDetails;

    @Column(name = "DEDUCTION_DETAILS", length = 2000)
    private String deductionDetails;

    @Column(name = "SALARY_STATUS", length = 10)
    private String salaryStatus;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Lob
    @Column(name = "EXPENSE_DETAILS", columnDefinition = "TEXT")
    private String expenseDetails;

    @Lob
    @Column(name = "GROSS_SALARY_DETAILS", columnDefinition = "TEXT")
    private String grossSalaryDetails;

    @Column(name = "GROSS_SALARY", precision = 10, scale = 2)
    private BigDecimal grossSalary;

    @Lob
    @Column(name = "PF_CHALLAN_DETAILS", columnDefinition = "TEXT")
    private String pfChallanDetails;

    @Column(name = "EXPENSE_AMOUNT", precision = 10, scale = 2)
    private BigDecimal expenseAmount;

    @Column(name = "INCOME_AMOUNT", precision = 10, scale = 2)
    private BigDecimal incomeAmount;

    @Lob
    @Column(name = "INCOME_DETAILS", columnDefinition = "TEXT")
    private String incomeDetails;

    @Lob
    @Column(name = "ESIC_CHALLAN_DETAILS", columnDefinition = "TEXT")
    private String esicChallanDetails;

    @Column(name = "NET_PAYABLE", precision = 10, scale = 2)
    private BigDecimal netPayable;

    @Column(name = "SALARY_TYPE", length = 10)
    private String salaryType;

    @Column(name = "CREDIT_AMOUNT", precision = 10, scale = 2)
    private BigDecimal creditAmount;

    @Column(name = "CREDIT_REMARKS", length = 100)
    private String creditRemarks;

    @Column(name = "DEBIT_AMOUNT", precision = 10, scale = 2)
    private BigDecimal debitAmount;

    @Column(name = "DEBIT_REMARKS", length = 100)
    private String debitRemarks;

    @Column(name = "FNF_AMOUNT", precision = 10, scale = 2)
    private BigDecimal fnfAmount;

    @Column(name = "PF_ESIC", length = 500)
    private String pfEsic;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;


    public Integer getDataId() {
        return dataId;
    }

    public void setDataId(Integer dataId) {
        this.dataId = dataId;
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
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

    public Integer getStructureId() {
        return structureId;
    }

    public void setStructureId(Integer structureId) {
        this.structureId = structureId;
    }

    public String getFormulaName() {
        return formulaName;
    }

    public void setFormulaName(String formulaName) {
        this.formulaName = formulaName;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getFactoryEmployeeId() {
        return factoryEmployeeId;
    }

    public void setFactoryEmployeeId(String factoryEmployeeId) {
        this.factoryEmployeeId = factoryEmployeeId;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
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

    public String getSalaryStatus() {
        return salaryStatus;
    }

    public void setSalaryStatus(String salaryStatus) {
        this.salaryStatus = salaryStatus;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }

    public String getExpenseDetails() {
        return expenseDetails;
    }

    public void setExpenseDetails(String expenseDetails) {
        this.expenseDetails = expenseDetails;
    }

    public String getGrossSalaryDetails() {
        return grossSalaryDetails;
    }

    public void setGrossSalaryDetails(String grossSalaryDetails) {
        this.grossSalaryDetails = grossSalaryDetails;
    }

    public BigDecimal getGrossSalary() {
        return grossSalary;
    }

    public void setGrossSalary(BigDecimal grossSalary) {
        this.grossSalary = grossSalary;
    }

    public String getPfChallanDetails() {
        return pfChallanDetails;
    }

    public void setPfChallanDetails(String pfChallanDetails) {
        this.pfChallanDetails = pfChallanDetails;
    }

    public BigDecimal getExpenseAmount() {
        return expenseAmount;
    }

    public void setExpenseAmount(BigDecimal expenseAmount) {
        this.expenseAmount = expenseAmount;
    }

    public BigDecimal getIncomeAmount() {
        return incomeAmount;
    }

    public void setIncomeAmount(BigDecimal incomeAmount) {
        this.incomeAmount = incomeAmount;
    }

    public String getIncomeDetails() {
        return incomeDetails;
    }

    public void setIncomeDetails(String incomeDetails) {
        this.incomeDetails = incomeDetails;
    }

    public String getEsicChallanDetails() {
        return esicChallanDetails;
    }

    public void setEsicChallanDetails(String esicChallanDetails) {
        this.esicChallanDetails = esicChallanDetails;
    }

    public BigDecimal getNetPayable() {
        return netPayable;
    }

    public void setNetPayable(BigDecimal netPayable) {
        this.netPayable = netPayable;
    }

    public String getSalaryType() {
        return salaryType;
    }

    public void setSalaryType(String salaryType) {
        this.salaryType = salaryType;
    }

    public BigDecimal getCreditAmount() {
        return creditAmount;
    }

    public void setCreditAmount(BigDecimal creditAmount) {
        this.creditAmount = creditAmount;
    }

    public String getCreditRemarks() {
        return creditRemarks;
    }

    public void setCreditRemarks(String creditRemarks) {
        this.creditRemarks = creditRemarks;
    }

    public BigDecimal getDebitAmount() {
        return debitAmount;
    }

    public void setDebitAmount(BigDecimal debitAmount) {
        this.debitAmount = debitAmount;
    }

    public String getDebitRemarks() {
        return debitRemarks;
    }

    public void setDebitRemarks(String debitRemarks) {
        this.debitRemarks = debitRemarks;
    }

    public BigDecimal getFnfAmount() {
        return fnfAmount;
    }

    public void setFnfAmount(BigDecimal fnfAmount) {
        this.fnfAmount = fnfAmount;
    }

    public String getPfEsic() {
        return pfEsic;
    }

    public void setPfEsic(String pfEsic) {
        this.pfEsic = pfEsic;
    }

    public LocalDateTime getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSalaryData{" +
                "dataId=" + dataId +
                ", employeeId='" + employeeId + '\'' +
                ", month='" + month + '\'' +
                ", netPayable=" + netPayable +
                ", salaryStatus='" + salaryStatus + '\'' +
                '}';
    }
}
