package com.arthum.admin.controller.compliance.helper;

import java.math.BigDecimal;

public class DeductionsDto {
    private BigDecimal epf;
    private BigDecimal esic;
    private BigDecimal society;
    private BigDecimal incomeTax;
    private BigDecimal insurance;
    private BigDecimal others;
    private BigDecimal fineRecovery;
    private BigDecimal damageRecovery;
    private BigDecimal totalDeductions;

    public BigDecimal getEpf() {
        return epf;
    }

    public void setEpf(BigDecimal epf) {
        this.epf = epf;
    }

    public BigDecimal getEsic() {
        return esic;
    }

    public void setEsic(BigDecimal esic) {
        this.esic = esic;
    }

    public BigDecimal getSociety() {
        return society;
    }

    public void setSociety(BigDecimal society) {
        this.society = society;
    }

    public BigDecimal getIncomeTax() {
        return incomeTax;
    }

    public void setIncomeTax(BigDecimal incomeTax) {
        this.incomeTax = incomeTax;
    }

    public BigDecimal getInsurance() {
        return insurance;
    }

    public void setInsurance(BigDecimal insurance) {
        this.insurance = insurance;
    }

    public BigDecimal getOthers() {
        return others;
    }

    public void setOthers(BigDecimal others) {
        this.others = others;
    }

    public BigDecimal getFineRecovery() {
        return fineRecovery;
    }

    public void setFineRecovery(BigDecimal fineRecovery) {
        this.fineRecovery = fineRecovery;
    }

    public BigDecimal getDamageRecovery() {
        return damageRecovery;
    }

    public void setDamageRecovery(BigDecimal damageRecovery) {
        this.damageRecovery = damageRecovery;
    }

    public BigDecimal getTotalDeductions() {
        return totalDeductions;
    }

    public void setTotalDeductions(BigDecimal totalDeductions) {
        this.totalDeductions = totalDeductions;
    }
}