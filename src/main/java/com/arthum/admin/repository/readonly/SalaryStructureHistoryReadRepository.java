package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.SalaryStructureHistory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SalaryStructureHistoryReadRepository extends JpaRepository<SalaryStructureHistory, Integer> {
}
