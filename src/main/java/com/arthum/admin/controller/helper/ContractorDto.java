package com.arthum.admin.controller.helper;

import com.arthum.admin.controller.*;

import java.time.LocalDate;
import java.util.List;

public class ContractorDto {
    private String image;
    private String name;
    private String email;
    private String type;
    private String factoryName;
    private int noOfFactoryAssociated;
    private String gst;
    private String status;
    private String contractorId;
    private String  panNumber;
    private String  aadharNumber;
    private String  registeredAddress;
    private Boolean  gstVerificationStatus;
    private Boolean  panVerificationStatus;
    private Boolean  registrationStatus;

        // Personal Details
        private String title;
        private String fullName;
        private String ownershipPercentage;
        private Integer age;
        private LocalDate dateOfBirth;


        private String city;
        private String state;
        private String pincode;
        private String residenceType;

        private String mobile;


        // Business Details
        private String entityType;
        private String entityName;
        private String registeredOfficeAddress;
        private String businessPremisesType;
        private String natureOfBusiness;

        private LocalDate dateOfIncorporation;

        private String businessCity;
        private String businessState;
        private String businessPincode;

        private String businessMobile;
        private String businessEmail;
        private String businessTelephone;

        // Contractor Details

        private String companyPanNumber;

        private LocalDate registrationDate;
        private LocalDate contractStartDate;
        private LocalDate contractEndDate;

