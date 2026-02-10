package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.DocumentMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DocumentMasterRepository extends JpaRepository<DocumentMaster, String> {
}
