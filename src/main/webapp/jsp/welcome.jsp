<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>insurancehub</title>
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
<body>
<%@include file="../jsp/InsuranceHub_Home.html"%>
</body>

</html>