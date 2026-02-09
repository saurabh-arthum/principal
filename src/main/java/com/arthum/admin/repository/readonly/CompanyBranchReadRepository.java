package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyBranch;
import com.arthum.admin.entity.CompanyMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyBranchReadRepository extends JpaRepository<CompanyBranch, String> {
}
