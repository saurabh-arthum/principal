package com.arthum.admin.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_salary_file")
public class SalaryFile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "FILE_ID")
    private Integer fileId;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Column(name = "MONTH", length = 20)
    private String month;

    @Column(name = "NO_OF_DATA")
    private Integer noOfData;

    @Column(name = "ORIGINAL_FILE_NAME", length = 60)
    private String originalFileName;

    @Column(name = "FILE_NAME", length = 100)
    private String fileName;

    @Column(name = "FILE_EXT", length = 15)
    private String fileExt;

    @Column(name = "BUCKET_NAME", length = 15)
    private String bucketName;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "STATUS", length = 20)
    private String status;

    @Lob
    @Column(name = "EXPENSE_DETAILS", columnDefinition = "TEXT")
    private String expenseDetails;

    @Column(name = "GROSS_SALARY_DETAILS", length = 2000)
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

    @Column(name = "PF_STATUS", length = 20)
    private String pfStatus;

    @Column(name = "PF_FILE_NAME", length = 100)
    private String pfFileName;

    @Column(name = "PF_FILE_EXT", length = 10)
    private String pfFileExt;

    @Column(name = "PF_BUCKET_LOC", length = 50)
    private String pfBucketLoc;

    @Column(name = "ESIC_FILE_NAME", length = 100)
    private String esicFileName;

    @Column(name = "ESIC_FILE_EXT", length = 10)
    private String esicFileExt;

    @Column(name = "ESIC_STATUS", length = 20)
    private String esicStatus;

    @Lob
    @Column(name = "ESIC_CHALLAN_DETAILS", columnDefinition = "TEXT")
    private String esicChallanDetails;

    @Column(name = "BTR_STATUS", length = 20)
    private String btrStatus;

    @Column(name = "BTR_FILE_NAME", length = 100)
    private String btrFileName;

    @Column(name = "BTR_FILE_EXT", length = 10)
    private String btrFileExt;

    @Column(name = "FILE_NET_PAYABLE", precision = 10, scale = 2)
    private BigDecimal fileNetPayable;

    @Column(name = "FNF_BTR_STATUS", length = 20)
    private String fnfBtrStatus;

    @Column(name = "FNF_BTR_FILE_NAME", length = 100)
    private String fnfBtrFileName;

    @Column(name = "FNF_BTR_FILE_EXT", length = 10)
    private String fnfBtrFileExt;

    @Column(name = "PF_ESIC", length = 500)
    private String pfEsic;

    @Column(name = "INV_STATUS", length = 50)
    private String invStatus;

    @Column(name = "INV_FILE_NAME", length = 500)
    private String invFileName;

    @Column(name = "INV_FILE_EXT", length = 10)
    private String invFileExt;

    @Column(name = "INV_BUCKET_LOC", length = 100)
    private String invBucketLoc;

    @Lob
    @Column(name = "TEMPLATE_FILES", columnDefinition = "TEXT")
    private String templateFiles;

    @Lob
    @Column(name = "HOLD_BTR_FILES", columnDefinition = "TEXT")
    private String holdBtrFiles;

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

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public Integer getNoOfData() {
        return noOfData;
    }

    public void setNoOfData(Integer noOfData) {
        this.noOfData = noOfData;
    }

    public String getOriginalFileName() {
        return originalFileName;
    }

    public void setOriginalFileName(String originalFileName) {
        this.originalFileName = originalFileName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileExt() {
        return fileExt;
    }

    public void setFileExt(String fileExt) {
        this.fileExt = fileExt;
    }

    public String getBucketName() {
        return bucketName;
    }

    public void setBucketName(String bucketName) {
        this.bucketName = bucketName;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public String getPfStatus() {
        return pfStatus;
    }

    public void setPfStatus(String pfStatus) {
        this.pfStatus = pfStatus;
    }

    public String getPfFileName() {
        return pfFileName;
    }

    public void setPfFileName(String pfFileName) {
        this.pfFileName = pfFileName;
    }

    public String getPfFileExt() {
        return pfFileExt;
    }

    public void setPfFileExt(String pfFileExt) {
        this.pfFileExt = pfFileExt;
    }

    public String getPfBucketLoc() {
        return pfBucketLoc;
    }

    public void setPfBucketLoc(String pfBucketLoc) {
        this.pfBucketLoc = pfBucketLoc;
    }

    public String getEsicFileName() {
        return esicFileName;
    }

    public void setEsicFileName(String esicFileName) {
        this.esicFileName = esicFileName;
    }

    public String getEsicFileExt() {
        return esicFileExt;
    }

    public void setEsicFileExt(String esicFileExt) {
        this.esicFileExt = esicFileExt;
    }

    public String getEsicStatus() {
        return esicStatus;
    }

    public void setEsicStatus(String esicStatus) {
        this.esicStatus = esicStatus;
    }

    public String getEsicChallanDetails() {
        return esicChallanDetails;
    }

    public void setEsicChallanDetails(String esicChallanDetails) {
        this.esicChallanDetails = esicChallanDetails;
    }

    public String getBtrStatus() {
        return btrStatus;
    }

    public void setBtrStatus(String btrStatus) {
        this.btrStatus = btrStatus;
    }

    public String getBtrFileName() {
        return btrFileName;
    }

    public void setBtrFileName(String btrFileName) {
        this.btrFileName = btrFileName;
    }

    public String getBtrFileExt() {
        return btrFileExt;
    }

    public void setBtrFileExt(String btrFileExt) {
        this.btrFileExt = btrFileExt;
    }

    public BigDecimal getFileNetPayable() {
        return fileNetPayable;
    }

    public void setFileNetPayable(BigDecimal fileNetPayable) {
        this.fileNetPayable = fileNetPayable;
    }

    public String getFnfBtrStatus() {
        return fnfBtrStatus;
    }

    public void setFnfBtrStatus(String fnfBtrStatus) {
        this.fnfBtrStatus = fnfBtrStatus;
    }

    public String getFnfBtrFileName() {
        return fnfBtrFileName;
    }

    public void setFnfBtrFileName(String fnfBtrFileName) {
        this.fnfBtrFileName = fnfBtrFileName;
    }

    public String getFnfBtrFileExt() {
        return fnfBtrFileExt;
    }

    public void setFnfBtrFileExt(String fnfBtrFileExt) {
        this.fnfBtrFileExt = fnfBtrFileExt;
    }

    public String getPfEsic() {
        return pfEsic;
    }

    public void setPfEsic(String pfEsic) {
        this.pfEsic = pfEsic;
    }

    public String getInvStatus() {
        return invStatus;
    }

    public void setInvStatus(String invStatus) {
        this.invStatus = invStatus;
    }

    public String getInvFileName() {
        return invFileName;
    }

    public void setInvFileName(String invFileName) {
        this.invFileName = invFileName;
    }

    public String getInvFileExt() {
        return invFileExt;
    }

    public void setInvFileExt(String invFileExt) {
        this.invFileExt = invFileExt;
    }

    public String getInvBucketLoc() {
        return invBucketLoc;
    }

    public void setInvBucketLoc(String invBucketLoc) {
        this.invBucketLoc = invBucketLoc;
    }

    public String getTemplateFiles() {
        return templateFiles;
    }

    public void setTemplateFiles(String templateFiles) {
        this.templateFiles = templateFiles;
    }

    public String getHoldBtrFiles() {
        return holdBtrFiles;
    }

    public void setHoldBtrFiles(String holdBtrFiles) {
        this.holdBtrFiles = holdBtrFiles;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSalaryFile{" +
                "fileId=" + fileId +
                ", companyId='" + companyId + '\'' +
                ", month='" + month + '\'' +
                ", status='" + status + '\'' +
                ", fileNetPayable=" + fileNetPayable +
                '}';
    }
}
