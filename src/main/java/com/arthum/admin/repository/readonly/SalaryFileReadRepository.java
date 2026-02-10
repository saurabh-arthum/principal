package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.SalaryFile;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SalaryFileReadRepository extends JpaRepository<SalaryFile, Integer> {
}
