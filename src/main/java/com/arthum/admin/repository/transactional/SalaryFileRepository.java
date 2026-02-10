package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.SalaryFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SalaryFileRepository extends JpaRepository<SalaryFile, String> {
}
