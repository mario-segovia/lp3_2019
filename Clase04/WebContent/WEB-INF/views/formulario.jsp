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
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/bootstrap.min.css">
<title>Formulario de Carga</title>
</head>
<body>

	<h1> Formulario</h1>
	<form action="datosform.html" method="POST">

            <div>
                <label>Nombre:</label>
                <input type="text" name="nombre">
            </div>

            <div>
                <label>Correo:</label>
                <input type="text" name="correo">
            </div>
            
            <div>
                <label>Mensaje:</label>
                <input type="text" name="mensaje">
            </div>

            <button type="submit">Submit</button>

        </form>
</body>
</html>