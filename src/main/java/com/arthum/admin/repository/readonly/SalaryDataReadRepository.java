package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.SalaryData;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SalaryDataReadRepository extends JpaRepository<SalaryData, Integer> {
}
