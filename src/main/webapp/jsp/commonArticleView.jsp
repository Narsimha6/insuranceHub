<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script language="javascript"
	src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
<script language="javascript"
	src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<%-- <link href="${context}/css/Style.css" rel="stylesheet" type="text/css" /> --%>
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
div.header {
	background-image: url(../image/header_image.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	height: 105px;
	position: relative;
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

/* .textpanel {
	position: relative;
} */

.textpanel img {
	display: block;
}

.textpanel table {
	position: relative;
	bottom: 120px;
	right: 127px;
	height: 192px;
	width: 612px;
	background-color: #FFC000;
</style>
</head>
<body>
	<table style="width: 100%;">
		<tr>
			<td>
				<div class="header">
					<img src="${context}/image/insurancehub_logo.png"  align="left"
						style="padding-left: 20px;"> <img
						src="${context}/image/capgemini logo.png"
						style="padding-top: 25px; padding-right: 40px;" align="right">
				</div>
				<div style="margin: auto; background-color: #f5f5f5; margin-top: 2px; overflow:hidden; width: 66%;position: relative;"   >
					<div class="textpanel" align="center">
						<img style="height: 304px; width:100%;"
							src="/image/insurance_solution_large2.jpg">
							<table style="padding: 2px;border-style: solid;border-color: white; margin-left: 268px" >
								<tr>
									<td style="width: 10%" >&nbsp;</td>
									<td style="width: 80%" >
										<div style="color: #FFFFFF">Property & Casualty</div>
										<hr style="height:3px;border:none;color:#ffffff;background-color:#ffffff;">
									</td>
									<td style="width: 10%" >&nbsp;</td>
								</tr>
								<tr>
									<td style="width: 10%" >&nbsp;</td>
									<td style="width: 80%" >
										<div style="color: #FFFFFF;font-size: 31px;">Artificial Intelligence in the housing industry</div>
									</td>
									<td style="width: 10%" >&nbsp;</td>
								</tr>
								<tr>
									<td style="width: 10%" >&nbsp;</td>
									<td style="width: 80%" >
										<hr style="height:3px;border:none;color:#ffffff;background-color:#ffffff;width: 263px;margin-left: 0px">
										<div style="color: #FFFFFF">Angshuman Sharma<br>Senior Consultant,Financial Serivices</div>
										<hr style="height:3px;border:none;color:#ffffff;background-color:#ffffff;width: 263px;margin-left: 0px">
									</td>
									<td style="width: 10%" >&nbsp;</td>
								</tr>
							</table>
						<!-- <textarea disabled="disabled" style="color: white;text-align: left;" >Property & Casualty</textarea> -->
						</div>
					<div style="height: 200px">&nbsp;</div>
					
					</div>
			</td>
		</tr>
	</table>
</body>
</html>
