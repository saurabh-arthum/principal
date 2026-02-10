package com.arthum.admin.repository.readonly;

import com.arthum.admin.entity.Template;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TemplateReadRepository extends JpaRepository<Template, Integer> {
}
