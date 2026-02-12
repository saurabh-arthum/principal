package com.arthum.admin.entity;


import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_file_collection")
public class FileCollection {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "FILE_ID")
    private Integer fileId;

    @Column(name = "COMPANY_ID", length = 100)
    private String companyId;

    @Column(name = "NO_OF_DATA")
    private Integer noOfData;

    @Column(name = "CORRECT_DATA")
    private Integer correctData;

    @Column(name = "ERROR_DATA")
    private Integer errorData;

    @Column(name = "FILE_NAME", length = 100)
    private String fileName;

    @Column(name = "BUCKET_NAME", length = 100)
    private String bucketName;

    @Column(name = "ORIGINAL_FILE_NAME", length = 100)
    private String originalFileName;

    @Column(name = "FILE_FOR", length = 50)
    private String fileFor;

    @Column(name = "ERROR_DATA_FILE_NAME", length = 100)
    private String errorDataFileName;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Column(name = "CREATED_BY_TYPE", length = 20)
    private String createdByType;

    @Column(name = "CREATED_BY_ID", length = 20)
    private String createdById;

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public Integer getNoOfData() {
        return noOfData;
    }

    public void setNoOfData(Integer noOfData) {
        this.noOfData = noOfData;
    }

    public Integer getCorrectData() {
        return correctData;
    }

    public void setCorrectData(Integer correctData) {
        this.correctData = correctData;
    }

    public Integer getErrorData() {
        return errorData;
    }

    public void setErrorData(Integer errorData) {
        this.errorData = errorData;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getBucketName() {
        return bucketName;
    }

    public void setBucketName(String bucketName) {
        this.bucketName = bucketName;
    }

    public String getOriginalFileName() {
        return originalFileName;
    }

    public void setOriginalFileName(String originalFileName) {
        this.originalFileName = originalFileName;
    }

    public String getFileFor() {
        return fileFor;
    }

    public void setFileFor(String fileFor) {
        this.fileFor = fileFor;
    }

    public String getErrorDataFileName() {
        return errorDataFileName;
    }

    public void setErrorDataFileName(String errorDataFileName) {
        this.errorDataFileName = errorDataFileName;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }

    public String getCreatedByType() {
        return createdByType;
    }

    public void setCreatedByType(String createdByType) {
        this.createdByType = createdByType;
    }

    public String getCreatedById() {
        return createdById;
    }

    public void setCreatedById(String createdById) {
        this.createdById = createdById;
    }

    @Override
    public String toString() {
        return "CorporateHrmsFileCollection{" +
                "fileId=" + fileId +
                ", companyId='" + companyId + '\'' +
                ", fileName='" + fileName + '\'' +
                ", fileFor='" + fileFor + '\'' +
                ", recordDate=" + recordDate +
                '}';
    }
}
