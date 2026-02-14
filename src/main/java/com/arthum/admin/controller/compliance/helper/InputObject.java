package com.arthum.admin.controller.compliance.helper;

import java.util.Map;

public class InputObject {
    String companyId;
    String factoryId;
    String principalId;
    String employeeId;
    String month;
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
}
