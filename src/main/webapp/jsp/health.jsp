<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<title>insurancehub:Health</title>
<link href="${context}/css/Style.css" rel="stylesheet" type="text/css" />
<link href="${context}/css/new-10.css" rel="stylesheet" type="text/css" />
<script language="javascript"
	src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
<link href="${context}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="${context}/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${context}/js/jquery.touchSlider.js" type="text/javascript"></script>
<script type="text/javascript" src="${context}/js/jquery.smartmenus.js"></script>
<script type="text/javascript" src="${context}/js/jquery-1.12.4.js"></script>
<script src="${context}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${context}/js/jssor.slider-22.2.16.mini.js"
	type="text/javascript"></script>
<script src="${context}/js/Corosal_New.js" type="text/javascript"></script>

<script type="text/javascript" src="${context}/js/jquery-ui.js"></script>
<script>
	function popup(url, x, y) {
		pupWindow = window
				.open(url, 'name', 'width=' + x + ',height=' + y + '');
		pupWindow.focus();
	}
	function showMoreWorldsReports(id1, id2, id3) {
		document.getElementById(id1).style.display = 'block';
		document.getElementById(id2).style.display = 'none';
		document.getElementById(id3).style.display = 'block';

	}
	function showLessWorldsReports(id1, id2, id3) {
		document.getElementById(id1).style.display = 'none';
		document.getElementById(id2).style.display = 'block';
		document.getElementById(id3).style.display = 'none';

	}
	function scrollWin() {
		window.scrollTo(0, 100);
	}
</script>
<style>
.carousel-inner {
	background-color: #eee	;
}

.carousel-caption {
	font-size: 1em;
	right: 0%;
	left: 66%;
	top: 0%;
	bottom: 0%;
	text-shadow: none;
	background-color: #fff;
}

.carousel-indicators {
	font-size: 2em;
	bottom: -1%;
	text-align: right;
	text-shadow: none;
}

@font-face {
	font-family: avenir65;
	src: url(${context}/css/fonts/regular/avenir65.ttf) format('truetype');
}

@font-face {
	font-family: avenir45;
	src: url(${context}/css/fonts/regular/avenir45.ttf) format('truetype');
}

span {
	font-family: Avenir;
	font-size:16px;
	color: #3b444f;
	font-weight:600;
}

p {
	font-family: avenir45;
	font-size:12px;
	color: #67747c;
}


.carousel-indicators .active{
	margin:0;width:12px;height:12px;
	background-color:#33ff9f
}

.carousel-caption .left {
	text-align :left;
}
</style>
</head>
<body>
	<div class="header">
		<img src="${context}/image/insurancehub_logo.png" align="left"
			style="padding-left: 20px;"> <img
			src="${context}/image/capgemini_logo.png"
			style="padding-top: 25px; padding-right: 40px;" align="right">
	</div>

	<div
		style="width: 56%; margin: auto; background-color: #f5f5f5; margin-top: 2px; overflow: hidden; min-width: 865px;">
		<div>
			<ul class="breadcrumb">
				<li><a href="${context}/home">Home</a></li>
				<li class="active">Health</li>
			</ul>
		</div>
		
		<!--  Start of Carsoual Scroll images  -->
		<div class="container" style="width:850px; height: 300px; margin-bottom:20px;">
		<!--The main div for carousel-->
		<div id="carousel-demo" class="carousel slide" data-ride="carousel" data-interval="5000">
			<!-- Indicators -->
		<ol class="carousel-indicators">
				<li data-target="#carousel-demo" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-demo" data-slide-to="1"></li>
			</ol>

			<!-- Sliding images statring here -->
			<div class="carousel-inner">
				<div class="item active">
					<a
						href="javascript:popup('${context}/getArtifact/74', 900, 700)">
						<img width="70%" src="${context}/image/Scroll_images/WARM.png"  />
					<div class="carousel-caption">
						<h3 >W.A.R.M</h3>
						<p class="left" >Gamified solution using IoT devices to consolidate data to  keep track of individual's health and wellness</p>
					</div>
					</a>
				</div>
				<div class="item">
					<a
						href="javascript:popup('${context}/getArtifact/57', 900, 700)">
						<img width="70%" src="${context}/image/Scroll_images/Fraud.png"  />
					<div class="carousel-caption">
						<h3>Fraud Analytics</h3>
						<p class="left"> Fraud Analytics</p>
					</div>
					</a>
				</div>
				
		</div>
			<!-- Next / Previous controls here -->
			<a class="left carousel-control" href="#carousel-demo"
				data-slide="prev"> <span class="icon-prev"></span>
			</a> 
			<a class="right carousel-control" href="#carousel-demo"
				data-slide="next"> <span class="icon-next"></span>
			</a>
		
		</div>
	</div> <!--  End of Carsoual Scroll Images -->
		
		

		<!--  Start of Artifacts  -->

		<c:if test="${not empty artifactDataMap}">
			<div class="hpivideos outer phSlide">
				<c:forEach var="data" items="${artifactDataMap}">
					<div class="related">
						<span> &nbsp;</span> <span
							style="color: black; font-size: 20px; text-align: left;margin-top:20px;">${data.key}</span>
							<hr width="${data.value[0].sectionWidth}" align="left" style="border-top: 5px solid #33ff9f; margin-left:7px;margin-bottom:20px; margin-top:0px;">
						<c:forEach var="listValue" items="${data.value}" begin="0" end="4">
							<article
								class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
								style="display: inline-block;">
								<div class="card__mask">
									<a
										href="javascript:popup('${context}/getArtifact/${listValue.artifactId}', 900, 700)">
										<figure class="card__figure">
											<img width="192" height="185"
												src="${listValue.artifactImageURL}" class="cardImg">
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
						<div id="div_${data.key}_MoreData" style="display: none;">
							<c:forEach var="listValue" items="${data.value}" begin="5">
								<article
									class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
									style="display: inline-block;">
									<div class="card__mask">
										<a
											href="javascript:popup('${context}/getArtifact/${listValue.artifactId}', 900, 700)">
											<figure class="card__figure">
												<img width="192" height="185"
													src="${listValue.artifactImageURL}" class="cardImg">
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
						<c:forEach var="listValue" items="${data.key}">
							<c:if test="${(data.value).size()>5}">
								<div id="div_${data.key}_ShowMore" align="right">
									<span style="padding-right: 10px;"
										onclick="showMoreWorldsReports('div_${data.key}_MoreData','div_${data.key}_ShowMore','div_${data.key}_Less')">Show
										all <img src="${context}/image/asc_icon.png" class="cardImg"
										alt="Show all">
									</span>
								</div>
								<div id="div_${data.key}_Less" align="right"
									style="display: none;">
									<span style="padding-right: 10px;"
										onclick="showLessWorldsReports('div_${data.key}_MoreData','div_${data.key}_ShowMore','div_${data.key}_Less')">Show
										Less <img src="${context}/image/dec_icon.png" class="cardImg"
										alt="Show less">
									</span>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</c:if>
	</div>
	<div style="text-align: right;">
		<span style="width: 100%; padding-right: 203px"><a href="#"
			class="back-to-top"><img style="width: 50px; height: 50px"
				src="${context}/image/btop.png"></a></span>
	</div>
</body>
</html>