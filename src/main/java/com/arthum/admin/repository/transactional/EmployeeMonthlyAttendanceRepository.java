package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.EmployeeMonthlyAttendance;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeMonthlyAttendanceRepository extends JpaRepository<EmployeeMonthlyAttendance, Integer> {
}
