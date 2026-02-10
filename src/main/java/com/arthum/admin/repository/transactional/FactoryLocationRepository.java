package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.FactoryLocation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FactoryLocationRepository extends JpaRepository<FactoryLocation, String> {
}
