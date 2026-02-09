package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.EmployeeMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeMasterReadRepository extends JpaRepository<EmployeeMaster, String> {
}
