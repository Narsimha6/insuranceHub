<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>insurancehub:Dashboard</title>
<link href="${context}/css/Style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<title>Insurance Hub</title>
<script language="javascript"
	src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
<script language="javascript"
	src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript" src="${context}/js/jquery-loader.js"></script>
<script type="text/javascript" src="${context}/js/jssor.js"></script>
<script type="text/javascript" src="${context}/js/jssor.slider.js"></script>

<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="/js/jquery.smartmenus.js"></script>

<script src="/js/javascript.js" type="text/javascript"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">
html, body {
	background: url(${context}/image/iHub_Landing_Page.jpg);
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
    url: "${context}/getCategoryContents/"+screenName,
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
			<td width="30%"><img src="${context}/image/insurancehub_logo.png"style="padding-left: 7%;padding-top: 10px"  ></td>
			<td align="left"><br>&nbsp;</td>
			<td align="right" width="30%"><img src="${context}/image/capgemini logo.png" style="padding-right: 10%;margin-top: 12px"></td>
		</tr>
		<tr>
			<td>
					
				<span> &nbsp;</span>
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
				   <a href="${context}/getCategoryContents/PROPERTY_CASUALITY">	<img src="${context}/image/property&casualty_image.png" align="left" style="padding-right:3px;padding-left:0px;padding-top:0px; postion:static;"/></a>	
				 </div>
			</td>
			<td>
				
				<div style="padding-left: 90px;  postion:static;">
				  <a href="${context}/getCategoryContents/HEALTH">	<img src="${context}/image/health_image.png" align="middle" style="padding-top:27px;padding-left:70px; margin-bottom:35px;"/></a>	
				 </div>
			
			</td>
		</tr>
		<tr>
			<td>
				<span >
					 <a href="${context}"> <img src="${context}/image/previous.png" alt="" align="left" style="padding-top:15px;  postion:fixed; margin-left:10px;"/></a>
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
				 <!-- <a href="${context}/getCategoryContents/PROPERTY_CASUALITY"> -->
				  <!-- <a href="${context}/jsp/PandC_Page.html"> -->
				 <a href="${context}/getCategoryContents/LIFE_PENSION"><img src="${context}/image/life&pension_image.png" align="left" style="padding-right:3px;padding-left:32px; position:statics; padding-bottom:21px;"/></a>
				 </div>
			</td>
			<td>
				<div style="padding-left: 70px;">
				 <a href="${context}/getCategoryContents/THOUGHT_LEADERSHIP"> <img src="${context}/image/knowledgehub_image.png" align="middle" style="padding-bottom:12px;padding-left:85px;  postion:static;  margin-bottom:5px;"/></a>	
				 </div>
			</td>
		</tr>
		<tr>
		</table>
		<table style="width: 100%">
			<!-- <tr>
			<td align="center" colspan="3">
				<div
					style="bottom: 10px; position: fixed; align: center; padding-left: 45%">

					<a href="https://www.facebook.com/CapgeminiIndia/" target="_blank"
						rel="nofollow"> <img src="${context}/image/facebook_logo.png" style="width: 11%;height: 11%" />
					</a> <span> &nbsp;&nbsp;&nbsp;</span> <a
						href="https://twitter.com/Capgemini" target="_blank"
						rel="nofollow"> <img src="${context}/image/twitter_logo.png" style="width: 11%;height: 11%"/></a>
					<span> &nbsp;&nbsp;&nbsp;</span> <a
						href="https://www.linkedin.com/company-beta/157240?pathWildcard=157240"
						target="_blank" rel="nofollow"> <img
						src="${context}/image/linkedin_logo.jpg" style="width: 11%;height: 11%" /></a> <span>
						&nbsp;&nbsp;&nbsp;</span> <a
						href="https://www.instagram.com/capgemini/ " target="_blank"
						rel="nofollow"> <img src="${context}/image/instgram_logo.png" style="width: 11%;height: 11%"/></a>
				</div>
			</td>
		</tr> -->
		<tr>
			<td>
					
				<span> &nbsp;</span>
			</td>
		</tr>
		<tr>
			<td>
					
				<span> &nbsp;</span>
			</td>
		</tr>
		<tr>
			<td>
					
				<span> &nbsp;</span>
			</td>
		</tr>
		 <tr>
			<td align="center" colspan="3">
				<div style="color: #ffffff; font-size:18px;">
				<a href="mailto:insurancehub.fssbu@capgemini.com" style="color: #ffffff;" >  
					<img src="${context}/image/common/Mail.png" /> &nbsp; Contact Us  
				</a>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>