<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>insurancehub</title>
<style type="text/css">
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
<%@ include file="/jsp/InsuranceHub_Home.jsp" %>
<%-- <jsp:include page="${context}/jsp/InsuranceHub_Home.jsp"></jsp:include> --%>
</body>

</html>