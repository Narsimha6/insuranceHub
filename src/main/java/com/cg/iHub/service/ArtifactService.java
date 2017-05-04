package com.cg.iHub.service;

import java.util.List;
import java.util.Map;

import com.cg.iHub.model.ArtifactsMaster;
import com.cg.iHub.model.SectionMaster;

public interface ArtifactService {
	ArtifactsMaster getAllArtifacts(Long artifactId);

	Map<String, List<ArtifactsMaster>> getCategoryContents(String categoryName);
	
	Map<String, String> getLobData(); 

	ArtifactsMaster getArtifactData(Long artifactId);

	Map<String, List<SectionMaster>> getMenuSections();

	Boolean saveArtifact(ArtifactsMaster artifact);
	
	Map<String, List<String>> getMapSubType();
	
}
