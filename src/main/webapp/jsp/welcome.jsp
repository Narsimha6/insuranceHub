<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insurance Hub</title>
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
html {
	background: url(../image/Home_background_img.jpg);
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>
<script>
	function callDashboard() {
		$.ajax({
			type : "GET",
			url : "/iHub/home",
			//data: "name=" + name + "&education=" + education,
			success : function(response) {
				console.log(response);
				// we have the response
				$('#info').html(response);
				$('#name').val('');
				$('#education').val('');
			},
			error : function(e) {
				alert('Error: ' + e);
			}
		});
	}
</script>
</head>
<body style="max-width: 100%;">
	<table width="100%">
		<tr>
			<td>
				<div style="padding-top: 5px;">
					<img src="../image/insurancehub_logo.png" align="left"
						style="padding-top: 0px; padding-left: 20px;"> <img
						src="../image/capgemini logo.png" alt="" align="right"
						style="padding-top: 8px; padding-right: 40px;"> <br> <br>
					<a
						style="color: #FFFFFF; font-family: Avenir; padding-left: 320px; padding-bottom: 10px; padding-top: 10px;"
						target="_blank" rel="nofollow" href="http://www.capgemini.com">About</a><span>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <a
						style="color: #FFFFFF; font-family: Avenir; padding-bottom: 10px; padding-top: 10px;"
						target="_blank" rel="nofollow"
						href="../jsp/IHub_Landing_Page.html">Our Solution</a>

				</div>
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
				<div>
					<span
						style="font-family: Avenir; font-size: 55px; COLOR: #ffffff; padding-left: 50px; padding-bottom: 200px">Capgemini
						Insurance Hub</span> <a href="/iHub/home"> <img
						src="../image/next.png" alt="" align="right"
						style="padding-top: 15px; padding-right: 20px; padding-bottom: 10px;" /></a>

				</div>
			</td>
		</tr>

		<tr>
			<td>
				<div
					style="font-family: Avenir; font-size: 20px; color: #42b6f4; padding-left: 55px;">
					Engage. Explore.</div>
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
			<td align="center">
				<div align="center">

					<a href="https://www.facebook.com/CapgeminiIndia/" target="_blank"
						rel="nofollow"> <img src="../image/facebook_logo.png" />
					</a> <span> &nbsp;&nbsp;&nbsp;&nbsp;</span> <a
						href="https://twitter.com/Capgemini" target="_blank"
						rel="nofollow"> <img src="../image/twitter_logo.png" /></a> <span>
						&nbsp;&nbsp;&nbsp;&nbsp;</span> <a
						href="https://www.linkedin.com/company-beta/157240?pathWildcard=157240"
						target="_blank" rel="nofollow"> <img
						src="../image/linkedin_logo.jpg" /></a> <span>
						&nbsp;&nbsp;&nbsp;&nbsp;</span> <a
						href="https://www.instagram.com/capgemini/ " target="_blank"
						rel="nofollow"> <img src="../image/instgram_logo.png" /></a>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>