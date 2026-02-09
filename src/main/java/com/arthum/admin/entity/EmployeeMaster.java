package com.arthum.admin.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_employee_master")

public class EmployeeMaster {

    @Id
    @Column(name = "EMPLOYEE_ID", length = 50, nullable = false)
    private String employeeId;

    @Column(name = "FACTORY_EMPLOYEE_ID", length = 50)
    private String factoryEmployeeId;

    @Column(name = "CORPORATE_EMPLOYEE_ID", length = 50)
    private String corporateEmployeeId;

    @Column(name = "MOBILE", length = 15)
    private String mobile;

    @Column(name = "NAME", length = 100)
    private String name;

    /** Stored as varchar in DB */
    @Column(name = "dob", length = 20)
    private String dob;

    @Column(name = "FATHER_NAME", length = 50)
    private String fatherName;

    @Column(name = "MOTHER_NAME", length = 50)
    private String motherName;

    @Column(name = "ADDRESS", length = 200)
    private String address;

    @Column(name = "STATE", length = 50)
    private String state;

    @Column(name = "DISTRICT", length = 50)
    private String district;

    @Column(name = "PINCODE", length = 10)
    private String pincode;

    @Column(name = "AADHAR", length = 15)
    private String aadhar;

    @Column(name = "GENDER", length = 10)
    private String gender;

    @Column(name = "AADHAR_VALIDATED", length = 10)
    private String aadharValidated;

    @Column(name = "AADHAR_CREDIT", length = 20)
    private String aadharCredit;

    @Column(name = "PAN", length = 15)
    private String pan;

    @Column(name = "PAN_VALIDATED", length = 10)
    private String panValidated;

    @Column(name = "BANK_ACCOUNT_NAME", length = 100)
    private String bankAccountName;

    @Column(name = "BANK_ACCOUNT_NO", length = 30)
    private String bankAccountNo;

    @Column(name = "BANK_NAME", length = 50)
    private String bankName;

    @Column(name = "BANK_IFSC", length = 15)
    private String bankIfsc;

    @Column(name = "BANK_VALIDATED", length = 10)
    private String bankValidated;

    @Column(name = "SUPERVISOR_ID", length = 50)
    private String supervisorId;

    @Column(name = "CURRENT_SUPERVISOR_ID", length = 50)
    private String currentSupervisorId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Column(name = "STRUCTURE_ID")
    private Integer structureId;

    @Column(name = "SOURCE", length = 20)
    private String source;

    @Column(name = "STATUS", length = 50)
    private String status;

    /** Stored as varchar in DB */
    @Column(name = "JOINING_DATE", length = 20)
    private String joiningDate;

    @Column(name = "UAN", length = 50)
    private String uan;

    @Column(name = "ESIC_NUMBER", length = 50)
    private String esicNumber;

    @Column(name = "LWF_NUMBER", length = 30)
    private String lwfNumber;

    @Column(name = "EXIT_DATE")
    private LocalDateTime exitDate;

    @Column(name = "ADDED_BY_TYPE", length = 20)
    private String addedByType;

