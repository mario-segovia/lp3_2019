<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Moto</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script  src="/webjars/jquery/3.4.1/jquery.min.js" ></script>
<script  src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>
<div class="container">
<h3>Editar moto</h3>
<form:form  action="/motos/update" method="post" modelAttribute="moto">
<form:input type="hidden" id="id"  name="id"  path="id" class="form-control"  />
<label for="Nombre"> Marca:</label>
<form:input type="text"   path="marca" class="form-control"  />
<br />
<label for="Apellido"> Modelo:</label>
<form:input  type="text"  path="modelo"  class="form-control" /> 
<br />

<label for="fecha"> Fecha de Fabricacion:</label>

<form:input type="date"   path="fechaFab" class="form-control"  />
<br />
<label for="stock"> Disponibilidad de  stock:</label>
<br />
<form:radiobutton  path="stock" value="true"/>Disponible
<br />
<form:radiobutton  path="stock" value="false"/>No disponible
<br /><br />

<label for="specs"> Especificaciones:</label>
<br />
<form:checkbox  path="specs" value="luces led"/>Luces led
<br />
<form:checkbox  path="specs" value="tanque 12 l."/>tanque de 12 l.
<br />
<form:checkbox  path="specs" value="frenos del. disco"/>Frenos delantero a disco
<br />
<form:checkbox  path="specs" value="tablero digital"/>Tablero digital
<br />

<br />
<button type="submit" class="btn btn-primary" >Guardar</button>
<br />
</form:form>
<a href="/motos/" class="btn btn-link" >Volver a Lista de Motos </a>


</div>

</body>
</html>