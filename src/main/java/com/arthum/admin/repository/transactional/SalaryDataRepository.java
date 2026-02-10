package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.SalaryData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SalaryDataRepository extends JpaRepository<SalaryData, Integer> {
}
