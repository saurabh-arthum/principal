package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.Otp;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OtpReadRepository extends JpaRepository<Otp, String> {
}
