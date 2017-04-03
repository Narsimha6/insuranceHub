package com.cg.iHub.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.iHub.dao.ArtifactsDao;
import com.cg.iHub.model.ArtifactsMaster;
import com.cg.iHub.utils.CategoryENUM;
@Service
public class ArtifactServiceImpl implements ArtifactService {
	static Logger logger = Logger.getLogger(ArtifactServiceImpl.class);

	@Autowired
	EntityManager entityManager;

	@Autowired
	ArtifactsDao artifactsDao;

	@Override
	public ArtifactsMaster getAllArtifacts(Long artifactId) {
		ArtifactsMaster artifact = null;
		try{
			artifact = entityManager.find(ArtifactsMaster.class, artifactId);
		}catch(NoResultException e){
			logger.warn("No results to the query executed :"+e.getMessage());
		}
		entityManager.close();
		return artifact;
	}

	@Override
	public Map<String, List<ArtifactsMaster>> getCategoryContents(String categoryName) {
		List<ArtifactsMaster> artifactList = null;
		Integer menuId = getMenuIdForCategoryName(categoryName);
		String queryStr = "SELECT am.Artifact_ID, am.Artifact_Name, am.Artifact_Type, am.IMAGE_URL, am.ARTIFACT_COMMENT, am.menu_id, am.section_id, menu.MENU_name, sec.SECTION_NAME "  
				+"from izone.IHUB_ARTIFACT_MASTER am "
				+"inner join izone.IHUB_menu menu on am.menu_id = menu.menu_id "
				+"inner join izone.IHUB_section sec on sec.menu_id = menu.menu_id "
				+"where sec.SECTION_ID = am.section_id "
				+"AND am.is_active= 'Y' AND am.menu_id = "+ menuId +" order by am.section_ID, am.sort_Order ";
		Query query = entityManager.createNativeQuery(queryStr);
		Map<String, List<ArtifactsMaster>> dataMap = null;
		try{
			List dataList = query.getResultList();
			if(dataList!=null && dataList.size()>0){
				artifactList = new ArrayList<ArtifactsMaster>();
				dataMap = new LinkedHashMap<String, List<ArtifactsMaster>>();
				for (Object obj : dataList) {
					Object[] dataObjArr = (Object[]) obj;
					if(dataObjArr!=null && dataObjArr.length>0){
						ArtifactsMaster artifact = new ArtifactsMaster();
						artifact.setArtifactId(dataObjArr[0]!=null?Long.valueOf(dataObjArr[0].toString()):null);
						artifact.setArtifactName(dataObjArr[1]!=null?(String)dataObjArr[1]:null);
						artifact.setArtifactType(dataObjArr[2]!=null?(String)dataObjArr[2]:null);
						String imageURL = dataObjArr[3]!=null?(String)dataObjArr[3]:null;
						artifact.setArtifactImageURL(imageURL!=null && imageURL.contains("../../")?imageURL.replace("../../", "/iHub/"):imageURL);
						artifact.setArtifactDescription(dataObjArr[4]!=null?(String)dataObjArr[4]:null);
						artifact.setMenuId(dataObjArr[5]!=null?Long.valueOf(dataObjArr[5].toString()):null);
						artifact.setSectionId(dataObjArr[6]!=null?Long.valueOf(dataObjArr[6].toString()):null);
						artifact.setMenuName(dataObjArr[7]!=null?(String)dataObjArr[7]:null);
						String sectionName = dataObjArr[8]!=null?(String)dataObjArr[8]:null;
						artifact.setSectionName(dataObjArr[8]!=null?(String)dataObjArr[8]:null);
//						artifactList.add(artifact);
						List<ArtifactsMaster> tempList = null;
						if(dataMap.containsKey(sectionName)){
							tempList = dataMap.get(sectionName);
						} else {
							tempList = new ArrayList<ArtifactsMaster>();
						}
						tempList.add(artifact);
						dataMap.put(sectionName, tempList);
					}
				}
			}
		}catch(NoResultException e){
			logger.warn("No results to the query executed :"+e.getMessage());
		}
		entityManager.close();
		return dataMap;
	}

	private Integer getMenuIdForCategoryName(String categoryName) {
		for (CategoryENUM enumVal : CategoryENUM.values()) {
			if(enumVal.getDescription().equals(categoryName)){
				return enumVal.getId();
			}
		}
		return null;
	}
}