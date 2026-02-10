package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.CompanyBranch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyBranchRepository extends JpaRepository<CompanyBranch, String> {

}
