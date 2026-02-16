package com.arthum.admin.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

    @Entity
    @Table(name = "apply_details")
    public class ApplyDetails {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "APPLY_ID")
        private Integer applyId;

        @Column(name = "MOBILE", length = 200)
        private String mobile;

        @Column(name = "PAN", length = 20)
        private String pan;

        @Column(name = "OTP", length = 10)
        private String otp;

        @Column(name = "CREATED_TS")
        private LocalDateTime createdTs;

        @Column(name = "UPDATED_TS")
        private LocalDateTime updatedTs;

        @Column(name = "BYPASS_FLAG", length = 1)
        private String bypassFlag;

        @Column(name = "EMP_ID")
        private Integer empId;

        @Column(name = "CURRENT_EMP_ID")
        private Integer currentEmpId;

        @Column(name = "VRM_EMP_ID")
        private Integer vrmEmpId;

        @Column(name = "PRODUCT_STATUS", length = 200)
        private String productStatus;

        // ===== Getters & Setters =====

        public Integer getApplyId() {
            return applyId;
        }

        public void setApplyId(Integer applyId) {
            this.applyId = applyId;
        }

        public String getMobile() {
            return mobile;
        }

        public void setMobile(String mobile) {
            this.mobile = mobile;
        }

        public String getPan() {
            return pan;
        }

        public void setPan(String pan) {
            this.pan = pan;
        }

        public String getOtp() {
            return otp;
        }

        public void setOtp(String otp) {
            this.otp = otp;
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

        public String getBypassFlag() {
            return bypassFlag;
        }

        public void setBypassFlag(String bypassFlag) {
            this.bypassFlag = bypassFlag;
        }

        public Integer getEmpId() {
            return empId;
        }

        public void setEmpId(Integer empId) {
            this.empId = empId;
        }

        public Integer getCurrentEmpId() {
            return currentEmpId;
        }

        public void setCurrentEmpId(Integer currentEmpId) {
            this.currentEmpId = currentEmpId;
        }

        public Integer getVrmEmpId() {
            return vrmEmpId;
        }

        public void setVrmEmpId(Integer vrmEmpId) {
            this.vrmEmpId = vrmEmpId;
        }

        public String getProductStatus() {
            return productStatus;
        }

        public void setProductStatus(String productStatus) {
            this.productStatus = productStatus;
        }

}
