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

<script type="text/javascript" src="../../js/jquery-ui.js"></script>
<script>
	function popup(url, x, y) {
		pupWindow = window
				.open(url, 'name', 'width=' + x + ',height=' + y + '');
		pupWindow.focus();
	}
	function showMore(id) {
		if (document.getElementById(id).style.display == 'none')
			document.getElementById(id).style.display = 'block';
		else
			document.getElementById(id).style.display = 'none';
	}

	function showMoreWorldsReports(id) {
		if (document.getElementById(id).style.display == 'none')
			document.getElementById(id).style.display = 'block';
		else
			document.getElementById(id).style.display = 'none';

	}
	function showLessWorldsReports(id) {
		document.getElementById(id).style.display = 'none';
	}
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
</style>
</head>
<body style="text-align: center;">
	<table width="100%">

		<tr>
			<td
				style="background-image: url(../../image/header_image.jpg); background-size: 100%; background-repeat: no-repeat;">
				<div>
					<img src="../../image/insurancehub_logo.png" align="left"
						style="padding-top: 3px; padding-left: 20px;"> <img
						src="../../image/capgemini logo.png" alt="" align="right"
						style="padding-top: 3px; padding-right: 40px;"> <br> <br>
					<br> <a
						style="color: #FFFFFF; font-family: Avenir; padding-left: 220px;"
						target="_blank" rel="nofollow" href="http://www.capgemini.com">About</a><span>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <a
						style="color: #FFFFFF; font-family: Avenir;"
						_blank" rel="nofollow" href="http://www.capgemini.com">Our
						Solution</a>

				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div>&nbsp;</div>
			</td>
		</tr>
	</table>
	<table width="82%">
		<tr>
			<td>
				<div style="padding-left: 260px;">
					<ul class="breadcrumb">
						<li><a href="http://localhost:8080/iHub">Home</a></li>
						<li class="active">Health</li>
					</ul>
				</div>

			</td>
		</tr>
		<tr>
			<td>
				<div class="fullWidth" style="padding-left: 260px;">
					<div id="featureCarousel">
						<div class="touchslider">
							<div class="touchslider-viewport"
								style="overflow: hidden; height: 350px; position: relative;">
								<div
									style="position: absolute; left: -996000px; height: 350px; width: 100000px;">
									<!-- Implementation of ordering of featured image inside slider By Iffort 03-Jan-2017 -->
									<div class="touchslider-item"
										style="position: absolute; left: -10000px;">
										<ul class="featuredItem articleFeature">
											<li class="featuredImg"><figure>
													<a
														href="http://www.lonelyplanet.in/articles/14018/dubai-airport-launches-the-worlds-fastest-free-airport-wi-fi">
														<img
														src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/Dubai_International_Airport_Concourse_A_Duty_Free-copy-750x350.jpg"
														title="" alt="" class="heroFeature">
													</a>
												</figure>
												<div class="imageInfo">
													<div class="infoWrap bgFade">
														<span class="info icon-ts_info"></span>
														<div class="opfade">
															<p class="description"></p>
															<p class="location"></p>
															<p class="author">
																<strong>Photographer: </strong>Wikipedia/èŒ¶å£º å‘¨ from
																Narita, Chiba, Japan/CC BY-SA 2.0
															</p>
														</div>
													</div>
												</div></li>
											<li class="featuredContent cards"><span class="arrow"></span>
												<article>
													<h3>Dubai Airport launches the worldâ€™s fastest free
														airport Wi-Fi</h3>
													<p>Killing time in an airport can be tedious, but Dubai
														International has just found a way to keep travellers
														entertained by launching the worldâ€™s fastest free
														airport Wi-Fi connection. The new service â€“ called
														WOW-Fi â€“ will provide millions ofâ€¦</p>
												</article>
												<div class="view">
													<div class="button orange angle">
														<a class="btn-whiteMain"
															href="http://www.lonelyplanet.in/articles/14018/dubai-airport-launches-the-worlds-fastest-free-airport-wi-fi">

															<span class="btn btn--linkblue btn--medium">Read
																More</span>
														</a>
													</div>
												</div></li>
										</ul>
										<!-- /.featuredItem -->
									</div>
									<!-- /.touchslider-item -->
									<div class="touchslider-item"
										style="position: absolute; left: -10000px;">
										<ul class="featuredItem articleFeature">
											<li class="featuredImg"><figure>
													<a
														href="http://www.lonelyplanet.in/articles/14005/mumbais-best-health-cafes">
														<img
														src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/IMG_9869-copy-750x350.jpg"
														title="" alt="" class="heroFeature">
													</a>
												</figure>
												<div class="imageInfo">
													<div class="infoWrap bgFade">
														<span class="info icon-ts_info"></span>
														<div class="opfade">
															<p class="description"></p>
															<p class="location"></p>
															<p class="author">
																<strong>Photographer: </strong>Bombay Salad Co.
															</p>
														</div>
													</div>
												</div></li>
											<li class="featuredContent cards"><span class="arrow"></span>
												<article>
													<h3>Mumbaiâ€™s best health cafes</h3>
													<p>This is the day and age when diets are evolving and
														foods are trending. People are gluten-free, vegan,
														lactose-free, refined sugar-free, nut-free (no pun
														intended) and old terms like vegetarian and non-vegetarian
														are outdated. We bring to you a listâ€¦</p>
												</article>
												<div class="view">
													<div class="button orange angle">
														<a class="btn-whiteMain"
															href="http://www.lonelyplanet.in/articles/14005/mumbais-best-health-cafes">

															<span class="btn btn--linkblue btn--medium">Read
																More</span>
														</a>
													</div>
												</div></li>
										</ul>
										<!-- /.featuredItem -->
									</div>
									<!-- /.touchslider-item -->
									<div class="touchslider-item"
										style="position: absolute; left: 996000px;">
										<ul class="featuredItem articleFeature">
											<li class="featuredImg"><figure>
													<a
														href="http://www.lonelyplanet.in/articles/13975/in-pics-hola-mohalla-celebrations-in-punjab">
														<img
														src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/man-leaps-to-safety-from-the-speeding-horse-2-750x350.jpg"
														title="" alt="" class="heroFeature">
													</a>
												</figure>
												<div class="imageInfo">
													<div class="infoWrap bgFade">
														<span class="info icon-ts_info"></span>
														<div class="opfade">
															<p class="description"></p>
															<p class="location"></p>
															<p class="author">
																<strong>Photographer: </strong>Abhishek Hajela
															</p>
														</div>
													</div>
												</div></li>
											<li class="featuredContent cards"><span class="arrow"></span>
												<article>
													<h3>In Pics: Hola Mohalla celebrations in Punjab</h3>
													<p>An unusual twist to Holi is the festival of Hola
														Mohalla celebrated at Anandpur Sahib in Punjab. An annual
														Sikh festival held a day after Holi, it has the drama, the
														sweat and the incredible colours that Indian festivals
														areâ€¦</p>
												</article>
												<div class="view">
													<div class="button orange angle">
														<a class="btn-whiteMain"
															href="http://www.lonelyplanet.in/articles/13975/in-pics-hola-mohalla-celebrations-in-punjab">

															<span class="btn btn--linkblue btn--medium">Read
																More</span>
														</a>
													</div>
												</div></li>
										</ul>
										<!-- /.featuredItem -->
									</div>
									<!-- /.touchslider-item -->
									<div class="touchslider-item"
										style="position: absolute; left: -10000px;">
										<ul class="featuredItem articleFeature">
											<li class="featuredImg"><figure>
													<a
														href="http://www.lonelyplanet.in/articles/13955/a-new-exhibition-at-the-colosseum-in-rome">
														<img
														src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/shutterstock_433413835-copy-750x350.jpg"
														title="" alt="" class="heroFeature">
													</a>
												</figure>
												<div class="imageInfo">
													<div class="infoWrap bgFade">
														<span class="info icon-ts_info"></span>
														<div class="opfade">
															<p class="description"></p>
															<p class="location"></p>
															<p class="author">
																<strong>Photographer: </strong>Â©prochasson
																frederic/Shutterstock
															</p>
														</div>
													</div>
												</div></li>
											<li class="featuredContent cards"><span class="arrow"></span>
												<article>
													<h3>A new exhibition at the Colosseum in Rome</h3>
													<p>A new exhibition at the Colosseum in Rome will take
														travellers through the lesser-known history of the
														cityâ€™s most iconic attraction. â€œColosseo
														unâ€™iconaâ€�, or â€œColosseum, an iconâ€�, opens on 8
														March on the middle floor of the amphitheatre. It runsâ€¦</p>
												</article>
												<div class="view">
													<div class="button orange angle">
														<a class="btn-whiteMain"
															href="http://www.lonelyplanet.in/articles/13955/a-new-exhibition-at-the-colosseum-in-rome">

															<span class="btn btn--linkblue btn--medium">Read
																More</span>
														</a>
													</div>
												</div></li>
										</ul>
										<!-- /.featuredItem -->
									</div>
									<!-- /.touchslider-item -->
									<div class="touchslider-item"
										style="position: absolute; left: -10000px;">
										<ul class="featuredItem articleFeature">
											<li class="featuredImg"><figure>
													<a
														href="http://www.lonelyplanet.in/articles/13917/in-pics-holi-trail-in-north-india">
														<img
														src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-750x350.jpg"
														title="" alt="" class="heroFeature">
													</a>
												</figure>
												<div class="imageInfo">
													<div class="infoWrap bgFade">
														<span class="info icon-ts_info"></span>
														<div class="opfade">
															<p class="description"></p>
															<p class="location"></p>
															<p class="author">
																<strong>Photographer: </strong>Abhishek Hajela
															</p>
														</div>
													</div>
												</div></li>
											<li class="featuredContent cards"><span class="arrow"></span>
												<article>
													<h3>In Pics: Holi trail in North India</h3>
													<p>For years I kept wondering which is that one
														particular festival captures the sheer essence, excitement
														and enthusiasm of the festivities that take place in
														India. This question led me to go on the Holi trail in
														North India lastâ€¦</p>
												</article>
												<div class="view">
													<div class="button orange angle">
														<a class="btn-whiteMain"
															href="http://www.lonelyplanet.in/articles/13917/in-pics-holi-trail-in-north-india">

															<span class="btn btn--linkblue btn--medium">Read
																More</span>
														</a>
													</div>
												</div></li>
										</ul>
										<!-- /.featuredItem -->
									</div>
									<!-- /.touchslider-item -->
									<div class="touchslider-item"
										style="position: absolute; left: -10000px;">
										<ul class="featuredItem articleFeature">
											<li class="featuredImg"><figure>
													<a
														href="http://www.lonelyplanet.in/articles/4868/holi-celebrations-in-varanasi-india">
														<img
														src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/BW528a70845114f-copy-750x350.jpg"
														title="" alt="" class="heroFeature">
													</a>
												</figure>
												<div class="imageInfo">
													<div class="infoWrap bgFade">
														<span class="info icon-ts_info"></span>
														<div class="opfade">
															<p class="description"></p>
															<p class="location"></p>
															<p class="author">
																<strong>Photographer: </strong>Â©Porus Khareghat/Lonely
																Planet
															</p>
														</div>
													</div>
												</div></li>
											<li class="featuredContent cards"><span class="arrow"></span>
												<article>
													<h3>Holi celebrations in Varanasi, India</h3>
													<p>As nervous as this may make you feel, celebrating
														Holi in the holy city of Varanasi is something that should
														make you throw caution to the wind and book your tickets!
														Menacing, threatening, ruthless are words that one often
														hearsâ€¦</p>
												</article>
												<div class="view">
													<div class="button orange angle">
														<a class="btn-whiteMain"
															href="http://www.lonelyplanet.in/articles/4868/holi-celebrations-in-varanasi-india">

															<span class="btn btn--linkblue btn--medium">Read
																More</span>
														</a>
													</div>
												</div></li>
										</ul>
										<!-- /.featuredItem -->
									</div>
									<!-- /.touchslider-item -->
									<div class="touchslider-item"
										style="position: absolute; left: -10000px;">
										<ul class="featuredItem articleFeature">
											<li class="featuredImg"><figure>
													<a
														href="http://www.lonelyplanet.in/articles/13895/the-indian-festival-calendar-march-april-2017">
														<img
														src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/GettyRF_555748445-1-copy-750x350.jpg"
														title="" alt="" class="heroFeature">
													</a>
												</figure>
												<div class="imageInfo">
													<div class="infoWrap bgFade">
														<span class="info icon-ts_info"></span>
														<div class="opfade">
															<p class="description"></p>
															<p class="location"></p>
															<p class="author">
																<strong>Photographer: </strong>Â©Nigel Killeen/Getty
																Images
															</p>
														</div>
													</div>
												</div></li>
											<li class="featuredContent cards"><span class="arrow"></span>
												<article>
													<h3>The Indian festival calendar: March â€“ April 2017</h3>
													<p>As the curtains come down on winter, itâ€™s time for
														the festivals that bring in the joys of spring. The coming
														months unfold an unusual fare of events from the Matho
														Nagrang monastery celebrations in Leh to the grand
														Arattupuzhaâ€¦</p>
												</article>
												<div class="view">
													<div class="button orange angle">
														<a class="btn-whiteMain"
															href="http://www.lonelyplanet.in/articles/13895/the-indian-festival-calendar-march-april-2017">

															<span class="btn btn--linkblue btn--medium">Read
																More</span>
														</a>
													</div>
												</div></li>
										</ul>
										<!-- /.featuredItem -->
									</div>
									<!-- /.touchslider-item -->
								</div>
							</div>

							<div id="ts-prevnext" class="featuredNav">
								<span class="touchslider-prev"></span> <span
									class="touchslider-next"></span>
							</div>

							<div id="ts-nav" class="featuredNav">
								<span class="touchslider-nav-item">1</span> <span
									class="touchslider-nav-item">2</span> <span
									class="touchslider-nav-item touchslider-nav-item-current">3</span>
								<span class="touchslider-nav-item">4</span> <span
									class="touchslider-nav-item">5</span> <span
									class="touchslider-nav-item">6</span> <span
									class="touchslider-nav-item">7</span> <span
									class="touchslider-nav-item">8</span> <span
									class="touchslider-nav-item last">9</span>
							</div>

						</div>
					</div>
					<!-- /#featureCarousel -->
				</div>
			</td>
		</tr>
	</table>
	<c:if test="${not empty artifactDataMap}">
		<div class="hpivideos outer phSlide">
			<c:forEach var="data" items="${artifactDataMap}">
				<div class="related">
					<table style="width: 100%; text-align: center;">
						<tr>
							<td
								style="color: black; text-align: left; margin-left: 15px; width: 30%; padding-left: 260px;">${data.key}</td>
							<td style="width: 50%;">&nbsp;</td>
							<td style="text-align: right; width: 20%; padding-right: 35px"
								onclick="showMoreWorldsReports('me_part2')"></td>
						</tr>
						<tr>
							<td><hr width="40%" align="left"
									style="border-top: 5px solid #01DF01; margin-left: 245px;"></td>
						</tr>
					</table>
					<c:forEach var="listValue" items="${data.value}">
						<article
							class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
							style="display: inline-block;">
							<div class="card__mask">
								<a class=""
									href="javascript:popup('http://localhost:8080/iHub/getArtifact/${listValue.artifactId}')">
									<figure class="card__figure">
										<img width="192" height="185"
											src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/man-leaps-to-safety-from-the-speeding-horse-2-192x185.jpg"
											class="cardImg"
											alt="man leaps to safety from the speeding horse 2">
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
</body>
</html>