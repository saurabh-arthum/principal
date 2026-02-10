package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.CorporateHrmsApiLedger;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ApiLedgerRepository extends JpaRepository<CorporateHrmsApiLedger, String> {
}
