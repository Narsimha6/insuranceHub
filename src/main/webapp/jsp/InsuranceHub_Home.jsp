<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>insurancehub</title>
<script language="javascript"
	src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
<script language="javascript"
	src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link href="${context}/css/style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${context}/js/jquery-loader.js"></script>
<script type="text/javascript" src="${context}/js/jssor.js"></script>
<script type="text/javascript" src="${context}/js/jssor.slider.js"></script>

<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="${context}/js/jquery.smartmenus.js"></script>

<script src="${context}/js/javascript.js" type="text/javascript"></script>
<script>
function popup(url, x, y) {
	pupWindow = window
			.open(url, 'name', 'width=' + x + ',height=' + y + '');
	pupWindow.focus();
}
</script>
<style type="text/css">
html, body {
	background: url(${context}/image/Home_background_img.jpg);
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;
	width: 100%;
	height: auto;
	background-color: #EDEDED;
	min-height: auto;
	min-width: 950px;
	max-width: 2000px;
}

@font-face {
	font-family: avenir65;
	src: url('/css/fonts/regular/avenir65.ttf') format('truetype');
}

@font-face {
	font-family: avenir45;
	src: url('/css/fonts/regular/avenir45.ttf') format('truetype');
}

div {
	font-family: avenir65
}
td{
	font-family: avenir45;
}

</style>
</head>
<body >
	<table  style="width:100%;padding-top:10px;">
		<tr >
				<td width="30%">
					<img src="${context}/image/insurancehub_logo.png" align="left" style="padding-top:0px;padding-left:20px;">
			</td>
			<td align="center" >
				<br>
				<a style="color: #FFFFFF; font-family:Avenir; padding-bottom:10px; padding-top:10px;"  href="${context}/jsp/ContactUS.jsp">About</a>
			</td>
			<td align="right" width="30%">
					<img src="${context}/image/capgemini logo.png" alt="" align="right" style="padding-top:8px;padding-right:40px;">
			</td>
		</tr>

		<tr>
			<td>
				<div> &nbsp;</div>
			</td>
			
		</tr>
		
		<tr>
			<td>
				<div> &nbsp;</div>
			</td>
			
		</tr>
		
		<tr>
			<td>
				<div> &nbsp;</div>
			</td>
			
		</tr>
		
		<tr>
			<td>
				<div> &nbsp;</div>
			</td>
			
		</tr>
		<tr>
			<td>
				<div> &nbsp;</div>
			</td>
			
		</tr>
		<tr>
			<td>
				<div> &nbsp;</div>
			</td>
			
		</tr>
		<tr>
			<td>
				<div> &nbsp;</div>
			</td>
			
		</tr>
		<tr>
			<td colspan="3">
				<div >
					<span style=" font-size:50px; COLOR: #ffffff; padding-left:50px; padding-bottom:200px" >Capgemini Insurance Hub</span>
					
				<!--   <a href="/iHub/jsp/IHub_Landing_Page.html"> -->	
					 
				<a href="${context}/home"><img src="${context}/image/next.png" alt="" align="right" style="padding-top:15px;padding-right:20px;padding-bottom:10px;"/></a>
					 
				</div>	
			</td>	
		</tr>		

		<tr>
			<td style="font-size:20px; color:#42b6f4; padding-left:55px;">Engage. Explore.</td>
			
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
			<td>
				<div>&nbsp;</div>
			</td>
			
		</tr>
		<tr>
			<td>
				<div>&nbsp;</div>
			</td>
			
		</tr>
		<tr >
			<td>
				<div>&nbsp;</div>
			</td>
			
		</tr>
		<tr >
			<td>
				<div>&nbsp;</div>
			</td>
			
		</tr>
		<tr >
			<td>
				<div>&nbsp;</div>
			</td>
			
		</tr>
		<tr >
			<td>
				<div>&nbsp;</div>
			</td>
			
		</tr>
		
		<tr>
			<td align="center" colspan="3">
				<div  style="bottom: 10px ;position: fixed; align: center; padding-left: 45%">
					
					<a href="https://www.facebook.com/CapgeminiIndia/"
							target="_blank" rel="nofollow"> <img src="${context}/image/facebook_logo.png"/> </a>
					<span> &nbsp;&nbsp;&nbsp;&nbsp;</span>
					<a href="https://twitter.com/Capgemini"
							 target="_blank" rel="nofollow"> <img src="${context}/image/twitter_logo.png"/></a>
					<span> &nbsp;&nbsp;&nbsp;&nbsp;</span>
					<a href="https://www.linkedin.com/company-beta/157240?pathWildcard=157240"
							target="_blank" rel="nofollow"> <img src="${context}/image/linkedin_logo.jpg"/></a>
					<span> &nbsp;&nbsp;&nbsp;&nbsp;</span>
					<a href="https://www.instagram.com/capgemini/ "
							target="_blank" rel="nofollow"> <img src="${context}/image/instgram_logo.png"/></a>
				</div>
			</td>
		</tr>
		<!-- <tr>
			<td align="center" colspan="3" style="color: #ffffff;">
				&#169;&nbsp;Capgemini Confidential. Best viewed in Chrome.
			</td>
		</tr> -->
	</table>
</body>
</html>