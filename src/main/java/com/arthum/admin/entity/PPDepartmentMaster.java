package com.arthum.admin.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "PP_DEPARTMENT_MASTER")
public class PPDepartmentMaster {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "DEPT_ID")
    private Long deptId;

    @Column(name = "PRINCIPAL_ID", nullable = false, length = 50)
    private String principalId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    @Column(name = "DEPARTMENT_NAME", nullable = false, length = 150)
    private String departmentName;

    @Column(name = "DEPT_CODE", unique = true, length = 50)
    private String deptCode;

    // Self reference (parent department)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PARENT_DEPT_ID")
    private PPDepartmentMaster parentDepartment;

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

    public Long getDeptId() { return deptId; }
    public void setDeptId(Long deptId) { this.deptId = deptId; }

    public String getPrincipalId() { return principalId; }
    public void setPrincipalId(String principalId) { this.principalId = principalId; }

    public String getFactoryId() { return factoryId; }
    public void setFactoryId(String factoryId) { this.factoryId = factoryId; }

    public String getDepartmentName() { return departmentName; }
    public void setDepartmentName(String departmentName) { this.departmentName = departmentName; }

    public String getDeptCode() { return deptCode; }
    public void setDeptCode(String deptCode) { this.deptCode = deptCode; }

    public PPDepartmentMaster getParentDepartment() { return parentDepartment; }
    public void setParentDepartment(PPDepartmentMaster parentDepartment) {
        this.parentDepartment = parentDepartment;
    }

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