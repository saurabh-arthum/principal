package com.arthum.admin.entity;

import jakarta.persistence.*;


import java.time.LocalDateTime;

@Entity
@Table(name = "customer_login")

public class CustomerLogin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CUST_ID")
    private Integer custId;

    @Column(name = "USERNAME", length = 100, nullable = false, unique = true)
    private String username;

    /**
     * Store BCrypt / Argon2 hash only
     */
    @Column(name = "PASSWORD", length = 100, nullable = false)
    private String password;

    /**
     * ACTIVE / INACTIVE / LOCKED
     */
    @Column(name = "STATUS", length = 20)
    private String status;

    @Column(name = "CREATED_TS")
    private LocalDateTime createdTs;

    @Column(name = "UPDATED_TS")
    private LocalDateTime updatedTs;

    @Column(name = "APPLY_ID")
    private Integer applyId;

    /**
     * CUSTOMER / ADMIN / EMPLOYEE
     */
    @Column(name = "ACCOUNT_TYPE", length = 20)
    private String accountType;

    @Column(name = "ENTITY_ID")
    private Integer entityId;

    @Column(name = "LOGIN_FAILED_COUNT")
    private Integer loginFailedCount;

    @Column(name = "LOGIN_FAILED_TS")
    private LocalDateTime loginFailedTs;

    @Column(name = "PASSWORD_CHANGE_TS")
    private LocalDateTime passwordChangeTs;

    /**
     * ROLE_USER / ROLE_ADMIN / ROLE_MANAGER
     */
    @Column(name = "ROLE", length = 50)
    private String role;

    @Column(name = "BRANCH_ID", length = 50)
    private String branchId;

    @PrePersist
    protected void onCreate() {
        createdTs = LocalDateTime.now();
        loginFailedCount = 0;
        status = "ACTIVE";
    }

    @PreUpdate
    protected void onUpdate() {
        updatedTs = LocalDateTime.now();
    }

    @Override
    public String toString() {
        return "CustomerLogin{" +
                "custId=" + custId +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", status='" + status + '\'' +
                ", createdTs=" + createdTs +
                ", updatedTs=" + updatedTs +
                ", applyId=" + applyId +
                ", accountType='" + accountType + '\'' +
                ", entityId=" + entityId +
                ", loginFailedCount=" + loginFailedCount +
                ", loginFailedTs=" + loginFailedTs +
                ", passwordChangeTs=" + passwordChangeTs +
                ", role='" + role + '\'' +
                ", branchId='" + branchId + '\'' +
                '}';
    }

    public Integer getLoginFailedCount() {
        return loginFailedCount;
    }

    public void setLoginFailedCount(Integer loginFailedCount) {
        this.loginFailedCount = loginFailedCount;
    }

    public Integer getCustId() {
        return custId;
    }

    public void setCustId(Integer custId) {
        this.custId = custId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getCreatedTs() {
        return createdTs;
    }

    public void setCreatedTs(LocalDateTime createdTs) {
        this.createdTs = createdTs;
    }

    public LocalDateTime getUpdatedTs() {
        return updatedTs;
    }

    public void setUpdatedTs(LocalDateTime updatedTs) {
        this.updatedTs = updatedTs;
    }

    public Integer getApplyId() {
        return applyId;
    }

    public void setApplyId(Integer applyId) {
        this.applyId = applyId;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public Integer getEntityId() {
        return entityId;
    }

    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    public LocalDateTime getLoginFailedTs() {
        return loginFailedTs;
    }

    public void setLoginFailedTs(LocalDateTime loginFailedTs) {
        this.loginFailedTs = loginFailedTs;
    }

    public LocalDateTime getPasswordChangeTs() {
        return passwordChangeTs;
    }

    public void setPasswordChangeTs(LocalDateTime passwordChangeTs) {
        this.passwordChangeTs = passwordChangeTs;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getBranchId() {
        return branchId;
    }

    public void setBranchId(String branchId) {
        this.branchId = branchId;
    }
}