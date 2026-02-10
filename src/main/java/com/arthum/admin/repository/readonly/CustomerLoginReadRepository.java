package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CustomerLogin;
import org.springframework.data.jpa.repository.JpaRepository;
public interface CustomerLoginReadRepository  extends JpaRepository<CustomerLogin, String> {
}
