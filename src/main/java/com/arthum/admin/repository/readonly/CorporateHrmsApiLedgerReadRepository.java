package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.CorporateHrmsApiLedger;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CorporateHrmsApiLedgerReadRepository extends JpaRepository<CorporateHrmsApiLedger, String> {
}
