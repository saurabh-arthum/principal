package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.CategoryMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryMasterRepository extends JpaRepository<CategoryMaster, String> {
}
