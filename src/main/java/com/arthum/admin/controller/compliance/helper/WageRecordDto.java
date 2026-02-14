package com.arthum.admin.controller.compliance.helper;

import java.math.BigDecimal;

public class WageRecordDto {

    private Integer serialNo;
    private String employeeCode;
    private String name;
    private String designation;
    private String department;

    private PaymentInfoDto paymentInfo;
    private WageRateDto rateOfWages;
    private EarningsDto earnings;
    private DeductionsDto deductions;
    private BigDecimal netPayment;
    private PaymentDetails paymentDetails;
    private Compliance compliance;

    private String employerSignature;

    @Override
    public String toString() {
        return "WageRecord{" +
                "serialNo=" + serialNo +
                ", employeeCode='" + employeeCode + '\'' +
                ", name='" + name + '\'' +
                ", designation='" + designation + '\'' +
                ", department='" + department + '\'' +
                ", paymentInfo=" + paymentInfo +
                ", rateOfWages=" + rateOfWages +
                ", earnings=" + earnings +
                ", deductions=" + deductions +
                ", netPayment=" + netPayment +
                ", paymentDetails=" + paymentDetails +
                ", compliance=" + compliance +
                ", employerSignature='" + employerSignature + '\'' +
                '}';
    }

    public Integer getSerialNo() {
        return serialNo;
    }

    public void setSerialNo(Integer serialNo) {
        this.serialNo = serialNo;
    }

    public String getEmployeeCode() {
        return employeeCode;
    }

    public void setEmployeeCode(String employeeCode) {
        this.employeeCode = employeeCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public PaymentInfoDto getPaymentInfo() {
        return paymentInfo;
    }

    public void setPaymentInfo(PaymentInfoDto paymentInfo) {
        this.paymentInfo = paymentInfo;
    }

    public WageRateDto getRateOfWages() {
        return rateOfWages;
    }

    public void setRateOfWages(WageRateDto rateOfWages) {
        this.rateOfWages = rateOfWages;
    }

    public EarningsDto getEarnings() {
        return earnings;
    }

    public void setEarnings(EarningsDto earnings) {
        this.earnings = earnings;
    }

    public DeductionsDto getDeductions() {
        return deductions;
    }

    public void setDeductions(DeductionsDto deductions) {
        this.deductions = deductions;
    }

    public BigDecimal getNetPayment() {
        return netPayment;
    }

    public void setNetPayment(BigDecimal netPayment) {
        this.netPayment = netPayment;
    }

    public PaymentDetails getPaymentDetails() {
        return paymentDetails;
    }

    public void setPaymentDetails(PaymentDetails paymentDetails) {
        this.paymentDetails = paymentDetails;
    }

    public Compliance getCompliance() {
        return compliance;
    }

    public void setCompliance(Compliance compliance) {
        this.compliance = compliance;
    }

    public String getEmployerSignature() {
        return employerSignature;
    }

    public void setEmployerSignature(String employerSignature) {
        this.employerSignature = employerSignature;
    }
}