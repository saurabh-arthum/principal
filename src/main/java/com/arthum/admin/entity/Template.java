package com.arthum.admin.entity;


import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_template")
public class Template {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TEMPLATE_ID")
    private Integer templateId;

    @Column(name = "STRUCTURE_ID", nullable = false)
    private Integer structureId;

    @Column(name = "FACTORY_ID", length = 100)
    private String factoryId;

    @Column(name = "TEMPLATE_TYPE", length = 20)
    private String templateType;

    @Column(name = "TEMPLATE_NAME", length = 100)
    private String templateName;

    @Lob
    @Column(name = "TEMPLATE_DETAILS", columnDefinition = "TEXT")
    private String templateDetails;

    @Column(name = "CREATED_TS")
    private LocalDateTime createdTs;

    @Column(name = "UPDATED_TS")
    private LocalDateTime updatedTs;

    @Column(name = "STATUS", length = 20)
    private String status;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    public Integer getTemplateId() {
        return templateId;
    }

    public void setTemplateId(Integer templateId) {
        this.templateId = templateId;
    }

    public Integer getStructureId() {
        return structureId;
    }

    public void setStructureId(Integer structureId) {
        this.structureId = structureId;
    }

    public String getFactoryId() {
        return factoryId;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }

    public String getTemplateType() {
        return templateType;
    }

    public void setTemplateType(String templateType) {
        this.templateType = templateType;
    }

    public String getTemplateName() {
        return templateName;
    }

    public void setTemplateName(String templateName) {
        this.templateName = templateName;
    }

    public String getTemplateDetails() {
        return templateDetails;
    }

    public void setTemplateDetails(String templateDetails) {
        this.templateDetails = templateDetails;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    @Override
    public String toString() {
        return "CorporateHrmsTemplate{" +
                "templateId=" + templateId +
                ", structureId=" + structureId +
                ", factoryId='" + factoryId + '\'' +
                ", templateType='" + templateType + '\'' +
                ", templateName='" + templateName + '\'' +
                ", templateDetails='" + templateDetails + '\'' +
                ", createdTs=" + createdTs +
                ", updatedTs=" + updatedTs +
                ", status='" + status + '\'' +
                ", companyId='" + companyId + '\'' +
                '}';
    }
}
