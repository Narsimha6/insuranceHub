package com.cg.iHub.service;

import java.util.List;

import com.cg.iHub.model.ArtifactsMaster;

public interface ArtifactService {
	ArtifactsMaster getAllArtifacts(Long artifactId);

	List<ArtifactsMaster> getArtifactsByType(String menuType);
}
