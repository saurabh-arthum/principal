package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.MainBorrowerMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MainBorrowerMasterRepository extends JpaRepository<MainBorrowerMaster, String> {
}
