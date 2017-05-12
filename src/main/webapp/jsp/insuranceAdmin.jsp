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
<script type="text/javascript" src="${context}/js/insuranceAdmin.js"></script>
<script type="text/javascript" src="${context}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${context}/js/userMgmt.js"></script>
<link href="${context}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${context}/css/bootstrap-responsive.min.css"rel="stylesheet" type="text/css" />
<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="${context}/js/jquery.smartmenus.js"></script>

<script src="${context}/js/javascript.js" type="text/javascript"></script>
<script>
	function popup(url, x, y) {
		pupWindow = window
				.open(url, 'name', 'width=' + x + ',height=' + y + '');
		pupWindow.focus();
	}
	
	function getArtifactData(value){
		
		$.ajax({
			type : 'POST',
			url : '${context}/getAdminContents',
			cache : false,
			success : function(response) {
				hideLoader();
				$(tr).find('#btnAutoSubmitRow').addClass('hide-class');
				$(tr).find('#btnAutoEditRow').removeClass('hide-class');
				$("#lblMsg").removeClass('hide-class');
				$(".edit-control").prop('disabled',false);
				$(".edit-control").removeClass('btn-disabled');
			},
			error:function(response){
			}
		});
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
}
</style>
</head>
<body>
	<div style="width: 100%;">
		<div class="header">
			<img src="${context}/image/insurancehub_logo.png" align="left" style="padding-left: 20px;"> <img src="${context}/image/capgemini logo.png" style="padding-top: 25px; padding-right: 40px;" align="right">
		</div>
		<div>
			<div class="bs-example">
				<ul class="nav nav-pills">
					<c:forEach var="menuData" items="${mapLobData}">
						<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">${menuData.value}<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<c:forEach var="sectionData" items="${mapSubType}">
									<c:forEach var="listValue" items="${sectionData.value}">
										<c:if test="${not empty listValue.menuId}">
											<c:if test="${listValue.menuId == menuData.key}">
												<li value="${listValue.sectionId}" onclick="getArtifactData(this.value)"><a href="#" >${listValue.sectionName}</a></li>
											</c:if>		
										</c:if>
									</c:forEach>
								</c:forEach>
							</ul>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div style="width: 100%">
			<div>Artifact Details</div>
			<table style="width: 100%;" border="1">
				<thead>
					<tr>
						<th width="5%">Artifact Id</th>
						<th width="20%">Artifact Name</th>
						<th width="20%"> Artifact Comment</th>
						<th width="10%">Active Status</th>
						<th width="10%">Author</th>
						<th width="10%">Author Description</th>
						<th width="10%">HTML Content</th>
						<th width="5%">Sort order</th>
						<th width="10%">Section Name</th>
					</tr>
					<tr>
						<td><input id="artifactId" value="" size="7" disabled="disabled"> </td>
						<td><input id="artifactName" value="" size="35"> </td>
						<td><input id="artifactComment" value="" size="35"> </td>
						<td><input id="activeStatus" value="" size="16"> </td>
						<td><input id="activeStatus" value="" size="16"> </td>
						<td><input id="activeStatus" value="" size="16"> </td>
						<td><input id="activeStatus" value="" size="16"> </td>
						<td><input id="activeStatus" value="" size="7"> </td>
						<td><input id="activeStatus" value="" size="16"> </td>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>
</html>
