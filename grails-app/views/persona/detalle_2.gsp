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



<!--
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
-->



</head>

<body>

<g:each in="${persona}" var="personaDate">


<g:form name="Persona" >

    <g:textField name="nombre" value="${personaDate.nombre}" 		  readonly="" />
    <g:textField name="nombre" value="${personaDate.apellidoPaterno}" readonly="" />
    <g:textField name="nombre" value="${personaDate.apellidoMaterno}" readonly="" />
    <g:textField name="nombre" value="${personaDate.fechaNacimiento}" readonly="" />

</g:form>


</g:each>


</body>
</html>