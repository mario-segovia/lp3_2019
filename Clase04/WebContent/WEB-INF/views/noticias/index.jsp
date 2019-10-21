<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<spring:url value="/resources" var="urlPublic" />
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/bootstrap.min.css">
</head>
<body>

<h2>Lista de Noticias</h2>
		<table class="table table-bordered ">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Titulo</th>
					<th scope="col">Contenido</th>
					<th scope="col">Fecha</th>
					<th scope="col">Publicado</th>
					<th scope="col" colspan="2" style="">
							<a class="btn btn-success" href="new.html">Nuevo</a>
						</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ noticias }" var="noticia">
					<tr>
						<th scope="row">${noticia.id}</th>
						<td>${noticia.titulo}</td>
						<td>${noticia.contenido}</td>
						<td>${noticia.fecha}</td>
						<td> <c:choose>
								<c:when test="${noticia.publicado eq '1'}">
									<span class="badge badge-success">SI</span>
								</c:when>
								<c:otherwise>
									<span class="badge badge-danger">NO</span>
								</c:otherwise>
							</c:choose>
							
							</td>
						<td>
								<a class="btn btn-warning" href="edit/${noticia.id}.html">Editar</a>
							</td>
						<td>
								<a class="btn btn-danger" href="delete/${noticia.id}.html"
									onclick="return confirm('¿Está seguro?')">Borrar</a>
							</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>



</body>
</html>