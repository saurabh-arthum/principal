package com.arthum.admin.repository.readonly;


import com.arthum.admin.entity.DocumentMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DocumentMasterReadRepository extends JpaRepository<DocumentMaster, String> {
}
