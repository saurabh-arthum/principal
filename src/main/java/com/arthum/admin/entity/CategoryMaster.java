package com.arthum.admin.entity;

import jakarta.persistence.*;


import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_category_master")
public class CategoryMaster {

    @Id
    @Column(name = "ID", length = 50)
    private String id;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Column(name = "PRINCIPAL_ID", length = 50)
    private String principalId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    /**
     * Category configuration stored as JSON
     */
    @Lob
    @Column(name = "DETAILS_JSON", length = 5000)
    private String detailsJson;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    /**
     * ACTIVE / INACTIVE
     */
    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "UPDATE_DATE")
    private LocalDateTime updateDate;

    @PrePersist
    protected void onCreate() {
        recordDate = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        updateDate = LocalDateTime.now();
    }
}
