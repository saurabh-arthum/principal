package com.arthum.admin.entity;

import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_supervisor")
public class Supervisor {

    @Id
    @Column(name = "SUPERVISOR_ID", length = 50)
    private String supervisorId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    @Column(name = "PRINCIPAL_ID", length = 50)
    private String principalId;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Column(name = "NAME", length = 100)
    private String name;

    @Column(name = "MOBILE", length = 100)
    private String mobile;

    @Column(name = "EMAIL", length = 100)
    private String email;

    @Column(name = "ADDRESS", length = 500)
    private String address;

    @Column(name = "PAN", length = 50)
    private String pan;

    @Column(name = "AADHAR", length = 50)
    private String aadhar;

    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "JOINING_DATE")
    private LocalDateTime joiningDate;

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

    @Column(name = "AGENT_ID")
    private Integer agentId;


    public String getSupervisorId() { return supervisorId; }
    public void setSupervisorId(String supervisorId) { this.supervisorId = supervisorId; }

    public String getFactoryId() { return factoryId; }
    public void setFactoryId(String factoryId) { this.factoryId = factoryId; }

    public String getPrincipalId() { return principalId; }
    public void setPrincipalId(String principalId) { this.principalId = principalId; }

    public String getCompanyId() { return companyId; }
    public void setCompanyId(String companyId) { this.companyId = companyId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getMobile() { return mobile; }
    public void setMobile(String mobile) { this.mobile = mobile; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getPan() { return pan; }
    public void setPan(String pan) { this.pan = pan; }

    public String getAadhar() { return aadhar; }
    public void setAadhar(String aadhar) { this.aadhar = aadhar; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public LocalDateTime getJoiningDate() { return joiningDate; }
    public void setJoiningDate(LocalDateTime joiningDate) { this.joiningDate = joiningDate; }

    public LocalDateTime getExitDate() { return exitDate; }
    public void setExitDate(LocalDateTime exitDate) { this.exitDate = exitDate; }

    public String getAddedByType() { return addedByType; }
    public void setAddedByType(String addedByType) { this.addedByType = addedByType; }

    public String getAddedById() { return addedById; }
    public void setAddedById(String addedById) { this.addedById = addedById; }

    public LocalDateTime getRecordDate() { return recordDate; }
    public void setRecordDate(LocalDateTime recordDate) { this.recordDate = recordDate; }

    public String getUpdatedByType() { return updatedByType; }
    public void setUpdatedByType(String updatedByType) { this.updatedByType = updatedByType; }

    public String getUpdatedById() { return updatedById; }
    public void setUpdatedById(String updatedById) { this.updatedById = updatedById; }

    public LocalDateTime getUpdateDate() { return updateDate; }
    public void setUpdateDate(LocalDateTime updateDate) { this.updateDate = updateDate; }

    public String getExitByType() { return exitByType; }
    public void setExitByType(String exitByType) { this.exitByType = exitByType; }

    public String getExitById() { return exitById; }
    public void setExitById(String exitById) { this.exitById = exitById; }

    public LocalDateTime getExitUpdateDate() { return exitUpdateDate; }
    public void setExitUpdateDate(LocalDateTime exitUpdateDate) { this.exitUpdateDate = exitUpdateDate; }

    public Integer getAgentId() { return agentId; }
    public void setAgentId(Integer agentId) { this.agentId = agentId; }

    @Override
    public String toString() {
        return "CorporateHrmsSupervisor{" +
                "supervisorId='" + supervisorId + '\'' +
                ", factoryId='" + factoryId + '\'' +
                ", principalId='" + principalId + '\'' +
                ", companyId='" + companyId + '\'' +
                ", name='" + name + '\'' +
                ", status='" + status + '\'' +
                ", recordDate=" + recordDate +
                '}';
    }
}
