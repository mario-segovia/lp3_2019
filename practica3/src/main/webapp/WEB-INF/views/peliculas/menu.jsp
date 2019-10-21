<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src= "webjars/jquery/3.0.0/jquery.min.js"></script>
<script src= "webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="/">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="/peliculas/">Lista de Peliculas <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="/peliculas/new">Nueva Pelicula</a>
      <a class="nav-item nav-link active" href="/clientes/">Lista de Clientes <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="/clientes/new">Nuevo Cliente</a>
    </div>
  </div>
</nav>

</body>
</html>