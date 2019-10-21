<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Cliente</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script  src="/webjars/jquery/3.4.1/jquery.min.js" ></script>
<script  src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container">
<h3>Nuevo Cliente</h3>
<form:form  action="create" method="post" modelAttribute="cliente">
<label for="Nombre"> Nombres:</label>
<form:input type="text"   path="nombre" class="form-control"  />
<br />
<label for="apellido"> Apellidos:</label>
<form:input  type="text"  path="apellido"  class="form-control" /> 
<br />
<label for="cedula"> Cedula:</label>
<form:input  type="text"  path="cedula"  class="form-control" /> 
<br />
<label for="direccion"> Direccion:</label>
<form:input  type="text"  path="direccion"  class="form-control" /> 
<br />
<label for="tel"> Telefono:</label>
<form:input  type="text"  path="telefono"  class="form-control" /> 
<br />
<label for="email"> Correo Electronico:</label>
<form:input  type="email"  path="email"  class="form-control" /> 
<br />

<label for="fechaNac"> Fecha de Nacimiento:</label>

<form:input type="date"   path="fechaNac" class="form-control"  />
<br />


<br />
<button type="submit"class="btn" >Guardar</button>
<br />
</form:form>
<a href="/clientes/" class="btn btn-link" >Volver a Lista de Clientes </a>


</div>

</body>
</html>