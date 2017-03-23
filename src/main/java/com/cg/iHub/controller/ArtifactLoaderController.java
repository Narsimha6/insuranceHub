package com.cg.iHub.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cg.iHub.model.ArtifactsMaster;
import com.cg.iHub.service.ArtifactService;

/**
 * Artifacts controller
 * @author Jillella Narasimha Rao
 *
 */
@RestController
@ComponentScan("com.cg.iHub")
@EnableAutoConfiguration
public class ArtifactLoaderController {

	static Logger logger = Logger.getLogger(ArtifactLoaderController.class);

	@Autowired
	private ArtifactService artifactsService;

	@RequestMapping(value="/iHub/getArtifact/{artifactId}",method = RequestMethod.GET)
	public void  getArtifact(HttpServletResponse response, @PathVariable Long artifactId) {
		ArtifactsMaster artifact = artifactsService.getAllArtifacts(artifactId);
		if(artifact==null ) return;
		String artifactType = artifact.getArtifactType();

		response.setContentType(getContentType(artifactType));

		try {
			response.getOutputStream().write(artifact.getArtifactData());
		} catch (Exception e) {
			logger.debug("Request could not be completed at this moment. Please try again.:"+e.getMessage());
			throw new IllegalStateException(e);
		}
	}

	@RequestMapping(value="/iHub/getCategoryContents/{categoryName}",method = RequestMethod.GET)
    public List<ArtifactsMaster> getCategoryContents(@PathVariable String categoryName) {
		return artifactsService.getCategoryContents(categoryName);
    }
	/**
	 * To get content type by artifact type
	 * @param artifactType
	 * @return
	 */
	private String getContentType(String artifactType){
		String contentType = null;
		if(artifactType!=null && (artifactType.equals(".doc")||artifactType.equals(".docx")))
			contentType = "application/msword";

		if(artifactType!=null && artifactType.equals(".pdf"))
			contentType = "application/pdf";

		if(artifactType!=null && (artifactType.equals(".ppt")|| artifactType.equals(".pptx")))
			contentType = "application/vnd.ms-powerpoint";

		if(artifactType!=null && artifactType.equals(".zip"))
			contentType = "application/zip";
		return contentType;
	}
}