    @Column(name = "ADDED_BY_ID", length = 50)
    private String addedById;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "UPDATED_BY_TYPE", length = 20)
    private String updatedByType;

    @Column(name = "UPDATED_BY_ID", length = 50)
    private String updatedById;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Column(name = "EXIT_BY_TYPE", length = 20)
    private String exitByType;

    @Column(name = "EXIT_BY_ID", length = 50)
    private String exitById;

    @Column(name = "EXIT_UPDATE_DATE")
    private LocalDateTime exitUpdateDate;

    /** JSON field */
    @Column(name = "ADDITIONAL_DETAILS", columnDefinition = "json")
    private String additionalDetails;

    @Column(name = "BAV_REQUIRED", length = 10)
    private String bavRequired;

    @Column(name = "BAV_CREDIT", length = 20)
    private String bavCredit;

    @Column(name = "BAV_DONE", length = 10)
    private String bavDone;

    @Column(name = "BAV_PERCENTAGE", precision = 6, scale = 5)
    private BigDecimal bavPercentage;

    @Column(name = "BAV_RESULT", length = 10)
    private String bavResult;

    @Column(name = "SALARY", length = 500)
    private String salary;

    @Column(name = "EMPLOYEE_TYPE", length = 50)
    private String employeeType;

    @Column(name = "EMPLOYEE_SUBTYPE", length = 50)
    private String employeeSubtype;

    @Column(name = "EMPLOYEE_CATEGORY", length = 50)
    private String employeeCategory;

    @Column(name = "REGISTRATION_ID", length = 50)
    private String registrationId;

    @Column(name = "EMERGENCY_CONTACT_NUMBER", length = 15)
    private String emergencyContactNumber;

    @Column(name = "MARITAL_STATUS", length = 15)
    private String maritalStatus;

    @Column(name = "PHOTO_FILE", length = 100)
    private String photoFile;

    @Column(name = "PHOTO_BUCKET", length = 25)
    private String photoBucket;

    @Column(name = "FNF_DATE")
    private LocalDate fnfDate;

    @Column(name = "FNF_BY_TYPE", length = 20)
    private String fnfByType;

    @Column(name = "FNF_BY_ID", length = 50)
    private String fnfById;

    @Column(name = "PF_FLAG", length = 10)
    private String pfFlag;

    @Column(name = "ESIC_FLAG", length = 10)
    private String esicFlag;

    @Column(name = "LWF_FLAG", length = 5)
    private String lwfFlag;

    @Column(name = "LOCTION", length = 40)
    private String location;

    @Override
    public String toString() {
        return "EmployeeMaster{" +
                "employeeId='" + employeeId + '\'' +
                ", factoryEmployeeId='" + factoryEmployeeId + '\'' +
                ", corporateEmployeeId='" + corporateEmployeeId + '\'' +
                ", mobile='" + mobile + '\'' +
                ", name='" + name + '\'' +
                ", dob='" + dob + '\'' +
                ", fatherName='" + fatherName + '\'' +
                ", motherName='" + motherName + '\'' +
                ", address='" + address + '\'' +
                ", state='" + state + '\'' +
                ", district='" + district + '\'' +
                ", pincode='" + pincode + '\'' +
                ", aadhar='" + aadhar + '\'' +
                ", gender='" + gender + '\'' +
                ", aadharValidated='" + aadharValidated + '\'' +
                ", aadharCredit='" + aadharCredit + '\'' +
                ", pan='" + pan + '\'' +
                ", panValidated='" + panValidated + '\'' +
                ", bankAccountName='" + bankAccountName + '\'' +
                ", bankAccountNo='" + bankAccountNo + '\'' +
                ", bankName='" + bankName + '\'' +
                ", bankIfsc='" + bankIfsc + '\'' +
                ", bankValidated='" + bankValidated + '\'' +
                ", supervisorId='" + supervisorId + '\'' +
                ", currentSupervisorId='" + currentSupervisorId + '\'' +
                ", factoryId='" + factoryId + '\'' +
                ", companyId='" + companyId + '\'' +
                ", structureId=" + structureId +
                ", source='" + source + '\'' +
                ", status='" + status + '\'' +
                ", joiningDate='" + joiningDate + '\'' +
                ", uan='" + uan + '\'' +
                ", esicNumber='" + esicNumber + '\'' +
                ", lwfNumber='" + lwfNumber + '\'' +
                ", exitDate=" + exitDate +
                ", addedByType='" + addedByType + '\'' +
                ", addedById='" + addedById + '\'' +
                ", recordDate=" + recordDate +
                ", updatedByType='" + updatedByType + '\'' +
                ", updatedById='" + updatedById + '\'' +
                ", updateDate=" + updateDate +
                ", exitByType='" + exitByType + '\'' +
                ", exitById='" + exitById + '\'' +
                ", exitUpdateDate=" + exitUpdateDate +
                ", additionalDetails='" + additionalDetails + '\'' +
                ", bavRequired='" + bavRequired + '\'' +
                ", bavCredit='" + bavCredit + '\'' +
                ", bavDone='" + bavDone + '\'' +
                ", bavPercentage=" + bavPercentage +
                ", bavResult='" + bavResult + '\'' +
                ", salary='" + salary + '\'' +
                ", employeeType='" + employeeType + '\'' +
                ", employeeSubtype='" + employeeSubtype + '\'' +
                ", employeeCategory='" + employeeCategory + '\'' +
                ", registrationId='" + registrationId + '\'' +
                ", emergencyContactNumber='" + emergencyContactNumber + '\'' +
                ", maritalStatus='" + maritalStatus + '\'' +
                ", photoFile='" + photoFile + '\'' +
                ", photoBucket='" + photoBucket + '\'' +
                ", fnfDate=" + fnfDate +
                ", fnfByType='" + fnfByType + '\'' +
                ", fnfById='" + fnfById + '\'' +
                ", pfFlag='" + pfFlag + '\'' +
                ", esicFlag='" + esicFlag + '\'' +
                ", lwfFlag='" + lwfFlag + '\'' +
                ", location='" + location + '\'' +
                '}';
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getFactoryEmployeeId() {
        return factoryEmployeeId;
    }

    public void setFactoryEmployeeId(String factoryEmployeeId) {
        this.factoryEmployeeId = factoryEmployeeId;
    }

    public String getCorporateEmployeeId() {
        return corporateEmployeeId;
    }

    public void setCorporateEmployeeId(String corporateEmployeeId) {
        this.corporateEmployeeId = corporateEmployeeId;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getAadhar() {
        return aadhar;
    }

    public void setAadhar(String aadhar) {
        this.aadhar = aadhar;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAadharValidated() {
        return aadharValidated;
    }

    public void setAadharValidated(String aadharValidated) {
        this.aadharValidated = aadharValidated;
    }

    public String getAadharCredit() {
        return aadharCredit;
    }

    public void setAadharCredit(String aadharCredit) {
        this.aadharCredit = aadharCredit;
    }

    public String getPan() {
        return pan;
    }

    public void setPan(String pan) {
        this.pan = pan;
    }

    public String getPanValidated() {
        return panValidated;
    }

    public void setPanValidated(String panValidated) {
        this.panValidated = panValidated;
    }

    public String getBankAccountName() {
        return bankAccountName;
    }

    public void setBankAccountName(String bankAccountName) {
        this.bankAccountName = bankAccountName;
    }

    public String getBankAccountNo() {
        return bankAccountNo;
    }

    public void setBankAccountNo(String bankAccountNo) {
        this.bankAccountNo = bankAccountNo;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getBankIfsc() {
        return bankIfsc;
    }

    public void setBankIfsc(String bankIfsc) {
        this.bankIfsc = bankIfsc;
    }

    public String getBankValidated() {
        return bankValidated;
    }

    public void setBankValidated(String bankValidated) {
        this.bankValidated = bankValidated;
    }

    public String getSupervisorId() {
        return supervisorId;
    }

    public void setSupervisorId(String supervisorId) {
        this.supervisorId = supervisorId;
    }

    public String getCurrentSupervisorId() {
        return currentSupervisorId;
    }

    public void setCurrentSupervisorId(String currentSupervisorId) {
        this.currentSupervisorId = currentSupervisorId;
    }

    public String getFactoryId() {
        return factoryId;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public Integer getStructureId() {
        return structureId;
    }

    public void setStructureId(Integer structureId) {
        this.structureId = structureId;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getJoiningDate() {
        return joiningDate;
    }

    public void setJoiningDate(String joiningDate) {
        this.joiningDate = joiningDate;
    }

    public String getUan() {
        return uan;
    }

    public void setUan(String uan) {
        this.uan = uan;
    }

    public String getEsicNumber() {
        return esicNumber;
    }

    public void setEsicNumber(String esicNumber) {
        this.esicNumber = esicNumber;
    }

    public String getLwfNumber() {
        return lwfNumber;
    }

    public void setLwfNumber(String lwfNumber) {
        this.lwfNumber = lwfNumber;
    }

    public LocalDateTime getExitDate() {
        return exitDate;
    }

    public void setExitDate(LocalDateTime exitDate) {
        this.exitDate = exitDate;
    }

    public String getAddedByType() {
        return addedByType;
    }

    public void setAddedByType(String addedByType) {
        this.addedByType = addedByType;
    }

    public String getAddedById() {
        return addedById;
    }

    public void setAddedById(String addedById) {
        this.addedById = addedById;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }

    public String getUpdatedByType() {
        return updatedByType;
    }

    public void setUpdatedByType(String updatedByType) {
        this.updatedByType = updatedByType;
    }

    public String getUpdatedById() {
        return updatedById;
    }

    public void setUpdatedById(String updatedById) {
        this.updatedById = updatedById;
    }

    public LocalDateTime getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    public String getExitByType() {
        return exitByType;
    }

    public void setExitByType(String exitByType) {
        this.exitByType = exitByType;
    }

    public String getExitById() {
        return exitById;
    }

    public void setExitById(String exitById) {
        this.exitById = exitById;
    }

    public LocalDateTime getExitUpdateDate() {
        return exitUpdateDate;
    }

    public void setExitUpdateDate(LocalDateTime exitUpdateDate) {
        this.exitUpdateDate = exitUpdateDate;
    }

    public String getAdditionalDetails() {
        return additionalDetails;
    }

    public void setAdditionalDetails(String additionalDetails) {
        this.additionalDetails = additionalDetails;
    }

    public String getBavRequired() {
        return bavRequired;
    }

    public void setBavRequired(String bavRequired) {
        this.bavRequired = bavRequired;
    }

    public String getBavCredit() {
        return bavCredit;
    }

    public void setBavCredit(String bavCredit) {
        this.bavCredit = bavCredit;
    }

    public String getBavDone() {
        return bavDone;
    }

    public void setBavDone(String bavDone) {
        this.bavDone = bavDone;
    }

    public BigDecimal getBavPercentage() {
        return bavPercentage;
    }

    public void setBavPercentage(BigDecimal bavPercentage) {
        this.bavPercentage = bavPercentage;
    }

    public String getBavResult() {
        return bavResult;
    }

    public void setBavResult(String bavResult) {
        this.bavResult = bavResult;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getEmployeeType() {
        return employeeType;
    }

    public void setEmployeeType(String employeeType) {
        this.employeeType = employeeType;
    }

    public String getEmployeeSubtype() {
        return employeeSubtype;
    }

    public void setEmployeeSubtype(String employeeSubtype) {
        this.employeeSubtype = employeeSubtype;
    }

    public String getEmployeeCategory() {
        return employeeCategory;
    }

    public void setEmployeeCategory(String employeeCategory) {
        this.employeeCategory = employeeCategory;
    }

    public String getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(String registrationId) {
        this.registrationId = registrationId;
    }

    public String getEmergencyContactNumber() {
        return emergencyContactNumber;
    }

    public void setEmergencyContactNumber(String emergencyContactNumber) {
        this.emergencyContactNumber = emergencyContactNumber;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getPhotoFile() {
        return photoFile;
    }

    public void setPhotoFile(String photoFile) {
        this.photoFile = photoFile;
    }

    public String getPhotoBucket() {
        return photoBucket;
    }

    public void setPhotoBucket(String photoBucket) {
        this.photoBucket = photoBucket;
    }

    public LocalDate getFnfDate() {
        return fnfDate;
    }

    public void setFnfDate(LocalDate fnfDate) {
        this.fnfDate = fnfDate;
    }

    public String getFnfByType() {
        return fnfByType;
    }

    public void setFnfByType(String fnfByType) {
        this.fnfByType = fnfByType;
    }

    public String getFnfById() {
        return fnfById;
    }

    public void setFnfById(String fnfById) {
        this.fnfById = fnfById;
    }

    public String getPfFlag() {
        return pfFlag;
    }

    public void setPfFlag(String pfFlag) {
        this.pfFlag = pfFlag;
    }

    public String getEsicFlag() {
        return esicFlag;
    }

    public void setEsicFlag(String esicFlag) {
        this.esicFlag = esicFlag;
    }

    public String getLwfFlag() {
        return lwfFlag;
    }

    public void setLwfFlag(String lwfFlag) {
        this.lwfFlag = lwfFlag;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
