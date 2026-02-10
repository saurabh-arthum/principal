package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.EmployeeMasterHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeMasterHistoryRepository extends JpaRepository<EmployeeMasterHistory, Integer> {
}
