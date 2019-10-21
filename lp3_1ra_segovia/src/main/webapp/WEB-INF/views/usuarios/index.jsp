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
<h1>Lista de Usuarios</h1>
<table  class="table table-striped">
<tr>
<th> id</th>
<th> Nombres</th>
<th> Apellidos</th>
<th> Fecha de Nacimiento</th>
<th> Email</th>
<th> Username</th>
<th> password</th>
<th> Rol</th>
<th> Recibe Mails</th>
<th> Fecha de Registro</th>
<td colspan=2><a href="new" class="btn btn-primary">Nuevo</a></td>
</tr>

<c:forEach items="${userlista}" var="usuario">
<tr>
<td>${usuario.id}</td>
<td>${usuario.nombre}</td>
<td>${usuario.apellido}</td>
<td>${usuario.fechaNac}</td>
<td>${usuario.email}</td>
<td>${usuario.username}</td>
<td>${usuario.password}</td>
<td>${usuario.rol}</td>
<td><c:forEach items="${usuario.recibeMail}" var="recibeMail">${recibeMail}<br /></c:forEach></td>
<td>${usuario.fechaReg}</td>
<td><a href= "edit/${usuario.id}" class="badge badge-pill badge-warning">Editar</a></td>
<td><a href= "delete/${usuario.id}" class="badge badge-pill badge-danger">Borrar</a> </td>
</tr>

</c:forEach>

</table>
</body>
</html>