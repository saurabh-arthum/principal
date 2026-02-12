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
@Table(name = "corporate_hrms_api_ledger")

public class CorporateHrmsApiLedger {

    @Id
    @Column(name = "ID", length = 50)
    private String id;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    /**
     * CREDIT / DEBIT / ADJUSTMENT
     */
    @Column(name = "TYPE", length = 50)
    private String type;

    @Column(name = "API", length = 50)
    private String api;

    @Column(name = "API_PAYLOAD", length = 250)
    private String apiPayload;

    @Column(name = "API_RESPONSE", length = 250)
    private String apiResponse;

    /**
     * YES / NO
     */
    @Column(name = "BILLABLE", length = 10)
    private String billable;

    /**
     * Use BigDecimal for monetary values
     */
    @Column(name = "CREDIT", precision = 15, scale = 2)
    private BigDecimal credit;

    @Column(name = "DEBIT", precision = 15, scale = 2)
    private BigDecimal debit;

    @Column(name = "BALANCE", precision = 15, scale = 2)
    private BigDecimal balance;

    @Column(name = "RECORD_DATE")
    private LocalDateTime recordDate;

    @PrePersist
    protected void onCreate() {
        recordDate = LocalDateTime.now();
    }

    @Override
    public String toString() {
        return "CorporateHrmsApiLedger{" +
                "id='" + id + '\'' +
                ", companyId='" + companyId + '\'' +
                ", type='" + type + '\'' +
                ", api='" + api + '\'' +
                ", apiPayload='" + apiPayload + '\'' +
                ", apiResponse='" + apiResponse + '\'' +
                ", billable='" + billable + '\'' +
                ", credit=" + credit +
                ", debit=" + debit +
                ", balance=" + balance +
                ", recordDate=" + recordDate +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getApi() {
        return api;
    }

    public void setApi(String api) {
        this.api = api;
    }

    public String getApiPayload() {
        return apiPayload;
    }

    public void setApiPayload(String apiPayload) {
        this.apiPayload = apiPayload;
    }

    public String getApiResponse() {
        return apiResponse;
    }

    public void setApiResponse(String apiResponse) {
        this.apiResponse = apiResponse;
    }

    public String getBillable() {
        return billable;
    }

    public void setBillable(String billable) {
        this.billable = billable;
    }

    public BigDecimal getCredit() {
        return credit;
    }

    public void setCredit(BigDecimal credit) {
        this.credit = credit;
    }

    public BigDecimal getDebit() {
        return debit;
    }

    public void setDebit(BigDecimal debit) {
        this.debit = debit;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public LocalDateTime getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(LocalDateTime recordDate) {
        this.recordDate = recordDate;
    }
}
