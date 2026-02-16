package com.arthum.admin.controller.helper;

public class DepartmentDTO {
    private Long id;
    private String departmentName;
    private String deptCode;
    private String parentDepartment;
    private String status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getDeptCode() {
        return deptCode;
    }

    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode;
    }

    public String getParentDepartment() {
        return parentDepartment;
    }

    public void setParentDepartment(String parentDepartment) {
        this.parentDepartment = parentDepartment;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "DepartmentDTO{" +
                "id=" + id +
                ", departmentName='" + departmentName + '\'' +
                ", deptCode='" + deptCode + '\'' +
                ", parentDepartment='" + parentDepartment + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
