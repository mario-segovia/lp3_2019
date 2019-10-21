<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Mesa de Entrada</title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script  src="/webjars/jquery/3.4.1/jquery.min.js" ></script>
<script  src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>
<div class="container">
<h3>Editar Mesa de Entrada</h3>
<form:form  action="/entrada/update" method="post" modelAttribute="mesaEntrada">
<form:input type="hidden" id="id"  name="id"  path="id" class="form-control"  />
<label for="emisor"> Emisor:</label>
<form:input type="text"   path="emisor" class="form-control"  />
<br />

<label for="numEmisor"> Numeracion del Emisor:</label>
<form:input  type="text"   path="numEmisor" class="form-control"  />
<br />

<label for="asunto">Asunto:</label>
<form:input  type="text" path="asunto"   class="form-control" />
<br />

<label for="NroMesaEnt">Nro. de Mesa de entrada:</label>
<form:input  type="text" path="nroMesaEnt"   class="form-control" />
<br />

<label for="fechaRep"> Fecha de Recepcion</label>
<form:input type="date"   path="FechaRep" class="form-control"  />
<br />
<label for="Dest"> Destinatario:</label>
<br />
<form:radiobutton  path="destinatario" value="Administracion"/>Administracion
<br />
<form:radiobutton  path="destinatario" value="Consejo"/>Consejo
<br />
<form:radiobutton  path="destinatario" value="Presidencia"/>Presidencia
<br /><br />
<label for="fechaEmi"> Fecha de Emision</label>
<form:input type="date"   path="fechaEmi" class="form-control"  />

<br />
<button type="submit"class="btn btn-success">Guardar</button>
<br /><br /><br />
</form:form>
<a href="/entrada/" class="btn btn-primary btn-lg active" >Volver a Lista de Mesa de Entrada </a>


</div>

</body>
</html>