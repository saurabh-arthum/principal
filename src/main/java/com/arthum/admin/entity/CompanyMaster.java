package com.arthum.admin.entity;




import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_company_master")

public class CompanyMaster {

    @Id
    @Column(name = "COMPANY_ID", length = 50, nullable = false)
    private String companyId;

    @Column(name = "NAME", length = 200)
    private String name;

    @Column(name = "GST", length = 200)
    private String gst;

    @Column(name = "PAN", length = 200)
    private String pan;

    @Column(name = "ADDRESS", length = 500)
    private String address;

    @Column(name = "DISTRICT", length = 50)
    private String district;

    @Column(name = "STATE", length = 50)
    private String state;

    @Column(name = "PIN", length = 10)
    private String pin;

    @Column(name = "LOGO", length = 250)
    private String logo;

    @Column(name = "LETTERHEAD_HEADER", length = 250)
    private String letterheadHeader;

    @Column(name = "LETTERHEAD_FOOTER", length = 250)
    private String letterheadFooter;

    @Column(name = "WEBSITE", length = 250)
    private String website;

    @Column(name = "EMAIL", length = 250)
    private String email;

    @Column(name = "PHONE", length = 250)
    private String phone;

    /**
     * JSON column (MySQL 5.7+ / PostgreSQL)
     * Stored as String for portability
     */
    @Column(name = "CONTACT_DETAILS", columnDefinition = "json")
    private String contactDetails;

    @Column(name = "ENTITY_ID")
    private Integer entityId;

    @Column(name = "CREDITS")
    private Integer credits;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Column(name = "COMPANYTYPE", length = 50)
    private String companyType;

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

    public String getLetterheadHeader() {
        return letterheadHeader;
    }

    public void setLetterheadHeader(String letterheadHeader) {
        this.letterheadHeader = letterheadHeader;
    }

    public String getLetterheadFooter() {
        return letterheadFooter;
    }

    public void setLetterheadFooter(String letterheadFooter) {
        this.letterheadFooter = letterheadFooter;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getContactDetails() {
        return contactDetails;
    }

    public void setContactDetails(String contactDetails) {
        this.contactDetails = contactDetails;
    }

    public Integer getEntityId() {
        return entityId;
    }

    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    public Integer getCredits() {
        return credits;
    }

    public void setCredits(Integer credits) {
        this.credits = credits;
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

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    @Override
    public String toString() {
        return "CompanyMaster{" +
                "companyId='" + companyId + '\'' +
                ", name='" + name + '\'' +
                ", gst='" + gst + '\'' +
                ", pan='" + pan + '\'' +
                ", address='" + address + '\'' +
                ", district='" + district + '\'' +
                ", state='" + state + '\'' +
                ", pin='" + pin + '\'' +
                ", logo='" + logo + '\'' +
                ", letterheadHeader='" + letterheadHeader + '\'' +
                ", letterheadFooter='" + letterheadFooter + '\'' +
                ", website='" + website + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", contactDetails='" + contactDetails + '\'' +
                ", entityId=" + entityId +
                ", credits=" + credits +
                ", recordDate=" + recordDate +
                ", status='" + status + '\'' +
                ", updateDate=" + updateDate +
                ", companyType='" + companyType + '\'' +
                '}';
    }
}
