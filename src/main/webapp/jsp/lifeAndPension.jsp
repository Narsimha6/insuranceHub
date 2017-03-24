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
<body>
	<!-- <div w3-include-html="../jsp/Corossal.html"></div> -->
	<table width="100%">

		<tr>
			<td
				style="background-image: url(../image/header_image.jpg); background-size: 100%; background-repeat: no-repeat;">
				<div>
					<img src="../image/insurancehub_logo.png" align="left" style="padding-top:0px;padding-left:20px;">
					<img src="../image/capgemini logo.png" alt="" align="right" style="padding-top:8px;padding-right:40px;">
					<br><br>
					<a style="color: #FFFFFF; font-family:Avenir; padding-left: 350px; padding-bottom:10px; padding-top:10px;" target="_blank" rel="nofollow" href="http://www.capgemini.com">About</a>

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
				<div style="padding-left:260px;">
					<ul class="breadcrumb">
						<li><a href="http://localhost:8080/iHub">Home</a></li>
						<li class="active">Life & Pensions</li>
					</ul>
				</div>

			</td>
		</tr>
		<tr>
			<td>
				<div id="jssor_html5_AdWords" style="position: relative; margin: 0 auto; top: 0px; left: 120px; width: 800px; height: 350px; overflow: hidden; visibility: hidden;">
					<!-- Loading Screen -->
					<div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0, 0, 0, 0.7);">
						<div style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
						<div style="position: absolute; display: block; background: url('../img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
					</div>
					<div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 350px; overflow: hidden;">
						<div>
							<img data-u="image" src="../img/Life - Producer KPI monitor.JPG" />
						</div>
						<div data-p="68.75" data-po="70% 50%">
							<img data-u="image" src="../img/slide2.jpg" />
						</div>
						<div data-p="68.75">
							<img data-u="image" src="../img/slide3.jpg" />
						</div>
					</div>
					<!-- Bullet Navigator -->
					<table style="width: 100%">
						<tr>
							<td> 
								<div data-u="navigator" class="jssorb05"  data-autocenter="1">
									<!-- bullet navigator item prototype -->
									<div data-u="prototype"></div>
								</div>
							</td>
						</tr>
					</table>
					<!-- Arrow Navigator -->
					<span data-u="arrowleft" class="jssora12l" data-autocenter="2"></span>
					<span data-u="arrowright" class="jssora12r" data-autocenter="2"></span>
				</div>
			</td>
		</tr>
	</table>
	<div class="hpivideos outer phSlide">
		<div class="related">
			<table style="width: 100%; text-align: center;">
				<tr>
					<td
						style="color: black; text-align: left; margin-left: 15px; width: 30%; padding-left: 260px;">Front Office</td>
					<td style="width: 50%;">&nbsp;</td>
					<td style="text-align: right; width: 20%; padding-right: 35px"
						onclick="showMoreWorldsReports('fo_part2')"></td>
				</tr>
				<tr>
					<td><hr width="40%" align="left"
							style="border-top: 5px solid #e9258e; margin-left: 245px;"></td>
				</tr>
			</table>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/767')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/man-leaps-to-safety-from-the-speeding-horse-2-192x185.jpg"
						class="cardImg"
						alt="man leaps to safety from the speeding horse 2"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Agent Portal</h1>
						<div class="card__content__desc">
							<p>An unusual twist to Holi is the festival of Hola Mohalla
								celebrated at Anandpur Sahib in Punjab. An annual Sikh festival
								held a day after Holi, it has the drama, the sweat and the
								incredible colours that Indian festivals areÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/773')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2015/03/2353942082_908377384f_b-copy-192x185.jpg"
						class="cardImg" alt="2353942082_908377384f_b copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Front Office Benchmarking
							Tool</h1>
						<div class="card__content__desc">
							<p>When we talk about festivals in India, due attention must
								also be given to the plates and plates of scrumptious food
								available during this time. The riot of colours called Holi, is
								no different. Here we venture a look atÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/774')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/BW528a70845114f-copy-192x185.jpg"
						class="cardImg" alt="COLORFULL HOLI"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Product Wireframe
							Configurator</h1>
						<div class="card__content__desc">
							<p>As nervous as this may make you feel, celebrating Holi in
								the holy city of Varanasi is something that should make you
								throw caution to the wind and book your tickets! Menacing,
								threatening, ruthless are words that one often hearsÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/770')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Insurance Performance
							Dashboard</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/772')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Producer KPI Monitor</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
		</div>

		<!-- Underwriting & Policy Administration  -->
		<div class="related">
			<table style="width: 100%; text-align: center;">
				<tr>
					<td
						style="color: black; text-align: left; margin-left: 15px; width: 30%; padding-left: 260px;">Underwriting & Policy Administration</td>
					<td style="width: 50%;">&nbsp;</td>
					<td style="text-align: right; width: 20%; padding-right: 214px"
						onclick="showMoreWorldsReports('pa_part2')">Show all<img
						src="../img/asc_icon.png" class="cardImg" alt="COLORFULL HOLI"></td>
				</tr>
				<tr>
					<td><hr width="40%" align="left"
							style="border-top: 5px solid #e9258e; margin-left: 245px;"></td>
				</tr>
			</table>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/813')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/man-leaps-to-safety-from-the-speeding-horse-2-192x185.jpg"
						class="cardImg"
						alt="man leaps to safety from the speeding horse 2"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Mobile Solution</h1>
						<div class="card__content__desc">
							<p>An unusual twist to Holi is the festival of Hola Mohalla
								celebrated at Anandpur Sahib in Punjab. An annual Sikh festival
								held a day after Holi, it has the drama, the sweat and the
								incredible colours that Indian festivals areÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/812')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2015/03/2353942082_908377384f_b-copy-192x185.jpg"
						class="cardImg" alt="2353942082_908377384f_b copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Insurance Business Rules
							Management</h1>
						<div class="card__content__desc">
							<p>When we talk about festivals in India, due attention must
								also be given to the plates and plates of scrumptious food
								available during this time. The riot of colours called Holi, is
								no different. Here we venture a look atÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/799')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/BW528a70845114f-copy-192x185.jpg"
						class="cardImg" alt="COLORFULL HOLI"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Guidewire Policy and Billing
							Center Assets</h1>
						<div class="card__content__desc">
							<p>As nervous as this may make you feel, celebrating Holi in
								the holy city of Varanasi is something that should make you
								throw caution to the wind and book your tickets! Menacing,
								threatening, ruthless are words that one often hearsÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/811')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Premium Matching Tool</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/780')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Customer Insight Into Action</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<div id="pa_part2" style="display:none">
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/779')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Forms Factory</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/743')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Guidewire On The Go</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/744')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Homeowners Solution</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/814')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Insurance Insights</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/745')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Traverse - Travel Management
							Solution</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<article
				class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
				style="display: inline-block;">
			<div class="card__mask">
				<a class=""
					href="javascript:popup('http://localhost:8080/iHub/getArtifact/747')">
					<figure class="card__figure"> <img width="192"
						height="185"
						src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
						class="cardImg" alt="_DSC9352-Edit copy"> </figure>
					<div class="card__content">
						<h1 class="card__content__title">Usage Based Insurance (UBI)
							- Automobile Solution</h1>
						<div class="card__content__desc">
							<p>For years I kept wondering which is that one particular
								festival captures the sheer essence, excitement and enthusiasm
								of the festivities that take place in India. This question led
								me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
						</div>
					</div>
				</a>
			</div>
			</article>
			<table style="width: 100%">
					<tr>
						<td style="width: 30%;">&nbsp;</td>
						<td style="width: 50%;">&nbsp;</td>
						<td style="text-align: right; width: 20%; padding-right: 203px"
							onclick="showLessWorldsReports('pa_part2')">Show less<img
							src="../img/dec_icon.png" class="cardImg" alt="COLORFULL HOLI"></td>
					</tr>
				</table>
			</div>
			<!-- Claims Transformation  -->
			<div class="related">
				<table style="width: 100%; text-align: center;">
				<tr>
					<td
						style="color: black; text-align: left; margin-left: 15px; width: 30%; padding-left: 260px;">Claims Transformation</td>
					<td style="width: 50%;">&nbsp;</td>
					<td style="text-align: right; width: 20%; padding-right: 214px"
						onclick="showMoreWorldsReports('ct_part2')">Show all<img
						src="../img/asc_icon.png" class="cardImg" alt="COLORFULL HOLI"></td>
				</tr>
				<tr>
					<td><hr width="40%" align="left"
							style="border-top: 5px solid #e9258e; margin-left: 245px;"></td>
				</tr>
			</table>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/253')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/man-leaps-to-safety-from-the-speeding-horse-2-192x185.jpg"
							class="cardImg"
							alt="man leaps to safety from the speeding horse 2"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Claims Benchmarking</h1>
							<div class="card__content__desc">
								<p>An unusual twist to Holi is the festival of Hola Mohalla
									celebrated at Anandpur Sahib in Punjab. An annual Sikh festival
									held a day after Holi, it has the drama, the sweat and the
									incredible colours that Indian festivals areÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/800')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2015/03/2353942082_908377384f_b-copy-192x185.jpg"
							class="cardImg" alt="2353942082_908377384f_b copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Capgemini Insurance Connect</h1>
							<div class="card__content__desc">
								<p>When we talk about festivals in India, due attention must
									also be given to the plates and plates of scrumptious food
									available during this time. The riot of colours called Holi, is
									no different. Here we venture a look atÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/802')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/BW528a70845114f-copy-192x185.jpg"
							class="cardImg" alt="COLORFULL HOLI"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Claims Analytics and
								Reporting Solution</h1>
							<div class="card__content__desc">
								<p>As nervous as this may make you feel, celebrating Holi in
									the holy city of Varanasi is something that should make you
									throw caution to the wind and book your tickets! Menacing,
									threatening, ruthless are words that one often hearsÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/803')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Claims Data Mart Reporting
								Solution</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/809')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Guidewire Product Assets</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<div id="ct_part2" style="display:none">
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/766')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Claims Solution</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/657')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Guidewire Code Review Tool</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/809')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Guidewire Product Assets</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/810')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Integrated Document
								Management Solution</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/743')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Guidewire On The Go</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/744')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Homeowners Solution</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/814')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Insurance Insights</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/745')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Traverse - Travel
								Management Solution</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastÃ¢â‚¬Â¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<article
					class="wp--article--card card js-card card--article card--tall card--fixed card--standard card--single card--has-img card--no-tags card--has-footer"
					style="display: inline-block;">
				<div class="card__mask">
					<a class=""
						href="javascript:popup('http://localhost:8080/iHub/getArtifact/747')">
						<figure class="card__figure"> <img width="192"
							height="185"
							src="http://www.lonelyplanet.in/wp-content/uploads/2017/03/DSC9352-Edit-copy-192x185.jpg"
							class="cardImg" alt="_DSC9352-Edit copy"> </figure>
						<div class="card__content">
							<h1 class="card__content__title">Usage Based Insurance (UBI)
								- Automobile Solution</h1>
							<div class="card__content__desc">
								<p>For years I kept wondering which is that one particular
									festival captures the sheer essence, excitement and enthusiasm
									of the festivities that take place in India. This question led
									me to go on the Holi trail in North India lastsÂ¦</p>
							</div>
						</div>
					</a>
				</div>
				</article>
				<table style="width: 100%">
					<tr>
						<td style="width: 30%;">&nbsp;</td>
						<td style="width: 50%;">&nbsp;</td>
						<td style="text-align: right; width: 20%; padding-right: 203px"
							onclick="showLessWorldsReports('ct_part2')">Show less<img
							src="../img/dec_icon.png" class="cardImg" alt="COLORFULL HOLI"></td>
					</tr>
				</table>
			</div>
			</div>
		</div>
</body>
</html>