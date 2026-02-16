package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.ApplyDetails;

import com.arthum.admin.entity.FactoryMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FactoryMasterReadRepository extends JpaRepository<FactoryMaster, Long> {
}
