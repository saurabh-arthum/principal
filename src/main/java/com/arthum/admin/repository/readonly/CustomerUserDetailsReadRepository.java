package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.CustomerUserDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerUserDetailsReadRepository extends JpaRepository<CustomerUserDetails, String> {
}
