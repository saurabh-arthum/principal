package com.arthum.admin.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "DESIGNATION_MASTER")
public class DesignationMaster {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "DESIGNATION_ID")
    private Long designationId;

    @Column(name = "PRINCIPAL_ID", nullable = false, length = 50)
    private String principalId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    // ===== Department relationship =====
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "DEPT_ID", nullable = false)
    private PPDepartmentMaster department;

    @Column(name = "DESIGNATION_NAME", nullable = false, length = 150)
    private String designationName;

    @Column(name = "DESIGNATION_CODE", unique = true, length = 50)
    private String designationCode;

    // ===== Self reference (Reports To) =====
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "REPORTS_TO_ID")
    private DesignationMaster reportsTo;

    @Column(name = "LEVEL_NO")
    private Integer levelNo = 1;

    @Column(name = "DESCRIPTION", length = 255)
    private String description;

    @Column(name = "STATUS", length = 20)
    private String status = "ACTIVE";

    @Column(name = "DISPLAY_ORDER")
    private Integer displayOrder = 0;

    @Column(name = "IS_SYSTEM_DEFINED")
    private Boolean systemDefined = false;

    @Column(name = "CREATED_AT", updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "UPDATED_AT")
    private LocalDateTime updatedAt;

    @Column(name = "CREATED_BY")
    private Long createdBy;

    @Column(name = "UPDATED_BY")
    private Long updatedBy;

    // ===== Auto timestamp handling =====

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }

    // ===== Getters & Setters =====

    public Long getDesignationId() { return designationId; }
    public void setDesignationId(Long designationId) { this.designationId = designationId; }

    public String getPrincipalId() { return principalId; }
    public void setPrincipalId(String principalId) { this.principalId = principalId; }

    public String getFactoryId() { return factoryId; }
    public void setFactoryId(String factoryId) { this.factoryId = factoryId; }

    public PPDepartmentMaster getDepartment() { return department; }
    public void setDepartment(PPDepartmentMaster department) { this.department = department; }

    public String getDesignationName() { return designationName; }
    public void setDesignationName(String designationName) { this.designationName = designationName; }

    public String getDesignationCode() { return designationCode; }
    public void setDesignationCode(String designationCode) { this.designationCode = designationCode; }

    public DesignationMaster getReportsTo() { return reportsTo; }
    public void setReportsTo(DesignationMaster reportsTo) { this.reportsTo = reportsTo; }

    public Integer getLevelNo() { return levelNo; }
    public void setLevelNo(Integer levelNo) { this.levelNo = levelNo; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public Integer getDisplayOrder() { return displayOrder; }
    public void setDisplayOrder(Integer displayOrder) { this.displayOrder = displayOrder; }

    public Boolean getSystemDefined() { return systemDefined; }
    public void setSystemDefined(Boolean systemDefined) { this.systemDefined = systemDefined; }

    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }

    public LocalDateTime getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(LocalDateTime updatedAt) { this.updatedAt = updatedAt; }

    public Long getCreatedBy() { return createdBy; }
    public void setCreatedBy(Long createdBy) { this.createdBy = createdBy; }

    public Long getUpdatedBy() { return updatedBy; }
    public void setUpdatedBy(Long updatedBy) { this.updatedBy = updatedBy; }
}