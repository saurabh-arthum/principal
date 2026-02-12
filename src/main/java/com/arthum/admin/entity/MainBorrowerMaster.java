package com.arthum.admin.entity;




import java.time.LocalDateTime;

@Entity
@Table(name = "main_borrower_master")

public class MainBorrowerMaster {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MAIN_BORROWER_ID")
    private Integer mainBorrowerId;

    @Column(name = "APPLY_ID")
    private Integer applyId;

    @Column(name = "TITLE", length = 10)
    private String title;

    /**
     * Stored as varchar (example: 50%)
     */
    @Column(name = "PERCENTAGE_OWN", length = 5)
    private String percentageOwn;

    @Column(name = "NAME", length = 50)
    private String name;

    /**
     * Stored as varchar in DB
     */
    @Column(name = "AGE", length = 5)
    private String age;

    /**
     * Stored as varchar (example: 1990-05-21)
     */
    @Column(name = "DOB", length = 15)
    private String dob;

    @Column(name = "PERM_ADDRESS", length = 1500)
    private String permAddress;

    @Column(name = "ADDRESS_CITY", length = 50)
    private String addressCity;

    @Column(name = "ADDRESS_STATE", length = 50)
    private String addressState;

    @Column(name = "ADDRESS_PINCODE", length = 20)
    private String addressPincode;

    @Column(name = "BUSINESS_PLACE", length = 50)
    private String businessPlace;

    @Column(name = "TELEPHONE", length = 20)
    private String telephone;

    @Column(name = "MOBILE", length = 20)
    private String mobile;

    @Column(name = "EMAIL", length = 100)
    private String email;

    @Column(name = "PAN", length = 20)
    private String pan;

    @Column(name = "AADHAR", length = 20)
    private String aadhar;

    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "CREATED_TS")
    private LocalDateTime createdTs;

    @Column(name = "UPDATED_TS")
    private LocalDateTime updatedTs;

    @Column(name = "WELCOME_CALL_STATUS", length = 50)
    private String welcomeCallStatus;

    @Column(name = "WELCOME_CALL_STATUS_UPDATED_BY")
    private Integer welcomeCallStatusUpdatedBy;

    @Column(name = "WELCOME_CALL_STATUS_UPDATED_ON")
    private LocalDateTime welcomeCallStatusUpdatedOn;

    @Column(name = "APPLICATION_STATUS", length = 100)
    private String applicationStatus;

    @Column(name = "APPLICATION_UPDATE_DATE")
    private LocalDateTime applicationUpdateDate;

    public Integer getMainBorrowerId() {
        return mainBorrowerId;
    }

    public void setMainBorrowerId(Integer mainBorrowerId) {
        this.mainBorrowerId = mainBorrowerId;
    }

    public Integer getApplyId() {
        return applyId;
    }

    public void setApplyId(Integer applyId) {
        this.applyId = applyId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPercentageOwn() {
        return percentageOwn;
    }

    public void setPercentageOwn(String percentageOwn) {
        this.percentageOwn = percentageOwn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPermAddress() {
        return permAddress;
    }

    public void setPermAddress(String permAddress) {
        this.permAddress = permAddress;
    }

    public String getAddressCity() {
        return addressCity;
    }

    public void setAddressCity(String addressCity) {
        this.addressCity = addressCity;
    }

    public String getAddressState() {
        return addressState;
    }

    public void setAddressState(String addressState) {
        this.addressState = addressState;
    }

    public String getAddressPincode() {
        return addressPincode;
    }

    public void setAddressPincode(String addressPincode) {
        this.addressPincode = addressPincode;
    }

    public String getBusinessPlace() {
        return businessPlace;
    }

    public void setBusinessPlace(String businessPlace) {
        this.businessPlace = businessPlace;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
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

    public String getWelcomeCallStatus() {
        return welcomeCallStatus;
    }

    public void setWelcomeCallStatus(String welcomeCallStatus) {
        this.welcomeCallStatus = welcomeCallStatus;
    }

    public Integer getWelcomeCallStatusUpdatedBy() {
        return welcomeCallStatusUpdatedBy;
    }

    public void setWelcomeCallStatusUpdatedBy(Integer welcomeCallStatusUpdatedBy) {
        this.welcomeCallStatusUpdatedBy = welcomeCallStatusUpdatedBy;
    }

    public LocalDateTime getWelcomeCallStatusUpdatedOn() {
        return welcomeCallStatusUpdatedOn;
    }

    public void setWelcomeCallStatusUpdatedOn(LocalDateTime welcomeCallStatusUpdatedOn) {
        this.welcomeCallStatusUpdatedOn = welcomeCallStatusUpdatedOn;
    }

    public String getApplicationStatus() {
        return applicationStatus;
    }

    public void setApplicationStatus(String applicationStatus) {
        this.applicationStatus = applicationStatus;
    }

    public LocalDateTime getApplicationUpdateDate() {
        return applicationUpdateDate;
    }

    public void setApplicationUpdateDate(LocalDateTime applicationUpdateDate) {
        this.applicationUpdateDate = applicationUpdateDate;
    }

    @Override
    public String toString() {
        return "MainBorrowerMaster{" +
                "mainBorrowerId=" + mainBorrowerId +
                ", applyId=" + applyId +
                ", title='" + title + '\'' +
                ", percentageOwn='" + percentageOwn + '\'' +
                ", name='" + name + '\'' +
                ", age='" + age + '\'' +
                ", dob='" + dob + '\'' +
                ", permAddress='" + permAddress + '\'' +
                ", addressCity='" + addressCity + '\'' +
                ", addressState='" + addressState + '\'' +
                ", addressPincode='" + addressPincode + '\'' +
                ", businessPlace='" + businessPlace + '\'' +
                ", telephone='" + telephone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", email='" + email + '\'' +
                ", pan='" + pan + '\'' +
                ", aadhar='" + aadhar + '\'' +
                ", status='" + status + '\'' +
                ", createdTs=" + createdTs +
                ", updatedTs=" + updatedTs +
                ", welcomeCallStatus='" + welcomeCallStatus + '\'' +
                ", welcomeCallStatusUpdatedBy=" + welcomeCallStatusUpdatedBy +
                ", welcomeCallStatusUpdatedOn=" + welcomeCallStatusUpdatedOn +
                ", applicationStatus='" + applicationStatus + '\'' +
                ", applicationUpdateDate=" + applicationUpdateDate +
                '}';
    }
}
