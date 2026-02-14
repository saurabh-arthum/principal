package com.arthum.admin.controller.helper;

import java.util.Map;

public class InputObject {
    String companyId;
    String factoryId;
    String principalId;
    String contractorId;
    String employeeId;
    String month;
    private int page=1;
    private int size=20;
public InputObject(Map<String,Object> payload)
{
    companyId= payload.get("companyId").toString();
    factoryId=payload.get("factoryId").toString();
    principalId= payload.get("principalId").toString();
    employeeId= payload.get("employeeId").toString();
    month= payload.get("month").toString();

}

    public InputObject(String companyId, String principalId, String factoryId) {
        this.companyId = companyId;
        this.principalId = principalId;
        this.factoryId = factoryId;
    }

    @Override
    public String toString() {
        return "InputObject{" +
                "companyId='" + companyId + '\'' +
                ", factoryId='" + factoryId + '\'' +
                ", principalId='" + principalId + '\'' +
                ", employeeId='" + employeeId + '\'' +
                ", month='" + month + '\'' +
                '}';
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getFactoryId() {
        return factoryId;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }

    public String getPrincipalId() {
        return principalId;
    }

    public void setPrincipalId(String principalId) {
        this.principalId = principalId;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getContractorId() {
        return contractorId;
    }

    public void setContractorId(String contractorId) {
        this.contractorId = contractorId;
    }
}
