<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Articulo Index</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src= "/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src= "/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Soy Articulo Index</h1>
<table  class="table table-striped">
<tr>
<th> id</th>
<th> Titulo</th>
<th> Contenido</th>
<th> Fecha</th>
<th> Tipo</th>
<td colspan=2><a href="new" class="btn btn-primary">Nuevo</a></td>
</tr>

<c:forEach items="${artilista}" var="articulo">
<tr>
<td>${articulo.id}</td>
<td>${articulo.titulo}</td>
<td>${articulo.contenido}</td>
<td>${articulo.fecha}</td>
<td>${articulo.tipo.nombre}</td>
<td><a href= "edit/${articulo.id}" class="badge badge-pill badge-warning">Editar</a></td>
<td><a href= "delete/${articulo.id}" class="badge badge-pill badge-danger">Borrar</a> </td>
</tr>

</c:forEach>

</table>
</body>
</html>