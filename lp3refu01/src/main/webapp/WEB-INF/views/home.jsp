<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src= "webjars/jquery/3.0.0/jquery.min.js"></script>
<script src= "webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
	<jsp:include page="menu.jsp"></jsp:include>
</nav>

<div class="container">
<h1>${content}</h1>
</div>


</body>
</html>