<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
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
	<h2>Noticias</h2>

		<div class="row">
			<div class="col">
				<form:form action="create.html" method="post" modelAttribute="noticia">
					<label for="titulo">Título</label>
					<form:input type="text" class="form-control" path="titulo"
						id="titulo" required="required" />
					<label for="contenido">Contenido</label>
					<form:textarea rows="5" cols="30"  type="text" class="form-control" path="contenido"
						id="contenido" required="required" />

					<label for="fecha">Estreno</label>
					<form:input id="fecha" path="fecha" class="form-control"
						type="date" />
					<br />
					<form:select id="publicado" path="publicado"
						class="form-control">
						<form:options items="${publi}" />
					</form:select>
					<br />
					<button type="submit" class="btn btn-danger">Guardar</button>
					<br />
				</form:form>
			</div>
		</div>
		

</body>
</html>