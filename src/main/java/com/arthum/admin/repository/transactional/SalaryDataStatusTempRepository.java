package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.SalaryDataStatusTemp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SalaryDataStatusTempRepository extends JpaRepository<SalaryDataStatusTemp, Integer> {
}
