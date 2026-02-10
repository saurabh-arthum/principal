package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.CustomerUserDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerUserDetailsRepository extends JpaRepository<CustomerUserDetails, String> {
}
