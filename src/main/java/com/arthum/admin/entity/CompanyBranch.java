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
@Table(name = "corporate_hrms_company_branch")
public class CompanyBranch {

    @Id
    @Column(name = "BRANCH_ID", length = 50, nullable = false)
    private String branchId;

    /**
     * FK to corporate_hrms_company_master.COMPANY_ID
     * Keeping String for flexibility
     */
    @Column(name = "COMPANY_ID", length = 50, nullable = false)
    private String companyId;

    @Column(name = "NAME", length = 200)
    private String name;

    @Column(name = "GST", length = 200)
    private String gst;

    @Column(name = "PAN", length = 200)
    private String pan;

    @Column(name = "CITY", length = 500)
    private String city;

    @Column(name = "ADDRESS", length = 500)
    private String address;

    @Column(name = "DISTRICT", length = 50)
    private String district;

    @Column(name = "STATE", length = 50)
    private String state;

    @Column(name = "PIN", length = 10)
    private String pin;

    @Column(name = "PHONE", length = 250)
    private String phone;

    @Column(name = "EMAIL", length = 250)
    private String email;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "CREATED_BY")
    private Integer createdBy;

    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Column(name = "UPDATED_BY")
    private Integer updatedBy;

    @Override
    public String toString() {
        return "CompanyBranch{" +
                "branchId='" + branchId + '\'' +
                ", companyId='" + companyId + '\'' +
                ", name='" + name + '\'' +
                ", gst='" + gst + '\'' +
                ", pan='" + pan + '\'' +
                ", city='" + city + '\'' +
                ", address='" + address + '\'' +
                ", district='" + district + '\'' +
                ", state='" + state + '\'' +
                ", pin='" + pin + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", recordDate=" + recordDate +
                ", createdBy=" + createdBy +
                ", status='" + status + '\'' +
                ", updateDate=" + updateDate +
                ", updatedBy=" + updatedBy +
                '}';
    }

    public String getBranchId() {
        return branchId;
    }

    public void setBranchId(String branchId) {
        this.branchId = branchId;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGst() {
        return gst;
    }

    public void setGst(String gst) {
        this.gst = gst;
    }

    public String getPan() {
        return pan;
    }

    public void setPan(String pan) {
        this.pan = pan;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }

    public Integer getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
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

    public Integer getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(Integer updatedBy) {
        this.updatedBy = updatedBy;
    }
}
