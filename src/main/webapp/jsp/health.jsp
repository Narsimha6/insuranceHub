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

</head>
<body>
	<div class="header">
		<img src="${context}/image/insurancehub_logo.png" align="left"
			style="padding-left: 20px;"> <img
			src="${context}/image/capgemini logo.png"
			style="padding-top: 25px; padding-right: 40px;" align="right">
	</div>

	<div
		style="width: 67%; margin: auto; background-color: #EDEDED; margin-top: 2px; overflow: hidden; min-width: 950px;">
		<div>
			<ul class="breadcrumb">
				<li><a href="${context}/home">Home</a></li>
				<li class="active">Health</li>
			</ul>
		</div>
		<div>&nbsp;</div>
		<div id="jssor_html5_AdWords"
			style="position: relative; margin: auto; top: 0px; left: 0px; overflow: auto; visibility; width: 950px; height: 350px;">
			<!-- Loading Screen -->
			<div data-u="loading"
				style="position: absolute; top: 0px; left: 0px; background-color: rgba(0, 0, 0, 0.7);">
				<div
					style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
				<div
					style="position: absolute; display: block; background: url('${context}/image/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
			</div>
			<div data-u="slides"
				style="cursor: default; position: relative; margin: auto; top: 0px; left: 0px; overflow: hidden; visibility; width: 950px; height: 350px;">
				<div >
					<a
						href="javascript:popup('${context}/getArtifact/697', 900, 700)">
						<img data-u="image"
						src="${context}/image/Scroll_images/Appeals Greivances.png" />
					</a>
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

		<!--  Start of Artifacts  -->

		<c:if test="${not empty artifactDataMap}">
			<div class="hpivideos outer phSlide">
				<c:forEach var="data" items="${artifactDataMap}">
					<div class="related">
						<span> &nbsp;</span> <span
							style="color: black; font-size: 20px; text-align: left;">${data.key}</span>

						<div>
							<hr width="${data.value[0].sectionWidth}" align="left" style="border-top: 5px solid #33ff9f;">
						</div>
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