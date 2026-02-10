package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.SalaryDataField;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SalaryDataFieldRepository extends JpaRepository<SalaryDataField, Long> {
    List<SalaryDataField> findByDataId(Integer dataId);
}
