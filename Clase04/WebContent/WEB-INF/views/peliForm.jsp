<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/resources" var="urlPublic" />
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

<h1>Formulario de Peliculas</h1>

	<form:form action="guardar.html" method="post" modelAttribute="pelicula">
				<label for="titulo">Título</label>
				<form:input type="text" class="form-control" path="titulo"
					id="titulo" required="required" />
				<label for="duracion">Duracion</label>
				<form:input type="text" class="form-control" path="duracion"
					id="duracion" required="required" />
					
				<label for="clasificacion" class="control-label">Clasificacion</label>
				<form:input type="text" class="form-control" path="clasificacion"
					id="clasificacion" required="required" />
				
				<label for="genero" class="control-label">Genero</label>
				<form:input type="text" class="form-control" path="genero"
					id="genero" required="required" />
				
				<label for="estatus" class="control-label">Estatus</label>
				<form:input type="text" class="form-control" path="estatus"
					id="estatus" required="required" />
				
				<label for="fechaEstreno">Estreno</label>
				<form:input id="fechaEstreno" path="fechaEstreno" class="form-control" type="date"/>
				<br />
				<button type="submit" class="btn btn-danger">Guardar</button>
			</form:form>

</body>
</html>