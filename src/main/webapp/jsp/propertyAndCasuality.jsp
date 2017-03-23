<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<link href="../../css/Style.css" rel="stylesheet" type="text/css" />
<link href="../../css/new-10.css" rel="stylesheet" type="text/css" />
<script language="javascript"
	src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
<script src="../../js/jquery.touchSlider.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/jquery.smartmenus.js"></script>
<script type="text/javascript" src="../../js/jquery-1.12.4.js"></script>
<script src="../../js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../../js/jssor.slider-22.2.16.mini.js" type="text/javascript"></script>
<script src="../../js/Corosal_New.js" type="text/javascript"></script>

<script type="text/javascript" src="../../js/jquery-ui.js"></script>
<script>
	function popup(url, x, y) {
		pupWindow = window
				.open(url, 'name', 'width=' + x + ',height=' + y + '');
		pupWindow.focus();
	}
	function showMoreWorldsReports(id1, id2) {
		document.getElementById(id2).style.display = 'none';
		if (document.getElementById(id1).style.display == 'none')
			document.getElementById(id1).style.display = 'block';
		else
			document.getElementById(id1).style.display = 'none';

	}
	function showLessWorldsReports(id1, id2) {
		document.getElementById(id2).style.display = 'block';
		document.getElementById(id1).style.display = 'none';
	}
	function scrollWin() {
		window.scrollTo(0, 100);
	}
	jQuery(document).ready(function() {

	});
</script>
<style type="text/css">
ul.breadcrumb {
	padding: 10px 16px;
	list-style: none;
	background-color: #eee;
	font-size: 17px;
}

ul.breadcrumb li {
	display: inline;
}

ul.breadcrumb li+li:before {
	padding: 8px;
	color: black;
	content: "/\00a0";
}

ul.breadcrumb li a {
	color: #0275d8;
	text-decoration: none;
}

ul.breadcrumb li a:hover {
	color: #01447e;
	text-decoration: underline;
}

tr.border_bottom td {
	border-bottom: 1pt solid black;
}
</style>
</head>
<body style="text-align: center;">
	<table style="width: 100%;">
		<tr>
			<td
				style="background-image: url(../../image/header_image.jpg); background-size: 100%; background-repeat: no-repeat;">
				<div>
					<img src="../../image/insurancehub_logo.png" align="left"
						style="padding-top: 0px; padding-left: 20px;"> <img
						src="../../image/capgemini logo.png" alt="" align="right"
						style="padding-top: 8px; padding-right: 40px;"> <br> <br>
					<a
						style="color: #FFFFFF; font-family: Avenir; padding-left: 350px; padding-bottom: 10px; padding-top: 10px;"
						target="_blank" rel="nofollow" href="http://www.capgemini.com">About</a>
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
				<table width="82%">
					<tr>
						<td>
							<div style="padding-left: 242px;">
								<ul class="breadcrumb">
									<li><a href="http://localhost:8080/iHub">Home</a></li>
									<li class="active">Property & Casualty</li>
								</ul>
							</div>

						</td>
					</tr>
					<tr>
						<td>
							<div id="jssor_html5_AdWords"
								style="position: relative; margin: 0 auto; top: 0px; left: 120px; width: 800px; height: 350px; overflow: hidden; visibility: hidden;">
								<!-- Loading Screen -->
								<div data-u="loading"
									style="position: absolute; top: 0px; left: 0px; background-color: rgba(0, 0, 0, 0.7);">
									<div
										style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
									<div
										style="position: absolute; display: block; background: url('../../img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
								</div>
								<div data-u="slides"
									style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 350px; overflow: hidden;">
									<div>
										<img data-u="image"
											src="../../img/Homeowners_Solution_Slide1.PNG" />
									</div>
									<div data-p="68.75" data-po="70% 50%">
										<img data-u="image" src="../../img/Traverse_slide2.PNG" />
									</div>
									<div data-p="68.75">
										<img data-u="image" src="../../img/Insights_Slide3.PNG" />
									</div>
								</div>
								<!-- Bullet Navigator -->
								<table style="width: 100%">
									<tr>
										<td>
											<div data-u="navigator" class="jssorb05" data-autocenter="1">
												<!-- bullet navigator item prototype -->
												<div data-u="prototype"></div>
											</div>
										</td>
									</tr>
								</table>
								<!-- Arrow Navigator -->
								<span data-u="arrowleft" class="jssora12l"
									style="top: 0px; left: 0px; width: 30px; height: 46px;"
									data-autocenter="2"></span> <span data-u="arrowright"
									class="jssora12r"
									style="top: 0px; right: 0px; width: 30px; height: 46px;"
									data-autocenter="2"></span>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="text-align: center;"><c:if
					test="${not empty artifactDataMap}">
					<div class="hpivideos outer phSlide">
						<c:forEach var="data" items="${artifactDataMap}">
							<div class="related">
								<table style="width: 100%; text-align: center;">
									<tr>
										<td
											style="color: black; text-align: left; margin-left: 15px; width: 30%; padding-left: 240px;">${data.key}</td>
										<td style="width: 70%;">&nbsp;</td>
									</tr>
									<tr>
										<td><hr width="40%" align="left"
												style="border-top: 5px solid #FFFF00; margin-left: 239px;"></td>
									</tr>
								</table>
								<c:forEach var="listValue" items="${data.value}">
									<article
										class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
										style="display: inline-block;">
										<div class="card__mask">
											<a
												href="javascript:popup('http://localhost:8080/iHub/getArtifact/${listValue.artifactId}')">
												<figure class="card__figure">
													<img width="192" height="185"
														src="../../image/common/Agent Portal.jpg" class="cardImg"
														alt="Agent Portal">
												</figure>
												<div class="card__content">
													<h1 class="card__content__title">${listValue.artifactName}</h1>
													<div class="card__content__desc">
														<p>${listValue.artifactDescription}</p>
													</div>
												</div>
											</a>
										</div>
									</article>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</c:if>
				<table>
					<tr style="text-align: right;">
						<td style="width: 100%; padding-right: 203px"><a href="#"
							class="back-to-top"><img style="width: 50px; height: 50px"
								src="../../img/btop.png"></a></td>
					</tr>
				</table>
</body>
</html>