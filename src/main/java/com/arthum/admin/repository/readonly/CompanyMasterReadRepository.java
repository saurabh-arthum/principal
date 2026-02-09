package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyMasterReadRepository extends JpaRepository<CompanyMaster, String> {
}
