<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Usuario</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script  src="/webjars/jquery/3.4.1/jquery.min.js" ></script>
<script  src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>
<div class="container">
<h3>Editar Usuario</h3>
<form:form  action="/usuarios/update" method="post" modelAttribute="usuario">
<form:input type="hidden" id="id"  name="id"  path="id" class="form-control"  />
<label for="Nombre"> Nombres:</label>
<form:input type="text"   path="Nombre" class="form-control"  />
<br />
<label for="Apellido"> Apellidos:</label>
<form:input  type="text"  path="Apellido"  class="form-control" /> 
<br />
<label for="Username"> Username:</label>
<form:input  type="text" id="Username"  name="Username"  path="Username" class="form-control"  />
<br />
<label for="Password"> Password:</label>
<form:input  type="password" id="Password"  name="Password"  path="Password"   class="form-control" />
<br />
<label for="Email"> Email:</label>
<form:input  type="email" id="Email"  name="Email"  path="Email"   class="form-control" />
<br />

<label for="fecha"> Fecha de Nacimiento:</label>

<form:input type="date" id="FechaNac"  name="FechaNac"  path="FechaNac" class="form-control"  />
<br />
<label for="Rol"> Rol:</label>
<br />
<form:radiobutton id="Rol"  name="Rol" path="Rol" value="Admin"/>Administrador
<br />
<form:radiobutton id="Rol"  name="Rol" path="Rol" value="Usuario"/>Usuario
<br /> <br />
<label for="RecibeMail"> Recibe Mail</label>
<br />
<form:radiobutton id="RecibeMail"  name="RecibeMail" path="RecibeMail" value="1"/>Si
<br />
<form:radiobutton id="RecibeMail"  name="RecibeMail" path="RecibeMail" value="0"/>No
<br />

<br />

<br />
<button type="submit" class="btn btn-primary" >Guardar</button>
<br />
</form:form>
<a href="/usuarios/" class="btn btn-link" >Volver a Lista de Usuarios </a>


</div>

</body>
</html>