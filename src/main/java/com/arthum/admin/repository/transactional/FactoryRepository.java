package com.arthum.admin.repository.transactional;

import com.arthum.admin.entity.Factory;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FactoryRepository extends JpaRepository<Factory, String> {

	@Modifying
	@Query(value = "UPDATE corporate_hrms_factory SET STATUS = :status, UPDATE_DATE = NOW() WHERE FACTORY_ID = :factoryId", nativeQuery = true)
	int updateFactoryStatus(@Param("factoryId") String factoryId, @Param("status") String status);

	@Modifying
	@Query(value = "DELETE FROM corporate_hrms_factory WHERE FACTORY_ID = :factoryId AND STATUS = 'INACTIVE'", nativeQuery = true)
	int deleteInactiveFactory(@Param("factoryId") String factoryId);

	@Query("SELECT f FROM Factory f WHERE (:factoryId IS NULL OR f.factoryId = :factoryId) "
			+ "AND (:factoryName IS NULL OR f.factoryName LIKE CONCAT(:factoryName, '%')) "
			+ "AND (:address IS NULL OR f.address LIKE CONCAT('%', :address, '%'))")
	Page<Factory> searchFactories(@Param("factoryId") String factoryId, @Param("factoryName") String factoryName,
			@Param("address") String address, Pageable pageable);

	List<Factory> findByFactoryNameContainingAndPrincipalId(String factoryName, String principalId);

    Factory findByFactoryMasterId(String factoryId);

    Factory findByFactoryMasterIdAndCompanyId(String factoryId, String companyId);
}
