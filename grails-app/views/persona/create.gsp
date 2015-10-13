<%--
  Created by IntelliJ IDEA.
  User: Leizarx
  Date: 06/10/2015
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="//cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
$('#list').DataTable();
});
</script>


</head>

<body>

<div class="container">
<g:form name="Persona" controller="Persona" action="guardarPersona">

<div class="page-header"><h1>Agregar</h1></div>
<div class="col-lg-12">
	Nombre
    <g:textField name="nombre" class="col-lg-12" required=""/><br>
    Apellido Paterno
    <g:textField name="apellidoPaterno" class="col-lg-12" required=""/><br>
    Apellido Materno
    <g:textField name="apellidoMaterno" class="col-lg-12" required=""/><br>
    Fecha Nacimiento
    <input name="fechaNacimiento"  type="date" class="col-lg-12" required=""/> <hr>
    <g:submitButton name="Enviar" class="btn btn-success" > Enviar</g:submitButton>	
</div>


</g:form>
</div>

</body>
</html>