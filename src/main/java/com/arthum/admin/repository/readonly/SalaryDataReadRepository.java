package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.SalaryData;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SalaryDataReadRepository extends JpaRepository<SalaryData, Integer> {
    List<SalaryData> findByCompanyIdAndFactoryIdAndMonth(String companyId, String factoryId, String month);
}
