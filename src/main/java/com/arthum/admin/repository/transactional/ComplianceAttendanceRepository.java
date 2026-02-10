package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.ComplianceAttendance;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComplianceAttendanceRepository extends JpaRepository<ComplianceAttendance, Integer> {
}
