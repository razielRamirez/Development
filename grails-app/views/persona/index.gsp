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


<div class="page-header"><h1>Lista</h1></div>
<div class="col-lg-12">

  <table id="list" class="table table-over">
    <thead>
      <tr>
        <td>Nombre</td>
        <td>Apellido P</td>
        <td>Apellido M</td>
        <td>Nacimiento</td>
        <td>Detalles</td>
      </tr>
    </thead>
    <tbody>
      
      <g:each in="${persona}" var="personas">
      <tr>
        <td>${personas.nombre}</td>
        <td>${personas.apellidoPaterno}</td>
        <td>${personas.apellidoMaterno}</td>
        <td>${personas.fechaNacimiento}</td>
        <td>
          
          <div class="btn-group btn-group-justified" role="group" aria-label="...">
            <div class="btn-group" role="group">
              <g:link class="btn btn-info" controller="Persona" action="consultarPersona" id="${personas.id}">Detalles</g:link>
            </div>
            <div class="btn-group" role="group">
              <g:link class="btn btn-danger" controller="Persona" action="eliminarPersona" id="${personas.id}">Eliminar</g:link>
            </div>
            <div class="btn-group" role="group">
              <g:link class="btn btn-success" controller="Persona" action="editarPersona" id="${personas.id}">Editar</g:link>
            </div>
          </div>
          
        </td>
      </tr>
    </g:each>
    
  </tbody>
</table>

</div>
</div>
</div>
</body>
</html>


