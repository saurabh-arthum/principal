package com.arthum.admin.entity;



import java.time.LocalDateTime;

@Entity
@Table(name = "entity_master")

public class EntityMaster {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ENTITY_ID")
    private Integer entityId;

    @Column(name = "MAIN_BORROWER_ID")
    private Integer mainBorrowerId;

    @Column(name = "ENTITY_TYPE", length = 20)
    private String entityType;

    @Column(name = "ENTITY_NAME", length = 100)
    private String entityName;

    @Column(name = "ENTITY_ADDRESS", length = 1500)
    private String entityAddress;

    @Column(name = "ENTITY_CITY", length = 50)
    private String entityCity;

    @Column(name = "ENTITY_STATE", length = 50)
    private String entityState;

    @Column(name = "ENTITY_PINCODE", length = 20)
    private String entityPincode;

    @Column(name = "BUSINESS_PLACE", length = 50)
    private String businessPlace;

    @Column(name = "BUSINESS_TYPE", length = 50)
    private String businessType;

    /**
     * Stored as varchar in DB
     * Example: 2024-01-31
     */
    @Column(name = "REGISTRATION_DATE", length = 20)
    private String registrationDate;

    @Column(name = "TELEPHONE", length = 20)
    private String telephone;

    @Column(name = "MOBILE", length = 20)
    private String mobile;

    @Column(name = "EMAIL", length = 100)
    private String email;

    @Column(name = "GST", length = 20)
    private String gst;

    @Column(name = "PAN", length = 15)
    private String pan;

    @Column(name = "AADHAR", length = 20)
    private String aadhar;

    @Column(name = "CREATED_TS")
    private LocalDateTime createdTs;

    @Column(name = "UPDATED_TS")
    private LocalDateTime updatedTs;

    @Column(name = "APPLY_ID")
    private Integer applyId;

    @Override
    public String toString() {
        return "EntityMaster{" +
                "entityId=" + entityId +
                ", mainBorrowerId=" + mainBorrowerId +
                ", entityType='" + entityType + '\'' +
                ", entityName='" + entityName + '\'' +
                ", entityAddress='" + entityAddress + '\'' +
                ", entityCity='" + entityCity + '\'' +
                ", entityState='" + entityState + '\'' +
                ", entityPincode='" + entityPincode + '\'' +
                ", businessPlace='" + businessPlace + '\'' +
                ", businessType='" + businessType + '\'' +
                ", registrationDate='" + registrationDate + '\'' +
                ", telephone='" + telephone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", email='" + email + '\'' +
                ", gst='" + gst + '\'' +
                ", pan='" + pan + '\'' +
                ", aadhar='" + aadhar + '\'' +
                ", createdTs=" + createdTs +
                ", updatedTs=" + updatedTs +
                ", applyId=" + applyId +
                '}';
    }

    public Integer getEntityId() {
        return entityId;
    }

    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    public Integer getMainBorrowerId() {
        return mainBorrowerId;
    }

    public void setMainBorrowerId(Integer mainBorrowerId) {
        this.mainBorrowerId = mainBorrowerId;
    }

    public String getEntityType() {
        return entityType;
    }

    public void setEntityType(String entityType) {
        this.entityType = entityType;
    }

    public String getEntityName() {
        return entityName;
    }

    public void setEntityName(String entityName) {
        this.entityName = entityName;
    }

    public String getEntityAddress() {
        return entityAddress;
    }

    public void setEntityAddress(String entityAddress) {
        this.entityAddress = entityAddress;
    }

    public String getEntityCity() {
        return entityCity;
    }

    public void setEntityCity(String entityCity) {
        this.entityCity = entityCity;
    }

    public String getEntityState() {
        return entityState;
    }

    public void setEntityState(String entityState) {
        this.entityState = entityState;
    }

    public String getEntityPincode() {
        return entityPincode;
    }

    public void setEntityPincode(String entityPincode) {
        this.entityPincode = entityPincode;
    }

    public String getBusinessPlace() {
        return businessPlace;
    }

    public void setBusinessPlace(String businessPlace) {
        this.businessPlace = businessPlace;
    }

    public String getBusinessType() {
        return businessType;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }

    public String getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(String registrationDate) {
        this.registrationDate = registrationDate;
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

    public String getAadhar() {
        return aadhar;
    }

    public void setAadhar(String aadhar) {
        this.aadhar = aadhar;
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
}
