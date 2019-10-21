<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Tipos New</title>
</head>
<body>
	<div class="container">
		<h3>Nuevo Tipo</h3>
		<form:form action="create" method="post" modelAttribute="tipo">
			<label for="nombre">Nombre:</label>
			<form:input id="nombre" name="nombre" path="nombre"
				class="form-control" />
			<br />
			<label for="active">Estado:</label>
			<form:select path="active">
				<form:option selected="selected" value="1">Activo</form:option>
				<form:option value="0">Inactivo</form:option>

			</form:select>
			<br />
			<button type="submit" class="btn">GUARDAR</button>

		</form:form>

	</div>
</body>
</html>