package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CorporateHrmsComplianceAttendance;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;

public interface ComplianceAttendanceRepository
        extends JpaRepository<CorporateHrmsComplianceAttendance, Integer> {

    Optional<CorporateHrmsComplianceAttendance> findByEmployeeIdAndMonth(
            String employeeId, String month
    );

    List<CorporateHrmsComplianceAttendance> findByCompanyIdAndMonth(
            String companyId, String month
    );

    List<CorporateHrmsComplianceAttendance> findByFactoryIdAndMonth(
            String factoryId, String month
    );
}