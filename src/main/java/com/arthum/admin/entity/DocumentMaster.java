package com.arthum.admin.entity;



import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_document_master")

public class DocumentMaster {

    @Id
    @Column(name = "DOCUMENT_TYPE_ID", length = 50)
    private String documentTypeId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Column(name = "DOCUMENT_NAME", length = 50)
    private String documentName;

    @Column(name = "DOCUMENT_REMARKS", length = 100)
    private String documentRemarks;

    /**
     * ACTIVE / INACTIVE
     */
    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "CREATE_DATE")
    private LocalDateTime createDate;

    @Column(name = "CREATED_BY_TYPE", length = 50)
    private String createdByType;

    @Column(name = "CREATED_BY", length = 50)
    private String createdBy;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Column(name = "UPDATED_BY_TYPE", length = 50)
    private String updatedByType;

    @Column(name = "UPDATED_BY", length = 50)
    private String updatedBy;

    @Column(name = "PRINCIPAL_ID", length = 100)
    private String principalId;

    /**
     * WEB / MOBILE / API
     */
    @Column(name = "UPLOAD_FROM", length = 20)
    private String uploadFrom;

    /**
     * COMPLIANCE / HR / PAYROLL
     */
    @Column(name = "TYPE", length = 20)
    private String type;

    /**
     * EMPLOYEE / COMPANY / FACTORY
     */
    @Column(name = "DOWNLOAD_TO", length = 50)
    private String downloadTo;

    @PrePersist
    protected void onCreate() {
        createDate = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        updateDate = LocalDateTime.now();
    }

    @Override
    public String toString() {
        return "CorporateHrmsDocumentMaster{" +
                "documentTypeId='" + documentTypeId + '\'' +
                ", factoryId='" + factoryId + '\'' +
                ", companyId='" + companyId + '\'' +
                ", documentName='" + documentName + '\'' +
                ", documentRemarks='" + documentRemarks + '\'' +
                ", status='" + status + '\'' +
                ", createDate=" + createDate +
                ", createdByType='" + createdByType + '\'' +
                ", createdBy='" + createdBy + '\'' +
                ", updateDate=" + updateDate +
                ", updatedByType='" + updatedByType + '\'' +
                ", updatedBy='" + updatedBy + '\'' +
                ", principalId='" + principalId + '\'' +
                ", uploadFrom='" + uploadFrom + '\'' +
                ", type='" + type + '\'' +
                ", downloadTo='" + downloadTo + '\'' +
                '}';
    }

    public String getDocumentTypeId() {
        return documentTypeId;
    }

    public void setDocumentTypeId(String documentTypeId) {
        this.documentTypeId = documentTypeId;
    }

    public String getFactoryId() {
        return factoryId;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getDocumentName() {
        return documentName;
    }

    public void setDocumentName(String documentName) {
        this.documentName = documentName;
    }

    public String getDocumentRemarks() {
        return documentRemarks;
    }

    public void setDocumentRemarks(String documentRemarks) {
        this.documentRemarks = documentRemarks;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getCreateDate() {
        return createDate;
    }

    public void setCreateDate(LocalDateTime createDate) {
        this.createDate = createDate;
    }

    public String getCreatedByType() {
        return createdByType;
    }

    public void setCreatedByType(String createdByType) {
        this.createdByType = createdByType;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public LocalDateTime getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdatedByType() {
        return updatedByType;
    }

    public void setUpdatedByType(String updatedByType) {
        this.updatedByType = updatedByType;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }

    public String getPrincipalId() {
        return principalId;
    }

    public void setPrincipalId(String principalId) {
        this.principalId = principalId;
    }

    public String getUploadFrom() {
        return uploadFrom;
    }

    public void setUploadFrom(String uploadFrom) {
        this.uploadFrom = uploadFrom;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDownloadTo() {
        return downloadTo;
    }

    public void setDownloadTo(String downloadTo) {
        this.downloadTo = downloadTo;
    }
}
