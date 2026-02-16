package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.ApplyDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ApplyDetailsReadRepository  extends JpaRepository<ApplyDetails, String> {
    ApplyDetails findByPan(String panNumber);
}
