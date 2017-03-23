package com.cg.iHub.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cg.iHub.model.ArtifactsMaster;
import com.cg.iHub.service.ArtifactService;
import com.cg.iHub.utils.CategoryENUM;

/**
 * Artifacts controller
 * @author Jillella Narasimha Rao
 *
 */
@Controller
@ComponentScan("com.cg.iHub")
@EnableAutoConfiguration
public class ArtifactLoaderController {

	static Logger logger = Logger.getLogger(ArtifactLoaderController.class);

	@Autowired
	private ArtifactService artifactsService;

	@RequestMapping(value="/iHub/home",method = RequestMethod.GET)
	public ModelAndView home(Map<String, Object> model) {
		ModelAndView modelAndView = new ModelAndView("dashboard");
		modelAndView.addObject("dashboard", "Welcome to ProjectOne!");
		return modelAndView;
	}

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
	public ModelAndView getCategoryContents(@PathVariable String categoryName) {
		Map<String, List<ArtifactsMaster>> artifactDataMap = artifactsService.getCategoryContents(categoryName);
		ModelAndView modelAndView = null;
		if(artifactDataMap.isEmpty()){
			return modelAndView;
		}
			
		if(categoryName.equals(CategoryENUM.LIFE_PENSION.getDescription())){
			modelAndView = new ModelAndView("lifeAndPension");
		} else if(categoryName.equals(CategoryENUM.HEALTH.getDescription())){
			modelAndView = new ModelAndView("health");
		} else if(categoryName.equals(CategoryENUM.PROPERTY_CASUALITY.getDescription())){
			modelAndView = new ModelAndView("propertyAndCasuality");
		} else if(categoryName.equals(CategoryENUM.KNOWLEDGE_HUB.getDescription())){
			modelAndView = new ModelAndView("knowledgeHub");
		}
		modelAndView.addObject("artifactDataMap", artifactDataMap);
		modelAndView.addObject("sectionNames", artifactDataMap.keySet());
		return modelAndView;
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