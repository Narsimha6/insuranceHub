package com.cg.iHub.controller;

public class ArtifactsOpenController 
//extends AbstractController
{/*
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,HttpServletResponse response) throws Exception {
		int artifactID = Integer.parseInt(request.getParameter("artifactName"));
		List<ArtifactsMaster> list = PDFConverter.getArtifactsFromID(request, response, artifactID);
		Iterator<ArtifactsMaster> iter = list.iterator();
		while(iter.hasNext()){
			ArtifactsMaster localArtMaster = iter.next();
			//Blob myPDFBlob = localArtMaster.getArtifact_Data();
			//byte[] myPDFByteArray = myPDFBlob.getBytes(new Long(1), (int)myPDFBlob.length());
			byte[] myPDFByteArray = localArtMaster.getArtifact_Data();
			response.addHeader("Content-Disposition", "inline; filename="+localArtMaster.getArtifact_Name());
			
			if(localArtMaster.getArtifact_Type()!=null && (localArtMaster.getArtifact_Type().equals(".doc")||localArtMaster.getArtifact_Type().equals(".docx")))
				response.setContentType("application/msword");
			
			if(localArtMaster.getArtifact_Type()!=null && localArtMaster.getArtifact_Type().equals(".pdf"))
				response.setContentType("application/pdf");
			
			if(localArtMaster.getArtifact_Type()!=null && (localArtMaster.getArtifact_Type().equals(".ppt")|| localArtMaster.getArtifact_Type().equals(".pptx")))
				response.setContentType("application/vnd.ms-powerpoint");
			
			if(localArtMaster.getArtifact_Type()!=null && localArtMaster.getArtifact_Type().equals(".zip"))
				response.setContentType("application/zip");
			
			response.setContentLength((int)myPDFByteArray.length);
			response.getOutputStream().write(myPDFByteArray,0,myPDFByteArray.length);
			//response.getOutputStream().write(myPDFByteArray.length);

		}
		return null;
	}
*/}
