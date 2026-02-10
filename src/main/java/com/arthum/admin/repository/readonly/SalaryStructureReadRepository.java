package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.SalaryStructure;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SalaryStructureReadRepository extends JpaRepository<SalaryStructure, Integer> {
}
