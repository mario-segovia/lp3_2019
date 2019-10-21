<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Saludo 2</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<h1>Hola ${nombre}, espero que estes bien</h1>
</body>
</html>