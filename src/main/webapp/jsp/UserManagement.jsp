
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- <jsp:include page="headerNew.jsp"></jsp:include> --%>
<!DOCTYPE html>
<!-- saved from url=(0014)about:internet -->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <title>ATS Data Central - User Management</title> -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.ico" >
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/adminDashboard.css">
<link rel="stylesheet" type="text/css"
	href="css/jquery.datatables.min.css">
<link rel="stylesheet" type="text/css"
	href="css/buttons.datatables.min.css">
<link rel="stylesheet" type="text/css"
	href="css/font_awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="css/select.datatables.min.css">
<link rel="stylesheet" type="text/css" href="css/customDataTable.css">
<link rel="stylesheet" type="text/css" href="css/custom.css">
<link type="text/css" rel="stylesheet"
	href="css/jquery.faloading.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.datatable.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript"
	src="lib/bootstrap-3.3.6-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.faloading-0.2.min.js"></script>
<style>
.container{
height:auto;
}
#userTable_wrapper{
	margin-bottom:10px;
}
.tab-content{
	padding: 20px;
	margin-top: 10px;
}
.request-container{
	width:97%
}
</style>
</head>
<body>
<script>
var userDetailsList = "";
if('${userList}' != '')
{
	userDetailsList = JSON.parse('${userList}');
}
var loggedUserId = '${userId}';
var applicationIdList = "";// [{"value":"1", "text":"App1"}, {"value":"2", "text":"App2"}, {"value":"3", "text":"App3"}];
if('${applicationIdList}' != '')
{
	applicationIdList = JSON.parse('${applicationIdList}');
}
</script>
<div class="loaderDiv" style='display: none;'></div>
	<main class="main-style">
	<div class="container request-container">
		<div class="request-tab">
			<div class="main-content">
				<div class="request-header">
					<div class="page-heading">
						<!--<i class="fa fa-cogs"></i>
							  <h1>My Requests</h1>-->
						<!-- <ol class="breadcrumb">
							<li id="breadHome">Home</li>
							<li>Admin</li>
							<li class="active">User Management</li>
						</ol> -->
					</div>
				</div>

				<!-- Tab panes -->
				<div class="tab-content">
					<div id="lblMsg" class="lable-title hide-class"><span id="txtUserName">User</span> modified successfully</div>
					<table id="userTable" class="customDataTable requestsTable" cellspacing="0"
						width="100%">
						<thead>
							<tr>
								<th></th>
								<th>User Id</th>
								<th>Full Name</th>
								<th>Email</th>
								<th>Application Id</th>
								<th>Is Active</th>
								<th>First Login</th>
								<th>Last Login</th>
								<th>Role</th>
								<th>Password</th>
								<th></th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	</main>
	<!-- <footer class="footer home-footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<div class="nav-links">
						<div class="copyright">
							<span>&copy;2016 CSAA Insurance Group.</span>
							
						</div>
						<ul>
							<li><a href="./governance#gettingStarted">About Us</a></li>
							<li><a href="./contactus">Contact Us</a></li>
							<li><a href="javascript:void(0)">Site Map</a></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</footer> -->
	<script src="js/landing.js"></script>
	<script type="text/javascript" src="${context}/js/userMgmt.js"></script>
	<script type="text/javascript" src="js/search-common.js"></script>
	<script type="text/javascript" src="js/stickyfooter.js"></script>
</body>
</html>