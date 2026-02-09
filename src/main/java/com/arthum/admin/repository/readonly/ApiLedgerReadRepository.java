package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CorporateHrmsApiLedger;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ApiLedgerReadRepository extends JpaRepository<CorporateHrmsApiLedger, String> {
}
