package com.arthum.admin.controller.compliance.helper;

import java.time.LocalDate;

public class PaymentInfoDto {
    private String wageFrequency;
    private LocalDate wagePeriodFrom;
    private LocalDate wagePeriodTo;
    private Integer daysWorked;
    private Double overtimeHours;

    public String getWageFrequency() {
        return wageFrequency;
    }

    public void setWageFrequency(String wageFrequency) {
        this.wageFrequency = wageFrequency;
    }

    public LocalDate getWagePeriodFrom() {
        return wagePeriodFrom;
    }

    public void setWagePeriodFrom(LocalDate wagePeriodFrom) {
        this.wagePeriodFrom = wagePeriodFrom;
    }

    public LocalDate getWagePeriodTo() {
        return wagePeriodTo;
    }

    public void setWagePeriodTo(LocalDate wagePeriodTo) {
        this.wagePeriodTo = wagePeriodTo;
    }

    public Integer getDaysWorked() {
        return daysWorked;
    }

    public void setDaysWorked(Integer daysWorked) {
        this.daysWorked = daysWorked;
    }

    public Double getOvertimeHours() {
        return overtimeHours;
    }

    public void setOvertimeHours(Double overtimeHours) {
        this.overtimeHours = overtimeHours;
    }
}