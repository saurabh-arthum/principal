package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.CompanyMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyMasterRepository extends JpaRepository<CompanyMaster , String> {
}
