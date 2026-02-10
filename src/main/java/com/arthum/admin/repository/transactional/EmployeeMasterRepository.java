package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.EmployeeMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeMasterRepository extends JpaRepository<EmployeeMaster, String> {
}
