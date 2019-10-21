<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuario Index</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src= "/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src= "/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Lista de Motos</h1>
<table  class="table table-striped">
<tr>
<th> id</th>
<th> Marca</th>
<th> Modelo</th>
<th> Fecha de Fabricacion</th>
<th> Stock</th>
<th> Especificaciones</th>

<td colspan=2><a href="new" class="btn btn-primary">Nuevo</a></td>
</tr>

<c:forEach items="${motolista}" var="moto">
<tr>
<td>${moto.id}</td>
<td>${moto.marca}</td>
<td>${moto.modelo}</td>
<td>${moto.fechaFab}</td>
<td>${moto.stock}</td>
<td><c:forEach items="${moto.specs}" var="specs">${specs} <br /></c:forEach></td>

<td><a href= "edit/${moto.id}" class="badge badge-pill badge-warning">Editar</a></td>
<td><a href= "delete/${moto.id}" class="badge badge-pill badge-danger">Borrar</a> </td>
</tr>

</c:forEach>

</table>
</body>
</html>