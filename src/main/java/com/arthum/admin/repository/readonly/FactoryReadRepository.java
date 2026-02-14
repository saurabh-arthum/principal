package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.Factory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FactoryReadRepository extends JpaRepository<Factory, String> {

	@Query(value = "SELECT * FROM corporate_hrms_factory WHERE STATE = :state", nativeQuery = true)
	List<Factory> findByStateNative(@Param("state") String state);

	@Query(value = "SELECT * FROM corporate_hrms_factory WHERE STATUS = 'ACTIVE' AND PRINCIPAL_ID = ?1 ORDER BY FACTORY_NAME", nativeQuery = true)
	List<Factory> findActiveFactories(String principalId);

    Factory findByFactoryId(String factoryId);
}
