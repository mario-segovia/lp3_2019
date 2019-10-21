<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Peliculas Index</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src= "/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src= "/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<h1>Lista de Peliculas</h1>

<table  class="table table-striped">
<tr>
<th> id</th>
<th> Nombre</th>
<th> Genero</th>
<th> Fecha de Estreno</th>
<th> Disponible</th>
<th> Fecha de Registro</th>
<th> Cliente</th>
<td colspan=2><a href="new" class="btn btn-outline-success">Nuevo</a></td>
</tr>

<c:forEach items="${pelilista}" var="pelicula">
<tr>
<td>${pelicula.id}</td>
<td>${pelicula.nombre}</td>
<td>${pelicula.genero}</td>
<td>${pelicula.fechaEst}</td>
<td>${pelicula.disponible}</td>
<td>${pelicula.fechaReg}</td>
<td>${pelicula.cliente.nombre} ${pelicula.cliente.apellido}</td>
<td><a href= "edit/${pelicula.id}" class="badge badge-pill badge-warning">Editar</a></td>
<td><a href= "delete/${pelicula.id}" class="badge badge-pill badge-danger">Borrar</a> </td>
</tr>

</c:forEach>

</table>
</body>
</html>