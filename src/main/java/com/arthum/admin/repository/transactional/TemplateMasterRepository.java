package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.TemplateMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TemplateMasterRepository extends JpaRepository<TemplateMaster, Integer> {
}
