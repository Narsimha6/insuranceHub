<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>insurancehub:Dashboard</title>
<link href="../css/Style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<title>Insurance Hub</title>
<script language="javascript"
	src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
<script language="javascript"
	src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript" src="../js/jquery-loader.js"></script>
<script type="text/javascript" src="../js/jssor.js"></script>
<script type="text/javascript" src="../js/jssor.slider.js"></script>

<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="../js/jquery.smartmenus.js"></script>

<script src="../js/javascript.js" type="text/javascript"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">
html, body {
	background: url(../image/iHub_Landing_Page.jpg);
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;
	width: 100%;
	height: auto;
	min-width: 950px;
	max-width:2000px;
}
</style>
<script>
function loadCategoryPage(screenName) {
    $.ajax({
    type: "GET",
    url: "/iHub/getCategoryContents/"+screenName,
    //data: "name=" + name + "&education=" + education,
    success: function(response){
    	console.log(response)
    // we have the response
    $('#info').html(response);
    $('#name').val('');
    $('#education').val('');
    },
    error: function(e){
    alert('Error: ' + e);
    }
    });
    }
    


    </script>
</head>
<body>
	<table width="100%" style="padding-top: 10px;">

		<tr>
			<td width="30%"><img src="../image/insurancehub_logo.png"
				align="left" style="padding-top: 0px; padding-left: 20px; postion:static;"></td>
			<td align="right" width="30%"><img
				src="../image/capgemini logo.png" alt="" align="right"
				style="padding-top: 8px; padding-right: 40px; postion:static;"></td>
		</tr>

		<tr>
			<td>
				<div>&nbsp;</div>
			</td>
		</tr>
	</table>
	
	<table>
		<tr>
			<td>
					
				<span> &nbsp;</span>
			</td>
			<td>
				 <div style="padding-left: 100px;  postion:static;">
				 	 <a href="/iHub/getCategoryContents/LIFE_PENSION"><img src="../image/life&pension_image.png" align="left" style="padding-right:3px;padding-left:00px;"/></a>	
				 </div>
			</td>
			<td>
				
				<div style="padding-left: 90px;  postion:static;">
				  <a href="/iHub/getCategoryContents/HEALTH">	<img src="../image/health_image.png" align="middle" style="padding-top:20px;padding-left:90px; margin-bottom:5px;"/></a>	
				 </div>
			
			</td>
			
		</tr>
		
		
		<tr>
			<td>
				<span >
					 <a href="/iHub"> <img src="../image/previous.png" alt="" align="left" style="padding-top:15px;  postion:fixed;"/></a>
				</span>	
			</td>
			
			<td>
				<span> &nbsp;</span>
			</td>
			
			<td>
				<span> &nbsp;</span>
			</td>
			
		</tr>
		
		<tr>
			<td>
					
				<span> &nbsp;</span>
			</td>
			<td>
				 <div style="padding-left: 80px;">
				 <!-- <a href="/iHub/getCategoryContents/PROPERTY_CASUALITY"> -->
				  <!-- <a href="../jsp/PandC_Page.html"> -->
				  <a href="/iHub/getCategoryContents/PROPERTY_CASUALITY">	<img src="../image/property&casualty_image.png" align="left" style="padding-right:3px;padding-left:0px;padding-top:25px; postion:static;"/></a>	
				 </div>
			</td>
			<td>
				
				<div style="padding-left: 70px;">
				 <a href="/iHub/getCategoryContents/KNOWLEDGE_HUB"> <img src="../image/knowledgehub_image.png" align="middle" style="padding-bottom:4px;padding-left:70px;  postion:static;  margin-bottom:5px;"/></a>	
				 </div>
			
			</td>
			
		</tr>
		<tr>
		
		</table>
		<table width="100%">
		<tr>
			<td>
				<div>&nbsp;</div>
			</td>
		</tr>
		<tr>
			<td>
				<div>&nbsp;</div>
			</td>
		</tr>
		<tr>
			<td>
				<div>&nbsp;</div>
			</td>
		</tr>
		
		<tr>
			<td align="center" >
				<div align="center" style="postion:static;">
					
					<a href="https://www.facebook.com/CapgeminiIndia/"
							target="_blank" rel="nofollow"> <img src="../image/facebook_logo.png"/> </a>
					<span> &nbsp;&nbsp;&nbsp;&nbsp;</span>
					<a href="https://twitter.com/Capgemini"
							 target="_blank" rel="nofollow"> <img src="../image/twitter_logo.png"/></a>
					<span> &nbsp;&nbsp;&nbsp;&nbsp;</span>
					<a href="https://www.linkedin.com/company-beta/157240?pathWildcard=157240"
							target="_blank" rel="nofollow"> <img src="../image/linkedin_logo.jpg"/></a>
					<span> &nbsp;&nbsp;&nbsp;&nbsp;</span>
					<a href="https://www.instagram.com/capgemini/ "
							target="_blank" rel="nofollow"> <img src="../image/instgram_logo.png"/></a>
				</div>
			</td>
		</tr>
	
	</table>
</body>
</html>