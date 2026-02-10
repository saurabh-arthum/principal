package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.CustomerLogin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerLoginRepository extends JpaRepository<CustomerLogin, String> {
}
