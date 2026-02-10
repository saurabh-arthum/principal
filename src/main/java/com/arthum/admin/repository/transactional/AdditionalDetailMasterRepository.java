package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.AdditionalDetailMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdditionalDetailMasterRepository extends JpaRepository<AdditionalDetailMaster, String> {
}
