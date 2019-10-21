<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1> Formulario</h1>
	<form action="datosform1.html" method="POST">

            <div>
                <label>Nombre:</label>
                <input type="text" name="nombre">
            </div>

            <div>
                <label>Correo:</label>
                <input type="text" name="correo">
            </div>
            
            <div>
                <label>Mensaje:</label>
                <input type="text" name="mensaje">
            </div>

            <button type="submit">Submit</button>

        </form>

</body>
</html>