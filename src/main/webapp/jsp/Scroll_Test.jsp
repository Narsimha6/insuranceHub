<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<html>
<head>
<title>Bootstrap Carousel</title>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<style>
h3 {
	font-size: 20px;
	font-family: Verdana;
	color: #515151;
}

img {
	width: 40%;
}

.carousel-inner {
	background-color: #C1E0FF;
}

.carousel-caption {
	font-size: 2em;
	right: 10%;
	left: 60%;
	top: 30%;
	bottom: 30%;
	text-align: left;
	text-shadow: none;
}

.carousel-indicators {
	font-size: 2em;
	bottom: -1%;
	text-align: left;
	text-shadow: none;
}
</style>

</head>
<body>
	<div class="container">
		<h1>Bootstrap Carousel demo</h1>
		<!--The main div for carousel-->
		<div id="carousel-demo" class="carousel slide" data-ride="carousel"
			data-interval="2000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-demo" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-demo" data-slide-to="1"></li>
				<li data-target="#carousel-demo" data-slide-to="2"></li>
				<li data-target="#carousel-demo" data-slide-to="3"></li>
			</ol>

			<!-- Sliding images statring here -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="${context}/image/Scroll_images/Front Office Benchmarking Tool1.jpg" alt="01">
					<div class="carousel-caption">
						<h3>front office </h3>
						<p>Content for 01 image</p>
					</div>
				</div>
				<div class="item">
					<img src="${context}/image/Scroll_images/Agent Portal1.png" alt="02">
					<div class="carousel-caption">
						<h3>02 slide</h3>
						<p>Content for 02 image</p>
					</div>
				</div>
				<div class="item">
					<img src="${context}/image/Scroll_images/Appeals Greivances1.png" alt="03">
					<div class="carousel-caption">
						<h3>03 slide</h3>
						<p>Content for 03 image</p>
					</div>
				</div>
				<div class="item">
					<img src="${context}/image/Scroll_images/Insurance on the go.jpg" alt="04">
					<div class="carousel-caption">
						<h3>04 slide</h3>
						<p>Content for 04 image</p>
					</div>
				</div>

			</div>

			<!-- Next / Previous controls here -->
			<a class="left carousel-control" href="#carousel-demo"
				data-slide="prev"> <span class="icon-prev"></span>
			</a> <a class="right carousel-control" href="#carousel-demo"
				data-slide="next"> <span class="icon-next"></span>
			</a>
			<div></div>
		</div>


	</div>
</body>
</html>