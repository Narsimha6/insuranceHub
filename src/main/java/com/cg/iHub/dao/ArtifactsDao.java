
package com.cg.iHub.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cg.iHub.model.ArtifactsMaster;

@Repository
@Transactional
public interface ArtifactsDao extends JpaRepository<ArtifactsMaster,Long> {
}
