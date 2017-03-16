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

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion();
	});
</script>
</head>
<body>
	<div class="page-top">
		
		<ul class="social-nav">
			<li><a href="https://www.facebook.com/CapgeminiIndia/"
				class="icon facebook" target="_blank" rel="nofollow"
				onclick="setAnalyticsApp('iHub:home','Facebook')">Facebook</a></li>
			<li><a href="https://twitter.com/Capgemini" class="icon twitter"
				target="_blank" rel="nofollow"
				onclick="setAnalyticsApp('iHub:home','twitter')">twitter</a></li>
			<li><a
				href="https://www.linkedin.com/company-beta/157240?pathWildcard=157240"
				class="icon linkedin" target="_blank" rel="nofollow"
				onclick="setAnalyticsApp('iHome','linked-in')">linked-in</a>
			</li>
		</ul>
		<ul class="utility-menu">
			<li class="account-nav"><a class="icon-a"
				onclick="setAnalytics('iHub:home','Login')"
				href=""
				target="new">Login</a></li>
		</ul>
	</div>
	<%@include file="../jsp/InsuranceHub_Home.html"%>
	<div id="accordion"></div>
</body>

</html>
