package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.Supervisor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SupervisorReadRepository extends JpaRepository<Supervisor, String> {
}
