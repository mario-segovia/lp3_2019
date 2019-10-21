<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Tipo</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script  src="/webjars/jquery/3.4.1/jquery.min.js" ></script>
<script  src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>
<div class="container">

<h3>Editar Tipo</h3>
<form:form  action="/articulos/update/" method="post" modelAttribute="articulo">
<form:input type="hidden" id="id"  name="id"  path="id" class="form-control"  />
<label for="titulo"> Titulo:</label>

<form:input id="titulo"  name="titulo"  path="titulo" class="form-control"  />
<br />
<label for="contenido"> Contenido:</label>
<form:textarea path="contenido"  row="5" col="30" class="form-control" /> 
<br />
<label for="fecha"> Fecha:</label>

<form:input type="date" id="fecha"  name="fecha"  path="fecha" class="form-control"  />
<br />
<br />
<label for="tipo"> Tipo:</label>
<form:select path="tipo"   > 
<form:options items="${tipos}" itemValue="id" itemLabel="nombre"/>

</form:select>
<br />
<button type="submit"class="btn" >Guardar</button>
<br />
</form:form>
<a href="/articulos/" class="btn btn-link" >Volver a Lista </a>

</div>
</body>
</html>