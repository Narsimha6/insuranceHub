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
	min-width: 100%;
	max-width: 100%;
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
	<table style="padding-top: 10px; width: 100%">
		<tr>
			<td width="100%" colspan="2"><img
				src="/iHub/image/insurancehub_logo.png"
				style="padding-left: 2%; padding-top: 10px; width: 350px; height: 88px"></td>
			<td><img src="/iHub/image/capgemini_logo_white.png"
				style="margin-top: 30px; margin-right: 30px; width: 250px; height: 50px"></td>
		</tr>
		<tr>
			<td colspan="3">
				<div style="width: 100%">
					<table style="width: 100%">
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td><a href="${context}"> <img
									src="${context}/image/previous_arrow.png" alt="" align="left"
									style="padding-top: 7px; postion: fixed; margin-left: 10px;" /></a>
							</td>
							<td>
								<table style="width: 40%;">


									<tr>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>

									<tr>
										<td style="width: 45%">&nbsp;</td>
										<td style="width: 15%"><a
											href="${context}/getCategoryContents/PROPERTY_CASUALITY"><img
												src="${context}/image/property&casualty_image.png" /></a></td>
										<td style="width: 15%">&nbsp;</td>
										<td style="width: 25%"><a
											href="${context}/getCategoryContents/LIFE_PENSION"> <img
												style="padding-bottom: 25px"
												src="${context}/image/life&pension_image.png" /></a></td>
										<td style="width: 10%">&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><a href="${context}/getCategoryContents/HEALTH"><img
												style="height: 100%; width: 99%; margin-left: 4px;"
												src="${context}/image/health_image.png" /></a></td>
										<td>&nbsp;</td>
										<td><a
											href="${context}/getCategoryContents/THOUGHT_LEADERSHIP">
												<img style="padding-bottom: 6px;"
												src="${context}/image/knowledgehub_image.png" />
										</a></td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td colspan="4" align="center"
								style="position: static; padding-top: 5px; vertical-align: bottom;">
								<div>
									<span style="font-size: 15px; color: #fff;"> Got an
										idea?</span> <a href="mailto:insurancehub.fssbu@capgemini.com"> <span
										style="font-size: 15px; color: #42b6f4;"> Let us Know </span>
									</a>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>