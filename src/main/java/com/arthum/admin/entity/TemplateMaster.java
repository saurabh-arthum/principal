package com.arthum.admin.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_template_master")
public class TemplateMaster {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MASTER_ID")
    private Integer masterId;

    @Column(name = "TEMPLATE_TYPE", length = 20)
    private String templateType;

    @Column(name = "TEMPLATE_NAME", length = 100)
    private String templateName;

    @Column(name = "CREATED_TS")
    private LocalDateTime createdTs;

    @Column(name = "UPDATED_TS")
    private LocalDateTime updatedTs;

    @Column(name = "STATUS", length = 20)
    private String status;

    public Integer getMasterId() {
        return masterId;
    }

    public void setMasterId(Integer masterId) {
        this.masterId = masterId;
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

    @Override
    public String toString() {
        return "CorporateHrmsTemplateMaster{" +
                "masterId=" + masterId +
                ", templateType='" + templateType + '\'' +
                ", templateName='" + templateName + '\'' +
                ", createdTs=" + createdTs +
                ", updatedTs=" + updatedTs +
                ", status='" + status + '\'' +
                '}';
    }
}
