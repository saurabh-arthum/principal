package com.arthum.admin.entity;

import jakarta.persistence.*;


import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_category_master")

public class CategoryMaster {

    @Id
    @Column(name = "ID", length = 50, nullable = false)
    private String id;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Column(name = "PRINCIPAL_ID", length = 50)
    private String principalId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    /**
     * Flexible JSON field (category-specific attributes)
     * Stored as String for DB portability
     */
    @Column(name = "DETAILS_JSON", length = 5000)
    private String detailsJson;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getPrincipalId() {
        return principalId;
    }

    public void setPrincipalId(String principalId) {
        this.principalId = principalId;
    }

    public String getFactoryId() {
        return factoryId;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }

    public String getDetailsJson() {
        return detailsJson;
    }

    public void setDetailsJson(String detailsJson) {
        this.detailsJson = detailsJson;
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

    public LocalDateTime getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "CategoryMaster{" +
                "id='" + id + '\'' +
                ", companyId='" + companyId + '\'' +
                ", principalId='" + principalId + '\'' +
                ", factoryId='" + factoryId + '\'' +
                ", detailsJson='" + detailsJson + '\'' +
                ", recordDate=" + recordDate +
                ", status='" + status + '\'' +
                ", updateDate=" + updateDate +
                '}';
    }
}
