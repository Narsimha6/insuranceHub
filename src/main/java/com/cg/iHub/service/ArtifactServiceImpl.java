package com.cg.iHub.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.iHub.dao.ArtifactsDao;
import com.cg.iHub.model.ArtifactsMaster;
import com.cg.iHub.model.SectionMaster;
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
			artifact = (ArtifactsMaster) entityManager.find(ArtifactsMaster.class, artifactId);
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
		String queryStr = "SELECT am.Artifact_ID, am.Artifact_Name, am.Artifact_Type, am.IMAGE_URL, am.ARTIFACT_COMMENT, am.menu_id, am.section_id, menu.MENU_name, sec.SECTION_NAME, sec.SECTION_WIDTH "  
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
						artifact.setSectionWidth(dataObjArr[9]!=null?(String)dataObjArr[9]:null);
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

	@Override
	public ArtifactsMaster getArtifactData(Long artifactId) {
		ArtifactsMaster artifactMaster = artifactsDao.findOne(artifactId);
		Map<String, String> menuSectionNameMap = getMenuSectionName(
				artifactMaster.getMenuId(), artifactMaster.getSectionId());
		artifactMaster.setMenuName(menuSectionNameMap.get("MENU_NAME"));
		artifactMaster.setSectionName(menuSectionNameMap.get("SECTION_NAME"));
		return artifactMaster;
	}

	private Map<String, String> getMenuSectionName(Long menuId, Long sectionId) {
		String queryStr = "select m.MENU_NAME, s.SECTION_NAME from IZONE.IHUB_MENU m "
				+" inner join IZONE.IHUB_SECTION s on m.MENU_ID=s.MENU_ID "
				+ " WHERE m.menu_id="+menuId +" AND section_id= "+sectionId;
		Query query = entityManager.createNativeQuery(queryStr);
		Map<String, String> dataMap = null;
		try{
			Object dataList = query.getSingleResult();
			if(dataList!=null ){
				dataMap = new LinkedHashMap<String, String>();
				Object[] dataObjArr = (Object[]) dataList;
				if(dataObjArr!=null && dataObjArr.length>0){
					dataMap.put("MENU_NAME",dataObjArr[0]!=null?dataObjArr[0].toString():null);
					dataMap.put("SECTION_NAME",dataObjArr[1]!=null?dataObjArr[1].toString():null);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return dataMap;
	}

	@Override
	public Map<String, List<SectionMaster>> getMenuSections() {

		String queryStr = "select m.menu_id, m.MENU_NAME, s.SECTION_ID, s.SECTION_NAME from IZONE.IHUB_MENU m inner join IZONE.IHUB_SECTION s on m.MENU_ID=s.MENU_ID  where s.is_active='Y' order by m.menu_id";
		Query query = entityManager.createNativeQuery(queryStr);
		Map<String, List<SectionMaster>> dataMap = null;
		try{
			List dataList = query.getResultList();
			if(dataList!=null && dataList.size()>0){
				dataMap = new LinkedHashMap<String, List<SectionMaster>>();
				for (Object obj : dataList) {
					Object[] dataObjArr = (Object[]) obj;
					if(dataObjArr!=null && dataObjArr.length>0){
						SectionMaster section = new SectionMaster();
						section.setMenuId(dataObjArr[0]!=null?Long.valueOf(dataObjArr[0].toString()):null);
						String menuName = dataObjArr[1]!=null?(String)dataObjArr[1]:null;
						section.setSectionId(dataObjArr[2]!=null?Long.valueOf(dataObjArr[2].toString()):null);
						section.setSectionName(dataObjArr[3]!=null?(String)dataObjArr[3]:null);
						List<SectionMaster> tempList = null;
						if(dataMap.containsKey(menuName)){
							tempList = dataMap.get(menuName);
						} else {
							tempList = new ArrayList<SectionMaster>();
						}
						tempList.add(section);
						dataMap.put(menuName, tempList);
					}
				}
			}
		}catch(NoResultException e){
			logger.warn("No results to the query executed :"+e.getMessage());
		}
		entityManager.close();
		return dataMap;
	}

	@Override
	@Transactional
	public Boolean saveArtifact(ArtifactsMaster artifact) {
		entityManager.merge(artifact);
		return Boolean.TRUE;
	}
	
	@Override
	public Map<String, String> getLobData(){
		String queryStr= "select menu_id, menu_name from ihub_menu ORDER by menu_id";
		Query query = entityManager.createNativeQuery(queryStr);
		Map<String,String> dataMap = new HashMap<String, String>();
		try{
			List dataList = query.getResultList();
			if(dataList!=null && dataList.size()>0){
				for (Object obj : dataList) {
					Object[] dataObjArr = (Object[]) obj;
					if(dataObjArr!=null && dataObjArr.length>0){
						dataMap.put(String.valueOf(Long.valueOf(dataObjArr[0].toString())), (String)dataObjArr[1]);
					}
				}
			}
		}catch(NoResultException e){
			logger.warn("No results to the query executed :"+e.getMessage());
		}
		entityManager.close();
		return dataMap;
	}
	
	@Override
	public Map<String, List<String>> getMapSubType(){
		String queryStr= "select m.menu_id, s.SECTION_ID, s.SECTION_NAME from IZONE.IHUB_MENU m inner join IZONE.IHUB_SECTION s on m.MENU_ID=s.MENU_ID order by m.menu_id";
		Query query = entityManager.createNativeQuery(queryStr);
		Map<String,List<String>> dataMap = new HashMap<String, List<String>>();
		List lstSectionData=null;
		String key = null;
		try{
			List dataList = query.getResultList();
			if(dataList!=null && dataList.size()>0){
				for (Object obj : dataList) {
					lstSectionData = new ArrayList<String>();
					Object[] dataObjArr = (Object[]) obj;
					key = String.valueOf(Long.valueOf(dataObjArr[0].toString()));
					lstSectionData.add(String.valueOf(Long.valueOf(dataObjArr[1].toString())));
					lstSectionData.add((String)dataObjArr[2]);
					dataMap.put(key, lstSectionData);
				}
			}
		}catch(NoResultException e){
			logger.warn("No results to the query executed :"+e.getMessage());
		}
		entityManager.close();
		
		return dataMap;
		
	}
}