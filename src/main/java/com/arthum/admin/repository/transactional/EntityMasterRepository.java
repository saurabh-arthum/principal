package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.EntityMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EntityMasterRepository extends JpaRepository<EntityMaster, String> {
}