        private String contractDuration;
        private String serviceType;
        private String workLocation;
    Integer pendingDocumentsCount;
    List<String> pendingDocuments;
    List<AttendanceDto> attendances;
Integer totalTrainingProgressRequired;
Integer totalTrainingProgressCompleted;
List<TrainingDto> trainings;
   Integer  totalMedicalRecordsRequired;
    Integer  totalMedicalRecordsCompleted;
    List<MedicalRecords> medicalRecords;
    ContractDTO Contract;
    @Override
    public String toString() {
        return "ContractorDto{" +
                "image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", type='" + type + '\'' +
                ", factoryName='" + factoryName + '\'' +
                ", noOfFactoryAssociated=" + noOfFactoryAssociated +
                ", gst='" + gst + '\'' +
                ", status='" + status + '\'' +
                ", contractorId='" + contractorId + '\'' +
                ", panNumber='" + panNumber + '\'' +
                ", aadharNumber='" + aadharNumber + '\'' +
                ", registeredAddress='" + registeredAddress + '\'' +
                ", gstVerificationStatus=" + gstVerificationStatus +
                ", panVerificationStatus=" + panVerificationStatus +
                ", registrationStatus=" + registrationStatus +
                ", title='" + title + '\'' +
                ", fullName='" + fullName + '\'' +
                ", ownershipPercentage='" + ownershipPercentage + '\'' +
                ", age=" + age +
                ", dateOfBirth=" + dateOfBirth +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", pincode='" + pincode + '\'' +
                ", residenceType='" + residenceType + '\'' +
                ", mobile='" + mobile + '\'' +
                ", entityType='" + entityType + '\'' +
                ", entityName='" + entityName + '\'' +
                ", registeredOfficeAddress='" + registeredOfficeAddress + '\'' +
                ", businessPremisesType='" + businessPremisesType + '\'' +
                ", natureOfBusiness='" + natureOfBusiness + '\'' +
                ", dateOfIncorporation=" + dateOfIncorporation +
                ", businessCity='" + businessCity + '\'' +
                ", businessState='" + businessState + '\'' +
                ", businessPincode='" + businessPincode + '\'' +
                ", businessMobile='" + businessMobile + '\'' +
                ", businessEmail='" + businessEmail + '\'' +
                ", businessTelephone='" + businessTelephone + '\'' +
             
                ", companyPanNumber='" + companyPanNumber + '\'' +
                ", registrationDate=" + registrationDate +
                ", contractStartDate=" + contractStartDate +
                ", contractEndDate=" + contractEndDate +
                ", contractDuration='" + contractDuration + '\'' +
                ", serviceType='" + serviceType + '\'' +
                ", workLocation='" + workLocation + '\'' +
                ", pendingDocumentsCount=" + pendingDocumentsCount +
                ", pendingDocuments=" + pendingDocuments +
                ", attendances=" + attendances +
                '}';
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFactoryName() {
        return factoryName;
    }

    public void setFactoryName(String factoryName) {
        this.factoryName = factoryName;
    }

    public int getNoOfFactoryAssociated() {
        return noOfFactoryAssociated;
    }

    public void setNoOfFactoryAssociated(int noOfFactoryAssociated) {
        this.noOfFactoryAssociated = noOfFactoryAssociated;
    }

    public String getGst() {
        return gst;
    }

    public void setGst(String gst) {
        this.gst = gst;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getContractorId() {
        return contractorId;
    }

    public void setContractorId(String contractorId) {
        this.contractorId = contractorId;
    }

    public String getPanNumber() {
        return panNumber;
    }

    public void setPanNumber(String panNumber) {
        this.panNumber = panNumber;
    }

    public String getAadharNumber() {
        return aadharNumber;
    }

    public void setAadharNumber(String aadharNumber) {
        this.aadharNumber = aadharNumber;
    }

    public String getRegisteredAddress() {
        return registeredAddress;
    }

    public void setRegisteredAddress(String registeredAddress) {
        this.registeredAddress = registeredAddress;
    }

    public Boolean getGstVerificationStatus() {
        return gstVerificationStatus;
    }

    public void setGstVerificationStatus(Boolean gstVerificationStatus) {
        this.gstVerificationStatus = gstVerificationStatus;
    }

    public Boolean getPanVerificationStatus() {
        return panVerificationStatus;
    }

    public void setPanVerificationStatus(Boolean panVerificationStatus) {
        this.panVerificationStatus = panVerificationStatus;
    }

    public Integer getPendingDocumentsCount() {
        return pendingDocumentsCount;
    }

    public void setPendingDocumentsCount(Integer pendingDocumentsCount) {
        this.pendingDocumentsCount = pendingDocumentsCount;
    }

    public List<String> getPendingDocuments() {
        return pendingDocuments;
    }

    public void setPendingDocuments(List<String> pendingDocuments) {
        this.pendingDocuments = pendingDocuments;
    }

    public Boolean getRegistrationStatus() {
        return registrationStatus;
    }

    public void setRegistrationStatus(Boolean registrationStatus) {
        this.registrationStatus = registrationStatus;
    }

    public List<AttendanceDto> getAttendances() {
        return attendances;
    }

    public void setAttendances(List<AttendanceDto> attendances) {
        this.attendances = attendances;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getOwnershipPercentage() {
        return ownershipPercentage;
    }

    public void setOwnershipPercentage(String ownershipPercentage) {
        this.ownershipPercentage = ownershipPercentage;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getResidenceType() {
        return residenceType;
    }

    public void setResidenceType(String residenceType) {
        this.residenceType = residenceType;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
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

    public String getRegisteredOfficeAddress() {
        return registeredOfficeAddress;
    }

    public void setRegisteredOfficeAddress(String registeredOfficeAddress) {
        this.registeredOfficeAddress = registeredOfficeAddress;
    }

    public String getBusinessPremisesType() {
        return businessPremisesType;
    }

    public void setBusinessPremisesType(String businessPremisesType) {
        this.businessPremisesType = businessPremisesType;
    }

    public String getNatureOfBusiness() {
        return natureOfBusiness;
    }

    public void setNatureOfBusiness(String natureOfBusiness) {
        this.natureOfBusiness = natureOfBusiness;
    }

    public LocalDate getDateOfIncorporation() {
        return dateOfIncorporation;
    }

    public void setDateOfIncorporation(LocalDate dateOfIncorporation) {
        this.dateOfIncorporation = dateOfIncorporation;
    }

    public String getBusinessCity() {
        return businessCity;
    }

    public void setBusinessCity(String businessCity) {
        this.businessCity = businessCity;
    }

    public String getBusinessState() {
        return businessState;
    }

    public void setBusinessState(String businessState) {
        this.businessState = businessState;
    }

    public String getBusinessPincode() {
        return businessPincode;
    }

    public void setBusinessPincode(String businessPincode) {
        this.businessPincode = businessPincode;
    }

    public String getBusinessMobile() {
        return businessMobile;
    }

    public void setBusinessMobile(String businessMobile) {
        this.businessMobile = businessMobile;
    }

    public String getBusinessEmail() {
        return businessEmail;
    }

    public void setBusinessEmail(String businessEmail) {
        this.businessEmail = businessEmail;
    }

    public String getBusinessTelephone() {
        return businessTelephone;
    }

    public void setBusinessTelephone(String businessTelephone) {
        this.businessTelephone = businessTelephone;
    }


    public String getCompanyPanNumber() {
        return companyPanNumber;
    }

    public void setCompanyPanNumber(String companyPanNumber) {
        this.companyPanNumber = companyPanNumber;
    }

    public LocalDate getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(LocalDate registrationDate) {
        this.registrationDate = registrationDate;
    }

    public LocalDate getContractStartDate() {
        return contractStartDate;
    }

    public void setContractStartDate(LocalDate contractStartDate) {
        this.contractStartDate = contractStartDate;
    }

    public LocalDate getContractEndDate() {
        return contractEndDate;
    }

    public void setContractEndDate(LocalDate contractEndDate) {
        this.contractEndDate = contractEndDate;
    }

    public String getContractDuration() {
        return contractDuration;
    }

    public void setContractDuration(String contractDuration) {
        this.contractDuration = contractDuration;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public String getWorkLocation() {
        return workLocation;
    }

    public void setWorkLocation(String workLocation) {
        this.workLocation = workLocation;
    }

    public Integer getTotalTrainingProgressRequired() {
        return totalTrainingProgressRequired;
    }

    public void setTotalTrainingProgressRequired(Integer totalTrainingProgressRequired) {
        this.totalTrainingProgressRequired = totalTrainingProgressRequired;
    }

    public Integer getTotalTrainingProgressCompleted() {
        return totalTrainingProgressCompleted;
    }

    public void setTotalTrainingProgressCompleted(Integer totalTrainingProgressCompleted) {
        this.totalTrainingProgressCompleted = totalTrainingProgressCompleted;
    }

    public List<TrainingDto> getTrainings() {
        return trainings;
    }

    public void setTrainings(List<TrainingDto> trainings) {
        this.trainings = trainings;
    }

    public Integer getTotalMedicalRecordsRequired() {
        return totalMedicalRecordsRequired;
    }

    public void setTotalMedicalRecordsRequired(Integer totalMedicalRecordsRequired) {
        this.totalMedicalRecordsRequired = totalMedicalRecordsRequired;
    }

    public Integer getTotalMedicalRecordsCompleted() {
        return totalMedicalRecordsCompleted;
    }

    public void setTotalMedicalRecordsCompleted(Integer totalMedicalRecordsCompleted) {
        this.totalMedicalRecordsCompleted = totalMedicalRecordsCompleted;
    }

    public List<MedicalRecords> getMedicalRecords() {
        return medicalRecords;
    }

    public void setMedicalRecords(List<MedicalRecords> medicalRecords) {
        this.medicalRecords = medicalRecords;
    }

    public ContractDTO getContract() {
        return Contract;
    }

    public void setContract(ContractDTO contract) {
        Contract = contract;
    }
}
