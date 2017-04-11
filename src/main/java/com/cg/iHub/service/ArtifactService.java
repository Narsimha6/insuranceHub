package com.cg.iHub.service;

import java.util.List;
import java.util.Map;

import com.cg.iHub.model.ArtifactsMaster;

public interface ArtifactService {
	ArtifactsMaster getAllArtifacts(Long artifactId);

	Map<String, List<ArtifactsMaster>> getCategoryContents(String categoryName);

	ArtifactsMaster getArtifactData(Long artifactId);
}
