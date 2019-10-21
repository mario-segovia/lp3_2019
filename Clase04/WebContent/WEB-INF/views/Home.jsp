<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<spring:url value="/resources" var="urlPublic" />

<link href="${urlPublic}/css/myStyle.css" rel="stylesheet">

<link rel="stylesheet" href="${urlPublic}/bootstrap/css/bootstrap.min.css">
<title>Home</title>

</head>
<body>

<h1>Lista de Peliculas</h1>

          <ul> <c:forEach items="${ peliculas }" var="pelicula">
			<li>${pelicula.toString()}</li>
			</c:forEach></ul>

</body>
</html>