package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.EmployeeMonthlyAttendance;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface EmployeeMonthlyAttendanceRepository
        extends JpaRepository<EmployeeMonthlyAttendance, Integer> {

    Optional<EmployeeMonthlyAttendance> findByEmployeeIdAndMonth(
            String employeeId, String month
    );

    List<EmployeeMonthlyAttendance> findByCompanyIdAndMonth(
            String companyId, String month
    );

    List<EmployeeMonthlyAttendance> findByFactoryIdAndMonth(
            String factoryId, String month
    );
}