package com.cg.iHub.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.iHub.dao.ArtifactsDao;
import com.cg.iHub.model.ArtifactsMaster;
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
		Query query = entityManager.createNativeQuery("SELECT Artifact_Data, Artifact_Type"
				+ ", Artifact_Name from artifacts_master_test where Artifact_ID ='"+artifactId+"'  order by Artifact_ID");
		try{
			Object[] data = (Object[]) query.getSingleResult();
			if(data!=null && data.length>0){
				Object[] dataObjArr = (Object[])data;
				if(dataObjArr!=null && dataObjArr.length>0){
					artifact = new ArtifactsMaster();
					artifact.setArtifactData(dataObjArr[0]!=null?(byte[])dataObjArr[0]:null);
					artifact.setArtifactType(dataObjArr[1]!=null?(String)dataObjArr[1]:null);
					artifact.setArtifactName(dataObjArr[2]!=null?(String)dataObjArr[2]:null);
				}
			}
		}catch(NoResultException e){
			logger.warn("No results to the query executed :"+e.getMessage());
		}
		entityManager.close();
		return artifact;
		//		return artifactsDao.findArtifactById(artifactId);
	}

	@Override
	public List<ArtifactsMaster> getArtifactsByType(String menuType) {
		List<ArtifactsMaster> artifactList = null;
		Query query = entityManager.createNativeQuery("SELECT Artifact_Name, Artifact_Type, SUB_MENU_ID" 
				+" from artifacts_master_test "
				+ "where SUB_MENU_ID ='"+menuType+"'  order by Artifact_ID");
		try{
			List dataList = query.getResultList();
			if(dataList!=null && dataList.size()>0){
				artifactList = new ArrayList<ArtifactsMaster>();
				for (Object obj : dataList) {
					Object[] dataObjArr = (Object[]) obj;
					if(dataObjArr!=null && dataObjArr.length>0){
						ArtifactsMaster artifact = new ArtifactsMaster();
						artifact.setArtifactName(dataObjArr[0]!=null?(String)dataObjArr[0]:null);
						artifact.setArtifactType(dataObjArr[1]!=null?(String)dataObjArr[1]:null);
						artifact.setSubMenuId(dataObjArr[2]!=null?(String)dataObjArr[2]:null);
						artifactList.add(artifact);
					}
				}
			}
		}catch(NoResultException e){
			logger.warn("No results to the query executed :"+e.getMessage());
		}
		entityManager.close();
		return artifactList;
	}
}