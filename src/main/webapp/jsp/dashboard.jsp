<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="XA-UA-Compitable" content="IE=edge">
<title>insurancehub:Dashboard</title>
<link href="${context}/css/new-10.css" rel="stylesheet" type="text/css" />
<style type="text/css">
html, body {
	background: url('${context}/image/common/Second screen.jpg');
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;
	width: 100%;
	height: auto;
	min-width: 950px;
	max-width:2000px;
}

@font-face {
	font-family: avenir65;
	src: url(${context}/css/fonts/regular/avenir65.ttf) format('truetype');
}

@font-face {
	font-family: avenir45;
	src: url(${context}/css/fonts/regular/avenir45.ttf) format('truetype');
}

div {
	font-family: avenir65;
}

span {
	font-family: avenir45;
}
</style>

</head>
<body>
	<table width="100%" style="padding-top: 10px;">

		<tr>
			<td width="100%" colspan="2"><img
				src="/iHub/image/insurancehub_logo.png"
				style="padding-left: 2%; padding-top: 10px;width: 350px;height:88px"></td>
			<!--  <td align="left"><br> <a style="color: #FFFFFF; font-family: Avenir; padding-bottom: 10px; padding-top: 10px;padding-left: 58px ;font-size: 13px" href="/iHub/jsp/ContactUS.jsp">About</a></td>-->
			<td colspan="2"><img src="/iHub/image/capgemini_logo.png"
				style="margin-top: 9px; margin-right: 30px; width:250px;height:50px"></td>
		</tr>
		<tr>
			<td>
					
				<span> &nbsp;</span>
			</td>
		</tr>
	</table>
				<div> &nbsp;</div>
				<div> &nbsp;</div>
				<div> &nbsp;</div>
				<div> &nbsp;</div>
	
	<table width="95%">
		<tr>
		
			<td colspan="2" width="56%">
				
				<div >
					 <a href="${context}"> <img src="${context}/image/previous_arrow.png" alt="" align="left" style="margin-bottom:85px;"/></a>
				</div>	
				
				
			</td>
			<td colspan="1" align="center">
				 <div>
				   <a href="${context}/getCategoryContents/PROPERTY_CASUALITY">	<img src="${context}/image/property&casualty_image.png" align="middle" /></a>	
				</div>
				<div> &nbsp;</div>
				<div> &nbsp;</div>
				<div>
				  <a href="${context}/getCategoryContents/HEALTH"><img src="${context}/image/health_image.png" align="middle" style="padding-top:10px;"/></a>
				 </div>
				<div> &nbsp;</div>
				<div> &nbsp;</div>
			</td>
				
		
			<td colspan="1" align="center">	
				
				 <div>
				
				   <a href="${context}/getCategoryContents/LIFE_PENSION"><img src="${context}/image/life&pension_image.png" align="middle" style="padding-top:10px;" /></a>
				  </div>
				  <div> &nbsp;</div>
				  <div> &nbsp;</div>
				  <div> 	
				 <a href="${context}/getCategoryContents/THOUGHT_LEADERSHIP"> <img src="${context}/image/knowledgehub_image.png" align="middle" style="padding-bottom:28px;"/></a>	
				 </div>
				 <div> &nbsp;</div>
				<div> &nbsp;</div>
				</td>
			</tr>
		</table>
		<table style="width: 100%">
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
			<td>
					
				<span> &nbsp;</span>
			</td>
	
		 <tr>
			<td colspan="4" align="center" style="position: static; padding-top:5px;">
				<div>
					<a href="mailto:insurancehub.fssbu@capgemini.com"> <span
						class="btn btn--linkblue btn--medium"> Contact Us </span>
					</a>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>