<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/resources" var="urlPublic"/>
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/bootstrap.min.css">
<title>Datos del Formulario</title>
</head>
<body>
	<h1>Datos del formulario</h1>
	
		<ul> 
			<li>Nombre = ${nombre}</li>
			<li>Correo = ${correo}</li>
			<li>Mensaje = ${mensaje}</li>
			<li><a href="formulario.html">Volver al Formulario</a></li>
		</ul>

</body>
</html>