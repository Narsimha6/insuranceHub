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
<link href="${context}/css/Style.css" rel="stylesheet" type="text/css" />
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
	
	min-height: auto;
	min-width: 950px;
	max-width: 2000px;
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
	font-family: avenir65
}

td {
	font-family: avenir45;
}
</style>
</head>
<body>
	<table style="width: 100%; padding-top: 10px;">

		<tr>
			<!--  <td align="left"><br> <a style="color: #FFFFFF; font-family: Avenir; padding-bottom: 10px; padding-top: 10px;padding-left: 58px ;font-size: 13px" href="${context}/jsp/ContactUS.jsp">About</a></td>-->
			<td align="right" width="30%"><img src="${context}/image/capgemini logo.png" style="padding-right: 1%;margin-top: 12px"></td>
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
			<td colspan="3" headers="10%">
				
					<img src="${context}/image/insurancehub_logo.png"style="padding-left: 20px; padding-bottom: 10px;"  />
					<!--  <span
						style="font-size: 55px; COLOR: #ffffff; padding-left: 50px; padding-bottom: 200px;font-weight: normal;">Capgemini
						Insurance Hub</span>

					  <a href="/iHub/jsp/IHub_Landing_Page.html"> -->

					<a href="${context}/home"><img src="${context}/image/next.png"
						alt="" align="right"
						style="padding-top: 20px; padding-right: 20px; padding-bottom: 10px;" /></a>

				
			</td>
		</tr>

		<tr>
			<td style="font-size: 20px; color: #42b6f4; padding-left: 55px;font-weight: normal;">Explore.
				Innovate. Co-create</td>

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
				<td colspan="3">
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
				
			</tr>
			<tr>
				<td colspan="3" align="right">
					<span style="bottom: 10px; position: fixed; align: right;"> 
						<a href="mailto:insurancehub.fsgbu@capgemini.com"  rel="nofollow" style="color: #ffffff; postion:fixed">Contact us</a> </span>
				</td>
			</tr>
	</table>
</body>
</html>