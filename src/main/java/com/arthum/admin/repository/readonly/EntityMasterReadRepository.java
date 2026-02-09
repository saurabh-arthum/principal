package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.EmployeeMaster;
import com.arthum.admin.entity.EntityMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EntityMasterReadRepository extends JpaRepository<EntityMaster, String> {
}
