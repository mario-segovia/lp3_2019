<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clientes Index</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src= "/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src= "/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<h1>Lista de Clientes</h1>

<table  class="table table-striped">
<tr>
<th> id</th>
<th> Nombres</th>
<th> Apellidos</th>
<th> Cedula</th>
<th> Telefono</th>
<th> Email</th>
<th> Direccion</th>
<th> Fecha de Nacimiento</th>
<th> Peliculas</th>
<td colspan=2><a href="new" class="btn btn-outline-success">Nuevo</a></td>
</tr>

<c:forEach items="${clientelista}" var="cliente">
<tr>
<td>${cliente.id}</td>
<td>${cliente.nombre}</td>
<td>${cliente.apellido}</td>
<td>${cliente.cedula}</td>
<td>${cliente.telefono}</td>
<td>${cliente.email}</td>
<td>${cliente.direccion}</td>
<td>${cliente.fechaNac}</td>
<td><c:forEach items="${cliente.peliculas}" var="peliculas">${peliculas.nombre} <br /></c:forEach></td>
<td><a href= "edit/${cliente.id}" class="badge badge-pill badge-warning">Editar</a></td>
<td><a href= "delete/${cliente.id}" class="badge badge-pill badge-danger">Borrar</a> </td>
</tr>

</c:forEach>

</table>
</body>
</html>