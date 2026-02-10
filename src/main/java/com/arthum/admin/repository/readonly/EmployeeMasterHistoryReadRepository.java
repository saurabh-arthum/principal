package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.EmployeeMasterHistory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeMasterHistoryReadRepository extends JpaRepository<EmployeeMasterHistory, Integer> {
}
