package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.CategoryMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryMasterReadRepository  extends JpaRepository<CategoryMaster, String> {
}
