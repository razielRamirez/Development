<html lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">



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

function filtrar(){

${remoteFunction(
controller:'persona',
action: 'buscarPersona',
update: 'contenido',
// params: 'fechaNacimiento' + document.getElementsById('buscar')
)}

}

 </script>
 


<style type="text/css">
  
body {
  padding-top: 50px;
}


/*
 * Global add-ons
 */

.sub-header {
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}

/*
 * Top navigation
 * Hide default border to remove 1px line.
 */
.navbar-fixed-top {
  border: 0;
}

/*
 * Sidebar
 */

/* Hide for mobile, show later */
.sidebar {
  display: none;
}
@media (min-width: 768px) {
  .sidebar {
    position: fixed;
    top: 51px;
    bottom: 0;
    left: 0;
    z-index: 1000;
    display: block;
    padding: 20px;
    overflow-x: hidden;
    overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
    background-color: #f5f5f5;
    border-right: 1px solid #eee;
  }
}

/* Sidebar navigation */
.nav-sidebar {
  margin-right: -21px; /* 20px padding + 1px border */
  margin-bottom: 20px;
  margin-left: -20px;
}
.nav-sidebar > li > a {
  padding-right: 20px;
  padding-left: 20px;
}
.nav-sidebar > .active > a,
.nav-sidebar > .active > a:hover,
.nav-sidebar > .active > a:focus {
  color: #fff;
  background-color: #428bca;
}


/*
 * Main content
 */

.main {
  padding: 20px;
}
@media (min-width: 768px) {
  .main {
    padding-right: 40px;
    padding-left: 40px;
  }
}
.main .page-header {
  margin-top: 0;
}


/*
 * Placeholder dashboard ideas
 */

.placeholders {
  margin-bottom: 30px;
  text-align: center;
}
.placeholders h4 {
  margin-bottom: 0;
}
.placeholder {
  margin-bottom: 20px;
}
.placeholder img {
  display: inline-block;
  border-radius: 50%;
}


</style>


  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Persona</a>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active">
              <g:link controller="Persona" action="persona">Persona</g:link>
            </li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Persona</h1>



<div>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#listar" aria-controls="listar" role="tab" data-toggle="tab">Listar</a></li>
    <li role="presentation"><a href="#crear" aria-controls="crear" role="tab" data-toggle="tab">Crear</a></li>
    <li>
    
    <g:form class="navbar-form navbar-left" name="Persona" controller="Persona" action="buscarPersona">

    <div class="form-group">
    <input type="date" class="form-control" name="buscar" id="buscar" placeholder="date">
    </div>
    <button type="submit" class="btn btn-default" onclick="filtrar()">Buscar</button>
    

    <div id="contenido">
      <g:render template="lista" model="[persona:persona]" />
    </div>

    </g:form>
   
    </li>



  </ul>

  <!-- Tab panes -->
  <div class="tab-content">


    <div role="tabpanel" class="tab-pane active" id="listar">


<br>

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
        <td class="col-lg-3">
          
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


    <div role="tabpanel" class="tab-pane" id="crear">


<g:form name="Persona" controller="Persona" action="guardarPersona">
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

  </div>

</div>











        </div>
      </div>
    </div>



</div>
</body>
</html>