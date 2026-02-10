package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.FactoryLocation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FactoryLocationReadRepository extends JpaRepository<FactoryLocation, String> {
}
