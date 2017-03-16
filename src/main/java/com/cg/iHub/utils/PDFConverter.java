package com.cg.iHub.utils;

@SuppressWarnings({"unused", "unchecked"})
public class PDFConverter {/*

	
	private static byte[] artifactContent;
	private static GetSession objGTSession = null;
	private static Session mainSession = null;
	private static HttpSession mainHttpSession = null;

	public static void createPDFFromBlob(byte[] byteArray) {
		try {
			FileWriter fw = new FileWriter("D:\\Users\\aritchat\\Desktop\\ProjectWorkspace\\Izone_09172012\\WebContent\\TempFolder\\temp.pdf");
			BufferedWriter bw = new BufferedWriter(fw);
			for (Byte b : byteArray) {
				bw.write(b);
			}
			bw.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public static ArrayList getArtifacts(int artifactId)
	{  
		 Statement stmt = null;
		 Connection conn = null;
		 ResultSet rs = null;
		 boolean innerJoinCheck = false;
		 ArrayList artifactsMaster = new ArrayList();
		try
		{
			GetSession objGTSession = new GetSession();
		    conn = objGTSession.createSQLConnection();
		    //System.out.println("333333333333333333333333333333333");
	        if(conn !=null)
	        {
	        	//System.out.println("44444444444444444444444444444444");
		    stmt = conn.createStatement();
		    
		    String sql2 = "SELECT Artifact_Data, Artifact_Type, Artifact_Name from artifacts_master_test where Artifact_ID ='"+artifactId+"'  order by Artifact_ID";
		    rs = stmt.executeQuery(sql2);
		   
		    ArrayList artifactMaster = null;
		    while(rs.next())
		    {
		    	artifactMaster = new ArrayList();
		    	artifactMaster.add(rs.getBytes("Artifact_Data"));
		    	artifactMaster.add(rs.getString("Artifact_Type"));
		    	artifactMaster.add(rs.getString("Artifact_Name"));
		    	artifactsMaster.add(artifactMaster);
		    	
		   }
	     }
		}
		catch(Exception e)
		{
			e.getMessage();
		}finally{
			try {
				if(stmt !=null)
					
					stmt.close();
				
				if(conn!=null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		 return artifactsMaster;
	}
	public static List<ArtifactsMaster> getArtifactsFromID(
			HttpServletRequest request, HttpServletResponse response, int artifactID) {
			List<ArtifactsMaster> artifactsList = null;
		try {
			objGTSession = new GetSession();
			mainSession = objGTSession.RetrieveMainSession();
			Criteria cr = mainSession.createCriteria(ArtifactsMaster.class);
			cr.add(Restrictions.like("Artifact_ID", artifactID));
			artifactsList = cr.list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			mainSession.getSessionFactory().close();
			mainSession.close();
		}
		return artifactsList;
	}
	public static List<ArtifactsMaster> getArtifactsFromName(
			HttpServletRequest request, HttpServletResponse response, String artifactName) {
			List<ArtifactsMaster> artifactsList = null;
		try {
			objGTSession = new GetSession();
			mainSession = objGTSession.RetrieveMainSession();
			Criteria cr = mainSession.createCriteria(ArtifactsMaster.class);
			cr.add(Restrictions.like("Artifact_Name", artifactName));
			artifactsList = cr.list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			mainSession.getSessionFactory().close();
			mainSession.close();
		}
		return artifactsList;
	}
*/}