package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.ComplianceAttendance;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;

public interface ComplianceAttendanceReadRepository
        extends JpaRepository<ComplianceAttendance, Integer> {

    Optional<ComplianceAttendance> findByEmployeeIdAndMonth(
            String employeeId, String month
    );

    List<ComplianceAttendance> findByCompanyIdAndMonth(
            String companyId, String month
    );

    List<ComplianceAttendance> findByFactoryIdAndMonth(
            String factoryId, String month
    );
}