package com.arthum.admin.controller.helper;

public class ContractorDashboardSummary {
    private long compliancePending;
    private long monthlyJoinees;
    private long totalContractors;
    private long contractNearExpiry;

    public ContractorDashboardSummary(long compliancePending,
                            long monthlyJoinees,
                            long totalContractors,long contractNearExpiry) {
        this.compliancePending = compliancePending;
        this.monthlyJoinees = monthlyJoinees;
        this.totalContractors = totalContractors;
        this.contractNearExpiry=contractNearExpiry;
    }

    public long getCompliancePending() { return compliancePending; }
    public long getMonthlyJoinees() { return monthlyJoinees; }
    public long getTotalContractors() { return totalContractors; }

    public void setCompliancePending(long compliancePending) {
        this.compliancePending = compliancePending;
    }

    public void setMonthlyJoinees(long monthlyJoinees) {
        this.monthlyJoinees = monthlyJoinees;
    }

    public void setTotalContractors(long totalContractors) {
        this.totalContractors = totalContractors;
    }

    public long getContractNearExpiry() {
        return contractNearExpiry;
    }

    public void setContractNearExpiry(long contractNearExpiry) {
        this.contractNearExpiry = contractNearExpiry;
    }
}

