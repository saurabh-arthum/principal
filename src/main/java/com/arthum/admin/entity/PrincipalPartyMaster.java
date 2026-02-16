package com.arthum.admin.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_principal_party_master")
public class PrincipalPartyMaster {

    @Id
    @Column(name = "PRINCIPAL_MASTER_ID")
    private Long principalMasterId;

    @Column(name = "NAME", length = 200)
    private String name;

    @Column(name = "GST", length = 20)
    private String gst;

    @Column(name = "PAN", length = 20)
    private String pan;

    @Column(name = "ADDRESS", length = 250)
    private String address;

    @Column(name = "DISTRICT", length = 250)
    private String district;

    @Column(name = "STATE", length = 250)
    private String state;

    @Column(name = "PIN", length = 250)
    private String pin;

    @Column(name = "LOGO", length = 250)
    private String logo;

    @Column(name = "WEBSITE", length = 250)
    private String website;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "STATUS", length = 50)
    private String status;

    // ===== Auto timestamp handling =====

    @PrePersist
    protected void onCreate() {
        if (recordDate == null) {
            recordDate = LocalDateTime.now();
        }
    }

    // ===== Getters & Setters =====

    public Long getPrincipalMasterId() {
        return principalMasterId;
    }

    public void setPrincipalMasterId(Long principalMasterId) {
        this.principalMasterId = principalMasterId;
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

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
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
}