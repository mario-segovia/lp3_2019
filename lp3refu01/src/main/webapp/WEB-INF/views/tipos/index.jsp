<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tipos Index</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Soy Tipo Index</h1>
	<table class="table table-striped">
		<tr>
			<th>id</th>
			<th>Nombre</th>
			<th>Estado</th>
			<td colspan=2><a href="new" class="btn btn-primary">Nuevo</a></td>
		</tr>

		<c:forEach items="${tipolista}" var="tipo">
			<tr>
				<td>${tipo.id}</td>
				<td>${tipo.nombre}</td>
				<td><c:choose>
						<c:when test="${tipo.active eq '1'}">
							<span class="badge badge-success">Activo</span>
						</c:when>
						<c:otherwise>
							<span class="badge badge-danger">Inactivo</span>
						</c:otherwise>
					</c:choose></td>
				<td><a href="edit/${tipo.id}" class="btn btn-warning">Editar</a></td>
				<td><a href="delete/${tipo.id}" class="btn btn-danger">Borrar</a>
				</td>
			</tr>

		</c:forEach>

	</table>
</body>
</html>