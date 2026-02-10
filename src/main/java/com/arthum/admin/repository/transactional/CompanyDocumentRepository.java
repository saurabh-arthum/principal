package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.CompanyDocument;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyDocumentRepository extends JpaRepository<CompanyDocument, String> {
}
