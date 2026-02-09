package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.EntityMaster;
import com.arthum.admin.entity.MainBorrowerMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MainBorrowerMasterReadRepository extends JpaRepository<MainBorrowerMaster, String> {
}
