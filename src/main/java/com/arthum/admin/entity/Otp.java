package com.arthum.admin.entity;

import jakarta.persistence.*;


import java.time.LocalDateTime;

@Entity
@Table(name = "otp")

public class Otp {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    /**
     * Any raw payload (request data, user info, etc.)
     */
    @Lob
    @Column(name = "DATA", columnDefinition = "TEXT")
    private String data;

    /**
     * Structured OTP metadata (JSON, encrypted blob, etc.)
     */
    @Lob
    @Column(name = "OTP_DATA", columnDefinition = "TEXT")
    private String otpData;

    @Column(name = "TOKEN", length = 20)
    private String token;

    @Column(name = "OTP", length = 10)
    private String otp;

    /**
     * Purpose of OTP
     * Examples: LOGIN, REGISTER, PASSWORD_RESET, MOBILE_VERIFY
     */
    @Column(name = "OTP_FOR", length = 50)
    private String otpFor;

    /**
     * NEW, VERIFIED, EXPIRED, FAILED
     */
    @Column(name = "STATUS", length = 50)
    private String status;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @Override
    public String toString() {
        return "Otp{" +
                "id=" + id +
                ", data='" + data + '\'' +
                ", otpData='" + otpData + '\'' +
                ", token='" + token + '\'' +
                ", otp='" + otp + '\'' +
                ", otpFor='" + otpFor + '\'' +
                ", status='" + status + '\'' +
                ", recordDate=" + recordDate +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getOtpData() {
        return otpData;
    }

    public void setOtpData(String otpData) {
        this.otpData = otpData;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public String getOtpFor() {
        return otpFor;
    }

    public void setOtpFor(String otpFor) {
        this.otpFor = otpFor;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }
}
