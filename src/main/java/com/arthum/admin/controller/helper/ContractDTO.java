package com.arthum.admin.controller.helper;

import java.math.BigDecimal;

public class ContractDTO {

    private String contractDuration;
    private int projectsCompleted;
    private BigDecimal totalBillings;
    private double complianceScore;

    public String getContractDuration() {
        return contractDuration;
    }

    public void setContractDuration(String contractDuration) {
        this.contractDuration = contractDuration;
    }

    public int getProjectsCompleted() {
        return projectsCompleted;
    }

    public void setProjectsCompleted(int projectsCompleted) {
        this.projectsCompleted = projectsCompleted;
    }

    public BigDecimal getTotalBillings() {
        return totalBillings;
    }

    public void setTotalBillings(BigDecimal totalBillings) {
        this.totalBillings = totalBillings;
    }

    public double getComplianceScore() {
        return complianceScore;
    }

    public void setComplianceScore(double complianceScore) {
        this.complianceScore = complianceScore;
    }
}