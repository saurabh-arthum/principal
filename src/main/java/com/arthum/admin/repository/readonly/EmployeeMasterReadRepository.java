package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.EmployeeMaster;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EmployeeMasterReadRepository extends JpaRepository<EmployeeMaster, String> {
    EmployeeMaster findByEmployeeId(String employeeId);

    EmployeeMaster findByCompanyIdAndFactoryIdAndEmployeeId(String companyId, String factoryId, String employeeId);

    List<EmployeeMaster> findByCompanyIdAndFactoryId(String companyId, String factoryId);
}
