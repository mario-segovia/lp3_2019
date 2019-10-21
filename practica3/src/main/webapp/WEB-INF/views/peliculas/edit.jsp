<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Pelicula</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script  src="/webjars/jquery/3.4.1/jquery.min.js" ></script>
<script  src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container">
<h3>Editar Pelicula</h3>
<form:form  action="/peliculas/update" method="post" modelAttribute="pelicula">
<form:input type="hidden"   path="id" class="form-control"  />
<label for="Nombre"> Nombre:</label>
<form:input type="text"   path="nombre" class="form-control"  />
<br />
<label for="genero"> Genero:</label>
<form:input  type="text"  path="genero"  class="form-control" /> 
<br />


<label for="fecha"> Fecha de Estreno:</label>

<form:input type="date"   path="fechaEst" class="form-control"  />
<br />
<label for="Disponible"> Disponible:</label>
<br />
<form:radiobutton  path="disponible" value="true"/>Si
<br />
<form:radiobutton  path="disponible" value="false"/>No
<br /><br />
<label for="cliente"> Cliente:</label>
<form:select path="cliente"   > 
<form:options items="${clientes}" itemValue="id" itemLabel="nombreYapellido"/>
</form:select>

<br />
<button type="submit"class="btn" >Guardar</button>
<br />
</form:form>
<a href="/peliculas/" class="btn btn-link" >Volver a Lista de Peliculas </a>


</div>

</body>
</html>