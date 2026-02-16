package com.arthum.admin.controller.compliance.helper;

import java.math.BigDecimal;

public class WageRateDto {
    private BigDecimal basic;
    private BigDecimal da;
    private BigDecimal allowances;

    public BigDecimal getBasic() {
        return basic;
    }

    public void setBasic(BigDecimal basic) {
        this.basic = basic;
    }

    public BigDecimal getDa() {
        return da;
    }

    public void setDa(BigDecimal da) {
        this.da = da;
    }

    public BigDecimal getAllowances() {
        return allowances;
    }

    public void setAllowances(BigDecimal allowances) {
        this.allowances = allowances;
    }
}