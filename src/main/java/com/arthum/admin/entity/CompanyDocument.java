package com.arthum.admin.entity;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_company_document")

public class CompanyDocument {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "DOCUMENT_ID")
    private Integer documentId;

    @Column(name = "DOCUMENT_NAME", length = 50)
    private String documentName;

    @Column(name = "CATEGORY", length = 50)
    private String category;

    @Column(name = "DESCRIPTION", length = 50)
    private String description;

    @Column(name = "START_DATE")
    private LocalDateTime startDate;

    @Column(name = "EXPIRY_DATE")
    private LocalDateTime expiryDate;

    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "STATE", length = 100)
    private String state;

    @Column(name = "BUCKET_FILE_NAME", length = 200)
    private String bucketFileName;

    @Column(name = "FILE_EXT", length = 200)
    private String fileExt;

    @Column(name = "COMPANY_ID", length = 200)
    private String companyId;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Override
    public String toString() {
        return "CompanyDocument{" +
                "documentId=" + documentId +
                ", documentName='" + documentName + '\'' +
                ", category='" + category + '\'' +
                ", description='" + description + '\'' +
                ", startDate=" + startDate +
                ", expiryDate=" + expiryDate +
                ", status='" + status + '\'' +
                ", state='" + state + '\'' +
                ", bucketFileName='" + bucketFileName + '\'' +
                ", fileExt='" + fileExt + '\'' +
                ", companyId='" + companyId + '\'' +
                ", recordDate=" + recordDate +
                ", updateDate=" + updateDate +
                '}';
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public Integer getDocumentId() {
        return documentId;
    }

    public void setDocumentId(Integer documentId) {
        this.documentId = documentId;
    }

    public String getDocumentName() {
        return documentName;
    }

    public void setDocumentName(String documentName) {
        this.documentName = documentName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public LocalDateTime getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(LocalDateTime expiryDate) {
        this.expiryDate = expiryDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getBucketFileName() {
        return bucketFileName;
    }

    public void setBucketFileName(String bucketFileName) {
        this.bucketFileName = bucketFileName;
    }

    public String getFileExt() {
        return fileExt;
    }

    public void setFileExt(String fileExt) {
        this.fileExt = fileExt;
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
}
