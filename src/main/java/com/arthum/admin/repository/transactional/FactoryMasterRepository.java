package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.ApplyDetails;

import com.arthum.admin.entity.FactoryMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FactoryMasterRepository extends JpaRepository<FactoryMaster, Long> {
    FactoryMaster findByFactoryMasterId(String factoryId);
}
