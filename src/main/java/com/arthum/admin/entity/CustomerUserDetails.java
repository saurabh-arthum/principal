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
@Table(name = "customer_user_details")
public class CustomerUserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "USER_ID")
    private Integer userId;

    @Column(name = "CUST_ID")
    private Integer custId;

    @Column(name = "ENTITY_ID")
    private Integer entityId;

    @Column(name = "NAME", length = 100)
    private String name;

    @Column(name = "MOBILE", length = 20)
    private String mobile;

    @Column(name = "EMAIL", length = 100)
    private String email;

    @Column(name = "ADDRESS", length = 1500)
    private String address;

    @Column(name = "PAN", length = 20)
    private String pan;

    @Column(name = "AADHAR", length = 20)
    private String aadhar;

    /**
     * ACTIVE / INACTIVE / BLOCKED
     */
    @Column(name = "STATUS", length = 20)
    private String status;

    @Column(name = "CREATED_TS")
    private LocalDateTime createdTs;

    @Column(name = "UPDATED_TS")
    private LocalDateTime updatedTs;

    @Column(name = "CREATED_BY", length = 20)
    private String createdBy;

    @Column(name = "UPDATED_BY", length = 20)
    private String updatedBy;

    @PrePersist
    protected void onCreate() {
        createdTs = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        updatedTs = LocalDateTime.now();
    }

    @Override
    public String toString() {
        return "CustomerUserDetails{" +
                "userId=" + userId +
                ", custId=" + custId +
                ", entityId=" + entityId +
                ", name='" + name + '\'' +
                ", mobile='" + mobile + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", pan='" + pan + '\'' +
                ", aadhar='" + aadhar + '\'' +
                ", status='" + status + '\'' +
                ", createdTs=" + createdTs +
                ", updatedTs=" + updatedTs +
                ", createdBy='" + createdBy + '\'' +
                ", updatedBy='" + updatedBy + '\'' +
                '}';
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCustId() {
        return custId;
    }

    public void setCustId(Integer custId) {
        this.custId = custId;
    }

    public Integer getEntityId() {
        return entityId;
    }

    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPan() {
        return pan;
    }

    public void setPan(String pan) {
        this.pan = pan;
    }

    public String getAadhar() {
        return aadhar;
    }

    public void setAadhar(String aadhar) {
        this.aadhar = aadhar;
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

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }
}
