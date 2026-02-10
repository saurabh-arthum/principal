package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.TemplateMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TemplateMasterReadRepository extends JpaRepository<TemplateMaster, Integer> {
}
