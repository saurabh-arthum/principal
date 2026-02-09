package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyBranch;
import com.arthum.admin.entity.CompanyDocument;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyDocumentReadRepository extends JpaRepository<CompanyDocument, String> {
}
