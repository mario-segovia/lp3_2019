<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Mesa de Entrada</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src= "/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src= "/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Lista Mesa de Entrada</h1>
<table  class="table table-striped table-dark">
<tr>
<th> id</th>
<th> Emisor</th>
<th> Destinatario</th>
<th> Fecha de Emision</th>
<th> Numeración del Emisor</th>
<th> Asunto</th>
<th> Nro. de Mesa de Entrada</th>
<th> Fecha de Recepcion</th>
<td colspan=2><a href="new" class="btn btn-outline-success">Nueva Mesa de Entrada</a></td>
</tr>

<c:forEach items="${mesalista}" var="entrada">
<tr>
<td>${entrada.id}</td>
<td>${entrada.emisor}</td>
<td>${entrada.destinatario}</td>
<td>${entrada.fechaEmi}</td>
<td>${entrada.numEmisor}</td>
<td>${entrada.asunto}</td>
<td>${entrada.nroMesaEnt}</td>
<td>${entrada.fechaRep}</td>
<td><a href= "edit/${entrada.id}" class="btn btn-outline-warning">Editar</a></td>
<td><a href= "delete/${entrada.id}" class="btn btn-outline-danger">Borrar</a> </td>
</tr>

</c:forEach>

</table>
</body>
</html>