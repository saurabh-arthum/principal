package com.arthum.admin.entity;

import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_employee_master_history")
public class EmployeeMasterHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "HIST_ID")
    private Integer histId;

    @Column(name = "EMPLOYEE_ID")
    private String employeeId;

    @Column(name = "FACTORY_EMPLOYEE_ID")
    private String factoryEmployeeId;

    @Column(name = "CORPORATE_EMPLOYEE_ID")
    private String corporateEmployeeId;

    @Column(name = "MOBILE")
    private String mobile;

    @Column(name = "NAME")
    private String name;

    @Column(name = "DOB")
    private String dob;

    @Column(name = "FATHER_NAME")
    private String fatherName;

    @Column(name = "MOTHER_NAME")
    private String motherName;

    @Column(name = "ADDRESS")
    private String address;

    @Column(name = "STATE")
    private String state;

    @Column(name = "DISTRICT")
    private String district;

    @Column(name = "PINCODE")
    private String pincode;

    @Column(name = "AADHAR")
    private String aadhar;

    @Column(name = "GENDER")
    private String gender;

    @Column(name = "AADHAR_VALIDATED")
    private String aadharValidated;

    @Column(name = "PAN")
    private String pan;

    @Column(name = "PAN_VALIDATED")
    private String panValidated;

    @Column(name = "BANK_ACCOUNT_NAME")
    private String bankAccountName;

    @Column(name = "BANK_ACCOUNT_NO")
    private String bankAccountNo;

    @Column(name = "BANK_NAME")
    private String bankName;

    @Column(name = "BANK_IFSC")
    private String bankIfsc;

    @Column(name = "BANK_VALIDATED")
    private String bankValidated;

    @Column(name = "SUPERVISOR_ID")
    private String supervisorId;

    @Column(name = "FACTORY_ID")
    private String factoryId;

    @Column(name = "COMPANY_ID")
    private String companyId;

    @Column(name = "STATUS")
    private String status;

    @Column(name = "JOINING_DATE")
    private String joiningDate;

    @Column(name = "UAN")
    private String uan;

    @Column(name = "ESIC_NUMBER")
    private String esicNumber;

    @Column(name = "EXIT_DATE")
    private LocalDateTime exitDate;

    @Column(name = "ADDED_BY_TYPE")
    private String addedByType;

    @Column(name = "ADDED_BY_ID")
    private String addedById;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "UPDATED_BY_TYPE")
    private String updatedByType;

    @Column(name = "UPDATED_BY_ID")
    private String updatedById;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @Column(name = "EXIT_BY_TYPE")
    private String exitByType;

    @Column(name = "EXIT_BY_ID")
    private String exitById;

    @Column(name = "EXIT_UPDATE_DATE")
    private LocalDateTime exitUpdateDate;

    @Column(name = "ADDITIONAL_DETAILS", columnDefinition = "json")
    private String additionalDetails;

    @Column(name = "BAV_REQUIRED")
    private String bavRequired;

    @Column(name = "BAV_DONE")
    private String bavDone;

    @Column(name = "BAV_PERCENTAGE", precision = 6, scale = 5)
    private BigDecimal bavPercentage;

    @Column(name = "BAV_RESULT")
    private String bavResult;

    @Column(name = "SALARY")
    private String salary;

    @Column(name = "EMPLOYEE_TYPE")
    private String employeeType;

    @Column(name = "REGISTRATION_ID")
    private String registrationId;

    @Column(name = "EMERGENCY_CONTACT_NUMBER")
    private String emergencyContactNumber;

    @Column(name = "MARITAL_STATUS")
    private String maritalStatus;

    @Column(name = "PHOTO_FILE")
    private String photoFile;

    @Column(name = "PHOTO_BUCKET")
    private String photoBucket;

    @Column(name = "HIST_RECORD_DATE")
    private LocalDateTime histRecordDate;

    @Column(name = "HIST_UPDATED_BY_TYPE")
    private String histUpdatedByType;

    @Column(name = "HIST_UPDATED_BY_ID")
    private String histUpdatedById;

    @Column(name = "PF_FLAG")
    private String pfFlag;

    @Column(name = "ESIC_FLAG")
    private String esicFlag;

    @Column(name = "LWF_FLAG")
    private String lwfFlag;

    @Override
    public String toString() {
        return "EmployeeMasterHistory{" +
                "histId=" + histId +
                ", employeeId='" + employeeId + '\'' +
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
                ", pan='" + pan + '\'' +
                ", panValidated='" + panValidated + '\'' +
                ", bankAccountName='" + bankAccountName + '\'' +
                ", bankAccountNo='" + bankAccountNo + '\'' +
                ", bankName='" + bankName + '\'' +
                ", bankIfsc='" + bankIfsc + '\'' +
                ", bankValidated='" + bankValidated + '\'' +
                ", supervisorId='" + supervisorId + '\'' +
                ", factoryId='" + factoryId + '\'' +
                ", companyId='" + companyId + '\'' +
                ", status='" + status + '\'' +
                ", joiningDate='" + joiningDate + '\'' +
                ", uan='" + uan + '\'' +
                ", esicNumber='" + esicNumber + '\'' +
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
                ", bavDone='" + bavDone + '\'' +
                ", bavPercentage=" + bavPercentage +
                ", bavResult='" + bavResult + '\'' +
                ", salary='" + salary + '\'' +
                ", employeeType='" + employeeType + '\'' +
                ", registrationId='" + registrationId + '\'' +
                ", emergencyContactNumber='" + emergencyContactNumber + '\'' +
                ", maritalStatus='" + maritalStatus + '\'' +
                ", photoFile='" + photoFile + '\'' +
                ", photoBucket='" + photoBucket + '\'' +
                ", histRecordDate=" + histRecordDate +
                ", histUpdatedByType='" + histUpdatedByType + '\'' +
                ", histUpdatedById='" + histUpdatedById + '\'' +
                ", pfFlag='" + pfFlag + '\'' +
                ", esicFlag='" + esicFlag + '\'' +
                ", lwfFlag='" + lwfFlag + '\'' +
                '}';
    }

    public Integer getHistId() {
        return histId;
    }

    public void setHistId(Integer histId) {
        this.histId = histId;
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

    public LocalDateTime getHistRecordDate() {
        return histRecordDate;
    }

    public void setHistRecordDate(LocalDateTime histRecordDate) {
        this.histRecordDate = histRecordDate;
    }

    public String getHistUpdatedByType() {
        return histUpdatedByType;
    }

    public void setHistUpdatedByType(String histUpdatedByType) {
        this.histUpdatedByType = histUpdatedByType;
    }

    public String getHistUpdatedById() {
        return histUpdatedById;
    }

    public void setHistUpdatedById(String histUpdatedById) {
        this.histUpdatedById = histUpdatedById;
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
}
